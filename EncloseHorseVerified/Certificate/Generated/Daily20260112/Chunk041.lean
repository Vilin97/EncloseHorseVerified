import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk040

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix41 : List TreeAction := [
  .add 2395 [(661,false),(698,true)] [335,317],
  .add 2396 [(675,false),(712,true)] [336,324],
  .add 2397 [(677,false),(714,true)] [337,329],
  .add 2398 [(679,false),(716,true)] [338,332],
  .add 2399 [(1144,false),(1152,true)] [2341,626],
  .add 2400 [(1145,false),(1153,true)] [2341,627],
  .add 2401 [(1166,false),(1173,true)] [2342,636],
  .add 2402 [(1134,false),(1184,true)] [2343,643],
  .add 2403 [(1135,false),(1185,true)] [2343,645],
  .add 2404 [(1289,true),(1275,false)] [2344,707],
]

theorem transition41 : runPrefix prefix41 state41 depth = some state42 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
