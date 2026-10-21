import EncloseHorseVerified.Certificate.Generated.Daily20260310.LookupNode004

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.Lookup

def m104 : Tree := (.node 2 (.node 1 (.leaf [(1669,false),(1671,true)]) (.leaf [(1670,false),(1672,true)])) (.node 1 (.leaf [(175,true),(1671,true)]) (.node 1 (.leaf [(175,true),(1669,false),(1672,true)]) (.leaf [(175,true),(1670,false),(1673,true)]))))
theorem merge104 : m104.clauses = ScoreNodes.m104 := by rfl

def t104 : Tree := .node 3 (.node 0 t100 t103) m104
theorem eq104 : t104.clauses = ScoreNodes.c104 :=
  cat_eq _ (cat_eq _ eq100 eq103) merge104

def t105 : Tree := .nil
theorem eq105 : t105.clauses = ScoreNodes.c105 := by rfl

def t106 : Tree := .nil
theorem eq106 : t106.clauses = ScoreNodes.c106 := by rfl

def t107 : Tree := .nil
theorem eq107 : t107.clauses = ScoreNodes.c107 := by rfl

def m108 : Tree := (.node 1 (.leaf [(187,true),(1674,true)]) (.node 1 (.leaf [(185,true),(1674,true)]) (.leaf [(185,true),(187,true),(1675,true)])))
theorem merge108 : m108.clauses = ScoreNodes.m108 := by rfl

def t108 : Tree := .node 0 (.node 0 t106 t107) m108
theorem eq108 : t108.clauses = ScoreNodes.c108 :=
  cat_eq _ (cat_eq _ eq106 eq107) merge108

def m109 : Tree := (.node 2 (.node 1 (.leaf [(1674,false),(1676,true)]) (.leaf [(1675,false),(1677,true)])) (.node 1 (.leaf [(183,true),(1676,true)]) (.node 1 (.leaf [(183,true),(1674,false),(1677,true)]) (.leaf [(183,true),(1675,false),(1678,true)]))))
theorem merge109 : m109.clauses = ScoreNodes.m109 := by rfl

def t109 : Tree := .node 3 (.node 0 t105 t108) m109
theorem eq109 : t109.clauses = ScoreNodes.c109 :=
  cat_eq _ (cat_eq _ eq105 eq108) merge109

def m110 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(1676,false),(1679,true)]) (.node 1 (.leaf [(1677,false),(1680,true)]) (.leaf [(1678,false),(1681,true)]))) (.node 2 (.node 1 (.leaf [(1671,false),(1679,true)]) (.leaf [(1671,false),(1676,false),(1680,true)])) (.node 1 (.leaf [(1671,false),(1677,false),(1681,true)]) (.leaf [(1671,false),(1678,false),(1682,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1672,false),(1680,true)]) (.leaf [(1672,false),(1676,false),(1681,true)])) (.node 1 (.leaf [(1672,false),(1677,false),(1682,true)]) (.leaf [(1672,false),(1678,false),(1683,true)]))) (.node 2 (.node 1 (.leaf [(1673,false),(1681,true)]) (.leaf [(1673,false),(1676,false),(1682,true)])) (.node 1 (.leaf [(1673,false),(1677,false),(1683,true)]) (.leaf [(1673,false),(1678,false),(1684,true)])))))
theorem merge110 : m110.clauses = ScoreNodes.m110 := by rfl

def t110 : Tree := .node 16 (.node 8 t104 t109) m110
theorem eq110 : t110.clauses = ScoreNodes.c110 :=
  cat_eq _ (cat_eq _ eq104 eq109) merge110

def m111 : Tree := (.node 20 (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1679,false),(1685,true)]) (.leaf [(1680,false),(1686,true)])) (.node 1 (.leaf [(1681,false),(1687,true)]) (.node 1 (.leaf [(1682,false),(1688,true)]) (.leaf [(1683,false),(1689,true)])))) (.node 2 (.node 1 (.leaf [(1684,false),(1690,true)]) (.leaf [(1664,false),(1685,true)])) (.node 1 (.leaf [(1664,false),(1679,false),(1686,true)]) (.node 1 (.leaf [(1664,false),(1680,false),(1687,true)]) (.leaf [(1664,false),(1681,false),(1688,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1664,false),(1682,false),(1689,true)]) (.leaf [(1664,false),(1683,false),(1690,true)])) (.node 1 (.leaf [(1664,false),(1684,false),(1691,true)]) (.node 1 (.leaf [(1665,false),(1686,true)]) (.leaf [(1665,false),(1679,false),(1687,true)])))) (.node 2 (.node 1 (.leaf [(1665,false),(1680,false),(1688,true)]) (.leaf [(1665,false),(1681,false),(1689,true)])) (.node 1 (.leaf [(1665,false),(1682,false),(1690,true)]) (.node 1 (.leaf [(1665,false),(1683,false),(1691,true)]) (.leaf [(1665,false),(1684,false),(1692,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1666,false),(1687,true)]) (.leaf [(1666,false),(1679,false),(1688,true)])) (.node 1 (.leaf [(1666,false),(1680,false),(1689,true)]) (.node 1 (.leaf [(1666,false),(1681,false),(1690,true)]) (.leaf [(1666,false),(1682,false),(1691,true)])))) (.node 2 (.node 1 (.leaf [(1666,false),(1683,false),(1692,true)]) (.leaf [(1666,false),(1684,false),(1693,true)])) (.node 1 (.leaf [(1667,false),(1688,true)]) (.node 1 (.leaf [(1667,false),(1679,false),(1689,true)]) (.leaf [(1667,false),(1680,false),(1690,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1667,false),(1681,false),(1691,true)]) (.leaf [(1667,false),(1682,false),(1692,true)])) (.node 1 (.leaf [(1667,false),(1683,false),(1693,true)]) (.node 1 (.leaf [(1667,false),(1684,false),(1694,true)]) (.leaf [(1668,false),(1689,true)])))) (.node 3 (.node 1 (.leaf [(1668,false),(1679,false),(1690,true)]) (.node 1 (.leaf [(1668,false),(1680,false),(1691,true)]) (.leaf [(1668,false),(1681,false),(1692,true)]))) (.node 1 (.leaf [(1668,false),(1682,false),(1693,true)]) (.node 1 (.leaf [(1668,false),(1683,false),(1694,true)]) (.leaf [(1668,false),(1684,false),(1695,true)])))))))
theorem merge111 : m111.clauses = ScoreNodes.m111 := by rfl

