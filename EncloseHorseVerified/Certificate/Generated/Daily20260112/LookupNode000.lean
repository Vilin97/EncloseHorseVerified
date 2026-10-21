import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupBase

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def t0 : Tree := .nil
theorem eq0 : t0.clauses = ScoreNodes.c0 := by rfl

def m1 : Tree := (.node 1 (.leaf [(41,true),(1516,true)]) (.node 1 (.leaf [(41,true),(1516,true)]) (.leaf [(41,true),(41,true),(1517,true)])))
theorem merge1 : m1.clauses = ScoreNodes.m1 := by rfl

def t1 : Tree := .node 0 (.node 0 t0 t0) m1
theorem eq1 : t1.clauses = ScoreNodes.c1 :=
  cat_eq _ (cat_eq _ eq0 eq0) merge1

def m2 : Tree := (.node 2 (.node 1 (.leaf [(1516,false),(1518,true)]) (.leaf [(1517,false),(1519,true)])) (.node 1 (.leaf [(41,true),(1518,true)]) (.node 1 (.leaf [(41,true),(1516,false),(1519,true)]) (.leaf [(41,true),(1517,false),(1520,true)]))))
theorem merge2 : m2.clauses = ScoreNodes.m2 := by rfl

def t2 : Tree := .node 3 (.node 0 t0 t1) m2
theorem eq2 : t2.clauses = ScoreNodes.c2 :=
  cat_eq _ (cat_eq _ eq0 eq1) merge2

def t3 : Tree := .nil
theorem eq3 : t3.clauses = ScoreNodes.c3 := by rfl

def m4 : Tree := (.node 1 (.leaf [(43,true),(1521,true)]) (.node 1 (.leaf [(41,true),(1521,true)]) (.leaf [(41,true),(43,true),(1522,true)])))
theorem merge4 : m4.clauses = ScoreNodes.m4 := by rfl

def t4 : Tree := .node 0 (.node 0 t0 t3) m4
theorem eq4 : t4.clauses = ScoreNodes.c4 :=
  cat_eq _ (cat_eq _ eq0 eq3) merge4

def m5 : Tree := (.node 1 (.leaf [(43,true),(1523,true)]) (.node 1 (.leaf [(43,true),(1523,true)]) (.leaf [(43,true),(43,true),(1524,true)])))
theorem merge5 : m5.clauses = ScoreNodes.m5 := by rfl

def t5 : Tree := .node 0 (.node 0 t3 t3) m5
theorem eq5 : t5.clauses = ScoreNodes.c5 :=
  cat_eq _ (cat_eq _ eq3 eq3) merge5

def m6 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1523,false),(1525,true)]) (.leaf [(1524,false),(1526,true)])) (.node 1 (.leaf [(1521,false),(1525,true)]) (.leaf [(1521,false),(1523,false),(1526,true)]))) (.node 2 (.node 1 (.leaf [(1521,false),(1524,false),(1527,true)]) (.leaf [(1522,false),(1526,true)])) (.node 1 (.leaf [(1522,false),(1523,false),(1527,true)]) (.leaf [(1522,false),(1524,false),(1528,true)]))))
theorem merge6 : m6.clauses = ScoreNodes.m6 := by rfl

def t6 : Tree := .node 6 (.node 3 t4 t5) m6
theorem eq6 : t6.clauses = ScoreNodes.c6 :=
  cat_eq _ (cat_eq _ eq4 eq5) merge6

def m7 : Tree := (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1525,false),(1529,true)]) (.leaf [(1526,false),(1530,true)])) (.node 1 (.leaf [(1527,false),(1531,true)]) (.leaf [(1528,false),(1532,true)]))) (.node 2 (.node 1 (.leaf [(1518,false),(1529,true)]) (.leaf [(1518,false),(1525,false),(1530,true)])) (.node 1 (.leaf [(1518,false),(1526,false),(1531,true)]) (.node 1 (.leaf [(1518,false),(1527,false),(1532,true)]) (.leaf [(1518,false),(1528,false),(1533,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1519,false),(1530,true)]) (.leaf [(1519,false),(1525,false),(1531,true)])) (.node 1 (.leaf [(1519,false),(1526,false),(1532,true)]) (.node 1 (.leaf [(1519,false),(1527,false),(1533,true)]) (.leaf [(1519,false),(1528,false),(1534,true)])))) (.node 2 (.node 1 (.leaf [(1520,false),(1531,true)]) (.leaf [(1520,false),(1525,false),(1532,true)])) (.node 1 (.leaf [(1520,false),(1526,false),(1533,true)]) (.node 1 (.leaf [(1520,false),(1527,false),(1534,true)]) (.leaf [(1520,false),(1528,false),(1535,true)]))))))
theorem merge7 : m7.clauses = ScoreNodes.m7 := by rfl

def t7 : Tree := .node 22 (.node 8 t2 t6) m7
theorem eq7 : t7.clauses = ScoreNodes.c7 :=
  cat_eq _ (cat_eq _ eq2 eq6) merge7

def t8 : Tree := .nil
theorem eq8 : t8.clauses = ScoreNodes.c8 := by rfl

def m9 : Tree := (.node 1 (.leaf [(45,true),(1536,true)]) (.node 1 (.leaf [(43,true),(1536,true)]) (.leaf [(43,true),(45,true),(1537,true)])))
theorem merge9 : m9.clauses = ScoreNodes.m9 := by rfl

def t9 : Tree := .node 0 (.node 0 t3 t8) m9
theorem eq9 : t9.clauses = ScoreNodes.c9 :=
  cat_eq _ (cat_eq _ eq3 eq8) merge9

def m10 : Tree := (.node 1 (.leaf [(45,true),(1538,true)]) (.node 1 (.leaf [(45,true),(1538,true)]) (.leaf [(45,true),(45,true),(1539,true)])))
theorem merge10 : m10.clauses = ScoreNodes.m10 := by rfl

def t10 : Tree := .node 0 (.node 0 t8 t8) m10
theorem eq10 : t10.clauses = ScoreNodes.c10 :=
  cat_eq _ (cat_eq _ eq8 eq8) merge10

def m11 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1538,false),(1540,true)]) (.leaf [(1539,false),(1541,true)])) (.node 1 (.leaf [(1536,false),(1540,true)]) (.leaf [(1536,false),(1538,false),(1541,true)]))) (.node 2 (.node 1 (.leaf [(1536,false),(1539,false),(1542,true)]) (.leaf [(1537,false),(1541,true)])) (.node 1 (.leaf [(1537,false),(1538,false),(1542,true)]) (.leaf [(1537,false),(1539,false),(1543,true)]))))
theorem merge11 : m11.clauses = ScoreNodes.m11 := by rfl

def t11 : Tree := .node 6 (.node 3 t9 t10) m11
theorem eq11 : t11.clauses = ScoreNodes.c11 :=
  cat_eq _ (cat_eq _ eq9 eq10) merge11

def t12 : Tree := .nil
theorem eq12 : t12.clauses = ScoreNodes.c12 := by rfl

def m13 : Tree := (.node 1 (.leaf [(47,true),(1544,true)]) (.node 1 (.leaf [(45,true),(1544,true)]) (.leaf [(45,true),(47,true),(1545,true)])))
theorem merge13 : m13.clauses = ScoreNodes.m13 := by rfl

def t13 : Tree := .node 0 (.node 0 t8 t12) m13
theorem eq13 : t13.clauses = ScoreNodes.c13 :=
  cat_eq _ (cat_eq _ eq8 eq12) merge13


end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
