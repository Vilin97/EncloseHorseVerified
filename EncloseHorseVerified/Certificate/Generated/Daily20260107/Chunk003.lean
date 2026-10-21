import EncloseHorseVerified.Certificate.Generated.Daily20260107.Chunk002
import EncloseHorseVerified.Certificate.RupFast

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def prefix3 : List TreeAction := [
  .add 4540 [(1130,false),(1136,true)] [4534,1956],
  .add 4541 [(1141,true)] [4537,1973],
  .add 4542 [(1103,false),(1142,true)] [4537,1980],
  .add 4543 [(1104,false),(1143,true)] [4537,1988],
  .add 4544 [(1105,false),(1144,true)] [4537,1995],
  .add 4545 [(1106,false),(1145,true)] [4537,2003],
  .add 4546 [(1107,false),(1146,true)] [4537,2010],
  .add 4547 [(1108,false),(1147,true)] [4537,2019],
  .add 4548 [(1109,false),(1148,true)] [4537,2028],
  .add 4549 [(1110,false),(1149,true)] [4537,2036],
  .add 4550 [(1111,false),(1150,true)] [4537,2042],
  .add 4551 [(1159,true)] [4542,2051],
  .add 4552 [(1065,false),(1160,true)] [4542,2063],
  .add 4553 [(1066,false),(1161,true)] [4542,2074],
  .add 4554 [(1067,false),(1162,true)] [4542,2092],
  .add 4555 [(1068,false),(1163,true)] [4542,2106],
  .add 4556 [(1069,false),(1164,true)] [4542,2121],
  .add 4557 [(1070,false),(1165,true)] [4542,2136],
  .add 4558 [(1071,false),(1166,true)] [4542,2152],
  .add 4559 [(1072,false),(1167,true)] [4542,2167],
  .add 4560 [(1073,false),(1168,true)] [4542,2179],
  .add 4561 [(1074,false),(1169,true)] [4542,2195],
  .add 4562 [(1075,false),(1170,true)] [4542,2213],
  .add 4563 [(1076,false),(1171,true)] [4542,2228],
  .add 4564 [(1077,false),(1172,true)] [4542,2243],
  .add 4565 [(1078,false),(1173,true)] [4542,2259],
  .add 4566 [(1079,false),(1174,true)] [4542,2275],
  .add 4567 [(1081,false),(1176,true)] [4542,2306],
  .add 4568 [(1174,false),(1211,true)] [4490,2335],
  .add 4569 [(1192,false),(1229,true)] [4490,2336],
  .add 4570 [(1173,false),(1211,true)] [4491,2337],
  .add 4571 [(1192,false),(1230,true)] [4491,2338],
  .add 4572 [(1174,false),(1213,true)] [4492,2339],
  .add 4573 [(1186,false),(1225,true)] [4492,2340],
  .add 4574 [(1190,false),(1229,true)] [4492,2341],
  .add 4575 [(1171,false),(1211,true)] [4493,2342],
  .add 4576 [(1173,false),(1213,true)] [4493,2343],
  .add 4577 [(1174,false),(1214,true)] [4493,2344],
  .add 4578 [(1190,false),(1230,true)] [4493,2345],
  .add 4579 [(1161,false),(1202,true)] [4498,2346],
  .add 4580 [(1163,false),(1204,true)] [4498,2347],
  .add 4581 [(1164,false),(1205,true)] [4498,2348],
  .add 4582 [(1165,false),(1206,true)] [4498,2349],
  .add 4583 [(1171,false),(1212,true)] [4498,2350],
  .add 4584 [(1174,false),(1215,true)] [4498,2351],
  .add 4585 [(1176,false),(1217,true)] [4498,2352],
  .add 4586 [(1179,false),(1220,true)] [4498,2353],
  .add 4587 [(1192,false),(1233,true)] [4498,2354],
  .add 4588 [(1160,false),(1202,true)] [4504,2355],
  .add 4589 [(1161,false),(1203,true)] [4504,2356],
]

theorem transition3 : RupFast.runPrefix prefix3 state3 depth = some state4 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260107
