import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock19 : List Nat := [304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319]

def baseBlock19 : CNF := [[(609,false)],[(608,false),(609,false)],[(609,false),(610,true),(611,true)],[(610,false),(611,false)],[(611,false),(608,true),(609,true)],[(611,false),(612,true),(613,true)],[(612,false),(613,false)],[(613,false),(574,true),(575,true)],[(613,false),(610,true),(611,true)],[(613,false),(614,true),(615,true)],[(613,false),(650,true),(651,true)],[(614,false),(615,false)],[(615,false),(576,true),(577,true)],[(615,false),(612,true),(613,true)],[(615,false),(616,true),(617,true)],[(615,false),(652,true),(653,true)],[(616,false),(617,false)],[(617,false),(614,true),(615,true)],[(617,false),(618,true),(619,true)],[(617,false),(654,true),(655,true)],[(618,false),(619,false)],[(619,false),(616,true),(617,true)],[(619,false),(620,true),(621,true)],[(619,false),(656,true),(657,true)],[(620,false),(621,false)],[(621,false),(618,true),(619,true)],[(621,false),(622,true),(623,true)],[(621,false),(658,true),(659,true)],[(622,false),(623,false)],[(623,false),(620,true),(621,true)],[(623,false),(624,true),(625,true)],[(623,false),(660,true),(661,true)],[(624,false),(625,false)],[(625,false),(622,true),(623,true)],[(625,false),(626,true),(627,true)],[(625,false),(662,true),(663,true)],[(626,false),(627,false)],[(627,false),(588,true),(589,true)],[(627,false),(624,true),(625,true)],[(627,false),(628,true),(629,true)],[(628,false),(629,false)],[(629,false),(590,true),(591,true)],[(629,false),(626,true),(627,true)],[(629,false),(630,true),(631,true)],[(630,false),(631,false)],[(631,false),(628,true),(629,true)],[(631,false),(632,true),(633,true)],[(631,false),(668,true),(669,true)],[(632,false)],[(632,false),(633,false)],[(633,false),(46,true),(47,true)],[(633,false),(630,true),(631,true)],[(633,false),(632,true),(633,true)],[(633,false),(634,true),(635,true)],[(633,false),(670,true),(671,true)],[(634,false),(635,false)],[(635,false),(596,true),(597,true)],[(635,false),(632,true),(633,true)],[(635,false),(636,true),(637,true)],[(635,false),(672,true),(673,true)],[(636,false),(637,false)],[(637,false),(598,true),(599,true)],[(637,false),(634,true),(635,true)],[(637,false),(638,true),(639,true)],[(637,false),(674,true),(675,true)],[(638,false),(639,false)],[(639,false),(600,true),(601,true)],[(639,false),(636,true),(637,true)],[(639,false),(640,true),(641,true)],[(639,false),(676,true),(677,true)]]

theorem baseBlock19_eq : cellBlock19.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock19 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
