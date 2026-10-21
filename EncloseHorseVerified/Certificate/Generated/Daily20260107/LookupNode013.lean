import EncloseHorseVerified.Certificate.Generated.Daily20260107.LookupNode012

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.Lookup

def m238 : Tree := (.node 14 (.node 7 (.node 3 (.node 1 (.leaf [(1546,false),(1551,true)]) (.node 1 (.leaf [(1547,false),(1552,true)]) (.leaf [(1548,false),(1553,true)]))) (.node 2 (.node 1 (.leaf [(1549,false),(1554,true)]) (.leaf [(1550,false),(1555,true)])) (.node 1 (.leaf [(1535,false),(1551,true)]) (.leaf [(1535,false),(1546,false),(1552,true)])))) (.node 3 (.node 1 (.leaf [(1535,false),(1547,false),(1553,true)]) (.node 1 (.leaf [(1535,false),(1548,false),(1554,true)]) (.leaf [(1535,false),(1549,false),(1555,true)]))) (.node 2 (.node 1 (.leaf [(1535,false),(1550,false),(1556,true)]) (.leaf [(1536,false),(1552,true)])) (.node 1 (.leaf [(1536,false),(1546,false),(1553,true)]) (.leaf [(1536,false),(1547,false),(1554,true)]))))) (.node 7 (.node 3 (.node 1 (.leaf [(1536,false),(1548,false),(1555,true)]) (.node 1 (.leaf [(1536,false),(1549,false),(1556,true)]) (.leaf [(1536,false),(1550,false),(1557,true)]))) (.node 2 (.node 1 (.leaf [(1537,false),(1553,true)]) (.leaf [(1537,false),(1546,false),(1554,true)])) (.node 1 (.leaf [(1537,false),(1547,false),(1555,true)]) (.leaf [(1537,false),(1548,false),(1556,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1537,false),(1549,false),(1557,true)]) (.leaf [(1537,false),(1550,false),(1558,true)])) (.node 1 (.leaf [(1538,false),(1554,true)]) (.leaf [(1538,false),(1546,false),(1555,true)]))) (.node 2 (.node 1 (.leaf [(1538,false),(1547,false),(1556,true)]) (.leaf [(1538,false),(1548,false),(1557,true)])) (.node 1 (.leaf [(1538,false),(1549,false),(1558,true)]) (.leaf [(1538,false),(1550,false),(1559,true)]))))))
theorem merge238 : m238.clauses = ScoreNodes.m238 := by rfl

def t238 : Tree := .node 36 (.node 14 t231 t237) m238
theorem eq238 : t238.clauses = ScoreNodes.c238 :=
  cat_eq _ (cat_eq _ eq231 eq237) merge238

def t239 : Tree := .nil
theorem eq239 : t239.clauses = ScoreNodes.c239 := by rfl

def m240 : Tree := (.node 1 (.leaf [(309,true),(1560,true)]) (.node 1 (.leaf [(309,true),(1560,true)]) (.leaf [(309,true),(309,true),(1561,true)])))
theorem merge240 : m240.clauses = ScoreNodes.m240 := by rfl

def t240 : Tree := .node 0 (.node 0 t239 t239) m240
theorem eq240 : t240.clauses = ScoreNodes.c240 :=
  cat_eq _ (cat_eq _ eq239 eq239) merge240

def t241 : Tree := .nil
theorem eq241 : t241.clauses = ScoreNodes.c241 := by rfl

def m242 : Tree := (.node 1 (.leaf [(315,true),(1562,true)]) (.node 1 (.leaf [(309,true),(1562,true)]) (.leaf [(309,true),(315,true),(1563,true)])))
theorem merge242 : m242.clauses = ScoreNodes.m242 := by rfl

def t242 : Tree := .node 0 (.node 0 t239 t241) m242
theorem eq242 : t242.clauses = ScoreNodes.c242 :=
  cat_eq _ (cat_eq _ eq239 eq241) merge242

