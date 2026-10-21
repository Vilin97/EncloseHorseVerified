import EncloseHorseVerified.Certificate.Encoding
import EncloseHorseVerified.Levels
import Lean

open Lean Elab Command
open EncloseHorse EncloseHorse.Certificate EncloseHorse.Certificate.Clingo

namespace EncodingTests

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-- Real grass-wall, boundary, and reachability assignments satisfy every base clause. -/
example : Totalizer.Satisfies (baseAssignment Levels.tutorial1 Levels.fixture1.witness)
    (baseClauses Levels.tutorial1) :=
  baseClauses_sat _ _ (by decide +kernel)

example : Totalizer.Satisfies (baseAssignment Levels.tutorial2 Levels.fixture2.witness)
    (baseClauses Levels.tutorial2) :=
  baseClauses_sat _ _ (by decide +kernel)

/-- The same theorem includes portal edges and unwallable item tiles. -/
example : Totalizer.Satisfies (baseAssignment Levels.tutorial5 Levels.fixture5.witness)
    (baseClauses Levels.tutorial5) :=
  baseClauses_sat _ _ (by decide +kernel)

/-- Arbitrary auxiliary values do not affect the base clauses. -/
example (b : Board) (walls : Placement) (ha : admissible b walls) :
    Totalizer.Satisfies
      (fun v => if v < 2 * b.size then baseAssignment b walls v else true)
      (baseClauses b) := by
  apply baseClauses_sat_of_agrees b walls ha
  intro v hv
  simp only [ite_eq_left hv]

/-- Fail if the encoding implication acquires an unapproved logical assumption. -/
elab "#audit_encoding" : command => do
  for name in [``baseClauses_sat, ``baseClauses_sat_of_agrees,
      ``reach_open, ``reach_static_step] do
    let axioms ← liftCoreM <| collectAxioms name
    for ax in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains ax do
        throwError "{name} depends on unexpected axiom {ax}"
    logInfo m!"{name}: {axioms}"

#audit_encoding

end EncodingTests
