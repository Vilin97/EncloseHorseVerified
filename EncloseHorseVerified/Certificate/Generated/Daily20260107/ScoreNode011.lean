import EncloseHorseVerified.Certificate.Generated.Daily20260107.ScoreNode010

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes

def t203 : CounterTree := .leaf (275,false)
def c203 : CNF := []
theorem eq203 : t203.clauses = c203 := rfl

def t204 : CounterTree := .leaf (277,false)
def c204 : CNF := []
theorem eq204 : t204.clauses = c204 := rfl

def t205 : CounterTree := .leaf (279,false)
def c205 : CNF := []
theorem eq205 : t205.clauses = c205 := rfl

def t206 : CounterTree := .node [1465,1466] t204 t205
def m206 : CNF := [[(279,true),(1465,true)],[(277,true),(1465,true)],[(277,true),(279,true),(1466,true)]]
theorem merge206 : mergeClauses t204.outputLits t205.outputLits [1465,1466] = m206 := by rfl

def c206 : CNF := c204 ++ c205 ++ m206
theorem eq206 : t206.clauses = c206 := by
  change t204.clauses ++ t205.clauses ++ mergeClauses t204.outputLits t205.outputLits [1465,1466] = c206
  exact concat3_congr eq204 eq205 merge206

def t207 : CounterTree := .node [1467,1468,1469] t203 t206
def m207 : CNF := [[(1465,false),(1467,true)],[(1466,false),(1468,true)],[(275,true),(1467,true)],[(275,true),(1465,false),(1468,true)],[(275,true),(1466,false),(1469,true)]]
theorem merge207 : mergeClauses t203.outputLits t206.outputLits [1467,1468,1469] = m207 := by rfl

def c207 : CNF := c203 ++ c206 ++ m207
theorem eq207 : t207.clauses = c207 := by
  change t203.clauses ++ t206.clauses ++ mergeClauses t203.outputLits t206.outputLits [1467,1468,1469] = c207
  exact concat3_congr eq203 eq206 merge207

def t208 : CounterTree := .node [1470,1471,1472,1473,1474] t202 t207
def m208 : CNF := [[(1467,false),(1470,true)],[(1468,false),(1471,true)],[(1469,false),(1472,true)],[(1463,false),(1470,true)],[(1463,false),(1467,false),(1471,true)],[(1463,false),(1468,false),(1472,true)],[(1463,false),(1469,false),(1473,true)],[(1464,false),(1471,true)],[(1464,false),(1467,false),(1472,true)],[(1464,false),(1468,false),(1473,true)],[(1464,false),(1469,false),(1474,true)]]
theorem merge208 : mergeClauses t202.outputLits t207.outputLits [1470,1471,1472,1473,1474] = m208 := by rfl

def c208 : CNF := c202 ++ c207 ++ m208
theorem eq208 : t208.clauses = c208 := by
  change t202.clauses ++ t207.clauses ++ mergeClauses t202.outputLits t207.outputLits [1470,1471,1472,1473,1474] = c208
  exact concat3_congr eq202 eq207 merge208

def t209 : CounterTree := .node [1475,1476,1477,1478,1479,1480,1481,1482,1483] t199 t208
def m209 : CNF := [[(1470,false),(1475,true)],[(1471,false),(1476,true)],[(1472,false),(1477,true)],[(1473,false),(1478,true)],[(1474,false),(1479,true)],[(1459,false),(1475,true)],[(1459,false),(1470,false),(1476,true)],[(1459,false),(1471,false),(1477,true)],[(1459,false),(1472,false),(1478,true)],[(1459,false),(1473,false),(1479,true)],[(1459,false),(1474,false),(1480,true)],[(1460,false),(1476,true)],[(1460,false),(1470,false),(1477,true)],[(1460,false),(1471,false),(1478,true)],[(1460,false),(1472,false),(1479,true)],[(1460,false),(1473,false),(1480,true)],[(1460,false),(1474,false),(1481,true)],[(1461,false),(1477,true)],[(1461,false),(1470,false),(1478,true)],[(1461,false),(1471,false),(1479,true)],[(1461,false),(1472,false),(1480,true)],[(1461,false),(1473,false),(1481,true)],[(1461,false),(1474,false),(1482,true)],[(1462,false),(1478,true)],[(1462,false),(1470,false),(1479,true)],[(1462,false),(1471,false),(1480,true)],[(1462,false),(1472,false),(1481,true)],[(1462,false),(1473,false),(1482,true)],[(1462,false),(1474,false),(1483,true)]]
theorem merge209 : mergeClauses t199.outputLits t208.outputLits [1475,1476,1477,1478,1479,1480,1481,1482,1483] = m209 := by rfl

def c209 : CNF := c199 ++ c208 ++ m209
theorem eq209 : t209.clauses = c209 := by
  change t199.clauses ++ t208.clauses ++ mergeClauses t199.outputLits t208.outputLits [1475,1476,1477,1478,1479,1480,1481,1482,1483] = c209
  exact concat3_congr eq199 eq208 merge209

