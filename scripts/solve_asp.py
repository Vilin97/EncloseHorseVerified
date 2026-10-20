#!/usr/bin/env python3
"""Exact external ASP reference for standard enclose.horse.

This is an independently implemented comparison/benchmark tool, NOT a Lean
proof checker. "optimal" means Clingo completed its optimization search.
Every returned witness and reachable component is checked by a separate Python
BFS; that checks feasibility and scoring, not optimality. The Lean solver and
its kernel-checked theorem remain the verified implementation.
"""
from __future__ import annotations

import argparse
from collections import defaultdict, deque
from dataclasses import dataclass
import json
from pathlib import Path
import sys
import time
from typing import Any

POINTS = {"C": 4, "G": 11, "S": -4}
ALPHABET = set(". ~#HCGS0123456789abcdefghijklmnopqrstuvwxyz")


@dataclass(frozen=True)
class Board:
    rows: tuple[str, ...]
    budget: int
    level_id: str = "custom"

    def __post_init__(self) -> None:
        if type(self.budget) is not int or self.budget < 0:
            raise ValueError("budget must be a nonnegative integer")
        if not self.rows or not self.rows[0]:
            raise ValueError("board must be nonempty")
        if any(len(row) != len(self.rows[0]) for row in self.rows):
            raise ValueError("rows must be rectangular")
        cells = "".join(self.rows)
        if set(cells) - ALPHABET:
            raise ValueError("unsupported tile: only standard-game ASCII is accepted")
        if cells.count("H") != 1:
            raise ValueError("board must contain exactly one horse")

    @property
    def width(self) -> int:
        return len(self.rows[0])

    @property
    def height(self) -> int:
        return len(self.rows)

    @property
    def cells(self) -> str:
        return "".join(self.rows).replace(" ", ".").replace("#", "~")

    @classmethod
    def from_level(cls, level: dict[str, Any]) -> Board:
        raw_rows = level.get("rows")
        if raw_rows is None:
            raw_map = level.get("map")
            if not isinstance(raw_map, str):
                raise ValueError("level needs map:string or rows:list[string]")
            raw_rows = raw_map.splitlines()
        if not isinstance(raw_rows, list) or not all(isinstance(r, str) for r in raw_rows):
            raise ValueError("rows must be a list of strings")
        return cls(tuple(raw_rows), level["budget"], str(level.get("id", "custom")))


def evaluate(board: Board, walls: list[int]) -> tuple[int | None, set[int]]:
    """Independent coordinate/queue BFS. None is an escape, not a zero score."""
    cells, width, height = board.cells, board.width, board.height
    if len(walls) != len(set(walls)) or len(walls) > board.budget:
        raise ValueError("duplicate walls or wall budget exceeded")
    if any(type(v) is not int or v < 0 or v >= len(cells) or cells[v] != "." for v in walls):
        raise ValueError("walls can only occupy grass")
    blocked = set(walls)
    portals: dict[str, list[int]] = defaultdict(list)
    for i, char in enumerate(cells):
        if char.isdigit() or char.islower():
            portals[char].append(i)
    horse = cells.index("H")
    seen, queue = {horse}, deque([horse])
    while queue:
        i = queue.popleft()
        y, x = divmod(i, width)
        neighbors = []
        for dx, dy in ((0, -1), (0, 1), (-1, 0), (1, 0)):
            nx, ny = x + dx, y + dy
            if 0 <= nx < width and 0 <= ny < height:
                neighbors.append(ny * width + nx)
        if cells[i] in portals:
            neighbors.extend(portals[cells[i]])
        for j in neighbors:
            if cells[j] != "~" and j not in blocked and j not in seen:
                seen.add(j)
                queue.append(j)
    escaped = any(i % width in (0, width - 1) or i // width in (0, height - 1) for i in seen)
    return (None if escaped else sum(POINTS.get(cells[i], 1) for i in seen)), seen


def asp_program(board: Board) -> str:
    """Walls are choices; reach/1 is a positive least fixed point for each choice.

    In particular reach/1 is never guessed. This prevents an optimizer from
    dropping inconvenient bees, disconnected cells, or a reachable exit.
    """
    cells, width, height = board.cells, board.width, board.height
    lines = [f"budget({board.budget}).", f"horse({cells.index('H')})."]
    portals: dict[str, list[int]] = defaultdict(list)
    for i, char in enumerate(cells):
        if char == "~":
            continue
        lines.append(f"cell({i}).")
        lines.append(f"weight({i},{POINTS.get(char, 1)}).")
        if char == ".":
            lines.append(f"grass({i}).")
        if i % width in (0, width - 1) or i // width in (0, height - 1):
            lines.append(f"boundary({i}).")
        # Generate right/down edges, then explicitly make each undirected.
        if i % width + 1 < width and cells[i + 1] != "~":
            lines.extend((f"step({i},{i + 1}).", f"step({i + 1},{i})."))
        if i // width + 1 < height and cells[i + width] != "~":
            lines.extend((f"step({i},{i + width}).", f"step({i + width},{i})."))
        if char.isdigit() or char.islower():
            portals[char].append(i)
    for group in portals.values():
        for first in group:
            for second in group:
                if first != second:
                    lines.append(f"step({first},{second}).")
    lines.append("""
0 { wall(V) : grass(V) } B :- budget(B).
reach(V) :- horse(V).
reach(V) :- reach(U), step(U,V), not wall(V).
:- reach(V), boundary(V).
#maximize { W,V : reach(V), weight(V,W) }.
#show wall/1.
#show reach/1.
""")
    return "\n".join(lines)


def solve(board: Board, timeout: float | None = None) -> dict[str, Any]:
    """Solve with Clingo; never turn a timeout or an incumbent into an optimum.

    timeout bounds the search phase, not Python validation or grounding.
    Clingo's own completed-search status is recorded separately from Lean trust.
    """
    import clingo
    if timeout is not None and timeout < 0:
        raise ValueError("timeout must be nonnegative")
    before = time.monotonic()
    control = clingo.Control(["--models=0", "--opt-mode=opt", "--opt-strategy=usc", "--seed=0", "--warn=none"])
    control.add("base", [], asp_program(board))
    control.ground([("base", [])])
    grounded = time.monotonic()
    best: dict[str, Any] | None = None
    model_count = 0

    def on_model(model: Any) -> None:
        nonlocal best, model_count
        model_count += 1
        symbols = model.symbols(shown=True)
        walls = sorted(atom.arguments[0].number for atom in symbols if atom.name == "wall")
        asp_reached = {atom.arguments[0].number for atom in symbols if atom.name == "reach"}
        score, reached = evaluate(board, walls)
        if score is None or reached != asp_reached:
            raise RuntimeError("ASP witness disagrees with independent BFS")
        cost = list(model.cost)
        if cost and cost != [-score]:
            raise RuntimeError(f"ASP objective cost {cost} disagrees with BFS score {score}")
        candidate = {"score": score, "walls": walls, "reached": sorted(reached), "objective_cost": cost}
        if best is None or score > best["score"]:
            best = candidate

    if timeout is None:
        result = control.solve(on_model=on_model)
    else:
        with control.solve(on_model=on_model, async_=True) as handle:
            if not handle.wait(timeout):
                handle.cancel()
            result = handle.get()
    done = time.monotonic()
    complete = bool(result.exhausted) and not bool(result.interrupted)
    if complete and best is not None and result.satisfiable:
        status = "optimal"
    elif complete and best is None and result.unsatisfiable:
        status = "unsatisfiable"
    else:
        status = "incomplete"
    return {
        "id": board.level_id,
        "engine": f"clingo-{clingo.__version__}",
        "trust": "untrusted external reference; no Lean optimality certificate",
        "lean_verified": False,
        "status": status,
        "solver_proved_optimal": status == "optimal",
        "search_exhausted": bool(result.exhausted),
        "interrupted": bool(result.interrupted),
        "models_seen": model_count,
        "score": None if best is None else best["score"],
        "walls": None if best is None else best["walls"],
        "reached": None if best is None else best["reached"],
        "objective_cost": None if best is None else best["objective_cost"],
        "ground_seconds": round(grounded - before, 6),
        "solve_seconds": round(done - grounded, 6),
        "total_seconds": round(done - before, 6),
    }


def load_levels(path: Path) -> list[dict[str, Any]]:
    document = json.loads(path.read_text())
    levels = document if isinstance(document, list) else [document]
    if not all(isinstance(level, dict) for level in levels):
        raise ValueError("level JSON must be an object or array of objects")
    return levels


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("levels", type=Path, help="level JSON object or array")
    parser.add_argument("--id", action="append", dest="ids", help="solve only these level IDs (repeatable)")
    parser.add_argument("--timeout", type=float, help="search time limit in seconds per level")
    parser.add_argument("--require-optimal", action="store_true", help="exit 2 if any search is incomplete")
    parser.add_argument("--emit-asp", type=Path, help="write the ASP program (requires one selected level)")
    args = parser.parse_args()
    levels = load_levels(args.levels)
    if args.ids:
        selected = set(args.ids)
        available = {level.get("id") for level in levels}
        if selected - available:
            parser.error(f"unknown IDs: {sorted(selected - available)}")
        levels = [level for level in levels if level.get("id") in selected]
    if args.emit_asp:
        if len(levels) != 1:
            parser.error("--emit-asp requires exactly one selected level")
        args.emit_asp.write_text(asp_program(Board.from_level(levels[0])))
    results = []
    for level in levels:
        result = solve(Board.from_level(level), args.timeout)
        results.append(result)
        print(f"{result['id']}: {result['status']}, score={result['score']}, {result['total_seconds']:.3f}s", file=sys.stderr, flush=True)
    print(json.dumps(results, indent=2))
    return 2 if args.require_optimal and any(result["status"] == "incomplete" for result in results) else 0


if __name__ == "__main__":
    raise SystemExit(main())
