import EncloseHorseVerified.Certificate.Generated.Daily20260310.LookupBase

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.Lookup

def t0 : Tree := .nil
theorem eq0 : t0.clauses = ScoreNodes.c0 := by rfl

def t1 : Tree := .nil
theorem eq1 : t1.clauses = ScoreNodes.c1 := by rfl

def m2 : Tree := (.node 1 (.leaf [(21,true),(1399,true)]) (.node 1 (.leaf [(11,true),(1399,true)]) (.leaf [(11,true),(21,true),(1400,true)])))
theorem merge2 : m2.clauses = ScoreNodes.m2 := by rfl

def t2 : Tree := .node 0 (.node 0 t0 t1) m2
theorem eq2 : t2.clauses = ScoreNodes.c2 :=
  cat_eq _ (cat_eq _ eq0 eq1) merge2

def t3 : Tree := .nil
theorem eq3 : t3.clauses = ScoreNodes.c3 := by rfl

def t4 : Tree := .nil
theorem eq4 : t4.clauses = ScoreNodes.c4 := by rfl

def t5 : Tree := .nil
theorem eq5 : t5.clauses = ScoreNodes.c5 := by rfl

def m6 : Tree := (.node 1 (.leaf [(39,true),(1401,true)]) (.node 1 (.leaf [(37,true),(1401,true)]) (.leaf [(37,true),(39,true),(1402,true)])))
theorem merge6 : m6.clauses = ScoreNodes.m6 := by rfl

def t6 : Tree := .node 0 (.node 0 t4 t5) m6
theorem eq6 : t6.clauses = ScoreNodes.c6 :=
  cat_eq _ (cat_eq _ eq4 eq5) merge6

def m7 : Tree := (.node 2 (.node 1 (.leaf [(1401,false),(1403,true)]) (.leaf [(1402,false),(1404,true)])) (.node 1 (.leaf [(29,true),(1403,true)]) (.node 1 (.leaf [(29,true),(1401,false),(1404,true)]) (.leaf [(29,true),(1402,false),(1405,true)]))))
theorem merge7 : m7.clauses = ScoreNodes.m7 := by rfl

def t7 : Tree := .node 3 (.node 0 t3 t6) m7
theorem eq7 : t7.clauses = ScoreNodes.c7 :=
  cat_eq _ (cat_eq _ eq3 eq6) merge7

def m8 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(1403,false),(1406,true)]) (.leaf [(1404,false),(1407,true)])) (.node 1 (.leaf [(1405,false),(1408,true)]) (.node 1 (.leaf [(1399,false),(1406,true)]) (.leaf [(1399,false),(1403,false),(1407,true)])))) (.node 3 (.node 1 (.leaf [(1399,false),(1404,false),(1408,true)]) (.node 1 (.leaf [(1399,false),(1405,false),(1409,true)]) (.leaf [(1400,false),(1407,true)]))) (.node 1 (.leaf [(1400,false),(1403,false),(1408,true)]) (.node 1 (.leaf [(1400,false),(1404,false),(1409,true)]) (.leaf [(1400,false),(1405,false),(1410,true)])))))
theorem merge8 : m8.clauses = ScoreNodes.m8 := by rfl

def t8 : Tree := .node 11 (.node 3 t2 t7) m8
theorem eq8 : t8.clauses = ScoreNodes.c8 :=
  cat_eq _ (cat_eq _ eq2 eq7) merge8

def t9 : Tree := .nil
theorem eq9 : t9.clauses = ScoreNodes.c9 := by rfl

def t10 : Tree := .nil
theorem eq10 : t10.clauses = ScoreNodes.c10 := by rfl

def t11 : Tree := .nil
theorem eq11 : t11.clauses = ScoreNodes.c11 := by rfl

def m12 : Tree := (.node 1 (.leaf [(45,true),(1411,true)]) (.node 1 (.leaf [(43,true),(1411,true)]) (.leaf [(43,true),(45,true),(1412,true)])))
theorem merge12 : m12.clauses = ScoreNodes.m12 := by rfl

def t12 : Tree := .node 0 (.node 0 t10 t11) m12
theorem eq12 : t12.clauses = ScoreNodes.c12 :=
  cat_eq _ (cat_eq _ eq10 eq11) merge12

def m13 : Tree := (.node 2 (.node 1 (.leaf [(1411,false),(1413,true)]) (.leaf [(1412,false),(1414,true)])) (.node 1 (.leaf [(41,true),(1413,true)]) (.node 1 (.leaf [(41,true),(1411,false),(1414,true)]) (.leaf [(41,true),(1412,false),(1415,true)]))))
theorem merge13 : m13.clauses = ScoreNodes.m13 := by rfl

def t13 : Tree := .node 3 (.node 0 t9 t12) m13
theorem eq13 : t13.clauses = ScoreNodes.c13 :=
  cat_eq _ (cat_eq _ eq9 eq12) merge13

def t14 : Tree := .nil
theorem eq14 : t14.clauses = ScoreNodes.c14 := by rfl

def t15 : Tree := .nil
theorem eq15 : t15.clauses = ScoreNodes.c15 := by rfl

def t16 : Tree := .nil
theorem eq16 : t16.clauses = ScoreNodes.c16 := by rfl

def m17 : Tree := (.node 1 (.leaf [(51,true),(1416,true)]) (.node 1 (.leaf [(49,true),(1416,true)]) (.leaf [(49,true),(51,true),(1417,true)])))
theorem merge17 : m17.clauses = ScoreNodes.m17 := by rfl

