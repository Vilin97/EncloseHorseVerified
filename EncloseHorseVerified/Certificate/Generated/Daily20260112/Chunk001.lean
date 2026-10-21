import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk000

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix1 : List TreeAction := [
  .add 1995 [(221,false),(183,true)] [57,77],
  .add 1996 [(231,false),(228,true)] [84,85],
  .add 1997 [(269,false),(266,true)] [101,103],
  .add 1998 [(459,false),(456,true)] [179,180],
  .add 1999 [(465,false),(463,true)] [185,191],
  .add 2000 [(501,false),(463,true)] [185,201],
  .add 2001 [(611,false),(608,true)] [251,252],
  .add 2002 [(635,false),(633,true)] [279,284],
  .add 2003 [(671,false),(633,true)] [279,319],
  .add 2004 [(41,true),(1517,true)] [949],
]

theorem transition1 : runPrefix prefix1 state1 depth = some state2 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
