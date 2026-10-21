import EncloseHorseVerified.Certificate.Generated.Daily20260310.LookupNode000

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.Lookup

def t21 : Tree := .nil
theorem eq21 : t21.clauses = ScoreNodes.c21 := by rfl

def t22 : Tree := .nil
theorem eq22 : t22.clauses = ScoreNodes.c22 := by rfl

def t23 : Tree := .nil
theorem eq23 : t23.clauses = ScoreNodes.c23 := by rfl

def m24 : Tree := (.node 1 (.leaf [(57,true),(1438,true)]) (.node 1 (.leaf [(55,true),(1438,true)]) (.leaf [(55,true),(57,true),(1439,true)])))
theorem merge24 : m24.clauses = ScoreNodes.m24 := by rfl

def t24 : Tree := .node 0 (.node 0 t22 t23) m24
theorem eq24 : t24.clauses = ScoreNodes.c24 :=
  cat_eq _ (cat_eq _ eq22 eq23) merge24

def m25 : Tree := (.node 2 (.node 1 (.leaf [(1438,false),(1440,true)]) (.leaf [(1439,false),(1441,true)])) (.node 1 (.leaf [(53,true),(1440,true)]) (.node 1 (.leaf [(53,true),(1438,false),(1441,true)]) (.leaf [(53,true),(1439,false),(1442,true)]))))
theorem merge25 : m25.clauses = ScoreNodes.m25 := by rfl

def t25 : Tree := .node 3 (.node 0 t21 t24) m25
theorem eq25 : t25.clauses = ScoreNodes.c25 :=
  cat_eq _ (cat_eq _ eq21 eq24) merge25

def t26 : Tree := .nil
theorem eq26 : t26.clauses = ScoreNodes.c26 := by rfl

def t27 : Tree := .nil
theorem eq27 : t27.clauses = ScoreNodes.c27 := by rfl

def t28 : Tree := .nil
theorem eq28 : t28.clauses = ScoreNodes.c28 := by rfl

def m29 : Tree := (.node 1 (.leaf [(63,true),(1443,true)]) (.node 1 (.leaf [(61,true),(1443,true)]) (.leaf [(61,true),(63,true),(1444,true)])))
theorem merge29 : m29.clauses = ScoreNodes.m29 := by rfl

def t29 : Tree := .node 0 (.node 0 t27 t28) m29
theorem eq29 : t29.clauses = ScoreNodes.c29 :=
  cat_eq _ (cat_eq _ eq27 eq28) merge29

def m30 : Tree := (.node 2 (.node 1 (.leaf [(1443,false),(1445,true)]) (.leaf [(1444,false),(1446,true)])) (.node 1 (.leaf [(59,true),(1445,true)]) (.node 1 (.leaf [(59,true),(1443,false),(1446,true)]) (.leaf [(59,true),(1444,false),(1447,true)]))))
theorem merge30 : m30.clauses = ScoreNodes.m30 := by rfl

def t30 : Tree := .node 3 (.node 0 t26 t29) m30
theorem eq30 : t30.clauses = ScoreNodes.c30 :=
  cat_eq _ (cat_eq _ eq26 eq29) merge30

def m31 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(1445,false),(1448,true)]) (.node 1 (.leaf [(1446,false),(1449,true)]) (.leaf [(1447,false),(1450,true)]))) (.node 2 (.node 1 (.leaf [(1440,false),(1448,true)]) (.leaf [(1440,false),(1445,false),(1449,true)])) (.node 1 (.leaf [(1440,false),(1446,false),(1450,true)]) (.leaf [(1440,false),(1447,false),(1451,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1441,false),(1449,true)]) (.leaf [(1441,false),(1445,false),(1450,true)])) (.node 1 (.leaf [(1441,false),(1446,false),(1451,true)]) (.leaf [(1441,false),(1447,false),(1452,true)]))) (.node 2 (.node 1 (.leaf [(1442,false),(1450,true)]) (.leaf [(1442,false),(1445,false),(1451,true)])) (.node 1 (.leaf [(1442,false),(1446,false),(1452,true)]) (.leaf [(1442,false),(1447,false),(1453,true)])))))
theorem merge31 : m31.clauses = ScoreNodes.m31 := by rfl

def t31 : Tree := .node 16 (.node 8 t25 t30) m31
theorem eq31 : t31.clauses = ScoreNodes.c31 :=
  cat_eq _ (cat_eq _ eq25 eq30) merge31