def t111 : Tree := .node 53 (.node 22 t99 t110) m111
theorem eq111 : t111.clauses = ScoreNodes.c111 :=
  cat_eq _ (cat_eq _ eq99 eq110) merge111

def t112 : Tree := .nil
theorem eq112 : t112.clauses = ScoreNodes.c112 := by rfl

def t113 : Tree := .nil
theorem eq113 : t113.clauses = ScoreNodes.c113 := by rfl

def t114 : Tree := .nil
theorem eq114 : t114.clauses = ScoreNodes.c114 := by rfl

def m115 : Tree := (.node 1 (.leaf [(193,true),(1696,true)]) (.node 1 (.leaf [(191,true),(1696,true)]) (.leaf [(191,true),(193,true),(1697,true)])))
theorem merge115 : m115.clauses = ScoreNodes.m115 := by rfl

def t115 : Tree := .node 0 (.node 0 t113 t114) m115
theorem eq115 : t115.clauses = ScoreNodes.c115 :=
  cat_eq _ (cat_eq _ eq113 eq114) merge115

def m116 : Tree := (.node 2 (.node 1 (.leaf [(1696,false),(1698,true)]) (.leaf [(1697,false),(1699,true)])) (.node 1 (.leaf [(189,true),(1698,true)]) (.node 1 (.leaf [(189,true),(1696,false),(1699,true)]) (.leaf [(189,true),(1697,false),(1700,true)]))))
theorem merge116 : m116.clauses = ScoreNodes.m116 := by rfl

def t116 : Tree := .node 3 (.node 0 t112 t115) m116
theorem eq116 : t116.clauses = ScoreNodes.c116 :=
  cat_eq _ (cat_eq _ eq112 eq115) merge116

def t117 : Tree := .nil
theorem eq117 : t117.clauses = ScoreNodes.c117 := by rfl

def t118 : Tree := .nil
theorem eq118 : t118.clauses = ScoreNodes.c118 := by rfl

def t119 : Tree := .nil
theorem eq119 : t119.clauses = ScoreNodes.c119 := by rfl

def m120 : Tree := (.node 1 (.leaf [(201,true),(1701,true)]) (.node 1 (.leaf [(199,true),(1701,true)]) (.leaf [(199,true),(201,true),(1702,true)])))
theorem merge120 : m120.clauses = ScoreNodes.m120 := by rfl

def t120 : Tree := .node 0 (.node 0 t118 t119) m120
theorem eq120 : t120.clauses = ScoreNodes.c120 :=
  cat_eq _ (cat_eq _ eq118 eq119) merge120

def m121 : Tree := (.node 2 (.node 1 (.leaf [(1701,false),(1703,true)]) (.leaf [(1702,false),(1704,true)])) (.node 1 (.leaf [(195,true),(1703,true)]) (.node 1 (.leaf [(195,true),(1701,false),(1704,true)]) (.leaf [(195,true),(1702,false),(1705,true)]))))
theorem merge121 : m121.clauses = ScoreNodes.m121 := by rfl

def t121 : Tree := .node 3 (.node 0 t117 t120) m121
theorem eq121 : t121.clauses = ScoreNodes.c121 :=
  cat_eq _ (cat_eq _ eq117 eq120) merge121

def m122 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(1703,false),(1706,true)]) (.node 1 (.leaf [(1704,false),(1707,true)]) (.leaf [(1705,false),(1708,true)]))) (.node 2 (.node 1 (.leaf [(1698,false),(1706,true)]) (.leaf [(1698,false),(1703,false),(1707,true)])) (.node 1 (.leaf [(1698,false),(1704,false),(1708,true)]) (.leaf [(1698,false),(1705,false),(1709,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1699,false),(1707,true)]) (.leaf [(1699,false),(1703,false),(1708,true)])) (.node 1 (.leaf [(1699,false),(1704,false),(1709,true)]) (.leaf [(1699,false),(1705,false),(1710,true)]))) (.node 2 (.node 1 (.leaf [(1700,false),(1708,true)]) (.leaf [(1700,false),(1703,false),(1709,true)])) (.node 1 (.leaf [(1700,false),(1704,false),(1710,true)]) (.leaf [(1700,false),(1705,false),(1711,true)])))))
theorem merge122 : m122.clauses = ScoreNodes.m122 := by rfl

def t122 : Tree := .node 16 (.node 8 t116 t121) m122
theorem eq122 : t122.clauses = ScoreNodes.c122 :=
  cat_eq _ (cat_eq _ eq116 eq121) merge122


end EncloseHorse.Certificate.Generated.Daily20260310.Lookup
