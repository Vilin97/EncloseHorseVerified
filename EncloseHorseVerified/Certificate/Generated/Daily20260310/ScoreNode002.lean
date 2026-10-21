import EncloseHorseVerified.Certificate.Generated.Daily20260310.ScoreNode001

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes

def t43 : CounterTree := .node [1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481] t31 t42
def m43 : CNF := [[(1464,false),(1470,true)],[(1465,false),(1471,true)],[(1466,false),(1472,true)],[(1467,false),(1473,true)],[(1468,false),(1474,true)],[(1469,false),(1475,true)],[(1448,false),(1470,true)],[(1448,false),(1464,false),(1471,true)],[(1448,false),(1465,false),(1472,true)],[(1448,false),(1466,false),(1473,true)],[(1448,false),(1467,false),(1474,true)],[(1448,false),(1468,false),(1475,true)],[(1448,false),(1469,false),(1476,true)],[(1449,false),(1471,true)],[(1449,false),(1464,false),(1472,true)],[(1449,false),(1465,false),(1473,true)],[(1449,false),(1466,false),(1474,true)],[(1449,false),(1467,false),(1475,true)],[(1449,false),(1468,false),(1476,true)],[(1449,false),(1469,false),(1477,true)],[(1450,false),(1472,true)],[(1450,false),(1464,false),(1473,true)],[(1450,false),(1465,false),(1474,true)],[(1450,false),(1466,false),(1475,true)],[(1450,false),(1467,false),(1476,true)],[(1450,false),(1468,false),(1477,true)],[(1450,false),(1469,false),(1478,true)],[(1451,false),(1473,true)],[(1451,false),(1464,false),(1474,true)],[(1451,false),(1465,false),(1475,true)],[(1451,false),(1466,false),(1476,true)],[(1451,false),(1467,false),(1477,true)],[(1451,false),(1468,false),(1478,true)],[(1451,false),(1469,false),(1479,true)],[(1452,false),(1474,true)],[(1452,false),(1464,false),(1475,true)],[(1452,false),(1465,false),(1476,true)],[(1452,false),(1466,false),(1477,true)],[(1452,false),(1467,false),(1478,true)],[(1452,false),(1468,false),(1479,true)],[(1452,false),(1469,false),(1480,true)],[(1453,false),(1475,true)],[(1453,false),(1464,false),(1476,true)],[(1453,false),(1465,false),(1477,true)],[(1453,false),(1466,false),(1478,true)],[(1453,false),(1467,false),(1479,true)],[(1453,false),(1468,false),(1480,true)],[(1453,false),(1469,false),(1481,true)]]
theorem merge43 : mergeClauses t31.outputLits t42.outputLits [1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481] = m43 := by rfl

def c43 : CNF := c31 ++ c42 ++ m43
theorem eq43 : t43.clauses = c43 := by
  change t31.clauses ++ t42.clauses ++ mergeClauses t31.outputLits t42.outputLits [1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481] = c43
  exact concat3_congr eq31 eq42 merge43

