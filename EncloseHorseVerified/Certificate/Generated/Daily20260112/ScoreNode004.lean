import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode003

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t54 : CounterTree := .leaf (91,false)
def c54 : CNF := []
theorem eq54 : t54.clauses = c54 := rfl
def t55 : CounterTree := .node [1700,1701] t54 t54
def m55 : CNF := [[(91,true),(1700,true)],[(91,true),(1700,true)],[(91,true),(91,true),(1701,true)]]
theorem merge55 : mergeClauses t54.outputLits t54.outputLits [1700,1701] = m55 := by
  rfl

def c55 : CNF := c54 ++ c54 ++ m55
theorem eq55 : t55.clauses = c55 := by
  change t54.clauses ++ t54.clauses ++ mergeClauses t54.outputLits t54.outputLits [1700,1701] = c55
  exact concat3_congr eq54 eq54 merge55
def t56 : CounterTree := .node [1702,1703,1704,1705] t53 t55
def m56 : CNF := [[(1700,false),(1702,true)],[(1701,false),(1703,true)],[(1698,false),(1702,true)],[(1698,false),(1700,false),(1703,true)],[(1698,false),(1701,false),(1704,true)],[(1699,false),(1703,true)],[(1699,false),(1700,false),(1704,true)],[(1699,false),(1701,false),(1705,true)]]
theorem merge56 : mergeClauses t53.outputLits t55.outputLits [1702,1703,1704,1705] = m56 := by
  rfl

def c56 : CNF := c53 ++ c55 ++ m56
theorem eq56 : t56.clauses = c56 := by
  change t53.clauses ++ t55.clauses ++ mergeClauses t53.outputLits t55.outputLits [1702,1703,1704,1705] = c56
  exact concat3_congr eq53 eq55 merge56
def t57 : CounterTree := .node [1706,1707,1708,1709,1710,1711,1712,1713] t52 t56
def m57 : CNF := [[(1702,false),(1706,true)],[(1703,false),(1707,true)],[(1704,false),(1708,true)],[(1705,false),(1709,true)],[(1694,false),(1706,true)],[(1694,false),(1702,false),(1707,true)],[(1694,false),(1703,false),(1708,true)],[(1694,false),(1704,false),(1709,true)],[(1694,false),(1705,false),(1710,true)],[(1695,false),(1707,true)],[(1695,false),(1702,false),(1708,true)],[(1695,false),(1703,false),(1709,true)],[(1695,false),(1704,false),(1710,true)],[(1695,false),(1705,false),(1711,true)],[(1696,false),(1708,true)],[(1696,false),(1702,false),(1709,true)],[(1696,false),(1703,false),(1710,true)],[(1696,false),(1704,false),(1711,true)],[(1696,false),(1705,false),(1712,true)],[(1697,false),(1709,true)],[(1697,false),(1702,false),(1710,true)],[(1697,false),(1703,false),(1711,true)],[(1697,false),(1704,false),(1712,true)],[(1697,false),(1705,false),(1713,true)]]
theorem merge57 : mergeClauses t52.outputLits t56.outputLits [1706,1707,1708,1709,1710,1711,1712,1713] = m57 := by
  rfl

def c57 : CNF := c52 ++ c56 ++ m57
theorem eq57 : t57.clauses = c57 := by
  change t52.clauses ++ t56.clauses ++ mergeClauses t52.outputLits t56.outputLits [1706,1707,1708,1709,1710,1711,1712,1713] = c57
  exact concat3_congr eq52 eq56 merge57
