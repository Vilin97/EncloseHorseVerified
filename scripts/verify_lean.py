#!/usr/bin/env python3
"""Build project modules in dependency order, one kernel check at a time.

Lake still checks and builds dependencies. The explicit project order prevents
independent, memory-intensive certificate checks from running concurrently on a
small CI runner. This scheduler is not part of any mathematical trust argument.
"""
from __future__ import annotations

import argparse
from pathlib import Path
import re
import subprocess

ROOT = Path(__file__).resolve().parents[1]
IMPORT = re.compile(r"^(?:(?:public|private)\s+)?import\s+(?:all\s+)?(.+)$")


def module_order() -> list[str]:
    files = [ROOT / 'EncloseHorseVerified.lean']
    files += sorted((ROOT / 'EncloseHorseVerified').rglob('*.lean'))
    modules = {'.'.join(p.relative_to(ROOT).with_suffix('').parts): p for p in files}
    dependencies = {}
    for name, path in modules.items():
        names = []
        for line in path.read_text().splitlines():
            match = IMPORT.match(line.strip().split('--', 1)[0].strip())
            if match:
                names.extend(match.group(1).split())
        dependencies[name] = sorted(set(names) & modules.keys())
    state: dict[str, int] = {}
    ordered: list[str] = []

    def visit(name: str) -> None:
        if state.get(name) == 1:
            raise RuntimeError(f'cyclic project imports at {name}')
        if state.get(name) == 2:
            return
        state[name] = 1
        for dependency in dependencies[name]:
            visit(dependency)
        state[name] = 2
        ordered.append(name)

    for name in sorted(modules):
        visit(name)
    return ordered


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--list', action='store_true', help='print build order without building')
    args = parser.parse_args()
    ordered = module_order()
    for i, name in enumerate(ordered, 1):
        if args.list:
            print(name)
        else:
            print(f'[{i}/{len(ordered)}] Checking {name}', flush=True)
            subprocess.run(['lake', 'build', name], cwd=ROOT, check=True)
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
