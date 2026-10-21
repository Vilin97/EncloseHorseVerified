import EncloseHorseVerified.Certificate.Generated.Daily20260310.LookupNode001

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.Lookup

def m43 : Tree := (.node 24 (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1464,false),(1470,true)]) (.node 1 (.leaf [(1465,false),(1471,true)]) (.leaf [(1466,false),(1472,true)]))) (.node 1 (.leaf [(1467,false),(1473,true)]) (.node 1 (.leaf [(1468,false),(1474,true)]) (.leaf [(1469,false),(1475,true)])))) (.node 3 (.node 1 (.leaf [(1448,false),(1470,true)]) (.node 1 (.leaf [(1448,false),(1464,false),(1471,true)]) (.leaf [(1448,false),(1465,false),(1472,true)]))) (.node 1 (.leaf [(1448,false),(1466,false),(1473,true)]) (.node 1 (.leaf [(1448,false),(1467,false),(1474,true)]) (.leaf [(1448,false),(1468,false),(1475,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1448,false),(1469,false),(1476,true)]) (.node 1 (.leaf [(1449,false),(1471,true)]) (.leaf [(1449,false),(1464,false),(1472,true)]))) (.node 1 (.leaf [(1449,false),(1465,false),(1473,true)]) (.node 1 (.leaf [(1449,false),(1466,false),(1474,true)]) (.leaf [(1449,false),(1467,false),(1475,true)])))) (.node 3 (.node 1 (.leaf [(1449,false),(1468,false),(1476,true)]) (.node 1 (.leaf [(1449,false),(1469,false),(1477,true)]) (.leaf [(1450,false),(1472,true)]))) (.node 1 (.leaf [(1450,false),(1464,false),(1473,true)]) (.node 1 (.leaf [(1450,false),(1465,false),(1474,true)]) (.leaf [(1450,false),(1466,false),(1475,true)])))))) (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1450,false),(1467,false),(1476,true)]) (.node 1 (.leaf [(1450,false),(1468,false),(1477,true)]) (.leaf [(1450,false),(1469,false),(1478,true)]))) (.node 1 (.leaf [(1451,false),(1473,true)]) (.node 1 (.leaf [(1451,false),(1464,false),(1474,true)]) (.leaf [(1451,false),(1465,false),(1475,true)])))) (.node 3 (.node 1 (.leaf [(1451,false),(1466,false),(1476,true)]) (.node 1 (.leaf [(1451,false),(1467,false),(1477,true)]) (.leaf [(1451,false),(1468,false),(1478,true)]))) (.node 1 (.leaf [(1451,false),(1469,false),(1479,true)]) (.node 1 (.leaf [(1452,false),(1474,true)]) (.leaf [(1452,false),(1464,false),(1475,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1452,false),(1465,false),(1476,true)]) (.node 1 (.leaf [(1452,false),(1466,false),(1477,true)]) (.leaf [(1452,false),(1467,false),(1478,true)]))) (.node 1 (.leaf [(1452,false),(1468,false),(1479,true)]) (.node 1 (.leaf [(1452,false),(1469,false),(1480,true)]) (.leaf [(1453,false),(1475,true)])))) (.node 3 (.node 1 (.leaf [(1453,false),(1464,false),(1476,true)]) (.node 1 (.leaf [(1453,false),(1465,false),(1477,true)]) (.leaf [(1453,false),(1466,false),(1478,true)]))) (.node 1 (.leaf [(1453,false),(1467,false),(1479,true)]) (.node 1 (.leaf [(1453,false),(1468,false),(1480,true)]) (.leaf [(1453,false),(1469,false),(1481,true)])))))))
theorem merge43 : m43.clauses = ScoreNodes.m43 := by rfl

def t43 : Tree := .node 62 (.node 31 t31 t42) m43
theorem eq43 : t43.clauses = ScoreNodes.c43 :=
  cat_eq _ (cat_eq _ eq31 eq42) merge43

