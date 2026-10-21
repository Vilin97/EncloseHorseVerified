import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk079

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix80 : List TreeAction := [
  .add 2785 [(641,false)] [2784,2287],
  .add 2786 [(1316,false)] [2785,733],
  .add 2787 [(1312,false)] [2785,735],
  .add 2788 [(1314,false)] [2787,730],
  .add 2789 [(575,false)] [2787,2262],
  .add 2790 [(613,false)] [2787,2503],
  .add 2791 [(2727,true)] [2787,2783,2526],
  .add 2792 [(567,false)] [2788,2252],
  .add 2793 [(2714,true)] [2788,2365],
  .add 2794 [(643,false)] [2788,2474],
]

theorem transition80 : runPrefix prefix80 state80 depth = some state81 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
