import EncloseHorseVerified.Solver

/-!
Small semantic regression tests checked by the Lean kernel. These are deliberately
separate from the official-level tests: each isolates a rule that a plausible but
incorrect implementation could get wrong.
-/

namespace EncloseHorse.Tests

set_option maxRecDepth 20000
set_option maxHeartbeats 2000000

private def closedHorse : Board := Board.ofRows
  ["~~~", "~H~", "~~~"] 10

/-- A wall budget is an upper bound; zero walls can be optimal. -/
example : solve closedHorse = some [] := by decide +kernel
example : score closedHorse [] = 1 := by decide +kernel
example : Optimal closedHorse [] := solve_optimal _ _ (by decide +kernel)

private def boundaryHorse : Board := Board.ofRows ["H"] 5

/-- Occupying an edge already permits escape. The horse cannot be walled over. -/
example : enclosed boundaryHorse [] = false := by decide +kernel
example : score boundaryHorse [] = 0 := by decide +kernel
example : solve boundaryHorse = none := by decide +kernel
example : ¬ legal boundaryHorse [0] := by decide +kernel
example : ¬ ∃ walls, admissible boundaryHorse walls :=
  (solve_eq_none_iff boundaryHorse).mp (by decide +kernel)

private def negativeEnclosure : Board := Board.ofRows
  ["~~~~~", "~HS..", "~~~~~"] 1

/-- The item penalty is -5 in addition to its +1 area contribution. -/
example : score negativeEnclosure [8] = -3 := by decide +kernel
example : score negativeEnclosure [9] = -2 := by decide +kernel
example : score negativeEnclosure [] = 0 := by decide +kernel
/-- A solution must enclose the horse, even when every enclosure scores below zero. -/
example : solve negativeEnclosure = some [9] := by decide +kernel
example : Optimal negativeEnclosure [9] := solve_optimal _ _ (by decide +kernel)

/-- Duplicated, special-tile, horse, and out-of-bounds walls are rejected. -/
example : ¬ legal negativeEnclosure [8, 8] := by decide +kernel
example : ¬ legal negativeEnclosure [7] := by decide +kernel
example : ¬ legal negativeEnclosure [6] := by decide +kernel
example : ¬ legal negativeEnclosure [100] := by decide +kernel
example : ¬ legal negativeEnclosure [8, 9] := by decide +kernel

private def diagonalOnly : Board := Board.ofRows
  ["~~~~~", "~H~~~", "~~.~~", "~~~.~", "~~~~."] 0

/-- Diagonal contact does not connect components, even to an edge tile. -/
example : enclosed diagonalOnly [] = true := by decide +kernel
example : score diagonalOnly [] = 1 := by decide +kernel
example : diagonalOnly.adjacent 6 12 = false := by decide +kernel
/-- Row-major indexing must not accidentally join the end of one row to the next. -/
example : diagonalOnly.adjacent 9 10 = false := by decide +kernel

private def portalEscape : Board := Board.ofRows
  ["~~~~~", "~H0~~", "~~~~~", "~~~~0"] 0

/-- Teleporting to an edge portal is an escape even through otherwise isolated water. -/
example : portalEscape.edge [] 7 19 = true := by decide +kernel
example : 19 ∈ reach portalEscape [] := by decide +kernel
example : enclosed portalEscape [] = false := by decide +kernel
example : solve portalEscape = none := by decide +kernel

private def reorderBoard : Board := Board.ofRows
  ["~~~~~", "~HS..", "~~~~~"] 2

/-- Canonical ordering is a representation choice, not a restriction on physical play. -/
example : canonicalize reorderBoard [9, 8] = [8, 9] := by decide +kernel
example : PhysicalLegal reorderBoard [9, 8] := by
  unfold PhysicalLegal
  refine ⟨by decide +kernel, ?_, by decide +kernel⟩
  intro i hi
  rcases List.mem_cons.mp hi with rfl | hi
  · decide +kernel
  · have : i = 8 := by simpa using hi
    subst i
    decide +kernel
example : score reorderBoard [9, 8] = score reorderBoard [8, 9] := by decide +kernel
example : SameWalls [9, 8] [8, 9] := by
  intro i
  simp only [List.mem_cons, List.not_mem_nil, or_false]
  exact or_comm

/-- Item and portal cells contribute area as well as their bonuses. -/
private def allItems : Board := Board.ofRows
  ["~~~~~~~", "~HCGSa~", "~~~~~a~", "~~~~~~~"] 0
example : score allItems [] = 14 := by decide +kernel
example : allItems.candidates = [] := by decide +kernel

/-- The checked parser rejects malformed and unsupported external maps. -/
example : (Board.parse [] 0).isOk = false := by decide +kernel
example : (Board.parse ["H.", "..."] 0).isOk = false := by decide +kernel
example : (Board.parse ["..."] 0).isOk = false := by decide +kernel
example : (Board.parse ["HH"] 0).isOk = false := by decide +kernel
example : (Board.parse ["HU"] 0).isOk = false := by decide +kernel
example : (Board.parse ["HK"] 0).isOk = false := by decide +kernel
example : (Board.parse ["HP"] 0).isOk = false := by decide +kernel
example : (Board.parse ["HW"] 0).isOk = false := by decide +kernel
example : (Board.parse ["~~~~~", "~Haa~", "~~~~~"] 0).isOk = true := by decide +kernel

end EncloseHorse.Tests