def t58 : CounterTree := .node [1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728] t48 t57
def m58 : CNF := [[(1706,false),(1714,true)],[(1707,false),(1715,true)],[(1708,false),(1716,true)],[(1709,false),(1717,true)],[(1710,false),(1718,true)],[(1711,false),(1719,true)],[(1712,false),(1720,true)],[(1713,false),(1721,true)],[(1683,false),(1714,true)],[(1683,false),(1706,false),(1715,true)],[(1683,false),(1707,false),(1716,true)],[(1683,false),(1708,false),(1717,true)],[(1683,false),(1709,false),(1718,true)],[(1683,false),(1710,false),(1719,true)],[(1683,false),(1711,false),(1720,true)],[(1683,false),(1712,false),(1721,true)],[(1683,false),(1713,false),(1722,true)],[(1684,false),(1715,true)],[(1684,false),(1706,false),(1716,true)],[(1684,false),(1707,false),(1717,true)],[(1684,false),(1708,false),(1718,true)],[(1684,false),(1709,false),(1719,true)],[(1684,false),(1710,false),(1720,true)],[(1684,false),(1711,false),(1721,true)],[(1684,false),(1712,false),(1722,true)],[(1684,false),(1713,false),(1723,true)],[(1685,false),(1716,true)],[(1685,false),(1706,false),(1717,true)],[(1685,false),(1707,false),(1718,true)],[(1685,false),(1708,false),(1719,true)],[(1685,false),(1709,false),(1720,true)],[(1685,false),(1710,false),(1721,true)],[(1685,false),(1711,false),(1722,true)],[(1685,false),(1712,false),(1723,true)],[(1685,false),(1713,false),(1724,true)],[(1686,false),(1717,true)],[(1686,false),(1706,false),(1718,true)],[(1686,false),(1707,false),(1719,true)],[(1686,false),(1708,false),(1720,true)],[(1686,false),(1709,false),(1721,true)],[(1686,false),(1710,false),(1722,true)],[(1686,false),(1711,false),(1723,true)],[(1686,false),(1712,false),(1724,true)],[(1686,false),(1713,false),(1725,true)],[(1687,false),(1718,true)],[(1687,false),(1706,false),(1719,true)],[(1687,false),(1707,false),(1720,true)],[(1687,false),(1708,false),(1721,true)],[(1687,false),(1709,false),(1722,true)],[(1687,false),(1710,false),(1723,true)],[(1687,false),(1711,false),(1724,true)],[(1687,false),(1712,false),(1725,true)],[(1687,false),(1713,false),(1726,true)],[(1688,false),(1719,true)],[(1688,false),(1706,false),(1720,true)],[(1688,false),(1707,false),(1721,true)],[(1688,false),(1708,false),(1722,true)],[(1688,false),(1709,false),(1723,true)],[(1688,false),(1710,false),(1724,true)],[(1688,false),(1711,false),(1725,true)],[(1688,false),(1712,false),(1726,true)],[(1688,false),(1713,false),(1727,true)],[(1689,false),(1720,true)],[(1689,false),(1706,false),(1721,true)],[(1689,false),(1707,false),(1722,true)],[(1689,false),(1708,false),(1723,true)],[(1689,false),(1709,false),(1724,true)],[(1689,false),(1710,false),(1725,true)],[(1689,false),(1711,false),(1726,true)],[(1689,false),(1712,false),(1727,true)],[(1689,false),(1713,false),(1728,true)]]
theorem merge58 : mergeClauses t48.outputLits t57.outputLits [1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728] = m58 := by
  rfl

def c58 : CNF := c48 ++ c57 ++ m58
theorem eq58 : t58.clauses = c58 := by
  change t48.clauses ++ t57.clauses ++ mergeClauses t48.outputLits t57.outputLits [1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728] = c58
  exact concat3_congr eq48 eq57 merge58
def t59 : CounterTree := .node [1729,1730] t54 t54
def m59 : CNF := [[(91,true),(1729,true)],[(91,true),(1729,true)],[(91,true),(91,true),(1730,true)]]
theorem merge59 : mergeClauses t54.outputLits t54.outputLits [1729,1730] = m59 := by
  rfl

def c59 : CNF := c54 ++ c54 ++ m59
theorem eq59 : t59.clauses = c59 := by
  change t54.clauses ++ t54.clauses ++ mergeClauses t54.outputLits t54.outputLits [1729,1730] = c59
  exact concat3_congr eq54 eq54 merge59
def t60 : CounterTree := .leaf (95,false)
def c60 : CNF := []
theorem eq60 : t60.clauses = c60 := rfl
def t61 : CounterTree := .node [1731,1732] t60 t60
def m61 : CNF := [[(95,true),(1731,true)],[(95,true),(1731,true)],[(95,true),(95,true),(1732,true)]]
theorem merge61 : mergeClauses t60.outputLits t60.outputLits [1731,1732] = m61 := by
  rfl

def c61 : CNF := c60 ++ c60 ++ m61
theorem eq61 : t61.clauses = c61 := by
  change t60.clauses ++ t60.clauses ++ mergeClauses t60.outputLits t60.outputLits [1731,1732] = c61
  exact concat3_congr eq60 eq60 merge61
def t62 : CounterTree := .node [1733,1734,1735,1736] t59 t61
def m62 : CNF := [[(1731,false),(1733,true)],[(1732,false),(1734,true)],[(1729,false),(1733,true)],[(1729,false),(1731,false),(1734,true)],[(1729,false),(1732,false),(1735,true)],[(1730,false),(1734,true)],[(1730,false),(1731,false),(1735,true)],[(1730,false),(1732,false),(1736,true)]]
theorem merge62 : mergeClauses t59.outputLits t61.outputLits [1733,1734,1735,1736] = m62 := by
  rfl

def c62 : CNF := c59 ++ c61 ++ m62
theorem eq62 : t62.clauses = c62 := by
  change t59.clauses ++ t61.clauses ++ mergeClauses t59.outputLits t61.outputLits [1733,1734,1735,1736] = c62
  exact concat3_congr eq59 eq61 merge62
def t63 : CounterTree := .node [1737,1738] t60 t60
def m63 : CNF := [[(95,true),(1737,true)],[(95,true),(1737,true)],[(95,true),(95,true),(1738,true)]]
theorem merge63 : mergeClauses t60.outputLits t60.outputLits [1737,1738] = m63 := by
  rfl

def c63 : CNF := c60 ++ c60 ++ m63
theorem eq63 : t63.clauses = c63 := by
  change t60.clauses ++ t60.clauses ++ mergeClauses t60.outputLits t60.outputLits [1737,1738] = c63
  exact concat3_congr eq60 eq60 merge63
def t64 : CounterTree := .leaf (107,false)
def c64 : CNF := []
theorem eq64 : t64.clauses = c64 := rfl
def t65 : CounterTree := .leaf (109,false)
def c65 : CNF := []
theorem eq65 : t65.clauses = c65 := rfl
def t66 : CounterTree := .node [1739,1740] t64 t65
def m66 : CNF := [[(109,true),(1739,true)],[(107,true),(1739,true)],[(107,true),(109,true),(1740,true)]]
theorem merge66 : mergeClauses t64.outputLits t65.outputLits [1739,1740] = m66 := by
  rfl

def c66 : CNF := c64 ++ c65 ++ m66
theorem eq66 : t66.clauses = c66 := by
  change t64.clauses ++ t65.clauses ++ mergeClauses t64.outputLits t65.outputLits [1739,1740] = c66
  exact concat3_congr eq64 eq65 merge66
def t67 : CounterTree := .node [1741,1742,1743,1744] t63 t66
def m67 : CNF := [[(1739,false),(1741,true)],[(1740,false),(1742,true)],[(1737,false),(1741,true)],[(1737,false),(1739,false),(1742,true)],[(1737,false),(1740,false),(1743,true)],[(1738,false),(1742,true)],[(1738,false),(1739,false),(1743,true)],[(1738,false),(1740,false),(1744,true)]]
theorem merge67 : mergeClauses t63.outputLits t66.outputLits [1741,1742,1743,1744] = m67 := by
  rfl

def c67 : CNF := c63 ++ c66 ++ m67
theorem eq67 : t67.clauses = c67 := by
  change t63.clauses ++ t66.clauses ++ mergeClauses t63.outputLits t66.outputLits [1741,1742,1743,1744] = c67
  exact concat3_congr eq63 eq66 merge67

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
