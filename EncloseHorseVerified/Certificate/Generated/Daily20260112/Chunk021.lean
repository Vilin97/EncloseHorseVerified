import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk020

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix21 : List TreeAction := [
  .add 2195 [(2675,false),(2757,true)] [2181,1655],
  .add 2196 [(2676,false),(2757,true)] [2180,1660],
  .add 2197 [(2875,true)] [333,334,1802],
  .add 2198 [(2877,true)] [2198,1803],
  .add 2199 [(2872,false),(2878,true)] [2198,1804],
  .add 2200 [(2873,false),(2879,true)] [2198,1805],
  .add 2201 [(2881,true)] [335,336,1806],
  .add 2202 [(2883,true)] [337,338,1807],
  .add 2203 [(2887,true)] [2202,2203,1808],
  .add 2204 [(2893,true)] [2199,2204,1809],
]

theorem transition21 : runPrefix prefix21 state21 depth = some state22 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