def m44 : Tree := (.node 77 (.node 38 (.node 19 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1470,false),(1482,true)]) (.leaf [(1471,false),(1483,true)])) (.node 1 (.leaf [(1472,false),(1484,true)]) (.leaf [(1473,false),(1485,true)]))) (.node 2 (.node 1 (.leaf [(1474,false),(1486,true)]) (.leaf [(1475,false),(1487,true)])) (.node 1 (.leaf [(1476,false),(1488,true)]) (.node 1 (.leaf [(1477,false),(1489,true)]) (.leaf [(1478,false),(1490,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1479,false),(1491,true)]) (.leaf [(1480,false),(1492,true)])) (.node 1 (.leaf [(1481,false),(1493,true)]) (.node 1 (.leaf [(1427,false),(1482,true)]) (.leaf [(1427,false),(1470,false),(1483,true)])))) (.node 2 (.node 1 (.leaf [(1427,false),(1471,false),(1484,true)]) (.leaf [(1427,false),(1472,false),(1485,true)])) (.node 1 (.leaf [(1427,false),(1473,false),(1486,true)]) (.node 1 (.leaf [(1427,false),(1474,false),(1487,true)]) (.leaf [(1427,false),(1475,false),(1488,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1427,false),(1476,false),(1489,true)]) (.leaf [(1427,false),(1477,false),(1490,true)])) (.node 1 (.leaf [(1427,false),(1478,false),(1491,true)]) (.leaf [(1427,false),(1479,false),(1492,true)]))) (.node 2 (.node 1 (.leaf [(1427,false),(1480,false),(1493,true)]) (.leaf [(1427,false),(1481,false),(1494,true)])) (.node 1 (.leaf [(1428,false),(1483,true)]) (.node 1 (.leaf [(1428,false),(1470,false),(1484,true)]) (.leaf [(1428,false),(1471,false),(1485,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1428,false),(1472,false),(1486,true)]) (.leaf [(1428,false),(1473,false),(1487,true)])) (.node 1 (.leaf [(1428,false),(1474,false),(1488,true)]) (.node 1 (.leaf [(1428,false),(1475,false),(1489,true)]) (.leaf [(1428,false),(1476,false),(1490,true)])))) (.node 2 (.node 1 (.leaf [(1428,false),(1477,false),(1491,true)]) (.leaf [(1428,false),(1478,false),(1492,true)])) (.node 1 (.leaf [(1428,false),(1479,false),(1493,true)]) (.node 1 (.leaf [(1428,false),(1480,false),(1494,true)]) (.leaf [(1428,false),(1481,false),(1495,true)]))))))) (.node 19 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1429,false),(1484,true)]) (.leaf [(1429,false),(1470,false),(1485,true)])) (.node 1 (.leaf [(1429,false),(1471,false),(1486,true)]) (.leaf [(1429,false),(1472,false),(1487,true)]))) (.node 2 (.node 1 (.leaf [(1429,false),(1473,false),(1488,true)]) (.leaf [(1429,false),(1474,false),(1489,true)])) (.node 1 (.leaf [(1429,false),(1475,false),(1490,true)]) (.node 1 (.leaf [(1429,false),(1476,false),(1491,true)]) (.leaf [(1429,false),(1477,false),(1492,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1429,false),(1478,false),(1493,true)]) (.leaf [(1429,false),(1479,false),(1494,true)])) (.node 1 (.leaf [(1429,false),(1480,false),(1495,true)]) (.node 1 (.leaf [(1429,false),(1481,false),(1496,true)]) (.leaf [(1430,false),(1485,true)])))) (.node 2 (.node 1 (.leaf [(1430,false),(1470,false),(1486,true)]) (.leaf [(1430,false),(1471,false),(1487,true)])) (.node 1 (.leaf [(1430,false),(1472,false),(1488,true)]) (.node 1 (.leaf [(1430,false),(1473,false),(1489,true)]) (.leaf [(1430,false),(1474,false),(1490,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1430,false),(1475,false),(1491,true)]) (.leaf [(1430,false),(1476,false),(1492,true)])) (.node 1 (.leaf [(1430,false),(1477,false),(1493,true)]) (.node 1 (.leaf [(1430,false),(1478,false),(1494,true)]) (.leaf [(1430,false),(1479,false),(1495,true)])))) (.node 2 (.node 1 (.leaf [(1430,false),(1480,false),(1496,true)]) (.leaf [(1430,false),(1481,false),(1497,true)])) (.node 1 (.leaf [(1431,false),(1486,true)]) (.node 1 (.leaf [(1431,false),(1470,false),(1487,true)]) (.leaf [(1431,false),(1471,false),(1488,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1431,false),(1472,false),(1489,true)]) (.leaf [(1431,false),(1473,false),(1490,true)])) (.node 1 (.leaf [(1431,false),(1474,false),(1491,true)]) (.node 1 (.leaf [(1431,false),(1475,false),(1492,true)]) (.leaf [(1431,false),(1476,false),(1493,true)])))) (.node 2 (.node 1 (.leaf [(1431,false),(1477,false),(1494,true)]) (.leaf [(1431,false),(1478,false),(1495,true)])) (.node 1 (.leaf [(1431,false),(1479,false),(1496,true)]) (.node 1 (.leaf [(1431,false),(1480,false),(1497,true)]) (.leaf [(1431,false),(1481,false),(1498,true)])))))))) (.node 39 (.node 19 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1432,false),(1487,true)]) (.leaf [(1432,false),(1470,false),(1488,true)])) (.node 1 (.leaf [(1432,false),(1471,false),(1489,true)]) (.leaf [(1432,false),(1472,false),(1490,true)]))) (.node 2 (.node 1 (.leaf [(1432,false),(1473,false),(1491,true)]) (.leaf [(1432,false),(1474,false),(1492,true)])) (.node 1 (.leaf [(1432,false),(1475,false),(1493,true)]) (.node 1 (.leaf [(1432,false),(1476,false),(1494,true)]) (.leaf [(1432,false),(1477,false),(1495,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1432,false),(1478,false),(1496,true)]) (.leaf [(1432,false),(1479,false),(1497,true)])) (.node 1 (.leaf [(1432,false),(1480,false),(1498,true)]) (.node 1 (.leaf [(1432,false),(1481,false),(1499,true)]) (.leaf [(1433,false),(1488,true)])))) (.node 2 (.node 1 (.leaf [(1433,false),(1470,false),(1489,true)]) (.leaf [(1433,false),(1471,false),(1490,true)])) (.node 1 (.leaf [(1433,false),(1472,false),(1491,true)]) (.node 1 (.leaf [(1433,false),(1473,false),(1492,true)]) (.leaf [(1433,false),(1474,false),(1493,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1433,false),(1475,false),(1494,true)]) (.leaf [(1433,false),(1476,false),(1495,true)])) (.node 1 (.leaf [(1433,false),(1477,false),(1496,true)]) (.node 1 (.leaf [(1433,false),(1478,false),(1497,true)]) (.leaf [(1433,false),(1479,false),(1498,true)])))) (.node 2 (.node 1 (.leaf [(1433,false),(1480,false),(1499,true)]) (.leaf [(1433,false),(1481,false),(1500,true)])) (.node 1 (.leaf [(1434,false),(1489,true)]) (.node 1 (.leaf [(1434,false),(1470,false),(1490,true)]) (.leaf [(1434,false),(1471,false),(1491,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1434,false),(1472,false),(1492,true)]) (.leaf [(1434,false),(1473,false),(1493,true)])) (.node 1 (.leaf [(1434,false),(1474,false),(1494,true)]) (.node 1 (.leaf [(1434,false),(1475,false),(1495,true)]) (.leaf [(1434,false),(1476,false),(1496,true)])))) (.node 2 (.node 1 (.leaf [(1434,false),(1477,false),(1497,true)]) (.leaf [(1434,false),(1478,false),(1498,true)])) (.node 1 (.leaf [(1434,false),(1479,false),(1499,true)]) (.node 1 (.leaf [(1434,false),(1480,false),(1500,true)]) (.leaf [(1434,false),(1481,false),(1501,true)]))))))) (.node 19 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1435,false),(1490,true)]) (.leaf [(1435,false),(1470,false),(1491,true)])) (.node 1 (.leaf [(1435,false),(1471,false),(1492,true)]) (.leaf [(1435,false),(1472,false),(1493,true)]))) (.node 2 (.node 1 (.leaf [(1435,false),(1473,false),(1494,true)]) (.leaf [(1435,false),(1474,false),(1495,true)])) (.node 1 (.leaf [(1435,false),(1475,false),(1496,true)]) (.node 1 (.leaf [(1435,false),(1476,false),(1497,true)]) (.leaf [(1435,false),(1477,false),(1498,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1435,false),(1478,false),(1499,true)]) (.leaf [(1435,false),(1479,false),(1500,true)])) (.node 1 (.leaf [(1435,false),(1480,false),(1501,true)]) (.node 1 (.leaf [(1435,false),(1481,false),(1502,true)]) (.leaf [(1436,false),(1491,true)])))) (.node 2 (.node 1 (.leaf [(1436,false),(1470,false),(1492,true)]) (.leaf [(1436,false),(1471,false),(1493,true)])) (.node 1 (.leaf [(1436,false),(1472,false),(1494,true)]) (.node 1 (.leaf [(1436,false),(1473,false),(1495,true)]) (.leaf [(1436,false),(1474,false),(1496,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1436,false),(1475,false),(1497,true)]) (.leaf [(1436,false),(1476,false),(1498,true)])) (.node 1 (.leaf [(1436,false),(1477,false),(1499,true)]) (.node 1 (.leaf [(1436,false),(1478,false),(1500,true)]) (.leaf [(1436,false),(1479,false),(1501,true)])))) (.node 2 (.node 1 (.leaf [(1436,false),(1480,false),(1502,true)]) (.leaf [(1436,false),(1481,false),(1503,true)])) (.node 1 (.leaf [(1437,false),(1492,true)]) (.node 1 (.leaf [(1437,false),(1470,false),(1493,true)]) (.leaf [(1437,false),(1471,false),(1494,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1437,false),(1472,false),(1495,true)]) (.leaf [(1437,false),(1473,false),(1496,true)])) (.node 1 (.leaf [(1437,false),(1474,false),(1497,true)]) (.node 1 (.leaf [(1437,false),(1475,false),(1498,true)]) (.leaf [(1437,false),(1476,false),(1499,true)])))) (.node 2 (.node 1 (.leaf [(1437,false),(1477,false),(1500,true)]) (.leaf [(1437,false),(1478,false),(1501,true)])) (.node 1 (.leaf [(1437,false),(1479,false),(1502,true)]) (.node 1 (.leaf [(1437,false),(1480,false),(1503,true)]) (.leaf [(1437,false),(1481,false),(1504,true)])))))))))
theorem merge44 : m44.clauses = ScoreNodes.m44 := by rfl

