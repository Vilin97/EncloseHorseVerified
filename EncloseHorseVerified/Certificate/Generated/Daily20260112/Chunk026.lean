import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk025

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix26 : List TreeAction := [
  .add 2245 [(1432,true),(675,true),(633,false)] [843,846,840,833,834,321,320,282],
  .add 2246 [(1427,true),(1387,true),(677,true),(679,true),(603,false),(601,false)] [835,836,296,292,246,242,801],
  .add 2247 [(1433,true),(1427,false),(675,true),(633,false)] [838,844,847,841,833,834,321,320,282],
  .add 2248 [(675,false),(676,true),(678,true),(1446,true)] [336,337,338,324,323,864,328,329,332,859],
  .add 2249 [(679,false),(1443,true),(676,true)] [338,337,331,332,329,859],
  .add 2250 [(1427,true),(1387,true),(1455,true),(603,false),(601,false),(633,false)] [881,867,835,836,2249,2246,887,866,861,2250,328,2247],
  .add 2251 [(1312,true),(567,false)] [250,726,727,248,227],
  .add 2252 [(1274,true),(485,false)] [228,700,702,695,697,663,692,676,661,682,683,672,660,680,681,669,670,197,226,223,208,220,216],
  .add 2253 [(1375,true),(1320,false),(599,true),(633,false)] [739,794,792,743,777,722,725,773,719,713,769,235,283,767,281],
  .add 2254 [(655,false),(656,true),(1440,true)] [333,334,306,307,311,855,850],
]

theorem transition26 : runPrefix prefix26 state26 depth = some state27 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
