import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk038

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix39 : List TreeAction := [
  .add 2375 [(995,true),(2284,true),(373,true),(371,true)] [533,534,121,118,1335],
  .add 2376 [(57,false),(95,true)] [25,12],
  .add 2377 [(73,false),(74,true)] [16,15],
  .add 2378 [(95,false),(133,true)] [39,26],
  .add 2379 [(133,false),(135,true)] [41,40],
  .add 2380 [(135,false),(183,true)] [57,42],
  .add 2381 [(145,false),(183,true)] [57,47],
  .add 2382 [(181,false),(183,true)] [57,55],
  .add 2383 [(301,false),(302,true)] [114,112],
  .add 2384 [(339,false),(340,true)] [127,125],
]

theorem transition39 : runPrefix prefix39 state39 depth = some state40 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