def t32 : Tree := .nil
theorem eq32 : t32.clauses = ScoreNodes.c32 := by rfl

def t33 : Tree := .nil
theorem eq33 : t33.clauses = ScoreNodes.c33 := by rfl

def t34 : Tree := .nil
theorem eq34 : t34.clauses = ScoreNodes.c34 := by rfl

def m35 : Tree := (.node 1 (.leaf [(77,true),(1454,true)]) (.node 1 (.leaf [(71,true),(1454,true)]) (.leaf [(71,true),(77,true),(1455,true)])))
theorem merge35 : m35.clauses = ScoreNodes.m35 := by rfl

def t35 : Tree := .node 0 (.node 0 t33 t34) m35
theorem eq35 : t35.clauses = ScoreNodes.c35 :=
  cat_eq _ (cat_eq _ eq33 eq34) merge35

def m36 : Tree := (.node 2 (.node 1 (.leaf [(1454,false),(1456,true)]) (.leaf [(1455,false),(1457,true)])) (.node 1 (.leaf [(65,true),(1456,true)]) (.node 1 (.leaf [(65,true),(1454,false),(1457,true)]) (.leaf [(65,true),(1455,false),(1458,true)]))))
theorem merge36 : m36.clauses = ScoreNodes.m36 := by rfl

def t36 : Tree := .node 3 (.node 0 t32 t35) m36
theorem eq36 : t36.clauses = ScoreNodes.c36 :=
  cat_eq _ (cat_eq _ eq32 eq35) merge36

def t37 : Tree := .nil
theorem eq37 : t37.clauses = ScoreNodes.c37 := by rfl

def t38 : Tree := .nil
theorem eq38 : t38.clauses = ScoreNodes.c38 := by rfl

def t39 : Tree := .nil
theorem eq39 : t39.clauses = ScoreNodes.c39 := by rfl

def m40 : Tree := (.node 1 (.leaf [(85,true),(1459,true)]) (.node 1 (.leaf [(81,true),(1459,true)]) (.leaf [(81,true),(85,true),(1460,true)])))
theorem merge40 : m40.clauses = ScoreNodes.m40 := by rfl

def t40 : Tree := .node 0 (.node 0 t38 t39) m40
theorem eq40 : t40.clauses = ScoreNodes.c40 :=
  cat_eq _ (cat_eq _ eq38 eq39) merge40

def m41 : Tree := (.node 2 (.node 1 (.leaf [(1459,false),(1461,true)]) (.leaf [(1460,false),(1462,true)])) (.node 1 (.leaf [(79,true),(1461,true)]) (.node 1 (.leaf [(79,true),(1459,false),(1462,true)]) (.leaf [(79,true),(1460,false),(1463,true)]))))
theorem merge41 : m41.clauses = ScoreNodes.m41 := by rfl

def t41 : Tree := .node 3 (.node 0 t37 t40) m41
theorem eq41 : t41.clauses = ScoreNodes.c41 :=
  cat_eq _ (cat_eq _ eq37 eq40) merge41

def m42 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(1461,false),(1464,true)]) (.node 1 (.leaf [(1462,false),(1465,true)]) (.leaf [(1463,false),(1466,true)]))) (.node 2 (.node 1 (.leaf [(1456,false),(1464,true)]) (.leaf [(1456,false),(1461,false),(1465,true)])) (.node 1 (.leaf [(1456,false),(1462,false),(1466,true)]) (.leaf [(1456,false),(1463,false),(1467,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1457,false),(1465,true)]) (.leaf [(1457,false),(1461,false),(1466,true)])) (.node 1 (.leaf [(1457,false),(1462,false),(1467,true)]) (.leaf [(1457,false),(1463,false),(1468,true)]))) (.node 2 (.node 1 (.leaf [(1458,false),(1466,true)]) (.leaf [(1458,false),(1461,false),(1467,true)])) (.node 1 (.leaf [(1458,false),(1462,false),(1468,true)]) (.leaf [(1458,false),(1463,false),(1469,true)])))))
theorem merge42 : m42.clauses = ScoreNodes.m42 := by rfl

def t42 : Tree := .node 16 (.node 8 t36 t41) m42
theorem eq42 : t42.clauses = ScoreNodes.c42 :=
  cat_eq _ (cat_eq _ eq36 eq41) merge42


end EncloseHorse.Certificate.Generated.Daily20260310.Lookup
