import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk013

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix14 : List TreeAction := [
  .add 2125 [(2537,true)] [2124,1459],
  .add 2126 [(2529,false),(2538,true)] [2124,1460],
  .add 2127 [(2553,true)] [2126,1464],
  .add 2128 [(2554,true)] [2120,2126,1465],
  .add 2129 [(2538,false),(2555,true)] [2120,1466],
  .add 2130 [(2540,false),(2557,true)] [2120,1467],
  .add 2131 [(2541,false),(2558,true)] [2120,1468],
  .add 2132 [(2477,false),(2557,true)] [2126,1472],
  .add 2133 [(2585,true)] [2129,1476],
  .add 2134 [(2586,true)] [2107,2129,1477],
]

theorem transition14 : runPrefix prefix14 state14 depth = some state15 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
