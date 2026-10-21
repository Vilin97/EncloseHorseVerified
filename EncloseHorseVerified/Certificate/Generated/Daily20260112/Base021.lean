import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock21 : List Nat := [336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351]

def baseBlock21 : CNF := [[(672,false),(673,false)],[(673,false),(634,true),(635,true)],[(673,false),(670,true),(671,true)],[(673,false),(674,true),(675,true)],[(674,false),(675,false)],[(675,false),(636,true),(637,true)],[(675,false),(672,true),(673,true)],[(675,false),(676,true),(677,true)],[(675,false),(712,true),(713,true)],[(676,false),(677,false)],[(677,false),(638,true),(639,true)],[(677,false),(674,true),(675,true)],[(677,false),(678,true),(679,true)],[(677,false),(714,true),(715,true)],[(678,false),(679,false)],[(679,false),(640,true),(641,true)],[(679,false),(676,true),(677,true)],[(679,false),(716,true),(717,true)],[(680,false)],[(681,false)],[(680,false),(681,false)],[(682,false)],[(683,false)],[(683,false)],[(682,false),(683,false)],[(684,false)],[(685,false)],[(685,false)],[(684,false),(685,false)],[(686,false)],[(687,false)],[(687,false)],[(686,false),(687,false)],[(688,false)],[(689,false)],[(689,false)],[(688,false),(689,false)],[(690,false)],[(691,false)],[(691,false)],[(690,false),(691,false)],[(693,false)],[(692,false),(693,false)],[(693,false),(654,true),(655,true)],[(693,false),(694,true),(695,true)],[(695,false)],[(694,false),(695,false)],[(695,false),(656,true),(657,true)],[(695,false),(692,true),(693,true)],[(696,false)],[(697,false)],[(697,false)],[(696,false),(697,false)],[(699,false)],[(698,false),(699,false)],[(699,false),(660,true),(661,true)],[(700,false)],[(701,false)],[(701,false)],[(700,false),(701,false)],[(702,false)],[(703,false)],[(703,false)],[(702,false),(703,false)]]

theorem baseBlock21_eq : cellBlock21.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock21 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
