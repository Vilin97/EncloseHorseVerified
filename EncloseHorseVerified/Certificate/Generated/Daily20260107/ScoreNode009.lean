import EncloseHorseVerified.Certificate.Generated.Daily20260107.ScoreNode008

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes

def t169 : CounterTree := .node [1347,1348,1349,1350] t165 t168
def m169 : CNF := [[(1345,false),(1347,true)],[(1346,false),(1348,true)],[(1343,false),(1347,true)],[(1343,false),(1345,false),(1348,true)],[(1343,false),(1346,false),(1349,true)],[(1344,false),(1348,true)],[(1344,false),(1345,false),(1349,true)],[(1344,false),(1346,false),(1350,true)]]
theorem merge169 : mergeClauses t165.outputLits t168.outputLits [1347,1348,1349,1350] = m169 := by rfl

def c169 : CNF := c165 ++ c168 ++ m169
theorem eq169 : t169.clauses = c169 := by
  change t165.clauses ++ t168.clauses ++ mergeClauses t165.outputLits t168.outputLits [1347,1348,1349,1350] = c169
  exact concat3_congr eq165 eq168 merge169

def t170 : CounterTree := .leaf (227,false)
def c170 : CNF := []
theorem eq170 : t170.clauses = c170 := rfl

def t171 : CounterTree := .leaf (233,false)
def c171 : CNF := []
theorem eq171 : t171.clauses = c171 := rfl

def t172 : CounterTree := .node [1351,1352] t170 t171
def m172 : CNF := [[(233,true),(1351,true)],[(227,true),(1351,true)],[(227,true),(233,true),(1352,true)]]
theorem merge172 : mergeClauses t170.outputLits t171.outputLits [1351,1352] = m172 := by rfl

def c172 : CNF := c170 ++ c171 ++ m172
theorem eq172 : t172.clauses = c172 := by
  change t170.clauses ++ t171.clauses ++ mergeClauses t170.outputLits t171.outputLits [1351,1352] = c172
  exact concat3_congr eq170 eq171 merge172

def t173 : CounterTree := .leaf (235,false)
def c173 : CNF := []
theorem eq173 : t173.clauses = c173 := rfl

def t174 : CounterTree := .leaf (237,false)
def c174 : CNF := []
theorem eq174 : t174.clauses = c174 := rfl

def t175 : CounterTree := .leaf (241,false)
def c175 : CNF := []
theorem eq175 : t175.clauses = c175 := rfl

def t176 : CounterTree := .node [1353,1354] t174 t175
def m176 : CNF := [[(241,true),(1353,true)],[(237,true),(1353,true)],[(237,true),(241,true),(1354,true)]]
theorem merge176 : mergeClauses t174.outputLits t175.outputLits [1353,1354] = m176 := by rfl

def c176 : CNF := c174 ++ c175 ++ m176
theorem eq176 : t176.clauses = c176 := by
  change t174.clauses ++ t175.clauses ++ mergeClauses t174.outputLits t175.outputLits [1353,1354] = c176
  exact concat3_congr eq174 eq175 merge176

def t177 : CounterTree := .node [1355,1356,1357] t173 t176
def m177 : CNF := [[(1353,false),(1355,true)],[(1354,false),(1356,true)],[(235,true),(1355,true)],[(235,true),(1353,false),(1356,true)],[(235,true),(1354,false),(1357,true)]]
theorem merge177 : mergeClauses t173.outputLits t176.outputLits [1355,1356,1357] = m177 := by rfl

def c177 : CNF := c173 ++ c176 ++ m177
theorem eq177 : t177.clauses = c177 := by
  change t173.clauses ++ t176.clauses ++ mergeClauses t173.outputLits t176.outputLits [1355,1356,1357] = c177
  exact concat3_congr eq173 eq176 merge177

def t178 : CounterTree := .node [1358,1359,1360,1361,1362] t172 t177
def m178 : CNF := [[(1355,false),(1358,true)],[(1356,false),(1359,true)],[(1357,false),(1360,true)],[(1351,false),(1358,true)],[(1351,false),(1355,false),(1359,true)],[(1351,false),(1356,false),(1360,true)],[(1351,false),(1357,false),(1361,true)],[(1352,false),(1359,true)],[(1352,false),(1355,false),(1360,true)],[(1352,false),(1356,false),(1361,true)],[(1352,false),(1357,false),(1362,true)]]
theorem merge178 : mergeClauses t172.outputLits t177.outputLits [1358,1359,1360,1361,1362] = m178 := by rfl

def c178 : CNF := c172 ++ c177 ++ m178
theorem eq178 : t178.clauses = c178 := by
  change t172.clauses ++ t177.clauses ++ mergeClauses t172.outputLits t177.outputLits [1358,1359,1360,1361,1362] = c178
  exact concat3_congr eq172 eq177 merge178

def t179 : CounterTree := .node [1363,1364,1365,1366,1367,1368,1369,1370,1371] t169 t178
def m179 : CNF := [[(1358,false),(1363,true)],[(1359,false),(1364,true)],[(1360,false),(1365,true)],[(1361,false),(1366,true)],[(1362,false),(1367,true)],[(1347,false),(1363,true)],[(1347,false),(1358,false),(1364,true)],[(1347,false),(1359,false),(1365,true)],[(1347,false),(1360,false),(1366,true)],[(1347,false),(1361,false),(1367,true)],[(1347,false),(1362,false),(1368,true)],[(1348,false),(1364,true)],[(1348,false),(1358,false),(1365,true)],[(1348,false),(1359,false),(1366,true)],[(1348,false),(1360,false),(1367,true)],[(1348,false),(1361,false),(1368,true)],[(1348,false),(1362,false),(1369,true)],[(1349,false),(1365,true)],[(1349,false),(1358,false),(1366,true)],[(1349,false),(1359,false),(1367,true)],[(1349,false),(1360,false),(1368,true)],[(1349,false),(1361,false),(1369,true)],[(1349,false),(1362,false),(1370,true)],[(1350,false),(1366,true)],[(1350,false),(1358,false),(1367,true)],[(1350,false),(1359,false),(1368,true)],[(1350,false),(1360,false),(1369,true)],[(1350,false),(1361,false),(1370,true)],[(1350,false),(1362,false),(1371,true)]]
theorem merge179 : mergeClauses t169.outputLits t178.outputLits [1363,1364,1365,1366,1367,1368,1369,1370,1371] = m179 := by rfl

def c179 : CNF := c169 ++ c178 ++ m179
theorem eq179 : t179.clauses = c179 := by
  change t169.clauses ++ t178.clauses ++ mergeClauses t169.outputLits t178.outputLits [1363,1364,1365,1366,1367,1368,1369,1370,1371] = c179
  exact concat3_congr eq169 eq178 merge179

def t180 : CounterTree := .leaf (243,false)
def c180 : CNF := []
theorem eq180 : t180.clauses = c180 := rfl

def t181 : CounterTree := .leaf (249,false)
def c181 : CNF := []
theorem eq181 : t181.clauses = c181 := rfl

def t182 : CounterTree := .node [1372,1373] t180 t181
def m182 : CNF := [[(249,true),(1372,true)],[(243,true),(1372,true)],[(243,true),(249,true),(1373,true)]]
theorem merge182 : mergeClauses t180.outputLits t181.outputLits [1372,1373] = m182 := by rfl

def c182 : CNF := c180 ++ c181 ++ m182
theorem eq182 : t182.clauses = c182 := by
  change t180.clauses ++ t181.clauses ++ mergeClauses t180.outputLits t181.outputLits [1372,1373] = c182
  exact concat3_congr eq180 eq181 merge182

def t183 : CounterTree := .leaf (251,false)
def c183 : CNF := []
theorem eq183 : t183.clauses = c183 := rfl

def t184 : CounterTree := .leaf (257,false)
def c184 : CNF := []
theorem eq184 : t184.clauses = c184 := rfl

def t185 : CounterTree := .node [1374,1375] t183 t184
def m185 : CNF := [[(257,true),(1374,true)],[(251,true),(1374,true)],[(251,true),(257,true),(1375,true)]]
theorem merge185 : mergeClauses t183.outputLits t184.outputLits [1374,1375] = m185 := by rfl

def c185 : CNF := c183 ++ c184 ++ m185
theorem eq185 : t185.clauses = c185 := by
  change t183.clauses ++ t184.clauses ++ mergeClauses t183.outputLits t184.outputLits [1374,1375] = c185
  exact concat3_congr eq183 eq184 merge185

def t186 : CounterTree := .node [1376,1377,1378,1379] t182 t185
def m186 : CNF := [[(1374,false),(1376,true)],[(1375,false),(1377,true)],[(1372,false),(1376,true)],[(1372,false),(1374,false),(1377,true)],[(1372,false),(1375,false),(1378,true)],[(1373,false),(1377,true)],[(1373,false),(1374,false),(1378,true)],[(1373,false),(1375,false),(1379,true)]]
theorem merge186 : mergeClauses t182.outputLits t185.outputLits [1376,1377,1378,1379] = m186 := by rfl

def c186 : CNF := c182 ++ c185 ++ m186
theorem eq186 : t186.clauses = c186 := by
  change t182.clauses ++ t185.clauses ++ mergeClauses t182.outputLits t185.outputLits [1376,1377,1378,1379] = c186
  exact concat3_congr eq182 eq185 merge186

def t187 : CounterTree := .node [1380,1381] t184 t184
def m187 : CNF := [[(257,true),(1380,true)],[(257,true),(1380,true)],[(257,true),(257,true),(1381,true)]]
theorem merge187 : mergeClauses t184.outputLits t184.outputLits [1380,1381] = m187 := by rfl

def c187 : CNF := c184 ++ c184 ++ m187
theorem eq187 : t187.clauses = c187 := by
  change t184.clauses ++ t184.clauses ++ mergeClauses t184.outputLits t184.outputLits [1380,1381] = c187
  exact concat3_congr eq184 eq184 merge187


end EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes
