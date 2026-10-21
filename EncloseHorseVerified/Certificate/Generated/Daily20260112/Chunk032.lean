import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk031

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix32 : List TreeAction := [
  .add 2305 [(263,true),(2126,false),(862,true),(2141,true)] [1228,1243,1211,2050,1204,1206,1210,1198,1242,97,1232,434,1215,431,1214,1998],
  .add 2306 [(859,true),(231,false)] [430,431,86,1998],
  .add 2307 [(909,true),(2097,true),(299,true)] [477,478,106,98,94,1200],
  .add 2308 [(969,true),(299,false)] [127,520,522,518,506,510,511,503,509,500,125,110,123],
  .add 2309 [(1275,true),(2677,true),(575,true),(1249,false)] [692,695,701,703,696,698,664,693,678,652,688,668,650,212,649,2293],
  .add 2310 [(2126,true),(1085,true)] [2059,2303,2302,492],
  .add 2311 [(183,true),(1984,true)] [57,41,42,47,55,1995,40,1103,1115,1118,2039,1099,1105,1116,1124,1100,1130,1110,1138],
  .add 2312 [(1275,true),(3029,true),(2931,false),(2745,false),(575,true),(1249,false)] [692,695,701,703,2310,696,698,664,1664,693,678,652,1899,688,668,650,651,1945,212,200,648,649,2138,198,202,184,2131,181,189,1462,1444,1445,2125,1448],
  .add 2313 [(980,true),(2097,true)] [525,527,2309,496,2308,482,480],
  .add 2314 [(919,true),(263,false)] [114,486,487,112,100],
]

theorem transition32 : runPrefix prefix32 state32 depth = some state33 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
