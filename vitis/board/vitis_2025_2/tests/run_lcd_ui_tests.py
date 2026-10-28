"""Test the real LCD page, button hitboxes, inference presentation and BMP save.

Run: python vitis_2025_2/tests/run_lcd_ui_tests.py
Requires a native 64-bit GCC/Clang and Pillow. No FPGA or external image needed.
The PNGs are actual application-rendered framebuffers with a simulated camera
image, not screenshots captured from an FPGA board.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys

from PIL import Image, ImageDraw

TESTS = Path(__file__).resolve().parent
ROOT = TESTS.parent
APP = ROOT / "app_src"
BUILD = TESTS / ".build/lcd_ui"
PREVIEWS = TESTS / "lcd_previews"
STATES = ("idle", "result", "detecting", "saving", "save_error", "offline", "no_model")
RENDER_FUNCTIONS = (
    "Gen_Color", "LCD_Clear", "LCD_DrawPoint", "LCD_CleanArea",
    "LCD_ShowChar", "LCD_Print", "LCD_ShowPicture",
)


def extract_function(source: str, name: str) -> str:
    """Keep each real implementation byte for byte, apart from instrumentation."""
    start = re.search(r"(?:void|uint32_t)\s+" + name + r"\s*\([^)]*\)\s*\{", source)
    if start is None:
        raise RuntimeError(f"Real LCD function not found: {name}")
    depth = 1
    tokens = re.compile(r'"(?:\\.|[^"\\])*"|\'(?:\\.|[^\'\\])*\'|//[^\n]*|/\*.*?\*/|[{}]', re.S)
    for token in tokens.finditer(source, start.end()):
        if token.group() == "{":
            depth += 1
        elif token.group() == "}":
            depth -= 1
            if depth == 0:
                function = source[start.start():token.end()]
                if name == "LCD_DrawPoint":
                    # Observe rejected coordinates without changing drawing.
                    at = function.index("{") + 1
                    function = function[:at] + "\n++draw_calls; if (X >= LCD_W || Y >= LCD_H) ++out_of_bounds;\n" + function[at:]
                return function
    raise RuntimeError(f"Unbalanced real LCD function: {name}")


def run(command: list[str], cwd: Path, environment: dict[str, str], log: Path) -> subprocess.CompletedProcess:
    result = subprocess.run(command, cwd=cwd, env=environment, text=True, capture_output=True)
    log.write_text(result.stdout + result.stderr, encoding="utf-8")
    if result.returncode:
        print(result.stdout + result.stderr, file=sys.stderr, end="")
        raise RuntimeError(f"Command failed ({result.returncode}); see {log}")
    return result


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cc", help="Native 64-bit GCC/Clang executable")
    args = parser.parse_args()
    compiler = args.cc or shutil.which("gcc") or shutil.which("clang")
    if not compiler and Path("C:/mingw64/bin/gcc.exe").is_file():
        compiler = "C:/mingw64/bin/gcc.exe"
    if not compiler:
        parser.error("No native compiler found; pass --cc")
    BUILD.mkdir(parents=True, exist_ok=True)
    PREVIEWS.mkdir(parents=True, exist_ok=True)
    env = os.environ.copy()
    env["PATH"] = str(Path(compiler).resolve().parent) + os.pathsep + env.get("PATH", "")
    version = run([compiler, "--version"], BUILD, env, BUILD / "compiler.log").stdout.splitlines()[0]
    source = (APP / "Lib/LCD/lcd.c").read_text(encoding="utf-8-sig")
    renderer = BUILD / "actual_lcd_renderer.c"
    renderer.write_text(
        '#include "lcd.h"\n#include "font.h"\nextern unsigned long draw_calls, out_of_bounds;\n\n'
        + "\n\n".join(extract_function(source, name) for name in RENDER_FUNCTIONS) + "\n",
        encoding="utf-8",
    )
    sources = [TESTS / "test_lcd_ui.c", APP / "src/mess.c", renderer]
    include = [TESTS / "lcd_mocks", APP / "src", APP / "Lib/LCD"]
    results = []
    reference_images: dict[str, bytes] = {}
    for flip in (0, 1):
        work = BUILD / f"flip_{flip}"
        work.mkdir(exist_ok=True)
        # Remove only files produced by this test, without recursive deletion.
        card = work / "Test"
        if card.is_dir():
            for filename in ("IMG00001.BMP", "IMG00002.BMP", "IMG00003.BMP", "IMG00004.BMP", "IMG00005.BMP"):
                (card / filename).unlink(missing_ok=True)
            card.rmdir()
        binary = work / ("test_lcd_ui.exe" if os.name == "nt" else "test_lcd_ui")
        command = [compiler, "-std=c11", "-O2", "-Wall", "-Wextra", "-Werror", f"-DLCD_FLIP_DISPLAY={flip}",
                   "-include", str(TESTS / "lcd_mocks/host_bsp.h")]
        command.extend(f"-I{path}" for path in include)
        command.extend(map(str, sources))
        command.extend(("-o", str(binary)))
        run(command, BUILD, env, work / "compile.log")
        first = run([str(binary)], work, env, work / "test.log")
        restarted = run([str(binary), "--restart"], work, env, work / "restart.log")
        full = run([str(binary), "--full"], work, env, work / "full.log")
        print(first.stdout, end="")
        print(restarted.stdout, end="")
        print(full.stdout, end="")
        expected_bgr = bytes((i * 37 + i // 673) & 255 for i in range(224 * 224 * 3))
        expected_rgb = Image.frombytes("RGB", (224, 224), expected_bgr, "raw", "BGR").tobytes()
        for filename in ("IMG00002.BMP", "IMG00004.BMP", "IMG00005.BMP"):
            with Image.open(card / filename) as snapshot:
                if snapshot.size != (224, 224) or snapshot.convert("RGB").tobytes() != expected_rgb:
                    raise RuntimeError(f"Independent BMP decoder rejected saved pixels: {filename}")
        for state in STATES:
            data = (work / f"{state}.bgr").read_bytes()
            frame = Image.frombytes("RGB", (800, 480), data, "raw", "BGR")
            if flip:
                frame = frame.transpose(Image.Transpose.ROTATE_180)
            logical_pixels = frame.tobytes()
            if flip == 0:
                reference_images[state] = logical_pixels
                frame.save(PREVIEWS / f"{state}.png")
            elif logical_pixels != reference_images[state]:
                raise RuntimeError(f"Rotated actual framebuffer differs: {state}")
        results.append({"flip": flip, "status": "PASS", "test": first.stdout.strip(),
                        "restart": restarted.stdout.strip(), "full_directory": full.stdout.strip(),
                        "compile_command": command})
    # An explicitly labelled contact sheet helps review busy/offline states.
    sheet = Image.new("RGB", (1600, 4 * 510), (10, 21, 32))
    draw = ImageDraw.Draw(sheet)
    for index, state in enumerate(STATES):
        x, y = (index % 2) * 800, (index // 2) * 510
        draw.text((x + 10, y + 8), f"{state.upper()} - actual C renderer / simulated camera", fill=(233, 242, 242))
        with Image.open(PREVIEWS / f"{state}.png") as frame:
            sheet.paste(frame, (x, y + 30))
    sheet.save(PREVIEWS / "states.png")
    provenance = [APP / "src/mess.c", APP / "src/mess.h", APP / "src/main.c",
                  APP / "src/camera_detection.h", APP / "Lib/LCD/lcd.c",
                  APP / "Lib/LCD/font.h", TESTS / "test_lcd_ui.c", Path(__file__).resolve()]
    manifest = {
        "status": "PASS", "compiler": version, "cases": results,
        "orientation_equivalence": "All seven actual framebuffers identical at LCD_FLIP_DISPLAY=0/1 after inverse rotation",
        "sha256": {str(path.relative_to(ROOT)): hashlib.sha256(path.read_bytes()).hexdigest() for path in provenance},
        "scope": "Real mess.c/mess.h and LCD drawing/font code; mocked BSP, timer, inference, and filesystem adapter. Test BMP files written and verified on host.",
        "limits": "Simulated camera image only. Does not establish physical touchscreen, SD-card reliability, DMA frame coherence, model accuracy, or board LCD output.",
    }
    (PREVIEWS / "verification.json").write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print("PASS: seven UI states rendered; both orientations pixel-identical after inverse rotation")
    print(f"Preview: {PREVIEWS / 'states.png'}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
