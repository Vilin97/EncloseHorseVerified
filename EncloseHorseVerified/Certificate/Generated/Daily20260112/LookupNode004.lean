import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupNode003

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def t54 : Tree := .nil
theorem eq54 : t54.clauses = ScoreNodes.c54 := by rfl

def m55 : Tree := (.node 1 (.leaf [(91,true),(1700,true)]) (.node 1 (.leaf [(91,true),(1700,true)]) (.leaf [(91,true),(91,true),(1701,true)])))
theorem merge55 : m55.clauses = ScoreNodes.m55 := by rfl

def t55 : Tree := .node 0 (.node 0 t54 t54) m55
theorem eq55 : t55.clauses = ScoreNodes.c55 :=
  cat_eq _ (cat_eq _ eq54 eq54) merge55

def m56 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1700,false),(1702,true)]) (.leaf [(1701,false),(1703,true)])) (.node 1 (.leaf [(1698,false),(1702,true)]) (.leaf [(1698,false),(1700,false),(1703,true)]))) (.node 2 (.node 1 (.leaf [(1698,false),(1701,false),(1704,true)]) (.leaf [(1699,false),(1703,true)])) (.node 1 (.leaf [(1699,false),(1700,false),(1704,true)]) (.leaf [(1699,false),(1701,false),(1705,true)]))))
theorem merge56 : m56.clauses = ScoreNodes.m56 := by rfl

def t56 : Tree := .node 6 (.node 3 t53 t55) m56
theorem eq56 : t56.clauses = ScoreNodes.c56 :=
  cat_eq _ (cat_eq _ eq53 eq55) merge56

def m57 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1702,false),(1706,true)]) (.node 1 (.leaf [(1703,false),(1707,true)]) (.leaf [(1704,false),(1708,true)]))) (.node 1 (.leaf [(1705,false),(1709,true)]) (.node 1 (.leaf [(1694,false),(1706,true)]) (.leaf [(1694,false),(1702,false),(1707,true)])))) (.node 3 (.node 1 (.leaf [(1694,false),(1703,false),(1708,true)]) (.node 1 (.leaf [(1694,false),(1704,false),(1709,true)]) (.leaf [(1694,false),(1705,false),(1710,true)]))) (.node 1 (.leaf [(1695,false),(1707,true)]) (.node 1 (.leaf [(1695,false),(1702,false),(1708,true)]) (.leaf [(1695,false),(1703,false),(1709,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1695,false),(1704,false),(1710,true)]) (.node 1 (.leaf [(1695,false),(1705,false),(1711,true)]) (.leaf [(1696,false),(1708,true)]))) (.node 1 (.leaf [(1696,false),(1702,false),(1709,true)]) (.node 1 (.leaf [(1696,false),(1703,false),(1710,true)]) (.leaf [(1696,false),(1704,false),(1711,true)])))) (.node 3 (.node 1 (.leaf [(1696,false),(1705,false),(1712,true)]) (.node 1 (.leaf [(1697,false),(1709,true)]) (.leaf [(1697,false),(1702,false),(1710,true)]))) (.node 1 (.leaf [(1697,false),(1703,false),(1711,true)]) (.node 1 (.leaf [(1697,false),(1704,false),(1712,true)]) (.leaf [(1697,false),(1705,false),(1713,true)]))))))
theorem merge57 : m57.clauses = ScoreNodes.m57 := by rfl

def t57 : Tree := .node 28 (.node 14 t52 t56) m57
theorem eq57 : t57.clauses = ScoreNodes.c57 :=
  cat_eq _ (cat_eq _ eq52 eq56) merge57

def m58 : Tree := (.node 35 (.node 17 (.node 8 (.node 4 (.node 2 (.node 1 (.leaf [(1706,false),(1714,true)]) (.leaf [(1707,false),(1715,true)])) (.node 1 (.leaf [(1708,false),(1716,true)]) (.leaf [(1709,false),(1717,true)]))) (.node 2 (.node 1 (.leaf [(1710,false),(1718,true)]) (.leaf [(1711,false),(1719,true)])) (.node 1 (.leaf [(1712,false),(1720,true)]) (.leaf [(1713,false),(1721,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1683,false),(1714,true)]) (.leaf [(1683,false),(1706,false),(1715,true)])) (.node 1 (.leaf [(1683,false),(1707,false),(1716,true)]) (.leaf [(1683,false),(1708,false),(1717,true)]))) (.node 2 (.node 1 (.leaf [(1683,false),(1709,false),(1718,true)]) (.leaf [(1683,false),(1710,false),(1719,true)])) (.node 1 (.leaf [(1683,false),(1711,false),(1720,true)]) (.node 1 (.leaf [(1683,false),(1712,false),(1721,true)]) (.leaf [(1683,false),(1713,false),(1722,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1684,false),(1715,true)]) (.leaf [(1684,false),(1706,false),(1716,true)])) (.node 1 (.leaf [(1684,false),(1707,false),(1717,true)]) (.leaf [(1684,false),(1708,false),(1718,true)]))) (.node 2 (.node 1 (.leaf [(1684,false),(1709,false),(1719,true)]) (.leaf [(1684,false),(1710,false),(1720,true)])) (.node 1 (.leaf [(1684,false),(1711,false),(1721,true)]) (.node 1 (.leaf [(1684,false),(1712,false),(1722,true)]) (.leaf [(1684,false),(1713,false),(1723,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(1685,false),(1716,true)]) (.leaf [(1685,false),(1706,false),(1717,true)])) (.node 1 (.leaf [(1685,false),(1707,false),(1718,true)]) (.leaf [(1685,false),(1708,false),(1719,true)]))) (.node 2 (.node 1 (.leaf [(1685,false),(1709,false),(1720,true)]) (.leaf [(1685,false),(1710,false),(1721,true)])) (.node 1 (.leaf [(1685,false),(1711,false),(1722,true)]) (.node 1 (.leaf [(1685,false),(1712,false),(1723,true)]) (.leaf [(1685,false),(1713,false),(1724,true)]))))))) (.node 18 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1686,false),(1717,true)]) (.leaf [(1686,false),(1706,false),(1718,true)])) (.node 1 (.leaf [(1686,false),(1707,false),(1719,true)]) (.leaf [(1686,false),(1708,false),(1720,true)]))) (.node 2 (.node 1 (.leaf [(1686,false),(1709,false),(1721,true)]) (.leaf [(1686,false),(1710,false),(1722,true)])) (.node 1 (.leaf [(1686,false),(1711,false),(1723,true)]) (.node 1 (.leaf [(1686,false),(1712,false),(1724,true)]) (.leaf [(1686,false),(1713,false),(1725,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(1687,false),(1718,true)]) (.leaf [(1687,false),(1706,false),(1719,true)])) (.node 1 (.leaf [(1687,false),(1707,false),(1720,true)]) (.leaf [(1687,false),(1708,false),(1721,true)]))) (.node 2 (.node 1 (.leaf [(1687,false),(1709,false),(1722,true)]) (.leaf [(1687,false),(1710,false),(1723,true)])) (.node 1 (.leaf [(1687,false),(1711,false),(1724,true)]) (.node 1 (.leaf [(1687,false),(1712,false),(1725,true)]) (.leaf [(1687,false),(1713,false),(1726,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1688,false),(1719,true)]) (.leaf [(1688,false),(1706,false),(1720,true)])) (.node 1 (.leaf [(1688,false),(1707,false),(1721,true)]) (.leaf [(1688,false),(1708,false),(1722,true)]))) (.node 2 (.node 1 (.leaf [(1688,false),(1709,false),(1723,true)]) (.leaf [(1688,false),(1710,false),(1724,true)])) (.node 1 (.leaf [(1688,false),(1711,false),(1725,true)]) (.node 1 (.leaf [(1688,false),(1712,false),(1726,true)]) (.leaf [(1688,false),(1713,false),(1727,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(1689,false),(1720,true)]) (.leaf [(1689,false),(1706,false),(1721,true)])) (.node 1 (.leaf [(1689,false),(1707,false),(1722,true)]) (.leaf [(1689,false),(1708,false),(1723,true)]))) (.node 2 (.node 1 (.leaf [(1689,false),(1709,false),(1724,true)]) (.leaf [(1689,false),(1710,false),(1725,true)])) (.node 1 (.leaf [(1689,false),(1711,false),(1726,true)]) (.node 1 (.leaf [(1689,false),(1712,false),(1727,true)]) (.leaf [(1689,false),(1713,false),(1728,true)]))))))))
theorem merge58 : m58.clauses = ScoreNodes.m58 := by rfl

def t58 : Tree := .node 93 (.node 41 t48 t57) m58
theorem eq58 : t58.clauses = ScoreNodes.c58 :=
  cat_eq _ (cat_eq _ eq48 eq57) merge58

def m59 : Tree := (.node 1 (.leaf [(91,true),(1729,true)]) (.node 1 (.leaf [(91,true),(1729,true)]) (.leaf [(91,true),(91,true),(1730,true)])))
theorem merge59 : m59.clauses = ScoreNodes.m59 := by rfl

def t59 : Tree := .node 0 (.node 0 t54 t54) m59
theorem eq59 : t59.clauses = ScoreNodes.c59 :=
  cat_eq _ (cat_eq _ eq54 eq54) merge59

def t60 : Tree := .nil
theorem eq60 : t60.clauses = ScoreNodes.c60 := by rfl

def m61 : Tree := (.node 1 (.leaf [(95,true),(1731,true)]) (.node 1 (.leaf [(95,true),(1731,true)]) (.leaf [(95,true),(95,true),(1732,true)])))
theorem merge61 : m61.clauses = ScoreNodes.m61 := by rfl

def t61 : Tree := .node 0 (.node 0 t60 t60) m61
theorem eq61 : t61.clauses = ScoreNodes.c61 :=
  cat_eq _ (cat_eq _ eq60 eq60) merge61

def m62 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1731,false),(1733,true)]) (.leaf [(1732,false),(1734,true)])) (.node 1 (.leaf [(1729,false),(1733,true)]) (.leaf [(1729,false),(1731,false),(1734,true)]))) (.node 2 (.node 1 (.leaf [(1729,false),(1732,false),(1735,true)]) (.leaf [(1730,false),(1734,true)])) (.node 1 (.leaf [(1730,false),(1731,false),(1735,true)]) (.leaf [(1730,false),(1732,false),(1736,true)]))))
theorem merge62 : m62.clauses = ScoreNodes.m62 := by rfl

def t62 : Tree := .node 6 (.node 3 t59 t61) m62
theorem eq62 : t62.clauses = ScoreNodes.c62 :=
  cat_eq _ (cat_eq _ eq59 eq61) merge62

def m63 : Tree := (.node 1 (.leaf [(95,true),(1737,true)]) (.node 1 (.leaf [(95,true),(1737,true)]) (.leaf [(95,true),(95,true),(1738,true)])))
theorem merge63 : m63.clauses = ScoreNodes.m63 := by rfl

def t63 : Tree := .node 0 (.node 0 t60 t60) m63
theorem eq63 : t63.clauses = ScoreNodes.c63 :=
  cat_eq _ (cat_eq _ eq60 eq60) merge63

def t64 : Tree := .nil
theorem eq64 : t64.clauses = ScoreNodes.c64 := by rfl

def t65 : Tree := .nil
theorem eq65 : t65.clauses = ScoreNodes.c65 := by rfl

def m66 : Tree := (.node 1 (.leaf [(109,true),(1739,true)]) (.node 1 (.leaf [(107,true),(1739,true)]) (.leaf [(107,true),(109,true),(1740,true)])))
theorem merge66 : m66.clauses = ScoreNodes.m66 := by rfl

def t66 : Tree := .node 0 (.node 0 t64 t65) m66
theorem eq66 : t66.clauses = ScoreNodes.c66 :=
  cat_eq _ (cat_eq _ eq64 eq65) merge66

def m67 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1739,false),(1741,true)]) (.leaf [(1740,false),(1742,true)])) (.node 1 (.leaf [(1737,false),(1741,true)]) (.leaf [(1737,false),(1739,false),(1742,true)]))) (.node 2 (.node 1 (.leaf [(1737,false),(1740,false),(1743,true)]) (.leaf [(1738,false),(1742,true)])) (.node 1 (.leaf [(1738,false),(1739,false),(1743,true)]) (.leaf [(1738,false),(1740,false),(1744,true)]))))
theorem merge67 : m67.clauses = ScoreNodes.m67 := by rfl

def t67 : Tree := .node 6 (.node 3 t63 t66) m67
theorem eq67 : t67.clauses = ScoreNodes.c67 :=
  cat_eq _ (cat_eq _ eq63 eq66) merge67


end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
