import EncloseHorseVerified.Bounds

/-!
# Cached game graph

The reference game remains unchanged. This cache builds the static graph once
and proves that all cached evaluators return exactly the reference results.
No compiled-code override or trusted reflection is used.
-/
namespace EncloseHorse

structure GraphCache (b : Board) where
  tiles : Array Tile
  tiles_eq : tiles = b.tiles.toArray
  graph : Vector (Vector Bool b.size) b.size
  graph_eq : ∀ (i j : Fin b.size), graph[i.val][j.val] = b.edge [] i.val j.val
  horse : Nat
  horse_eq : horse = b.horse
  candidates : List Nat
  candidates_eq : candidates = b.candidates

namespace GraphCache

/-- Construct the tile array and static adjacency matrix once per solve. -/
def ofBoard (b : Board) : GraphCache b :=
  let matrix := Vector.ofFn (fun i : Fin b.size =>
    Vector.ofFn (fun j : Fin b.size => b.edge [] i.val j.val))
  { tiles := b.tiles.toArray
    tiles_eq := rfl
    graph := matrix
    graph_eq := by intro i j; simp [matrix]
    horse := b.horse
    horse_eq := rfl
    candidates := b.candidates
    candidates_eq := rfl }

def tileAt {b : Board} (c : GraphCache b) (i : Nat) : Tile :=
  c.tiles[i]?.getD .water

theorem tileAt_eq {b : Board} (c : GraphCache b) (i : Nat) :
    c.tileAt i = b.tileAt i := by
  simp only [tileAt, c.tiles_eq, List.getElem?_toArray, Board.tileAt]

private theorem edge_factor (b : Board) (walls : Placement) (i j : Nat) :
    b.edge walls i j = b.edge [] i j && !walls.contains i && !walls.contains j := by
  simp [Board.edge, Board.openCell, Bool.and_assoc, Bool.and_comm, Bool.and_left_comm]

/-- Constant-time static graph lookup, followed by the dynamic wall checks. -/
def edge {b : Board} (c : GraphCache b) (walls : Placement) (i j : Nat) : Bool :=
  if hi : i < b.size then
    if hj : j < b.size then
      c.graph[i][j] && !walls.contains i && !walls.contains j
    else false
  else false

theorem edge_eq {b : Board} (c : GraphCache b) (walls : Placement) (i j : Nat) :
    c.edge walls i j = b.edge walls i j := by
  by_cases hi : i < b.size
  · by_cases hj : j < b.size
    · have hg : c.graph[i][j] = b.edge [] i j := c.graph_eq ⟨i, hi⟩ ⟨j, hj⟩
      simp only [edge, dif_pos hi, dif_pos hj, hg]
      exact (edge_factor b walls i j).symm
    · simp [edge, hi, hj, Board.edge, Board.openCell]
  · simp [edge, hi, Board.edge, Board.openCell]

def openCell {b : Board} (c : GraphCache b) (walls : Placement) (i : Nat) : Bool :=
  decide (i < b.size) && c.tileAt i != .water && !walls.contains i

theorem openCell_eq {b : Board} (c : GraphCache b) (walls : Placement) (i : Nat) :
    c.openCell walls i = b.openCell walls i := by
  simp only [openCell, Board.openCell, c.tileAt_eq]

def openCells {b : Board} (c : GraphCache b) (walls : Placement) : List Nat :=
  b.cells.filter (c.openCell walls)

theorem openCells_eq {b : Board} (c : GraphCache b) (walls : Placement) :
    c.openCells walls = b.openCells walls := by
  have hc : c.openCell walls = b.openCell walls := funext (c.openCell_eq walls)
  simp only [openCells, Board.openCells, hc]

def reach {b : Board} (c : GraphCache b) (walls : Placement) : List Nat :=
  Reachability.closure (c.openCells walls) (c.edge walls) c.horse

theorem reach_eq {b : Board} (c : GraphCache b) (walls : Placement) :
    c.reach walls = EncloseHorse.reach b walls := by
  have he : c.edge walls = b.edge walls := funext fun i => funext (c.edge_eq walls i)
  simp only [reach, EncloseHorse.reach, c.openCells_eq, c.horse_eq, he]

def enclosed {b : Board} (c : GraphCache b) (walls : Placement) : Bool :=
  decide (c.horse < b.size) && !(c.reach walls).any b.onEdge

theorem enclosed_eq {b : Board} (c : GraphCache b) (walls : Placement) :
    c.enclosed walls = EncloseHorse.enclosed b walls := by
  simp only [enclosed, EncloseHorse.enclosed, c.horse_eq, c.reach_eq]

def score {b : Board} (c : GraphCache b) (walls : Placement) : Int :=
  if c.enclosed walls then ((c.reach walls).map (fun i => (c.tileAt i).points)).sum else 0

theorem score_eq {b : Board} (c : GraphCache b) (walls : Placement) :
    c.score walls = EncloseHorse.score b walls := by
  simp only [score, EncloseHorse.score, c.enclosed_eq, c.reach_eq, c.tileAt_eq]

def legal {b : Board} (c : GraphCache b) (walls : Placement) : Bool :=
  decide (walls.Sublist c.candidates ∧ walls.length ≤ b.budget)

theorem legal_eq {b : Board} (c : GraphCache b) (walls : Placement) :
    c.legal walls = decide (EncloseHorse.legal b walls) := by
  simp only [legal, EncloseHorse.legal, c.candidates_eq]

def admissible {b : Board} (c : GraphCache b) (walls : Placement) : Bool :=
  c.legal walls && c.enclosed walls

theorem admissible_eq {b : Board} (c : GraphCache b) (walls : Placement) :
    c.admissible walls = decide (EncloseHorse.admissible b walls) := by
  simp [admissible, c.legal_eq, c.enclosed_eq, EncloseHorse.admissible]

def positiveValue {b : Board} (c : GraphCache b) (cells : List Nat) : Int :=
  (cells.map (fun i => max (c.tileAt i).points 0)).sum

def negativeCost {b : Board} (c : GraphCache b) (cells : List Nat) : Int :=
  (cells.map (fun i => max (-(c.tileAt i).points) 0)).sum

def completionBound {b : Board} (c : GraphCache b)
    (mandatory allowed : Placement) : Int :=
  c.positiveValue (c.reach mandatory) - c.negativeCost (c.reach allowed)

theorem completionBound_eq {b : Board} (c : GraphCache b) (mandatory allowed : Placement) :
    c.completionBound mandatory allowed = EncloseHorse.completionBound b mandatory allowed := by
  simp only [completionBound, positiveValue, negativeCost, EncloseHorse.completionBound,
    EncloseHorse.positiveValue, EncloseHorse.negativeCost, c.reach_eq, c.tileAt_eq]


def canonicalize {b : Board} (c : GraphCache b) (walls : Placement) : Placement :=
  c.candidates.filter (fun i => walls.contains i)

theorem canonicalize_eq {b : Board} (c : GraphCache b) (walls : Placement) :
    c.canonicalize walls = EncloseHorse.canonicalize b walls := by
  simp only [canonicalize, EncloseHorse.canonicalize, c.candidates_eq]

def upperBound {b : Board} (c : GraphCache b) (mandatory : Placement) : Int :=
  c.positiveValue (c.reach mandatory)

theorem upperBound_eq {b : Board} (c : GraphCache b) (mandatory : Placement) :
    c.upperBound mandatory = EncloseHorse.upperBound b mandatory := by
  simp only [upperBound, positiveValue, EncloseHorse.upperBound,
    EncloseHorse.positiveValue, c.reach_eq, c.tileAt_eq]

end GraphCache
end EncloseHorse
