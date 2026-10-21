import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode004

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t68 : CounterTree := .node [1745,1746,1747,1748,1749,1750,1751,1752] t62 t67
def m68 : CNF := [[(1741,false),(1745,true)],[(1742,false),(1746,true)],[(1743,false),(1747,true)],[(1744,false),(1748,true)],[(1733,false),(1745,true)],[(1733,false),(1741,false),(1746,true)],[(1733,false),(1742,false),(1747,true)],[(1733,false),(1743,false),(1748,true)],[(1733,false),(1744,false),(1749,true)],[(1734,false),(1746,true)],[(1734,false),(1741,false),(1747,true)],[(1734,false),(1742,false),(1748,true)],[(1734,false),(1743,false),(1749,true)],[(1734,false),(1744,false),(1750,true)],[(1735,false),(1747,true)],[(1735,false),(1741,false),(1748,true)],[(1735,false),(1742,false),(1749,true)],[(1735,false),(1743,false),(1750,true)],[(1735,false),(1744,false),(1751,true)],[(1736,false),(1748,true)],[(1736,false),(1741,false),(1749,true)],[(1736,false),(1742,false),(1750,true)],[(1736,false),(1743,false),(1751,true)],[(1736,false),(1744,false),(1752,true)]]
theorem merge68 : mergeClauses t62.outputLits t67.outputLits [1745,1746,1747,1748,1749,1750,1751,1752] = m68 := by
  rfl

def c68 : CNF := c62 ++ c67 ++ m68
theorem eq68 : t68.clauses = c68 := by
  change t62.clauses ++ t67.clauses ++ mergeClauses t62.outputLits t67.outputLits [1745,1746,1747,1748,1749,1750,1751,1752] = c68
  exact concat3_congr eq62 eq67 merge68
def t69 : CounterTree := .leaf (111,false)
def c69 : CNF := []
theorem eq69 : t69.clauses = c69 := rfl
def t70 : CounterTree := .leaf (117,false)
def c70 : CNF := []
theorem eq70 : t70.clauses = c70 := rfl
def t71 : CounterTree := .node [1753,1754] t69 t70
def m71 : CNF := [[(117,true),(1753,true)],[(111,true),(1753,true)],[(111,true),(117,true),(1754,true)]]
theorem merge71 : mergeClauses t69.outputLits t70.outputLits [1753,1754] = m71 := by
  rfl

def c71 : CNF := c69 ++ c70 ++ m71
theorem eq71 : t71.clauses = c71 := by
  change t69.clauses ++ t70.clauses ++ mergeClauses t69.outputLits t70.outputLits [1753,1754] = c71
  exact concat3_congr eq69 eq70 merge71
def t72 : CounterTree := .node [1755,1756] t70 t70
def m72 : CNF := [[(117,true),(1755,true)],[(117,true),(1755,true)],[(117,true),(117,true),(1756,true)]]
theorem merge72 : mergeClauses t70.outputLits t70.outputLits [1755,1756] = m72 := by
  rfl

def c72 : CNF := c70 ++ c70 ++ m72
theorem eq72 : t72.clauses = c72 := by
  change t70.clauses ++ t70.clauses ++ mergeClauses t70.outputLits t70.outputLits [1755,1756] = c72
  exact concat3_congr eq70 eq70 merge72
def t73 : CounterTree := .node [1757,1758,1759,1760] t71 t72
def m73 : CNF := [[(1755,false),(1757,true)],[(1756,false),(1758,true)],[(1753,false),(1757,true)],[(1753,false),(1755,false),(1758,true)],[(1753,false),(1756,false),(1759,true)],[(1754,false),(1758,true)],[(1754,false),(1755,false),(1759,true)],[(1754,false),(1756,false),(1760,true)]]
theorem merge73 : mergeClauses t71.outputLits t72.outputLits [1757,1758,1759,1760] = m73 := by
  rfl

def c73 : CNF := c71 ++ c72 ++ m73
theorem eq73 : t73.clauses = c73 := by
  change t71.clauses ++ t72.clauses ++ mergeClauses t71.outputLits t72.outputLits [1757,1758,1759,1760] = c73
  exact concat3_congr eq71 eq72 merge73
