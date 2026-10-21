import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk019

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix20 : List TreeAction := [
  .add 2185 [(2735,false),(2744,true)] [2165,1625],
  .add 2186 [(2707,false),(2741,true)] [2175,1632],
  .add 2187 [(2756,true)] [2159,2181,1647],
  .add 2188 [(2740,false),(2757,true)] [2159,1648],
  .add 2189 [(2741,false),(2758,true)] [2159,1649],
  .add 2190 [(2742,false),(2759,true)] [2159,1650],
  .add 2191 [(2743,false),(2760,true)] [2159,1651],
  .add 2192 [(2744,false),(2761,true)] [2159,1652],
  .add 2193 [(2745,false),(2762,true)] [2159,1653],
  .add 2194 [(2747,false),(2764,true)] [2159,1654],
]

theorem transition20 : runPrefix prefix20 state20 depth = some state21 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