def t210 : CounterTree := .leaf (281,false)
def c210 : CNF := []
theorem eq210 : t210.clauses = c210 := rfl

def t211 : CounterTree := .leaf (283,false)
def c211 : CNF := []
theorem eq211 : t211.clauses = c211 := rfl

def t212 : CounterTree := .node [1484,1485] t210 t211
def m212 : CNF := [[(283,true),(1484,true)],[(281,true),(1484,true)],[(281,true),(283,true),(1485,true)]]
theorem merge212 : mergeClauses t210.outputLits t211.outputLits [1484,1485] = m212 := by rfl

def c212 : CNF := c210 ++ c211 ++ m212
theorem eq212 : t212.clauses = c212 := by
  change t210.clauses ++ t211.clauses ++ mergeClauses t210.outputLits t211.outputLits [1484,1485] = c212
  exact concat3_congr eq210 eq211 merge212

def t213 : CounterTree := .node [1486,1487] t211 t211
def m213 : CNF := [[(283,true),(1486,true)],[(283,true),(1486,true)],[(283,true),(283,true),(1487,true)]]
theorem merge213 : mergeClauses t211.outputLits t211.outputLits [1486,1487] = m213 := by rfl

def c213 : CNF := c211 ++ c211 ++ m213
theorem eq213 : t213.clauses = c213 := by
  change t211.clauses ++ t211.clauses ++ mergeClauses t211.outputLits t211.outputLits [1486,1487] = c213
  exact concat3_congr eq211 eq211 merge213

def t214 : CounterTree := .node [1488,1489,1490,1491] t212 t213
def m214 : CNF := [[(1486,false),(1488,true)],[(1487,false),(1489,true)],[(1484,false),(1488,true)],[(1484,false),(1486,false),(1489,true)],[(1484,false),(1487,false),(1490,true)],[(1485,false),(1489,true)],[(1485,false),(1486,false),(1490,true)],[(1485,false),(1487,false),(1491,true)]]
theorem merge214 : mergeClauses t212.outputLits t213.outputLits [1488,1489,1490,1491] = m214 := by rfl

def c214 : CNF := c212 ++ c213 ++ m214
theorem eq214 : t214.clauses = c214 := by
  change t212.clauses ++ t213.clauses ++ mergeClauses t212.outputLits t213.outputLits [1488,1489,1490,1491] = c214
  exact concat3_congr eq212 eq213 merge214

def t215 : CounterTree := .leaf (285,false)
def c215 : CNF := []
theorem eq215 : t215.clauses = c215 := rfl

def t216 : CounterTree := .node [1492,1493] t211 t215
def m216 : CNF := [[(285,true),(1492,true)],[(283,true),(1492,true)],[(283,true),(285,true),(1493,true)]]
theorem merge216 : mergeClauses t211.outputLits t215.outputLits [1492,1493] = m216 := by rfl

def c216 : CNF := c211 ++ c215 ++ m216
theorem eq216 : t216.clauses = c216 := by
  change t211.clauses ++ t215.clauses ++ mergeClauses t211.outputLits t215.outputLits [1492,1493] = c216
  exact concat3_congr eq211 eq215 merge216

def t217 : CounterTree := .leaf (291,false)
def c217 : CNF := []
theorem eq217 : t217.clauses = c217 := rfl

def t218 : CounterTree := .leaf (293,false)
def c218 : CNF := []
theorem eq218 : t218.clauses = c218 := rfl

def t219 : CounterTree := .leaf (295,false)
def c219 : CNF := []
theorem eq219 : t219.clauses = c219 := rfl

def t220 : CounterTree := .node [1494,1495] t218 t219
def m220 : CNF := [[(295,true),(1494,true)],[(293,true),(1494,true)],[(293,true),(295,true),(1495,true)]]
theorem merge220 : mergeClauses t218.outputLits t219.outputLits [1494,1495] = m220 := by rfl

def c220 : CNF := c218 ++ c219 ++ m220
theorem eq220 : t220.clauses = c220 := by
  change t218.clauses ++ t219.clauses ++ mergeClauses t218.outputLits t219.outputLits [1494,1495] = c220
  exact concat3_congr eq218 eq219 merge220

def t221 : CounterTree := .node [1496,1497,1498] t217 t220
def m221 : CNF := [[(1494,false),(1496,true)],[(1495,false),(1497,true)],[(291,true),(1496,true)],[(291,true),(1494,false),(1497,true)],[(291,true),(1495,false),(1498,true)]]
theorem merge221 : mergeClauses t217.outputLits t220.outputLits [1496,1497,1498] = m221 := by rfl

def c221 : CNF := c217 ++ c220 ++ m221
theorem eq221 : t221.clauses = c221 := by
  change t217.clauses ++ t220.clauses ++ mergeClauses t217.outputLits t220.outputLits [1496,1497,1498] = c221
  exact concat3_congr eq217 eq220 merge221


end EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes
