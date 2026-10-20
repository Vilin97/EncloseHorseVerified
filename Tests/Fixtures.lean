import EncloseHorseVerified.Levels
import EncloseHorseVerified.Solver
import Lean.Data.Json

/-!
Kernel-checked legality, enclosure, and scores for the independently obtained
witnesses on all five unmodified real tutorial boards. These are witness checks;
the general solver optimality theorem is in `Solver.lean`.
-/
open Lean EncloseHorse EncloseHorse.Levels
set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

example : admissible tutorial1 fixture1.witness ∧ score tutorial1 fixture1.witness = 15 := by
  decide +kernel
example : admissible tutorial2 fixture2.witness ∧ score tutorial2 fixture2.witness = 17 := by
  decide +kernel
example : admissible tutorial3 fixture3.witness ∧ score tutorial3 fixture3.witness = 12 := by
  decide +kernel
example : admissible tutorial4 fixture4.witness ∧ score tutorial4 fixture4.witness = 31 := by
  decide +kernel
example : admissible tutorial5 fixture5.witness ∧ score tutorial5 fixture5.witness = 39 := by
  decide +kernel

/-- A complete real-level optimality certificate, checked by kernel reduction. -/
theorem tutorial1_optimal : Optimal tutorial1 [23] :=
  solve_optimal tutorial1 [23] (by decide +kernel)

/-- Produce factual witness data for comparison with the independent Python BFS. -/
def fixtureJSON (f : Fixture) : Lean.Json := Lean.Json.mkObj
  [("id", toJson f.id), ("score", toJson (score f.board f.witness)),
   ("walls", toJson f.witness)]

#eval IO.println ((toJson (fixtures.map fixtureJSON)).compress)
