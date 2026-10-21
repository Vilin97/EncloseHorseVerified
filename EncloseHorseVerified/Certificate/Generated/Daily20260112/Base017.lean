import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock17 : List Nat := [272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287]

def baseBlock17 : CNF := [[(544,false)],[(545,false)],[(544,false),(545,false)],[(546,false)],[(547,false)],[(546,false),(547,false)],[(548,false)],[(549,false)],[(548,false),(549,false)],[(550,false),(551,false)],[(551,false),(512,true),(513,true)],[(551,false),(552,true),(553,true)],[(551,false),(588,true),(589,true)],[(552,false),(553,false)],[(553,false),(514,true),(515,true)],[(553,false),(550,true),(551,true)],[(553,false),(590,true),(591,true)],[(554,false)],[(555,false)],[(554,false),(555,false)],[(556,false)],[(557,false)],[(556,false),(557,false)],[(558,false)],[(559,false)],[(558,false),(559,false)],[(560,false),(561,false)],[(561,false),(522,true),(523,true)],[(561,false),(562,true),(563,true)],[(561,false),(598,true),(599,true)],[(562,false),(563,false)],[(563,false),(524,true),(525,true)],[(563,false),(560,true),(561,true)],[(563,false),(564,true),(565,true)],[(563,false),(600,true),(601,true)],[(564,false),(565,false)],[(565,false),(562,true),(563,true)],[(565,false),(566,true),(567,true)],[(565,false),(602,true),(603,true)],[(566,false),(567,false)],[(567,false),(564,true),(565,true)],[(567,false),(568,true),(569,true)],[(567,false),(604,true),(605,true)],[(569,false)],[(568,false),(569,false)],[(569,false),(530,true),(531,true)],[(569,false),(566,true),(567,true)],[(569,false),(606,true),(607,true)],[(570,false)],[(571,false)],[(571,false)],[(570,false),(571,false)],[(572,false)],[(573,false)],[(572,false),(573,false)],[(574,false),(575,false)],[(575,false),(536,true),(537,true)],[(575,false),(576,true),(577,true)],[(575,false),(612,true),(613,true)]]

theorem baseBlock17_eq : cellBlock17.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock17 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
