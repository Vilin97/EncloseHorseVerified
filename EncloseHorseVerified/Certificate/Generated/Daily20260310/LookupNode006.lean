import EncloseHorseVerified.Certificate.Generated.Daily20260310.LookupNode005

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.Lookup

def t123 : Tree := .nil
theorem eq123 : t123.clauses = ScoreNodes.c123 := by rfl

def t124 : Tree := .nil
theorem eq124 : t124.clauses = ScoreNodes.c124 := by rfl

def t125 : Tree := .nil
theorem eq125 : t125.clauses = ScoreNodes.c125 := by rfl

def m126 : Tree := (.node 1 (.leaf [(213,true),(1712,true)]) (.node 1 (.leaf [(209,true),(1712,true)]) (.leaf [(209,true),(213,true),(1713,true)])))
theorem merge126 : m126.clauses = ScoreNodes.m126 := by rfl

def t126 : Tree := .node 0 (.node 0 t124 t125) m126
theorem eq126 : t126.clauses = ScoreNodes.c126 :=
  cat_eq _ (cat_eq _ eq124 eq125) merge126

def m127 : Tree := (.node 2 (.node 1 (.leaf [(1712,false),(1714,true)]) (.leaf [(1713,false),(1715,true)])) (.node 1 (.leaf [(207,true),(1714,true)]) (.node 1 (.leaf [(207,true),(1712,false),(1715,true)]) (.leaf [(207,true),(1713,false),(1716,true)]))))
theorem merge127 : m127.clauses = ScoreNodes.m127 := by rfl

def t127 : Tree := .node 3 (.node 0 t123 t126) m127
theorem eq127 : t127.clauses = ScoreNodes.c127 :=
  cat_eq _ (cat_eq _ eq123 eq126) merge127

def t128 : Tree := .nil
theorem eq128 : t128.clauses = ScoreNodes.c128 := by rfl

def t129 : Tree := .nil
theorem eq129 : t129.clauses = ScoreNodes.c129 := by rfl

def t130 : Tree := .nil
theorem eq130 : t130.clauses = ScoreNodes.c130 := by rfl

def m131 : Tree := (.node 1 (.leaf [(219,true),(1717,true)]) (.node 1 (.leaf [(217,true),(1717,true)]) (.leaf [(217,true),(219,true),(1718,true)])))
theorem merge131 : m131.clauses = ScoreNodes.m131 := by rfl

def t131 : Tree := .node 0 (.node 0 t129 t130) m131
theorem eq131 : t131.clauses = ScoreNodes.c131 :=
  cat_eq _ (cat_eq _ eq129 eq130) merge131

def m132 : Tree := (.node 2 (.node 1 (.leaf [(1717,false),(1719,true)]) (.leaf [(1718,false),(1720,true)])) (.node 1 (.leaf [(215,true),(1719,true)]) (.node 1 (.leaf [(215,true),(1717,false),(1720,true)]) (.leaf [(215,true),(1718,false),(1721,true)]))))
theorem merge132 : m132.clauses = ScoreNodes.m132 := by rfl

def t132 : Tree := .node 3 (.node 0 t128 t131) m132
theorem eq132 : t132.clauses = ScoreNodes.c132 :=
  cat_eq _ (cat_eq _ eq128 eq131) merge132

def m133 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(1719,false),(1722,true)]) (.node 1 (.leaf [(1720,false),(1723,true)]) (.leaf [(1721,false),(1724,true)]))) (.node 2 (.node 1 (.leaf [(1714,false),(1722,true)]) (.leaf [(1714,false),(1719,false),(1723,true)])) (.node 1 (.leaf [(1714,false),(1720,false),(1724,true)]) (.leaf [(1714,false),(1721,false),(1725,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1715,false),(1723,true)]) (.leaf [(1715,false),(1719,false),(1724,true)])) (.node 1 (.leaf [(1715,false),(1720,false),(1725,true)]) (.leaf [(1715,false),(1721,false),(1726,true)]))) (.node 2 (.node 1 (.leaf [(1716,false),(1724,true)]) (.leaf [(1716,false),(1719,false),(1725,true)])) (.node 1 (.leaf [(1716,false),(1720,false),(1726,true)]) (.leaf [(1716,false),(1721,false),(1727,true)])))))
theorem merge133 : m133.clauses = ScoreNodes.m133 := by rfl

def t133 : Tree := .node 16 (.node 8 t127 t132) m133
theorem eq133 : t133.clauses = ScoreNodes.c133 :=
  cat_eq _ (cat_eq _ eq127 eq132) merge133

def m134 : Tree := (.node 24 (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1722,false),(1728,true)]) (.node 1 (.leaf [(1723,false),(1729,true)]) (.leaf [(1724,false),(1730,true)]))) (.node 1 (.leaf [(1725,false),(1731,true)]) (.node 1 (.leaf [(1726,false),(1732,true)]) (.leaf [(1727,false),(1733,true)])))) (.node 3 (.node 1 (.leaf [(1706,false),(1728,true)]) (.node 1 (.leaf [(1706,false),(1722,false),(1729,true)]) (.leaf [(1706,false),(1723,false),(1730,true)]))) (.node 1 (.leaf [(1706,false),(1724,false),(1731,true)]) (.node 1 (.leaf [(1706,false),(1725,false),(1732,true)]) (.leaf [(1706,false),(1726,false),(1733,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1706,false),(1727,false),(1734,true)]) (.node 1 (.leaf [(1707,false),(1729,true)]) (.leaf [(1707,false),(1722,false),(1730,true)]))) (.node 1 (.leaf [(1707,false),(1723,false),(1731,true)]) (.node 1 (.leaf [(1707,false),(1724,false),(1732,true)]) (.leaf [(1707,false),(1725,false),(1733,true)])))) (.node 3 (.node 1 (.leaf [(1707,false),(1726,false),(1734,true)]) (.node 1 (.leaf [(1707,false),(1727,false),(1735,true)]) (.leaf [(1708,false),(1730,true)]))) (.node 1 (.leaf [(1708,false),(1722,false),(1731,true)]) (.node 1 (.leaf [(1708,false),(1723,false),(1732,true)]) (.leaf [(1708,false),(1724,false),(1733,true)])))))) (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1708,false),(1725,false),(1734,true)]) (.node 1 (.leaf [(1708,false),(1726,false),(1735,true)]) (.leaf [(1708,false),(1727,false),(1736,true)]))) (.node 1 (.leaf [(1709,false),(1731,true)]) (.node 1 (.leaf [(1709,false),(1722,false),(1732,true)]) (.leaf [(1709,false),(1723,false),(1733,true)])))) (.node 3 (.node 1 (.leaf [(1709,false),(1724,false),(1734,true)]) (.node 1 (.leaf [(1709,false),(1725,false),(1735,true)]) (.leaf [(1709,false),(1726,false),(1736,true)]))) (.node 1 (.leaf [(1709,false),(1727,false),(1737,true)]) (.node 1 (.leaf [(1710,false),(1732,true)]) (.leaf [(1710,false),(1722,false),(1733,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1710,false),(1723,false),(1734,true)]) (.node 1 (.leaf [(1710,false),(1724,false),(1735,true)]) (.leaf [(1710,false),(1725,false),(1736,true)]))) (.node 1 (.leaf [(1710,false),(1726,false),(1737,true)]) (.node 1 (.leaf [(1710,false),(1727,false),(1738,true)]) (.leaf [(1711,false),(1733,true)])))) (.node 3 (.node 1 (.leaf [(1711,false),(1722,false),(1734,true)]) (.node 1 (.leaf [(1711,false),(1723,false),(1735,true)]) (.leaf [(1711,false),(1724,false),(1736,true)]))) (.node 1 (.leaf [(1711,false),(1725,false),(1737,true)]) (.node 1 (.leaf [(1711,false),(1726,false),(1738,true)]) (.leaf [(1711,false),(1727,false),(1739,true)])))))))
theorem merge134 : m134.clauses = ScoreNodes.m134 := by rfl

def t134 : Tree := .node 62 (.node 31 t122 t133) m134
theorem eq134 : t134.clauses = ScoreNodes.c134 :=
  cat_eq _ (cat_eq _ eq122 eq133) merge134

