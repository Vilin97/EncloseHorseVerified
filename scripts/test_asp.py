#!/usr/bin/env python3
"""Differential and daily-size tests for the untrusted Clingo reference."""
from __future__ import annotations

import argparse
import itertools
import json
from pathlib import Path
import random
import re
import unittest

from solve_asp import Board, evaluate, solve

ROOT = Path(__file__).resolve().parents[1]


def exhaustive(board: Board) -> int | None:
    """Independent search order; compare only scores, since optimal ties differ."""
    grass = [i for i, char in enumerate(board.cells) if char == "."]
    best = None
    for size in range(min(board.budget, len(grass)) + 1):
        for walls in itertools.combinations(grass, size):
            score, _ = evaluate(board, list(walls))
            if score is not None and (best is None or score > best):
                best = score
    return best


def assert_result(test: unittest.TestCase, board: Board, result: dict, expected: int | None) -> None:
    test.assertFalse(result["lean_verified"])
    test.assertTrue(result["search_exhausted"], result)
    test.assertFalse(result["interrupted"], result)
    test.assertEqual(result["status"], "unsatisfiable" if expected is None else "optimal", result)
    test.assertEqual(result["score"], expected, result)
    test.assertEqual(result["solver_proved_optimal"], expected is not None, result)
    if expected is not None:
        score, reached = evaluate(board, result["walls"])
        test.assertEqual(score, expected)
        test.assertEqual(sorted(reached), result["reached"])
    else:
        test.assertIsNone(result["walls"])


class ASPTests(unittest.TestCase):
    def test_standard_rules_and_signed_optima(self) -> None:
        cases = [
            (["H"], 0, None),  # A horse on the boundary cannot be enclosed.
            (["~~~~", "~HS~", "~~~~"], 3, -3),  # Escape score 0 must NOT beat an enclosure.
            (["~~~~~~", "~HCSG~", "~~~~~~"], 0, 12),
            (["~~~~~~~", "~H~GGG~", "~~~~~~~"], 0, 1),  # Disconnected apples are not scored.
            (["~~~~~~~", "~H0~G0~", "~~~~~~~"], 0, 14),  # Portal crosses between islands.
            (["~~~~~", "~H0~~", "~~~~~"], 0, 2),  # A singleton label is harmless.
            (["~~~~~~~~~", "~H0~G0~0~", "~~~~~~~~~"], 0, 15),  # All three matching labels link.
            (["~~~0~~~", "~H0~G0~", "~~~~~~~"], 0, None),  # Triple group reaches a boundary.
            (["~~~0~", "~H.~~", "~0~~~", "~~~~~"], 1, None),  # Portal makes the horse escape.
        ]
        for index, (rows, budget, expected) in enumerate(cases):
            with self.subTest(index=index):
                board = Board(tuple(rows), budget, f"rules-{index}")
                self.assertEqual(exhaustive(board), expected)
                assert_result(self, board, solve(board), expected)

    def test_all_official_tutorials(self) -> None:
        levels = json.loads((ROOT / "data/tutorial-levels.json").read_text())
        expected = {entry["id"]: entry["score"] for entry in json.loads((ROOT / "data/tutorial-solutions.json").read_text())}
        for level in levels:
            with self.subTest(level=level["id"]):
                board = Board.from_level(level)
                assert_result(self, board, solve(board), expected[level["id"]])

    def test_random_differential_exhaustive(self) -> None:
        rng = random.Random(43500)
        for index in range(120):
            cells = [rng.choices(["~", ".", "C", "G", "S"], [5, 6, 1, 1, 1])[0] for _ in range(25)]
            cells[12] = "H"
            grass = [i for i, c in enumerate(cells) if c == "."]
            for i in grass[10:]:
                cells[i] = "~"
            if rng.randrange(2):
                first, second = rng.sample([i for i in range(25) if i != 12], 2)
                cells[first] = cells[second] = "0"
            rows = tuple("".join(cells[start:start + 5]) for start in range(0, 25, 5))
            board = Board(rows, rng.randrange(4), f"random-{index}")
            with self.subTest(level=board.level_id):
                assert_result(self, board, solve(board), exhaustive(board))

    def test_daily_lean_literals_match_json(self) -> None:
        levels = {entry["date"].replace("-", ""): entry for entry in json.loads((ROOT / "data/daily-levels.json").read_text())}
        references = {entry["id"]: entry for entry in json.loads((ROOT / "data/daily-asp-results.json").read_text())}
        source = (ROOT / "EncloseHorseVerified/DailyLevels.lean").read_text()
        declarations = re.findall(r"def daily(\d{8}) : Board := Board.ofRows\s+(\[.*?\]) (\d+)", source, re.S)
        witnesses = dict(re.findall(r"def daily(\d{8})Witness : Placement := (\[.*?\])", source))
        self.assertEqual(len(declarations), len(levels))
        for date, rows, budget in declarations:
            level = levels[date]
            self.assertEqual("\n".join(json.loads(rows)), level["map"])
            self.assertEqual(int(budget), level["budget"])
            walls = json.loads(witnesses[date])
            self.assertEqual(walls, references[level["id"]]["walls"])
            score, _ = evaluate(Board.from_level(level), walls)
            self.assertEqual(score, level["reportedOptimalScore"])

    def test_input_and_illegal_placement_validation(self) -> None:
        for rows, budget in ((["H"], -1), (["HH"], 0), (["H"], True), (["H." ,"~"], 0), (["H?"], 0)):
            with self.subTest(rows=rows, budget=budget):
                with self.assertRaises(ValueError):
                    Board(tuple(rows), budget)
        board = Board(("~~~~", "~H.~", "~~~~"), 1)
        for walls in ([5], [6, 6], [True], [-1], [999], [6, 0]):
            with self.subTest(walls=walls):
                with self.assertRaises(ValueError):
                    evaluate(board, walls)

    def test_zero_timeout_cannot_mislabel_incumbent(self) -> None:
        level = json.loads((ROOT / "data/daily-levels.json").read_text())[0]
        result = solve(Board.from_level(level), timeout=0)
        if result["interrupted"] or not result["search_exhausted"]:
            self.assertEqual(result["status"], "incomplete", result)
            self.assertFalse(result["solver_proved_optimal"], result)
        self.assertFalse(result["lean_verified"])


def daily_benchmarks(timeout: float) -> list[dict]:
    results = []
    for level in json.loads((ROOT / "data/daily-levels.json").read_text()):
        board = Board.from_level(level)
        result = solve(board, timeout=timeout)
        result.update({
            "width": board.width, "height": board.height, "budget": board.budget,
            "grass_candidates": board.cells.count("."),
            "reported_optimal_score": level["reportedOptimalScore"],
            "source": level["source"],
        })
        results.append(result)
        print(json.dumps(result), flush=True)
    return results


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--daily", action="store_true")
    parser.add_argument("--daily-timeout", type=float, default=180)
    parser.add_argument("--json-output", type=Path)
    args = parser.parse_args()
    suite = unittest.defaultTestLoader.loadTestsFromTestCase(ASPTests)
    tested = unittest.TextTestRunner(verbosity=2).run(suite)
    if not tested.wasSuccessful():
        return 1
    results = daily_benchmarks(args.daily_timeout) if args.daily else []
    if args.json_output:
        args.json_output.write_text(json.dumps(results, indent=2) + "\n")
    for result in results:
        if result["status"] != "optimal" or result["score"] != result["reported_optimal_score"]:
            print(f"DAILY BENCHMARK FAILED OR INCOMPLETE: {result['id']}", flush=True)
            return 1
    print("All ASP tests passed. Clingo results are external-reference results, not Lean proofs.", flush=True)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
