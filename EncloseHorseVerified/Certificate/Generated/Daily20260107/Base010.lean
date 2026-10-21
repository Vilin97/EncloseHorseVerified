import EncloseHorseVerified.Certificate.Generated.Daily20260107.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def cellBlock10 : List Nat := [160,161,162,163,164,165,166,167]

def baseBlock10 : CNF := [[(321,false)],[(320,false),(321,false)],[(321,false),(296,true),(297,true)],[(322,false)],[(323,false)],[(323,false)],[(322,false),(323,false)],[(325,false)],[(324,false),(325,false)],[(325,false),(300,true),(301,true)],[(326,false)],[(327,false)],[(327,false)],[(326,false),(327,false)],[(329,false)],[(328,false),(329,false)],[(329,false),(304,true),(305,true)],[(329,false),(330,true),(331,true)],[(331,false)],[(330,false),(331,false)],[(331,false),(306,true),(307,true)],[(331,false),(328,true),(329,true)],[(331,false),(332,true),(333,true)],[(333,false)],[(332,false),(333,false)],[(333,false),(308,true),(309,true)],[(333,false),(330,true),(331,true)],[(334,false)],[(335,false)],[(335,false)],[(334,false),(335,false)]]

theorem baseBlock10_eq :
    cellBlock10.flatMap (cellClauses DailyLevels.daily20260107 Input.staticCells) = baseBlock10 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260107
