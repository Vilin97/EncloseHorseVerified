import EncloseHorseVerified.Certificate.Selection
import Lean

open Lean Elab Command
open EncloseHorse.Certificate EncloseHorse.Certificate.Totalizer
open EncloseHorse.Certificate.Selection

namespace SelectionTests

def full : CNF := [[(0, true)], [(1, false)]]

/-- An invalid index drops a clause; it cannot manufacture the empty clause. -/
example : selectClauses full [999] = [] := by decide +kernel
example : checkSelection full [999] [[]] = false := by decide +kernel
example : checkSelection full [0, 999, 1] full = true := by decide +kernel

/-- Reordering and duplicate indices preserve exactly the requested real clauses. -/
example : selectClauses full [1, 0, 1] =
    [[(1, false)], [(0, true)], [(1, false)]] := by decide +kernel

example : selectClausesArray full [1, 999, 0] = selectClauses full [1, 999, 0] :=
  selectClausesArray_eq _ _

example : Satisfies (fun v => v == 0) (selectClauses full [1, 999, 0, 0]) := by
  apply selectClauses_sat
  intro clause hc
  simp only [full, List.mem_cons, List.not_mem_nil, or_false] at hc
  rcases hc with rfl | rfl <;> decide +kernel

elab "#audit_selection" : command => do
  for name in [``selectClauses_sat, ``checkSelection_sound, ``checkSelection_sat,
      ``unsat_of_checkSelection] do
    let axioms ← liftCoreM <| collectAxioms name
    for ax in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains ax do
        throwError "{name} depends on unexpected axiom {ax}"
    logInfo m!"{name}: {axioms}"

#audit_selection

end SelectionTests
