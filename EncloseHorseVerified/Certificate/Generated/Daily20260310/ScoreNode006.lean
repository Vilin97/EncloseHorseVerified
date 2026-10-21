import EncloseHorseVerified.Certificate.Generated.Daily20260310.ScoreNode005

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes

def t123 : CounterTree := .leaf (207,false)
def c123 : CNF := []
theorem eq123 : t123.clauses = c123 := rfl

def t124 : CounterTree := .leaf (209,false)
def c124 : CNF := []
theorem eq124 : t124.clauses = c124 := rfl

def t125 : CounterTree := .leaf (213,false)
def c125 : CNF := []
theorem eq125 : t125.clauses = c125 := rfl

def t126 : CounterTree := .node [1712,1713] t124 t125
def m126 : CNF := [[(213,true),(1712,true)],[(209,true),(1712,true)],[(209,true),(213,true),(1713,true)]]
theorem merge126 : mergeClauses t124.outputLits t125.outputLits [1712,1713] = m126 := by rfl

def c126 : CNF := c124 ++ c125 ++ m126
theorem eq126 : t126.clauses = c126 := by
  change t124.clauses ++ t125.clauses ++ mergeClauses t124.outputLits t125.outputLits [1712,1713] = c126
  exact concat3_congr eq124 eq125 merge126

def t127 : CounterTree := .node [1714,1715,1716] t123 t126
def m127 : CNF := [[(1712,false),(1714,true)],[(1713,false),(1715,true)],[(207,true),(1714,true)],[(207,true),(1712,false),(1715,true)],[(207,true),(1713,false),(1716,true)]]
theorem merge127 : mergeClauses t123.outputLits t126.outputLits [1714,1715,1716] = m127 := by rfl

def c127 : CNF := c123 ++ c126 ++ m127
theorem eq127 : t127.clauses = c127 := by
  change t123.clauses ++ t126.clauses ++ mergeClauses t123.outputLits t126.outputLits [1714,1715,1716] = c127
  exact concat3_congr eq123 eq126 merge127

def t128 : CounterTree := .leaf (215,false)
def c128 : CNF := []
theorem eq128 : t128.clauses = c128 := rfl

def t129 : CounterTree := .leaf (217,false)
def c129 : CNF := []
theorem eq129 : t129.clauses = c129 := rfl

def t130 : CounterTree := .leaf (219,false)
def c130 : CNF := []
theorem eq130 : t130.clauses = c130 := rfl

def t131 : CounterTree := .node [1717,1718] t129 t130
def m131 : CNF := [[(219,true),(1717,true)],[(217,true),(1717,true)],[(217,true),(219,true),(1718,true)]]
theorem merge131 : mergeClauses t129.outputLits t130.outputLits [1717,1718] = m131 := by rfl

def c131 : CNF := c129 ++ c130 ++ m131
theorem eq131 : t131.clauses = c131 := by
  change t129.clauses ++ t130.clauses ++ mergeClauses t129.outputLits t130.outputLits [1717,1718] = c131
  exact concat3_congr eq129 eq130 merge131

def t132 : CounterTree := .node [1719,1720,1721] t128 t131
def m132 : CNF := [[(1717,false),(1719,true)],[(1718,false),(1720,true)],[(215,true),(1719,true)],[(215,true),(1717,false),(1720,true)],[(215,true),(1718,false),(1721,true)]]
theorem merge132 : mergeClauses t128.outputLits t131.outputLits [1719,1720,1721] = m132 := by rfl

def c132 : CNF := c128 ++ c131 ++ m132
theorem eq132 : t132.clauses = c132 := by
  change t128.clauses ++ t131.clauses ++ mergeClauses t128.outputLits t131.outputLits [1719,1720,1721] = c132
  exact concat3_congr eq128 eq131 merge132

def t133 : CounterTree := .node [1722,1723,1724,1725,1726,1727] t127 t132
def m133 : CNF := [[(1719,false),(1722,true)],[(1720,false),(1723,true)],[(1721,false),(1724,true)],[(1714,false),(1722,true)],[(1714,false),(1719,false),(1723,true)],[(1714,false),(1720,false),(1724,true)],[(1714,false),(1721,false),(1725,true)],[(1715,false),(1723,true)],[(1715,false),(1719,false),(1724,true)],[(1715,false),(1720,false),(1725,true)],[(1715,false),(1721,false),(1726,true)],[(1716,false),(1724,true)],[(1716,false),(1719,false),(1725,true)],[(1716,false),(1720,false),(1726,true)],[(1716,false),(1721,false),(1727,true)]]
theorem merge133 : mergeClauses t127.outputLits t132.outputLits [1722,1723,1724,1725,1726,1727] = m133 := by rfl

def c133 : CNF := c127 ++ c132 ++ m133
theorem eq133 : t133.clauses = c133 := by
  change t127.clauses ++ t132.clauses ++ mergeClauses t127.outputLits t132.outputLits [1722,1723,1724,1725,1726,1727] = c133
  exact concat3_congr eq127 eq132 merge133

def t134 : CounterTree := .node [1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739] t122 t133
def m134 : CNF := [[(1722,false),(1728,true)],[(1723,false),(1729,true)],[(1724,false),(1730,true)],[(1725,false),(1731,true)],[(1726,false),(1732,true)],[(1727,false),(1733,true)],[(1706,false),(1728,true)],[(1706,false),(1722,false),(1729,true)],[(1706,false),(1723,false),(1730,true)],[(1706,false),(1724,false),(1731,true)],[(1706,false),(1725,false),(1732,true)],[(1706,false),(1726,false),(1733,true)],[(1706,false),(1727,false),(1734,true)],[(1707,false),(1729,true)],[(1707,false),(1722,false),(1730,true)],[(1707,false),(1723,false),(1731,true)],[(1707,false),(1724,false),(1732,true)],[(1707,false),(1725,false),(1733,true)],[(1707,false),(1726,false),(1734,true)],[(1707,false),(1727,false),(1735,true)],[(1708,false),(1730,true)],[(1708,false),(1722,false),(1731,true)],[(1708,false),(1723,false),(1732,true)],[(1708,false),(1724,false),(1733,true)],[(1708,false),(1725,false),(1734,true)],[(1708,false),(1726,false),(1735,true)],[(1708,false),(1727,false),(1736,true)],[(1709,false),(1731,true)],[(1709,false),(1722,false),(1732,true)],[(1709,false),(1723,false),(1733,true)],[(1709,false),(1724,false),(1734,true)],[(1709,false),(1725,false),(1735,true)],[(1709,false),(1726,false),(1736,true)],[(1709,false),(1727,false),(1737,true)],[(1710,false),(1732,true)],[(1710,false),(1722,false),(1733,true)],[(1710,false),(1723,false),(1734,true)],[(1710,false),(1724,false),(1735,true)],[(1710,false),(1725,false),(1736,true)],[(1710,false),(1726,false),(1737,true)],[(1710,false),(1727,false),(1738,true)],[(1711,false),(1733,true)],[(1711,false),(1722,false),(1734,true)],[(1711,false),(1723,false),(1735,true)],[(1711,false),(1724,false),(1736,true)],[(1711,false),(1725,false),(1737,true)],[(1711,false),(1726,false),(1738,true)],[(1711,false),(1727,false),(1739,true)]]
theorem merge134 : mergeClauses t122.outputLits t133.outputLits [1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739] = m134 := by rfl

def c134 : CNF := c122 ++ c133 ++ m134
theorem eq134 : t134.clauses = c134 := by
  change t122.clauses ++ t133.clauses ++ mergeClauses t122.outputLits t133.outputLits [1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739] = c134
  exact concat3_congr eq122 eq133 merge134

def t135 : CounterTree := .node [1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762] t111 t134
def m135 : CNF := [[(1728,false),(1740,true)],[(1729,false),(1741,true)],[(1730,false),(1742,true)],[(1731,false),(1743,true)],[(1732,false),(1744,true)],[(1733,false),(1745,true)],[(1734,false),(1746,true)],[(1735,false),(1747,true)],[(1736,false),(1748,true)],[(1737,false),(1749,true)],[(1738,false),(1750,true)],[(1739,false),(1751,true)],[(1685,false),(1740,true)],[(1685,false),(1728,false),(1741,true)],[(1685,false),(1729,false),(1742,true)],[(1685,false),(1730,false),(1743,true)],[(1685,false),(1731,false),(1744,true)],[(1685,false),(1732,false),(1745,true)],[(1685,false),(1733,false),(1746,true)],[(1685,false),(1734,false),(1747,true)],[(1685,false),(1735,false),(1748,true)],[(1685,false),(1736,false),(1749,true)],[(1685,false),(1737,false),(1750,true)],[(1685,false),(1738,false),(1751,true)],[(1685,false),(1739,false),(1752,true)],[(1686,false),(1741,true)],[(1686,false),(1728,false),(1742,true)],[(1686,false),(1729,false),(1743,true)],[(1686,false),(1730,false),(1744,true)],[(1686,false),(1731,false),(1745,true)],[(1686,false),(1732,false),(1746,true)],[(1686,false),(1733,false),(1747,true)],[(1686,false),(1734,false),(1748,true)],[(1686,false),(1735,false),(1749,true)],[(1686,false),(1736,false),(1750,true)],[(1686,false),(1737,false),(1751,true)],[(1686,false),(1738,false),(1752,true)],[(1686,false),(1739,false),(1753,true)],[(1687,false),(1742,true)],[(1687,false),(1728,false),(1743,true)],[(1687,false),(1729,false),(1744,true)],[(1687,false),(1730,false),(1745,true)],[(1687,false),(1731,false),(1746,true)],[(1687,false),(1732,false),(1747,true)],[(1687,false),(1733,false),(1748,true)],[(1687,false),(1734,false),(1749,true)],[(1687,false),(1735,false),(1750,true)],[(1687,false),(1736,false),(1751,true)],[(1687,false),(1737,false),(1752,true)],[(1687,false),(1738,false),(1753,true)],[(1687,false),(1739,false),(1754,true)],[(1688,false),(1743,true)],[(1688,false),(1728,false),(1744,true)],[(1688,false),(1729,false),(1745,true)],[(1688,false),(1730,false),(1746,true)],[(1688,false),(1731,false),(1747,true)],[(1688,false),(1732,false),(1748,true)],[(1688,false),(1733,false),(1749,true)],[(1688,false),(1734,false),(1750,true)],[(1688,false),(1735,false),(1751,true)],[(1688,false),(1736,false),(1752,true)],[(1688,false),(1737,false),(1753,true)],[(1688,false),(1738,false),(1754,true)],[(1688,false),(1739,false),(1755,true)],[(1689,false),(1744,true)],[(1689,false),(1728,false),(1745,true)],[(1689,false),(1729,false),(1746,true)],[(1689,false),(1730,false),(1747,true)],[(1689,false),(1731,false),(1748,true)],[(1689,false),(1732,false),(1749,true)],[(1689,false),(1733,false),(1750,true)],[(1689,false),(1734,false),(1751,true)],[(1689,false),(1735,false),(1752,true)],[(1689,false),(1736,false),(1753,true)],[(1689,false),(1737,false),(1754,true)],[(1689,false),(1738,false),(1755,true)],[(1689,false),(1739,false),(1756,true)],[(1690,false),(1745,true)],[(1690,false),(1728,false),(1746,true)],[(1690,false),(1729,false),(1747,true)],[(1690,false),(1730,false),(1748,true)],[(1690,false),(1731,false),(1749,true)],[(1690,false),(1732,false),(1750,true)],[(1690,false),(1733,false),(1751,true)],[(1690,false),(1734,false),(1752,true)],[(1690,false),(1735,false),(1753,true)],[(1690,false),(1736,false),(1754,true)],[(1690,false),(1737,false),(1755,true)],[(1690,false),(1738,false),(1756,true)],[(1690,false),(1739,false),(1757,true)],[(1691,false),(1746,true)],[(1691,false),(1728,false),(1747,true)],[(1691,false),(1729,false),(1748,true)],[(1691,false),(1730,false),(1749,true)],[(1691,false),(1731,false),(1750,true)],[(1691,false),(1732,false),(1751,true)],[(1691,false),(1733,false),(1752,true)],[(1691,false),(1734,false),(1753,true)],[(1691,false),(1735,false),(1754,true)],[(1691,false),(1736,false),(1755,true)],[(1691,false),(1737,false),(1756,true)],[(1691,false),(1738,false),(1757,true)],[(1691,false),(1739,false),(1758,true)],[(1692,false),(1747,true)],[(1692,false),(1728,false),(1748,true)],[(1692,false),(1729,false),(1749,true)],[(1692,false),(1730,false),(1750,true)],[(1692,false),(1731,false),(1751,true)],[(1692,false),(1732,false),(1752,true)],[(1692,false),(1733,false),(1753,true)],[(1692,false),(1734,false),(1754,true)],[(1692,false),(1735,false),(1755,true)],[(1692,false),(1736,false),(1756,true)],[(1692,false),(1737,false),(1757,true)],[(1692,false),(1738,false),(1758,true)],[(1692,false),(1739,false),(1759,true)],[(1693,false),(1748,true)],[(1693,false),(1728,false),(1749,true)],[(1693,false),(1729,false),(1750,true)],[(1693,false),(1730,false),(1751,true)],[(1693,false),(1731,false),(1752,true)],[(1693,false),(1732,false),(1753,true)],[(1693,false),(1733,false),(1754,true)],[(1693,false),(1734,false),(1755,true)],[(1693,false),(1735,false),(1756,true)],[(1693,false),(1736,false),(1757,true)],[(1693,false),(1737,false),(1758,true)],[(1693,false),(1738,false),(1759,true)],[(1693,false),(1739,false),(1760,true)],[(1694,false),(1749,true)],[(1694,false),(1728,false),(1750,true)],[(1694,false),(1729,false),(1751,true)],[(1694,false),(1730,false),(1752,true)],[(1694,false),(1731,false),(1753,true)],[(1694,false),(1732,false),(1754,true)],[(1694,false),(1733,false),(1755,true)],[(1694,false),(1734,false),(1756,true)],[(1694,false),(1735,false),(1757,true)],[(1694,false),(1736,false),(1758,true)],[(1694,false),(1737,false),(1759,true)],[(1694,false),(1738,false),(1760,true)],[(1694,false),(1739,false),(1761,true)],[(1695,false),(1750,true)],[(1695,false),(1728,false),(1751,true)],[(1695,false),(1729,false),(1752,true)],[(1695,false),(1730,false),(1753,true)],[(1695,false),(1731,false),(1754,true)],[(1695,false),(1732,false),(1755,true)],[(1695,false),(1733,false),(1756,true)],[(1695,false),(1734,false),(1757,true)],[(1695,false),(1735,false),(1758,true)],[(1695,false),(1736,false),(1759,true)],[(1695,false),(1737,false),(1760,true)],[(1695,false),(1738,false),(1761,true)],[(1695,false),(1739,false),(1762,true)]]
theorem merge135 : mergeClauses t111.outputLits t134.outputLits [1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762] = m135 := by rfl

def c135 : CNF := c111 ++ c134 ++ m135
theorem eq135 : t135.clauses = c135 := by
  change t111.clauses ++ t134.clauses ++ mergeClauses t111.outputLits t134.outputLits [1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762] = c135
  exact concat3_congr eq111 eq134 merge135

def t136 : CounterTree := .leaf (221,false)
def c136 : CNF := []
theorem eq136 : t136.clauses = c136 := rfl

def t137 : CounterTree := .leaf (223,false)
def c137 : CNF := []
theorem eq137 : t137.clauses = c137 := rfl

def t138 : CounterTree := .node [1763,1764] t136 t137
def m138 : CNF := [[(223,true),(1763,true)],[(221,true),(1763,true)],[(221,true),(223,true),(1764,true)]]
theorem merge138 : mergeClauses t136.outputLits t137.outputLits [1763,1764] = m138 := by rfl

def c138 : CNF := c136 ++ c137 ++ m138
theorem eq138 : t138.clauses = c138 := by
  change t136.clauses ++ t137.clauses ++ mergeClauses t136.outputLits t137.outputLits [1763,1764] = c138
  exact concat3_congr eq136 eq137 merge138

def t139 : CounterTree := .leaf (225,false)
def c139 : CNF := []
theorem eq139 : t139.clauses = c139 := rfl

def t140 : CounterTree := .leaf (227,false)
def c140 : CNF := []
theorem eq140 : t140.clauses = c140 := rfl

def t141 : CounterTree := .leaf (229,false)
def c141 : CNF := []
theorem eq141 : t141.clauses = c141 := rfl

def t142 : CounterTree := .node [1765,1766] t140 t141
def m142 : CNF := [[(229,true),(1765,true)],[(227,true),(1765,true)],[(227,true),(229,true),(1766,true)]]
theorem merge142 : mergeClauses t140.outputLits t141.outputLits [1765,1766] = m142 := by rfl

def c142 : CNF := c140 ++ c141 ++ m142
theorem eq142 : t142.clauses = c142 := by
  change t140.clauses ++ t141.clauses ++ mergeClauses t140.outputLits t141.outputLits [1765,1766] = c142
  exact concat3_congr eq140 eq141 merge142

def t143 : CounterTree := .node [1767,1768,1769] t139 t142
def m143 : CNF := [[(1765,false),(1767,true)],[(1766,false),(1768,true)],[(225,true),(1767,true)],[(225,true),(1765,false),(1768,true)],[(225,true),(1766,false),(1769,true)]]
theorem merge143 : mergeClauses t139.outputLits t142.outputLits [1767,1768,1769] = m143 := by rfl

def c143 : CNF := c139 ++ c142 ++ m143
theorem eq143 : t143.clauses = c143 := by
  change t139.clauses ++ t142.clauses ++ mergeClauses t139.outputLits t142.outputLits [1767,1768,1769] = c143
  exact concat3_congr eq139 eq142 merge143


end EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes
