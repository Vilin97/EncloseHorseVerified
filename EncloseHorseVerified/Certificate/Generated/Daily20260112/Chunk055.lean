import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk054

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix55 : List TreeAction := [
  .add 2535 [(523,false),(561,true),(524,true),(1264,true)] [699,677,673,207,208,670,671,672,210,676,698,692,682,683,680,681,220,2392,223],
  .add 2536 [(1184,true),(445,true)] [641,2403,637,615,2400,613,619,611,612,174,609,610,2388,173,171],
  .add 2537 [(1126,true),(443,true)] [611,612,609,610,2388,173,171],
  .add 2538 [(1374,true),(633,false),(1319,false),(601,true)] [738,791,788,742,777,2497,773,281,769,767],
  .add 2539 [(1060,true),(405,true)] [567,569,564,553,560,552,148,551,2387],
  .add 2540 [(1086,true),(931,false),(2406,true),(1060,false)] [571,527,582,580,528,574,520,547,518,546,511,2297,138,123,2101,1344,1375,2096,2471,1354],
  .add 2541 [(633,true)] [2004,2368,1785,2209,1788,1790],
  .add 2542 [(1453,true)] [2542,2244],
  .add 2543 [(1464,true)] [2543,896],
  .add 2544 [(1072,true),(406,false),(2406,true),(2278,false),(409,true)] [556,558,564,567,572,574,568,547,548,566,546,536,559,2297,535,557,1343,534,135,2095,118,137,1353,1334,1368,1336,1370,1341,2375,1363,1404],
]

theorem transition55 : runPrefix prefix55 state55 depth = some state56 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
