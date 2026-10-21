import EncloseHorseVerified.Certificate.Generated.Daily20260310.ScoreNode006

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes

def t144 : CounterTree := .node [1770,1771,1772,1773,1774] t138 t143
def m144 : CNF := [[(1767,false),(1770,true)],[(1768,false),(1771,true)],[(1769,false),(1772,true)],[(1763,false),(1770,true)],[(1763,false),(1767,false),(1771,true)],[(1763,false),(1768,false),(1772,true)],[(1763,false),(1769,false),(1773,true)],[(1764,false),(1771,true)],[(1764,false),(1767,false),(1772,true)],[(1764,false),(1768,false),(1773,true)],[(1764,false),(1769,false),(1774,true)]]
theorem merge144 : mergeClauses t138.outputLits t143.outputLits [1770,1771,1772,1773,1774] = m144 := by rfl

def c144 : CNF := c138 ++ c143 ++ m144
theorem eq144 : t144.clauses = c144 := by
  change t138.clauses ++ t143.clauses ++ mergeClauses t138.outputLits t143.outputLits [1770,1771,1772,1773,1774] = c144
  exact concat3_congr eq138 eq143 merge144

def t145 : CounterTree := .leaf (233,false)
def c145 : CNF := []
theorem eq145 : t145.clauses = c145 := rfl

def t146 : CounterTree := .leaf (235,false)
def c146 : CNF := []
theorem eq146 : t146.clauses = c146 := rfl

def t147 : CounterTree := .leaf (241,false)
def c147 : CNF := []
theorem eq147 : t147.clauses = c147 := rfl

def t148 : CounterTree := .node [1775,1776] t146 t147
def m148 : CNF := [[(241,true),(1775,true)],[(235,true),(1775,true)],[(235,true),(241,true),(1776,true)]]
theorem merge148 : mergeClauses t146.outputLits t147.outputLits [1775,1776] = m148 := by rfl

def c148 : CNF := c146 ++ c147 ++ m148
theorem eq148 : t148.clauses = c148 := by
  change t146.clauses ++ t147.clauses ++ mergeClauses t146.outputLits t147.outputLits [1775,1776] = c148
  exact concat3_congr eq146 eq147 merge148

def t149 : CounterTree := .node [1777,1778,1779] t145 t148
def m149 : CNF := [[(1775,false),(1777,true)],[(1776,false),(1778,true)],[(233,true),(1777,true)],[(233,true),(1775,false),(1778,true)],[(233,true),(1776,false),(1779,true)]]
theorem merge149 : mergeClauses t145.outputLits t148.outputLits [1777,1778,1779] = m149 := by rfl

def c149 : CNF := c145 ++ c148 ++ m149
theorem eq149 : t149.clauses = c149 := by
  change t145.clauses ++ t148.clauses ++ mergeClauses t145.outputLits t148.outputLits [1777,1778,1779] = c149
  exact concat3_congr eq145 eq148 merge149

def t150 : CounterTree := .leaf (243,false)
def c150 : CNF := []
theorem eq150 : t150.clauses = c150 := rfl

def t151 : CounterTree := .leaf (247,false)
def c151 : CNF := []
theorem eq151 : t151.clauses = c151 := rfl

def t152 : CounterTree := .leaf (249,false)
def c152 : CNF := []
theorem eq152 : t152.clauses = c152 := rfl

def t153 : CounterTree := .node [1780,1781] t151 t152
def m153 : CNF := [[(249,true),(1780,true)],[(247,true),(1780,true)],[(247,true),(249,true),(1781,true)]]
theorem merge153 : mergeClauses t151.outputLits t152.outputLits [1780,1781] = m153 := by rfl

def c153 : CNF := c151 ++ c152 ++ m153
theorem eq153 : t153.clauses = c153 := by
  change t151.clauses ++ t152.clauses ++ mergeClauses t151.outputLits t152.outputLits [1780,1781] = c153
  exact concat3_congr eq151 eq152 merge153

def t154 : CounterTree := .node [1782,1783,1784] t150 t153
def m154 : CNF := [[(1780,false),(1782,true)],[(1781,false),(1783,true)],[(243,true),(1782,true)],[(243,true),(1780,false),(1783,true)],[(243,true),(1781,false),(1784,true)]]
theorem merge154 : mergeClauses t150.outputLits t153.outputLits [1782,1783,1784] = m154 := by rfl

def c154 : CNF := c150 ++ c153 ++ m154
theorem eq154 : t154.clauses = c154 := by
  change t150.clauses ++ t153.clauses ++ mergeClauses t150.outputLits t153.outputLits [1782,1783,1784] = c154
  exact concat3_congr eq150 eq153 merge154

def t155 : CounterTree := .node [1785,1786,1787,1788,1789,1790] t149 t154
def m155 : CNF := [[(1782,false),(1785,true)],[(1783,false),(1786,true)],[(1784,false),(1787,true)],[(1777,false),(1785,true)],[(1777,false),(1782,false),(1786,true)],[(1777,false),(1783,false),(1787,true)],[(1777,false),(1784,false),(1788,true)],[(1778,false),(1786,true)],[(1778,false),(1782,false),(1787,true)],[(1778,false),(1783,false),(1788,true)],[(1778,false),(1784,false),(1789,true)],[(1779,false),(1787,true)],[(1779,false),(1782,false),(1788,true)],[(1779,false),(1783,false),(1789,true)],[(1779,false),(1784,false),(1790,true)]]
theorem merge155 : mergeClauses t149.outputLits t154.outputLits [1785,1786,1787,1788,1789,1790] = m155 := by rfl

