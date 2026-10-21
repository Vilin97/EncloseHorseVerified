import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk039

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix40 : List TreeAction := [
  .add 2385 [(377,false),(378,true)] [140,139],
  .add 2386 [(402,true),(403,true)] [339,146],
  .add 2387 [(438,true),(439,true)] [339,147],
  .add 2388 [(425,true),(424,true)] [2340,186],
  .add 2389 [(465,true),(464,true)] [2340,188],
  .add 2390 [(501,true),(500,true)] [2340,189],
  .add 2391 [(567,false),(568,true)] [228,226],
  .add 2392 [(605,false),(606,true)] [250,248],
  .add 2393 [(655,false),(692,true)] [333,307],
  .add 2394 [(657,false),(694,true)] [334,311],
]

theorem transition40 : runPrefix prefix40 state40 depth = some state41 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
