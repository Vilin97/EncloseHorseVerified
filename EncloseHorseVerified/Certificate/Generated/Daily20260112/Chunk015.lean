import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk014

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix15 : List TreeAction := [
  .add 2135 [(2587,true)] [2108,2129,1478],
  .add 2136 [(2555,false),(2588,true)] [2108,1479],
  .add 2137 [(2557,false),(2590,true)] [2108,1480],
  .add 2138 [(2558,false),(2591,true)] [2108,1481],
  .add 2139 [(2560,false),(2593,true)] [2108,1482],
  .add 2140 [(2561,false),(2594,true)] [2108,1483],
  .add 2141 [(2401,false),(2588,true)] [2129,1484],
  .add 2142 [(2402,false),(2588,true)] [2128,1485],
  .add 2143 [(2402,false),(2589,true)] [2129,1486],
  .add 2144 [(2403,false),(2590,true)] [2129,1489],
]

theorem transition15 : runPrefix prefix15 state15 depth = some state16 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
