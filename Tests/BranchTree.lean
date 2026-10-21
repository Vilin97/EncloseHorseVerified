import EncloseHorseVerified.Certificate.TutorialTrees
import EncloseHorseVerified.Levels
import Lean

/-!
Three actual official tutorial certificates, checked by the Lean kernel. No external
optimization status is an assumption. Mutation checks reject invalid pivots,
invalid incumbents, and an unjustified root bound.
-/
open EncloseHorse EncloseHorse.Certificate.BranchTree
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace BranchTreeTests

theorem tutorial1_optimal : Optimal Levels.tutorial1 Levels.fixture1.witness :=
  check_optimal _ _ TutorialTrees.tutorial1 (by decide +kernel)

theorem tutorial2_optimal : Optimal Levels.tutorial2 Levels.fixture2.witness :=
  check_optimal _ _ TutorialTrees.tutorial2 (by decide +kernel)

theorem tutorial5_optimal : Optimal Levels.tutorial5 Levels.fixture5.witness :=
  check_optimal _ _ TutorialTrees.tutorial5 (by decide +kernel)

example : check Levels.tutorial1 [0] TutorialTrees.tutorial1 = false := by decide +kernel
example : check Levels.tutorial1 [23] .bound = false := by decide +kernel
example : check Levels.tutorial1 [23] (.split 999 .bound .bound) = false := by decide +kernel
example : check Levels.tutorial1 [23] .budget = false := by decide +kernel
example : check Levels.tutorial1 [23] .done = false := by decide +kernel

/-- Signed optima and both terminal rules are checked without treating escape as zero. -/
def negative : Board := Board.ofRows ["~~~~", "~HS~", "~~~~"] 0

example : Optimal negative [] := check_optimal _ _ .budget (by decide +kernel)
example : Optimal negative [] := check_optimal _ _ .done (by decide +kernel)
example : score negative [] = -3 := by decide +kernel

open Lean Elab Command

/-- Make unexpected trust dependencies a failing check, rather than a log warning. -/
elab "#audit_branch_tree" : command => do
  for name in [``checkAt_sound, ``check_optimal, ``check_optimal_physical,
      ``tutorial1_optimal, ``tutorial2_optimal, ``tutorial5_optimal] do
    let axioms ← liftCoreM <| collectAxioms name
    for ax in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains ax do
        throwError "{name} depends on unexpected axiom {ax}"
    logInfo m!"{name}: {axioms}"

#audit_branch_tree

end BranchTreeTests
