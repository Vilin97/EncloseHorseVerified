import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk022

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix23 : List TreeAction := [
  .add 2215 [(2953,true)] [2188,2213,1869],
  .add 2216 [(2918,false),(2954,true)] [2188,1870],
  .add 2217 [(2919,false),(2955,true)] [2188,1871],
  .add 2218 [(2920,false),(2956,true)] [2188,1872],
  .add 2219 [(2922,false),(2958,true)] [2188,1873],
  .add 2220 [(2923,false),(2959,true)] [2188,1874],
  .add 2221 [(2757,false),(2954,true)] [2213,1875],
  .add 2222 [(2763,false),(2960,true)] [2213,1893],
  .add 2223 [(2766,false),(2963,true)] [2213,1901],
  .add 2224 [(2977,false),(3025,true)] [2134,1922],
]

theorem transition23 : runPrefix prefix23 state23 depth = some state24 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
