import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk035

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix36 : List TreeAction := [
  .add 2345 [(747,true),(74,false),(71,false),(145,true)] [345,347,360,359,348,355,346,353,342,351,352,14,30,48],
  .add 2346 [(736,true),(1740,true),(145,true)] [351,352,28,48,1034,30],
  .add 2347 [(144,true),(1943,true),(145,true)] [44,48,1101,1104,1108],
  .add 2348 [(1950,false),(180,false),(786,true),(2138,false),(2061,false),(1962,false),(195,true),(2203,true),(1914,false),(1958,false),(2048,false),(185,true)] [1120,1125,1131,2043,1181,1190,1265,1302,1153,1140,1141,1152,1132,1299,1126,1268,1121,1191,66,1183,374,1169,380,2041,385,81,368,363,366],
  .add 2349 [(770,true),(2025,true),(195,true)] [373,374,371,372,66,67,68,1156],
  .add 2350 [(180,false),(786,true),(2138,false),(2061,false),(1962,false),(195,true),(2203,true),(1914,false),(1936,false),(1958,false),(2048,false),(185,true),(145,true)] [2043,1181,1103,1105,1110,1120,1125,1131,1139,1151,1296,1271,1193,1160,1158,2350,380,385,368,2349,366,1111,363,1106,49,1104],
  .add 2351 [(180,true),(1988,true),(1967,false),(1936,false),(1956,false),(1939,false),(181,true)] [45,53,1101,1114,1107,1117,1111,1134,1141],
  .add 2352 [(882,true),(824,false),(2162,true),(221,true)] [409,413,457,454,414,442,411,435,437,402,403,432,426,92,82,431,2307,423,424,95,1998,1172,108,105,1214,1174,1217,1215,2327,2059,1232],
  .add 2353 [(854,true),(2121,true),(259,true)] [423,424,105,96,1217,108],
  .add 2354 [(220,true),(865,true),(2160,true),(2049,false),(221,true)] [92,82,1199,2041,2052,1171,1210,1184,1190,1266,1241,1228,2059,2354,426,438,432,431,2307,1998,1172,1214,1174,1215,1185,2061,1191,1240,1269],
]

theorem transition36 : runPrefix prefix36 state36 depth = some state37 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
