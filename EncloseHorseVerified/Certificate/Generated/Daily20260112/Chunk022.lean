import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk021

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix22 : List TreeAction := [
  .add 2205 [(2878,false),(2894,true)] [2204,1810],
  .add 2206 [(2879,false),(2895,true)] [2204,1811],
  .add 2207 [(2901,true)] [2205,1812],
  .add 2208 [(2864,false),(2902,true)] [2205,1815],
  .add 2209 [(2865,false),(2903,true)] [2205,1818],
  .add 2210 [(2866,false),(2904,true)] [2205,1821],
  .add 2211 [(2867,false),(2905,true)] [2205,1824],
  .add 2212 [(2917,true)] [2208,1829],
  .add 2213 [(2832,false),(2918,true)] [2208,1833],
  .add 2214 [(2836,false),(2922,true)] [2208,1844],
]

theorem transition22 : runPrefix prefix22 state22 depth = some state23 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
