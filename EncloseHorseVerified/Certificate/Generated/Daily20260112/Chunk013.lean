import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk012

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix13 : List TreeAction := [
  .add 2115 [(2443,true)] [2114,1424],
  .add 2116 [(2432,false),(2444,true)] [2114,1427],
  .add 2117 [(2433,false),(2445,true)] [2114,1429],
  .add 2118 [(2434,false),(2446,true)] [2114,1431],
  .add 2119 [(2474,true)] [2116,1432],
  .add 2120 [(2491,true)] [179,1438],
  .add 2121 [(447,true),(2492,true)] [179,1439],
  .add 2122 [(2493,true)] [2121,1440],
  .add 2123 [(2505,true)] [2123,1449],
  .add 2124 [(2503,false),(2508,true)] [2123,1450],
]

theorem transition13 : runPrefix prefix13 state13 depth = some state14 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
