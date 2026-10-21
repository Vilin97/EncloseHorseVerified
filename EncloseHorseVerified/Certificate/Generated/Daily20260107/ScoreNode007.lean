import EncloseHorseVerified.Certificate.Generated.Daily20260107.ScoreMerge127Row004

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes

def t127 : CounterTree := .node [1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266] t60 t126
def m127 : CNF := rowCNF127_0 ++ rowCNF127_1 ++ rowCNF127_2 ++ rowCNF127_3 ++ rowCNF127_4
theorem merge127 : mergeClauses t60.outputLits t126.outputLits [1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266] = m127 := by
  rw [mergeClauses_eq_mergeRows]
  have hr : thresholds t60.outputLits = rows127_0 ++ rows127_1 ++ rows127_2 ++ rows127_3 ++ rows127_4 := by rfl
  rw [hr]
  simp only [mergeRows_append, rowEq127_0, rowEq127_1, rowEq127_2, rowEq127_3, rowEq127_4, m127]

def c127 : CNF := c60 ++ c126 ++ m127
theorem eq127 : t127.clauses = c127 := by
  change t60.clauses ++ t126.clauses ++ mergeClauses t60.outputLits t126.outputLits [1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266] = c127
  exact concat3_congr eq60 eq126 merge127

def t128 : CounterTree := .leaf (173,false)
def c128 : CNF := []
theorem eq128 : t128.clauses = c128 := rfl

def t129 : CounterTree := .leaf (175,false)
def c129 : CNF := []
theorem eq129 : t129.clauses = c129 := rfl

def t130 : CounterTree := .node [1267,1268] t128 t129
def m130 : CNF := [[(175,true),(1267,true)],[(173,true),(1267,true)],[(173,true),(175,true),(1268,true)]]
theorem merge130 : mergeClauses t128.outputLits t129.outputLits [1267,1268] = m130 := by rfl

def c130 : CNF := c128 ++ c129 ++ m130
theorem eq130 : t130.clauses = c130 := by
  change t128.clauses ++ t129.clauses ++ mergeClauses t128.outputLits t129.outputLits [1267,1268] = c130
  exact concat3_congr eq128 eq129 merge130

def t131 : CounterTree := .leaf (181,false)
def c131 : CNF := []
theorem eq131 : t131.clauses = c131 := rfl

def t132 : CounterTree := .leaf (185,false)
def c132 : CNF := []
theorem eq132 : t132.clauses = c132 := rfl

def t133 : CounterTree := .node [1269,1270] t131 t132
def m133 : CNF := [[(185,true),(1269,true)],[(181,true),(1269,true)],[(181,true),(185,true),(1270,true)]]
theorem merge133 : mergeClauses t131.outputLits t132.outputLits [1269,1270] = m133 := by rfl

def c133 : CNF := c131 ++ c132 ++ m133
theorem eq133 : t133.clauses = c133 := by
  change t131.clauses ++ t132.clauses ++ mergeClauses t131.outputLits t132.outputLits [1269,1270] = c133
  exact concat3_congr eq131 eq132 merge133

def t134 : CounterTree := .node [1271,1272,1273,1274] t130 t133
def m134 : CNF := [[(1269,false),(1271,true)],[(1270,false),(1272,true)],[(1267,false),(1271,true)],[(1267,false),(1269,false),(1272,true)],[(1267,false),(1270,false),(1273,true)],[(1268,false),(1272,true)],[(1268,false),(1269,false),(1273,true)],[(1268,false),(1270,false),(1274,true)]]
theorem merge134 : mergeClauses t130.outputLits t133.outputLits [1271,1272,1273,1274] = m134 := by rfl

def c134 : CNF := c130 ++ c133 ++ m134
theorem eq134 : t134.clauses = c134 := by
  change t130.clauses ++ t133.clauses ++ mergeClauses t130.outputLits t133.outputLits [1271,1272,1273,1274] = c134
  exact concat3_congr eq130 eq133 merge134

def t135 : CounterTree := .leaf (187,false)
def c135 : CNF := []
theorem eq135 : t135.clauses = c135 := rfl

def t136 : CounterTree := .leaf (189,false)
def c136 : CNF := []
theorem eq136 : t136.clauses = c136 := rfl

def t137 : CounterTree := .node [1275,1276] t135 t136
def m137 : CNF := [[(189,true),(1275,true)],[(187,true),(1275,true)],[(187,true),(189,true),(1276,true)]]
theorem merge137 : mergeClauses t135.outputLits t136.outputLits [1275,1276] = m137 := by rfl

def c137 : CNF := c135 ++ c136 ++ m137
theorem eq137 : t137.clauses = c137 := by
  change t135.clauses ++ t136.clauses ++ mergeClauses t135.outputLits t136.outputLits [1275,1276] = c137
  exact concat3_congr eq135 eq136 merge137

def t138 : CounterTree := .leaf (191,false)
def c138 : CNF := []
theorem eq138 : t138.clauses = c138 := rfl

def t139 : CounterTree := .leaf (195,false)
def c139 : CNF := []
theorem eq139 : t139.clauses = c139 := rfl

def t140 : CounterTree := .leaf (197,false)
def c140 : CNF := []
theorem eq140 : t140.clauses = c140 := rfl

def t141 : CounterTree := .node [1277,1278] t139 t140
def m141 : CNF := [[(197,true),(1277,true)],[(195,true),(1277,true)],[(195,true),(197,true),(1278,true)]]
theorem merge141 : mergeClauses t139.outputLits t140.outputLits [1277,1278] = m141 := by rfl

def c141 : CNF := c139 ++ c140 ++ m141
theorem eq141 : t141.clauses = c141 := by
  change t139.clauses ++ t140.clauses ++ mergeClauses t139.outputLits t140.outputLits [1277,1278] = c141
  exact concat3_congr eq139 eq140 merge141

def t142 : CounterTree := .node [1279,1280,1281] t138 t141
def m142 : CNF := [[(1277,false),(1279,true)],[(1278,false),(1280,true)],[(191,true),(1279,true)],[(191,true),(1277,false),(1280,true)],[(191,true),(1278,false),(1281,true)]]
theorem merge142 : mergeClauses t138.outputLits t141.outputLits [1279,1280,1281] = m142 := by rfl

def c142 : CNF := c138 ++ c141 ++ m142
theorem eq142 : t142.clauses = c142 := by
  change t138.clauses ++ t141.clauses ++ mergeClauses t138.outputLits t141.outputLits [1279,1280,1281] = c142
  exact concat3_congr eq138 eq141 merge142

def t143 : CounterTree := .node [1282,1283,1284,1285,1286] t137 t142
def m143 : CNF := [[(1279,false),(1282,true)],[(1280,false),(1283,true)],[(1281,false),(1284,true)],[(1275,false),(1282,true)],[(1275,false),(1279,false),(1283,true)],[(1275,false),(1280,false),(1284,true)],[(1275,false),(1281,false),(1285,true)],[(1276,false),(1283,true)],[(1276,false),(1279,false),(1284,true)],[(1276,false),(1280,false),(1285,true)],[(1276,false),(1281,false),(1286,true)]]
theorem merge143 : mergeClauses t137.outputLits t142.outputLits [1282,1283,1284,1285,1286] = m143 := by rfl

def c143 : CNF := c137 ++ c142 ++ m143
theorem eq143 : t143.clauses = c143 := by
  change t137.clauses ++ t142.clauses ++ mergeClauses t137.outputLits t142.outputLits [1282,1283,1284,1285,1286] = c143
  exact concat3_congr eq137 eq142 merge143

def t144 : CounterTree := .node [1287,1288,1289,1290,1291,1292,1293,1294,1295] t134 t143
def m144 : CNF := [[(1282,false),(1287,true)],[(1283,false),(1288,true)],[(1284,false),(1289,true)],[(1285,false),(1290,true)],[(1286,false),(1291,true)],[(1271,false),(1287,true)],[(1271,false),(1282,false),(1288,true)],[(1271,false),(1283,false),(1289,true)],[(1271,false),(1284,false),(1290,true)],[(1271,false),(1285,false),(1291,true)],[(1271,false),(1286,false),(1292,true)],[(1272,false),(1288,true)],[(1272,false),(1282,false),(1289,true)],[(1272,false),(1283,false),(1290,true)],[(1272,false),(1284,false),(1291,true)],[(1272,false),(1285,false),(1292,true)],[(1272,false),(1286,false),(1293,true)],[(1273,false),(1289,true)],[(1273,false),(1282,false),(1290,true)],[(1273,false),(1283,false),(1291,true)],[(1273,false),(1284,false),(1292,true)],[(1273,false),(1285,false),(1293,true)],[(1273,false),(1286,false),(1294,true)],[(1274,false),(1290,true)],[(1274,false),(1282,false),(1291,true)],[(1274,false),(1283,false),(1292,true)],[(1274,false),(1284,false),(1293,true)],[(1274,false),(1285,false),(1294,true)],[(1274,false),(1286,false),(1295,true)]]
theorem merge144 : mergeClauses t134.outputLits t143.outputLits [1287,1288,1289,1290,1291,1292,1293,1294,1295] = m144 := by rfl

def c144 : CNF := c134 ++ c143 ++ m144
theorem eq144 : t144.clauses = c144 := by
  change t134.clauses ++ t143.clauses ++ mergeClauses t134.outputLits t143.outputLits [1287,1288,1289,1290,1291,1292,1293,1294,1295] = c144
  exact concat3_congr eq134 eq143 merge144

def t145 : CounterTree := .leaf (199,false)
def c145 : CNF := []
theorem eq145 : t145.clauses = c145 := rfl

def t146 : CounterTree := .leaf (201,false)
def c146 : CNF := []
theorem eq146 : t146.clauses = c146 := rfl

def t147 : CounterTree := .node [1296,1297] t145 t146
def m147 : CNF := [[(201,true),(1296,true)],[(199,true),(1296,true)],[(199,true),(201,true),(1297,true)]]
theorem merge147 : mergeClauses t145.outputLits t146.outputLits [1296,1297] = m147 := by rfl

def c147 : CNF := c145 ++ c146 ++ m147
theorem eq147 : t147.clauses = c147 := by
  change t145.clauses ++ t146.clauses ++ mergeClauses t145.outputLits t146.outputLits [1296,1297] = c147
  exact concat3_congr eq145 eq146 merge147


end EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes
