import Std
import EncloseHorseVerified.Reachability

namespace EncloseHorse

/-- The standard game's terrain and scoring items. Matching portal labels are linked. -/
inductive Tile where
  | grass | water | horse | cherry | apple | bee | portal (label : Nat)
  deriving BEq, DecidableEq, Repr, Inhabited

def Tile.ofChar (c : Char) : Tile :=
  if c == '~' || c == '#' then .water
  else if c == 'H' then .horse
  else if c == 'C' then .cherry
  else if c == 'G' then .apple
  else if c == 'S' then .bee
  else if c.isDigit then .portal (c.toNat - '0'.toNat)
  else if 'a' ≤ c && c ≤ 'z' then .portal (10 + c.toNat - 'a'.toNat)
  else .grass

def Tile.points : Tile → Int
  | .water => 0
  | .cherry => 4
  | .apple => 11
  | .bee => -4
  | _ => 1

structure Board where
  width : Nat
  height : Nat
  tiles : List Tile
  budget : Nat
  deriving Repr, Inhabited

/-- A placement lists tile indices in the board's canonical order. -/
abbrev Placement := List Nat

namespace Board

def size (b : Board) : Nat := b.width * b.height
def cells (b : Board) : List Nat := List.range b.size
def tileAt (b : Board) (i : Nat) : Tile := b.tiles[i]?.getD .water
def candidates (b : Board) : List Nat := b.cells.filter (fun i => b.tileAt i == .grass)
def horse (b : Board) : Nat := (b.cells.find? (fun i => b.tileAt i == .horse)).getD b.size

/-- Parse a literal rectangular map. Use `parse` for untrusted input. -/
def ofRows (rows : List String) (budget : Nat) : Board :=
  { width := rows.head?.getD "" |>.length
    height := rows.length
    tiles := rows.flatMap (fun r => r.toList.map Tile.ofChar)
    budget }

/-- Check a map before constructing it; only the documented ASCII notation is accepted. -/
def parse (rows : List String) (budget : Nat) : Except String Board := do
  let width := (rows.head?.getD "").length
  if width == 0 || rows.isEmpty then throw "board must be nonempty"
  if !rows.all (fun r => r.length == width) then throw "rows must have equal width"
  if !rows.all (fun r => r.toList.all (fun c =>
      c == '.' || c == ' ' || c == '~' || c == '#' || c == 'H' ||
      c == 'C' || c == 'G' || c == 'S' || c.isDigit || ('a' ≤ c && c ≤ 'z'))) then
    throw "unrecognized map character"
  let b := ofRows rows budget
  if (b.tiles.filter (· == .horse)).length != 1 then throw "expected exactly one horse"
  return b

def onEdge (b : Board) (i : Nat) : Bool :=
  i % b.width == 0 || i % b.width + 1 == b.width ||
  i / b.width == 0 || i / b.width + 1 == b.height

def openCell (b : Board) (walls : Placement) (i : Nat) : Bool :=
  decide (i < b.size) && b.tileAt i != .water && !walls.contains i

/-- Water and wall cells are removed before flood fill, reducing its finite universe. -/
def openCells (b : Board) (walls : Placement) : List Nat :=
  b.cells.filter (b.openCell walls)

def adjacent (b : Board) (i j : Nat) : Bool :=
  ((i / b.width == j / b.width) &&
    (i % b.width + 1 == j % b.width || j % b.width + 1 == i % b.width)) ||
  ((i % b.width == j % b.width) &&
    (i / b.width + 1 == j / b.width || j / b.width + 1 == i / b.width))

def portalLinked (b : Board) (i j : Nat) : Bool :=
  match b.tileAt i, b.tileAt j with
  | .portal x, .portal y => x == y
  | _, _ => false

/-- A legal horse move, including teleportation, after walls have been placed. -/
def edge (b : Board) (walls : Placement) (i j : Nat) : Bool :=
  b.openCell walls i && b.openCell walls j && (b.adjacent i j || b.portalLinked i j)

end Board

/-- Legality uses canonical order, preventing duplicate walls and walls on special tiles. -/
def legal (b : Board) (walls : Placement) : Prop :=
  walls.Sublist b.candidates ∧ walls.length ≤ b.budget

instance (b : Board) (walls : Placement) : Decidable (legal b walls) :=
  inferInstanceAs (Decidable (_ ∧ _))

/-- The horse's complete reachable component. -/
def reach (b : Board) (walls : Placement) : List Nat :=
  Reachability.closure (b.openCells walls) (b.edge walls) b.horse

theorem Board.edge_target (b : Board) (walls : Placement) (i j : Nat)
    (h : b.edge walls i j = true) : j ∈ b.cells := by
  simp only [Board.edge, Bool.and_eq_true] at h
  have hj := h.1.2
  simp only [Board.openCell, Bool.and_eq_true, decide_eq_true_eq] at hj
  exact List.mem_range.mpr hj.1.1

theorem Board.edge_target_openCells (b : Board) (walls : Placement) (i j : Nat)
    (h : b.edge walls i j = true) : j ∈ b.openCells walls := by
  apply List.mem_filter.mpr
  refine ⟨b.edge_target walls i j h, ?_⟩
  simp only [Board.edge, Bool.and_eq_true] at h
  exact h.1.2

/-- The executable flood fill agrees with an unbounded mathematical path relation. -/
theorem mem_reach_iff (b : Board) (walls : Placement) (v : Nat) :
    v ∈ reach b walls ↔ Reachability.Path (b.edge walls) b.horse v :=
  Reachability.mem_closure_iff (b.openCells walls) (b.edge walls) b.horse
    (b.edge_target_openCells walls) v

/-- Each reachable tile contributes to the score exactly once. -/
theorem reach_nodup (b : Board) (walls : Placement) : (reach b walls).Nodup :=
  Reachability.closure_nodup (b.openCells walls) (b.edge walls) b.horse
    (List.Pairwise.filter _ List.nodup_range)

def enclosed (b : Board) (walls : Placement) : Bool :=
  decide (b.horse < b.size) && !(reach b walls).any b.onEdge

/-- An enclosure is exactly a valid horse start with no path to a boundary tile. -/
theorem enclosed_iff (b : Board) (walls : Placement) :
    enclosed b walls = true ↔ b.horse < b.size ∧
      ∀ v, Reachability.Path (b.edge walls) b.horse v → b.onEdge v = false := by
  simp only [enclosed, Bool.and_eq_true, decide_eq_true_eq, Bool.not_eq_true',
    List.any_eq_false, mem_reach_iff, Bool.not_eq_true]

/-- Escaped placements score zero. An enclosure counts every reachable tile and item. -/
def score (b : Board) (walls : Placement) : Int :=
  if enclosed b walls then ((reach b walls).map (fun i => (b.tileAt i).points)).sum else 0

/-- Solvers search actual enclosures. This matters when all enclosure scores are negative. -/
def admissible (b : Board) (walls : Placement) : Prop :=
  legal b walls ∧ enclosed b walls = true

instance (b : Board) (walls : Placement) : Decidable (admissible b walls) :=
  inferInstanceAs (Decidable (_ ∧ _))

/-- Two lists denote the same physical wall placement exactly when membership agrees. -/
def SameWalls (a b : Placement) : Prop := ∀ i, i ∈ a ↔ i ∈ b

/-- Convert an unordered physical placement into the canonical representation. -/
def canonicalize (b : Board) (walls : Placement) : Placement :=
  b.candidates.filter (fun i => walls.contains i)

theorem canonicalize_sublist (b : Board) (walls : Placement) :
    (canonicalize b walls).Sublist b.candidates := List.filter_sublist

theorem canonicalize_sameWalls (b : Board) (walls : Placement)
    (h : ∀ i ∈ walls, i ∈ b.candidates) : SameWalls (canonicalize b walls) walls := by
  intro i
  simp only [canonicalize, List.mem_filter, List.contains_iff_mem]
  exact ⟨And.right, fun hi => ⟨h i hi, hi⟩⟩

theorem Board.candidates_nodup (b : Board) : b.candidates.Nodup :=
  List.Pairwise.filter _ List.nodup_range

/-- Canonicalization preserves every physical placement, regardless of input order. -/
theorem canonicalize_perm (b : Board) (walls : Placement) (hn : walls.Nodup)
    (h : ∀ i ∈ walls, i ∈ b.candidates) : (canonicalize b walls).Perm walls := by
  apply List.perm_iff_count.mpr
  intro i
  have hc : (canonicalize b walls).Nodup :=
    List.Pairwise.filter _ (b.candidates_nodup)
  rw [hc.count, hn.count]
  simp only [canonicalize_sameWalls b walls h i]

theorem canonicalize_legal (b : Board) (walls : Placement) (hn : walls.Nodup)
    (h : ∀ i ∈ walls, i ∈ b.candidates) (hb : walls.length ≤ b.budget) :
    legal b (canonicalize b walls) := by
  exact ⟨canonicalize_sublist b walls,
    (canonicalize_perm b walls hn h).length_eq ▸ hb⟩

theorem openCell_sameWalls (b : Board) {a c : Placement} (h : SameWalls a c) :
    b.openCell a = b.openCell c := by
  funext i
  have hc : a.contains i = c.contains i := by
    simp only [List.contains_eq_mem, h i]
  simp only [Board.openCell, hc]

theorem edge_sameWalls (b : Board) {a c : Placement} (h : SameWalls a c) :
    b.edge a = b.edge c := by
  funext i j
  simp only [Board.edge, openCell_sameWalls b h]

theorem openCells_sameWalls (b : Board) {a c : Placement} (h : SameWalls a c) :
    b.openCells a = b.openCells c := by
  simp only [Board.openCells, openCell_sameWalls b h]

theorem reach_sameWalls (b : Board) {a c : Placement} (h : SameWalls a c) :
    reach b a = reach b c := by
  simp only [reach, edge_sameWalls b h, openCells_sameWalls b h]

theorem enclosed_sameWalls (b : Board) {a c : Placement} (h : SameWalls a c) :
    enclosed b a = enclosed b c := by
  simp only [enclosed, reach_sameWalls b h]

theorem score_sameWalls (b : Board) {a c : Placement} (h : SameWalls a c) :
    score b a = score b c := by
  simp only [score, enclosed_sameWalls b h, reach_sameWalls b h]

end EncloseHorse