def t44 : CounterTree := .node [1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504] t20 t43
def m44 : CNF := [[(1470,false),(1482,true)],[(1471,false),(1483,true)],[(1472,false),(1484,true)],[(1473,false),(1485,true)],[(1474,false),(1486,true)],[(1475,false),(1487,true)],[(1476,false),(1488,true)],[(1477,false),(1489,true)],[(1478,false),(1490,true)],[(1479,false),(1491,true)],[(1480,false),(1492,true)],[(1481,false),(1493,true)],[(1427,false),(1482,true)],[(1427,false),(1470,false),(1483,true)],[(1427,false),(1471,false),(1484,true)],[(1427,false),(1472,false),(1485,true)],[(1427,false),(1473,false),(1486,true)],[(1427,false),(1474,false),(1487,true)],[(1427,false),(1475,false),(1488,true)],[(1427,false),(1476,false),(1489,true)],[(1427,false),(1477,false),(1490,true)],[(1427,false),(1478,false),(1491,true)],[(1427,false),(1479,false),(1492,true)],[(1427,false),(1480,false),(1493,true)],[(1427,false),(1481,false),(1494,true)],[(1428,false),(1483,true)],[(1428,false),(1470,false),(1484,true)],[(1428,false),(1471,false),(1485,true)],[(1428,false),(1472,false),(1486,true)],[(1428,false),(1473,false),(1487,true)],[(1428,false),(1474,false),(1488,true)],[(1428,false),(1475,false),(1489,true)],[(1428,false),(1476,false),(1490,true)],[(1428,false),(1477,false),(1491,true)],[(1428,false),(1478,false),(1492,true)],[(1428,false),(1479,false),(1493,true)],[(1428,false),(1480,false),(1494,true)],[(1428,false),(1481,false),(1495,true)],[(1429,false),(1484,true)],[(1429,false),(1470,false),(1485,true)],[(1429,false),(1471,false),(1486,true)],[(1429,false),(1472,false),(1487,true)],[(1429,false),(1473,false),(1488,true)],[(1429,false),(1474,false),(1489,true)],[(1429,false),(1475,false),(1490,true)],[(1429,false),(1476,false),(1491,true)],[(1429,false),(1477,false),(1492,true)],[(1429,false),(1478,false),(1493,true)],[(1429,false),(1479,false),(1494,true)],[(1429,false),(1480,false),(1495,true)],[(1429,false),(1481,false),(1496,true)],[(1430,false),(1485,true)],[(1430,false),(1470,false),(1486,true)],[(1430,false),(1471,false),(1487,true)],[(1430,false),(1472,false),(1488,true)],[(1430,false),(1473,false),(1489,true)],[(1430,false),(1474,false),(1490,true)],[(1430,false),(1475,false),(1491,true)],[(1430,false),(1476,false),(1492,true)],[(1430,false),(1477,false),(1493,true)],[(1430,false),(1478,false),(1494,true)],[(1430,false),(1479,false),(1495,true)],[(1430,false),(1480,false),(1496,true)],[(1430,false),(1481,false),(1497,true)],[(1431,false),(1486,true)],[(1431,false),(1470,false),(1487,true)],[(1431,false),(1471,false),(1488,true)],[(1431,false),(1472,false),(1489,true)],[(1431,false),(1473,false),(1490,true)],[(1431,false),(1474,false),(1491,true)],[(1431,false),(1475,false),(1492,true)],[(1431,false),(1476,false),(1493,true)],[(1431,false),(1477,false),(1494,true)],[(1431,false),(1478,false),(1495,true)],[(1431,false),(1479,false),(1496,true)],[(1431,false),(1480,false),(1497,true)],[(1431,false),(1481,false),(1498,true)],[(1432,false),(1487,true)],[(1432,false),(1470,false),(1488,true)],[(1432,false),(1471,false),(1489,true)],[(1432,false),(1472,false),(1490,true)],[(1432,false),(1473,false),(1491,true)],[(1432,false),(1474,false),(1492,true)],[(1432,false),(1475,false),(1493,true)],[(1432,false),(1476,false),(1494,true)],[(1432,false),(1477,false),(1495,true)],[(1432,false),(1478,false),(1496,true)],[(1432,false),(1479,false),(1497,true)],[(1432,false),(1480,false),(1498,true)],[(1432,false),(1481,false),(1499,true)],[(1433,false),(1488,true)],[(1433,false),(1470,false),(1489,true)],[(1433,false),(1471,false),(1490,true)],[(1433,false),(1472,false),(1491,true)],[(1433,false),(1473,false),(1492,true)],[(1433,false),(1474,false),(1493,true)],[(1433,false),(1475,false),(1494,true)],[(1433,false),(1476,false),(1495,true)],[(1433,false),(1477,false),(1496,true)],[(1433,false),(1478,false),(1497,true)],[(1433,false),(1479,false),(1498,true)],[(1433,false),(1480,false),(1499,true)],[(1433,false),(1481,false),(1500,true)],[(1434,false),(1489,true)],[(1434,false),(1470,false),(1490,true)],[(1434,false),(1471,false),(1491,true)],[(1434,false),(1472,false),(1492,true)],[(1434,false),(1473,false),(1493,true)],[(1434,false),(1474,false),(1494,true)],[(1434,false),(1475,false),(1495,true)],[(1434,false),(1476,false),(1496,true)],[(1434,false),(1477,false),(1497,true)],[(1434,false),(1478,false),(1498,true)],[(1434,false),(1479,false),(1499,true)],[(1434,false),(1480,false),(1500,true)],[(1434,false),(1481,false),(1501,true)],[(1435,false),(1490,true)],[(1435,false),(1470,false),(1491,true)],[(1435,false),(1471,false),(1492,true)],[(1435,false),(1472,false),(1493,true)],[(1435,false),(1473,false),(1494,true)],[(1435,false),(1474,false),(1495,true)],[(1435,false),(1475,false),(1496,true)],[(1435,false),(1476,false),(1497,true)],[(1435,false),(1477,false),(1498,true)],[(1435,false),(1478,false),(1499,true)],[(1435,false),(1479,false),(1500,true)],[(1435,false),(1480,false),(1501,true)],[(1435,false),(1481,false),(1502,true)],[(1436,false),(1491,true)],[(1436,false),(1470,false),(1492,true)],[(1436,false),(1471,false),(1493,true)],[(1436,false),(1472,false),(1494,true)],[(1436,false),(1473,false),(1495,true)],[(1436,false),(1474,false),(1496,true)],[(1436,false),(1475,false),(1497,true)],[(1436,false),(1476,false),(1498,true)],[(1436,false),(1477,false),(1499,true)],[(1436,false),(1478,false),(1500,true)],[(1436,false),(1479,false),(1501,true)],[(1436,false),(1480,false),(1502,true)],[(1436,false),(1481,false),(1503,true)],[(1437,false),(1492,true)],[(1437,false),(1470,false),(1493,true)],[(1437,false),(1471,false),(1494,true)],[(1437,false),(1472,false),(1495,true)],[(1437,false),(1473,false),(1496,true)],[(1437,false),(1474,false),(1497,true)],[(1437,false),(1475,false),(1498,true)],[(1437,false),(1476,false),(1499,true)],[(1437,false),(1477,false),(1500,true)],[(1437,false),(1478,false),(1501,true)],[(1437,false),(1479,false),(1502,true)],[(1437,false),(1480,false),(1503,true)],[(1437,false),(1481,false),(1504,true)]]
theorem merge44 : mergeClauses t20.outputLits t43.outputLits [1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504] = m44 := by rfl

