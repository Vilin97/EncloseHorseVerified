import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode000

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t14 : CounterTree := .leaf (51,false)
def c14 : CNF := []
theorem eq14 : t14.clauses = c14 := rfl
def t15 : CounterTree := .node [1546,1547] t14 t14
def m15 : CNF := [[(51,true),(1546,true)],[(51,true),(1546,true)],[(51,true),(51,true),(1547,true)]]
theorem merge15 : mergeClauses t14.outputLits t14.outputLits [1546,1547] = m15 := by
  rfl

def c15 : CNF := c14 ++ c14 ++ m15
theorem eq15 : t15.clauses = c15 := by
  change t14.clauses ++ t14.clauses ++ mergeClauses t14.outputLits t14.outputLits [1546,1547] = c15
  exact concat3_congr eq14 eq14 merge15
def t16 : CounterTree := .node [1548,1549,1550,1551] t13 t15
def m16 : CNF := [[(1546,false),(1548,true)],[(1547,false),(1549,true)],[(1544,false),(1548,true)],[(1544,false),(1546,false),(1549,true)],[(1544,false),(1547,false),(1550,true)],[(1545,false),(1549,true)],[(1545,false),(1546,false),(1550,true)],[(1545,false),(1547,false),(1551,true)]]
theorem merge16 : mergeClauses t13.outputLits t15.outputLits [1548,1549,1550,1551] = m16 := by
  rfl

def c16 : CNF := c13 ++ c15 ++ m16
theorem eq16 : t16.clauses = c16 := by
  change t13.clauses ++ t15.clauses ++ mergeClauses t13.outputLits t15.outputLits [1548,1549,1550,1551] = c16
  exact concat3_congr eq13 eq15 merge16
def t17 : CounterTree := .node [1552,1553,1554,1555,1556,1557,1558,1559] t11 t16
def m17 : CNF := [[(1548,false),(1552,true)],[(1549,false),(1553,true)],[(1550,false),(1554,true)],[(1551,false),(1555,true)],[(1540,false),(1552,true)],[(1540,false),(1548,false),(1553,true)],[(1540,false),(1549,false),(1554,true)],[(1540,false),(1550,false),(1555,true)],[(1540,false),(1551,false),(1556,true)],[(1541,false),(1553,true)],[(1541,false),(1548,false),(1554,true)],[(1541,false),(1549,false),(1555,true)],[(1541,false),(1550,false),(1556,true)],[(1541,false),(1551,false),(1557,true)],[(1542,false),(1554,true)],[(1542,false),(1548,false),(1555,true)],[(1542,false),(1549,false),(1556,true)],[(1542,false),(1550,false),(1557,true)],[(1542,false),(1551,false),(1558,true)],[(1543,false),(1555,true)],[(1543,false),(1548,false),(1556,true)],[(1543,false),(1549,false),(1557,true)],[(1543,false),(1550,false),(1558,true)],[(1543,false),(1551,false),(1559,true)]]
theorem merge17 : mergeClauses t11.outputLits t16.outputLits [1552,1553,1554,1555,1556,1557,1558,1559] = m17 := by
  rfl

def c17 : CNF := c11 ++ c16 ++ m17
theorem eq17 : t17.clauses = c17 := by
  change t11.clauses ++ t16.clauses ++ mergeClauses t11.outputLits t16.outputLits [1552,1553,1554,1555,1556,1557,1558,1559] = c17
  exact concat3_congr eq11 eq16 merge17
