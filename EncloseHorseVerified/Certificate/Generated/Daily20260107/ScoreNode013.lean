import EncloseHorseVerified.Certificate.Generated.Daily20260107.ScoreNode012

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes

def t238 : CounterTree := .node [1551,1552,1553,1554,1555,1556,1557,1558,1559] t231 t237
def m238 : CNF := [[(1546,false),(1551,true)],[(1547,false),(1552,true)],[(1548,false),(1553,true)],[(1549,false),(1554,true)],[(1550,false),(1555,true)],[(1535,false),(1551,true)],[(1535,false),(1546,false),(1552,true)],[(1535,false),(1547,false),(1553,true)],[(1535,false),(1548,false),(1554,true)],[(1535,false),(1549,false),(1555,true)],[(1535,false),(1550,false),(1556,true)],[(1536,false),(1552,true)],[(1536,false),(1546,false),(1553,true)],[(1536,false),(1547,false),(1554,true)],[(1536,false),(1548,false),(1555,true)],[(1536,false),(1549,false),(1556,true)],[(1536,false),(1550,false),(1557,true)],[(1537,false),(1553,true)],[(1537,false),(1546,false),(1554,true)],[(1537,false),(1547,false),(1555,true)],[(1537,false),(1548,false),(1556,true)],[(1537,false),(1549,false),(1557,true)],[(1537,false),(1550,false),(1558,true)],[(1538,false),(1554,true)],[(1538,false),(1546,false),(1555,true)],[(1538,false),(1547,false),(1556,true)],[(1538,false),(1548,false),(1557,true)],[(1538,false),(1549,false),(1558,true)],[(1538,false),(1550,false),(1559,true)]]
theorem merge238 : mergeClauses t231.outputLits t237.outputLits [1551,1552,1553,1554,1555,1556,1557,1558,1559] = m238 := by rfl

def c238 : CNF := c231 ++ c237 ++ m238
theorem eq238 : t238.clauses = c238 := by
  change t231.clauses ++ t237.clauses ++ mergeClauses t231.outputLits t237.outputLits [1551,1552,1553,1554,1555,1556,1557,1558,1559] = c238
  exact concat3_congr eq231 eq237 merge238

def t239 : CounterTree := .leaf (309,false)
def c239 : CNF := []
theorem eq239 : t239.clauses = c239 := rfl

def t240 : CounterTree := .node [1560,1561] t239 t239
def m240 : CNF := [[(309,true),(1560,true)],[(309,true),(1560,true)],[(309,true),(309,true),(1561,true)]]
theorem merge240 : mergeClauses t239.outputLits t239.outputLits [1560,1561] = m240 := by rfl

def c240 : CNF := c239 ++ c239 ++ m240
theorem eq240 : t240.clauses = c240 := by
  change t239.clauses ++ t239.clauses ++ mergeClauses t239.outputLits t239.outputLits [1560,1561] = c240
  exact concat3_congr eq239 eq239 merge240

def t241 : CounterTree := .leaf (315,false)
def c241 : CNF := []
theorem eq241 : t241.clauses = c241 := rfl

def t242 : CounterTree := .node [1562,1563] t239 t241
def m242 : CNF := [[(315,true),(1562,true)],[(309,true),(1562,true)],[(309,true),(315,true),(1563,true)]]
theorem merge242 : mergeClauses t239.outputLits t241.outputLits [1562,1563] = m242 := by rfl

def c242 : CNF := c239 ++ c241 ++ m242
theorem eq242 : t242.clauses = c242 := by
  change t239.clauses ++ t241.clauses ++ mergeClauses t239.outputLits t241.outputLits [1562,1563] = c242
  exact concat3_congr eq239 eq241 merge242

def t243 : CounterTree := .node [1564,1565,1566] t239 t242
def m243 : CNF := [[(1562,false),(1564,true)],[(1563,false),(1565,true)],[(309,true),(1564,true)],[(309,true),(1562,false),(1565,true)],[(309,true),(1563,false),(1566,true)]]
theorem merge243 : mergeClauses t239.outputLits t242.outputLits [1564,1565,1566] = m243 := by rfl

def c243 : CNF := c239 ++ c242 ++ m243
theorem eq243 : t243.clauses = c243 := by
  change t239.clauses ++ t242.clauses ++ mergeClauses t239.outputLits t242.outputLits [1564,1565,1566] = c243
  exact concat3_congr eq239 eq242 merge243

def t244 : CounterTree := .node [1567,1568,1569,1570,1571] t240 t243
def m244 : CNF := [[(1564,false),(1567,true)],[(1565,false),(1568,true)],[(1566,false),(1569,true)],[(1560,false),(1567,true)],[(1560,false),(1564,false),(1568,true)],[(1560,false),(1565,false),(1569,true)],[(1560,false),(1566,false),(1570,true)],[(1561,false),(1568,true)],[(1561,false),(1564,false),(1569,true)],[(1561,false),(1565,false),(1570,true)],[(1561,false),(1566,false),(1571,true)]]
theorem merge244 : mergeClauses t240.outputLits t243.outputLits [1567,1568,1569,1570,1571] = m244 := by rfl

def c244 : CNF := c240 ++ c243 ++ m244
theorem eq244 : t244.clauses = c244 := by
  change t240.clauses ++ t243.clauses ++ mergeClauses t240.outputLits t243.outputLits [1567,1568,1569,1570,1571] = c244
  exact concat3_congr eq240 eq243 merge244

def t245 : CounterTree := .leaf (321,false)
def c245 : CNF := []
theorem eq245 : t245.clauses = c245 := rfl

def t246 : CounterTree := .leaf (325,false)
def c246 : CNF := []
theorem eq246 : t246.clauses = c246 := rfl

