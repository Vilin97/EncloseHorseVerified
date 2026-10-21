import EncloseHorseVerified.Certificate.Generated.Daily20260107.LookupNode007

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.Lookup

def t148 : Tree := .nil
theorem eq148 : t148.clauses = ScoreNodes.c148 := by rfl

def t149 : Tree := .nil
theorem eq149 : t149.clauses = ScoreNodes.c149 := by rfl

def m150 : Tree := (.node 1 (.leaf [(205,true),(1298,true)]) (.node 1 (.leaf [(203,true),(1298,true)]) (.leaf [(203,true),(205,true),(1299,true)])))
theorem merge150 : m150.clauses = ScoreNodes.m150 := by rfl

def t150 : Tree := .node 0 (.node 0 t148 t149) m150
theorem eq150 : t150.clauses = ScoreNodes.c150 :=
  cat_eq _ (cat_eq _ eq148 eq149) merge150

def m151 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1298,false),(1300,true)]) (.leaf [(1299,false),(1301,true)])) (.node 1 (.leaf [(1296,false),(1300,true)]) (.leaf [(1296,false),(1298,false),(1301,true)]))) (.node 2 (.node 1 (.leaf [(1296,false),(1299,false),(1302,true)]) (.leaf [(1297,false),(1301,true)])) (.node 1 (.leaf [(1297,false),(1298,false),(1302,true)]) (.leaf [(1297,false),(1299,false),(1303,true)]))))
theorem merge151 : m151.clauses = ScoreNodes.m151 := by rfl

def t151 : Tree := .node 6 (.node 3 t147 t150) m151
theorem eq151 : t151.clauses = ScoreNodes.c151 :=
  cat_eq _ (cat_eq _ eq147 eq150) merge151

def t152 : Tree := .nil
theorem eq152 : t152.clauses = ScoreNodes.c152 := by rfl

def t153 : Tree := .nil
theorem eq153 : t153.clauses = ScoreNodes.c153 := by rfl

def m154 : Tree := (.node 1 (.leaf [(209,true),(1304,true)]) (.node 1 (.leaf [(207,true),(1304,true)]) (.leaf [(207,true),(209,true),(1305,true)])))
theorem merge154 : m154.clauses = ScoreNodes.m154 := by rfl

def t154 : Tree := .node 0 (.node 0 t152 t153) m154
theorem eq154 : t154.clauses = ScoreNodes.c154 :=
  cat_eq _ (cat_eq _ eq152 eq153) merge154

def t155 : Tree := .nil
theorem eq155 : t155.clauses = ScoreNodes.c155 := by rfl

def t156 : Tree := .nil
theorem eq156 : t156.clauses = ScoreNodes.c156 := by rfl

def t157 : Tree := .nil
theorem eq157 : t157.clauses = ScoreNodes.c157 := by rfl

def m158 : Tree := (.node 1 (.leaf [(215,true),(1306,true)]) (.node 1 (.leaf [(213,true),(1306,true)]) (.leaf [(213,true),(215,true),(1307,true)])))
theorem merge158 : m158.clauses = ScoreNodes.m158 := by rfl

def t158 : Tree := .node 0 (.node 0 t156 t157) m158
theorem eq158 : t158.clauses = ScoreNodes.c158 :=
  cat_eq _ (cat_eq _ eq156 eq157) merge158

def m159 : Tree := (.node 2 (.node 1 (.leaf [(1306,false),(1308,true)]) (.leaf [(1307,false),(1309,true)])) (.node 1 (.leaf [(211,true),(1308,true)]) (.node 1 (.leaf [(211,true),(1306,false),(1309,true)]) (.leaf [(211,true),(1307,false),(1310,true)]))))
theorem merge159 : m159.clauses = ScoreNodes.m159 := by rfl

def t159 : Tree := .node 3 (.node 0 t155 t158) m159
theorem eq159 : t159.clauses = ScoreNodes.c159 :=
  cat_eq _ (cat_eq _ eq155 eq158) merge159

def m160 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(1308,false),(1311,true)]) (.leaf [(1309,false),(1312,true)])) (.node 1 (.leaf [(1310,false),(1313,true)]) (.node 1 (.leaf [(1304,false),(1311,true)]) (.leaf [(1304,false),(1308,false),(1312,true)])))) (.node 3 (.node 1 (.leaf [(1304,false),(1309,false),(1313,true)]) (.node 1 (.leaf [(1304,false),(1310,false),(1314,true)]) (.leaf [(1305,false),(1312,true)]))) (.node 1 (.leaf [(1305,false),(1308,false),(1313,true)]) (.node 1 (.leaf [(1305,false),(1309,false),(1314,true)]) (.leaf [(1305,false),(1310,false),(1315,true)])))))
theorem merge160 : m160.clauses = ScoreNodes.m160 := by rfl

def t160 : Tree := .node 11 (.node 3 t154 t159) m160
theorem eq160 : t160.clauses = ScoreNodes.c160 :=
  cat_eq _ (cat_eq _ eq154 eq159) merge160

def m161 : Tree := (.node 14 (.node 7 (.node 3 (.node 1 (.leaf [(1311,false),(1316,true)]) (.node 1 (.leaf [(1312,false),(1317,true)]) (.leaf [(1313,false),(1318,true)]))) (.node 2 (.node 1 (.leaf [(1314,false),(1319,true)]) (.leaf [(1315,false),(1320,true)])) (.node 1 (.leaf [(1300,false),(1316,true)]) (.leaf [(1300,false),(1311,false),(1317,true)])))) (.node 3 (.node 1 (.leaf [(1300,false),(1312,false),(1318,true)]) (.node 1 (.leaf [(1300,false),(1313,false),(1319,true)]) (.leaf [(1300,false),(1314,false),(1320,true)]))) (.node 2 (.node 1 (.leaf [(1300,false),(1315,false),(1321,true)]) (.leaf [(1301,false),(1317,true)])) (.node 1 (.leaf [(1301,false),(1311,false),(1318,true)]) (.leaf [(1301,false),(1312,false),(1319,true)]))))) (.node 7 (.node 3 (.node 1 (.leaf [(1301,false),(1313,false),(1320,true)]) (.node 1 (.leaf [(1301,false),(1314,false),(1321,true)]) (.leaf [(1301,false),(1315,false),(1322,true)]))) (.node 2 (.node 1 (.leaf [(1302,false),(1318,true)]) (.leaf [(1302,false),(1311,false),(1319,true)])) (.node 1 (.leaf [(1302,false),(1312,false),(1320,true)]) (.leaf [(1302,false),(1313,false),(1321,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1302,false),(1314,false),(1322,true)]) (.leaf [(1302,false),(1315,false),(1323,true)])) (.node 1 (.leaf [(1303,false),(1319,true)]) (.leaf [(1303,false),(1311,false),(1320,true)]))) (.node 2 (.node 1 (.leaf [(1303,false),(1312,false),(1321,true)]) (.leaf [(1303,false),(1313,false),(1322,true)])) (.node 1 (.leaf [(1303,false),(1314,false),(1323,true)]) (.leaf [(1303,false),(1315,false),(1324,true)]))))))
theorem merge161 : m161.clauses = ScoreNodes.m161 := by rfl

def t161 : Tree := .node 36 (.node 14 t151 t160) m161
theorem eq161 : t161.clauses = ScoreNodes.c161 :=
  cat_eq _ (cat_eq _ eq151 eq160) merge161

def m162 : Tree := (.node 49 (.node 24 (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1316,false),(1325,true)]) (.node 1 (.leaf [(1317,false),(1326,true)]) (.leaf [(1318,false),(1327,true)]))) (.node 1 (.leaf [(1319,false),(1328,true)]) (.node 1 (.leaf [(1320,false),(1329,true)]) (.leaf [(1321,false),(1330,true)])))) (.node 3 (.node 1 (.leaf [(1322,false),(1331,true)]) (.node 1 (.leaf [(1323,false),(1332,true)]) (.leaf [(1324,false),(1333,true)]))) (.node 1 (.leaf [(1287,false),(1325,true)]) (.node 1 (.leaf [(1287,false),(1316,false),(1326,true)]) (.leaf [(1287,false),(1317,false),(1327,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1287,false),(1318,false),(1328,true)]) (.node 1 (.leaf [(1287,false),(1319,false),(1329,true)]) (.leaf [(1287,false),(1320,false),(1330,true)]))) (.node 1 (.leaf [(1287,false),(1321,false),(1331,true)]) (.node 1 (.leaf [(1287,false),(1322,false),(1332,true)]) (.leaf [(1287,false),(1323,false),(1333,true)])))) (.node 3 (.node 1 (.leaf [(1287,false),(1324,false),(1334,true)]) (.node 1 (.leaf [(1288,false),(1326,true)]) (.leaf [(1288,false),(1316,false),(1327,true)]))) (.node 1 (.leaf [(1288,false),(1317,false),(1328,true)]) (.node 1 (.leaf [(1288,false),(1318,false),(1329,true)]) (.leaf [(1288,false),(1319,false),(1330,true)])))))) (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1288,false),(1320,false),(1331,true)]) (.node 1 (.leaf [(1288,false),(1321,false),(1332,true)]) (.leaf [(1288,false),(1322,false),(1333,true)]))) (.node 1 (.leaf [(1288,false),(1323,false),(1334,true)]) (.node 1 (.leaf [(1288,false),(1324,false),(1335,true)]) (.leaf [(1289,false),(1327,true)])))) (.node 3 (.node 1 (.leaf [(1289,false),(1316,false),(1328,true)]) (.node 1 (.leaf [(1289,false),(1317,false),(1329,true)]) (.leaf [(1289,false),(1318,false),(1330,true)]))) (.node 1 (.leaf [(1289,false),(1319,false),(1331,true)]) (.node 1 (.leaf [(1289,false),(1320,false),(1332,true)]) (.leaf [(1289,false),(1321,false),(1333,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1289,false),(1322,false),(1334,true)]) (.node 1 (.leaf [(1289,false),(1323,false),(1335,true)]) (.leaf [(1289,false),(1324,false),(1336,true)]))) (.node 1 (.leaf [(1290,false),(1328,true)]) (.node 1 (.leaf [(1290,false),(1316,false),(1329,true)]) (.leaf [(1290,false),(1317,false),(1330,true)])))) (.node 3 (.node 1 (.leaf [(1290,false),(1318,false),(1331,true)]) (.node 1 (.leaf [(1290,false),(1319,false),(1332,true)]) (.leaf [(1290,false),(1320,false),(1333,true)]))) (.node 2 (.node 1 (.leaf [(1290,false),(1321,false),(1334,true)]) (.leaf [(1290,false),(1322,false),(1335,true)])) (.node 1 (.leaf [(1290,false),(1323,false),(1336,true)]) (.leaf [(1290,false),(1324,false),(1337,true)]))))))) (.node 25 (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1291,false),(1329,true)]) (.node 1 (.leaf [(1291,false),(1316,false),(1330,true)]) (.leaf [(1291,false),(1317,false),(1331,true)]))) (.node 1 (.leaf [(1291,false),(1318,false),(1332,true)]) (.node 1 (.leaf [(1291,false),(1319,false),(1333,true)]) (.leaf [(1291,false),(1320,false),(1334,true)])))) (.node 3 (.node 1 (.leaf [(1291,false),(1321,false),(1335,true)]) (.node 1 (.leaf [(1291,false),(1322,false),(1336,true)]) (.leaf [(1291,false),(1323,false),(1337,true)]))) (.node 1 (.leaf [(1291,false),(1324,false),(1338,true)]) (.node 1 (.leaf [(1292,false),(1330,true)]) (.leaf [(1292,false),(1316,false),(1331,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1292,false),(1317,false),(1332,true)]) (.node 1 (.leaf [(1292,false),(1318,false),(1333,true)]) (.leaf [(1292,false),(1319,false),(1334,true)]))) (.node 1 (.leaf [(1292,false),(1320,false),(1335,true)]) (.node 1 (.leaf [(1292,false),(1321,false),(1336,true)]) (.leaf [(1292,false),(1322,false),(1337,true)])))) (.node 3 (.node 1 (.leaf [(1292,false),(1323,false),(1338,true)]) (.node 1 (.leaf [(1292,false),(1324,false),(1339,true)]) (.leaf [(1293,false),(1331,true)]))) (.node 2 (.node 1 (.leaf [(1293,false),(1316,false),(1332,true)]) (.leaf [(1293,false),(1317,false),(1333,true)])) (.node 1 (.leaf [(1293,false),(1318,false),(1334,true)]) (.leaf [(1293,false),(1319,false),(1335,true)])))))) (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1293,false),(1320,false),(1336,true)]) (.node 1 (.leaf [(1293,false),(1321,false),(1337,true)]) (.leaf [(1293,false),(1322,false),(1338,true)]))) (.node 1 (.leaf [(1293,false),(1323,false),(1339,true)]) (.node 1 (.leaf [(1293,false),(1324,false),(1340,true)]) (.leaf [(1294,false),(1332,true)])))) (.node 3 (.node 1 (.leaf [(1294,false),(1316,false),(1333,true)]) (.node 1 (.leaf [(1294,false),(1317,false),(1334,true)]) (.leaf [(1294,false),(1318,false),(1335,true)]))) (.node 1 (.leaf [(1294,false),(1319,false),(1336,true)]) (.node 1 (.leaf [(1294,false),(1320,false),(1337,true)]) (.leaf [(1294,false),(1321,false),(1338,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1294,false),(1322,false),(1339,true)]) (.node 1 (.leaf [(1294,false),(1323,false),(1340,true)]) (.leaf [(1294,false),(1324,false),(1341,true)]))) (.node 1 (.leaf [(1295,false),(1333,true)]) (.node 1 (.leaf [(1295,false),(1316,false),(1334,true)]) (.leaf [(1295,false),(1317,false),(1335,true)])))) (.node 3 (.node 1 (.leaf [(1295,false),(1318,false),(1336,true)]) (.node 1 (.leaf [(1295,false),(1319,false),(1337,true)]) (.leaf [(1295,false),(1320,false),(1338,true)]))) (.node 2 (.node 1 (.leaf [(1295,false),(1321,false),(1339,true)]) (.leaf [(1295,false),(1322,false),(1340,true)])) (.node 1 (.leaf [(1295,false),(1323,false),(1341,true)]) (.leaf [(1295,false),(1324,false),(1342,true)]))))))))
theorem merge162 : m162.clauses = ScoreNodes.m162 := by rfl

