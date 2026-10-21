#!/usr/bin/env python3
"""Generator QA and independent replay; acceptance proofs live in Tests/BranchTree.lean."""
from __future__ import annotations

import copy
import itertools
import json
from pathlib import Path
import random
import tempfile
import unittest

from generate_tree_certificate import Generator, replay, write_lean
from solve_asp import Board, evaluate

ROOT = Path(__file__).resolve().parents[1]


def best(board: Board):
    candidates = [i for i, c in enumerate(board.cells) if c == '.']
    result = None
    for n in range(min(board.budget, len(candidates)) + 1):
        for walls in itertools.combinations(candidates, n):
            score, _ = evaluate(board, list(walls))
            if score is not None and (result is None or score > result[1]):
                result = (list(walls), score)
    return result


class TreeCertificateTests(unittest.TestCase):
    def certificate(self, level, walls, score):
        result = Generator(level, walls, score, seconds=5).generate()
        self.assertEqual(result['status'], 'complete', result)
        self.assertFalse(result['lean_verified'])
        self.assertTrue(replay(level, result))
        return result

    def test_all_five_real_tutorials(self):
        levels = json.loads((ROOT / 'data/tutorial-levels.json').read_text())
        solutions = {s['id']: s for s in json.loads((ROOT / 'data/tutorial-solutions.json').read_text())}
        for level in levels:
            with self.subTest(level=level['id']):
                solution = solutions[level['id']]
                self.certificate(level, solution['walls'], solution['score'])

    def test_signed_score_and_arbitrary_portal_groups(self):
        for cells, budget in [(['~~~~', '~HS~', '~~~~'], 0),
                              (['~~~~~', '~H0~~', '~~~~~'], 0),
                              (['~~~~~~~~~', '~H0~G0~0~', '~~~~~~~~~'], 0)]:
            level = {'id': 'rules', 'rows': cells, 'budget': budget}
            walls, score = best(Board.from_level(level))
            self.certificate(level, walls, score)

    def test_random_generator_against_exhaustive_and_coordinate_bfs(self):
        rng = random.Random(43504)
        successes = 0
        for index in range(80):
            cells = [rng.choices(['~', '.', 'C', 'G', 'S'], [8, 5, 1, 1, 1])[0] for _ in range(25)]
            cells[12] = 'H'
            for v in [i for i, c in enumerate(cells) if c == '.'][8:]:
                cells[v] = '~'
            if index % 3 == 0:
                for v in rng.sample([i for i in range(25) if i != 12], 3):
                    cells[v] = '0'
            rows = [''.join(cells[i:i + 5]) for i in range(0, 25, 5)]
            level = {'id': f'random-{index}', 'rows': rows, 'budget': rng.randrange(4)}
            board = Board.from_level(level)
            result = best(board)
            if result is None:
                continue
            successes += 1
            walls, score = result
            generator = Generator(level, walls, score, seconds=5)
            candidates = [i for i, c in enumerate(board.cells) if c == '.']
            for n in range(min(board.budget, len(candidates)) + 1):
                for blocked in itertools.combinations(candidates, n):
                    _, reached = evaluate(board, list(blocked))
                    self.assertEqual(generator.flood(sum(1 << v for v in blocked)), sum(1 << v for v in reached))
            certificate = generator.generate()
            self.assertEqual(certificate['status'], 'complete')
            self.assertTrue(replay(level, certificate))
        self.assertGreater(successes, 20)

    def test_mutations_are_rejected(self):
        level = json.loads((ROOT / 'data/tutorial-levels.json').read_text())[0]
        certificate = self.certificate(level, [23], 15)
        mutations = []
        for kind in ('bound', 'budget', 'dead', 'done'):
            bad = copy.deepcopy(certificate)
            bad['nodes'][bad['root']] = [kind]
            mutations.append(bad)
        for pivot in (-1, 999):
            bad = copy.deepcopy(certificate)
            bad['nodes'][bad['root']][1] = pivot
            mutations.append(bad)
        for child in (-1, certificate['root']):
            bad = copy.deepcopy(certificate)
            bad['nodes'][bad['root']][2] = child
            mutations.append(bad)
        bad = copy.deepcopy(certificate)
        bad['witness'] = [0]
        mutations.append(bad)
        bad = copy.deepcopy(certificate)
        bad['root'] = -1
        mutations.append(bad)
        for index, bad in enumerate(mutations):
            with self.subTest(index=index):
                self.assertFalse(replay(level, bad))

    def test_incomplete_and_refuted_targets_never_export(self):
        level = {'id': 'suboptimal', 'rows': ['~~~~~~', '~H.C~~', '~~~~~~'], 'budget': 1}
        refuted = Generator(level, [8], 1).generate()
        self.assertEqual(refuted['status'], 'target_refuted')
        self.assertEqual(refuted['counterexample_score'], 6)
        self.assertFalse(replay(level, refuted))
        for kwargs in ({'max_nodes': 0}, {'seconds': 0}):
            incomplete = Generator(level, [], 6, **kwargs).generate()
            self.assertEqual(incomplete['status'], 'incomplete')
            self.assertFalse(replay(level, incomplete))
            with tempfile.TemporaryDirectory() as folder:
                with self.assertRaises(ValueError):
                    write_lean(Path(folder) / 'Bad.lean', incomplete)

    def test_witness_normalized_and_invalid_inputs_rejected(self):
        level = json.loads((ROOT / 'data/tutorial-levels.json').read_text())[1]
        certificate = self.certificate(level, [60, 23, 40], 17)
        self.assertEqual(certificate['witness'], [23, 40, 60])
        for walls, target in [([0], 15), ([23, 23], 15), ([23], 16), ([True], 15)]:
            with self.assertRaises(ValueError):
                Generator(json.loads((ROOT / 'data/tutorial-levels.json').read_text())[0], walls, target)
        with self.assertRaises(ValueError):
            Generator({'id': 'bad', 'rows': ['H?'], 'budget': 0}, [], 0)


if __name__ == '__main__':
    unittest.main()
