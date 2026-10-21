import EncloseHorseVerified.Certificate.Encoding

/-!
Static reachability can be certified by supplied paths to every open cell.
This avoids reducing the flood-fill algorithm during large CNF linkage checks.
Every path edge and coverage equality is still checked in Lean's kernel.
-/
namespace EncloseHorse.Certificate.Clingo

/-- A valid horse with no walls reaches only open cells, even when it escapes. -/
theorem static_reach_open (b : Board) (hh : b.horse < b.size)
    (i : Nat) (hi : i ∈ reach b []) : i ∈ b.openCells [] := by
  have hp := (mem_reach_iff b [] i).mp hi
  induction hp with
  | refl =>
    apply List.mem_filter.mpr
    have ht := horse_tile_of_lt b hh
    have ht' : (Tile.horse != Tile.water) = true := by decide
    exact ⟨List.mem_range.mpr hh, by simp [Board.openCell, hh, ht, ht']⟩
  | @step u v hp he ih => exact b.edge_target_openCells [] u v he

/-- Supplied checked paths to every open cell certify the static reach mask. -/
theorem static_contains_eq (b : Board) (hh : b.horse < b.size)
    (cells : List Nat) (hc : b.openCells [] = cells)
    (hp : ∀ i ∈ cells, Reachability.Path (b.edge []) b.horse i) :
    (reach b []).contains = cells.contains := by
  funext i
  apply Bool.eq_iff_iff.mpr
  simp only [List.contains_iff_mem]
  constructor
  · intro hi
    rw [← hc]
    exact static_reach_open b hh i hi
  · intro hi
    exact (mem_reach_iff b [] i).mpr (hp i hi)

/-- One cell's plain clauses with an explicitly certified static reach mask. -/
def cellClauses (b : Board) (staticCells : List Nat) (i : Nat) : List (List Totalizer.Lit) :=
  (if b.tileAt i != .grass then [[(wallVar i, false)]] else []) ++
  (if !staticCells.contains i then [[(insideVar i, false)]] else []) ++
  (if b.onEdge i then [[(insideVar i, false)]] else []) ++
  [[(wallVar i, false), (insideVar i, false)]] ++
  (b.cells.filter (b.edge [] i)).map (fun j =>
    [(insideVar i, false), (wallVar j, true), (insideVar j, true)])

/-- Factoring the mask permits independently checked small clause-generation blocks. -/
theorem baseClauses_from_static (b : Board) (staticCells : List Nat)
    (h : (reach b []).contains = staticCells.contains) :
    baseClauses b = b.cells.flatMap (cellClauses b staticCells) ++
      [[(insideVar b.horse, true)]] := by
  unfold baseClauses cellClauses
  rw [h]

end EncloseHorse.Certificate.Clingo
