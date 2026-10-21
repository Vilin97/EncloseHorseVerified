import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk069

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix70 : List TreeAction := [
  .add 2685 [(1304,true),(603,true),(561,false)] [717,719,714,715,217,241,237],
  .add 2686 [(603,true),(1334,false),(657,true),(1482,true),(1319,false),(561,false)] [2501,2543,2542,927,759,779,738,788,920,899,2245,2684,2686,722,742,793,792,782,924,2527,760,898,907,2280,754,755,881,2680,867,268,2367,267,887,813,866,814,861,821,829,2669,809,2666,2283],
  .add 2687 [(1312,true),(603,false)] [726,727,2393,245],
  .add 2688 [(617,true),(657,true),(1482,true),(577,false),(1316,false),(561,false),(1275,true)] [2501,2542,927,733,2265,759,779,795,2687,2682,773,2464,769,767,281,2688,736,739,743,793,792,2497,782,924,239,760,2484,754,755,825,2680,821,268,814,267,813],
  .add 2689 [(1467,true),(679,true),(1408,false),(1454,false),(1482,true),(561,false)] [2661,2666],
  .add 2690 [(1374,true),(1319,false)] [2542,738,2654,2288,2688],
  .add 2691 [(1408,false),(1325,false),(603,false),(1467,true),(1482,true),(561,false)] [2543,2542,911,899,2245,825,832,904,811,881,867,2367,887,866,861,2669,2690,2666,2660,246,835,836,801,328,292,287,2667,2280,2527],
  .add 2692 [(1400,true),(1482,true),(577,false),(1316,false),(561,false),(1275,true)] [2542,733,2691,920,814,815,2263,2261,2689,309],
  .add 2693 [(603,false),(1408,false),(1482,true),(1316,false),(561,false)] [733,2691,920,2688,2692,736,739],
  .add 2694 [(1398,true),(1339,true),(603,true),(617,false),(657,true),(1376,true),(1319,false)] [812,813,267,313,263,270,755,756,757,2680,2684],
]

theorem transition70 : runPrefix prefix70 state70 depth = some state71 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
