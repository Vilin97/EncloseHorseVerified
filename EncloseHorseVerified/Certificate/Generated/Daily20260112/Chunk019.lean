import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk018

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix19 : List TreeAction := [
  .add 2175 [(2725,false),(2731,true)] [2171,1607],
  .add 2176 [(2726,false),(2732,true)] [2171,1608],
  .add 2177 [(2727,false),(2733,true)] [2171,1609],
  .add 2178 [(2728,false),(2734,true)] [2171,1610],
  .add 2179 [(2738,true)] [2175,1619],
  .add 2180 [(2739,true)] [2165,2175,1620],
  .add 2181 [(2731,false),(2740,true)] [2165,1621],
  .add 2182 [(2732,false),(2741,true)] [2165,1622],
  .add 2183 [(2733,false),(2742,true)] [2165,1623],
  .add 2184 [(2734,false),(2743,true)] [2165,1624],
]

theorem transition19 : runPrefix prefix19 state19 depth = some state20 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
