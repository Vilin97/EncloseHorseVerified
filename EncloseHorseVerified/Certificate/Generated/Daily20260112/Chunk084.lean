import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk083

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix84 : List TreeAction := [
  .add 2825 [(2748,true)] [2824,2807,1642],
  .add 2826 [(2769,true)] [2826,2825,1669],
  .add 2827 [(2932,false)] [2827,2417],
  .add 2828 [(1437,true),(2831,false),(2895,false),(1409,true)] [2755,2828,849,850,2359,2396,2395,1795,2338,1823,822,1863,814,1761,812,813,1703,267,313,1694,270,1687],
  .add 2829 [(1466,true),(1455,true)] [2543,2795,2804,2812,2821,2542,2755,907,2731,826,807,2447,804,2704,802,803,1801,302,2201,305,1722,2207,1729,1747,2829,852,2506,903,825,820,821,2338,814,815,812,813,309,316,313],
  .add 2830 [(1341,true)] [2755,2805,757,759,754,755,749,750,2680,262,268,265],
  .add 2831 [(1363,true)] [2831,2774,780],
  .add 2832 [(1374,true)] [2832,785],
  .add 2833 [(1466,false)] [2833,2766,919],
  .add 2834 [(1455,false)] [2834,898],
]

theorem transition84 : runPrefix prefix84 state84 depth = some state85 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
