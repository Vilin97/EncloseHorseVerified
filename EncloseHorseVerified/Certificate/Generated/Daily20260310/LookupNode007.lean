import EncloseHorseVerified.Certificate.Generated.Daily20260310.LookupNode006

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.Lookup

def m144 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(1767,false),(1770,true)]) (.leaf [(1768,false),(1771,true)])) (.node 1 (.leaf [(1769,false),(1772,true)]) (.node 1 (.leaf [(1763,false),(1770,true)]) (.leaf [(1763,false),(1767,false),(1771,true)])))) (.node 3 (.node 1 (.leaf [(1763,false),(1768,false),(1772,true)]) (.node 1 (.leaf [(1763,false),(1769,false),(1773,true)]) (.leaf [(1764,false),(1771,true)]))) (.node 1 (.leaf [(1764,false),(1767,false),(1772,true)]) (.node 1 (.leaf [(1764,false),(1768,false),(1773,true)]) (.leaf [(1764,false),(1769,false),(1774,true)])))))
theorem merge144 : m144.clauses = ScoreNodes.m144 := by rfl

def t144 : Tree := .node 11 (.node 3 t138 t143) m144
theorem eq144 : t144.clauses = ScoreNodes.c144 :=
  cat_eq _ (cat_eq _ eq138 eq143) merge144

def t145 : Tree := .nil
theorem eq145 : t145.clauses = ScoreNodes.c145 := by rfl

def t146 : Tree := .nil
theorem eq146 : t146.clauses = ScoreNodes.c146 := by rfl

def t147 : Tree := .nil
theorem eq147 : t147.clauses = ScoreNodes.c147 := by rfl

def m148 : Tree := (.node 1 (.leaf [(241,true),(1775,true)]) (.node 1 (.leaf [(235,true),(1775,true)]) (.leaf [(235,true),(241,true),(1776,true)])))
theorem merge148 : m148.clauses = ScoreNodes.m148 := by rfl

def t148 : Tree := .node 0 (.node 0 t146 t147) m148
theorem eq148 : t148.clauses = ScoreNodes.c148 :=
  cat_eq _ (cat_eq _ eq146 eq147) merge148

def m149 : Tree := (.node 2 (.node 1 (.leaf [(1775,false),(1777,true)]) (.leaf [(1776,false),(1778,true)])) (.node 1 (.leaf [(233,true),(1777,true)]) (.node 1 (.leaf [(233,true),(1775,false),(1778,true)]) (.leaf [(233,true),(1776,false),(1779,true)]))))
theorem merge149 : m149.clauses = ScoreNodes.m149 := by rfl

def t149 : Tree := .node 3 (.node 0 t145 t148) m149
theorem eq149 : t149.clauses = ScoreNodes.c149 :=
  cat_eq _ (cat_eq _ eq145 eq148) merge149

def t150 : Tree := .nil
theorem eq150 : t150.clauses = ScoreNodes.c150 := by rfl

def t151 : Tree := .nil
theorem eq151 : t151.clauses = ScoreNodes.c151 := by rfl

def t152 : Tree := .nil
theorem eq152 : t152.clauses = ScoreNodes.c152 := by rfl

def m153 : Tree := (.node 1 (.leaf [(249,true),(1780,true)]) (.node 1 (.leaf [(247,true),(1780,true)]) (.leaf [(247,true),(249,true),(1781,true)])))
theorem merge153 : m153.clauses = ScoreNodes.m153 := by rfl

def t153 : Tree := .node 0 (.node 0 t151 t152) m153
theorem eq153 : t153.clauses = ScoreNodes.c153 :=
  cat_eq _ (cat_eq _ eq151 eq152) merge153

def m154 : Tree := (.node 2 (.node 1 (.leaf [(1780,false),(1782,true)]) (.leaf [(1781,false),(1783,true)])) (.node 1 (.leaf [(243,true),(1782,true)]) (.node 1 (.leaf [(243,true),(1780,false),(1783,true)]) (.leaf [(243,true),(1781,false),(1784,true)]))))
theorem merge154 : m154.clauses = ScoreNodes.m154 := by rfl

def t154 : Tree := .node 3 (.node 0 t150 t153) m154
theorem eq154 : t154.clauses = ScoreNodes.c154 :=
  cat_eq _ (cat_eq _ eq150 eq153) merge154

def m155 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(1782,false),(1785,true)]) (.node 1 (.leaf [(1783,false),(1786,true)]) (.leaf [(1784,false),(1787,true)]))) (.node 2 (.node 1 (.leaf [(1777,false),(1785,true)]) (.leaf [(1777,false),(1782,false),(1786,true)])) (.node 1 (.leaf [(1777,false),(1783,false),(1787,true)]) (.leaf [(1777,false),(1784,false),(1788,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1778,false),(1786,true)]) (.leaf [(1778,false),(1782,false),(1787,true)])) (.node 1 (.leaf [(1778,false),(1783,false),(1788,true)]) (.leaf [(1778,false),(1784,false),(1789,true)]))) (.node 2 (.node 1 (.leaf [(1779,false),(1787,true)]) (.leaf [(1779,false),(1782,false),(1788,true)])) (.node 1 (.leaf [(1779,false),(1783,false),(1789,true)]) (.leaf [(1779,false),(1784,false),(1790,true)])))))
theorem merge155 : m155.clauses = ScoreNodes.m155 := by rfl

def t155 : Tree := .node 16 (.node 8 t149 t154) m155
theorem eq155 : t155.clauses = ScoreNodes.c155 :=
  cat_eq _ (cat_eq _ eq149 eq154) merge155

def m156 : Tree := (.node 20 (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1785,false),(1791,true)]) (.leaf [(1786,false),(1792,true)])) (.node 1 (.leaf [(1787,false),(1793,true)]) (.node 1 (.leaf [(1788,false),(1794,true)]) (.leaf [(1789,false),(1795,true)])))) (.node 2 (.node 1 (.leaf [(1790,false),(1796,true)]) (.leaf [(1770,false),(1791,true)])) (.node 1 (.leaf [(1770,false),(1785,false),(1792,true)]) (.node 1 (.leaf [(1770,false),(1786,false),(1793,true)]) (.leaf [(1770,false),(1787,false),(1794,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1770,false),(1788,false),(1795,true)]) (.leaf [(1770,false),(1789,false),(1796,true)])) (.node 1 (.leaf [(1770,false),(1790,false),(1797,true)]) (.node 1 (.leaf [(1771,false),(1792,true)]) (.leaf [(1771,false),(1785,false),(1793,true)])))) (.node 2 (.node 1 (.leaf [(1771,false),(1786,false),(1794,true)]) (.leaf [(1771,false),(1787,false),(1795,true)])) (.node 1 (.leaf [(1771,false),(1788,false),(1796,true)]) (.node 1 (.leaf [(1771,false),(1789,false),(1797,true)]) (.leaf [(1771,false),(1790,false),(1798,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1772,false),(1793,true)]) (.leaf [(1772,false),(1785,false),(1794,true)])) (.node 1 (.leaf [(1772,false),(1786,false),(1795,true)]) (.node 1 (.leaf [(1772,false),(1787,false),(1796,true)]) (.leaf [(1772,false),(1788,false),(1797,true)])))) (.node 2 (.node 1 (.leaf [(1772,false),(1789,false),(1798,true)]) (.leaf [(1772,false),(1790,false),(1799,true)])) (.node 1 (.leaf [(1773,false),(1794,true)]) (.node 1 (.leaf [(1773,false),(1785,false),(1795,true)]) (.leaf [(1773,false),(1786,false),(1796,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1773,false),(1787,false),(1797,true)]) (.leaf [(1773,false),(1788,false),(1798,true)])) (.node 1 (.leaf [(1773,false),(1789,false),(1799,true)]) (.node 1 (.leaf [(1773,false),(1790,false),(1800,true)]) (.leaf [(1774,false),(1795,true)])))) (.node 3 (.node 1 (.leaf [(1774,false),(1785,false),(1796,true)]) (.node 1 (.leaf [(1774,false),(1786,false),(1797,true)]) (.leaf [(1774,false),(1787,false),(1798,true)]))) (.node 1 (.leaf [(1774,false),(1788,false),(1799,true)]) (.node 1 (.leaf [(1774,false),(1789,false),(1800,true)]) (.leaf [(1774,false),(1790,false),(1801,true)])))))))
theorem merge156 : m156.clauses = ScoreNodes.m156 := by rfl

def t156 : Tree := .node 53 (.node 22 t144 t155) m156
theorem eq156 : t156.clauses = ScoreNodes.c156 :=
  cat_eq _ (cat_eq _ eq144 eq155) merge156

def t157 : Tree := .nil
theorem eq157 : t157.clauses = ScoreNodes.c157 := by rfl

def t158 : Tree := .nil
theorem eq158 : t158.clauses = ScoreNodes.c158 := by rfl

def t159 : Tree := .nil
theorem eq159 : t159.clauses = ScoreNodes.c159 := by rfl

def m160 : Tree := (.node 1 (.leaf [(265,true),(1802,true)]) (.node 1 (.leaf [(263,true),(1802,true)]) (.leaf [(263,true),(265,true),(1803,true)])))
theorem merge160 : m160.clauses = ScoreNodes.m160 := by rfl

def t160 : Tree := .node 0 (.node 0 t158 t159) m160
theorem eq160 : t160.clauses = ScoreNodes.c160 :=
  cat_eq _ (cat_eq _ eq158 eq159) merge160

def m161 : Tree := (.node 2 (.node 1 (.leaf [(1802,false),(1804,true)]) (.leaf [(1803,false),(1805,true)])) (.node 1 (.leaf [(261,true),(1804,true)]) (.node 1 (.leaf [(261,true),(1802,false),(1805,true)]) (.leaf [(261,true),(1803,false),(1806,true)]))))
theorem merge161 : m161.clauses = ScoreNodes.m161 := by rfl

def t161 : Tree := .node 3 (.node 0 t157 t160) m161
theorem eq161 : t161.clauses = ScoreNodes.c161 :=
  cat_eq _ (cat_eq _ eq157 eq160) merge161

def t162 : Tree := .nil
theorem eq162 : t162.clauses = ScoreNodes.c162 := by rfl

def t163 : Tree := .nil
theorem eq163 : t163.clauses = ScoreNodes.c163 := by rfl

def t164 : Tree := .nil
theorem eq164 : t164.clauses = ScoreNodes.c164 := by rfl

def m165 : Tree := (.node 1 (.leaf [(271,true),(1807,true)]) (.node 1 (.leaf [(269,true),(1807,true)]) (.leaf [(269,true),(271,true),(1808,true)])))
theorem merge165 : m165.clauses = ScoreNodes.m165 := by rfl

def t165 : Tree := .node 0 (.node 0 t163 t164) m165
theorem eq165 : t165.clauses = ScoreNodes.c165 :=
  cat_eq _ (cat_eq _ eq163 eq164) merge165


end EncloseHorse.Certificate.Generated.Daily20260310.Lookup
