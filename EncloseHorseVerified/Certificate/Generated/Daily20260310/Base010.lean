import EncloseHorseVerified.Certificate.Generated.Daily20260310.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def cellBlock10 : List Nat := [160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175]

def baseBlock10 : CNF := [[(320,false)],[(321,false)],[(320,false),(321,false)],[(322,false)],[(323,false)],[(322,false),(323,false)],[(324,false)],[(325,false)],[(324,false),(325,false)],[(326,false)],[(327,false)],[(326,false),(327,false)],[(328,false),(329,false)],[(329,false),(294,true),(295,true)],[(329,false),(330,true),(331,true)],[(329,false),(362,true),(363,true)],[(330,false),(331,false)],[(331,false),(296,true),(297,true)],[(331,false),(328,true),(329,true)],[(331,false),(364,true),(365,true)],[(332,false)],[(333,false)],[(332,false),(333,false)],[(334,false),(335,false)],[(335,false),(300,true),(301,true)],[(335,false),(336,true),(337,true)],[(335,false),(368,true),(369,true)],[(336,false),(337,false)],[(337,false),(302,true),(303,true)],[(337,false),(334,true),(335,true)],[(337,false),(338,true),(339,true)],[(337,false),(370,true),(371,true)],[(339,false)],[(338,false),(339,false)],[(339,false),(336,true),(337,true)],[(340,false)],[(341,false)],[(341,false)],[(340,false),(341,false)],[(342,false),(343,false)],[(343,false),(308,true),(309,true)],[(343,false),(344,true),(345,true)],[(343,false),(376,true),(377,true)],[(344,false),(345,false)],[(345,false),(310,true),(311,true)],[(345,false),(342,true),(343,true)],[(345,false),(346,true),(347,true)],[(345,false),(378,true),(379,true)],[(346,false),(347,false)],[(347,false),(312,true),(313,true)],[(347,false),(344,true),(345,true)],[(347,false),(348,true),(349,true)],[(348,false),(349,false)],[(349,false),(314,true),(315,true)],[(349,false),(346,true),(347,true)],[(349,false),(350,true),(351,true)],[(349,false),(382,true),(383,true)],[(350,false),(351,false)],[(351,false),(316,true),(317,true)],[(351,false),(348,true),(349,true)],[(351,false),(352,true),(353,true)],[(351,false),(384,true),(385,true)]]

theorem baseBlock10_eq :
    cellBlock10.flatMap (cellClauses DailyLevels.daily20260310 Input.staticCells) = baseBlock10 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260310
