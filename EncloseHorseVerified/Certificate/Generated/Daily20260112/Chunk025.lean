import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk024

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix25 : List TreeAction := [
  .add 2235 [(2589,false),(3005,true)] [2216,1936],
  .add 2236 [(2594,false),(3010,true)] [2216,1954],
  .add 2237 [(3031,false),(3081,true)] [2079,1965],
  .add 2238 [(3031,false)] [1985,2238],
  .add 2239 [(2981,false)] [2239,2234],
  .add 2240 [(1408,true),(623,false),(619,false),(617,false),(1441,true)] [335,333,334,820,821,819,814,815,272,813,264,317,267,307,311,856,851],
  .add 2241 [(1439,false),(1454,true),(637,false)] [336,880,868,869,886,862,843,324,840,288],
  .add 2242 [(1362,true),(1466,true),(577,false),(589,false),(599,false)] [333,335,334,910,827,898,881,876,777,779,773,775,757,759,769,764,765,754,755,749,750,766,763,752,232,238,233,260,276,263,273,2241,825,903,2242,852,854,849,850,307,317,311,264,272,267,819,813,824,816],
  .add 2243 [(1453,true),(633,false)] [336,879,885,865,843,846,862,840,833,834,324,321,320,282],
  .add 2244 [(1441,false),(1456,true),(633,false)] [336,882,876,877,888,862,843,846,324,840,833,834,321,320,282],
]

theorem transition25 : runPrefix prefix25 state25 depth = some state26 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
