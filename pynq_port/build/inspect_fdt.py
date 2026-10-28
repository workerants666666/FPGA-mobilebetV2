"""Read a FIT/FDT without mounting, running or changing the source image.

Default: print JSON evidence only. --output writes the JSON report;
--export-dtb explicitly exports the FIT-selected original system DTB bytes.
Only Python's standard library is required.
"""
import argparse
import bz2
import hashlib
import json
import lzma
from pathlib import Path
import re
import struct
import zlib

MAGIC = 0xD00DFEED
MAX_KERNEL = 128 * 1024 * 1024


def parse_fdt(blob):
    if len(blob) < 40:
        raise ValueError("Truncated FDT header")
    magic, total, off_struct, off_strings, off_reserve, version, last_version, cpu, size_strings, size_struct = struct.unpack_from(">10I", blob)
    if magic != MAGIC or total > len(blob) or version < 16:
        raise ValueError("Invalid or unsupported FDT")
    if off_struct + size_struct > total or off_strings + size_strings > total:
        raise ValueError("FDT section exceeds total size")
    reservations, reserve_cursor = [], off_reserve
    while reserve_cursor + 16 <= total:
        address, size = struct.unpack_from(">QQ", blob, reserve_cursor)
        reserve_cursor += 16
        if address == size == 0:
            break
        reservations.append({"address": "0x{:x}".format(address), "bytes": size})
    else:
        raise ValueError("Unterminated FDT memory reservation table")
    strings = blob[off_strings:off_strings + size_strings]
    limit, cursor, stack, nodes = off_struct + size_struct, off_struct, [], {}
    while cursor + 4 <= limit:
        token = struct.unpack_from(">I", blob, cursor)[0]
        cursor += 4
        if token == 1:
            end = blob.index(b"\0", cursor, limit)
            name = blob[cursor:end].decode("ascii")
            cursor = (end + 4) & ~3
            path = "/" + "/".join(stack[1:] + [name]) if stack else "/"
            stack.append(name)
            nodes[path] = {}
        elif token == 2:
            if not stack:
                raise ValueError("Unbalanced FDT end-node")
            stack.pop()
        elif token == 3:
            length, offset = struct.unpack_from(">II", blob, cursor)
            cursor += 8
            if offset >= len(strings) or cursor + length > limit or not stack:
                raise ValueError("Invalid FDT property bounds")
            end = strings.index(b"\0", offset)
            name = strings[offset:end].decode("ascii")
            path = "/" + "/".join(stack[1:])
            nodes[path][name] = blob[cursor:cursor + length]
            cursor = (cursor + length + 3) & ~3
        elif token == 4:
            pass
        elif token == 9:
            if stack:
                raise ValueError("Unclosed FDT node")
            return {"total_bytes": total, "version": version, "boot_cpu": cpu,
                    "reserve_offset": off_reserve, "memory_reservations": reservations, "nodes": nodes}
        else:
            raise ValueError("Unknown FDT token {}".format(token))
    raise ValueError("Missing FDT end token")


def string(value):
    return value.rstrip(b"\0").decode("utf-8", errors="replace")


