import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk043

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix44 : List TreeAction := [
  .add 2425 [(2241,false),(3023,false)] [1985,1973],
  .add 2426 [(2242,false),(3022,false)] [1985,1974],
  .add 2427 [(2245,false),(3019,false)] [1985,1975],
  .add 2428 [(2250,false),(3014,false)] [1985,1976],
  .add 2429 [(2252,false),(3012,false)] [1985,1977],
  .add 2430 [(2253,false),(3011,false)] [1985,1978],
  .add 2431 [(2254,false),(3010,false)] [1985,1979],
  .add 2432 [(2257,false),(3007,false)] [1985,1981],
  .add 2433 [(2258,false),(3006,false)] [1985,1982],
  .add 2434 [(2259,false),(3005,false)] [1985,1983],
]

theorem transition44 : runPrefix prefix44 state44 depth = some state45 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
