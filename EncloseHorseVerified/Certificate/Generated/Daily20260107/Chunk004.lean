import EncloseHorseVerified.Certificate.Generated.Daily20260107.Chunk003
import EncloseHorseVerified.Certificate.RupFast

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def prefix4 : List TreeAction := [
  .add 4590 [(1162,false),(1204,true)] [4504,2357],
  .add 4591 [(1163,false),(1205,true)] [4504,2358],
  .add 4592 [(1164,false),(1206,true)] [4504,2359],
  .add 4593 [(1165,false),(1207,true)] [4504,2360],
  .add 4594 [(1166,false),(1208,true)] [4504,2361],
  .add 4595 [(1167,false),(1209,true)] [4504,2362],
  .add 4596 [(1168,false),(1210,true)] [4504,2363],
  .add 4597 [(1169,false),(1211,true)] [4504,2364],
  .add 4598 [(1170,false),(1212,true)] [4504,2365],
  .add 4599 [(1171,false),(1213,true)] [4504,2366],
  .add 4600 [(1172,false),(1214,true)] [4504,2367],
  .add 4601 [(1173,false),(1215,true)] [4504,2368],
  .add 4602 [(1174,false),(1216,true)] [4504,2369],
  .add 4603 [(1175,false),(1217,true)] [4504,2370],
  .add 4604 [(1176,false),(1218,true)] [4504,2371],
  .add 4605 [(1177,false),(1219,true)] [4504,2372],
  .add 4606 [(1178,false),(1220,true)] [4504,2373],
  .add 4607 [(1179,false),(1221,true)] [4504,2374],
  .add 4608 [(1180,false),(1222,true)] [4504,2375],
  .add 4609 [(1183,false),(1225,true)] [4504,2376],
  .add 4610 [(1192,false),(1234,true)] [4504,2377],
  .add 4611 [(977,false),(1202,true)] [4552,2378],
  .add 4612 [(984,false),(1209,true)] [4552,2483],
  .add 4613 [(988,false),(1213,true)] [4552,2545],
  .add 4614 [(990,false),(1215,true)] [4552,2583],
  .add 4615 [(992,false),(1217,true)] [4552,2618],
  .add 4616 [(993,false),(1218,true)] [4552,2647],
  .add 4617 [(998,false),(1223,true)] [4552,2716],
  .add 4618 [(1004,false),(1229,true)] [4552,2847],
  .add 4619 [(1279,true)] [205,2955],
  .add 4620 [(1277,false),(1280,true)] [205,2956],
  .add 4621 [(1278,false),(1281,true)] [205,2957],
  .add 4622 [(1282,true)] [4620,2958],
  .add 4623 [(1275,false),(1283,true)] [4620,2961],
  .add 4624 [(1276,false),(1284,true)] [4620,2964],
  .add 4625 [(1287,true)] [4623,2967],
  .add 4626 [(1271,false),(1288,true)] [4623,2972],
  .add 4627 [(1272,false),(1289,true)] [4623,2977],
  .add 4628 [(1306,true)] [237,3000],
  .add 4629 [(213,true),(1307,true)] [237,3001],
  .add 4630 [(1308,true)] [4629,3002],
  .add 4631 [(211,true),(1309,true)] [4629,3004],
  .add 4632 [(1311,true)] [4631,3006],
  .add 4633 [(1304,false),(1312,true)] [4631,3009],
  .add 4634 [(1316,true)] [4633,3015],
  .add 4635 [(1300,false),(1317,true)] [4633,3020],
  .add 4636 [(1301,false),(1318,true)] [4633,3025],
  .add 4637 [(1302,false),(1319,true)] [4633,3029],
  .add 4638 [(1325,true)] [4635,3036],
  .add 4639 [(1326,true)] [4626,4635,3039],
]

theorem transition4 : RupFast.runPrefix prefix4 state4 depth = some state5 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260107
