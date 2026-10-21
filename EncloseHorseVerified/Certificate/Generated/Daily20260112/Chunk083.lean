import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk082

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix83 : List TreeAction := [
  .add 2815 [(597,false)] [2809,2778,235],
  .add 2816 [(2659,true)] [2810,2801,1523],
  .add 2817 [(2809,true)] [2814,2800,1708],
  .add 2818 [(2697,true)] [2816,1565],
  .add 2819 [(2665,true)] [2817,2811,1532],
  .add 2820 [(2815,true)] [2818,2813,1717],
  .add 2821 [(2703,true)] [2819,2815,1571],
  .add 2822 [(2670,true)] [2820,2158],
  .add 2823 [(2709,true)] [2822,2806,1579],
  .add 2824 [(2678,true)] [2823,1546],
]

theorem transition83 : runPrefix prefix83 state83 depth = some state84 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
