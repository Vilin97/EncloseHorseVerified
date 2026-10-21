import EncloseHorseVerified.Certificate.Generated.Daily20260107.Chunk097
import EncloseHorseVerified.Certificate.RupBits

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def prefix98 : List TreeAction := [
  .add 9290 [(548,true)] [9288,9259,651],
  .add 9291 [(496,false)] [9289,580],
  .add 9292 [(134,false)] [9289,582],
  .add 9293 [(434,false)] [9291,9269,669],
  .add 9294 [(138,false)] [9292,577],
  .add 9295 [(136,false)] [9292,578],
  .add 9296 [(421,false)] [9294,486],
  .add 9297 [(139,true)] [9295,9246,153],
  .add 9298 [(109,false)] [9297,8251],
  .add 9299 [(127,true)] [9298,9293,9270,9290,9283,9296,9287,9247,9185],
]

theorem transition98 : RupBits.runPrefix prefix98 state98 depth = some state99 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260107