def m135 : Tree := (.node 77 (.node 38 (.node 19 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1728,false),(1740,true)]) (.leaf [(1729,false),(1741,true)])) (.node 1 (.leaf [(1730,false),(1742,true)]) (.leaf [(1731,false),(1743,true)]))) (.node 2 (.node 1 (.leaf [(1732,false),(1744,true)]) (.leaf [(1733,false),(1745,true)])) (.node 1 (.leaf [(1734,false),(1746,true)]) (.node 1 (.leaf [(1735,false),(1747,true)]) (.leaf [(1736,false),(1748,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1737,false),(1749,true)]) (.leaf [(1738,false),(1750,true)])) (.node 1 (.leaf [(1739,false),(1751,true)]) (.node 1 (.leaf [(1685,false),(1740,true)]) (.leaf [(1685,false),(1728,false),(1741,true)])))) (.node 2 (.node 1 (.leaf [(1685,false),(1729,false),(1742,true)]) (.leaf [(1685,false),(1730,false),(1743,true)])) (.node 1 (.leaf [(1685,false),(1731,false),(1744,true)]) (.node 1 (.leaf [(1685,false),(1732,false),(1745,true)]) (.leaf [(1685,false),(1733,false),(1746,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1685,false),(1734,false),(1747,true)]) (.leaf [(1685,false),(1735,false),(1748,true)])) (.node 1 (.leaf [(1685,false),(1736,false),(1749,true)]) (.leaf [(1685,false),(1737,false),(1750,true)]))) (.node 2 (.node 1 (.leaf [(1685,false),(1738,false),(1751,true)]) (.leaf [(1685,false),(1739,false),(1752,true)])) (.node 1 (.leaf [(1686,false),(1741,true)]) (.node 1 (.leaf [(1686,false),(1728,false),(1742,true)]) (.leaf [(1686,false),(1729,false),(1743,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1686,false),(1730,false),(1744,true)]) (.leaf [(1686,false),(1731,false),(1745,true)])) (.node 1 (.leaf [(1686,false),(1732,false),(1746,true)]) (.node 1 (.leaf [(1686,false),(1733,false),(1747,true)]) (.leaf [(1686,false),(1734,false),(1748,true)])))) (.node 2 (.node 1 (.leaf [(1686,false),(1735,false),(1749,true)]) (.leaf [(1686,false),(1736,false),(1750,true)])) (.node 1 (.leaf [(1686,false),(1737,false),(1751,true)]) (.node 1 (.leaf [(1686,false),(1738,false),(1752,true)]) (.leaf [(1686,false),(1739,false),(1753,true)]))))))) (.node 19 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1687,false),(1742,true)]) (.leaf [(1687,false),(1728,false),(1743,true)])) (.node 1 (.leaf [(1687,false),(1729,false),(1744,true)]) (.leaf [(1687,false),(1730,false),(1745,true)]))) (.node 2 (.node 1 (.leaf [(1687,false),(1731,false),(1746,true)]) (.leaf [(1687,false),(1732,false),(1747,true)])) (.node 1 (.leaf [(1687,false),(1733,false),(1748,true)]) (.node 1 (.leaf [(1687,false),(1734,false),(1749,true)]) (.leaf [(1687,false),(1735,false),(1750,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1687,false),(1736,false),(1751,true)]) (.leaf [(1687,false),(1737,false),(1752,true)])) (.node 1 (.leaf [(1687,false),(1738,false),(1753,true)]) (.node 1 (.leaf [(1687,false),(1739,false),(1754,true)]) (.leaf [(1688,false),(1743,true)])))) (.node 2 (.node 1 (.leaf [(1688,false),(1728,false),(1744,true)]) (.leaf [(1688,false),(1729,false),(1745,true)])) (.node 1 (.leaf [(1688,false),(1730,false),(1746,true)]) (.node 1 (.leaf [(1688,false),(1731,false),(1747,true)]) (.leaf [(1688,false),(1732,false),(1748,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1688,false),(1733,false),(1749,true)]) (.leaf [(1688,false),(1734,false),(1750,true)])) (.node 1 (.leaf [(1688,false),(1735,false),(1751,true)]) (.node 1 (.leaf [(1688,false),(1736,false),(1752,true)]) (.leaf [(1688,false),(1737,false),(1753,true)])))) (.node 2 (.node 1 (.leaf [(1688,false),(1738,false),(1754,true)]) (.leaf [(1688,false),(1739,false),(1755,true)])) (.node 1 (.leaf [(1689,false),(1744,true)]) (.node 1 (.leaf [(1689,false),(1728,false),(1745,true)]) (.leaf [(1689,false),(1729,false),(1746,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1689,false),(1730,false),(1747,true)]) (.leaf [(1689,false),(1731,false),(1748,true)])) (.node 1 (.leaf [(1689,false),(1732,false),(1749,true)]) (.node 1 (.leaf [(1689,false),(1733,false),(1750,true)]) (.leaf [(1689,false),(1734,false),(1751,true)])))) (.node 2 (.node 1 (.leaf [(1689,false),(1735,false),(1752,true)]) (.leaf [(1689,false),(1736,false),(1753,true)])) (.node 1 (.leaf [(1689,false),(1737,false),(1754,true)]) (.node 1 (.leaf [(1689,false),(1738,false),(1755,true)]) (.leaf [(1689,false),(1739,false),(1756,true)])))))))) (.node 39 (.node 19 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1690,false),(1745,true)]) (.leaf [(1690,false),(1728,false),(1746,true)])) (.node 1 (.leaf [(1690,false),(1729,false),(1747,true)]) (.leaf [(1690,false),(1730,false),(1748,true)]))) (.node 2 (.node 1 (.leaf [(1690,false),(1731,false),(1749,true)]) (.leaf [(1690,false),(1732,false),(1750,true)])) (.node 1 (.leaf [(1690,false),(1733,false),(1751,true)]) (.node 1 (.leaf [(1690,false),(1734,false),(1752,true)]) (.leaf [(1690,false),(1735,false),(1753,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1690,false),(1736,false),(1754,true)]) (.leaf [(1690,false),(1737,false),(1755,true)])) (.node 1 (.leaf [(1690,false),(1738,false),(1756,true)]) (.node 1 (.leaf [(1690,false),(1739,false),(1757,true)]) (.leaf [(1691,false),(1746,true)])))) (.node 2 (.node 1 (.leaf [(1691,false),(1728,false),(1747,true)]) (.leaf [(1691,false),(1729,false),(1748,true)])) (.node 1 (.leaf [(1691,false),(1730,false),(1749,true)]) (.node 1 (.leaf [(1691,false),(1731,false),(1750,true)]) (.leaf [(1691,false),(1732,false),(1751,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1691,false),(1733,false),(1752,true)]) (.leaf [(1691,false),(1734,false),(1753,true)])) (.node 1 (.leaf [(1691,false),(1735,false),(1754,true)]) (.node 1 (.leaf [(1691,false),(1736,false),(1755,true)]) (.leaf [(1691,false),(1737,false),(1756,true)])))) (.node 2 (.node 1 (.leaf [(1691,false),(1738,false),(1757,true)]) (.leaf [(1691,false),(1739,false),(1758,true)])) (.node 1 (.leaf [(1692,false),(1747,true)]) (.node 1 (.leaf [(1692,false),(1728,false),(1748,true)]) (.leaf [(1692,false),(1729,false),(1749,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1692,false),(1730,false),(1750,true)]) (.leaf [(1692,false),(1731,false),(1751,true)])) (.node 1 (.leaf [(1692,false),(1732,false),(1752,true)]) (.node 1 (.leaf [(1692,false),(1733,false),(1753,true)]) (.leaf [(1692,false),(1734,false),(1754,true)])))) (.node 2 (.node 1 (.leaf [(1692,false),(1735,false),(1755,true)]) (.leaf [(1692,false),(1736,false),(1756,true)])) (.node 1 (.leaf [(1692,false),(1737,false),(1757,true)]) (.node 1 (.leaf [(1692,false),(1738,false),(1758,true)]) (.leaf [(1692,false),(1739,false),(1759,true)]))))))) (.node 19 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1693,false),(1748,true)]) (.leaf [(1693,false),(1728,false),(1749,true)])) (.node 1 (.leaf [(1693,false),(1729,false),(1750,true)]) (.leaf [(1693,false),(1730,false),(1751,true)]))) (.node 2 (.node 1 (.leaf [(1693,false),(1731,false),(1752,true)]) (.leaf [(1693,false),(1732,false),(1753,true)])) (.node 1 (.leaf [(1693,false),(1733,false),(1754,true)]) (.node 1 (.leaf [(1693,false),(1734,false),(1755,true)]) (.leaf [(1693,false),(1735,false),(1756,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1693,false),(1736,false),(1757,true)]) (.leaf [(1693,false),(1737,false),(1758,true)])) (.node 1 (.leaf [(1693,false),(1738,false),(1759,true)]) (.node 1 (.leaf [(1693,false),(1739,false),(1760,true)]) (.leaf [(1694,false),(1749,true)])))) (.node 2 (.node 1 (.leaf [(1694,false),(1728,false),(1750,true)]) (.leaf [(1694,false),(1729,false),(1751,true)])) (.node 1 (.leaf [(1694,false),(1730,false),(1752,true)]) (.node 1 (.leaf [(1694,false),(1731,false),(1753,true)]) (.leaf [(1694,false),(1732,false),(1754,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1694,false),(1733,false),(1755,true)]) (.leaf [(1694,false),(1734,false),(1756,true)])) (.node 1 (.leaf [(1694,false),(1735,false),(1757,true)]) (.node 1 (.leaf [(1694,false),(1736,false),(1758,true)]) (.leaf [(1694,false),(1737,false),(1759,true)])))) (.node 2 (.node 1 (.leaf [(1694,false),(1738,false),(1760,true)]) (.leaf [(1694,false),(1739,false),(1761,true)])) (.node 1 (.leaf [(1695,false),(1750,true)]) (.node 1 (.leaf [(1695,false),(1728,false),(1751,true)]) (.leaf [(1695,false),(1729,false),(1752,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1695,false),(1730,false),(1753,true)]) (.leaf [(1695,false),(1731,false),(1754,true)])) (.node 1 (.leaf [(1695,false),(1732,false),(1755,true)]) (.node 1 (.leaf [(1695,false),(1733,false),(1756,true)]) (.leaf [(1695,false),(1734,false),(1757,true)])))) (.node 2 (.node 1 (.leaf [(1695,false),(1735,false),(1758,true)]) (.leaf [(1695,false),(1736,false),(1759,true)])) (.node 1 (.leaf [(1695,false),(1737,false),(1760,true)]) (.node 1 (.leaf [(1695,false),(1738,false),(1761,true)]) (.leaf [(1695,false),(1739,false),(1762,true)])))))))))
theorem merge135 : m135.clauses = ScoreNodes.m135 := by rfl

