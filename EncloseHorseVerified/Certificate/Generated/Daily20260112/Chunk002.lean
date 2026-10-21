import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk001

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix2 : List TreeAction := [
  .add 2005 [(43,true),(1524,true)] [952],
  .add 2006 [(45,true),(1539,true)] [956],
  .add 2007 [(51,true),(1547,true)] [959],
  .add 2008 [(51,true),(1576,true)] [966],
  .add 2009 [(53,true),(1584,true)] [968],
  .add 2010 [(57,true),(1586,true)] [969],
  .add 2011 [(57,true),(1600,true)] [975],
  .add 2012 [(1607,true)] [16,984],
  .add 2013 [(1611,true)] [2013,985],
  .add 2014 [(1615,true)] [2014,986],
]

theorem transition2 : runPrefix prefix2 state2 depth = some state3 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