def t17 : Tree := .node 0 (.node 0 t15 t16) m17
theorem eq17 : t17.clauses = ScoreNodes.c17 :=
  cat_eq _ (cat_eq _ eq15 eq16) merge17

def m18 : Tree := (.node 2 (.node 1 (.leaf [(1416,false),(1418,true)]) (.leaf [(1417,false),(1419,true)])) (.node 1 (.leaf [(47,true),(1418,true)]) (.node 1 (.leaf [(47,true),(1416,false),(1419,true)]) (.leaf [(47,true),(1417,false),(1420,true)]))))
theorem merge18 : m18.clauses = ScoreNodes.m18 := by rfl

def t18 : Tree := .node 3 (.node 0 t14 t17) m18
theorem eq18 : t18.clauses = ScoreNodes.c18 :=
  cat_eq _ (cat_eq _ eq14 eq17) merge18

def m19 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(1418,false),(1421,true)]) (.node 1 (.leaf [(1419,false),(1422,true)]) (.leaf [(1420,false),(1423,true)]))) (.node 2 (.node 1 (.leaf [(1413,false),(1421,true)]) (.leaf [(1413,false),(1418,false),(1422,true)])) (.node 1 (.leaf [(1413,false),(1419,false),(1423,true)]) (.leaf [(1413,false),(1420,false),(1424,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1414,false),(1422,true)]) (.leaf [(1414,false),(1418,false),(1423,true)])) (.node 1 (.leaf [(1414,false),(1419,false),(1424,true)]) (.leaf [(1414,false),(1420,false),(1425,true)]))) (.node 2 (.node 1 (.leaf [(1415,false),(1423,true)]) (.leaf [(1415,false),(1418,false),(1424,true)])) (.node 1 (.leaf [(1415,false),(1419,false),(1425,true)]) (.leaf [(1415,false),(1420,false),(1426,true)])))))
theorem merge19 : m19.clauses = ScoreNodes.m19 := by rfl

def t19 : Tree := .node 16 (.node 8 t13 t18) m19
theorem eq19 : t19.clauses = ScoreNodes.c19 :=
  cat_eq _ (cat_eq _ eq13 eq18) merge19

def m20 : Tree := (.node 20 (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1421,false),(1427,true)]) (.leaf [(1422,false),(1428,true)])) (.node 1 (.leaf [(1423,false),(1429,true)]) (.node 1 (.leaf [(1424,false),(1430,true)]) (.leaf [(1425,false),(1431,true)])))) (.node 2 (.node 1 (.leaf [(1426,false),(1432,true)]) (.leaf [(1406,false),(1427,true)])) (.node 1 (.leaf [(1406,false),(1421,false),(1428,true)]) (.node 1 (.leaf [(1406,false),(1422,false),(1429,true)]) (.leaf [(1406,false),(1423,false),(1430,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1406,false),(1424,false),(1431,true)]) (.leaf [(1406,false),(1425,false),(1432,true)])) (.node 1 (.leaf [(1406,false),(1426,false),(1433,true)]) (.node 1 (.leaf [(1407,false),(1428,true)]) (.leaf [(1407,false),(1421,false),(1429,true)])))) (.node 2 (.node 1 (.leaf [(1407,false),(1422,false),(1430,true)]) (.leaf [(1407,false),(1423,false),(1431,true)])) (.node 1 (.leaf [(1407,false),(1424,false),(1432,true)]) (.node 1 (.leaf [(1407,false),(1425,false),(1433,true)]) (.leaf [(1407,false),(1426,false),(1434,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1408,false),(1429,true)]) (.leaf [(1408,false),(1421,false),(1430,true)])) (.node 1 (.leaf [(1408,false),(1422,false),(1431,true)]) (.node 1 (.leaf [(1408,false),(1423,false),(1432,true)]) (.leaf [(1408,false),(1424,false),(1433,true)])))) (.node 2 (.node 1 (.leaf [(1408,false),(1425,false),(1434,true)]) (.leaf [(1408,false),(1426,false),(1435,true)])) (.node 1 (.leaf [(1409,false),(1430,true)]) (.node 1 (.leaf [(1409,false),(1421,false),(1431,true)]) (.leaf [(1409,false),(1422,false),(1432,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1409,false),(1423,false),(1433,true)]) (.leaf [(1409,false),(1424,false),(1434,true)])) (.node 1 (.leaf [(1409,false),(1425,false),(1435,true)]) (.node 1 (.leaf [(1409,false),(1426,false),(1436,true)]) (.leaf [(1410,false),(1431,true)])))) (.node 3 (.node 1 (.leaf [(1410,false),(1421,false),(1432,true)]) (.node 1 (.leaf [(1410,false),(1422,false),(1433,true)]) (.leaf [(1410,false),(1423,false),(1434,true)]))) (.node 1 (.leaf [(1410,false),(1424,false),(1435,true)]) (.node 1 (.leaf [(1410,false),(1425,false),(1436,true)]) (.leaf [(1410,false),(1426,false),(1437,true)])))))))
theorem merge20 : m20.clauses = ScoreNodes.m20 := by rfl

def t20 : Tree := .node 53 (.node 22 t8 t19) m20
theorem eq20 : t20.clauses = ScoreNodes.c20 :=
  cat_eq _ (cat_eq _ eq8 eq19) merge20


end EncloseHorse.Certificate.Generated.Daily20260310.Lookup
