import EncloseHorseVerified.Certificate.Generated.Daily20260310.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def cellBlock18 : List Nat := [288]

def baseBlock18 : CNF := [[(576,false)],[(577,false)],[(577,false)],[(576,false),(577,false)]]

theorem baseBlock18_eq :
    cellBlock18.flatMap (cellClauses DailyLevels.daily20260310 Input.staticCells) = baseBlock18 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260310
