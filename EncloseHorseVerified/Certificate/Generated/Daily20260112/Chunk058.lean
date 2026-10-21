import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk057

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix58 : List TreeAction := [
  .add 2565 [(1373,true)] [2542,2443],
  .add 2566 [(2096,true),(910,true),(297,true),(299,true)] [1198,1199,98,94,479],
  .add 2567 [(1237,false),(1302,false),(1481,true),(515,false),(561,false),(1264,true),(499,false)] [2501,699,677,923,794,717,722,672,675,676,679,205,698,667,668,214,690,200,687,688,685,686,212,213,2262,229,733,745,742,723,2504,720,217],
  .add 2568 [(1249,true),(563,false)] [682,683,680,681,220,2392,223],
  .add 2569 [(1249,false),(1496,true),(1275,true)] [2542,2407,2520,2521],
  .add 2570 [(1496,true),(515,false),(525,false),(561,false),(1275,true),(499,false)] [2501,2542,701,699,2407,923,2570,682,2291,2569,680,681,210,2392,247,669,2568,672,714,715,676,679,241,237,698,668,690,200,687,688,686,212,2262,229,733,2264,2257,2265,759],
  .add 2571 [(261,false),(1071,false),(981,true),(859,false),(795,false),(297,true),(299,true),(1102,true)] [530,498,483,481,2325,98,434,477,479,480,94,482,96,496,424,527,426,579,439,597,444,465,451],
  .add 2572 [(1071,true),(371,true)] [571,573,2560,548,152,536,534,535],
  .add 2573 [(932,true),(2102,true),(297,true),(299,true)] [2053,2308,480,482,498,497,483,492,481,2315,2567,2050,1206],
  .add 2574 [(183,true),(2253,true),(786,true),(882,true)] [2381,2382,2383,1995,1996,2312,1115,2380,2379,1088,2039,1099,2377,1027,1090,1100,2011,1029,1092,970,1038,1095,972,1055,1150,2510,2021,1060,1316,1002,1070],
]

theorem transition58 : runPrefix prefix58 state58 depth = some state59 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
