"""Compile and run the real HLS drivers on a 64-bit host with mocked BSP MMIO.

Run: python vitis_2025_2/tests/run_host_tests.py
Requirements: native 64-bit GCC or Clang; a built trash_platform SDT BSP.
This suite checks driver/BSP migration, not FPGA timing or neural-net results.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys


TESTS = Path(__file__).resolve().parent
ROOT = TESTS.parent
DEFAULT_BSP = (
    ROOT / "workspace/trash_platform/export/trash_platform/sw/standalone_domain/include"
)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cc", help="Path to a native 64-bit GCC/Clang compiler")
    parser.add_argument("--bsp-include", type=Path, default=DEFAULT_BSP)
    args = parser.parse_args()
    compiler = args.cc or os.environ.get("CC") or shutil.which("gcc") or shutil.which("clang")
    if not compiler:
        parser.error("No native GCC/Clang found; set --cc to a 64-bit compiler")
    if not (args.bsp_include / "xparameters.h").is_file():
        parser.error(f"Build the platform first; missing {args.bsp_include / 'xparameters.h'}")

    output_dir = TESTS / ".build"
    output_dir.mkdir(exist_ok=True)
    binary = output_dir / ("test_hls_drivers.exe" if os.name == "nt" else "test_hls_drivers")
    drivers = ROOT / "app_src/drivers"
    sources = [TESTS / "test_hls_drivers.c"]
    include_dirs = [TESTS / "mocks", ROOT / "app_src/src", args.bsp_include]
    for name in ("conv", "fc", "pwdwconv", "shortcut"):
        driver_dir = drivers / name
        include_dirs.append(driver_dir)
        sources.extend((driver_dir / f"x{name}.c", driver_dir / f"x{name}_sinit.c"))
    command = [compiler, "-std=c11", "-Wall", "-Wextra", "-Werror", "-pedantic", "-O2"]
    command.extend(f"-I{path}" for path in include_dirs)
    command.extend(str(path) for path in sources)
    command.extend(("-o", str(binary)))

    environment = os.environ.copy()
    compiler_dir = str(Path(compiler).resolve().parent)
    environment["PATH"] = compiler_dir + os.pathsep + environment.get("PATH", "")
    compiler_info = subprocess.run(
        [compiler, "--version"], capture_output=True, text=True, check=True, env=environment
    ).stdout.splitlines()[0]
    print(compiler_info, flush=True)
    build = subprocess.run(command, capture_output=True, text=True, env=environment)
    build_log = build.stdout + build.stderr
    (output_dir / "compile.log").write_text(build_log, encoding="utf-8")
    if build.returncode:
        print(build_log, end="", file=sys.stderr)
        return build.returncode
    run = subprocess.run([str(binary)], capture_output=True, text=True, env=environment)
    print(run.stdout, end="", flush=True)
    if run.stderr:
        print(run.stderr, end="", file=sys.stderr)
    (output_dir / "test.log").write_text(run.stdout + run.stderr, encoding="utf-8")
    provenance_files = sources + [args.bsp_include / "xparameters.h", ROOT / "app_src/src/hw_config.h"]
    result = {
        "status": "PASS" if run.returncode == 0 else "FAIL",
        "compiler": compiler_info,
        "command": command,
        "stdout": run.stdout,
        "stderr": run.stderr,
        "returncode": run.returncode,
        "sha256": {str(path): hashlib.sha256(path.read_bytes()).hexdigest() for path in provenance_files},
        "limits": "Host MMIO simulation only; does not validate FPGA hardware or model inference.",
    }
    (output_dir / "results.json").write_text(json.dumps(result, indent=2), encoding="utf-8")
    return run.returncode


if __name__ == "__main__":
    raise SystemExit(main())
