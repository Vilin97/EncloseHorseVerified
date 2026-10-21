import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock20 : List Nat := [320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335]

def baseBlock20 : CNF := [[(640,false),(641,false)],[(641,false),(602,true),(603,true)],[(641,false),(638,true),(639,true)],[(641,false),(642,true),(643,true)],[(641,false),(678,true),(679,true)],[(642,false),(643,false)],[(643,false),(604,true),(605,true)],[(643,false),(640,true),(641,true)],[(644,false)],[(645,false)],[(645,false)],[(644,false),(645,false)],[(646,false)],[(647,false)],[(647,false)],[(646,false),(647,false)],[(648,false)],[(649,false)],[(648,false),(649,false)],[(650,false),(651,false)],[(651,false),(612,true),(613,true)],[(651,false),(652,true),(653,true)],[(652,false),(653,false)],[(653,false),(614,true),(615,true)],[(653,false),(650,true),(651,true)],[(653,false),(654,true),(655,true)],[(654,false),(655,false)],[(655,false),(616,true),(617,true)],[(655,false),(652,true),(653,true)],[(655,false),(656,true),(657,true)],[(655,false),(692,true),(693,true)],[(656,false),(657,false)],[(657,false),(618,true),(619,true)],[(657,false),(654,true),(655,true)],[(657,false),(658,true),(659,true)],[(657,false),(694,true),(695,true)],[(658,false),(659,false)],[(659,false),(620,true),(621,true)],[(659,false),(656,true),(657,true)],[(659,false),(660,true),(661,true)],[(660,false),(661,false)],[(661,false),(622,true),(623,true)],[(661,false),(658,true),(659,true)],[(661,false),(662,true),(663,true)],[(661,false),(698,true),(699,true)],[(662,false),(663,false)],[(663,false),(624,true),(625,true)],[(663,false),(660,true),(661,true)],[(664,false)],[(665,false)],[(664,false),(665,false)],[(666,false)],[(667,false)],[(666,false),(667,false)],[(668,false),(669,false)],[(669,false),(630,true),(631,true)],[(669,false),(670,true),(671,true)],[(670,false),(671,false)],[(671,false),(632,true),(633,true)],[(671,false),(668,true),(669,true)],[(671,false),(672,true),(673,true)]]

theorem baseBlock20_eq : cellBlock20.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock20 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