def c155 : CNF := c149 ++ c154 ++ m155
theorem eq155 : t155.clauses = c155 := by
  change t149.clauses ++ t154.clauses ++ mergeClauses t149.outputLits t154.outputLits [1785,1786,1787,1788,1789,1790] = c155
  exact concat3_congr eq149 eq154 merge155

def t156 : CounterTree := .node [1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801] t144 t155
def m156 : CNF := [[(1785,false),(1791,true)],[(1786,false),(1792,true)],[(1787,false),(1793,true)],[(1788,false),(1794,true)],[(1789,false),(1795,true)],[(1790,false),(1796,true)],[(1770,false),(1791,true)],[(1770,false),(1785,false),(1792,true)],[(1770,false),(1786,false),(1793,true)],[(1770,false),(1787,false),(1794,true)],[(1770,false),(1788,false),(1795,true)],[(1770,false),(1789,false),(1796,true)],[(1770,false),(1790,false),(1797,true)],[(1771,false),(1792,true)],[(1771,false),(1785,false),(1793,true)],[(1771,false),(1786,false),(1794,true)],[(1771,false),(1787,false),(1795,true)],[(1771,false),(1788,false),(1796,true)],[(1771,false),(1789,false),(1797,true)],[(1771,false),(1790,false),(1798,true)],[(1772,false),(1793,true)],[(1772,false),(1785,false),(1794,true)],[(1772,false),(1786,false),(1795,true)],[(1772,false),(1787,false),(1796,true)],[(1772,false),(1788,false),(1797,true)],[(1772,false),(1789,false),(1798,true)],[(1772,false),(1790,false),(1799,true)],[(1773,false),(1794,true)],[(1773,false),(1785,false),(1795,true)],[(1773,false),(1786,false),(1796,true)],[(1773,false),(1787,false),(1797,true)],[(1773,false),(1788,false),(1798,true)],[(1773,false),(1789,false),(1799,true)],[(1773,false),(1790,false),(1800,true)],[(1774,false),(1795,true)],[(1774,false),(1785,false),(1796,true)],[(1774,false),(1786,false),(1797,true)],[(1774,false),(1787,false),(1798,true)],[(1774,false),(1788,false),(1799,true)],[(1774,false),(1789,false),(1800,true)],[(1774,false),(1790,false),(1801,true)]]
theorem merge156 : mergeClauses t144.outputLits t155.outputLits [1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801] = m156 := by rfl

def c156 : CNF := c144 ++ c155 ++ m156
theorem eq156 : t156.clauses = c156 := by
  change t144.clauses ++ t155.clauses ++ mergeClauses t144.outputLits t155.outputLits [1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801] = c156
  exact concat3_congr eq144 eq155 merge156

def t157 : CounterTree := .leaf (261,false)
def c157 : CNF := []
theorem eq157 : t157.clauses = c157 := rfl

def t158 : CounterTree := .leaf (263,false)
def c158 : CNF := []
theorem eq158 : t158.clauses = c158 := rfl

def t159 : CounterTree := .leaf (265,false)
def c159 : CNF := []
theorem eq159 : t159.clauses = c159 := rfl

def t160 : CounterTree := .node [1802,1803] t158 t159
def m160 : CNF := [[(265,true),(1802,true)],[(263,true),(1802,true)],[(263,true),(265,true),(1803,true)]]
theorem merge160 : mergeClauses t158.outputLits t159.outputLits [1802,1803] = m160 := by rfl

def c160 : CNF := c158 ++ c159 ++ m160
theorem eq160 : t160.clauses = c160 := by
  change t158.clauses ++ t159.clauses ++ mergeClauses t158.outputLits t159.outputLits [1802,1803] = c160
  exact concat3_congr eq158 eq159 merge160

def t161 : CounterTree := .node [1804,1805,1806] t157 t160
def m161 : CNF := [[(1802,false),(1804,true)],[(1803,false),(1805,true)],[(261,true),(1804,true)],[(261,true),(1802,false),(1805,true)],[(261,true),(1803,false),(1806,true)]]
theorem merge161 : mergeClauses t157.outputLits t160.outputLits [1804,1805,1806] = m161 := by rfl

def c161 : CNF := c157 ++ c160 ++ m161
theorem eq161 : t161.clauses = c161 := by
  change t157.clauses ++ t160.clauses ++ mergeClauses t157.outputLits t160.outputLits [1804,1805,1806] = c161
  exact concat3_congr eq157 eq160 merge161

def t162 : CounterTree := .leaf (267,false)
def c162 : CNF := []
theorem eq162 : t162.clauses = c162 := rfl

def t163 : CounterTree := .leaf (269,false)
def c163 : CNF := []
theorem eq163 : t163.clauses = c163 := rfl

def t164 : CounterTree := .leaf (271,false)
def c164 : CNF := []
theorem eq164 : t164.clauses = c164 := rfl

def t165 : CounterTree := .node [1807,1808] t163 t164
def m165 : CNF := [[(271,true),(1807,true)],[(269,true),(1807,true)],[(269,true),(271,true),(1808,true)]]
theorem merge165 : mergeClauses t163.outputLits t164.outputLits [1807,1808] = m165 := by rfl

def c165 : CNF := c163 ++ c164 ++ m165
theorem eq165 : t165.clauses = c165 := by
  change t163.clauses ++ t164.clauses ++ mergeClauses t163.outputLits t164.outputLits [1807,1808] = c165
  exact concat3_congr eq163 eq164 merge165


end EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes
