import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk044

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix45 : List TreeAction := [
  .add 2435 [(2260,false),(3004,false)] [1985,1984],
  .add 2436 [(563,true),(2661,false),(1263,true),(603,true),(605,true),(1496,true),(485,false),(497,false),(633,false)] [2344,2285],
  .add 2437 [(1275,false),(1483,false),(895,false)] [2341,2337],
  .add 2438 [(577,true),(1249,false),(1275,true)] [2340,2339],
  .add 2439 [(982,true),(334,false),(2140,true),(931,false),(339,true),(969,false)] [2065,1229,501,503,506,529,531,524,523,507,518,504,511,502,113,123,2056,110,1225,1216,1217,1223,106,1228,477,1241,480,1210,482,1204,497,2050,492,2315],
  .add 2440 [(692,false),(2920,true),(1467,true),(633,false)] [899,882,1831,2211,1795,854,868,871,2367,2371,886,1835,908,1748,826,1730,2359,1723,855,1721,872,2261,887,814,904,821,825],
  .add 2441 [(2920,true),(1467,true),(2902,false)] [2368,1838,1749,1731,1724,2441,2394,1721,1722,1723,303,1730,815,1748,821,1835,825,904,881,867,2367,887,866,872,861,853,2271,2357,2200,1792,2206,1816],
  .add 2442 [(1373,true),(633,false)] [784,787,777,738,741,773,735,722,769,726,727,717,719,2280,2393,714,715,286,245,241,237],
  .add 2443 [(2902,true),(1483,true)] [2209,2356,1790,1792,1788,1780,2357,1785,1774,853,2004,2366,2443,917],
  .add 2444 [(1408,true),(2790,true),(661,true)] [820,821,819,2338,814,272,314,812,1689,270,1693,1685],
]

theorem transition45 : runPrefix prefix45 state45 depth = some state46 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
