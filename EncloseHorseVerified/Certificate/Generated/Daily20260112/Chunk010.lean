import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk009

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix10 : List TreeAction := [
  .add 2085 [(2193,false),(2240,true)] [2035,1311],
  .add 2086 [(2194,false),(2241,true)] [2035,1312],
  .add 2087 [(2195,false),(2242,true)] [2035,1313],
  .add 2088 [(2206,false),(2253,true)] [2035,1314],
  .add 2089 [(1847,false),(2256,true)] [2075,1330],
  .add 2090 [(1849,false),(2258,true)] [2075,1331],
  .add 2091 [(2298,true)] [127,1345],
  .add 2092 [(345,true),(2299,true)] [127,1346],
  .add 2093 [(2300,true)] [2092,1347],
  .add 2094 [(2296,false),(2301,true)] [2092,1348],
]

theorem transition10 : runPrefix prefix10 state10 depth = some state11 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
