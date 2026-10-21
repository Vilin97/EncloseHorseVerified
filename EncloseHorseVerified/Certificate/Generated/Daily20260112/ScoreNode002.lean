import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode001

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t27 : CounterTree := .node [1591,1592,1593,1594,1595,1596,1597,1598] t22 t26
def m27 : CNF := [[(1587,false),(1591,true)],[(1588,false),(1592,true)],[(1589,false),(1593,true)],[(1590,false),(1594,true)],[(1579,false),(1591,true)],[(1579,false),(1587,false),(1592,true)],[(1579,false),(1588,false),(1593,true)],[(1579,false),(1589,false),(1594,true)],[(1579,false),(1590,false),(1595,true)],[(1580,false),(1592,true)],[(1580,false),(1587,false),(1593,true)],[(1580,false),(1588,false),(1594,true)],[(1580,false),(1589,false),(1595,true)],[(1580,false),(1590,false),(1596,true)],[(1581,false),(1593,true)],[(1581,false),(1587,false),(1594,true)],[(1581,false),(1588,false),(1595,true)],[(1581,false),(1589,false),(1596,true)],[(1581,false),(1590,false),(1597,true)],[(1582,false),(1594,true)],[(1582,false),(1587,false),(1595,true)],[(1582,false),(1588,false),(1596,true)],[(1582,false),(1589,false),(1597,true)],[(1582,false),(1590,false),(1598,true)]]
theorem merge27 : mergeClauses t22.outputLits t26.outputLits [1591,1592,1593,1594,1595,1596,1597,1598] = m27 := by
  rfl

def c27 : CNF := c22 ++ c26 ++ m27
theorem eq27 : t27.clauses = c27 := by
  change t22.clauses ++ t26.clauses ++ mergeClauses t22.outputLits t26.outputLits [1591,1592,1593,1594,1595,1596,1597,1598] = c27
  exact concat3_congr eq22 eq26 merge27
def t28 : CounterTree := .node [1599,1600] t24 t24
def m28 : CNF := [[(57,true),(1599,true)],[(57,true),(1599,true)],[(57,true),(57,true),(1600,true)]]
theorem merge28 : mergeClauses t24.outputLits t24.outputLits [1599,1600] = m28 := by
  rfl

def c28 : CNF := c24 ++ c24 ++ m28
theorem eq28 : t28.clauses = c28 := by
  change t24.clauses ++ t24.clauses ++ mergeClauses t24.outputLits t24.outputLits [1599,1600] = c28
  exact concat3_congr eq24 eq24 merge28
def t29 : CounterTree := .leaf (71,false)
def c29 : CNF := []
theorem eq29 : t29.clauses = c29 := rfl
def t30 : CounterTree := .leaf (73,false)
def c30 : CNF := []
theorem eq30 : t30.clauses = c30 := rfl
def t31 : CounterTree := .node [1601,1602] t29 t30
def m31 : CNF := [[(73,true),(1601,true)],[(71,true),(1601,true)],[(71,true),(73,true),(1602,true)]]
theorem merge31 : mergeClauses t29.outputLits t30.outputLits [1601,1602] = m31 := by
  rfl

def c31 : CNF := c29 ++ c30 ++ m31
theorem eq31 : t31.clauses = c31 := by
  change t29.clauses ++ t30.clauses ++ mergeClauses t29.outputLits t30.outputLits [1601,1602] = c31
  exact concat3_congr eq29 eq30 merge31
def t32 : CounterTree := .node [1603,1604,1605,1606] t28 t31
def m32 : CNF := [[(1601,false),(1603,true)],[(1602,false),(1604,true)],[(1599,false),(1603,true)],[(1599,false),(1601,false),(1604,true)],[(1599,false),(1602,false),(1605,true)],[(1600,false),(1604,true)],[(1600,false),(1601,false),(1605,true)],[(1600,false),(1602,false),(1606,true)]]
theorem merge32 : mergeClauses t28.outputLits t31.outputLits [1603,1604,1605,1606] = m32 := by
  rfl

def c32 : CNF := c28 ++ c31 ++ m32
theorem eq32 : t32.clauses = c32 := by
  change t28.clauses ++ t31.clauses ++ mergeClauses t28.outputLits t31.outputLits [1603,1604,1605,1606] = c32
  exact concat3_congr eq28 eq31 merge32
def t33 : CounterTree := .leaf (75,false)
def c33 : CNF := []
theorem eq33 : t33.clauses = c33 := rfl
def t34 : CounterTree := .leaf (79,false)
def c34 : CNF := []
theorem eq34 : t34.clauses = c34 := rfl
def t35 : CounterTree := .node [1607,1608] t33 t34
def m35 : CNF := [[(79,true),(1607,true)],[(75,true),(1607,true)],[(75,true),(79,true),(1608,true)]]
theorem merge35 : mergeClauses t33.outputLits t34.outputLits [1607,1608] = m35 := by
  rfl

def c35 : CNF := c33 ++ c34 ++ m35
theorem eq35 : t35.clauses = c35 := by
  change t33.clauses ++ t34.clauses ++ mergeClauses t33.outputLits t34.outputLits [1607,1608] = c35
  exact concat3_congr eq33 eq34 merge35
def t36 : CounterTree := .node [1609,1610] t34 t34
def m36 : CNF := [[(79,true),(1609,true)],[(79,true),(1609,true)],[(79,true),(79,true),(1610,true)]]
theorem merge36 : mergeClauses t34.outputLits t34.outputLits [1609,1610] = m36 := by
  rfl

def c36 : CNF := c34 ++ c34 ++ m36
theorem eq36 : t36.clauses = c36 := by
  change t34.clauses ++ t34.clauses ++ mergeClauses t34.outputLits t34.outputLits [1609,1610] = c36
  exact concat3_congr eq34 eq34 merge36
def t37 : CounterTree := .node [1611,1612,1613,1614] t35 t36
def m37 : CNF := [[(1609,false),(1611,true)],[(1610,false),(1612,true)],[(1607,false),(1611,true)],[(1607,false),(1609,false),(1612,true)],[(1607,false),(1610,false),(1613,true)],[(1608,false),(1612,true)],[(1608,false),(1609,false),(1613,true)],[(1608,false),(1610,false),(1614,true)]]
theorem merge37 : mergeClauses t35.outputLits t36.outputLits [1611,1612,1613,1614] = m37 := by
  rfl

def c37 : CNF := c35 ++ c36 ++ m37
theorem eq37 : t37.clauses = c37 := by
  change t35.clauses ++ t36.clauses ++ mergeClauses t35.outputLits t36.outputLits [1611,1612,1613,1614] = c37
  exact concat3_congr eq35 eq36 merge37
def t38 : CounterTree := .node [1615,1616,1617,1618,1619,1620,1621,1622] t32 t37
def m38 : CNF := [[(1611,false),(1615,true)],[(1612,false),(1616,true)],[(1613,false),(1617,true)],[(1614,false),(1618,true)],[(1603,false),(1615,true)],[(1603,false),(1611,false),(1616,true)],[(1603,false),(1612,false),(1617,true)],[(1603,false),(1613,false),(1618,true)],[(1603,false),(1614,false),(1619,true)],[(1604,false),(1616,true)],[(1604,false),(1611,false),(1617,true)],[(1604,false),(1612,false),(1618,true)],[(1604,false),(1613,false),(1619,true)],[(1604,false),(1614,false),(1620,true)],[(1605,false),(1617,true)],[(1605,false),(1611,false),(1618,true)],[(1605,false),(1612,false),(1619,true)],[(1605,false),(1613,false),(1620,true)],[(1605,false),(1614,false),(1621,true)],[(1606,false),(1618,true)],[(1606,false),(1611,false),(1619,true)],[(1606,false),(1612,false),(1620,true)],[(1606,false),(1613,false),(1621,true)],[(1606,false),(1614,false),(1622,true)]]
theorem merge38 : mergeClauses t32.outputLits t37.outputLits [1615,1616,1617,1618,1619,1620,1621,1622] = m38 := by
  rfl

def c38 : CNF := c32 ++ c37 ++ m38
theorem eq38 : t38.clauses = c38 := by
  change t32.clauses ++ t37.clauses ++ mergeClauses t32.outputLits t37.outputLits [1615,1616,1617,1618,1619,1620,1621,1622] = c38
  exact concat3_congr eq32 eq37 merge38
def t39 : CounterTree := .node [1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638] t27 t38
def m39 : CNF := [[(1615,false),(1623,true)],[(1616,false),(1624,true)],[(1617,false),(1625,true)],[(1618,false),(1626,true)],[(1619,false),(1627,true)],[(1620,false),(1628,true)],[(1621,false),(1629,true)],[(1622,false),(1630,true)],[(1591,false),(1623,true)],[(1591,false),(1615,false),(1624,true)],[(1591,false),(1616,false),(1625,true)],[(1591,false),(1617,false),(1626,true)],[(1591,false),(1618,false),(1627,true)],[(1591,false),(1619,false),(1628,true)],[(1591,false),(1620,false),(1629,true)],[(1591,false),(1621,false),(1630,true)],[(1591,false),(1622,false),(1631,true)],[(1592,false),(1624,true)],[(1592,false),(1615,false),(1625,true)],[(1592,false),(1616,false),(1626,true)],[(1592,false),(1617,false),(1627,true)],[(1592,false),(1618,false),(1628,true)],[(1592,false),(1619,false),(1629,true)],[(1592,false),(1620,false),(1630,true)],[(1592,false),(1621,false),(1631,true)],[(1592,false),(1622,false),(1632,true)],[(1593,false),(1625,true)],[(1593,false),(1615,false),(1626,true)],[(1593,false),(1616,false),(1627,true)],[(1593,false),(1617,false),(1628,true)],[(1593,false),(1618,false),(1629,true)],[(1593,false),(1619,false),(1630,true)],[(1593,false),(1620,false),(1631,true)],[(1593,false),(1621,false),(1632,true)],[(1593,false),(1622,false),(1633,true)],[(1594,false),(1626,true)],[(1594,false),(1615,false),(1627,true)],[(1594,false),(1616,false),(1628,true)],[(1594,false),(1617,false),(1629,true)],[(1594,false),(1618,false),(1630,true)],[(1594,false),(1619,false),(1631,true)],[(1594,false),(1620,false),(1632,true)],[(1594,false),(1621,false),(1633,true)],[(1594,false),(1622,false),(1634,true)],[(1595,false),(1627,true)],[(1595,false),(1615,false),(1628,true)],[(1595,false),(1616,false),(1629,true)],[(1595,false),(1617,false),(1630,true)],[(1595,false),(1618,false),(1631,true)],[(1595,false),(1619,false),(1632,true)],[(1595,false),(1620,false),(1633,true)],[(1595,false),(1621,false),(1634,true)],[(1595,false),(1622,false),(1635,true)],[(1596,false),(1628,true)],[(1596,false),(1615,false),(1629,true)],[(1596,false),(1616,false),(1630,true)],[(1596,false),(1617,false),(1631,true)],[(1596,false),(1618,false),(1632,true)],[(1596,false),(1619,false),(1633,true)],[(1596,false),(1620,false),(1634,true)],[(1596,false),(1621,false),(1635,true)],[(1596,false),(1622,false),(1636,true)],[(1597,false),(1629,true)],[(1597,false),(1615,false),(1630,true)],[(1597,false),(1616,false),(1631,true)],[(1597,false),(1617,false),(1632,true)],[(1597,false),(1618,false),(1633,true)],[(1597,false),(1619,false),(1634,true)],[(1597,false),(1620,false),(1635,true)],[(1597,false),(1621,false),(1636,true)],[(1597,false),(1622,false),(1637,true)],[(1598,false),(1630,true)],[(1598,false),(1615,false),(1631,true)],[(1598,false),(1616,false),(1632,true)],[(1598,false),(1617,false),(1633,true)],[(1598,false),(1618,false),(1634,true)],[(1598,false),(1619,false),(1635,true)],[(1598,false),(1620,false),(1636,true)],[(1598,false),(1621,false),(1637,true)],[(1598,false),(1622,false),(1638,true)]]
theorem merge39 : mergeClauses t27.outputLits t38.outputLits [1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638] = m39 := by
  rfl

def c39 : CNF := c27 ++ c38 ++ m39
theorem eq39 : t39.clauses = c39 := by
  change t27.clauses ++ t38.clauses ++ mergeClauses t27.outputLits t38.outputLits [1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638] = c39
  exact concat3_congr eq27 eq38 merge39
def t40 : CounterTree := .node [1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669] t18 t39
def m40 : CNF := [[(1623,false),(1639,true)],[(1624,false),(1640,true)],[(1625,false),(1641,true)],[(1626,false),(1642,true)],[(1627,false),(1643,true)],[(1628,false),(1644,true)],[(1629,false),(1645,true)],[(1630,false),(1646,true)],[(1631,false),(1647,true)],[(1632,false),(1648,true)],[(1633,false),(1649,true)],[(1634,false),(1650,true)],[(1635,false),(1651,true)],[(1636,false),(1652,true)],[(1637,false),(1653,true)],[(1638,false),(1654,true)],[(1560,false),(1639,true)],[(1560,false),(1623,false),(1640,true)],[(1560,false),(1624,false),(1641,true)],[(1560,false),(1625,false),(1642,true)],[(1560,false),(1626,false),(1643,true)],[(1560,false),(1627,false),(1644,true)],[(1560,false),(1628,false),(1645,true)],[(1560,false),(1629,false),(1646,true)],[(1560,false),(1630,false),(1647,true)],[(1560,false),(1631,false),(1648,true)],[(1560,false),(1632,false),(1649,true)],[(1560,false),(1633,false),(1650,true)],[(1560,false),(1634,false),(1651,true)],[(1560,false),(1635,false),(1652,true)],[(1560,false),(1636,false),(1653,true)],[(1560,false),(1637,false),(1654,true)],[(1560,false),(1638,false),(1655,true)],[(1561,false),(1640,true)],[(1561,false),(1623,false),(1641,true)],[(1561,false),(1624,false),(1642,true)],[(1561,false),(1625,false),(1643,true)],[(1561,false),(1626,false),(1644,true)],[(1561,false),(1627,false),(1645,true)],[(1561,false),(1628,false),(1646,true)],[(1561,false),(1629,false),(1647,true)],[(1561,false),(1630,false),(1648,true)],[(1561,false),(1631,false),(1649,true)],[(1561,false),(1632,false),(1650,true)],[(1561,false),(1633,false),(1651,true)],[(1561,false),(1634,false),(1652,true)],[(1561,false),(1635,false),(1653,true)],[(1561,false),(1636,false),(1654,true)],[(1561,false),(1637,false),(1655,true)],[(1561,false),(1638,false),(1656,true)],[(1562,false),(1641,true)],[(1562,false),(1623,false),(1642,true)],[(1562,false),(1624,false),(1643,true)],[(1562,false),(1625,false),(1644,true)],[(1562,false),(1626,false),(1645,true)],[(1562,false),(1627,false),(1646,true)],[(1562,false),(1628,false),(1647,true)],[(1562,false),(1629,false),(1648,true)],[(1562,false),(1630,false),(1649,true)],[(1562,false),(1631,false),(1650,true)],[(1562,false),(1632,false),(1651,true)],[(1562,false),(1633,false),(1652,true)],[(1562,false),(1634,false),(1653,true)],[(1562,false),(1635,false),(1654,true)],[(1562,false),(1636,false),(1655,true)],[(1562,false),(1637,false),(1656,true)],[(1562,false),(1638,false),(1657,true)],[(1563,false),(1642,true)],[(1563,false),(1623,false),(1643,true)],[(1563,false),(1624,false),(1644,true)],[(1563,false),(1625,false),(1645,true)],[(1563,false),(1626,false),(1646,true)],[(1563,false),(1627,false),(1647,true)],[(1563,false),(1628,false),(1648,true)],[(1563,false),(1629,false),(1649,true)],[(1563,false),(1630,false),(1650,true)],[(1563,false),(1631,false),(1651,true)],[(1563,false),(1632,false),(1652,true)],[(1563,false),(1633,false),(1653,true)],[(1563,false),(1634,false),(1654,true)],[(1563,false),(1635,false),(1655,true)],[(1563,false),(1636,false),(1656,true)],[(1563,false),(1637,false),(1657,true)],[(1563,false),(1638,false),(1658,true)],[(1564,false),(1643,true)],[(1564,false),(1623,false),(1644,true)],[(1564,false),(1624,false),(1645,true)],[(1564,false),(1625,false),(1646,true)],[(1564,false),(1626,false),(1647,true)],[(1564,false),(1627,false),(1648,true)],[(1564,false),(1628,false),(1649,true)],[(1564,false),(1629,false),(1650,true)],[(1564,false),(1630,false),(1651,true)],[(1564,false),(1631,false),(1652,true)],[(1564,false),(1632,false),(1653,true)],[(1564,false),(1633,false),(1654,true)],[(1564,false),(1634,false),(1655,true)],[(1564,false),(1635,false),(1656,true)],[(1564,false),(1636,false),(1657,true)],[(1564,false),(1637,false),(1658,true)],[(1564,false),(1638,false),(1659,true)],[(1565,false),(1644,true)],[(1565,false),(1623,false),(1645,true)],[(1565,false),(1624,false),(1646,true)],[(1565,false),(1625,false),(1647,true)],[(1565,false),(1626,false),(1648,true)],[(1565,false),(1627,false),(1649,true)],[(1565,false),(1628,false),(1650,true)],[(1565,false),(1629,false),(1651,true)],[(1565,false),(1630,false),(1652,true)],[(1565,false),(1631,false),(1653,true)],[(1565,false),(1632,false),(1654,true)],[(1565,false),(1633,false),(1655,true)],[(1565,false),(1634,false),(1656,true)],[(1565,false),(1635,false),(1657,true)],[(1565,false),(1636,false),(1658,true)],[(1565,false),(1637,false),(1659,true)],[(1565,false),(1638,false),(1660,true)],[(1566,false),(1645,true)],[(1566,false),(1623,false),(1646,true)],[(1566,false),(1624,false),(1647,true)],[(1566,false),(1625,false),(1648,true)],[(1566,false),(1626,false),(1649,true)],[(1566,false),(1627,false),(1650,true)],[(1566,false),(1628,false),(1651,true)],[(1566,false),(1629,false),(1652,true)],[(1566,false),(1630,false),(1653,true)],[(1566,false),(1631,false),(1654,true)],[(1566,false),(1632,false),(1655,true)],[(1566,false),(1633,false),(1656,true)],[(1566,false),(1634,false),(1657,true)],[(1566,false),(1635,false),(1658,true)],[(1566,false),(1636,false),(1659,true)],[(1566,false),(1637,false),(1660,true)],[(1566,false),(1638,false),(1661,true)],[(1567,false),(1646,true)],[(1567,false),(1623,false),(1647,true)],[(1567,false),(1624,false),(1648,true)],[(1567,false),(1625,false),(1649,true)],[(1567,false),(1626,false),(1650,true)],[(1567,false),(1627,false),(1651,true)],[(1567,false),(1628,false),(1652,true)],[(1567,false),(1629,false),(1653,true)],[(1567,false),(1630,false),(1654,true)],[(1567,false),(1631,false),(1655,true)],[(1567,false),(1632,false),(1656,true)],[(1567,false),(1633,false),(1657,true)],[(1567,false),(1634,false),(1658,true)],[(1567,false),(1635,false),(1659,true)],[(1567,false),(1636,false),(1660,true)],[(1567,false),(1637,false),(1661,true)],[(1567,false),(1638,false),(1662,true)],[(1568,false),(1647,true)],[(1568,false),(1623,false),(1648,true)],[(1568,false),(1624,false),(1649,true)],[(1568,false),(1625,false),(1650,true)],[(1568,false),(1626,false),(1651,true)],[(1568,false),(1627,false),(1652,true)],[(1568,false),(1628,false),(1653,true)],[(1568,false),(1629,false),(1654,true)],[(1568,false),(1630,false),(1655,true)],[(1568,false),(1631,false),(1656,true)],[(1568,false),(1632,false),(1657,true)],[(1568,false),(1633,false),(1658,true)],[(1568,false),(1634,false),(1659,true)],[(1568,false),(1635,false),(1660,true)],[(1568,false),(1636,false),(1661,true)],[(1568,false),(1637,false),(1662,true)],[(1568,false),(1638,false),(1663,true)],[(1569,false),(1648,true)],[(1569,false),(1623,false),(1649,true)],[(1569,false),(1624,false),(1650,true)],[(1569,false),(1625,false),(1651,true)],[(1569,false),(1626,false),(1652,true)],[(1569,false),(1627,false),(1653,true)],[(1569,false),(1628,false),(1654,true)],[(1569,false),(1629,false),(1655,true)],[(1569,false),(1630,false),(1656,true)],[(1569,false),(1631,false),(1657,true)],[(1569,false),(1632,false),(1658,true)],[(1569,false),(1633,false),(1659,true)],[(1569,false),(1634,false),(1660,true)],[(1569,false),(1635,false),(1661,true)],[(1569,false),(1636,false),(1662,true)],[(1569,false),(1637,false),(1663,true)],[(1569,false),(1638,false),(1664,true)],[(1570,false),(1649,true)],[(1570,false),(1623,false),(1650,true)],[(1570,false),(1624,false),(1651,true)],[(1570,false),(1625,false),(1652,true)],[(1570,false),(1626,false),(1653,true)],[(1570,false),(1627,false),(1654,true)],[(1570,false),(1628,false),(1655,true)],[(1570,false),(1629,false),(1656,true)],[(1570,false),(1630,false),(1657,true)],[(1570,false),(1631,false),(1658,true)],[(1570,false),(1632,false),(1659,true)],[(1570,false),(1633,false),(1660,true)],[(1570,false),(1634,false),(1661,true)],[(1570,false),(1635,false),(1662,true)],[(1570,false),(1636,false),(1663,true)],[(1570,false),(1637,false),(1664,true)],[(1570,false),(1638,false),(1665,true)],[(1571,false),(1650,true)],[(1571,false),(1623,false),(1651,true)],[(1571,false),(1624,false),(1652,true)],[(1571,false),(1625,false),(1653,true)],[(1571,false),(1626,false),(1654,true)],[(1571,false),(1627,false),(1655,true)],[(1571,false),(1628,false),(1656,true)],[(1571,false),(1629,false),(1657,true)],[(1571,false),(1630,false),(1658,true)],[(1571,false),(1631,false),(1659,true)],[(1571,false),(1632,false),(1660,true)],[(1571,false),(1633,false),(1661,true)],[(1571,false),(1634,false),(1662,true)],[(1571,false),(1635,false),(1663,true)],[(1571,false),(1636,false),(1664,true)],[(1571,false),(1637,false),(1665,true)],[(1571,false),(1638,false),(1666,true)],[(1572,false),(1651,true)],[(1572,false),(1623,false),(1652,true)],[(1572,false),(1624,false),(1653,true)],[(1572,false),(1625,false),(1654,true)],[(1572,false),(1626,false),(1655,true)],[(1572,false),(1627,false),(1656,true)],[(1572,false),(1628,false),(1657,true)],[(1572,false),(1629,false),(1658,true)],[(1572,false),(1630,false),(1659,true)],[(1572,false),(1631,false),(1660,true)],[(1572,false),(1632,false),(1661,true)],[(1572,false),(1633,false),(1662,true)],[(1572,false),(1634,false),(1663,true)],[(1572,false),(1635,false),(1664,true)],[(1572,false),(1636,false),(1665,true)],[(1572,false),(1637,false),(1666,true)],[(1572,false),(1638,false),(1667,true)],[(1573,false),(1652,true)],[(1573,false),(1623,false),(1653,true)],[(1573,false),(1624,false),(1654,true)],[(1573,false),(1625,false),(1655,true)],[(1573,false),(1626,false),(1656,true)],[(1573,false),(1627,false),(1657,true)],[(1573,false),(1628,false),(1658,true)],[(1573,false),(1629,false),(1659,true)],[(1573,false),(1630,false),(1660,true)],[(1573,false),(1631,false),(1661,true)],[(1573,false),(1632,false),(1662,true)],[(1573,false),(1633,false),(1663,true)],[(1573,false),(1634,false),(1664,true)],[(1573,false),(1635,false),(1665,true)],[(1573,false),(1636,false),(1666,true)],[(1573,false),(1637,false),(1667,true)],[(1573,false),(1638,false),(1668,true)],[(1574,false),(1653,true)],[(1574,false),(1623,false),(1654,true)],[(1574,false),(1624,false),(1655,true)],[(1574,false),(1625,false),(1656,true)],[(1574,false),(1626,false),(1657,true)],[(1574,false),(1627,false),(1658,true)],[(1574,false),(1628,false),(1659,true)],[(1574,false),(1629,false),(1660,true)],[(1574,false),(1630,false),(1661,true)],[(1574,false),(1631,false),(1662,true)],[(1574,false),(1632,false),(1663,true)],[(1574,false),(1633,false),(1664,true)],[(1574,false),(1634,false),(1665,true)],[(1574,false),(1635,false),(1666,true)],[(1574,false),(1636,false),(1667,true)],[(1574,false),(1637,false),(1668,true)],[(1574,false),(1638,false),(1669,true)]]
theorem merge40 : mergeClauses t18.outputLits t39.outputLits [1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669] = m40 := by
  rfl

def c40 : CNF := c18 ++ c39 ++ m40
theorem eq40 : t40.clauses = c40 := by
  change t18.clauses ++ t39.clauses ++ mergeClauses t18.outputLits t39.outputLits [1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669] = c40
  exact concat3_congr eq18 eq39 merge40

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
