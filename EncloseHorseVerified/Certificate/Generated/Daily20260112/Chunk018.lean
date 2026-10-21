import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk017

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix18 : List TreeAction := [
  .add 2165 [(2701,false),(2706,true)] [2163,1573],
  .add 2166 [(2702,false),(2707,true)] [2163,1574],
  .add 2167 [(2703,false),(2708,true)] [2163,1575],
  .add 2168 [(2715,true)] [251,1587],
  .add 2169 [(2716,true)] [250,251,1588],
  .add 2170 [(2718,true)] [2170,1589],
  .add 2171 [(2713,false),(2719,true)] [2170,1590],
  .add 2172 [(2714,false),(2719,true)] [2169,1591],
  .add 2173 [(2714,false),(2720,true)] [2170,1592],
  .add 2174 [(2730,true)] [2171,1606],
]

theorem transition18 : runPrefix prefix18 state18 depth = some state19 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