def t44 : Tree := .node 204 (.node 94 t20 t43) m44
theorem eq44 : t44.clauses = ScoreNodes.c44 :=
  cat_eq _ (cat_eq _ eq20 eq43) merge44

def t45 : Tree := .nil
theorem eq45 : t45.clauses = ScoreNodes.c45 := by rfl

def t46 : Tree := .nil
theorem eq46 : t46.clauses = ScoreNodes.c46 := by rfl

def m47 : Tree := (.node 1 (.leaf [(89,true),(1505,true)]) (.node 1 (.leaf [(87,true),(1505,true)]) (.leaf [(87,true),(89,true),(1506,true)])))
theorem merge47 : m47.clauses = ScoreNodes.m47 := by rfl

def t47 : Tree := .node 0 (.node 0 t45 t46) m47
theorem eq47 : t47.clauses = ScoreNodes.c47 :=
  cat_eq _ (cat_eq _ eq45 eq46) merge47

def t48 : Tree := .nil
theorem eq48 : t48.clauses = ScoreNodes.c48 := by rfl

def t49 : Tree := .nil
theorem eq49 : t49.clauses = ScoreNodes.c49 := by rfl

def t50 : Tree := .nil
theorem eq50 : t50.clauses = ScoreNodes.c50 := by rfl

def m51 : Tree := (.node 1 (.leaf [(99,true),(1507,true)]) (.node 1 (.leaf [(97,true),(1507,true)]) (.leaf [(97,true),(99,true),(1508,true)])))
theorem merge51 : m51.clauses = ScoreNodes.m51 := by rfl

def t51 : Tree := .node 0 (.node 0 t49 t50) m51
theorem eq51 : t51.clauses = ScoreNodes.c51 :=
  cat_eq _ (cat_eq _ eq49 eq50) merge51

def m52 : Tree := (.node 2 (.node 1 (.leaf [(1507,false),(1509,true)]) (.leaf [(1508,false),(1510,true)])) (.node 1 (.leaf [(91,true),(1509,true)]) (.node 1 (.leaf [(91,true),(1507,false),(1510,true)]) (.leaf [(91,true),(1508,false),(1511,true)]))))
theorem merge52 : m52.clauses = ScoreNodes.m52 := by rfl

def t52 : Tree := .node 3 (.node 0 t48 t51) m52
theorem eq52 : t52.clauses = ScoreNodes.c52 :=
  cat_eq _ (cat_eq _ eq48 eq51) merge52

def m53 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(1509,false),(1512,true)]) (.leaf [(1510,false),(1513,true)])) (.node 1 (.leaf [(1511,false),(1514,true)]) (.node 1 (.leaf [(1505,false),(1512,true)]) (.leaf [(1505,false),(1509,false),(1513,true)])))) (.node 3 (.node 1 (.leaf [(1505,false),(1510,false),(1514,true)]) (.node 1 (.leaf [(1505,false),(1511,false),(1515,true)]) (.leaf [(1506,false),(1513,true)]))) (.node 1 (.leaf [(1506,false),(1509,false),(1514,true)]) (.node 1 (.leaf [(1506,false),(1510,false),(1515,true)]) (.leaf [(1506,false),(1511,false),(1516,true)])))))
theorem merge53 : m53.clauses = ScoreNodes.m53 := by rfl

def t53 : Tree := .node 11 (.node 3 t47 t52) m53
theorem eq53 : t53.clauses = ScoreNodes.c53 :=
  cat_eq _ (cat_eq _ eq47 eq52) merge53

def t54 : Tree := .nil
theorem eq54 : t54.clauses = ScoreNodes.c54 := by rfl

def t55 : Tree := .nil
theorem eq55 : t55.clauses = ScoreNodes.c55 := by rfl

def t56 : Tree := .nil
theorem eq56 : t56.clauses = ScoreNodes.c56 := by rfl

def m57 : Tree := (.node 1 (.leaf [(109,true),(1517,true)]) (.node 1 (.leaf [(107,true),(1517,true)]) (.leaf [(107,true),(109,true),(1518,true)])))
theorem merge57 : m57.clauses = ScoreNodes.m57 := by rfl

def t57 : Tree := .node 0 (.node 0 t55 t56) m57
theorem eq57 : t57.clauses = ScoreNodes.c57 :=
  cat_eq _ (cat_eq _ eq55 eq56) merge57

def m58 : Tree := (.node 2 (.node 1 (.leaf [(1517,false),(1519,true)]) (.leaf [(1518,false),(1520,true)])) (.node 1 (.leaf [(105,true),(1519,true)]) (.node 1 (.leaf [(105,true),(1517,false),(1520,true)]) (.leaf [(105,true),(1518,false),(1521,true)]))))
theorem merge58 : m58.clauses = ScoreNodes.m58 := by rfl

def t58 : Tree := .node 3 (.node 0 t54 t57) m58
theorem eq58 : t58.clauses = ScoreNodes.c58 :=
  cat_eq _ (cat_eq _ eq54 eq57) merge58

def t59 : Tree := .nil
theorem eq59 : t59.clauses = ScoreNodes.c59 := by rfl

def t60 : Tree := .nil
theorem eq60 : t60.clauses = ScoreNodes.c60 := by rfl

def t61 : Tree := .nil
theorem eq61 : t61.clauses = ScoreNodes.c61 := by rfl

def m62 : Tree := (.node 1 (.leaf [(115,true),(1522,true)]) (.node 1 (.leaf [(113,true),(1522,true)]) (.leaf [(113,true),(115,true),(1523,true)])))
theorem merge62 : m62.clauses = ScoreNodes.m62 := by rfl

def t62 : Tree := .node 0 (.node 0 t60 t61) m62
theorem eq62 : t62.clauses = ScoreNodes.c62 :=
  cat_eq _ (cat_eq _ eq60 eq61) merge62

def m63 : Tree := (.node 2 (.node 1 (.leaf [(1522,false),(1524,true)]) (.leaf [(1523,false),(1525,true)])) (.node 1 (.leaf [(111,true),(1524,true)]) (.node 1 (.leaf [(111,true),(1522,false),(1525,true)]) (.leaf [(111,true),(1523,false),(1526,true)]))))
theorem merge63 : m63.clauses = ScoreNodes.m63 := by rfl

def t63 : Tree := .node 3 (.node 0 t59 t62) m63
theorem eq63 : t63.clauses = ScoreNodes.c63 :=
  cat_eq _ (cat_eq _ eq59 eq62) merge63


end EncloseHorse.Certificate.Generated.Daily20260310.Lookup
