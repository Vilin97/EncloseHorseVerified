"""Independent exhaustive bitset solver for the unmodified official tutorial levels."""
import itertools, json, time, argparse, re
from pathlib import Path

def solve(level):
 rows=level['map'].splitlines(); h=len(rows); w=len(rows[0]); cells=''.join(rows)
 candidates=[i for i,t in enumerate(cells) if t=='.']
 base=sum(1<<i for i,t in enumerate(cells) if t not in '~W')
 edge=sum(1<<i for i in range(w*h) if i%w in [0,w-1] or i//w in [0,h-1])
 left=sum(1<<i for i in range(w*h) if i%w!=0)
 right=sum(1<<i for i in range(w*h) if i%w!=w-1)
 weights={c:sum(1<<i for i,t in enumerate(cells) if t==c) for c in 'CGS'}
 portals={t:sum(1<<i for i,c in enumerate(cells) if c==t) for t in set(cells) if t.isdigit() or t.islower()}
 start=1<<cells.index('H'); best=None; bestwalls=[]; count=0; b=len(candidates)
 before=time.monotonic()
 for k in range(level['budget']+1):
  for walls in itertools.combinations(candidates,k):
   wallmask=sum(1<<i for i in walls); avail=base^wallmask; reach=start
   while True:
    nxt=reach|((reach&left)>>1)|((reach&right)<<1)|(reach>>w)|(reach<<w)
    for mask in portals.values():
     if reach&mask:nxt|=mask
    nxt&=avail
    if nxt==reach:break
    reach=nxt
   score=None if reach&edge else reach.bit_count()+3*(reach&weights['C']).bit_count()+10*(reach&weights['G']).bit_count()-5*(reach&weights['S']).bit_count()
   if score is not None and (best is None or score>best):best=score;bestwalls=list(walls)
   count+=1
 return dict(**level, score=best,walls=bestwalls,placements=count,seconds=round(time.monotonic()-before,3))

def evaluate(level, walls):
 """Set/queue BFS to check a witness, independently of the bitset search."""
 rows = level['map'].splitlines()
 width, height = len(rows[0]), len(rows)
 cells = ''.join(rows)
 assert len(walls) == len(set(walls)) and len(walls) <= level['budget']
 assert all(0 <= i < len(cells) and cells[i] == '.' for i in walls)
 blocked = set(walls)
 seen = {cells.index('H')}
 queue = list(seen)
 for i in queue:
  x, y = i % width, i // width
  neighbors = []
  for dx, dy in ((-1,0),(1,0),(0,-1),(0,1)):
   nx, ny = x + dx, y + dy
   if 0 <= nx < width and 0 <= ny < height:
    neighbors.append(ny * width + nx)
  if cells[i].isdigit() or cells[i].islower():
   neighbors.extend(j for j, c in enumerate(cells) if c == cells[i])
  for j in neighbors:
   if cells[j] not in '~W' and j not in blocked and j not in seen:
    seen.add(j)
    queue.append(j)
 escaped = any(i % width in (0,width-1) or i // width in (0,height-1) for i in seen)
 assert not escaped, 'reported witness does not enclose the horse'
 score = 0 if escaped else sum({'C': 4, 'G': 11, 'S': -4}.get(cells[i], 1) for i in seen)
 return score

if __name__ == '__main__':
 parser = argparse.ArgumentParser(description=__doc__)
 parser.add_argument('--lean-json', type=Path, help='Optional Lean-exported array with id, score, and walls fields to check independently')
 args = parser.parse_args()
 root = Path(__file__).resolve().parents[1]
 levels = json.loads((root / 'data/tutorial-levels.json').read_text())
 expected = {entry['id']: entry for entry in json.loads((root / 'data/tutorial-solutions.json').read_text())}
 # Prevent fixture drift between the source snapshot and Lean definitions.
 declarations = re.findall(r'def tutorial(\d+) : Board := Board.ofRows\s+(\[.*?\]) (\d+)', (root / 'EncloseHorseVerified/Levels.lean').read_text(), re.S)
 assert len(declarations) == len(levels)
 for index, rows, budget in declarations:
  fixture = levels[int(index) - 1]
  assert '\n'.join(json.loads(rows)) == fixture['map']
  assert int(budget) == fixture['budget']
 independent = {}
 for level in levels:
  result = solve(level)
  independent[result['id']] = result
  assert result['score'] == expected[result['id']]['score'], (result, expected[result['id']])
  assert result['placements'] == expected[result['id']]['placements']
  assert evaluate(level, expected[result['id']]['walls']) == result['score']
  print(f"{result['id']}: optimum {result['score']}, {result['placements']:,} placements ({result['seconds']}s)", flush=True)
 if args.lean_json:
  for entry in json.loads(args.lean_json.read_text()):
   reference = independent[entry['id']]
   assert int(entry['score']) == reference['score'], entry
   if 'walls' in entry:
    assert evaluate(reference, entry['walls']) == reference['score'], entry
  print('Lean-reported scores agree with independent exhaustive search.')
 print('All five unmodified official tutorial fixtures verified.')
