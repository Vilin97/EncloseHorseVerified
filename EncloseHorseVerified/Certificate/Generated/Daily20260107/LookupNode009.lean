import EncloseHorseVerified.Certificate.Generated.Daily20260107.LookupNode008

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.Lookup

def m169 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1345,false),(1347,true)]) (.leaf [(1346,false),(1348,true)])) (.node 1 (.leaf [(1343,false),(1347,true)]) (.leaf [(1343,false),(1345,false),(1348,true)]))) (.node 2 (.node 1 (.leaf [(1343,false),(1346,false),(1349,true)]) (.leaf [(1344,false),(1348,true)])) (.node 1 (.leaf [(1344,false),(1345,false),(1349,true)]) (.leaf [(1344,false),(1346,false),(1350,true)]))))
theorem merge169 : m169.clauses = ScoreNodes.m169 := by rfl

def t169 : Tree := .node 6 (.node 3 t165 t168) m169
theorem eq169 : t169.clauses = ScoreNodes.c169 :=
  cat_eq _ (cat_eq _ eq165 eq168) merge169

def t170 : Tree := .nil
theorem eq170 : t170.clauses = ScoreNodes.c170 := by rfl

def t171 : Tree := .nil
theorem eq171 : t171.clauses = ScoreNodes.c171 := by rfl

def m172 : Tree := (.node 1 (.leaf [(233,true),(1351,true)]) (.node 1 (.leaf [(227,true),(1351,true)]) (.leaf [(227,true),(233,true),(1352,true)])))
theorem merge172 : m172.clauses = ScoreNodes.m172 := by rfl

def t172 : Tree := .node 0 (.node 0 t170 t171) m172
theorem eq172 : t172.clauses = ScoreNodes.c172 :=
  cat_eq _ (cat_eq _ eq170 eq171) merge172

def t173 : Tree := .nil
theorem eq173 : t173.clauses = ScoreNodes.c173 := by rfl

def t174 : Tree := .nil
theorem eq174 : t174.clauses = ScoreNodes.c174 := by rfl

def t175 : Tree := .nil
theorem eq175 : t175.clauses = ScoreNodes.c175 := by rfl

def m176 : Tree := (.node 1 (.leaf [(241,true),(1353,true)]) (.node 1 (.leaf [(237,true),(1353,true)]) (.leaf [(237,true),(241,true),(1354,true)])))
theorem merge176 : m176.clauses = ScoreNodes.m176 := by rfl

def t176 : Tree := .node 0 (.node 0 t174 t175) m176
theorem eq176 : t176.clauses = ScoreNodes.c176 :=
  cat_eq _ (cat_eq _ eq174 eq175) merge176

def m177 : Tree := (.node 2 (.node 1 (.leaf [(1353,false),(1355,true)]) (.leaf [(1354,false),(1356,true)])) (.node 1 (.leaf [(235,true),(1355,true)]) (.node 1 (.leaf [(235,true),(1353,false),(1356,true)]) (.leaf [(235,true),(1354,false),(1357,true)]))))
theorem merge177 : m177.clauses = ScoreNodes.m177 := by rfl

def t177 : Tree := .node 3 (.node 0 t173 t176) m177
theorem eq177 : t177.clauses = ScoreNodes.c177 :=
  cat_eq _ (cat_eq _ eq173 eq176) merge177

def m178 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(1355,false),(1358,true)]) (.leaf [(1356,false),(1359,true)])) (.node 1 (.leaf [(1357,false),(1360,true)]) (.node 1 (.leaf [(1351,false),(1358,true)]) (.leaf [(1351,false),(1355,false),(1359,true)])))) (.node 3 (.node 1 (.leaf [(1351,false),(1356,false),(1360,true)]) (.node 1 (.leaf [(1351,false),(1357,false),(1361,true)]) (.leaf [(1352,false),(1359,true)]))) (.node 1 (.leaf [(1352,false),(1355,false),(1360,true)]) (.node 1 (.leaf [(1352,false),(1356,false),(1361,true)]) (.leaf [(1352,false),(1357,false),(1362,true)])))))
theorem merge178 : m178.clauses = ScoreNodes.m178 := by rfl

def t178 : Tree := .node 11 (.node 3 t172 t177) m178
theorem eq178 : t178.clauses = ScoreNodes.c178 :=
  cat_eq _ (cat_eq _ eq172 eq177) merge178

def m179 : Tree := (.node 14 (.node 7 (.node 3 (.node 1 (.leaf [(1358,false),(1363,true)]) (.node 1 (.leaf [(1359,false),(1364,true)]) (.leaf [(1360,false),(1365,true)]))) (.node 2 (.node 1 (.leaf [(1361,false),(1366,true)]) (.leaf [(1362,false),(1367,true)])) (.node 1 (.leaf [(1347,false),(1363,true)]) (.leaf [(1347,false),(1358,false),(1364,true)])))) (.node 3 (.node 1 (.leaf [(1347,false),(1359,false),(1365,true)]) (.node 1 (.leaf [(1347,false),(1360,false),(1366,true)]) (.leaf [(1347,false),(1361,false),(1367,true)]))) (.node 2 (.node 1 (.leaf [(1347,false),(1362,false),(1368,true)]) (.leaf [(1348,false),(1364,true)])) (.node 1 (.leaf [(1348,false),(1358,false),(1365,true)]) (.leaf [(1348,false),(1359,false),(1366,true)]))))) (.node 7 (.node 3 (.node 1 (.leaf [(1348,false),(1360,false),(1367,true)]) (.node 1 (.leaf [(1348,false),(1361,false),(1368,true)]) (.leaf [(1348,false),(1362,false),(1369,true)]))) (.node 2 (.node 1 (.leaf [(1349,false),(1365,true)]) (.leaf [(1349,false),(1358,false),(1366,true)])) (.node 1 (.leaf [(1349,false),(1359,false),(1367,true)]) (.leaf [(1349,false),(1360,false),(1368,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1349,false),(1361,false),(1369,true)]) (.leaf [(1349,false),(1362,false),(1370,true)])) (.node 1 (.leaf [(1350,false),(1366,true)]) (.leaf [(1350,false),(1358,false),(1367,true)]))) (.node 2 (.node 1 (.leaf [(1350,false),(1359,false),(1368,true)]) (.leaf [(1350,false),(1360,false),(1369,true)])) (.node 1 (.leaf [(1350,false),(1361,false),(1370,true)]) (.leaf [(1350,false),(1362,false),(1371,true)]))))))
theorem merge179 : m179.clauses = ScoreNodes.m179 := by rfl

def t179 : Tree := .node 36 (.node 14 t169 t178) m179
theorem eq179 : t179.clauses = ScoreNodes.c179 :=
  cat_eq _ (cat_eq _ eq169 eq178) merge179

def t180 : Tree := .nil
theorem eq180 : t180.clauses = ScoreNodes.c180 := by rfl

def t181 : Tree := .nil
theorem eq181 : t181.clauses = ScoreNodes.c181 := by rfl

def m182 : Tree := (.node 1 (.leaf [(249,true),(1372,true)]) (.node 1 (.leaf [(243,true),(1372,true)]) (.leaf [(243,true),(249,true),(1373,true)])))
theorem merge182 : m182.clauses = ScoreNodes.m182 := by rfl

def t182 : Tree := .node 0 (.node 0 t180 t181) m182
theorem eq182 : t182.clauses = ScoreNodes.c182 :=
  cat_eq _ (cat_eq _ eq180 eq181) merge182

def t183 : Tree := .nil
theorem eq183 : t183.clauses = ScoreNodes.c183 := by rfl

def t184 : Tree := .nil
theorem eq184 : t184.clauses = ScoreNodes.c184 := by rfl

def m185 : Tree := (.node 1 (.leaf [(257,true),(1374,true)]) (.node 1 (.leaf [(251,true),(1374,true)]) (.leaf [(251,true),(257,true),(1375,true)])))
theorem merge185 : m185.clauses = ScoreNodes.m185 := by rfl

def t185 : Tree := .node 0 (.node 0 t183 t184) m185
theorem eq185 : t185.clauses = ScoreNodes.c185 :=
  cat_eq _ (cat_eq _ eq183 eq184) merge185

def m186 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1374,false),(1376,true)]) (.leaf [(1375,false),(1377,true)])) (.node 1 (.leaf [(1372,false),(1376,true)]) (.leaf [(1372,false),(1374,false),(1377,true)]))) (.node 2 (.node 1 (.leaf [(1372,false),(1375,false),(1378,true)]) (.leaf [(1373,false),(1377,true)])) (.node 1 (.leaf [(1373,false),(1374,false),(1378,true)]) (.leaf [(1373,false),(1375,false),(1379,true)]))))
theorem merge186 : m186.clauses = ScoreNodes.m186 := by rfl

def t186 : Tree := .node 6 (.node 3 t182 t185) m186
theorem eq186 : t186.clauses = ScoreNodes.c186 :=
  cat_eq _ (cat_eq _ eq182 eq185) merge186

def m187 : Tree := (.node 1 (.leaf [(257,true),(1380,true)]) (.node 1 (.leaf [(257,true),(1380,true)]) (.leaf [(257,true),(257,true),(1381,true)])))
theorem merge187 : m187.clauses = ScoreNodes.m187 := by rfl

def t187 : Tree := .node 0 (.node 0 t184 t184) m187
theorem eq187 : t187.clauses = ScoreNodes.c187 :=
  cat_eq _ (cat_eq _ eq184 eq184) merge187


end EncloseHorse.Certificate.Generated.Daily20260107.Lookup
