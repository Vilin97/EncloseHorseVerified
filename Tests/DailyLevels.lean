import EncloseHorseVerified.DailyLevels
import Lean.Data.Json

/-!
Concrete kernel-checked witness feasibility and scores on three real daily maps.
These theorems do not assume an external optimum and do not claim global
optimality of the external search. No native_decide is used.
-/
open Lean EncloseHorse EncloseHorse.DailyLevels
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem daily20260107_witness :
    admissible daily20260107 daily20260107Witness ∧
    score daily20260107 daily20260107Witness = 66 := by
  decide +kernel

theorem daily20260112_witness :
    admissible daily20260112 daily20260112Witness ∧
    score daily20260112 daily20260112Witness = 204 := by
  decide +kernel

theorem daily20260310_witness :
    admissible daily20260310 daily20260310Witness ∧
    score daily20260310 daily20260310Witness = 99 := by
  decide +kernel

def dailyWitnessJSON (f : EncloseHorse.DailyLevels.Fixture) : Lean.Json := Lean.Json.mkObj
  [("id", toJson f.id), ("score", toJson (score f.board f.witness)),
   ("walls", toJson f.witness)]

#eval IO.println ((toJson (EncloseHorse.DailyLevels.fixtures.map dailyWitnessJSON)).compress)

#print axioms daily20260107_witness
#print axioms daily20260112_witness
#print axioms daily20260310_witness
