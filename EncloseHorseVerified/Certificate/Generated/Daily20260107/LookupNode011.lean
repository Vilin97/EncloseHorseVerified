import EncloseHorseVerified.Certificate.Generated.Daily20260107.LookupNode010

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.Lookup

def t203 : Tree := .nil
theorem eq203 : t203.clauses = ScoreNodes.c203 := by rfl

def t204 : Tree := .nil
theorem eq204 : t204.clauses = ScoreNodes.c204 := by rfl

def t205 : Tree := .nil
theorem eq205 : t205.clauses = ScoreNodes.c205 := by rfl

def m206 : Tree := (.node 1 (.leaf [(279,true),(1465,true)]) (.node 1 (.leaf [(277,true),(1465,true)]) (.leaf [(277,true),(279,true),(1466,true)])))
theorem merge206 : m206.clauses = ScoreNodes.m206 := by rfl

def t206 : Tree := .node 0 (.node 0 t204 t205) m206
theorem eq206 : t206.clauses = ScoreNodes.c206 :=
  cat_eq _ (cat_eq _ eq204 eq205) merge206

def m207 : Tree := (.node 2 (.node 1 (.leaf [(1465,false),(1467,true)]) (.leaf [(1466,false),(1468,true)])) (.node 1 (.leaf [(275,true),(1467,true)]) (.node 1 (.leaf [(275,true),(1465,false),(1468,true)]) (.leaf [(275,true),(1466,false),(1469,true)]))))
theorem merge207 : m207.clauses = ScoreNodes.m207 := by rfl

def t207 : Tree := .node 3 (.node 0 t203 t206) m207
theorem eq207 : t207.clauses = ScoreNodes.c207 :=
  cat_eq _ (cat_eq _ eq203 eq206) merge207

def m208 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(1467,false),(1470,true)]) (.leaf [(1468,false),(1471,true)])) (.node 1 (.leaf [(1469,false),(1472,true)]) (.node 1 (.leaf [(1463,false),(1470,true)]) (.leaf [(1463,false),(1467,false),(1471,true)])))) (.node 3 (.node 1 (.leaf [(1463,false),(1468,false),(1472,true)]) (.node 1 (.leaf [(1463,false),(1469,false),(1473,true)]) (.leaf [(1464,false),(1471,true)]))) (.node 1 (.leaf [(1464,false),(1467,false),(1472,true)]) (.node 1 (.leaf [(1464,false),(1468,false),(1473,true)]) (.leaf [(1464,false),(1469,false),(1474,true)])))))
theorem merge208 : m208.clauses = ScoreNodes.m208 := by rfl

def t208 : Tree := .node 11 (.node 3 t202 t207) m208
theorem eq208 : t208.clauses = ScoreNodes.c208 :=
  cat_eq _ (cat_eq _ eq202 eq207) merge208

def m209 : Tree := (.node 14 (.node 7 (.node 3 (.node 1 (.leaf [(1470,false),(1475,true)]) (.node 1 (.leaf [(1471,false),(1476,true)]) (.leaf [(1472,false),(1477,true)]))) (.node 2 (.node 1 (.leaf [(1473,false),(1478,true)]) (.leaf [(1474,false),(1479,true)])) (.node 1 (.leaf [(1459,false),(1475,true)]) (.leaf [(1459,false),(1470,false),(1476,true)])))) (.node 3 (.node 1 (.leaf [(1459,false),(1471,false),(1477,true)]) (.node 1 (.leaf [(1459,false),(1472,false),(1478,true)]) (.leaf [(1459,false),(1473,false),(1479,true)]))) (.node 2 (.node 1 (.leaf [(1459,false),(1474,false),(1480,true)]) (.leaf [(1460,false),(1476,true)])) (.node 1 (.leaf [(1460,false),(1470,false),(1477,true)]) (.leaf [(1460,false),(1471,false),(1478,true)]))))) (.node 7 (.node 3 (.node 1 (.leaf [(1460,false),(1472,false),(1479,true)]) (.node 1 (.leaf [(1460,false),(1473,false),(1480,true)]) (.leaf [(1460,false),(1474,false),(1481,true)]))) (.node 2 (.node 1 (.leaf [(1461,false),(1477,true)]) (.leaf [(1461,false),(1470,false),(1478,true)])) (.node 1 (.leaf [(1461,false),(1471,false),(1479,true)]) (.leaf [(1461,false),(1472,false),(1480,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1461,false),(1473,false),(1481,true)]) (.leaf [(1461,false),(1474,false),(1482,true)])) (.node 1 (.leaf [(1462,false),(1478,true)]) (.leaf [(1462,false),(1470,false),(1479,true)]))) (.node 2 (.node 1 (.leaf [(1462,false),(1471,false),(1480,true)]) (.leaf [(1462,false),(1472,false),(1481,true)])) (.node 1 (.leaf [(1462,false),(1473,false),(1482,true)]) (.leaf [(1462,false),(1474,false),(1483,true)]))))))
theorem merge209 : m209.clauses = ScoreNodes.m209 := by rfl

def t209 : Tree := .node 36 (.node 14 t199 t208) m209
theorem eq209 : t209.clauses = ScoreNodes.c209 :=
  cat_eq _ (cat_eq _ eq199 eq208) merge209

def t210 : Tree := .nil
theorem eq210 : t210.clauses = ScoreNodes.c210 := by rfl

def t211 : Tree := .nil
theorem eq211 : t211.clauses = ScoreNodes.c211 := by rfl

def m212 : Tree := (.node 1 (.leaf [(283,true),(1484,true)]) (.node 1 (.leaf [(281,true),(1484,true)]) (.leaf [(281,true),(283,true),(1485,true)])))
theorem merge212 : m212.clauses = ScoreNodes.m212 := by rfl

def t212 : Tree := .node 0 (.node 0 t210 t211) m212
theorem eq212 : t212.clauses = ScoreNodes.c212 :=
  cat_eq _ (cat_eq _ eq210 eq211) merge212

def m213 : Tree := (.node 1 (.leaf [(283,true),(1486,true)]) (.node 1 (.leaf [(283,true),(1486,true)]) (.leaf [(283,true),(283,true),(1487,true)])))
theorem merge213 : m213.clauses = ScoreNodes.m213 := by rfl

def t213 : Tree := .node 0 (.node 0 t211 t211) m213
theorem eq213 : t213.clauses = ScoreNodes.c213 :=
  cat_eq _ (cat_eq _ eq211 eq211) merge213

def m214 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1486,false),(1488,true)]) (.leaf [(1487,false),(1489,true)])) (.node 1 (.leaf [(1484,false),(1488,true)]) (.leaf [(1484,false),(1486,false),(1489,true)]))) (.node 2 (.node 1 (.leaf [(1484,false),(1487,false),(1490,true)]) (.leaf [(1485,false),(1489,true)])) (.node 1 (.leaf [(1485,false),(1486,false),(1490,true)]) (.leaf [(1485,false),(1487,false),(1491,true)]))))
theorem merge214 : m214.clauses = ScoreNodes.m214 := by rfl

def t214 : Tree := .node 6 (.node 3 t212 t213) m214
theorem eq214 : t214.clauses = ScoreNodes.c214 :=
  cat_eq _ (cat_eq _ eq212 eq213) merge214

def t215 : Tree := .nil
theorem eq215 : t215.clauses = ScoreNodes.c215 := by rfl

def m216 : Tree := (.node 1 (.leaf [(285,true),(1492,true)]) (.node 1 (.leaf [(283,true),(1492,true)]) (.leaf [(283,true),(285,true),(1493,true)])))
theorem merge216 : m216.clauses = ScoreNodes.m216 := by rfl

def t216 : Tree := .node 0 (.node 0 t211 t215) m216
theorem eq216 : t216.clauses = ScoreNodes.c216 :=
  cat_eq _ (cat_eq _ eq211 eq215) merge216

def t217 : Tree := .nil
theorem eq217 : t217.clauses = ScoreNodes.c217 := by rfl

def t218 : Tree := .nil
theorem eq218 : t218.clauses = ScoreNodes.c218 := by rfl

def t219 : Tree := .nil
theorem eq219 : t219.clauses = ScoreNodes.c219 := by rfl

def m220 : Tree := (.node 1 (.leaf [(295,true),(1494,true)]) (.node 1 (.leaf [(293,true),(1494,true)]) (.leaf [(293,true),(295,true),(1495,true)])))
theorem merge220 : m220.clauses = ScoreNodes.m220 := by rfl

def t220 : Tree := .node 0 (.node 0 t218 t219) m220
theorem eq220 : t220.clauses = ScoreNodes.c220 :=
  cat_eq _ (cat_eq _ eq218 eq219) merge220

def m221 : Tree := (.node 2 (.node 1 (.leaf [(1494,false),(1496,true)]) (.leaf [(1495,false),(1497,true)])) (.node 1 (.leaf [(291,true),(1496,true)]) (.node 1 (.leaf [(291,true),(1494,false),(1497,true)]) (.leaf [(291,true),(1495,false),(1498,true)]))))
theorem merge221 : m221.clauses = ScoreNodes.m221 := by rfl

def t221 : Tree := .node 3 (.node 0 t217 t220) m221
theorem eq221 : t221.clauses = ScoreNodes.c221 :=
  cat_eq _ (cat_eq _ eq217 eq220) merge221


end EncloseHorse.Certificate.Generated.Daily20260107.Lookup
