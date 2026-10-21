import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk068

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix69 : List TreeAction := [
  .add 2675 [(2810,true),(677,true),(1408,false),(1374,true),(1468,true)] [2542,1709,2655,2287,909,2288,829,2474,807,295,805],
  .add 2676 [(2865,true),(1441,true),(692,false),(1449,true)] [2663,2675,850,1774,2395],
  .add 2677 [(1408,false),(2923,true),(1374,true),(1482,true)] [2566,2542,916,791,739,2524,1725,1730,1748,1837,825,2657,905,2658,1801,2245,2201,2207,1823,1795,2362,773,769,2280,2674,2394,2646,861,2507,888,2676,1712,1735,1749,1840,1820,2677],
  .add 2678 [(625,true),(1374,true),(617,true),(1275,true)] [2542,785,778,2464,2508,777,780,767,788,759,281,741,2265,722,2497,2439,717,2291,714,241],
  .add 2679 [(1336,true),(625,false),(621,true)] [752,753,273,271],
  .add 2680 [(1307,true),(603,true),(635,false)] [722,2497,717,241,714],
  .add 2681 [(603,false),(1356,false),(617,true),(1376,true),(1275,true)] [2291,2439,2532,2265,2262,759,780,793,739,736,726,727,2393,245],
  .add 2682 [(575,true),(525,false),(1275,true),(499,false)] [701,699,2532,2569,210,669,672,676,679,698,668,690,200,688,212],
  .add 2683 [(1341,false),(603,true),(625,true),(1376,true),(1319,false)] [2542,2464,738,790,780,793,742,2681,781,281,2508,767],
  .add 2684 [(577,true),(575,false),(525,false),(1275,true)] [701,2439,229,2569,686,210,687,669,690,672,698,676],
]

theorem transition69 : runPrefix prefix69 state69 depth = some state70 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