def t162 : Tree := .node 130 (.node 65 t144 t161) m162
theorem eq162 : t162.clauses = ScoreNodes.c162 :=
  cat_eq _ (cat_eq _ eq144 eq161) merge162

def t163 : Tree := .nil
theorem eq163 : t163.clauses = ScoreNodes.c163 := by rfl

def t164 : Tree := .nil
theorem eq164 : t164.clauses = ScoreNodes.c164 := by rfl

def m165 : Tree := (.node 1 (.leaf [(221,true),(1343,true)]) (.node 1 (.leaf [(219,true),(1343,true)]) (.leaf [(219,true),(221,true),(1344,true)])))
theorem merge165 : m165.clauses = ScoreNodes.m165 := by rfl

def t165 : Tree := .node 0 (.node 0 t163 t164) m165
theorem eq165 : t165.clauses = ScoreNodes.c165 :=
  cat_eq _ (cat_eq _ eq163 eq164) merge165

def t166 : Tree := .nil
theorem eq166 : t166.clauses = ScoreNodes.c166 := by rfl

def t167 : Tree := .nil
theorem eq167 : t167.clauses = ScoreNodes.c167 := by rfl

def m168 : Tree := (.node 1 (.leaf [(225,true),(1345,true)]) (.node 1 (.leaf [(223,true),(1345,true)]) (.leaf [(223,true),(225,true),(1346,true)])))
theorem merge168 : m168.clauses = ScoreNodes.m168 := by rfl

def t168 : Tree := .node 0 (.node 0 t166 t167) m168
theorem eq168 : t168.clauses = ScoreNodes.c168 :=
  cat_eq _ (cat_eq _ eq166 eq167) merge168


end EncloseHorse.Certificate.Generated.Daily20260107.Lookup