def c44 : CNF := c20 ++ c43 ++ m44
theorem eq44 : t44.clauses = c44 := by
  change t20.clauses ++ t43.clauses ++ mergeClauses t20.outputLits t43.outputLits [1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504] = c44
  exact concat3_congr eq20 eq43 merge44

def t45 : CounterTree := .leaf (87,false)
def c45 : CNF := []
theorem eq45 : t45.clauses = c45 := rfl

def t46 : CounterTree := .leaf (89,false)
def c46 : CNF := []
theorem eq46 : t46.clauses = c46 := rfl

def t47 : CounterTree := .node [1505,1506] t45 t46
def m47 : CNF := [[(89,true),(1505,true)],[(87,true),(1505,true)],[(87,true),(89,true),(1506,true)]]
theorem merge47 : mergeClauses t45.outputLits t46.outputLits [1505,1506] = m47 := by rfl

def c47 : CNF := c45 ++ c46 ++ m47
theorem eq47 : t47.clauses = c47 := by
  change t45.clauses ++ t46.clauses ++ mergeClauses t45.outputLits t46.outputLits [1505,1506] = c47
  exact concat3_congr eq45 eq46 merge47

def t48 : CounterTree := .leaf (91,false)
def c48 : CNF := []
theorem eq48 : t48.clauses = c48 := rfl

def t49 : CounterTree := .leaf (97,false)
def c49 : CNF := []
theorem eq49 : t49.clauses = c49 := rfl

def t50 : CounterTree := .leaf (99,false)
def c50 : CNF := []
theorem eq50 : t50.clauses = c50 := rfl

def t51 : CounterTree := .node [1507,1508] t49 t50
def m51 : CNF := [[(99,true),(1507,true)],[(97,true),(1507,true)],[(97,true),(99,true),(1508,true)]]
theorem merge51 : mergeClauses t49.outputLits t50.outputLits [1507,1508] = m51 := by rfl

def c51 : CNF := c49 ++ c50 ++ m51
theorem eq51 : t51.clauses = c51 := by
  change t49.clauses ++ t50.clauses ++ mergeClauses t49.outputLits t50.outputLits [1507,1508] = c51
  exact concat3_congr eq49 eq50 merge51

def t52 : CounterTree := .node [1509,1510,1511] t48 t51
def m52 : CNF := [[(1507,false),(1509,true)],[(1508,false),(1510,true)],[(91,true),(1509,true)],[(91,true),(1507,false),(1510,true)],[(91,true),(1508,false),(1511,true)]]
theorem merge52 : mergeClauses t48.outputLits t51.outputLits [1509,1510,1511] = m52 := by rfl

def c52 : CNF := c48 ++ c51 ++ m52
theorem eq52 : t52.clauses = c52 := by
  change t48.clauses ++ t51.clauses ++ mergeClauses t48.outputLits t51.outputLits [1509,1510,1511] = c52
  exact concat3_congr eq48 eq51 merge52

def t53 : CounterTree := .node [1512,1513,1514,1515,1516] t47 t52
def m53 : CNF := [[(1509,false),(1512,true)],[(1510,false),(1513,true)],[(1511,false),(1514,true)],[(1505,false),(1512,true)],[(1505,false),(1509,false),(1513,true)],[(1505,false),(1510,false),(1514,true)],[(1505,false),(1511,false),(1515,true)],[(1506,false),(1513,true)],[(1506,false),(1509,false),(1514,true)],[(1506,false),(1510,false),(1515,true)],[(1506,false),(1511,false),(1516,true)]]
theorem merge53 : mergeClauses t47.outputLits t52.outputLits [1512,1513,1514,1515,1516] = m53 := by rfl

def c53 : CNF := c47 ++ c52 ++ m53
theorem eq53 : t53.clauses = c53 := by
  change t47.clauses ++ t52.clauses ++ mergeClauses t47.outputLits t52.outputLits [1512,1513,1514,1515,1516] = c53
  exact concat3_congr eq47 eq52 merge53

def t54 : CounterTree := .leaf (105,false)
def c54 : CNF := []
theorem eq54 : t54.clauses = c54 := rfl

def t55 : CounterTree := .leaf (107,false)
def c55 : CNF := []
theorem eq55 : t55.clauses = c55 := rfl

def t56 : CounterTree := .leaf (109,false)
def c56 : CNF := []
theorem eq56 : t56.clauses = c56 := rfl

def t57 : CounterTree := .node [1517,1518] t55 t56
def m57 : CNF := [[(109,true),(1517,true)],[(107,true),(1517,true)],[(107,true),(109,true),(1518,true)]]
theorem merge57 : mergeClauses t55.outputLits t56.outputLits [1517,1518] = m57 := by rfl

def c57 : CNF := c55 ++ c56 ++ m57
theorem eq57 : t57.clauses = c57 := by
  change t55.clauses ++ t56.clauses ++ mergeClauses t55.outputLits t56.outputLits [1517,1518] = c57
  exact concat3_congr eq55 eq56 merge57

def t58 : CounterTree := .node [1519,1520,1521] t54 t57
def m58 : CNF := [[(1517,false),(1519,true)],[(1518,false),(1520,true)],[(105,true),(1519,true)],[(105,true),(1517,false),(1520,true)],[(105,true),(1518,false),(1521,true)]]
theorem merge58 : mergeClauses t54.outputLits t57.outputLits [1519,1520,1521] = m58 := by rfl

def c58 : CNF := c54 ++ c57 ++ m58
theorem eq58 : t58.clauses = c58 := by
  change t54.clauses ++ t57.clauses ++ mergeClauses t54.outputLits t57.outputLits [1519,1520,1521] = c58
  exact concat3_congr eq54 eq57 merge58

def t59 : CounterTree := .leaf (111,false)
def c59 : CNF := []
theorem eq59 : t59.clauses = c59 := rfl

def t60 : CounterTree := .leaf (113,false)
def c60 : CNF := []
theorem eq60 : t60.clauses = c60 := rfl

def t61 : CounterTree := .leaf (115,false)
def c61 : CNF := []
theorem eq61 : t61.clauses = c61 := rfl

def t62 : CounterTree := .node [1522,1523] t60 t61
def m62 : CNF := [[(115,true),(1522,true)],[(113,true),(1522,true)],[(113,true),(115,true),(1523,true)]]
theorem merge62 : mergeClauses t60.outputLits t61.outputLits [1522,1523] = m62 := by rfl

def c62 : CNF := c60 ++ c61 ++ m62
theorem eq62 : t62.clauses = c62 := by
  change t60.clauses ++ t61.clauses ++ mergeClauses t60.outputLits t61.outputLits [1522,1523] = c62
  exact concat3_congr eq60 eq61 merge62

def t63 : CounterTree := .node [1524,1525,1526] t59 t62
def m63 : CNF := [[(1522,false),(1524,true)],[(1523,false),(1525,true)],[(111,true),(1524,true)],[(111,true),(1522,false),(1525,true)],[(111,true),(1523,false),(1526,true)]]
theorem merge63 : mergeClauses t59.outputLits t62.outputLits [1524,1525,1526] = m63 := by rfl

def c63 : CNF := c59 ++ c62 ++ m63
theorem eq63 : t63.clauses = c63 := by
  change t59.clauses ++ t62.clauses ++ mergeClauses t59.outputLits t62.outputLits [1524,1525,1526] = c63
  exact concat3_congr eq59 eq62 merge63


end EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes
