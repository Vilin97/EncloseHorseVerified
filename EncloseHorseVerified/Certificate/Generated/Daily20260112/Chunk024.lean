import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk023

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix24 : List TreeAction := [
  .add 2225 [(2965,false),(3014,true)] [2135,1923],
  .add 2226 [(2954,false),(3004,true)] [2136,1924],
  .add 2227 [(2956,false),(3006,true)] [2136,1925],
  .add 2228 [(2958,false),(3008,true)] [2136,1926],
  .add 2229 [(2964,false),(3014,true)] [2136,1927],
  .add 2230 [(2969,false),(3019,true)] [2136,1928],
  .add 2231 [(2975,false),(3025,true)] [2136,1929],
  .add 2232 [(2979,false),(3029,true)] [2136,1930],
  .add 2233 [(2981,false),(3031,true)] [2136,1931],
  .add 2234 [(2588,false),(3004,true)] [2216,1932],
]

theorem transition24 : runPrefix prefix24 state24 depth = some state25 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
