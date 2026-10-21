import EncloseHorseVerified.Certificate.Generated.Daily20260310.Counters

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes

theorem concat3_congr {a b c d e f : CNF} (h : a = b) (k : c = d) (l : e = f) :
    a ++ c ++ e = b ++ d ++ f := by
  cases h; cases k; cases l; rfl

def t0 : CounterTree := .leaf (11,false)
def c0 : CNF := []
theorem eq0 : t0.clauses = c0 := rfl

def t1 : CounterTree := .leaf (21,false)
def c1 : CNF := []
theorem eq1 : t1.clauses = c1 := rfl

def t2 : CounterTree := .node [1399,1400] t0 t1
def m2 : CNF := [[(21,true),(1399,true)],[(11,true),(1399,true)],[(11,true),(21,true),(1400,true)]]
theorem merge2 : mergeClauses t0.outputLits t1.outputLits [1399,1400] = m2 := by rfl

def c2 : CNF := c0 ++ c1 ++ m2
theorem eq2 : t2.clauses = c2 := by
  change t0.clauses ++ t1.clauses ++ mergeClauses t0.outputLits t1.outputLits [1399,1400] = c2
  exact concat3_congr eq0 eq1 merge2

def t3 : CounterTree := .leaf (29,false)
def c3 : CNF := []
theorem eq3 : t3.clauses = c3 := rfl

def t4 : CounterTree := .leaf (37,false)
def c4 : CNF := []
theorem eq4 : t4.clauses = c4 := rfl

def t5 : CounterTree := .leaf (39,false)
def c5 : CNF := []
theorem eq5 : t5.clauses = c5 := rfl

def t6 : CounterTree := .node [1401,1402] t4 t5
def m6 : CNF := [[(39,true),(1401,true)],[(37,true),(1401,true)],[(37,true),(39,true),(1402,true)]]
theorem merge6 : mergeClauses t4.outputLits t5.outputLits [1401,1402] = m6 := by rfl

def c6 : CNF := c4 ++ c5 ++ m6
theorem eq6 : t6.clauses = c6 := by
  change t4.clauses ++ t5.clauses ++ mergeClauses t4.outputLits t5.outputLits [1401,1402] = c6
  exact concat3_congr eq4 eq5 merge6

def t7 : CounterTree := .node [1403,1404,1405] t3 t6
def m7 : CNF := [[(1401,false),(1403,true)],[(1402,false),(1404,true)],[(29,true),(1403,true)],[(29,true),(1401,false),(1404,true)],[(29,true),(1402,false),(1405,true)]]
theorem merge7 : mergeClauses t3.outputLits t6.outputLits [1403,1404,1405] = m7 := by rfl

def c7 : CNF := c3 ++ c6 ++ m7
theorem eq7 : t7.clauses = c7 := by
  change t3.clauses ++ t6.clauses ++ mergeClauses t3.outputLits t6.outputLits [1403,1404,1405] = c7
  exact concat3_congr eq3 eq6 merge7

def t8 : CounterTree := .node [1406,1407,1408,1409,1410] t2 t7
def m8 : CNF := [[(1403,false),(1406,true)],[(1404,false),(1407,true)],[(1405,false),(1408,true)],[(1399,false),(1406,true)],[(1399,false),(1403,false),(1407,true)],[(1399,false),(1404,false),(1408,true)],[(1399,false),(1405,false),(1409,true)],[(1400,false),(1407,true)],[(1400,false),(1403,false),(1408,true)],[(1400,false),(1404,false),(1409,true)],[(1400,false),(1405,false),(1410,true)]]
theorem merge8 : mergeClauses t2.outputLits t7.outputLits [1406,1407,1408,1409,1410] = m8 := by rfl

def c8 : CNF := c2 ++ c7 ++ m8
theorem eq8 : t8.clauses = c8 := by
  change t2.clauses ++ t7.clauses ++ mergeClauses t2.outputLits t7.outputLits [1406,1407,1408,1409,1410] = c8
  exact concat3_congr eq2 eq7 merge8

def t9 : CounterTree := .leaf (41,false)
def c9 : CNF := []
theorem eq9 : t9.clauses = c9 := rfl

def t10 : CounterTree := .leaf (43,false)
def c10 : CNF := []
theorem eq10 : t10.clauses = c10 := rfl

def t11 : CounterTree := .leaf (45,false)
def c11 : CNF := []
theorem eq11 : t11.clauses = c11 := rfl

def t12 : CounterTree := .node [1411,1412] t10 t11
def m12 : CNF := [[(45,true),(1411,true)],[(43,true),(1411,true)],[(43,true),(45,true),(1412,true)]]
theorem merge12 : mergeClauses t10.outputLits t11.outputLits [1411,1412] = m12 := by rfl

def c12 : CNF := c10 ++ c11 ++ m12
theorem eq12 : t12.clauses = c12 := by
  change t10.clauses ++ t11.clauses ++ mergeClauses t10.outputLits t11.outputLits [1411,1412] = c12
  exact concat3_congr eq10 eq11 merge12

def t13 : CounterTree := .node [1413,1414,1415] t9 t12
def m13 : CNF := [[(1411,false),(1413,true)],[(1412,false),(1414,true)],[(41,true),(1413,true)],[(41,true),(1411,false),(1414,true)],[(41,true),(1412,false),(1415,true)]]
theorem merge13 : mergeClauses t9.outputLits t12.outputLits [1413,1414,1415] = m13 := by rfl