def t74 : CounterTree := .leaf (119,false)
def c74 : CNF := []
theorem eq74 : t74.clauses = c74 := rfl
def t75 : CounterTree := .node [1761,1762] t70 t74
def m75 : CNF := [[(119,true),(1761,true)],[(117,true),(1761,true)],[(117,true),(119,true),(1762,true)]]
theorem merge75 : mergeClauses t70.outputLits t74.outputLits [1761,1762] = m75 := by
  rfl

def c75 : CNF := c70 ++ c74 ++ m75
theorem eq75 : t75.clauses = c75 := by
  change t70.clauses ++ t74.clauses ++ mergeClauses t70.outputLits t74.outputLits [1761,1762] = c75
  exact concat3_congr eq70 eq74 merge75
def t76 : CounterTree := .node [1763,1764] t74 t74
def m76 : CNF := [[(119,true),(1763,true)],[(119,true),(1763,true)],[(119,true),(119,true),(1764,true)]]
theorem merge76 : mergeClauses t74.outputLits t74.outputLits [1763,1764] = m76 := by
  rfl

def c76 : CNF := c74 ++ c74 ++ m76
theorem eq76 : t76.clauses = c76 := by
  change t74.clauses ++ t74.clauses ++ mergeClauses t74.outputLits t74.outputLits [1763,1764] = c76
  exact concat3_congr eq74 eq74 merge76
def t77 : CounterTree := .node [1765,1766,1767,1768] t75 t76
def m77 : CNF := [[(1763,false),(1765,true)],[(1764,false),(1766,true)],[(1761,false),(1765,true)],[(1761,false),(1763,false),(1766,true)],[(1761,false),(1764,false),(1767,true)],[(1762,false),(1766,true)],[(1762,false),(1763,false),(1767,true)],[(1762,false),(1764,false),(1768,true)]]
theorem merge77 : mergeClauses t75.outputLits t76.outputLits [1765,1766,1767,1768] = m77 := by
  rfl

def c77 : CNF := c75 ++ c76 ++ m77
theorem eq77 : t77.clauses = c77 := by
  change t75.clauses ++ t76.clauses ++ mergeClauses t75.outputLits t76.outputLits [1765,1766,1767,1768] = c77
  exact concat3_congr eq75 eq76 merge77
def t78 : CounterTree := .node [1769,1770,1771,1772,1773,1774,1775,1776] t73 t77
def m78 : CNF := [[(1765,false),(1769,true)],[(1766,false),(1770,true)],[(1767,false),(1771,true)],[(1768,false),(1772,true)],[(1757,false),(1769,true)],[(1757,false),(1765,false),(1770,true)],[(1757,false),(1766,false),(1771,true)],[(1757,false),(1767,false),(1772,true)],[(1757,false),(1768,false),(1773,true)],[(1758,false),(1770,true)],[(1758,false),(1765,false),(1771,true)],[(1758,false),(1766,false),(1772,true)],[(1758,false),(1767,false),(1773,true)],[(1758,false),(1768,false),(1774,true)],[(1759,false),(1771,true)],[(1759,false),(1765,false),(1772,true)],[(1759,false),(1766,false),(1773,true)],[(1759,false),(1767,false),(1774,true)],[(1759,false),(1768,false),(1775,true)],[(1760,false),(1772,true)],[(1760,false),(1765,false),(1773,true)],[(1760,false),(1766,false),(1774,true)],[(1760,false),(1767,false),(1775,true)],[(1760,false),(1768,false),(1776,true)]]
theorem merge78 : mergeClauses t73.outputLits t77.outputLits [1769,1770,1771,1772,1773,1774,1775,1776] = m78 := by
  rfl

def c78 : CNF := c73 ++ c77 ++ m78
theorem eq78 : t78.clauses = c78 := by
  change t73.clauses ++ t77.clauses ++ mergeClauses t73.outputLits t77.outputLits [1769,1770,1771,1772,1773,1774,1775,1776] = c78
  exact concat3_congr eq73 eq77 merge78
def t79 : CounterTree := .node [1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792] t68 t78
def m79 : CNF := [[(1769,false),(1777,true)],[(1770,false),(1778,true)],[(1771,false),(1779,true)],[(1772,false),(1780,true)],[(1773,false),(1781,true)],[(1774,false),(1782,true)],[(1775,false),(1783,true)],[(1776,false),(1784,true)],[(1745,false),(1777,true)],[(1745,false),(1769,false),(1778,true)],[(1745,false),(1770,false),(1779,true)],[(1745,false),(1771,false),(1780,true)],[(1745,false),(1772,false),(1781,true)],[(1745,false),(1773,false),(1782,true)],[(1745,false),(1774,false),(1783,true)],[(1745,false),(1775,false),(1784,true)],[(1745,false),(1776,false),(1785,true)],[(1746,false),(1778,true)],[(1746,false),(1769,false),(1779,true)],[(1746,false),(1770,false),(1780,true)],[(1746,false),(1771,false),(1781,true)],[(1746,false),(1772,false),(1782,true)],[(1746,false),(1773,false),(1783,true)],[(1746,false),(1774,false),(1784,true)],[(1746,false),(1775,false),(1785,true)],[(1746,false),(1776,false),(1786,true)],[(1747,false),(1779,true)],[(1747,false),(1769,false),(1780,true)],[(1747,false),(1770,false),(1781,true)],[(1747,false),(1771,false),(1782,true)],[(1747,false),(1772,false),(1783,true)],[(1747,false),(1773,false),(1784,true)],[(1747,false),(1774,false),(1785,true)],[(1747,false),(1775,false),(1786,true)],[(1747,false),(1776,false),(1787,true)],[(1748,false),(1780,true)],[(1748,false),(1769,false),(1781,true)],[(1748,false),(1770,false),(1782,true)],[(1748,false),(1771,false),(1783,true)],[(1748,false),(1772,false),(1784,true)],[(1748,false),(1773,false),(1785,true)],[(1748,false),(1774,false),(1786,true)],[(1748,false),(1775,false),(1787,true)],[(1748,false),(1776,false),(1788,true)],[(1749,false),(1781,true)],[(1749,false),(1769,false),(1782,true)],[(1749,false),(1770,false),(1783,true)],[(1749,false),(1771,false),(1784,true)],[(1749,false),(1772,false),(1785,true)],[(1749,false),(1773,false),(1786,true)],[(1749,false),(1774,false),(1787,true)],[(1749,false),(1775,false),(1788,true)],[(1749,false),(1776,false),(1789,true)],[(1750,false),(1782,true)],[(1750,false),(1769,false),(1783,true)],[(1750,false),(1770,false),(1784,true)],[(1750,false),(1771,false),(1785,true)],[(1750,false),(1772,false),(1786,true)],[(1750,false),(1773,false),(1787,true)],[(1750,false),(1774,false),(1788,true)],[(1750,false),(1775,false),(1789,true)],[(1750,false),(1776,false),(1790,true)],[(1751,false),(1783,true)],[(1751,false),(1769,false),(1784,true)],[(1751,false),(1770,false),(1785,true)],[(1751,false),(1771,false),(1786,true)],[(1751,false),(1772,false),(1787,true)],[(1751,false),(1773,false),(1788,true)],[(1751,false),(1774,false),(1789,true)],[(1751,false),(1775,false),(1790,true)],[(1751,false),(1776,false),(1791,true)],[(1752,false),(1784,true)],[(1752,false),(1769,false),(1785,true)],[(1752,false),(1770,false),(1786,true)],[(1752,false),(1771,false),(1787,true)],[(1752,false),(1772,false),(1788,true)],[(1752,false),(1773,false),(1789,true)],[(1752,false),(1774,false),(1790,true)],[(1752,false),(1775,false),(1791,true)],[(1752,false),(1776,false),(1792,true)]]
theorem merge79 : mergeClauses t68.outputLits t78.outputLits [1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792] = m79 := by
  rfl

def c79 : CNF := c68 ++ c78 ++ m79
theorem eq79 : t79.clauses = c79 := by
  change t68.clauses ++ t78.clauses ++ mergeClauses t68.outputLits t78.outputLits [1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792] = c79
  exact concat3_congr eq68 eq78 merge79
def t80 : CounterTree := .node [1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823] t58 t79
def m80 : CNF := [[(1777,false),(1793,true)],[(1778,false),(1794,true)],[(1779,false),(1795,true)],[(1780,false),(1796,true)],[(1781,false),(1797,true)],[(1782,false),(1798,true)],[(1783,false),(1799,true)],[(1784,false),(1800,true)],[(1785,false),(1801,true)],[(1786,false),(1802,true)],[(1787,false),(1803,true)],[(1788,false),(1804,true)],[(1789,false),(1805,true)],[(1790,false),(1806,true)],[(1791,false),(1807,true)],[(1792,false),(1808,true)],[(1714,false),(1793,true)],[(1714,false),(1777,false),(1794,true)],[(1714,false),(1778,false),(1795,true)],[(1714,false),(1779,false),(1796,true)],[(1714,false),(1780,false),(1797,true)],[(1714,false),(1781,false),(1798,true)],[(1714,false),(1782,false),(1799,true)],[(1714,false),(1783,false),(1800,true)],[(1714,false),(1784,false),(1801,true)],[(1714,false),(1785,false),(1802,true)],[(1714,false),(1786,false),(1803,true)],[(1714,false),(1787,false),(1804,true)],[(1714,false),(1788,false),(1805,true)],[(1714,false),(1789,false),(1806,true)],[(1714,false),(1790,false),(1807,true)],[(1714,false),(1791,false),(1808,true)],[(1714,false),(1792,false),(1809,true)],[(1715,false),(1794,true)],[(1715,false),(1777,false),(1795,true)],[(1715,false),(1778,false),(1796,true)],[(1715,false),(1779,false),(1797,true)],[(1715,false),(1780,false),(1798,true)],[(1715,false),(1781,false),(1799,true)],[(1715,false),(1782,false),(1800,true)],[(1715,false),(1783,false),(1801,true)],[(1715,false),(1784,false),(1802,true)],[(1715,false),(1785,false),(1803,true)],[(1715,false),(1786,false),(1804,true)],[(1715,false),(1787,false),(1805,true)],[(1715,false),(1788,false),(1806,true)],[(1715,false),(1789,false),(1807,true)],[(1715,false),(1790,false),(1808,true)],[(1715,false),(1791,false),(1809,true)],[(1715,false),(1792,false),(1810,true)],[(1716,false),(1795,true)],[(1716,false),(1777,false),(1796,true)],[(1716,false),(1778,false),(1797,true)],[(1716,false),(1779,false),(1798,true)],[(1716,false),(1780,false),(1799,true)],[(1716,false),(1781,false),(1800,true)],[(1716,false),(1782,false),(1801,true)],[(1716,false),(1783,false),(1802,true)],[(1716,false),(1784,false),(1803,true)],[(1716,false),(1785,false),(1804,true)],[(1716,false),(1786,false),(1805,true)],[(1716,false),(1787,false),(1806,true)],[(1716,false),(1788,false),(1807,true)],[(1716,false),(1789,false),(1808,true)],[(1716,false),(1790,false),(1809,true)],[(1716,false),(1791,false),(1810,true)],[(1716,false),(1792,false),(1811,true)],[(1717,false),(1796,true)],[(1717,false),(1777,false),(1797,true)],[(1717,false),(1778,false),(1798,true)],[(1717,false),(1779,false),(1799,true)],[(1717,false),(1780,false),(1800,true)],[(1717,false),(1781,false),(1801,true)],[(1717,false),(1782,false),(1802,true)],[(1717,false),(1783,false),(1803,true)],[(1717,false),(1784,false),(1804,true)],[(1717,false),(1785,false),(1805,true)],[(1717,false),(1786,false),(1806,true)],[(1717,false),(1787,false),(1807,true)],[(1717,false),(1788,false),(1808,true)],[(1717,false),(1789,false),(1809,true)],[(1717,false),(1790,false),(1810,true)],[(1717,false),(1791,false),(1811,true)],[(1717,false),(1792,false),(1812,true)],[(1718,false),(1797,true)],[(1718,false),(1777,false),(1798,true)],[(1718,false),(1778,false),(1799,true)],[(1718,false),(1779,false),(1800,true)],[(1718,false),(1780,false),(1801,true)],[(1718,false),(1781,false),(1802,true)],[(1718,false),(1782,false),(1803,true)],[(1718,false),(1783,false),(1804,true)],[(1718,false),(1784,false),(1805,true)],[(1718,false),(1785,false),(1806,true)],[(1718,false),(1786,false),(1807,true)],[(1718,false),(1787,false),(1808,true)],[(1718,false),(1788,false),(1809,true)],[(1718,false),(1789,false),(1810,true)],[(1718,false),(1790,false),(1811,true)],[(1718,false),(1791,false),(1812,true)],[(1718,false),(1792,false),(1813,true)],[(1719,false),(1798,true)],[(1719,false),(1777,false),(1799,true)],[(1719,false),(1778,false),(1800,true)],[(1719,false),(1779,false),(1801,true)],[(1719,false),(1780,false),(1802,true)],[(1719,false),(1781,false),(1803,true)],[(1719,false),(1782,false),(1804,true)],[(1719,false),(1783,false),(1805,true)],[(1719,false),(1784,false),(1806,true)],[(1719,false),(1785,false),(1807,true)],[(1719,false),(1786,false),(1808,true)],[(1719,false),(1787,false),(1809,true)],[(1719,false),(1788,false),(1810,true)],[(1719,false),(1789,false),(1811,true)],[(1719,false),(1790,false),(1812,true)],[(1719,false),(1791,false),(1813,true)],[(1719,false),(1792,false),(1814,true)],[(1720,false),(1799,true)],[(1720,false),(1777,false),(1800,true)],[(1720,false),(1778,false),(1801,true)],[(1720,false),(1779,false),(1802,true)],[(1720,false),(1780,false),(1803,true)],[(1720,false),(1781,false),(1804,true)],[(1720,false),(1782,false),(1805,true)],[(1720,false),(1783,false),(1806,true)],[(1720,false),(1784,false),(1807,true)],[(1720,false),(1785,false),(1808,true)],[(1720,false),(1786,false),(1809,true)],[(1720,false),(1787,false),(1810,true)],[(1720,false),(1788,false),(1811,true)],[(1720,false),(1789,false),(1812,true)],[(1720,false),(1790,false),(1813,true)],[(1720,false),(1791,false),(1814,true)],[(1720,false),(1792,false),(1815,true)],[(1721,false),(1800,true)],[(1721,false),(1777,false),(1801,true)],[(1721,false),(1778,false),(1802,true)],[(1721,false),(1779,false),(1803,true)],[(1721,false),(1780,false),(1804,true)],[(1721,false),(1781,false),(1805,true)],[(1721,false),(1782,false),(1806,true)],[(1721,false),(1783,false),(1807,true)],[(1721,false),(1784,false),(1808,true)],[(1721,false),(1785,false),(1809,true)],[(1721,false),(1786,false),(1810,true)],[(1721,false),(1787,false),(1811,true)],[(1721,false),(1788,false),(1812,true)],[(1721,false),(1789,false),(1813,true)],[(1721,false),(1790,false),(1814,true)],[(1721,false),(1791,false),(1815,true)],[(1721,false),(1792,false),(1816,true)],[(1722,false),(1801,true)],[(1722,false),(1777,false),(1802,true)],[(1722,false),(1778,false),(1803,true)],[(1722,false),(1779,false),(1804,true)],[(1722,false),(1780,false),(1805,true)],[(1722,false),(1781,false),(1806,true)],[(1722,false),(1782,false),(1807,true)],[(1722,false),(1783,false),(1808,true)],[(1722,false),(1784,false),(1809,true)],[(1722,false),(1785,false),(1810,true)],[(1722,false),(1786,false),(1811,true)],[(1722,false),(1787,false),(1812,true)],[(1722,false),(1788,false),(1813,true)],[(1722,false),(1789,false),(1814,true)],[(1722,false),(1790,false),(1815,true)],[(1722,false),(1791,false),(1816,true)],[(1722,false),(1792,false),(1817,true)],[(1723,false),(1802,true)],[(1723,false),(1777,false),(1803,true)],[(1723,false),(1778,false),(1804,true)],[(1723,false),(1779,false),(1805,true)],[(1723,false),(1780,false),(1806,true)],[(1723,false),(1781,false),(1807,true)],[(1723,false),(1782,false),(1808,true)],[(1723,false),(1783,false),(1809,true)],[(1723,false),(1784,false),(1810,true)],[(1723,false),(1785,false),(1811,true)],[(1723,false),(1786,false),(1812,true)],[(1723,false),(1787,false),(1813,true)],[(1723,false),(1788,false),(1814,true)],[(1723,false),(1789,false),(1815,true)],[(1723,false),(1790,false),(1816,true)],[(1723,false),(1791,false),(1817,true)],[(1723,false),(1792,false),(1818,true)],[(1724,false),(1803,true)],[(1724,false),(1777,false),(1804,true)],[(1724,false),(1778,false),(1805,true)],[(1724,false),(1779,false),(1806,true)],[(1724,false),(1780,false),(1807,true)],[(1724,false),(1781,false),(1808,true)],[(1724,false),(1782,false),(1809,true)],[(1724,false),(1783,false),(1810,true)],[(1724,false),(1784,false),(1811,true)],[(1724,false),(1785,false),(1812,true)],[(1724,false),(1786,false),(1813,true)],[(1724,false),(1787,false),(1814,true)],[(1724,false),(1788,false),(1815,true)],[(1724,false),(1789,false),(1816,true)],[(1724,false),(1790,false),(1817,true)],[(1724,false),(1791,false),(1818,true)],[(1724,false),(1792,false),(1819,true)],[(1725,false),(1804,true)],[(1725,false),(1777,false),(1805,true)],[(1725,false),(1778,false),(1806,true)],[(1725,false),(1779,false),(1807,true)],[(1725,false),(1780,false),(1808,true)],[(1725,false),(1781,false),(1809,true)],[(1725,false),(1782,false),(1810,true)],[(1725,false),(1783,false),(1811,true)],[(1725,false),(1784,false),(1812,true)],[(1725,false),(1785,false),(1813,true)],[(1725,false),(1786,false),(1814,true)],[(1725,false),(1787,false),(1815,true)],[(1725,false),(1788,false),(1816,true)],[(1725,false),(1789,false),(1817,true)],[(1725,false),(1790,false),(1818,true)],[(1725,false),(1791,false),(1819,true)],[(1725,false),(1792,false),(1820,true)],[(1726,false),(1805,true)],[(1726,false),(1777,false),(1806,true)],[(1726,false),(1778,false),(1807,true)],[(1726,false),(1779,false),(1808,true)],[(1726,false),(1780,false),(1809,true)],[(1726,false),(1781,false),(1810,true)],[(1726,false),(1782,false),(1811,true)],[(1726,false),(1783,false),(1812,true)],[(1726,false),(1784,false),(1813,true)],[(1726,false),(1785,false),(1814,true)],[(1726,false),(1786,false),(1815,true)],[(1726,false),(1787,false),(1816,true)],[(1726,false),(1788,false),(1817,true)],[(1726,false),(1789,false),(1818,true)],[(1726,false),(1790,false),(1819,true)],[(1726,false),(1791,false),(1820,true)],[(1726,false),(1792,false),(1821,true)],[(1727,false),(1806,true)],[(1727,false),(1777,false),(1807,true)],[(1727,false),(1778,false),(1808,true)],[(1727,false),(1779,false),(1809,true)],[(1727,false),(1780,false),(1810,true)],[(1727,false),(1781,false),(1811,true)],[(1727,false),(1782,false),(1812,true)],[(1727,false),(1783,false),(1813,true)],[(1727,false),(1784,false),(1814,true)],[(1727,false),(1785,false),(1815,true)],[(1727,false),(1786,false),(1816,true)],[(1727,false),(1787,false),(1817,true)],[(1727,false),(1788,false),(1818,true)],[(1727,false),(1789,false),(1819,true)],[(1727,false),(1790,false),(1820,true)],[(1727,false),(1791,false),(1821,true)],[(1727,false),(1792,false),(1822,true)],[(1728,false),(1807,true)],[(1728,false),(1777,false),(1808,true)],[(1728,false),(1778,false),(1809,true)],[(1728,false),(1779,false),(1810,true)],[(1728,false),(1780,false),(1811,true)],[(1728,false),(1781,false),(1812,true)],[(1728,false),(1782,false),(1813,true)],[(1728,false),(1783,false),(1814,true)],[(1728,false),(1784,false),(1815,true)],[(1728,false),(1785,false),(1816,true)],[(1728,false),(1786,false),(1817,true)],[(1728,false),(1787,false),(1818,true)],[(1728,false),(1788,false),(1819,true)],[(1728,false),(1789,false),(1820,true)],[(1728,false),(1790,false),(1821,true)],[(1728,false),(1791,false),(1822,true)],[(1728,false),(1792,false),(1823,true)]]
theorem merge80 : mergeClauses t58.outputLits t79.outputLits [1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823] = m80 := by
  rfl

def c80 : CNF := c58 ++ c79 ++ m80
theorem eq80 : t80.clauses = c80 := by
  change t58.clauses ++ t79.clauses ++ mergeClauses t58.outputLits t79.outputLits [1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823] = c80
  exact concat3_congr eq58 eq79 merge80

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
