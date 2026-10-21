import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk011

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix12 : List TreeAction := [
  .add 2105 [(2383,true)] [2103,1387],
  .add 2106 [(2399,true)] [2106,1392],
  .add 2107 [(2400,true)] [2098,2106,1393],
  .add 2108 [(2384,false),(2401,true)] [2098,1394],
  .add 2109 [(2322,false),(2402,true)] [2106,1397],
  .add 2110 [(2323,false),(2403,true)] [2106,1401],
  .add 2111 [(2435,true)] [154,1414],
  .add 2112 [(421,true),(2436,true)] [154,1415],
  .add 2113 [(2439,true)] [2112,1419],
  .add 2114 [(2437,false),(2440,true)] [2112,1420],
]

theorem transition12 : runPrefix prefix12 state12 depth = some state13 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
