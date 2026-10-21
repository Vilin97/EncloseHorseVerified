import EncloseHorseVerified.Certificate.Generated.Daily20260107.ScoreNode007

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes

def t148 : CounterTree := .leaf (203,false)
def c148 : CNF := []
theorem eq148 : t148.clauses = c148 := rfl

def t149 : CounterTree := .leaf (205,false)
def c149 : CNF := []
theorem eq149 : t149.clauses = c149 := rfl

def t150 : CounterTree := .node [1298,1299] t148 t149
def m150 : CNF := [[(205,true),(1298,true)],[(203,true),(1298,true)],[(203,true),(205,true),(1299,true)]]
theorem merge150 : mergeClauses t148.outputLits t149.outputLits [1298,1299] = m150 := by rfl

def c150 : CNF := c148 ++ c149 ++ m150
theorem eq150 : t150.clauses = c150 := by
  change t148.clauses ++ t149.clauses ++ mergeClauses t148.outputLits t149.outputLits [1298,1299] = c150
  exact concat3_congr eq148 eq149 merge150

def t151 : CounterTree := .node [1300,1301,1302,1303] t147 t150
def m151 : CNF := [[(1298,false),(1300,true)],[(1299,false),(1301,true)],[(1296,false),(1300,true)],[(1296,false),(1298,false),(1301,true)],[(1296,false),(1299,false),(1302,true)],[(1297,false),(1301,true)],[(1297,false),(1298,false),(1302,true)],[(1297,false),(1299,false),(1303,true)]]
theorem merge151 : mergeClauses t147.outputLits t150.outputLits [1300,1301,1302,1303] = m151 := by rfl

def c151 : CNF := c147 ++ c150 ++ m151
theorem eq151 : t151.clauses = c151 := by
  change t147.clauses ++ t150.clauses ++ mergeClauses t147.outputLits t150.outputLits [1300,1301,1302,1303] = c151
  exact concat3_congr eq147 eq150 merge151

def t152 : CounterTree := .leaf (207,false)
def c152 : CNF := []
theorem eq152 : t152.clauses = c152 := rfl

def t153 : CounterTree := .leaf (209,false)
def c153 : CNF := []
theorem eq153 : t153.clauses = c153 := rfl

def t154 : CounterTree := .node [1304,1305] t152 t153
def m154 : CNF := [[(209,true),(1304,true)],[(207,true),(1304,true)],[(207,true),(209,true),(1305,true)]]
theorem merge154 : mergeClauses t152.outputLits t153.outputLits [1304,1305] = m154 := by rfl

def c154 : CNF := c152 ++ c153 ++ m154
theorem eq154 : t154.clauses = c154 := by
  change t152.clauses ++ t153.clauses ++ mergeClauses t152.outputLits t153.outputLits [1304,1305] = c154
  exact concat3_congr eq152 eq153 merge154

def t155 : CounterTree := .leaf (211,false)
def c155 : CNF := []
theorem eq155 : t155.clauses = c155 := rfl

def t156 : CounterTree := .leaf (213,false)
def c156 : CNF := []
theorem eq156 : t156.clauses = c156 := rfl

def t157 : CounterTree := .leaf (215,false)
def c157 : CNF := []
theorem eq157 : t157.clauses = c157 := rfl

def t158 : CounterTree := .node [1306,1307] t156 t157
def m158 : CNF := [[(215,true),(1306,true)],[(213,true),(1306,true)],[(213,true),(215,true),(1307,true)]]
theorem merge158 : mergeClauses t156.outputLits t157.outputLits [1306,1307] = m158 := by rfl

def c158 : CNF := c156 ++ c157 ++ m158
theorem eq158 : t158.clauses = c158 := by
  change t156.clauses ++ t157.clauses ++ mergeClauses t156.outputLits t157.outputLits [1306,1307] = c158
  exact concat3_congr eq156 eq157 merge158

def t159 : CounterTree := .node [1308,1309,1310] t155 t158
def m159 : CNF := [[(1306,false),(1308,true)],[(1307,false),(1309,true)],[(211,true),(1308,true)],[(211,true),(1306,false),(1309,true)],[(211,true),(1307,false),(1310,true)]]
theorem merge159 : mergeClauses t155.outputLits t158.outputLits [1308,1309,1310] = m159 := by rfl

def c159 : CNF := c155 ++ c158 ++ m159
theorem eq159 : t159.clauses = c159 := by
  change t155.clauses ++ t158.clauses ++ mergeClauses t155.outputLits t158.outputLits [1308,1309,1310] = c159
  exact concat3_congr eq155 eq158 merge159

def t160 : CounterTree := .node [1311,1312,1313,1314,1315] t154 t159
def m160 : CNF := [[(1308,false),(1311,true)],[(1309,false),(1312,true)],[(1310,false),(1313,true)],[(1304,false),(1311,true)],[(1304,false),(1308,false),(1312,true)],[(1304,false),(1309,false),(1313,true)],[(1304,false),(1310,false),(1314,true)],[(1305,false),(1312,true)],[(1305,false),(1308,false),(1313,true)],[(1305,false),(1309,false),(1314,true)],[(1305,false),(1310,false),(1315,true)]]
theorem merge160 : mergeClauses t154.outputLits t159.outputLits [1311,1312,1313,1314,1315] = m160 := by rfl

def c160 : CNF := c154 ++ c159 ++ m160
theorem eq160 : t160.clauses = c160 := by
  change t154.clauses ++ t159.clauses ++ mergeClauses t154.outputLits t159.outputLits [1311,1312,1313,1314,1315] = c160
  exact concat3_congr eq154 eq159 merge160

def t161 : CounterTree := .node [1316,1317,1318,1319,1320,1321,1322,1323,1324] t151 t160
def m161 : CNF := [[(1311,false),(1316,true)],[(1312,false),(1317,true)],[(1313,false),(1318,true)],[(1314,false),(1319,true)],[(1315,false),(1320,true)],[(1300,false),(1316,true)],[(1300,false),(1311,false),(1317,true)],[(1300,false),(1312,false),(1318,true)],[(1300,false),(1313,false),(1319,true)],[(1300,false),(1314,false),(1320,true)],[(1300,false),(1315,false),(1321,true)],[(1301,false),(1317,true)],[(1301,false),(1311,false),(1318,true)],[(1301,false),(1312,false),(1319,true)],[(1301,false),(1313,false),(1320,true)],[(1301,false),(1314,false),(1321,true)],[(1301,false),(1315,false),(1322,true)],[(1302,false),(1318,true)],[(1302,false),(1311,false),(1319,true)],[(1302,false),(1312,false),(1320,true)],[(1302,false),(1313,false),(1321,true)],[(1302,false),(1314,false),(1322,true)],[(1302,false),(1315,false),(1323,true)],[(1303,false),(1319,true)],[(1303,false),(1311,false),(1320,true)],[(1303,false),(1312,false),(1321,true)],[(1303,false),(1313,false),(1322,true)],[(1303,false),(1314,false),(1323,true)],[(1303,false),(1315,false),(1324,true)]]
theorem merge161 : mergeClauses t151.outputLits t160.outputLits [1316,1317,1318,1319,1320,1321,1322,1323,1324] = m161 := by rfl

def c161 : CNF := c151 ++ c160 ++ m161
theorem eq161 : t161.clauses = c161 := by
  change t151.clauses ++ t160.clauses ++ mergeClauses t151.outputLits t160.outputLits [1316,1317,1318,1319,1320,1321,1322,1323,1324] = c161
  exact concat3_congr eq151 eq160 merge161

def t162 : CounterTree := .node [1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342] t144 t161
def m162 : CNF := [[(1316,false),(1325,true)],[(1317,false),(1326,true)],[(1318,false),(1327,true)],[(1319,false),(1328,true)],[(1320,false),(1329,true)],[(1321,false),(1330,true)],[(1322,false),(1331,true)],[(1323,false),(1332,true)],[(1324,false),(1333,true)],[(1287,false),(1325,true)],[(1287,false),(1316,false),(1326,true)],[(1287,false),(1317,false),(1327,true)],[(1287,false),(1318,false),(1328,true)],[(1287,false),(1319,false),(1329,true)],[(1287,false),(1320,false),(1330,true)],[(1287,false),(1321,false),(1331,true)],[(1287,false),(1322,false),(1332,true)],[(1287,false),(1323,false),(1333,true)],[(1287,false),(1324,false),(1334,true)],[(1288,false),(1326,true)],[(1288,false),(1316,false),(1327,true)],[(1288,false),(1317,false),(1328,true)],[(1288,false),(1318,false),(1329,true)],[(1288,false),(1319,false),(1330,true)],[(1288,false),(1320,false),(1331,true)],[(1288,false),(1321,false),(1332,true)],[(1288,false),(1322,false),(1333,true)],[(1288,false),(1323,false),(1334,true)],[(1288,false),(1324,false),(1335,true)],[(1289,false),(1327,true)],[(1289,false),(1316,false),(1328,true)],[(1289,false),(1317,false),(1329,true)],[(1289,false),(1318,false),(1330,true)],[(1289,false),(1319,false),(1331,true)],[(1289,false),(1320,false),(1332,true)],[(1289,false),(1321,false),(1333,true)],[(1289,false),(1322,false),(1334,true)],[(1289,false),(1323,false),(1335,true)],[(1289,false),(1324,false),(1336,true)],[(1290,false),(1328,true)],[(1290,false),(1316,false),(1329,true)],[(1290,false),(1317,false),(1330,true)],[(1290,false),(1318,false),(1331,true)],[(1290,false),(1319,false),(1332,true)],[(1290,false),(1320,false),(1333,true)],[(1290,false),(1321,false),(1334,true)],[(1290,false),(1322,false),(1335,true)],[(1290,false),(1323,false),(1336,true)],[(1290,false),(1324,false),(1337,true)],[(1291,false),(1329,true)],[(1291,false),(1316,false),(1330,true)],[(1291,false),(1317,false),(1331,true)],[(1291,false),(1318,false),(1332,true)],[(1291,false),(1319,false),(1333,true)],[(1291,false),(1320,false),(1334,true)],[(1291,false),(1321,false),(1335,true)],[(1291,false),(1322,false),(1336,true)],[(1291,false),(1323,false),(1337,true)],[(1291,false),(1324,false),(1338,true)],[(1292,false),(1330,true)],[(1292,false),(1316,false),(1331,true)],[(1292,false),(1317,false),(1332,true)],[(1292,false),(1318,false),(1333,true)],[(1292,false),(1319,false),(1334,true)],[(1292,false),(1320,false),(1335,true)],[(1292,false),(1321,false),(1336,true)],[(1292,false),(1322,false),(1337,true)],[(1292,false),(1323,false),(1338,true)],[(1292,false),(1324,false),(1339,true)],[(1293,false),(1331,true)],[(1293,false),(1316,false),(1332,true)],[(1293,false),(1317,false),(1333,true)],[(1293,false),(1318,false),(1334,true)],[(1293,false),(1319,false),(1335,true)],[(1293,false),(1320,false),(1336,true)],[(1293,false),(1321,false),(1337,true)],[(1293,false),(1322,false),(1338,true)],[(1293,false),(1323,false),(1339,true)],[(1293,false),(1324,false),(1340,true)],[(1294,false),(1332,true)],[(1294,false),(1316,false),(1333,true)],[(1294,false),(1317,false),(1334,true)],[(1294,false),(1318,false),(1335,true)],[(1294,false),(1319,false),(1336,true)],[(1294,false),(1320,false),(1337,true)],[(1294,false),(1321,false),(1338,true)],[(1294,false),(1322,false),(1339,true)],[(1294,false),(1323,false),(1340,true)],[(1294,false),(1324,false),(1341,true)],[(1295,false),(1333,true)],[(1295,false),(1316,false),(1334,true)],[(1295,false),(1317,false),(1335,true)],[(1295,false),(1318,false),(1336,true)],[(1295,false),(1319,false),(1337,true)],[(1295,false),(1320,false),(1338,true)],[(1295,false),(1321,false),(1339,true)],[(1295,false),(1322,false),(1340,true)],[(1295,false),(1323,false),(1341,true)],[(1295,false),(1324,false),(1342,true)]]
theorem merge162 : mergeClauses t144.outputLits t161.outputLits [1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342] = m162 := by rfl

def c162 : CNF := c144 ++ c161 ++ m162
theorem eq162 : t162.clauses = c162 := by
  change t144.clauses ++ t161.clauses ++ mergeClauses t144.outputLits t161.outputLits [1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342] = c162
  exact concat3_congr eq144 eq161 merge162

def t163 : CounterTree := .leaf (219,false)
def c163 : CNF := []
theorem eq163 : t163.clauses = c163 := rfl

def t164 : CounterTree := .leaf (221,false)
def c164 : CNF := []
theorem eq164 : t164.clauses = c164 := rfl

def t165 : CounterTree := .node [1343,1344] t163 t164
def m165 : CNF := [[(221,true),(1343,true)],[(219,true),(1343,true)],[(219,true),(221,true),(1344,true)]]
theorem merge165 : mergeClauses t163.outputLits t164.outputLits [1343,1344] = m165 := by rfl

def c165 : CNF := c163 ++ c164 ++ m165
theorem eq165 : t165.clauses = c165 := by
  change t163.clauses ++ t164.clauses ++ mergeClauses t163.outputLits t164.outputLits [1343,1344] = c165
  exact concat3_congr eq163 eq164 merge165

def t166 : CounterTree := .leaf (223,false)
def c166 : CNF := []
theorem eq166 : t166.clauses = c166 := rfl

def t167 : CounterTree := .leaf (225,false)
def c167 : CNF := []
theorem eq167 : t167.clauses = c167 := rfl

def t168 : CounterTree := .node [1345,1346] t166 t167
def m168 : CNF := [[(225,true),(1345,true)],[(223,true),(1345,true)],[(223,true),(225,true),(1346,true)]]
theorem merge168 : mergeClauses t166.outputLits t167.outputLits [1345,1346] = m168 := by rfl

def c168 : CNF := c166 ++ c167 ++ m168
theorem eq168 : t168.clauses = c168 := by
  change t166.clauses ++ t167.clauses ++ mergeClauses t166.outputLits t167.outputLits [1345,1346] = c168
  exact concat3_congr eq166 eq167 merge168


end EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes
