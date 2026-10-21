import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk029

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix30 : List TreeAction := [
  .add 2285 [(2827,true),(2819,false),(653,true),(1391,true),(643,true)] [1719,1727,1733,1737,1729,1712,1720,1709,300,295,802,806],
  .add 2286 [(1324,true),(641,false)] [250,738,741,735,722,726,727,717,248,714,245,293],
  .add 2287 [(1374,true),(1312,false),(1324,false),(633,false)] [791,788,739,777,779,736,773,775,757,759,730,731,771,764,765,754,755,749,750,728,729,2002,280,762,763,752,753,255,278,259,277,262,276,265,273,268,271],
  .add 2288 [(1466,true),(1387,true),(601,false),(603,false),(1414,false),(633,false)] [336,898,903,2251,890,838,2248,843,324,886,862,865],
  .add 2289 [(2155,true),(882,true)] [2068,2072,2063,1188,2061,2046,1215,1174,1214,1172,1998,1997,431,408,432,409,435,413,442,454],
  .add 2290 [(1249,true),(603,false)] [228,682,683,680,681,243,226,223],
  .add 2291 [(1148,true),(2503,true)] [623,624,621,622,1999,182,1444,187,1448,1445],
  .add 2292 [(537,true),(498,true),(536,true),(2677,true)] [2152,1519,1539,1550,1514,200,1505,202,1502],
  .add 2293 [(931,true),(2297,true)] [114,494,496,492,482,486,487,480,112,109,477,124,122,1344],
  .add 2294 [(300,true),(301,true),(2297,true),(982,true),(926,false)] [109,124,1344,123,122,511,477,518,480,520,482,531,497],
]

theorem transition30 : runPrefix prefix30 state30 depth = some state31 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
