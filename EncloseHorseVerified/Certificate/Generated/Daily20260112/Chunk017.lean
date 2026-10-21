import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk016

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix17 : List TreeAction := [
  .add 2155 [(2663,false),(2668,true)] [2153,1536],
  .add 2156 [(2664,false),(2669,true)] [2153,1537],
  .add 2157 [(2665,false),(2670,true)] [2153,1538],
  .add 2158 [(2674,true)] [2154,1542],
  .add 2159 [(2643,false),(2675,true)] [2154,1548],
  .add 2160 [(2689,true)] [228,1555],
  .add 2161 [(575,true),(2690,true)] [228,1556],
  .add 2162 [(2693,true)] [2161,1560],
  .add 2163 [(2691,false),(2694,true)] [2161,1561],
  .add 2164 [(2705,true)] [2163,1572],
]

theorem transition17 : runPrefix prefix17 state17 depth = some state18 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