def m243 : Tree := (.node 2 (.node 1 (.leaf [(1562,false),(1564,true)]) (.leaf [(1563,false),(1565,true)])) (.node 1 (.leaf [(309,true),(1564,true)]) (.node 1 (.leaf [(309,true),(1562,false),(1565,true)]) (.leaf [(309,true),(1563,false),(1566,true)]))))
theorem merge243 : m243.clauses = ScoreNodes.m243 := by rfl

def t243 : Tree := .node 3 (.node 0 t239 t242) m243
theorem eq243 : t243.clauses = ScoreNodes.c243 :=
  cat_eq _ (cat_eq _ eq239 eq242) merge243

def m244 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(1564,false),(1567,true)]) (.leaf [(1565,false),(1568,true)])) (.node 1 (.leaf [(1566,false),(1569,true)]) (.node 1 (.leaf [(1560,false),(1567,true)]) (.leaf [(1560,false),(1564,false),(1568,true)])))) (.node 3 (.node 1 (.leaf [(1560,false),(1565,false),(1569,true)]) (.node 1 (.leaf [(1560,false),(1566,false),(1570,true)]) (.leaf [(1561,false),(1568,true)]))) (.node 1 (.leaf [(1561,false),(1564,false),(1569,true)]) (.node 1 (.leaf [(1561,false),(1565,false),(1570,true)]) (.leaf [(1561,false),(1566,false),(1571,true)])))))
theorem merge244 : m244.clauses = ScoreNodes.m244 := by rfl

def t244 : Tree := .node 11 (.node 3 t240 t243) m244
theorem eq244 : t244.clauses = ScoreNodes.c244 :=
  cat_eq _ (cat_eq _ eq240 eq243) merge244

def t245 : Tree := .nil
theorem eq245 : t245.clauses = ScoreNodes.c245 := by rfl

def t246 : Tree := .nil
theorem eq246 : t246.clauses = ScoreNodes.c246 := by rfl

def m247 : Tree := (.node 1 (.leaf [(325,true),(1572,true)]) (.node 1 (.leaf [(321,true),(1572,true)]) (.leaf [(321,true),(325,true),(1573,true)])))
theorem merge247 : m247.clauses = ScoreNodes.m247 := by rfl

def t247 : Tree := .node 0 (.node 0 t245 t246) m247
theorem eq247 : t247.clauses = ScoreNodes.c247 :=
  cat_eq _ (cat_eq _ eq245 eq246) merge247

def t248 : Tree := .nil
theorem eq248 : t248.clauses = ScoreNodes.c248 := by rfl

def t249 : Tree := .nil
theorem eq249 : t249.clauses = ScoreNodes.c249 := by rfl

def t250 : Tree := .nil
theorem eq250 : t250.clauses = ScoreNodes.c250 := by rfl

def m251 : Tree := (.node 1 (.leaf [(333,true),(1574,true)]) (.node 1 (.leaf [(331,true),(1574,true)]) (.leaf [(331,true),(333,true),(1575,true)])))
theorem merge251 : m251.clauses = ScoreNodes.m251 := by rfl

def t251 : Tree := .node 0 (.node 0 t249 t250) m251
theorem eq251 : t251.clauses = ScoreNodes.c251 :=
  cat_eq _ (cat_eq _ eq249 eq250) merge251

def m252 : Tree := (.node 2 (.node 1 (.leaf [(1574,false),(1576,true)]) (.leaf [(1575,false),(1577,true)])) (.node 1 (.leaf [(329,true),(1576,true)]) (.node 1 (.leaf [(329,true),(1574,false),(1577,true)]) (.leaf [(329,true),(1575,false),(1578,true)]))))
theorem merge252 : m252.clauses = ScoreNodes.m252 := by rfl

def t252 : Tree := .node 3 (.node 0 t248 t251) m252
theorem eq252 : t252.clauses = ScoreNodes.c252 :=
  cat_eq _ (cat_eq _ eq248 eq251) merge252

