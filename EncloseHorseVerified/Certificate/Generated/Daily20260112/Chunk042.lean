import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk041

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix42 : List TreeAction := [
  .add 2405 [(1484,false),(1498,true)] [2345,932],
  .add 2406 [(1496,true),(1481,false)] [2363,933],
  .add 2407 [(1482,false),(1497,true)] [2363,934],
  .add 2408 [(1483,false),(1498,true)] [2363,935],
  .add 2409 [(1484,false),(1499,true)] [2363,936],
  .add 2410 [(1099,false),(1499,false)] [948,944],
  .add 2411 [(1100,false),(1498,false)] [948,945],
  .add 2412 [(1101,false),(1497,false)] [948,946],
  .add 2413 [(1102,false),(1496,false)] [948,947],
  .add 2414 [(2766,false),(2935,false)] [2240,1906],
]

theorem transition42 : runPrefix prefix42 state42 depth = some state43 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
