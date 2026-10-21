import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk081

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix82 : List TreeAction := [
  .add 2805 [(2694,true)] [2798,1562],
  .add 2806 [(2735,true)] [2799,2792,1617],
  .add 2807 [(639,false)] [2802,2781,289],
  .add 2808 [(599,false)] [2802,2781,237],
  .add 2809 [(563,false)] [2802,2781,221],
  .add 2810 [(2661,true)] [2803,2793,1526],
  .add 2811 [(2817,true)] [2804,2795,1720],
  .add 2812 [(2811,true)] [2808,2786,1711],
  .add 2813 [(637,false)] [2809,2778,286],
  .add 2814 [(2700,true)] [2809,2802,1568],
]

theorem transition82 : runPrefix prefix82 state82 depth = some state83 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