def t135 : Tree := .node 204 (.node 94 t111 t134) m135
theorem eq135 : t135.clauses = ScoreNodes.c135 :=
  cat_eq _ (cat_eq _ eq111 eq134) merge135

def t136 : Tree := .nil
theorem eq136 : t136.clauses = ScoreNodes.c136 := by rfl

def t137 : Tree := .nil
theorem eq137 : t137.clauses = ScoreNodes.c137 := by rfl

def m138 : Tree := (.node 1 (.leaf [(223,true),(1763,true)]) (.node 1 (.leaf [(221,true),(1763,true)]) (.leaf [(221,true),(223,true),(1764,true)])))
theorem merge138 : m138.clauses = ScoreNodes.m138 := by rfl

def t138 : Tree := .node 0 (.node 0 t136 t137) m138
theorem eq138 : t138.clauses = ScoreNodes.c138 :=
  cat_eq _ (cat_eq _ eq136 eq137) merge138

def t139 : Tree := .nil
theorem eq139 : t139.clauses = ScoreNodes.c139 := by rfl

def t140 : Tree := .nil
theorem eq140 : t140.clauses = ScoreNodes.c140 := by rfl

def t141 : Tree := .nil
theorem eq141 : t141.clauses = ScoreNodes.c141 := by rfl

def m142 : Tree := (.node 1 (.leaf [(229,true),(1765,true)]) (.node 1 (.leaf [(227,true),(1765,true)]) (.leaf [(227,true),(229,true),(1766,true)])))
theorem merge142 : m142.clauses = ScoreNodes.m142 := by rfl

def t142 : Tree := .node 0 (.node 0 t140 t141) m142
theorem eq142 : t142.clauses = ScoreNodes.c142 :=
  cat_eq _ (cat_eq _ eq140 eq141) merge142

def m143 : Tree := (.node 2 (.node 1 (.leaf [(1765,false),(1767,true)]) (.leaf [(1766,false),(1768,true)])) (.node 1 (.leaf [(225,true),(1767,true)]) (.node 1 (.leaf [(225,true),(1765,false),(1768,true)]) (.leaf [(225,true),(1766,false),(1769,true)]))))
theorem merge143 : m143.clauses = ScoreNodes.m143 := by rfl

def t143 : Tree := .node 3 (.node 0 t139 t142) m143
theorem eq143 : t143.clauses = ScoreNodes.c143 :=
  cat_eq _ (cat_eq _ eq139 eq142) merge143


end EncloseHorse.Certificate.Generated.Daily20260310.Lookup
