import EncloseHorseVerified.Certificate.Generated.Daily20260310.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def cellBlock17 : List Nat := [272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287]

def baseBlock17 : CNF := [[(544,false)],[(545,false)],[(545,false)],[(544,false),(545,false)],[(546,false)],[(547,false)],[(547,false)],[(546,false),(547,false)],[(548,false)],[(549,false)],[(549,false)],[(548,false),(549,false)],[(550,false)],[(551,false)],[(551,false)],[(550,false),(551,false)],[(552,false)],[(553,false)],[(553,false)],[(552,false),(553,false)],[(555,false)],[(554,false),(555,false)],[(555,false),(520,true),(521,true)],[(555,false),(556,true),(557,true)],[(557,false)],[(556,false),(557,false)],[(557,false),(522,true),(523,true)],[(557,false),(554,true),(555,true)],[(558,false)],[(559,false)],[(559,false)],[(558,false),(559,false)],[(560,false)],[(561,false)],[(561,false)],[(560,false),(561,false)],[(562,false)],[(563,false)],[(563,false)],[(562,false),(563,false)],[(564,false)],[(565,false)],[(565,false)],[(564,false),(565,false)],[(566,false)],[(567,false)],[(567,false)],[(566,false),(567,false)],[(568,false)],[(569,false)],[(569,false)],[(568,false),(569,false)],[(570,false)],[(571,false)],[(571,false)],[(570,false),(571,false)],[(572,false)],[(573,false)],[(573,false)],[(572,false),(573,false)],[(574,false)],[(575,false)],[(575,false)],[(574,false),(575,false)]]

theorem baseBlock17_eq :
    cellBlock17.flatMap (cellClauses DailyLevels.daily20260310 Input.staticCells) = baseBlock17 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260310