def m253 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(1576,false),(1579,true)]) (.leaf [(1577,false),(1580,true)])) (.node 1 (.leaf [(1578,false),(1581,true)]) (.node 1 (.leaf [(1572,false),(1579,true)]) (.leaf [(1572,false),(1576,false),(1580,true)])))) (.node 3 (.node 1 (.leaf [(1572,false),(1577,false),(1581,true)]) (.node 1 (.leaf [(1572,false),(1578,false),(1582,true)]) (.leaf [(1573,false),(1580,true)]))) (.node 1 (.leaf [(1573,false),(1576,false),(1581,true)]) (.node 1 (.leaf [(1573,false),(1577,false),(1582,true)]) (.leaf [(1573,false),(1578,false),(1583,true)])))))
theorem merge253 : m253.clauses = ScoreNodes.m253 := by rfl

def t253 : Tree := .node 11 (.node 3 t247 t252) m253
theorem eq253 : t253.clauses = ScoreNodes.c253 :=
  cat_eq _ (cat_eq _ eq247 eq252) merge253

def m254 : Tree := (.node 17 (.node 8 (.node 4 (.node 2 (.node 1 (.leaf [(1579,false),(1584,true)]) (.leaf [(1580,false),(1585,true)])) (.node 1 (.leaf [(1581,false),(1586,true)]) (.leaf [(1582,false),(1587,true)]))) (.node 2 (.node 1 (.leaf [(1583,false),(1588,true)]) (.leaf [(1567,false),(1584,true)])) (.node 1 (.leaf [(1567,false),(1579,false),(1585,true)]) (.leaf [(1567,false),(1580,false),(1586,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1567,false),(1581,false),(1587,true)]) (.leaf [(1567,false),(1582,false),(1588,true)])) (.node 1 (.leaf [(1567,false),(1583,false),(1589,true)]) (.leaf [(1568,false),(1585,true)]))) (.node 2 (.node 1 (.leaf [(1568,false),(1579,false),(1586,true)]) (.leaf [(1568,false),(1580,false),(1587,true)])) (.node 1 (.leaf [(1568,false),(1581,false),(1588,true)]) (.node 1 (.leaf [(1568,false),(1582,false),(1589,true)]) (.leaf [(1568,false),(1583,false),(1590,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1569,false),(1586,true)]) (.leaf [(1569,false),(1579,false),(1587,true)])) (.node 1 (.leaf [(1569,false),(1580,false),(1588,true)]) (.leaf [(1569,false),(1581,false),(1589,true)]))) (.node 2 (.node 1 (.leaf [(1569,false),(1582,false),(1590,true)]) (.leaf [(1569,false),(1583,false),(1591,true)])) (.node 1 (.leaf [(1570,false),(1587,true)]) (.node 1 (.leaf [(1570,false),(1579,false),(1588,true)]) (.leaf [(1570,false),(1580,false),(1589,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(1570,false),(1581,false),(1590,true)]) (.leaf [(1570,false),(1582,false),(1591,true)])) (.node 1 (.leaf [(1570,false),(1583,false),(1592,true)]) (.leaf [(1571,false),(1588,true)]))) (.node 2 (.node 1 (.leaf [(1571,false),(1579,false),(1589,true)]) (.leaf [(1571,false),(1580,false),(1590,true)])) (.node 1 (.leaf [(1571,false),(1581,false),(1591,true)]) (.node 1 (.leaf [(1571,false),(1582,false),(1592,true)]) (.leaf [(1571,false),(1583,false),(1593,true)])))))))
theorem merge254 : m254.clauses = ScoreNodes.m254 := by rfl

def t254 : Tree := .node 44 (.node 22 t244 t253) m254
theorem eq254 : t254.clauses = ScoreNodes.c254 :=
  cat_eq _ (cat_eq _ eq244 eq253) merge254


end EncloseHorse.Certificate.Generated.Daily20260107.Lookup