def t18 : CounterTree := .node [1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574] t7 t17
def m18 : CNF := [[(1552,false),(1560,true)],[(1553,false),(1561,true)],[(1554,false),(1562,true)],[(1555,false),(1563,true)],[(1556,false),(1564,true)],[(1557,false),(1565,true)],[(1558,false),(1566,true)],[(1559,false),(1567,true)],[(1529,false),(1560,true)],[(1529,false),(1552,false),(1561,true)],[(1529,false),(1553,false),(1562,true)],[(1529,false),(1554,false),(1563,true)],[(1529,false),(1555,false),(1564,true)],[(1529,false),(1556,false),(1565,true)],[(1529,false),(1557,false),(1566,true)],[(1529,false),(1558,false),(1567,true)],[(1529,false),(1559,false),(1568,true)],[(1530,false),(1561,true)],[(1530,false),(1552,false),(1562,true)],[(1530,false),(1553,false),(1563,true)],[(1530,false),(1554,false),(1564,true)],[(1530,false),(1555,false),(1565,true)],[(1530,false),(1556,false),(1566,true)],[(1530,false),(1557,false),(1567,true)],[(1530,false),(1558,false),(1568,true)],[(1530,false),(1559,false),(1569,true)],[(1531,false),(1562,true)],[(1531,false),(1552,false),(1563,true)],[(1531,false),(1553,false),(1564,true)],[(1531,false),(1554,false),(1565,true)],[(1531,false),(1555,false),(1566,true)],[(1531,false),(1556,false),(1567,true)],[(1531,false),(1557,false),(1568,true)],[(1531,false),(1558,false),(1569,true)],[(1531,false),(1559,false),(1570,true)],[(1532,false),(1563,true)],[(1532,false),(1552,false),(1564,true)],[(1532,false),(1553,false),(1565,true)],[(1532,false),(1554,false),(1566,true)],[(1532,false),(1555,false),(1567,true)],[(1532,false),(1556,false),(1568,true)],[(1532,false),(1557,false),(1569,true)],[(1532,false),(1558,false),(1570,true)],[(1532,false),(1559,false),(1571,true)],[(1533,false),(1564,true)],[(1533,false),(1552,false),(1565,true)],[(1533,false),(1553,false),(1566,true)],[(1533,false),(1554,false),(1567,true)],[(1533,false),(1555,false),(1568,true)],[(1533,false),(1556,false),(1569,true)],[(1533,false),(1557,false),(1570,true)],[(1533,false),(1558,false),(1571,true)],[(1533,false),(1559,false),(1572,true)],[(1534,false),(1565,true)],[(1534,false),(1552,false),(1566,true)],[(1534,false),(1553,false),(1567,true)],[(1534,false),(1554,false),(1568,true)],[(1534,false),(1555,false),(1569,true)],[(1534,false),(1556,false),(1570,true)],[(1534,false),(1557,false),(1571,true)],[(1534,false),(1558,false),(1572,true)],[(1534,false),(1559,false),(1573,true)],[(1535,false),(1566,true)],[(1535,false),(1552,false),(1567,true)],[(1535,false),(1553,false),(1568,true)],[(1535,false),(1554,false),(1569,true)],[(1535,false),(1555,false),(1570,true)],[(1535,false),(1556,false),(1571,true)],[(1535,false),(1557,false),(1572,true)],[(1535,false),(1558,false),(1573,true)],[(1535,false),(1559,false),(1574,true)]]
theorem merge18 : mergeClauses t7.outputLits t17.outputLits [1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574] = m18 := by
  rfl

def c18 : CNF := c7 ++ c17 ++ m18
theorem eq18 : t18.clauses = c18 := by
  change t7.clauses ++ t17.clauses ++ mergeClauses t7.outputLits t17.outputLits [1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574] = c18
  exact concat3_congr eq7 eq17 merge18
def t19 : CounterTree := .node [1575,1576] t14 t14
def m19 : CNF := [[(51,true),(1575,true)],[(51,true),(1575,true)],[(51,true),(51,true),(1576,true)]]
theorem merge19 : mergeClauses t14.outputLits t14.outputLits [1575,1576] = m19 := by
  rfl

def c19 : CNF := c14 ++ c14 ++ m19
theorem eq19 : t19.clauses = c19 := by
  change t14.clauses ++ t14.clauses ++ mergeClauses t14.outputLits t14.outputLits [1575,1576] = c19
  exact concat3_congr eq14 eq14 merge19
def t20 : CounterTree := .leaf (53,false)
def c20 : CNF := []
theorem eq20 : t20.clauses = c20 := rfl
def t21 : CounterTree := .node [1577,1578] t20 t20
def m21 : CNF := [[(53,true),(1577,true)],[(53,true),(1577,true)],[(53,true),(53,true),(1578,true)]]
theorem merge21 : mergeClauses t20.outputLits t20.outputLits [1577,1578] = m21 := by
  rfl

def c21 : CNF := c20 ++ c20 ++ m21
theorem eq21 : t21.clauses = c21 := by
  change t20.clauses ++ t20.clauses ++ mergeClauses t20.outputLits t20.outputLits [1577,1578] = c21
  exact concat3_congr eq20 eq20 merge21
def t22 : CounterTree := .node [1579,1580,1581,1582] t19 t21
def m22 : CNF := [[(1577,false),(1579,true)],[(1578,false),(1580,true)],[(1575,false),(1579,true)],[(1575,false),(1577,false),(1580,true)],[(1575,false),(1578,false),(1581,true)],[(1576,false),(1580,true)],[(1576,false),(1577,false),(1581,true)],[(1576,false),(1578,false),(1582,true)]]
theorem merge22 : mergeClauses t19.outputLits t21.outputLits [1579,1580,1581,1582] = m22 := by
  rfl

def c22 : CNF := c19 ++ c21 ++ m22
theorem eq22 : t22.clauses = c22 := by
  change t19.clauses ++ t21.clauses ++ mergeClauses t19.outputLits t21.outputLits [1579,1580,1581,1582] = c22
  exact concat3_congr eq19 eq21 merge22
def t23 : CounterTree := .node [1583,1584] t20 t20
def m23 : CNF := [[(53,true),(1583,true)],[(53,true),(1583,true)],[(53,true),(53,true),(1584,true)]]
theorem merge23 : mergeClauses t20.outputLits t20.outputLits [1583,1584] = m23 := by
  rfl

def c23 : CNF := c20 ++ c20 ++ m23
theorem eq23 : t23.clauses = c23 := by
  change t20.clauses ++ t20.clauses ++ mergeClauses t20.outputLits t20.outputLits [1583,1584] = c23
  exact concat3_congr eq20 eq20 merge23
def t24 : CounterTree := .leaf (57,false)
def c24 : CNF := []
theorem eq24 : t24.clauses = c24 := rfl
def t25 : CounterTree := .node [1585,1586] t24 t24
def m25 : CNF := [[(57,true),(1585,true)],[(57,true),(1585,true)],[(57,true),(57,true),(1586,true)]]
theorem merge25 : mergeClauses t24.outputLits t24.outputLits [1585,1586] = m25 := by
  rfl

def c25 : CNF := c24 ++ c24 ++ m25
theorem eq25 : t25.clauses = c25 := by
  change t24.clauses ++ t24.clauses ++ mergeClauses t24.outputLits t24.outputLits [1585,1586] = c25
  exact concat3_congr eq24 eq24 merge25
def t26 : CounterTree := .node [1587,1588,1589,1590] t23 t25
def m26 : CNF := [[(1585,false),(1587,true)],[(1586,false),(1588,true)],[(1583,false),(1587,true)],[(1583,false),(1585,false),(1588,true)],[(1583,false),(1586,false),(1589,true)],[(1584,false),(1588,true)],[(1584,false),(1585,false),(1589,true)],[(1584,false),(1586,false),(1590,true)]]
theorem merge26 : mergeClauses t23.outputLits t25.outputLits [1587,1588,1589,1590] = m26 := by
  rfl

def c26 : CNF := c23 ++ c25 ++ m26
theorem eq26 : t26.clauses = c26 := by
  change t23.clauses ++ t25.clauses ++ mergeClauses t23.outputLits t25.outputLits [1587,1588,1589,1590] = c26
  exact concat3_congr eq23 eq25 merge26

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
