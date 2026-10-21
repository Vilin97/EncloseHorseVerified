import EncloseHorseVerified.Solver
import EncloseHorseVerified.Bounds
import EncloseHorseVerified.Certificate.Totalizer
import Std.Tactic.BVDecide.LRAT.Checker

/-!
The external optimizer supplies a placement and an UNSAT certificate for a
sound upper-bound relaxation. No assertion made by Clingo is a proof premise.
The relaxation deliberately permits extra disconnected inside components:
UNSAT therefore rules out every genuinely better horse enclosure as well.
-/
namespace EncloseHorse.Certificate.Clingo

open Totalizer

private theorem tile_beq_true (x y : Tile) : (x == y) = true ↔ x = y := by
  change instBEqTile.beq x y = true ↔ x = y
  cases x <;> cases y <;> simp [instBEqTile.beq]

def wallVar (i : Nat) : Nat := 2 * i
def insideVar (i : Nat) : Nat := 2 * i + 1

def baseAssignment (b : Board) (walls : Placement) (v : Nat) : Bool :=
  if v % 2 = 0 then walls.contains (v / 2)
  else (reach b walls).contains (v / 2)

@[simp] theorem base_wall (b : Board) (walls : Placement) (i : Nat) :
    baseAssignment b walls (wallVar i) = walls.contains i := by
  have hd : 2 * i / 2 = i := by omega
  have hm : 2 * i % 2 = 0 := by omega
  simp [baseAssignment, wallVar, hd, hm]

@[simp] theorem base_inside (b : Board) (walls : Placement) (i : Nat) :
    baseAssignment b walls (insideVar i) = (reach b walls).contains i := by
  have hd : (2 * i + 1) / 2 = i := by omega
  have hm : (2 * i + 1) % 2 = 1 := by omega
  simp [baseAssignment, insideVar, hd, hm]

theorem horse_tile_of_lt (b : Board) (h : b.horse < b.size) :
    b.tileAt b.horse = .horse := by
  unfold Board.horse at *
  cases hf : b.cells.find? (fun i => b.tileAt i == .horse) with
  | none => simp [hf] at h
  | some i =>
    have hp := List.find?_some hf
    have ht := (tile_beq_true (b.tileAt i) .horse).mp hp
    simpa [hf] using ht

theorem legal_wall_grass (b : Board) (walls : Placement) (hw : legal b walls)
    (i : Nat) (hi : i ∈ walls) : b.tileAt i = .grass := by
  have hc := hw.1.subset hi
  exact (tile_beq_true (b.tileAt i) .grass).mp (List.mem_filter.mp hc).2

theorem horse_not_wall (b : Board) (walls : Placement) (ha : admissible b walls) :
    b.horse ∉ walls := by
  intro hw
  have ht := horse_tile_of_lt b ((enclosed_iff b walls).mp ha.2).1
  have hg := legal_wall_grass b walls ha.1 b.horse hw
  rw [ht] at hg
  contradiction

theorem reach_open (b : Board) (walls : Placement) (ha : admissible b walls)
    (i : Nat) (hi : i ∈ reach b walls) : b.openCell walls i = true := by
  have hp := (mem_reach_iff b walls i).mp hi
  induction hp with
  | refl =>
    have hs := ((enclosed_iff b walls).mp ha.2).1
    have ht := horse_tile_of_lt b hs
    have hn := horse_not_wall b walls ha
    have ht' : (Tile.horse != Tile.water) = true := by decide
    simp [Board.openCell, hs, ht, hn, ht']
  | @step u v hp he ih =>
    simp only [Board.edge, Bool.and_eq_true] at he
    exact he.1.2

theorem reach_in_cells (b : Board) (walls : Placement) (ha : admissible b walls)
    (i : Nat) (hi : i ∈ reach b walls) : i ∈ b.cells := by
  have ho := reach_open b walls ha i hi
  simp only [Board.openCell, Bool.and_eq_true, decide_eq_true_eq] at ho
  exact List.mem_range.mpr ho.1.1

/-- Exactly the plain clauses emitted by `scripts/solve_certificate.py`.
    Counter clauses follow these, first the wall budget and then the score. -/
def baseClauses (b : Board) : List (List Lit) :=
  b.cells.flatMap (fun i =>
    (if b.tileAt i != .grass then [[(wallVar i, false)]] else []) ++
    (if !(reach b []).contains i then [[(insideVar i, false)]] else []) ++
    (if b.onEdge i then [[(insideVar i, false)]] else []) ++
    [[(wallVar i, false), (insideVar i, false)]] ++
    (b.cells.filter (b.edge [] i)).map (fun j =>
      [(insideVar i, false), (wallVar j, true), (insideVar j, true)])) ++
    [[(insideVar b.horse, true)]]

/-- A statically possible edge remains possible when neither endpoint is walled. -/
theorem edge_of_unblocked (b : Board) (walls : Placement) (i j : Nat)
    (hi : i ∉ walls) (hj : j ∉ walls) :
    b.edge walls i j = b.edge [] i j := by
  simp [Board.edge, Board.openCell, List.contains_eq_mem, hi, hj]

/-- Every reachable cell is unwalled, including the reflexive horse start. -/
theorem reach_not_wall (b : Board) (walls : Placement) (ha : admissible b walls)
    (i : Nat) (hi : i ∈ reach b walls) : i ∉ walls := by
  have ho := reach_open b walls ha i hi
  simp only [Board.openCell, Bool.and_eq_true] at ho
  simpa only [Bool.not_eq_true', List.contains_eq_mem, decide_eq_false_iff_not] using ho.2

/-- Closure under the static graph is a necessary condition of a real enclosure. -/
theorem reach_static_step (b : Board) (walls : Placement) (ha : admissible b walls)
    (i j : Nat) (hi : i ∈ reach b walls) (he : b.edge [] i j = true)
    (hj : j ∉ walls) : j ∈ reach b walls := by
  apply (mem_reach_iff b walls j).mpr
  apply Reachability.Path.step ((mem_reach_iff b walls i).mp hi)
  rw [edge_of_unblocked b walls i j (reach_not_wall b walls ha i hi) hj]
  exact he

/-- Every real enclosure extends to a model of all plain relaxation clauses. -/
theorem baseClauses_sat_of_agrees (b : Board) (walls : Placement)
    (ha : admissible b walls) (model : Nat → Bool)
    (h : ∀ v < 2 * b.size, model v = baseAssignment b walls v) :
    Satisfies model (baseClauses b) := by
  have hw (i : Nat) (hi : i ∈ b.cells) : model (wallVar i) = walls.contains i := by
    have hb : i < b.size := List.mem_range.mp hi
    exact (h (wallVar i) (by unfold wallVar; omega)).trans (base_wall b walls i)
  have hr (i : Nat) (hi : i ∈ b.cells) :
      model (insideVar i) = (reach b walls).contains i := by
    have hb : i < b.size := List.mem_range.mp hi
    exact (h (insideVar i) (by unfold insideVar; omega)).trans (base_inside b walls i)
  intro clause hc
  simp only [baseClauses, List.mem_append, List.mem_flatMap, List.mem_singleton] at hc
  rcases hc with ⟨i, hi, hc⟩ | rfl
  · rcases hc with (((hc | hc) | hc) | hc) | hc
    · split at hc
      · rename_i hg
        obtain rfl := List.mem_singleton.mp hc
        have hn : i ∉ walls := by
          intro hiw
          have ht := legal_wall_grass b walls ha.1 i hiw
          have hg' : ((.grass : Tile) != .grass) = false := by decide
          simp [ht, hg'] at hg
        simp [evalClause, evalLit, hw i hi, List.contains_eq_mem, hn]
      · simp at hc
    · split at hc
      · rename_i hu
        obtain rfl := List.mem_singleton.mp hc
        have hn : i ∉ reach b walls := by
          intro hir
          have hsub : reach b walls ⊆ reach b [] := reach_antitone b (by simp)
          have hit := hsub hir
          simp [hit] at hu
        simp [evalClause, evalLit, hr i hi, List.contains_eq_mem, hn]
      · simp at hc
    · split at hc
      · rename_i he
        obtain rfl := List.mem_singleton.mp hc
        have hn : i ∉ reach b walls := by
          intro hir
          have he' := ((enclosed_iff b walls).mp ha.2).2 i ((mem_reach_iff b walls i).mp hir)
          simp_all
        simp [evalClause, evalLit, hr i hi, List.contains_eq_mem, hn]
      · simp at hc
    · subst clause
      by_cases hir : i ∈ reach b walls
      · have hn := reach_not_wall b walls ha i hir
        simp [evalClause, evalLit, hw i hi, List.contains_eq_mem, hn]
      · simp [evalClause, evalLit, hr i hi, List.contains_eq_mem, hir]
    · obtain ⟨j, hj, rfl⟩ := List.mem_map.mp hc
      have hjcell := (List.mem_filter.mp hj).1
      have he := (List.mem_filter.mp hj).2
      by_cases hir : i ∈ reach b walls
      · by_cases hjw : j ∈ walls
        · simp [evalClause, evalLit, hw j hjcell, List.contains_eq_mem, hjw]
        · have hjr := reach_static_step b walls ha i j hir he hjw
          simp [evalClause, evalLit, hr j hjcell, List.contains_eq_mem, hjr]
      · simp [evalClause, evalLit, hr i hi, List.contains_eq_mem, hir]
  · have hh := ((enclosed_iff b walls).mp ha.2).1
    have hm : b.horse ∈ b.cells := List.mem_range.mpr hh
    have hre : b.horse ∈ reach b walls := (mem_reach_iff b walls b.horse).mpr .refl
    simp [evalClause, evalLit, hr b.horse hm, List.contains_eq_mem, hre]

/-- The actual wall/reachability assignment satisfies the base encoding. -/
theorem baseClauses_sat (b : Board) (walls : Placement) (ha : admissible b walls) :
    Satisfies (baseAssignment b walls) (baseClauses b) :=
  baseClauses_sat_of_agrees b walls ha _ (by intros; rfl)

end EncloseHorse.Certificate.Clingo
