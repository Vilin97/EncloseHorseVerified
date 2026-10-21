import EncloseHorseVerified.Certificate.Generated.Daily20260112.Data

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix0 : List TreeAction := [
  .add 1985 [(53,false),(51,true)] [9,11],
  .add 1986 [(79,false),(41,true)] [1,18],
  .add 1987 [(81,false),(43,true)] [3,20],
  .add 1988 [(83,false),(45,true)] [5,21],
  .add 1989 [(91,false),(89,true)] [22,24],
  .add 1990 [(117,false),(79,true)] [17,32],
  .add 1991 [(119,false),(81,true)] [19,33],
  .add 1992 [(127,false),(125,true)] [34,37],
  .add 1993 [(129,false),(127,true)] [36,38],
  .add 1994 [(185,false),(183,true)] [57,62],
]

theorem transition0 : runPrefix prefix0 state0 depth = some state1 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
