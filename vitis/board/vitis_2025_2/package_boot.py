"""Package the new software with the unchanged bitstream from its source XSA."""
from pathlib import Path
import hashlib
import json
import shutil
import subprocess
import zipfile

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "artifacts"
OUT.mkdir(exist_ok=True)
subprocess.run(["python", str(ROOT / "verify_build.py")], check=True)
files = {
    "trash_app.elf": ROOT / "workspace/trash_app/build/trash_app.elf",
    "trash_app.map": ROOT / "workspace/trash_app/build/trash_app.map",
    "fsbl.elf": ROOT / "workspace/trash_platform/export/trash_platform/sw/boot/fsbl.elf",
    "verification.json": ROOT / "verification.json",
}
for name, path in files.items():
    shutil.copy2(path, OUT / name)
xsa = ROOT / "hardware/design_1_wrapper_3.3v.xsa"
with zipfile.ZipFile(xsa) as archive:
    bit_names = [name for name in archive.namelist() if name.endswith(".bit")]
    assert len(bit_names) == 1
    bit_data = archive.read(bit_names[0])
    (OUT / "legacy_pl.bit").write_bytes(bit_data)
bif = OUT / "boot.bif"
bif.write_text("the_ROM_image:\n{\n  [bootloader] fsbl.elf\n  legacy_pl.bit\n  trash_app.elf\n}\n", encoding="ascii")
bootgen = "D:/AMD/2025.2/Vitis/bin/bootgen.bat"
result = subprocess.run([bootgen, "-arch", "zynq", "-image", str(bif), "-o", "BOOT.BIN", "-w", "on"], cwd=OUT,
                        text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
(OUT / "bootgen.log").write_text(result.stdout, encoding="utf-8")
print(result.stdout)
if result.returncode or not (OUT / "BOOT.BIN").exists() or "ERROR" in result.stdout:
    raise RuntimeError("Bootgen failed")
manifest = {
    "software_tool_version": "Vitis 2025.2",
    "hardware_origin": "Unchanged 2019.2 XSA/bitstream; Vivado PL upgrade is a separate step",
    "source_xsa_sha256": hashlib.sha256(xsa.read_bytes()).hexdigest(),
    "hardware_tested": False,
    "files": {name: {"bytes": (OUT / name).stat().st_size, "sha256": hashlib.sha256((OUT / name).read_bytes()).hexdigest()}
              for name in ["fsbl.elf", "legacy_pl.bit", "trash_app.elf", "BOOT.BIN"]},
}
(OUT / "manifest.json").write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8")
print("BOOT_PACKAGE_CREATED", OUT)
