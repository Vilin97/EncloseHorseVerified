import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock13 : List Nat := [208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223]

def baseBlock13 : CNF := [[(417,false)],[(416,false),(417,false)],[(417,false),(378,true),(379,true)],[(418,false)],[(419,false)],[(419,false)],[(418,false),(419,false)],[(420,false),(421,false)],[(421,false),(382,true),(383,true)],[(421,false),(422,true),(423,true)],[(421,false),(458,true),(459,true)],[(422,false),(423,false)],[(423,false),(384,true),(385,true)],[(423,false),(420,true),(421,true)],[(423,false),(424,true),(425,true)],[(423,false),(460,true),(461,true)],[(424,false),(425,false)],[(425,false),(386,true),(387,true)],[(425,false),(422,true),(423,true)],[(425,false),(426,true),(427,true)],[(425,false),(462,true),(463,true)],[(426,false),(427,false)],[(427,false),(424,true),(425,true)],[(427,false),(428,true),(429,true)],[(427,false),(464,true),(465,true)],[(428,false),(429,false)],[(429,false),(390,true),(391,true)],[(429,false),(426,true),(427,true)],[(429,false),(430,true),(431,true)],[(429,false),(466,true),(467,true)],[(430,false),(431,false)],[(431,false),(392,true),(393,true)],[(431,false),(428,true),(429,true)],[(431,false),(432,true),(433,true)],[(432,false),(433,false)],[(433,false),(394,true),(395,true)],[(433,false),(430,true),(431,true)],[(433,false),(434,true),(435,true)],[(434,false),(435,false)],[(435,false),(396,true),(397,true)],[(435,false),(432,true),(433,true)],[(435,false),(436,true),(437,true)],[(435,false),(472,true),(473,true)],[(436,false),(437,false)],[(437,false),(398,true),(399,true)],[(437,false),(434,true),(435,true)],[(437,false),(438,true),(439,true)],[(437,false),(474,true),(475,true)],[(438,false),(439,false)],[(439,false),(400,true),(401,true)],[(439,false),(436,true),(437,true)],[(439,false),(440,true),(441,true)],[(439,false),(476,true),(477,true)],[(440,false),(441,false)],[(441,false),(402,true),(403,true)],[(441,false),(438,true),(439,true)],[(441,false),(442,true),(443,true)],[(441,false),(478,true),(479,true)],[(442,false),(443,false)],[(443,false),(404,true),(405,true)],[(443,false),(440,true),(441,true)],[(443,false),(444,true),(445,true)],[(444,false),(445,false)],[(445,false),(406,true),(407,true)],[(445,false),(442,true),(443,true)],[(445,false),(446,true),(447,true)],[(445,false),(482,true),(483,true)],[(446,false),(447,false)],[(447,false),(408,true),(409,true)],[(447,false),(444,true),(445,true)],[(447,false),(484,true),(485,true)]]

theorem baseBlock13_eq : cellBlock13.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock13 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
