import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupNode002

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def t41 : Tree := .nil
theorem eq41 : t41.clauses = ScoreNodes.c41 := by rfl

def m42 : Tree := (.node 1 (.leaf [(81,true),(1670,true)]) (.node 1 (.leaf [(81,true),(1670,true)]) (.leaf [(81,true),(81,true),(1671,true)])))
theorem merge42 : m42.clauses = ScoreNodes.m42 := by rfl

def t42 : Tree := .node 0 (.node 0 t41 t41) m42
theorem eq42 : t42.clauses = ScoreNodes.c42 :=
  cat_eq _ (cat_eq _ eq41 eq41) merge42

def m43 : Tree := (.node 2 (.node 1 (.leaf [(1670,false),(1672,true)]) (.leaf [(1671,false),(1673,true)])) (.node 1 (.leaf [(79,true),(1672,true)]) (.node 1 (.leaf [(79,true),(1670,false),(1673,true)]) (.leaf [(79,true),(1671,false),(1674,true)]))))
theorem merge43 : m43.clauses = ScoreNodes.m43 := by rfl

def t43 : Tree := .node 3 (.node 0 t34 t42) m43
theorem eq43 : t43.clauses = ScoreNodes.c43 :=
  cat_eq _ (cat_eq _ eq34 eq42) merge43

def m44 : Tree := (.node 1 (.leaf [(81,true),(1675,true)]) (.node 1 (.leaf [(81,true),(1675,true)]) (.leaf [(81,true),(81,true),(1676,true)])))
theorem merge44 : m44.clauses = ScoreNodes.m44 := by rfl

def t44 : Tree := .node 0 (.node 0 t41 t41) m44
theorem eq44 : t44.clauses = ScoreNodes.c44 :=
  cat_eq _ (cat_eq _ eq41 eq41) merge44

def t45 : Tree := .nil
theorem eq45 : t45.clauses = ScoreNodes.c45 := by rfl

def m46 : Tree := (.node 1 (.leaf [(83,true),(1677,true)]) (.node 1 (.leaf [(83,true),(1677,true)]) (.leaf [(83,true),(83,true),(1678,true)])))
theorem merge46 : m46.clauses = ScoreNodes.m46 := by rfl

def t46 : Tree := .node 0 (.node 0 t45 t45) m46
theorem eq46 : t46.clauses = ScoreNodes.c46 :=
  cat_eq _ (cat_eq _ eq45 eq45) merge46

def m47 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1677,false),(1679,true)]) (.leaf [(1678,false),(1680,true)])) (.node 1 (.leaf [(1675,false),(1679,true)]) (.leaf [(1675,false),(1677,false),(1680,true)]))) (.node 2 (.node 1 (.leaf [(1675,false),(1678,false),(1681,true)]) (.leaf [(1676,false),(1680,true)])) (.node 1 (.leaf [(1676,false),(1677,false),(1681,true)]) (.leaf [(1676,false),(1678,false),(1682,true)]))))
theorem merge47 : m47.clauses = ScoreNodes.m47 := by rfl

def t47 : Tree := .node 6 (.node 3 t44 t46) m47
theorem eq47 : t47.clauses = ScoreNodes.c47 :=
  cat_eq _ (cat_eq _ eq44 eq46) merge47

def m48 : Tree := (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1679,false),(1683,true)]) (.leaf [(1680,false),(1684,true)])) (.node 1 (.leaf [(1681,false),(1685,true)]) (.leaf [(1682,false),(1686,true)]))) (.node 2 (.node 1 (.leaf [(1672,false),(1683,true)]) (.leaf [(1672,false),(1679,false),(1684,true)])) (.node 1 (.leaf [(1672,false),(1680,false),(1685,true)]) (.node 1 (.leaf [(1672,false),(1681,false),(1686,true)]) (.leaf [(1672,false),(1682,false),(1687,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1673,false),(1684,true)]) (.leaf [(1673,false),(1679,false),(1685,true)])) (.node 1 (.leaf [(1673,false),(1680,false),(1686,true)]) (.node 1 (.leaf [(1673,false),(1681,false),(1687,true)]) (.leaf [(1673,false),(1682,false),(1688,true)])))) (.node 2 (.node 1 (.leaf [(1674,false),(1685,true)]) (.leaf [(1674,false),(1679,false),(1686,true)])) (.node 1 (.leaf [(1674,false),(1680,false),(1687,true)]) (.node 1 (.leaf [(1674,false),(1681,false),(1688,true)]) (.leaf [(1674,false),(1682,false),(1689,true)]))))))
theorem merge48 : m48.clauses = ScoreNodes.m48 := by rfl

def t48 : Tree := .node 22 (.node 8 t43 t47) m48
theorem eq48 : t48.clauses = ScoreNodes.c48 :=
  cat_eq _ (cat_eq _ eq43 eq47) merge48

def m49 : Tree := (.node 1 (.leaf [(83,true),(1690,true)]) (.node 1 (.leaf [(83,true),(1690,true)]) (.leaf [(83,true),(83,true),(1691,true)])))
theorem merge49 : m49.clauses = ScoreNodes.m49 := by rfl

def t49 : Tree := .node 0 (.node 0 t45 t45) m49
theorem eq49 : t49.clauses = ScoreNodes.c49 :=
  cat_eq _ (cat_eq _ eq45 eq45) merge49

def t50 : Tree := .nil
theorem eq50 : t50.clauses = ScoreNodes.c50 := by rfl

def m51 : Tree := (.node 1 (.leaf [(89,true),(1692,true)]) (.node 1 (.leaf [(89,true),(1692,true)]) (.leaf [(89,true),(89,true),(1693,true)])))
theorem merge51 : m51.clauses = ScoreNodes.m51 := by rfl

def t51 : Tree := .node 0 (.node 0 t50 t50) m51
theorem eq51 : t51.clauses = ScoreNodes.c51 :=
  cat_eq _ (cat_eq _ eq50 eq50) merge51

def m52 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1692,false),(1694,true)]) (.leaf [(1693,false),(1695,true)])) (.node 1 (.leaf [(1690,false),(1694,true)]) (.leaf [(1690,false),(1692,false),(1695,true)]))) (.node 2 (.node 1 (.leaf [(1690,false),(1693,false),(1696,true)]) (.leaf [(1691,false),(1695,true)])) (.node 1 (.leaf [(1691,false),(1692,false),(1696,true)]) (.leaf [(1691,false),(1693,false),(1697,true)]))))
theorem merge52 : m52.clauses = ScoreNodes.m52 := by rfl

def t52 : Tree := .node 6 (.node 3 t49 t51) m52
theorem eq52 : t52.clauses = ScoreNodes.c52 :=
  cat_eq _ (cat_eq _ eq49 eq51) merge52

def m53 : Tree := (.node 1 (.leaf [(89,true),(1698,true)]) (.node 1 (.leaf [(89,true),(1698,true)]) (.leaf [(89,true),(89,true),(1699,true)])))
theorem merge53 : m53.clauses = ScoreNodes.m53 := by rfl

def t53 : Tree := .node 0 (.node 0 t50 t50) m53
theorem eq53 : t53.clauses = ScoreNodes.c53 :=
  cat_eq _ (cat_eq _ eq50 eq50) merge53


end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
