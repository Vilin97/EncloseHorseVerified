import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk078

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix79 : List TreeAction := [
  .add 2775 [(1362,true)] [2774,777],
  .add 2776 [(1302,false)] [2775,717],
  .add 2777 [(598,false)] [2775,719],
  .add 2778 [(1325,false)] [2776,2768,792],
  .add 2779 [(602,false)] [2777,714],
  .add 2780 [(600,false)] [2777,715],
  .add 2781 [(1320,false)] [2779,739],
  .add 2782 [(1317,false)] [2782,734],
  .add 2783 [(1324,false)] [2768,2776,2774,2766,2755,2769,789,788,780,919,757,759,754,755,749,752,753,2680,2749,268,265],
  .add 2784 [(1319,false)] [2784,738],
]

theorem transition79 : runPrefix prefix79 state79 depth = some state80 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
