"""Test the real SD I/O implementation with injected FatFs and malloc failures.

Run: python vitis_2025_2/tests/run_sd_io_tests.py
Requires native GCC/Clang; C:/mingw64/bin/gcc.exe is used when absent from PATH.
Checks exact transfer sizes, file cleanup, and failed weight-load preservation.
The FatFs mock does not access board addresses or write files to a real SD card.
Successful float-to-fixed conversion and physical SD behavior are outside scope.
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
SOURCE = ROOT / "app_src/Lib/Net/sd_io.c"
MOCKS = TESTS / "sd_io_mocks"
BUILD = TESTS / ".build/sd_io"


def main() -> int:
    """Compile the canonical C source separately so only it uses malloc hooks."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cc", help="Native 64-bit GCC/Clang executable")
    args = parser.parse_args()
    compiler = args.cc or shutil.which("gcc") or shutil.which("clang")
    if not compiler and Path("C:/mingw64/bin/gcc.exe").is_file():
        compiler = "C:/mingw64/bin/gcc.exe"
    if not compiler:
        parser.error("No native compiler found; pass --cc")

    BUILD.mkdir(parents=True, exist_ok=True)
    environment = os.environ.copy()
    environment["PATH"] = str(Path(compiler).resolve().parent) + os.pathsep + environment.get("PATH", "")
    version = subprocess.run(
        [compiler, "--version"], env=environment, text=True,
        capture_output=True, check=True,
    ).stdout.splitlines()[0]
    print(version)
    common = [compiler, "-std=c11", "-Wall", "-Wextra", "-Werror",
              f"-I{MOCKS}", f"-I{SOURCE.parent}"]
    object_file = BUILD / "sd_io.o"
    binary = BUILD / ("test_sd_io.exe" if os.name == "nt" else "test_sd_io")
    commands = [
        [*common, "-Dmalloc=audit_malloc", "-Dfree=audit_free", "-c",
         str(SOURCE), "-o", str(object_file)],
        [*common, str(TESTS / "test_sd_io.c"), str(object_file), "-o", str(binary)],
        [str(binary)],
    ]
    steps = []
    for log_name, command in zip(("compile_source", "compile_test", "test"), commands):
        result = subprocess.run(command, cwd=BUILD, env=environment, text=True, capture_output=True)
        (BUILD / f"{log_name}.log").write_text(result.stdout + result.stderr, encoding="utf-8")
        steps.append({"step": log_name, "command": command, "returncode": result.returncode,
                      "stdout": result.stdout, "stderr": result.stderr})
        if result.returncode:
            print(result.stdout + result.stderr, file=sys.stderr, end="")
            break
        if log_name == "test":
            print(result.stdout, end="")

    returncode = steps[-1]["returncode"]
    provenance = [SOURCE, SOURCE.with_suffix(".h"), TESTS / "test_sd_io.c",
                  Path(__file__).resolve(), *sorted(MOCKS.glob("*.h"))]
    manifest = {
        "status": "PASS" if returncode == 0 else "FAIL",
        "compiler": version, "steps": steps,
        "sha256": {str(path.relative_to(ROOT)): hashlib.sha256(path.read_bytes()).hexdigest()
                   for path in provenance},
        "scope": "Canonical sd_io.c; injected FatFs responses and temporary allocation failure.",
        "limits": "No actual SD card, board address dereference, or successful float-to-fixed conversion.",
    }
    (BUILD / "results.json").write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8")
    return returncode


if __name__ == "__main__":
    raise SystemExit(main())
