import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock12 : List Nat := [192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207]

def baseBlock12 : CNF := [[(384,false),(385,false)],[(385,false),(382,true),(383,true)],[(385,false),(386,true),(387,true)],[(385,false),(422,true),(423,true)],[(386,false),(387,false)],[(387,false),(384,true),(385,true)],[(387,false),(424,true),(425,true)],[(388,false)],[(389,false)],[(388,false),(389,false)],[(390,false),(391,false)],[(391,false),(352,true),(353,true)],[(391,false),(392,true),(393,true)],[(391,false),(428,true),(429,true)],[(392,false),(393,false)],[(393,false),(354,true),(355,true)],[(393,false),(390,true),(391,true)],[(393,false),(394,true),(395,true)],[(393,false),(430,true),(431,true)],[(394,false),(395,false)],[(395,false),(356,true),(357,true)],[(395,false),(392,true),(393,true)],[(395,false),(396,true),(397,true)],[(395,false),(432,true),(433,true)],[(396,false),(397,false)],[(397,false),(358,true),(359,true)],[(397,false),(394,true),(395,true)],[(397,false),(398,true),(399,true)],[(397,false),(434,true),(435,true)],[(398,false),(399,false)],[(399,false),(360,true),(361,true)],[(399,false),(396,true),(397,true)],[(399,false),(400,true),(401,true)],[(399,false),(436,true),(437,true)],[(400,false)],[(400,false),(401,false)],[(401,false),(362,true),(363,true)],[(401,false),(398,true),(399,true)],[(401,false),(402,true),(403,true)],[(401,false),(438,true),(439,true)],[(402,false),(403,false)],[(403,false),(400,true),(401,true)],[(403,false),(404,true),(405,true)],[(403,false),(440,true),(441,true)],[(404,false),(405,false)],[(405,false),(402,true),(403,true)],[(405,false),(406,true),(407,true)],[(405,false),(442,true),(443,true)],[(406,false),(407,false)],[(407,false),(404,true),(405,true)],[(407,false),(408,true),(409,true)],[(407,false),(444,true),(445,true)],[(408,false),(409,false)],[(409,false),(370,true),(371,true)],[(409,false),(406,true),(407,true)],[(409,false),(446,true),(447,true)],[(410,false)],[(411,false)],[(410,false),(411,false)],[(412,false)],[(413,false)],[(412,false),(413,false)],[(414,false)],[(415,false)],[(414,false),(415,false)]]

theorem baseBlock12_eq : cellBlock12.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock12 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
