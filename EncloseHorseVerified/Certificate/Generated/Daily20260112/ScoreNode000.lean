import EncloseHorseVerified.Certificate.Generated.Daily20260112.Counters

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

theorem concat3_congr {a b c d e f : CNF} (h : a = b) (k : c = d) (l : e = f) :
    a ++ c ++ e = b ++ d ++ f := by
  cases h; cases k; cases l; rfl

def t0 : CounterTree := .leaf (41,false)
def c0 : CNF := []
theorem eq0 : t0.clauses = c0 := rfl
def t1 : CounterTree := .node [1516,1517] t0 t0
def m1 : CNF := [[(41,true),(1516,true)],[(41,true),(1516,true)],[(41,true),(41,true),(1517,true)]]
theorem merge1 : mergeClauses t0.outputLits t0.outputLits [1516,1517] = m1 := by
  rfl

def c1 : CNF := c0 ++ c0 ++ m1
theorem eq1 : t1.clauses = c1 := by
  change t0.clauses ++ t0.clauses ++ mergeClauses t0.outputLits t0.outputLits [1516,1517] = c1
  exact concat3_congr eq0 eq0 merge1
def t2 : CounterTree := .node [1518,1519,1520] t0 t1
def m2 : CNF := [[(1516,false),(1518,true)],[(1517,false),(1519,true)],[(41,true),(1518,true)],[(41,true),(1516,false),(1519,true)],[(41,true),(1517,false),(1520,true)]]
theorem merge2 : mergeClauses t0.outputLits t1.outputLits [1518,1519,1520] = m2 := by
  rfl

def c2 : CNF := c0 ++ c1 ++ m2
theorem eq2 : t2.clauses = c2 := by
  change t0.clauses ++ t1.clauses ++ mergeClauses t0.outputLits t1.outputLits [1518,1519,1520] = c2
  exact concat3_congr eq0 eq1 merge2
def t3 : CounterTree := .leaf (43,false)
def c3 : CNF := []
theorem eq3 : t3.clauses = c3 := rfl
def t4 : CounterTree := .node [1521,1522] t0 t3
def m4 : CNF := [[(43,true),(1521,true)],[(41,true),(1521,true)],[(41,true),(43,true),(1522,true)]]
theorem merge4 : mergeClauses t0.outputLits t3.outputLits [1521,1522] = m4 := by
  rfl

def c4 : CNF := c0 ++ c3 ++ m4
theorem eq4 : t4.clauses = c4 := by
  change t0.clauses ++ t3.clauses ++ mergeClauses t0.outputLits t3.outputLits [1521,1522] = c4
  exact concat3_congr eq0 eq3 merge4
def t5 : CounterTree := .node [1523,1524] t3 t3
def m5 : CNF := [[(43,true),(1523,true)],[(43,true),(1523,true)],[(43,true),(43,true),(1524,true)]]
theorem merge5 : mergeClauses t3.outputLits t3.outputLits [1523,1524] = m5 := by
  rfl

def c5 : CNF := c3 ++ c3 ++ m5
theorem eq5 : t5.clauses = c5 := by
  change t3.clauses ++ t3.clauses ++ mergeClauses t3.outputLits t3.outputLits [1523,1524] = c5
  exact concat3_congr eq3 eq3 merge5
def t6 : CounterTree := .node [1525,1526,1527,1528] t4 t5
def m6 : CNF := [[(1523,false),(1525,true)],[(1524,false),(1526,true)],[(1521,false),(1525,true)],[(1521,false),(1523,false),(1526,true)],[(1521,false),(1524,false),(1527,true)],[(1522,false),(1526,true)],[(1522,false),(1523,false),(1527,true)],[(1522,false),(1524,false),(1528,true)]]
theorem merge6 : mergeClauses t4.outputLits t5.outputLits [1525,1526,1527,1528] = m6 := by
  rfl

def c6 : CNF := c4 ++ c5 ++ m6
theorem eq6 : t6.clauses = c6 := by
  change t4.clauses ++ t5.clauses ++ mergeClauses t4.outputLits t5.outputLits [1525,1526,1527,1528] = c6
  exact concat3_congr eq4 eq5 merge6
def t7 : CounterTree := .node [1529,1530,1531,1532,1533,1534,1535] t2 t6
def m7 : CNF := [[(1525,false),(1529,true)],[(1526,false),(1530,true)],[(1527,false),(1531,true)],[(1528,false),(1532,true)],[(1518,false),(1529,true)],[(1518,false),(1525,false),(1530,true)],[(1518,false),(1526,false),(1531,true)],[(1518,false),(1527,false),(1532,true)],[(1518,false),(1528,false),(1533,true)],[(1519,false),(1530,true)],[(1519,false),(1525,false),(1531,true)],[(1519,false),(1526,false),(1532,true)],[(1519,false),(1527,false),(1533,true)],[(1519,false),(1528,false),(1534,true)],[(1520,false),(1531,true)],[(1520,false),(1525,false),(1532,true)],[(1520,false),(1526,false),(1533,true)],[(1520,false),(1527,false),(1534,true)],[(1520,false),(1528,false),(1535,true)]]
theorem merge7 : mergeClauses t2.outputLits t6.outputLits [1529,1530,1531,1532,1533,1534,1535] = m7 := by
  rfl

def c7 : CNF := c2 ++ c6 ++ m7
theorem eq7 : t7.clauses = c7 := by
  change t2.clauses ++ t6.clauses ++ mergeClauses t2.outputLits t6.outputLits [1529,1530,1531,1532,1533,1534,1535] = c7
  exact concat3_congr eq2 eq6 merge7
def t8 : CounterTree := .leaf (45,false)
def c8 : CNF := []
theorem eq8 : t8.clauses = c8 := rfl
def t9 : CounterTree := .node [1536,1537] t3 t8
def m9 : CNF := [[(45,true),(1536,true)],[(43,true),(1536,true)],[(43,true),(45,true),(1537,true)]]
theorem merge9 : mergeClauses t3.outputLits t8.outputLits [1536,1537] = m9 := by
  rfl

def c9 : CNF := c3 ++ c8 ++ m9
theorem eq9 : t9.clauses = c9 := by
  change t3.clauses ++ t8.clauses ++ mergeClauses t3.outputLits t8.outputLits [1536,1537] = c9
  exact concat3_congr eq3 eq8 merge9
def t10 : CounterTree := .node [1538,1539] t8 t8
def m10 : CNF := [[(45,true),(1538,true)],[(45,true),(1538,true)],[(45,true),(45,true),(1539,true)]]
theorem merge10 : mergeClauses t8.outputLits t8.outputLits [1538,1539] = m10 := by
  rfl

def c10 : CNF := c8 ++ c8 ++ m10
theorem eq10 : t10.clauses = c10 := by
  change t8.clauses ++ t8.clauses ++ mergeClauses t8.outputLits t8.outputLits [1538,1539] = c10
  exact concat3_congr eq8 eq8 merge10
def t11 : CounterTree := .node [1540,1541,1542,1543] t9 t10
def m11 : CNF := [[(1538,false),(1540,true)],[(1539,false),(1541,true)],[(1536,false),(1540,true)],[(1536,false),(1538,false),(1541,true)],[(1536,false),(1539,false),(1542,true)],[(1537,false),(1541,true)],[(1537,false),(1538,false),(1542,true)],[(1537,false),(1539,false),(1543,true)]]
theorem merge11 : mergeClauses t9.outputLits t10.outputLits [1540,1541,1542,1543] = m11 := by
  rfl

def c11 : CNF := c9 ++ c10 ++ m11
theorem eq11 : t11.clauses = c11 := by
  change t9.clauses ++ t10.clauses ++ mergeClauses t9.outputLits t10.outputLits [1540,1541,1542,1543] = c11
  exact concat3_congr eq9 eq10 merge11
def t12 : CounterTree := .leaf (47,false)
def c12 : CNF := []
theorem eq12 : t12.clauses = c12 := rfl
def t13 : CounterTree := .node [1544,1545] t8 t12
def m13 : CNF := [[(47,true),(1544,true)],[(45,true),(1544,true)],[(45,true),(47,true),(1545,true)]]
theorem merge13 : mergeClauses t8.outputLits t12.outputLits [1544,1545] = m13 := by
  rfl

def c13 : CNF := c8 ++ c12 ++ m13
theorem eq13 : t13.clauses = c13 := by
  change t8.clauses ++ t12.clauses ++ mergeClauses t8.outputLits t12.outputLits [1544,1545] = c13
  exact concat3_congr eq8 eq12 merge13

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
