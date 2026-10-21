import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk076

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix77 : List TreeAction := [
  .add 2755 [(679,true),(1455,true),(639,false),(641,false)] [2542,2491,2704,296,292,837],
  .add 2756 [(1455,true),(639,false),(641,false)] [2542,881,867,2367,887,866,861,2756,2399,2250,857,836,2490],
  .add 2757 [(1483,false)] [2740,2741,2438,940,2514,2411,2436,586,2235,2305,2143],
  .add 2758 [(2902,true)] [2758,2444],
  .add 2759 [(2918,true)] [2759,1830],
  .add 2760 [(2954,true)] [2760,2217],
  .add 2761 [(3004,true)] [2761,2227],
  .add 2762 [(2260,false)] [2762,2436],
  .add 2763 [(895,true)] [2763,2514],
  .add 2764 [(795,true)] [2763,2517],
]

theorem transition77 : runPrefix prefix77 state77 depth = some state78 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
