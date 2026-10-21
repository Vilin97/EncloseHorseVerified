import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupNode000

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def t14 : Tree := .nil
theorem eq14 : t14.clauses = ScoreNodes.c14 := by rfl

def m15 : Tree := (.node 1 (.leaf [(51,true),(1546,true)]) (.node 1 (.leaf [(51,true),(1546,true)]) (.leaf [(51,true),(51,true),(1547,true)])))
theorem merge15 : m15.clauses = ScoreNodes.m15 := by rfl

def t15 : Tree := .node 0 (.node 0 t14 t14) m15
theorem eq15 : t15.clauses = ScoreNodes.c15 :=
  cat_eq _ (cat_eq _ eq14 eq14) merge15

def m16 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1546,false),(1548,true)]) (.leaf [(1547,false),(1549,true)])) (.node 1 (.leaf [(1544,false),(1548,true)]) (.leaf [(1544,false),(1546,false),(1549,true)]))) (.node 2 (.node 1 (.leaf [(1544,false),(1547,false),(1550,true)]) (.leaf [(1545,false),(1549,true)])) (.node 1 (.leaf [(1545,false),(1546,false),(1550,true)]) (.leaf [(1545,false),(1547,false),(1551,true)]))))
theorem merge16 : m16.clauses = ScoreNodes.m16 := by rfl

def t16 : Tree := .node 6 (.node 3 t13 t15) m16
theorem eq16 : t16.clauses = ScoreNodes.c16 :=
  cat_eq _ (cat_eq _ eq13 eq15) merge16

def m17 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1548,false),(1552,true)]) (.node 1 (.leaf [(1549,false),(1553,true)]) (.leaf [(1550,false),(1554,true)]))) (.node 1 (.leaf [(1551,false),(1555,true)]) (.node 1 (.leaf [(1540,false),(1552,true)]) (.leaf [(1540,false),(1548,false),(1553,true)])))) (.node 3 (.node 1 (.leaf [(1540,false),(1549,false),(1554,true)]) (.node 1 (.leaf [(1540,false),(1550,false),(1555,true)]) (.leaf [(1540,false),(1551,false),(1556,true)]))) (.node 1 (.leaf [(1541,false),(1553,true)]) (.node 1 (.leaf [(1541,false),(1548,false),(1554,true)]) (.leaf [(1541,false),(1549,false),(1555,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1541,false),(1550,false),(1556,true)]) (.node 1 (.leaf [(1541,false),(1551,false),(1557,true)]) (.leaf [(1542,false),(1554,true)]))) (.node 1 (.leaf [(1542,false),(1548,false),(1555,true)]) (.node 1 (.leaf [(1542,false),(1549,false),(1556,true)]) (.leaf [(1542,false),(1550,false),(1557,true)])))) (.node 3 (.node 1 (.leaf [(1542,false),(1551,false),(1558,true)]) (.node 1 (.leaf [(1543,false),(1555,true)]) (.leaf [(1543,false),(1548,false),(1556,true)]))) (.node 1 (.leaf [(1543,false),(1549,false),(1557,true)]) (.node 1 (.leaf [(1543,false),(1550,false),(1558,true)]) (.leaf [(1543,false),(1551,false),(1559,true)]))))))
theorem merge17 : m17.clauses = ScoreNodes.m17 := by rfl

def t17 : Tree := .node 28 (.node 14 t11 t16) m17
theorem eq17 : t17.clauses = ScoreNodes.c17 :=
  cat_eq _ (cat_eq _ eq11 eq16) merge17

def m18 : Tree := (.node 35 (.node 17 (.node 8 (.node 4 (.node 2 (.node 1 (.leaf [(1552,false),(1560,true)]) (.leaf [(1553,false),(1561,true)])) (.node 1 (.leaf [(1554,false),(1562,true)]) (.leaf [(1555,false),(1563,true)]))) (.node 2 (.node 1 (.leaf [(1556,false),(1564,true)]) (.leaf [(1557,false),(1565,true)])) (.node 1 (.leaf [(1558,false),(1566,true)]) (.leaf [(1559,false),(1567,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1529,false),(1560,true)]) (.leaf [(1529,false),(1552,false),(1561,true)])) (.node 1 (.leaf [(1529,false),(1553,false),(1562,true)]) (.leaf [(1529,false),(1554,false),(1563,true)]))) (.node 2 (.node 1 (.leaf [(1529,false),(1555,false),(1564,true)]) (.leaf [(1529,false),(1556,false),(1565,true)])) (.node 1 (.leaf [(1529,false),(1557,false),(1566,true)]) (.node 1 (.leaf [(1529,false),(1558,false),(1567,true)]) (.leaf [(1529,false),(1559,false),(1568,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1530,false),(1561,true)]) (.leaf [(1530,false),(1552,false),(1562,true)])) (.node 1 (.leaf [(1530,false),(1553,false),(1563,true)]) (.leaf [(1530,false),(1554,false),(1564,true)]))) (.node 2 (.node 1 (.leaf [(1530,false),(1555,false),(1565,true)]) (.leaf [(1530,false),(1556,false),(1566,true)])) (.node 1 (.leaf [(1530,false),(1557,false),(1567,true)]) (.node 1 (.leaf [(1530,false),(1558,false),(1568,true)]) (.leaf [(1530,false),(1559,false),(1569,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(1531,false),(1562,true)]) (.leaf [(1531,false),(1552,false),(1563,true)])) (.node 1 (.leaf [(1531,false),(1553,false),(1564,true)]) (.leaf [(1531,false),(1554,false),(1565,true)]))) (.node 2 (.node 1 (.leaf [(1531,false),(1555,false),(1566,true)]) (.leaf [(1531,false),(1556,false),(1567,true)])) (.node 1 (.leaf [(1531,false),(1557,false),(1568,true)]) (.node 1 (.leaf [(1531,false),(1558,false),(1569,true)]) (.leaf [(1531,false),(1559,false),(1570,true)]))))))) (.node 18 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1532,false),(1563,true)]) (.leaf [(1532,false),(1552,false),(1564,true)])) (.node 1 (.leaf [(1532,false),(1553,false),(1565,true)]) (.leaf [(1532,false),(1554,false),(1566,true)]))) (.node 2 (.node 1 (.leaf [(1532,false),(1555,false),(1567,true)]) (.leaf [(1532,false),(1556,false),(1568,true)])) (.node 1 (.leaf [(1532,false),(1557,false),(1569,true)]) (.node 1 (.leaf [(1532,false),(1558,false),(1570,true)]) (.leaf [(1532,false),(1559,false),(1571,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(1533,false),(1564,true)]) (.leaf [(1533,false),(1552,false),(1565,true)])) (.node 1 (.leaf [(1533,false),(1553,false),(1566,true)]) (.leaf [(1533,false),(1554,false),(1567,true)]))) (.node 2 (.node 1 (.leaf [(1533,false),(1555,false),(1568,true)]) (.leaf [(1533,false),(1556,false),(1569,true)])) (.node 1 (.leaf [(1533,false),(1557,false),(1570,true)]) (.node 1 (.leaf [(1533,false),(1558,false),(1571,true)]) (.leaf [(1533,false),(1559,false),(1572,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1534,false),(1565,true)]) (.leaf [(1534,false),(1552,false),(1566,true)])) (.node 1 (.leaf [(1534,false),(1553,false),(1567,true)]) (.leaf [(1534,false),(1554,false),(1568,true)]))) (.node 2 (.node 1 (.leaf [(1534,false),(1555,false),(1569,true)]) (.leaf [(1534,false),(1556,false),(1570,true)])) (.node 1 (.leaf [(1534,false),(1557,false),(1571,true)]) (.node 1 (.leaf [(1534,false),(1558,false),(1572,true)]) (.leaf [(1534,false),(1559,false),(1573,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(1535,false),(1566,true)]) (.leaf [(1535,false),(1552,false),(1567,true)])) (.node 1 (.leaf [(1535,false),(1553,false),(1568,true)]) (.leaf [(1535,false),(1554,false),(1569,true)]))) (.node 2 (.node 1 (.leaf [(1535,false),(1555,false),(1570,true)]) (.leaf [(1535,false),(1556,false),(1571,true)])) (.node 1 (.leaf [(1535,false),(1557,false),(1572,true)]) (.node 1 (.leaf [(1535,false),(1558,false),(1573,true)]) (.leaf [(1535,false),(1559,false),(1574,true)]))))))))
theorem merge18 : m18.clauses = ScoreNodes.m18 := by rfl

def t18 : Tree := .node 93 (.node 41 t7 t17) m18
theorem eq18 : t18.clauses = ScoreNodes.c18 :=
  cat_eq _ (cat_eq _ eq7 eq17) merge18

def m19 : Tree := (.node 1 (.leaf [(51,true),(1575,true)]) (.node 1 (.leaf [(51,true),(1575,true)]) (.leaf [(51,true),(51,true),(1576,true)])))
theorem merge19 : m19.clauses = ScoreNodes.m19 := by rfl

def t19 : Tree := .node 0 (.node 0 t14 t14) m19
theorem eq19 : t19.clauses = ScoreNodes.c19 :=
  cat_eq _ (cat_eq _ eq14 eq14) merge19

def t20 : Tree := .nil
theorem eq20 : t20.clauses = ScoreNodes.c20 := by rfl

def m21 : Tree := (.node 1 (.leaf [(53,true),(1577,true)]) (.node 1 (.leaf [(53,true),(1577,true)]) (.leaf [(53,true),(53,true),(1578,true)])))
theorem merge21 : m21.clauses = ScoreNodes.m21 := by rfl

def t21 : Tree := .node 0 (.node 0 t20 t20) m21
theorem eq21 : t21.clauses = ScoreNodes.c21 :=
  cat_eq _ (cat_eq _ eq20 eq20) merge21

def m22 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1577,false),(1579,true)]) (.leaf [(1578,false),(1580,true)])) (.node 1 (.leaf [(1575,false),(1579,true)]) (.leaf [(1575,false),(1577,false),(1580,true)]))) (.node 2 (.node 1 (.leaf [(1575,false),(1578,false),(1581,true)]) (.leaf [(1576,false),(1580,true)])) (.node 1 (.leaf [(1576,false),(1577,false),(1581,true)]) (.leaf [(1576,false),(1578,false),(1582,true)]))))
theorem merge22 : m22.clauses = ScoreNodes.m22 := by rfl

def t22 : Tree := .node 6 (.node 3 t19 t21) m22
theorem eq22 : t22.clauses = ScoreNodes.c22 :=
  cat_eq _ (cat_eq _ eq19 eq21) merge22

def m23 : Tree := (.node 1 (.leaf [(53,true),(1583,true)]) (.node 1 (.leaf [(53,true),(1583,true)]) (.leaf [(53,true),(53,true),(1584,true)])))
theorem merge23 : m23.clauses = ScoreNodes.m23 := by rfl

def t23 : Tree := .node 0 (.node 0 t20 t20) m23
theorem eq23 : t23.clauses = ScoreNodes.c23 :=
  cat_eq _ (cat_eq _ eq20 eq20) merge23

def t24 : Tree := .nil
theorem eq24 : t24.clauses = ScoreNodes.c24 := by rfl

def m25 : Tree := (.node 1 (.leaf [(57,true),(1585,true)]) (.node 1 (.leaf [(57,true),(1585,true)]) (.leaf [(57,true),(57,true),(1586,true)])))
theorem merge25 : m25.clauses = ScoreNodes.m25 := by rfl

def t25 : Tree := .node 0 (.node 0 t24 t24) m25
theorem eq25 : t25.clauses = ScoreNodes.c25 :=
  cat_eq _ (cat_eq _ eq24 eq24) merge25

def m26 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1585,false),(1587,true)]) (.leaf [(1586,false),(1588,true)])) (.node 1 (.leaf [(1583,false),(1587,true)]) (.leaf [(1583,false),(1585,false),(1588,true)]))) (.node 2 (.node 1 (.leaf [(1583,false),(1586,false),(1589,true)]) (.leaf [(1584,false),(1588,true)])) (.node 1 (.leaf [(1584,false),(1585,false),(1589,true)]) (.leaf [(1584,false),(1586,false),(1590,true)]))))
theorem merge26 : m26.clauses = ScoreNodes.m26 := by rfl

def t26 : Tree := .node 6 (.node 3 t23 t25) m26
theorem eq26 : t26.clauses = ScoreNodes.c26 :=
  cat_eq _ (cat_eq _ eq23 eq25) merge26


end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
