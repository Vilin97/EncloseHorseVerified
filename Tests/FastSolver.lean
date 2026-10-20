import EncloseHorseVerified.FastSolver
import EncloseHorseVerified.Levels

open EncloseHorse EncloseHorse.Levels

/-!
The expected scores were independently established on the original tutorial
boards. These runtime regression checks are distinct from the uniform proof of
`solveFast_optimal`.
-/
def testFastFixtures : IO Unit := do
  for f in smallFixtures do
    let start ← IO.monoMsNow
    let some walls := solveFast f.board
      | throw (IO.userError s!"fast solver found no enclosure for {f.id}")
    unless decide (admissible f.board walls) && score f.board walls == f.expectedScore do
      throw (IO.userError s!"fast solver mismatch for {f.id}: {walls}, score {score f.board walls}")
    IO.println s!"fast {f.id}: score={score f.board walls}, walls={walls}, elapsedMs={(← IO.monoMsNow) - start}"

-- Run these checks through the native FastBench executable; avoid interpreting the search during compilation.

private def negativeEnclosure : Board := Board.ofRows ["~~~", "~H~", "~S~", "~~~"] 0
private def impossibleBoard : Board := Board.ofRows ["H"] 0

-- Escaping for zero points is not accepted in place of a legitimate negative enclosure.
example : solveFast negativeEnclosure = some [] := by decide +kernel
example : score negativeEnclosure [] = -3 := by decide +kernel
-- A seed that places a wall on the horse is discarded before exact search.
example : solveFastWithSeed negativeEnclosure (some [4]) = some [] := by decide +kernel
example : solveFast impossibleBoard = none := by decide +kernel

#print axioms EncloseHorse.BranchBound.search_spec
#print axioms EncloseHorse.solveFast_optimal
#print axioms EncloseHorse.solveFastWithSeed_optimal
#print axioms EncloseHorse.solveFast_optimal_physical

#print axioms EncloseHorse.solveFastWithSeed_eq_none_iff
#print axioms EncloseHorse.solveFast_eq_none_iff
