"""Run host tests and save an honest, machine-readable verification report."""
import json
import os
from pathlib import Path
import platform
import sys
import unittest

ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'src'))


if __name__=='__main__':
    suite=unittest.defaultTestLoader.discover(str(ROOT/'sim'))
    report_dir=ROOT/'report'
    report_dir.mkdir(exist_ok=True)
    with (report_dir/'host_tests.log').open('w',encoding='utf-8') as log:
        result=unittest.TextTestRunner(stream=log,verbosity=2).run(suite)
    report={
        'platform':platform.platform(), 'python':platform.python_version(),
        'tests_run':result.testsRun, 'failures':len(result.failures),
        'errors':len(result.errors), 'skipped':len(result.skipped),
        'passed':result.wasSuccessful(),
        'scope':'host tests only; includes mock MMIO/DMA, C expression references, asset integrity',
        'hardware_execution':False, 'hls_numeric_equivalence':'not_verified',
    }
    (report_dir/'host_tests.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(report,indent=2))
    print((report_dir/'host_tests.log').read_text(encoding='utf-8'))
    raise SystemExit(0 if result.wasSuccessful() else 1)
