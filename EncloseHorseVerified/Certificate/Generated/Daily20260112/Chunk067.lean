import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk066

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix67 : List TreeAction := [
  .add 2655 [(679,true),(677,false),(2923,true),(1456,true),(1482,true)] [2542,2398,858,860,1799,328,2200,835,2206,838,2490,843,2641,888,869,2642],
  .add 2656 [(677,false),(2923,true),(1408,false),(1482,true)] [2566,916,825,905,325,2656,2250,2648,861,881,866,867,887,2367],
  .add 2657 [(679,false),(677,true),(1408,false),(1482,true)] [2542,2399,331,2648,857,836,2490],
  .add 2658 [(1454,false),(639,true),(641,true),(1467,true),(1408,false),(1482,true),(561,false)] [2542,825,908,903,829,924,809,800,2283,242,2280,2525,722,717,719,715,217,237],
  .add 2659 [(1454,true),(1427,false),(1432,false)] [2542,890,886,2248,865,2397,862],
  .add 2660 [(641,true),(1454,false),(1467,true),(1408,false),(1482,true),(561,false)] [908,829,809,799,2659,291],
  .add 2661 [(1408,true),(658,true),(2790,true),(2905,true),(1374,true),(1468,true),(1469,true)] [2542,900,821,2445,814,815,2396,316,813,313,2395,309,851,2394,2646,2255,2366,856,861,2367,876,2245,2271,889,893,905,2200,877,828,2206,860,862,809,1822,857,2397,1795,2399,2248,2362,835,773,296,769,2283,2280],
  .add 2662 [(692,false),(1449,true),(1437,false),(2865,true),(1441,true)] [855,856,873,2357,862,1793,2397,1787,1786],
  .add 2663 [(692,false),(2867,true),(1455,true),(1467,true)] [2542,881,867,2367,887,872,854,855,2506,2358,908,1786,826,1787,2359,1796],
  .add 2664 [(2810,true),(1455,true)] [2542,881,867,2367,887,866,861,1709,2655,325,2398,2250,858,296,2490,835],
]

theorem transition67 : runPrefix prefix67 state67 depth = some state68 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