def t247 : CounterTree := .node [1572,1573] t245 t246
def m247 : CNF := [[(325,true),(1572,true)],[(321,true),(1572,true)],[(321,true),(325,true),(1573,true)]]
theorem merge247 : mergeClauses t245.outputLits t246.outputLits [1572,1573] = m247 := by rfl

def c247 : CNF := c245 ++ c246 ++ m247
theorem eq247 : t247.clauses = c247 := by
  change t245.clauses ++ t246.clauses ++ mergeClauses t245.outputLits t246.outputLits [1572,1573] = c247
  exact concat3_congr eq245 eq246 merge247

def t248 : CounterTree := .leaf (329,false)
def c248 : CNF := []
theorem eq248 : t248.clauses = c248 := rfl

def t249 : CounterTree := .leaf (331,false)
def c249 : CNF := []
theorem eq249 : t249.clauses = c249 := rfl

def t250 : CounterTree := .leaf (333,false)
def c250 : CNF := []
theorem eq250 : t250.clauses = c250 := rfl

def t251 : CounterTree := .node [1574,1575] t249 t250
def m251 : CNF := [[(333,true),(1574,true)],[(331,true),(1574,true)],[(331,true),(333,true),(1575,true)]]
theorem merge251 : mergeClauses t249.outputLits t250.outputLits [1574,1575] = m251 := by rfl

def c251 : CNF := c249 ++ c250 ++ m251
theorem eq251 : t251.clauses = c251 := by
  change t249.clauses ++ t250.clauses ++ mergeClauses t249.outputLits t250.outputLits [1574,1575] = c251
  exact concat3_congr eq249 eq250 merge251

def t252 : CounterTree := .node [1576,1577,1578] t248 t251
def m252 : CNF := [[(1574,false),(1576,true)],[(1575,false),(1577,true)],[(329,true),(1576,true)],[(329,true),(1574,false),(1577,true)],[(329,true),(1575,false),(1578,true)]]
theorem merge252 : mergeClauses t248.outputLits t251.outputLits [1576,1577,1578] = m252 := by rfl

def c252 : CNF := c248 ++ c251 ++ m252
theorem eq252 : t252.clauses = c252 := by
  change t248.clauses ++ t251.clauses ++ mergeClauses t248.outputLits t251.outputLits [1576,1577,1578] = c252
  exact concat3_congr eq248 eq251 merge252

def t253 : CounterTree := .node [1579,1580,1581,1582,1583] t247 t252
def m253 : CNF := [[(1576,false),(1579,true)],[(1577,false),(1580,true)],[(1578,false),(1581,true)],[(1572,false),(1579,true)],[(1572,false),(1576,false),(1580,true)],[(1572,false),(1577,false),(1581,true)],[(1572,false),(1578,false),(1582,true)],[(1573,false),(1580,true)],[(1573,false),(1576,false),(1581,true)],[(1573,false),(1577,false),(1582,true)],[(1573,false),(1578,false),(1583,true)]]
theorem merge253 : mergeClauses t247.outputLits t252.outputLits [1579,1580,1581,1582,1583] = m253 := by rfl

def c253 : CNF := c247 ++ c252 ++ m253
theorem eq253 : t253.clauses = c253 := by
  change t247.clauses ++ t252.clauses ++ mergeClauses t247.outputLits t252.outputLits [1579,1580,1581,1582,1583] = c253
  exact concat3_congr eq247 eq252 merge253

def t254 : CounterTree := .node [1584,1585,1586,1587,1588,1589,1590,1591,1592,1593] t244 t253
def m254 : CNF := [[(1579,false),(1584,true)],[(1580,false),(1585,true)],[(1581,false),(1586,true)],[(1582,false),(1587,true)],[(1583,false),(1588,true)],[(1567,false),(1584,true)],[(1567,false),(1579,false),(1585,true)],[(1567,false),(1580,false),(1586,true)],[(1567,false),(1581,false),(1587,true)],[(1567,false),(1582,false),(1588,true)],[(1567,false),(1583,false),(1589,true)],[(1568,false),(1585,true)],[(1568,false),(1579,false),(1586,true)],[(1568,false),(1580,false),(1587,true)],[(1568,false),(1581,false),(1588,true)],[(1568,false),(1582,false),(1589,true)],[(1568,false),(1583,false),(1590,true)],[(1569,false),(1586,true)],[(1569,false),(1579,false),(1587,true)],[(1569,false),(1580,false),(1588,true)],[(1569,false),(1581,false),(1589,true)],[(1569,false),(1582,false),(1590,true)],[(1569,false),(1583,false),(1591,true)],[(1570,false),(1587,true)],[(1570,false),(1579,false),(1588,true)],[(1570,false),(1580,false),(1589,true)],[(1570,false),(1581,false),(1590,true)],[(1570,false),(1582,false),(1591,true)],[(1570,false),(1583,false),(1592,true)],[(1571,false),(1588,true)],[(1571,false),(1579,false),(1589,true)],[(1571,false),(1580,false),(1590,true)],[(1571,false),(1581,false),(1591,true)],[(1571,false),(1582,false),(1592,true)],[(1571,false),(1583,false),(1593,true)]]
theorem merge254 : mergeClauses t244.outputLits t253.outputLits [1584,1585,1586,1587,1588,1589,1590,1591,1592,1593] = m254 := by rfl

def c254 : CNF := c244 ++ c253 ++ m254
theorem eq254 : t254.clauses = c254 := by
  change t244.clauses ++ t253.clauses ++ mergeClauses t244.outputLits t253.outputLits [1584,1585,1586,1587,1588,1589,1590,1591,1592,1593] = c254
  exact concat3_congr eq244 eq253 merge254


end EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes
