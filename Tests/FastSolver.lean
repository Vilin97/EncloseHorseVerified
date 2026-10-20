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

#eval testFastFixtures

#print axioms EncloseHorse.BranchBound.search_spec
#print axioms EncloseHorse.solveFast_optimal
#print axioms EncloseHorse.solveFast_optimal_physical
