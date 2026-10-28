"""Build a NEW FIT with a replacement default DTB, preserving all other data.

Never writes to an input file or a physical disk. Refuses signed FITs,
external payloads and unsupported image hashes. The output directory must be
new. Intermediate files remain in build/work/fit_repack for review.
"""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess
import uuid

from inspect_fdt import parse_fdt, string

HASH_ALGORITHMS = {"md5", "sha1", "sha256", "sha384", "sha512"}
NAME = re.compile(r"^[A-Za-z0-9,._+*#?@-]+$")


def sha256(data):
    return hashlib.sha256(data).hexdigest()


def require_cstring(value, description):
    if not value.endswith(b"\0") or b"\0" in value[:-1]:
        raise ValueError("Expected one NUL-terminated FIT string: " + description)
    return value[:-1].decode("ascii")


def validate_fit(tree):
    """Return each inline payload's verified hash-node records."""
    nodes = tree["nodes"]
    for path, properties in nodes.items():
        basename = path.rsplit("/", 1)[-1]
        if basename.startswith("signature") or any(key in properties for key in
                ("signer-name", "signer-version", "key-name-hint", "hashed-nodes", "hashed-strings", "sign-images")):
            raise ValueError("Signed FIT must be handled with its original signing process: " + path)
        if "algo" in properties:
            algorithm = require_cstring(properties["algo"], path + "/algo")
            if algorithm not in HASH_ALGORITHMS:
                raise ValueError("Unsupported FIT algorithm: " + algorithm)
    records = {}
    image_paths = [path for path in nodes if path.startswith("/images/") and path.count("/") == 2]
    if not image_paths:
        raise ValueError("FIT has no images")
    for image_path in image_paths:
        properties = nodes[image_path]
        if "data" not in properties or any(key in properties for key in ("data-offset", "data-position", "data-size")):
            raise ValueError("External/missing FIT payload is unsupported: " + image_path)
        payload = properties["data"]
        hashes = []
        for path, props in nodes.items():
            if not path.startswith(image_path + "/"):
                continue
            if "algo" not in props:
                raise ValueError("Unsupported non-hash image child: " + path)
            algorithm = require_cstring(props["algo"], path + "/algo")
            if algorithm not in HASH_ALGORITHMS:
                raise ValueError("Unsupported FIT hash algorithm: " + algorithm)
            if "value" not in props:
                raise ValueError("Missing FIT image hash value: " + path)
            digest = hashlib.new(algorithm, payload).digest()
            if digest != props["value"]:
                raise ValueError("Source/compiled FIT payload hash mismatch: " + path)
            hashes.append({"node": path, "algorithm": algorithm, "value": digest.hex()})
        if not hashes:
            raise ValueError("Inline FIT image has no verifiable hash: " + image_path)
        records[image_path] = {"bytes": len(payload), "sha256": sha256(payload), "hashes": hashes}
    return records


def selected_images(tree):
    nodes = tree["nodes"]
    default = require_cstring(nodes.get("/configurations", {}).get("default", b""), "configurations/default")
    config_path = "/configurations/" + default
    if config_path not in nodes:
        raise ValueError("Missing FIT default configuration")
    config = nodes[config_path]
    fdt_path = "/images/" + require_cstring(config.get("fdt", b""), config_path + "/fdt")
    kernel_path = "/images/" + require_cstring(config.get("kernel", b""), config_path + "/kernel")
    if fdt_path not in nodes or kernel_path not in nodes:
        raise ValueError("Default FIT image reference does not exist")
    if require_cstring(nodes[fdt_path].get("type", b""), fdt_path + "/type") != "flat_dt":
        raise ValueError("Default FDT image is not flat_dt")
    if require_cstring(nodes[fdt_path].get("compression", b""), fdt_path + "/compression") != "none":
        raise ValueError("Compressed default FDT image is unsupported")
    if require_cstring(nodes[kernel_path].get("type", b""), kernel_path + "/type") != "kernel":
        raise ValueError("Default kernel image is not type kernel")
    return config_path, fdt_path, kernel_path


def write_its(tree, work_dir):
    """Encode every original property as exact bytes; data uses /incbin/."""
    nodes = tree["nodes"]
    children = {path: [] for path in nodes}
    for path in nodes:
        if path == "/":
            continue
        parent, _, name = path.rpartition("/")
        parent = parent or "/"
        if parent not in children or not NAME.fullmatch(name):
            raise ValueError("Unsupported FIT node name/path: " + path)
        children[parent].append(path)
    lines = ["/dts-v1/;", ""]
    for item in tree.get("memory_reservations", []):
        lines.append("/memreserve/ {} 0x{:x};".format(item["address"], item["bytes"]))
    blobs = []

    def emit(path, depth):
        indent = "    " * depth
        name = "/" if path == "/" else path.rsplit("/", 1)[-1]
        lines.append(indent + name + " {")
        for prop, value in nodes[path].items():
            if not NAME.fullmatch(prop):
                raise ValueError("Unsupported FIT property name: " + prop)
            if prop == "data" and path.startswith("/images/") and path.count("/") == 2:
                filename = "payload_{:02d}.bin".format(len(blobs))
                (work_dir / filename).write_bytes(value)
                blobs.append({"node": path, "file": filename, "bytes": len(value), "sha256": sha256(value)})
                expression = '/incbin/("{}")'.format(filename)
            elif value:
                expression = "[" + " ".join("{:02x}".format(byte) for byte in value) + "]"
            else:
                expression = None
            lines.append(indent + "    " + prop + (" = " + expression if expression is not None else "") + ";")
        for child in children[path]:
            emit(child, depth + 1)
        lines.append(indent + "};")
    emit("/", 0)
    its = work_dir / "repacked.its"
    its.write_text("\n".join(lines) + "\n", encoding="ascii")
    return its, blobs


def verify_properties(original, compiled, expected_changes):
    if set(original["nodes"]) != set(compiled["nodes"]):
        raise ValueError("dtc changed the FIT node set")
    if original.get("memory_reservations") != compiled.get("memory_reservations"):
        raise ValueError("dtc changed FIT memory reservations")
    if original["boot_cpu"] != compiled["boot_cpu"] or original["version"] != compiled["version"]:
        raise ValueError("dtc changed FIT version or boot CPU")
    changed = []
    for path, before in original["nodes"].items():
        after = compiled["nodes"][path]
        if set(before) != set(after):
            raise ValueError("dtc changed property names at " + path)
        for name, value in before.items():
            expected = expected_changes.get((path, name), value)
            if after[name] != expected:
                raise ValueError("Unexpected FIT property change: " + path + "/" + name)
            if after[name] != value:
                changed.append(path + "/" + name)
    return changed


def repack(source_fit, merged_dtb, dtc, output_dir, work_dir=None):
    source_fit, merged_dtb = Path(source_fit).resolve(), Path(merged_dtb).resolve()
    output_dir = Path(output_dir).resolve()
    if output_dir.exists():
        raise FileExistsError("Output directory must be new: " + str(output_dir))
    if output_dir == source_fit.parent or source_fit.parent in output_dir.parents:
        raise ValueError("Output must be outside the original FIT/boot-files directory")
    for source in (source_fit, merged_dtb):
        if output_dir in source.parents or output_dir == source:
            raise ValueError("Output directory may not contain an input file")
    executable = shutil.which(str(dtc))
    if executable is None:
        raise FileNotFoundError("dtc executable not found: " + str(dtc))
    executable = str(Path(executable).resolve())
    source_bytes, dtb_bytes = source_fit.read_bytes(), merged_dtb.read_bytes()
    original = parse_fdt(source_bytes)
    dtb = parse_fdt(dtb_bytes)
    if original["total_bytes"] != len(source_bytes) or dtb["total_bytes"] != len(dtb_bytes):
        raise ValueError("Trailing/external data after FIT/DTB is unsupported")
    if original["version"] != 17:
        raise ValueError("Only FDT version 17 FIT serialization is supported")
    before_hashes = validate_fit(original)
    configuration, fdt_path, kernel_path = selected_images(original)
    source_kernel = original["nodes"][kernel_path]["data"]
    expected_changes = {(fdt_path, "data"): dtb_bytes}
    replacement_nodes = {path: dict(props) for path, props in original["nodes"].items()}
    replacement_nodes[fdt_path]["data"] = dtb_bytes
    for record in before_hashes[fdt_path]["hashes"]:
        digest = hashlib.new(record["algorithm"], dtb_bytes).digest()
        key = (record["node"], "value")
        expected_changes[key] = digest
        replacement_nodes[record["node"]]["value"] = digest
    replacement = dict(original, nodes=replacement_nodes)
    if work_dir is None:
        work_dir = Path(__file__).resolve().parent / "work" / "fit_repack" / uuid.uuid4().hex
    work_dir = Path(work_dir).resolve()
    if work_dir.exists() or work_dir == output_dir:
        raise FileExistsError("Work directory must be new and separate from output")
    if output_dir in work_dir.parents or work_dir in output_dir.parents:
        raise ValueError("Work and output directories may not contain one another")
    if work_dir == source_fit.parent or source_fit.parent in work_dir.parents:
        raise ValueError("Work files must be outside the original FIT/boot-files directory")
    for source in (source_fit, merged_dtb):
        if work_dir in source.parents or work_dir == source:
            raise ValueError("Work directory may not contain an input file")
    work_dir.mkdir(parents=True, exist_ok=False)
    its, blobs = write_its(replacement, work_dir)
    candidate = work_dir / "image.ub"
    command = [executable, "-I", "dts", "-O", "dtb", "-V", str(original["version"]),
               "-b", str(original["boot_cpu"]), "-o", str(candidate), str(its)]
    completed = subprocess.run(command, cwd=str(work_dir), capture_output=True, text=True,
                               encoding="utf-8", errors="replace", check=False)
    (work_dir / "dtc.stdout.txt").write_text(completed.stdout, encoding="utf-8")
    (work_dir / "dtc.stderr.txt").write_text(completed.stderr, encoding="utf-8")
    if completed.returncode != 0:
        raise RuntimeError("dtc failed with exit {}. Evidence: {}".format(completed.returncode, work_dir))
    candidate_bytes = candidate.read_bytes()
    compiled = parse_fdt(candidate_bytes)
    changed = verify_properties(original, compiled, expected_changes)
    after_hashes = validate_fit(compiled)
    if compiled["nodes"][kernel_path]["data"] != source_kernel:
        raise ValueError("Repacked FIT changed the kernel bytes")
    if compiled["nodes"][fdt_path]["data"] != dtb_bytes:
        raise ValueError("Repacked FIT does not contain the requested DTB")
    # Guard against an input being changed by a concurrent process.
    if source_fit.read_bytes() != source_bytes or merged_dtb.read_bytes() != dtb_bytes:
        raise ValueError("An input changed during repacking")
    manifest = {
        "status": "offline_repack_verified_not_board_tested",
        "writes_physical_sd": False, "source_files_modified": False,
        "source_fit": {"path": str(source_fit), "bytes": len(source_bytes), "sha256": sha256(source_bytes)},
        "replacement_dtb": {"path": str(merged_dtb), "bytes": len(dtb_bytes), "sha256": sha256(dtb_bytes)},
        "output_fit": {"name": "image.ub", "bytes": len(candidate_bytes), "sha256": sha256(candidate_bytes)},
        "default_configuration": configuration, "selected_fdt_image": fdt_path,
        "kernel_image": kernel_path, "kernel_bytes_identical": True,
        "kernel_sha256": sha256(source_kernel), "all_payload_hashes_valid_before": True,
        "all_payload_hashes_valid_after": True, "property_changes": changed,
        "only_selected_dtb_data_and_its_existing_hash_values_may_change": True,
        "fit_node_set_and_other_properties_identical": True,
        "dtc": {"path": executable, "sha256": sha256(Path(executable).read_bytes()),
                "command": command, "returncode": completed.returncode,
                "warnings": completed.stderr},
        "work_directory": str(work_dir), "intermediate_payloads": blobs,
        "payloads_before": before_hashes, "payloads_after": after_hashes,
        "validation_limit": "Verifies FIT serialization and integrity only; does not establish electrical correctness, boot success or peripheral operation.",
    }
    output_dir.mkdir(parents=True, exist_ok=False)
    (output_dir / "image.ub").write_bytes(candidate_bytes)
    (output_dir / "manifest.json").write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    return manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source_fit", type=Path)
    parser.add_argument("merged_dtb", type=Path)
    parser.add_argument("--dtc", required=True)
    parser.add_argument("--output-dir", required=True, type=Path)
    parser.add_argument("--work-dir", type=Path)
    args = parser.parse_args()
    manifest = repack(args.source_fit, args.merged_dtb, args.dtc, args.output_dir, args.work_dir)
    print(json.dumps({"output": str(args.output_dir), "sha256": manifest["output_fit"]["sha256"],
                      "kernel_identical": True, "board_tested": False}, indent=2))


if __name__ == "__main__":
    main()