def c13 : CNF := c9 ++ c12 ++ m13
theorem eq13 : t13.clauses = c13 := by
  change t9.clauses ++ t12.clauses ++ mergeClauses t9.outputLits t12.outputLits [1413,1414,1415] = c13
  exact concat3_congr eq9 eq12 merge13

def t14 : CounterTree := .leaf (47,false)
def c14 : CNF := []
theorem eq14 : t14.clauses = c14 := rfl

def t15 : CounterTree := .leaf (49,false)
def c15 : CNF := []
theorem eq15 : t15.clauses = c15 := rfl

def t16 : CounterTree := .leaf (51,false)
def c16 : CNF := []
theorem eq16 : t16.clauses = c16 := rfl

def t17 : CounterTree := .node [1416,1417] t15 t16
def m17 : CNF := [[(51,true),(1416,true)],[(49,true),(1416,true)],[(49,true),(51,true),(1417,true)]]
theorem merge17 : mergeClauses t15.outputLits t16.outputLits [1416,1417] = m17 := by rfl

def c17 : CNF := c15 ++ c16 ++ m17
theorem eq17 : t17.clauses = c17 := by
  change t15.clauses ++ t16.clauses ++ mergeClauses t15.outputLits t16.outputLits [1416,1417] = c17
  exact concat3_congr eq15 eq16 merge17

def t18 : CounterTree := .node [1418,1419,1420] t14 t17
def m18 : CNF := [[(1416,false),(1418,true)],[(1417,false),(1419,true)],[(47,true),(1418,true)],[(47,true),(1416,false),(1419,true)],[(47,true),(1417,false),(1420,true)]]
theorem merge18 : mergeClauses t14.outputLits t17.outputLits [1418,1419,1420] = m18 := by rfl

def c18 : CNF := c14 ++ c17 ++ m18
theorem eq18 : t18.clauses = c18 := by
  change t14.clauses ++ t17.clauses ++ mergeClauses t14.outputLits t17.outputLits [1418,1419,1420] = c18
  exact concat3_congr eq14 eq17 merge18

def t19 : CounterTree := .node [1421,1422,1423,1424,1425,1426] t13 t18
def m19 : CNF := [[(1418,false),(1421,true)],[(1419,false),(1422,true)],[(1420,false),(1423,true)],[(1413,false),(1421,true)],[(1413,false),(1418,false),(1422,true)],[(1413,false),(1419,false),(1423,true)],[(1413,false),(1420,false),(1424,true)],[(1414,false),(1422,true)],[(1414,false),(1418,false),(1423,true)],[(1414,false),(1419,false),(1424,true)],[(1414,false),(1420,false),(1425,true)],[(1415,false),(1423,true)],[(1415,false),(1418,false),(1424,true)],[(1415,false),(1419,false),(1425,true)],[(1415,false),(1420,false),(1426,true)]]
theorem merge19 : mergeClauses t13.outputLits t18.outputLits [1421,1422,1423,1424,1425,1426] = m19 := by rfl

def c19 : CNF := c13 ++ c18 ++ m19
theorem eq19 : t19.clauses = c19 := by
  change t13.clauses ++ t18.clauses ++ mergeClauses t13.outputLits t18.outputLits [1421,1422,1423,1424,1425,1426] = c19
  exact concat3_congr eq13 eq18 merge19

def t20 : CounterTree := .node [1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437] t8 t19
def m20 : CNF := [[(1421,false),(1427,true)],[(1422,false),(1428,true)],[(1423,false),(1429,true)],[(1424,false),(1430,true)],[(1425,false),(1431,true)],[(1426,false),(1432,true)],[(1406,false),(1427,true)],[(1406,false),(1421,false),(1428,true)],[(1406,false),(1422,false),(1429,true)],[(1406,false),(1423,false),(1430,true)],[(1406,false),(1424,false),(1431,true)],[(1406,false),(1425,false),(1432,true)],[(1406,false),(1426,false),(1433,true)],[(1407,false),(1428,true)],[(1407,false),(1421,false),(1429,true)],[(1407,false),(1422,false),(1430,true)],[(1407,false),(1423,false),(1431,true)],[(1407,false),(1424,false),(1432,true)],[(1407,false),(1425,false),(1433,true)],[(1407,false),(1426,false),(1434,true)],[(1408,false),(1429,true)],[(1408,false),(1421,false),(1430,true)],[(1408,false),(1422,false),(1431,true)],[(1408,false),(1423,false),(1432,true)],[(1408,false),(1424,false),(1433,true)],[(1408,false),(1425,false),(1434,true)],[(1408,false),(1426,false),(1435,true)],[(1409,false),(1430,true)],[(1409,false),(1421,false),(1431,true)],[(1409,false),(1422,false),(1432,true)],[(1409,false),(1423,false),(1433,true)],[(1409,false),(1424,false),(1434,true)],[(1409,false),(1425,false),(1435,true)],[(1409,false),(1426,false),(1436,true)],[(1410,false),(1431,true)],[(1410,false),(1421,false),(1432,true)],[(1410,false),(1422,false),(1433,true)],[(1410,false),(1423,false),(1434,true)],[(1410,false),(1424,false),(1435,true)],[(1410,false),(1425,false),(1436,true)],[(1410,false),(1426,false),(1437,true)]]
theorem merge20 : mergeClauses t8.outputLits t19.outputLits [1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437] = m20 := by rfl

def c20 : CNF := c8 ++ c19 ++ m20
theorem eq20 : t20.clauses = c20 := by
  change t8.clauses ++ t19.clauses ++ mergeClauses t8.outputLits t19.outputLits [1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437] = c20
  exact concat3_congr eq8 eq19 merge20


end EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes
