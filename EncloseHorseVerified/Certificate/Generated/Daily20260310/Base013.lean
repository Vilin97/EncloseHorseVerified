import EncloseHorseVerified.Certificate.Generated.Daily20260310.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def cellBlock13 : List Nat := [208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223]

def baseBlock13 : CNF := [[(416,false)],[(417,false)],[(416,false),(417,false)],[(418,false)],[(419,false)],[(418,false),(419,false)],[(420,false)],[(421,false)],[(420,false),(421,false)],[(422,false)],[(423,false)],[(422,false),(423,false)],[(424,false),(425,false)],[(425,false),(390,true),(391,true)],[(425,false),(458,true),(459,true)],[(426,false)],[(427,false)],[(426,false),(427,false)],[(428,false)],[(429,false)],[(428,false),(429,false)],[(430,false),(431,false)],[(431,false),(396,true),(397,true)],[(431,false),(464,true),(465,true)],[(432,false)],[(433,false)],[(432,false),(433,false)],[(434,false)],[(435,false)],[(434,false),(435,false)],[(436,false),(437,false)],[(437,false),(402,true),(403,true)],[(437,false),(438,true),(439,true)],[(437,false),(470,true),(471,true)],[(438,false),(439,false)],[(439,false),(404,true),(405,true)],[(439,false),(436,true),(437,true)],[(439,false),(472,true),(473,true)],[(440,false)],[(441,false)],[(441,false)],[(440,false),(441,false)],[(442,false)],[(443,false)],[(443,false)],[(442,false),(443,false)],[(444,false),(445,false)],[(445,false),(410,true),(411,true)],[(445,false),(446,true),(447,true)],[(445,false),(478,true),(479,true)],[(446,false),(447,false)],[(447,false),(412,true),(413,true)],[(447,false),(444,true),(445,true)],[(447,false),(448,true),(449,true)]]

theorem baseBlock13_eq :
    cellBlock13.flatMap (cellClauses DailyLevels.daily20260310 Input.staticCells) = baseBlock13 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260310
