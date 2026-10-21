import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk080

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix81 : List TreeAction := [
  .add 2795 [(603,false)] [2788,2688],
  .add 2796 [(612,false)] [2789,728],
  .add 2797 [(2690,true)] [2790,2162],
  .add 2798 [(2720,true)] [2794,2174],
  .add 2799 [(635,false)] [2796,2773,2681],
  .add 2800 [(561,false)] [2796,2775,2686],
  .add 2801 [(601,false)] [2796,2780,241],
  .add 2802 [(565,false)] [2796,2780,224],
  .add 2803 [(651,false)] [2797,2791,299],
  .add 2804 [(615,false)] [2797,2791,259],
]

theorem transition81 : runPrefix prefix81 state81 depth = some state82 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
