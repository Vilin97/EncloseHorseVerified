import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock10 : List Nat := [160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175]

def baseBlock10 : CNF := [[(320,false),(321,false)],[(321,false),(282,true),(283,true)],[(321,false),(318,true),(319,true)],[(321,false),(322,true),(323,true)],[(321,false),(358,true),(359,true)],[(322,false),(323,false)],[(323,false),(284,true),(285,true)],[(323,false),(320,true),(321,true)],[(323,false),(360,true),(361,true)],[(324,false)],[(325,false)],[(324,false),(325,false)],[(326,false)],[(327,false)],[(326,false),(327,false)],[(328,false)],[(329,false)],[(328,false),(329,false)],[(330,false)],[(331,false)],[(330,false),(331,false)],[(332,false),(333,false)],[(333,false),(334,true),(335,true)],[(333,false),(370,true),(371,true)],[(334,false),(335,false)],[(335,false),(296,true),(297,true)],[(335,false),(332,true),(333,true)],[(335,false),(336,true),(337,true)],[(335,false),(372,true),(373,true)],[(336,false),(337,false)],[(337,false),(298,true),(299,true)],[(337,false),(334,true),(335,true)],[(337,false),(338,true),(339,true)],[(338,false),(339,false)],[(339,false),(300,true),(301,true)],[(339,false),(336,true),(337,true)],[(339,false),(340,true),(341,true)],[(339,false),(376,true),(377,true)],[(341,false)],[(340,false),(341,false)],[(341,false),(302,true),(303,true)],[(341,false),(338,true),(339,true)],[(341,false),(378,true),(379,true)],[(342,false)],[(343,false)],[(343,false)],[(342,false),(343,false)],[(344,false),(345,false)],[(345,false),(306,true),(307,true)],[(345,false),(382,true),(383,true)],[(346,false)],[(347,false)],[(346,false),(347,false)],[(348,false)],[(349,false)],[(348,false),(349,false)],[(350,false)],[(351,false)],[(350,false),(351,false)]]

theorem baseBlock10_eq : cellBlock10.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock10 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