def cells(value):
    return list(struct.unpack(">{}I".format(len(value) // 4), value)) if len(value) % 4 == 0 else []


def describe(value):
    if not value:
        return True
    chunks = value[:-1].split(b"\0") if value.endswith(b"\0") else []
    if chunks and all(chunks) and all(32 <= c <= 126 or c in (0, 9, 10, 13) for c in value):
        values = value[:-1].decode("ascii").split("\0")
        return values[0] if len(values) == 1 else values
    if len(value) > 128:
        return {"bytes": len(value), "sha256": hashlib.sha256(value).hexdigest()}
    if len(value) % 4 == 0:
        return ["0x{:x}".format(v) for v in cells(value)]
    return {"hex": value.hex(), "bytes": len(value)}


def summarize_tree(tree):
    nodes = tree["nodes"]
    phandles = {}
    for path, props in nodes.items():
        for key in ("phandle", "linux,phandle"):
            if key in props and len(props[key]) == 4:
                phandles[cells(props[key])[0]] = path
    wanted = {}
    for path, props in nodes.items():
        if path in ("/", "/aliases", "/chosen", "/__symbols__", "/__fixups__", "/__local_fixups__") or any(term in path.lower() for term in
                ("i2c", "gpio", "pinctrl", "memory", "fpga", "slcr", "clkc")):
            wanted[path] = {key: describe(value) for key, value in props.items()}
            refs = {}
            for key, value in props.items():
                if key.startswith("pinctrl-") and key != "pinctrl-names":
                    refs[key] = [phandles.get(item, "UNRESOLVED:0x{:x}".format(item)) for item in cells(value)]
            if refs:
                wanted[path]["resolved_pinctrl"] = refs
            clock_spec = cells(props.get("clocks", b""))
            resolved_clocks, offset = [], 0
            while offset < len(clock_spec):
                handle = clock_spec[offset]
                provider_path = phandles.get(handle)
                if provider_path is None:
                    resolved_clocks.append({"unresolved_phandle": handle})
                    break
                provider = nodes[provider_path]
                count_cells = cells(provider.get("#clock-cells", b""))
                if len(count_cells) != 1:
                    break
                count = count_cells[0]
                args = clock_spec[offset + 1:offset + 1 + count]
                names = provider.get("clock-output-names", b"").rstrip(b"\0").split(b"\0")
                record = {"provider": provider_path, "args": args}
                if len(args) == 1 and args[0] < len(names):
                    record["output_name"] = string(names[args[0]])
                resolved_clocks.append(record)
                offset += 1 + count
            if resolved_clocks:
                wanted[path]["resolved_clocks"] = resolved_clocks
    return {"node_count": len(nodes), "total_bytes": tree["total_bytes"],
            "memory_reservations": tree["memory_reservations"],
            "phandles": {"0x{:x}".format(k): v for k, v in sorted(phandles.items())},
            "nodes": wanted}


def decompress_candidate(payload, offset, algorithm):
    tail = payload[offset:]
    if algorithm == "gzip":
        obj = zlib.decompressobj(31)
        result = obj.decompress(tail, MAX_KERNEL + 1)
    elif algorithm == "xz":
        result = lzma.LZMADecompressor().decompress(tail, max_length=MAX_KERNEL + 1)
    else:
        result = bz2.BZ2Decompressor().decompress(tail, max_length=MAX_KERNEL + 1)
    if len(result) > MAX_KERNEL:
        raise ValueError("Kernel decompression exceeds 128 MiB evidence limit")
    return result


def inspect_kernel(payload, fit_compression):
    candidates = [("FIT data", payload)]
    for signature, algorithm in ((b"\x1f\x8b\x08", "gzip"), (b"\xfd7zXZ\x00", "xz"), (b"BZh", "bzip2")):
        positions = [m.start() for m in re.finditer(re.escape(signature), payload)][:16]
        for offset in positions:
            try:
                expanded = decompress_candidate(payload, offset, algorithm)
                if b"Linux version " in expanded or b"IKCFG_ST" in expanded:
                    candidates.append(("{} at FIT payload +0x{:x}".format(algorithm, offset), expanded))
            except (ValueError, zlib.error, lzma.LZMAError, OSError, EOFError):
                continue
    result = {"fit_compression": fit_compression, "payload_bytes": len(payload),
              "linux_version": None, "config_found": False,
              "config_absence_is_not_evidence_of_disabled_features": True}
    relevant = ("CONFIG_OF", "CONFIG_OF_OVERLAY", "CONFIG_OF_CONFIGFS", "CONFIG_CONFIGFS_FS",
        "CONFIG_FPGA", "CONFIG_FPGA_MGR_ZYNQ_FPGA", "CONFIG_FPGA_REGION", "CONFIG_I2C_CADENCE",
        "CONFIG_I2C_CHARDEV", "CONFIG_GPIO_SYSFS", "CONFIG_GPIO_ZYNQ", "CONFIG_PINCTRL_ZYNQ",
        "CONFIG_CMA", "CONFIG_DMA_CMA", "CONFIG_CMA_SIZE_MBYTES", "CONFIG_CMA_SIZE_SEL_MBYTES",
        "CONFIG_IKCONFIG", "CONFIG_IKCONFIG_PROC", "CONFIG_INPUT_TOUCHSCREEN", "CONFIG_TOUCHSCREEN_GOODIX",
        "CONFIG_VIDEO_OV5640", "CONFIG_ARCH_ZYNQ", "CONFIG_XILINX_APF")
    for origin, candidate in candidates:
        match = re.search(rb"Linux version [^\x00\n]{1,400}", candidate)
        if match:
            result["linux_version"] = match.group().decode("ascii", "replace")
            result["linux_version_source"] = origin
        marker = candidate.find(b"IKCFG_ST")
        if marker >= 0:
            try:
                config = zlib.decompressobj(31).decompress(candidate[marker + 8:], 4 * 1024 * 1024)
                lines = config.decode("ascii").splitlines()
                extracted = {}
                for key in relevant:
                    matches = [line for line in lines if line.startswith(key + "=") or line == "# " + key + " is not set"]
                    extracted[key] = matches[0] if matches else "not_present_in_embedded_config"
                result.update(config_found=True, config_source=origin,
                    config_bytes=len(config), config_sha256=hashlib.sha256(config).hexdigest(), config=extracted)
            except (ValueError, zlib.error, UnicodeError):
                pass
    return result


def inspect(path):
    blob = path.read_bytes()
    fit = parse_fdt(blob)
    nodes = fit["nodes"]
    report = {"source": str(path), "source_bytes": len(blob), "source_sha256": hashlib.sha256(blob).hexdigest(),
        "description": string(nodes["/"].get("description", b"")), "fit_images": {}, "configurations": {}}
    if "/images" not in nodes:
        report["system_dtb"] = summarize_tree(fit)
        return report, blob[:fit["total_bytes"]]
    default = string(nodes.get("/configurations", {}).get("default", b""))
    report["default_configuration"] = default
    for name, props in nodes.items():
        if name.startswith("/configurations/"):
            report["configurations"][name] = {k: describe(v) for k, v in props.items()}
    selected = nodes.get("/configurations/" + default, {})
    selected_fdt = string(selected.get("fdt", b""))
    exported = None
    for name, props in nodes.items():
        if not name.startswith("/images/") or name.count("/") != 2:
            continue
        image_type = string(props.get("type", b""))
        payload = props.get("data")
        record = {k: describe(v) for k, v in props.items() if k != "data"}
        if payload is None:
            record["external_data_not_parsed"] = True
            report["fit_images"][name] = record
            continue
        record.update(payload_bytes=len(payload), payload_sha256=hashlib.sha256(payload).hexdigest(), hashes=[])
        for child, hashes in nodes.items():
            if child.startswith(name + "/") and "algo" in hashes:
                algorithm = string(hashes["algo"])
                try:
                    calculated = hashlib.new(algorithm, payload).digest()
                    record["hashes"].append({"node": child, "algorithm": algorithm,
                        "expected": hashes.get("value", b"").hex(), "calculated": calculated.hex(),
                        "match": calculated == hashes.get("value")})
                except ValueError:
                    record["hashes"].append({"node": child, "algorithm": algorithm, "unsupported": True})
        report["fit_images"][name] = record
        if image_type == "flat_dt":
            dtb = parse_fdt(payload)
            record["dtb_node_count"] = len(dtb["nodes"])
            if name.rsplit("/", 1)[1] == selected_fdt:
                report["selected_fdt_image"] = name
                report["system_dtb"] = summarize_tree(dtb)
                exported = payload[:dtb["total_bytes"]]
        if image_type == "kernel":
            record["kernel"] = inspect_kernel(payload, string(props.get("compression", b"")))
    if exported is None:
        raise ValueError("FIT default configuration does not select a parsed embedded DTB")
    return report, exported


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("image", type=Path)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--export-dtb", type=Path)
    args = parser.parse_args()
    report, dtb = inspect(args.image)
    text = json.dumps(report, indent=2, ensure_ascii=False) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(text, encoding="utf-8")
    else:
        print(text, end="")
    if args.export_dtb:
        args.export_dtb.parent.mkdir(parents=True, exist_ok=True)
        args.export_dtb.write_bytes(dtb)


if __name__ == "__main__":
    main()
