import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk048

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix49 : List TreeAction := [
  .add 2475 [(895,true),(2250,true)] [2332,2333,2381,1318,2380,2379,2377,2033,1032,2011,2012,1030,1035,970,981,1040,972,2017,1057,996,1061,1004,1072],
  .add 2476 [(183,true),(2250,true)] [2381,1996,2312,2380,1162,1148,2379,2043,2377,2033,2034,1179,2011,2012,1030,1036,1188,970,981,1041,2072,972,2017,1058,1289,996,1062,1321,1004,1073],
  .add 2477 [(2907,true),(1445,true),(2855,false)] [1797,861,2271,2200,2206,1826,1827,2207,1798,2201,1787,1786,2397,863,857,858,2399,2398,1801],
  .add 2478 [(613,true),(2722,true),(1317,true)] [1595,2462],
  .add 2479 [(1334,true),(613,false),(617,true)] [749,750,260,256],
  .add 2480 [(613,false),(1312,false),(1376,true),(1356,false),(617,true)] [2480,759,780,793,739,736,730,731,729,2002,255],
  .add 2481 [(1454,true),(2933,true),(2822,false),(1432,false),(2803,false),(633,false),(2855,false)] [890,886,865,860,862,857,858,2397,2399,2398,1786,2248,1801,1787,835,836,2201,1798,296,292,2207,1828,1711,1862,1713,1770,1741],
  .add 2482 [(613,true),(2742,true),(1377,true),(617,true),(625,true)] [1596,2184,2178,1604,1599,1615,2174,2365,1593,2479,1602,737,2177,740,1627,796,1576,2463,2164],
  .add 2483 [(603,false),(600,true),(1466,true),(633,false),(1414,false)] [2244,907,831,811,2289,244],
  .add 2484 [(1249,false),(1312,false),(1275,true),(2677,true),(1376,true),(1356,false),(617,true)] [2439,2310,2265,2262,759,736,780,739,793],
]

theorem transition49 : runPrefix prefix49 state49 depth = some state50 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
