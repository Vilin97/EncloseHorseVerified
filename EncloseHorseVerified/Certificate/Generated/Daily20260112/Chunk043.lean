import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk042

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix43 : List TreeAction := [
  .add 2415 [(2768,false),(2933,false)] [2240,1910],
  .add 2416 [(2769,false),(2932,false)] [2240,1912],
  .add 2417 [(2589,false),(2979,false)] [2239,1940],
  .add 2418 [(2234,false),(3030,false)] [1985,1966],
  .add 2419 [(2235,false),(3029,false)] [1985,1967],
  .add 2420 [(2236,false),(3028,false)] [1985,1968],
  .add 2421 [(2237,false),(3027,false)] [1985,1969],
  .add 2422 [(2238,false),(3026,false)] [1985,1970],
  .add 2423 [(2239,false),(3025,false)] [1985,1971],
  .add 2424 [(2240,false),(3024,false)] [1985,1972],
]

theorem transition43 : runPrefix prefix43 state43 depth = some state44 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
