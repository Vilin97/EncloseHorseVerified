import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock22 : List Nat := [352,353,354,355,356,357,358,359,360]

def baseBlock22 : CNF := [[(704,false)],[(705,false)],[(705,false)],[(704,false),(705,false)],[(706,false)],[(707,false)],[(707,false)],[(706,false),(707,false)],[(708,false)],[(709,false)],[(709,false)],[(708,false),(709,false)],[(710,false)],[(711,false)],[(711,false)],[(710,false),(711,false)],[(713,false)],[(712,false),(713,false)],[(713,false),(674,true),(675,true)],[(713,false),(714,true),(715,true)],[(715,false)],[(714,false),(715,false)],[(715,false),(676,true),(677,true)],[(715,false),(712,true),(713,true)],[(715,false),(716,true),(717,true)],[(717,false)],[(716,false),(717,false)],[(717,false),(678,true),(679,true)],[(717,false),(714,true),(715,true)],[(718,false)],[(719,false)],[(719,false)],[(718,false),(719,false)],[(720,false)],[(721,false)],[(721,false)],[(720,false),(721,false)]]

theorem baseBlock22_eq : cellBlock22.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock22 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
