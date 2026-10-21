#!/usr/bin/env python3
"""Generate a finite, externally supplied branch-tree certificate.

The Python search is untrusted. Only a successful Lean checker invocation proves
an optimum. A timeout/node limit emits no complete certificate. Leaf conditions
are exactly those recomputed by Certificate/BranchTree.lean.
"""
from __future__ import annotations

import argparse
from collections import Counter, defaultdict, deque
from functools import lru_cache
import json
from pathlib import Path
import re
import time


class Incomplete(Exception):
    pass


class Counterexample(Exception):
    def __init__(self, walls, score):
        self.walls, self.score = walls, score


class Generator:
    def __init__(self, level, witness, target, seconds=30.0, max_nodes=1_000_000, cache_size=200_000):
        from solve_asp import Board, evaluate
        board = Board.from_level(level)
        actual, _ = evaluate(board, witness)
        if type(target) is not int or actual is None or actual != target:
            raise ValueError('supplied witness is not an enclosure with the claimed score')
        # Lean's canonical legal placements follow the increasing candidate order.
        self.level, self.witness, self.target = level, sorted(witness), target
        self.rows = list(board.rows)
        self.height, self.width = len(self.rows), len(self.rows[0])
        if any(len(row) != self.width for row in self.rows):
            raise ValueError('ragged map')
        self.cells = ''.join(self.rows).replace(' ', '.').replace('#', '~')
        if self.cells.count('H') != 1:
            raise ValueError('expected one horse')
        self.size = len(self.cells)
        self.budget = level['budget']
        self.base = sum(1 << i for i, c in enumerate(self.cells) if c != '~')
        self.grass = sum(1 << i for i, c in enumerate(self.cells) if c == '.')
        self.start = 1 << self.cells.index('H')
        self.boundary = sum(1 << i for i in range(self.size) if i % self.width in (0, self.width - 1) or i // self.width in (0, self.height - 1))
        self.left = sum(1 << i for i in range(self.size) if i % self.width != 0)
        self.right = sum(1 << i for i in range(self.size) if i % self.width != self.width - 1)
        self.cherries = sum(1 << i for i, c in enumerate(self.cells) if c == 'C')
        self.apples = sum(1 << i for i, c in enumerate(self.cells) if c == 'G')
        self.bees = sum(1 << i for i, c in enumerate(self.cells) if c == 'S')
        portals = defaultdict(list)
        for i, c in enumerate(self.cells):
            if c.isdigit() or c.islower():
                portals[c].append(i)
        self.portal_masks = [sum(1 << i for i in group) for group in portals.values()]
        self.adj = []
        for i, c in enumerate(self.cells):
            ns = []
            if c != '~':
                y, x = divmod(i, self.width)
                for dx, dy in ((0, -1), (0, 1), (-1, 0), (1, 0)):
                    nx, ny = x + dx, y + dy
                    if 0 <= nx < self.width and 0 <= ny < self.height:
                        j = ny * self.width + nx
                        if self.cells[j] != '~':
                            ns.append(j)
                if c.isdigit() or c.islower():
                    ns += [j for j in portals[c] if j != i]
            self.adj.append(tuple(set(ns)))
        self.started = time.monotonic()
        self.deadline = self.started + seconds if seconds is not None else float('inf')
        self.max_nodes = max_nodes
        self.visits = 0
        self.leaf_counts = Counter()
        self.nodes = [['bound'], ['dead'], ['budget'], ['done']]
        self.target_walls = sum(1 << i for i in self.witness)
        self.flood = lru_cache(maxsize=cache_size)(self._flood)
        if len(witness) != len(set(witness)) or len(witness) > self.budget or self.target_walls & ~self.grass:
            raise ValueError('invalid supplied witness walls')
        reached = self.flood(self.target_walls)
        if reached & self.boundary or self.score(reached) != target:
            raise ValueError('supplied witness is not an enclosure with the claimed score')

    def _flood(self, blocked):
        available = self.base & ~blocked
        reach = self.start
        while True:
            nxt = reach | ((reach & self.left) >> 1) | ((reach & self.right) << 1) | (reach >> self.width) | (reach << self.width)
            for mask in self.portal_masks:
                if reach & mask:
                    nxt |= mask
            nxt &= available
            if nxt == reach:
                return reach
            reach = nxt

    def score(self, reach):
        return reach.bit_count() + 3 * (reach & self.cherries).bit_count() + 10 * (reach & self.apples).bit_count() - 5 * (reach & self.bees).bit_count()

    def positive(self, reach):
        return reach.bit_count() + 3 * (reach & self.cherries).bit_count() + 10 * (reach & self.apples).bit_count() - (reach & self.bees).bit_count()

    def leaf(self, kind):
        self.leaf_counts[kind] += 1
        return {'bound': 0, 'dead': 1, 'budget': 2, 'done': 3}[kind]

    def path(self, placed, remaining, goal):
        """0/1 BFS finds an escape/bee path with few undecided buildable cells."""
        start = self.start.bit_length() - 1
        distance = [self.size + 1] * self.size
        parent = [-1] * self.size
        distance[start] = 0
        queue = deque([start])
        while queue:
            u = queue.popleft()
            if (1 << u) & goal:
                found = []
                while u != -1:
                    if (1 << u) & remaining:
                        found.append(u)
                    u = parent[u]
                return found
            for v in self.adj[u]:
                bit = 1 << v
                if placed & bit:
                    continue
                cost = int(bool(remaining & bit))
                if distance[u] + cost < distance[v]:
                    distance[v] = distance[u] + cost
                    parent[v] = u
                    (queue.append if cost else queue.appendleft)(v)
        return []

    def pivot(self, placed, remaining, reached, forced):
        goal = self.boundary if reached & self.boundary else self.bees & ~forced
        options = self.path(placed, remaining, goal)
        if not options:
            options = [i for i in range(self.size) if (1 << i) & remaining & reached]
        if not options:
            options = [(remaining & -remaining).bit_length() - 1]
        # Prefer a wall that immediately discards the largest optimistic component.
        return min(options, key=lambda v: (self.positive(self.flood(placed | (1 << v))),
                                          int(not bool((1 << v) & self.target_walls)),
                                          len(self.adj[v]), v))

    def visit(self, placed, remaining, count):
        self.visits += 1
        if self.visits > self.max_nodes or ((self.visits == 1 or self.visits & 255 == 0)
                                           and time.monotonic() >= self.deadline):
            raise Incomplete
        if count > self.budget:
            return self.leaf('dead')
        reached = self.flood(placed)
        positive = self.positive(reached)
        if positive <= self.target:
            return self.leaf('bound')
        forced = self.flood(placed | remaining)
        if forced & self.boundary:
            return self.leaf('dead')
        if positive - 4 * (forced & self.bees).bit_count() <= self.target:
            return self.leaf('bound')
        if count >= self.budget:
            if not reached & self.boundary and self.score(reached) > self.target:
                raise Counterexample(self.indices(placed), self.score(reached))
            return self.leaf('budget')
        if not remaining:
            if not reached & self.boundary and self.score(reached) > self.target:
                raise Counterexample(self.indices(placed), self.score(reached))
            return self.leaf('done')
        if not reached & self.boundary and self.score(reached) > self.target:
            raise Counterexample(self.indices(placed), self.score(reached))
        pivot = self.pivot(placed, remaining, reached, forced)
        bit = 1 << pivot
        rest = remaining & ~bit
        yes = self.visit(placed | bit, rest, count + 1)
        no = self.visit(placed, rest, count)
        self.nodes.append(['split', pivot, yes, no])
        return len(self.nodes) - 1

    @staticmethod
    def indices(mask):
        result = []
        while mask:
            bit = mask & -mask
            result.append(bit.bit_length() - 1)
            mask ^= bit
        return result

    def generate(self):
        result = {'schema': 'EncloseHorseVerified.branch-tree.v1', 'id': self.level['id'],
                  'target': self.target, 'witness': self.witness, 'lean_verified': False}
        try:
            root = self.visit(0, self.grass, 0)
            result.update(status='complete', root=root, nodes=self.nodes)
        except Incomplete:
            result.update(status='incomplete')
        except Counterexample as error:
            result.update(status='target_refuted', counterexample=error.walls, counterexample_score=error.score)
        result.update(seconds=round(time.monotonic() - self.started, 6), visits=self.visits,
                      stored_nodes=len(self.nodes), leaves=dict(self.leaf_counts),
                      flood_cache=self.flood.cache_info()._asdict())
        return result


def replay(level, certificate):
    """Independent recursive replay for generator QA; this is not a Lean proof."""
    if certificate['status'] != 'complete':
        return False
    from solve_asp import Board, evaluate
    board = Board.from_level(level)
    target = certificate['target']
    try:
        witness_score, _ = evaluate(board, certificate['witness'])
    except (ValueError, TypeError):
        return False
    if type(target) is not int or witness_score is None or witness_score != target:
        return False
    candidates = [i for i, c in enumerate(board.cells) if c == '.']
    nodes = certificate['nodes']
    if not isinstance(nodes, list) or not nodes:
        return False
    root = certificate['root']
    if type(root) is not int or not 0 <= root < len(nodes):
        return False
    for index, node in enumerate(nodes):
        if not isinstance(node, list) or not node:
            return False
        if node[0] == 'split':
            if len(node) != 4 or any(type(v) is not int for v in node[1:]):
                return False
            if any(v < 0 or v >= index for v in node[2:]):
                return False
        elif len(node) != 1 or node[0] not in ('bound', 'dead', 'budget', 'done'):
            return False
    def check(index, placed, remaining):
        node = nodes[index]
        kind = node[0]
        if kind == 'split':
            _, cell, yes, no = node
            if cell not in remaining or yes >= index or no >= index:
                return False
            rest = [v for v in remaining if v != cell]
            return check(yes, [cell] + placed, rest) and check(no, placed, rest)
        # Unbounded budget permits evaluating the all-remaining-wall component.
        unlimited = Board(board.rows, len(candidates), board.level_id)
        score_now, reached = evaluate(unlimited, placed)
        score_forced, forced = evaluate(unlimited, placed + remaining)
        if kind == 'bound':
            positive = sum(max({'C':4, 'G':11, 'S':-4}.get(board.cells[v], 1), 0) for v in reached)
            negative = sum(max(-{'C':4, 'G':11, 'S':-4}.get(board.cells[v], 1), 0) for v in forced)
            return positive - negative <= target
        if kind == 'dead':
            return len(placed) > board.budget or score_forced is None
        if kind == 'budget':
            return len(placed) >= board.budget and (score_now is None or score_now <= target)
        if kind == 'done':
            return not remaining and (score_now is None or score_now <= target)
        return False
    return check(root, [], candidates)


def write_lean(path, certificate):
    """Write one constructor tree, without trusting the external leaf labels."""
    if certificate['status'] != 'complete':
        raise ValueError('only a complete certificate can be exported to Lean')
    name = re.sub(r'[^A-Za-z0-9_]', '_', certificate['id']) + '_tree'
    with Path(path).open('w') as out:
        out.write('import EncloseHorseVerified.Certificate.BranchTree\n\n')
        out.write('open EncloseHorse.Certificate.BranchTree\n')
        out.write('set_option maxRecDepth 1000000\n\n')
        out.write(f'def {name} : Cert :=\n')
        stack = [certificate['root']]
        while stack:
            entry = stack.pop()
            if isinstance(entry, str):
                out.write(entry)
                continue
            node = certificate['nodes'][entry]
            if node[0] == 'split':
                _, pivot, yes, no = node
                out.write(f'(.split {pivot} ')
                stack.extend([')', no, ' ', yes])
            else:
                out.write('.' + node[0])
        out.write('\n')
    return name


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('levels', type=Path)
    parser.add_argument('solutions', type=Path)
    parser.add_argument('--id', action='append', dest='ids')
    parser.add_argument('--seconds', type=float, default=30)
    parser.add_argument('--max-nodes', type=int, default=1_000_000)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--lean-dir', type=Path)
    args = parser.parse_args()
    levels = json.loads(args.levels.read_text())
    solutions = {entry['id']: entry for entry in json.loads(args.solutions.read_text())}
    args.output.mkdir(parents=True, exist_ok=True)
    if args.lean_dir:
        args.lean_dir.mkdir(parents=True, exist_ok=True)
    for level in levels:
        if args.ids and level['id'] not in args.ids:
            continue
        solution = solutions[level['id']]
        generator = Generator(level, solution['walls'], solution['score'], args.seconds, args.max_nodes)
        certificate = generator.generate()
        if certificate['status'] == 'complete' and not replay(level, certificate):
            raise RuntimeError('generated certificate failed independent Python replay')
        output = args.output / (level['id'] + '.json')
        output.write_text(json.dumps(certificate, separators=(',', ':')) + '\n')
        if args.lean_dir and certificate['status'] == 'complete':
            write_lean(args.lean_dir / (level['id'].replace('-', '_') + '.lean'), certificate)
        summary = {key: value for key, value in certificate.items() if key != 'nodes'}
        summary['json_bytes'] = output.stat().st_size
        print(json.dumps(summary), flush=True)


if __name__ == '__main__':
    main()
