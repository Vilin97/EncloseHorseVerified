import EncloseHorseVerified.Certificate.Generated.Daily20260107.LookupNode011

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.Lookup

def m222 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(1496,false),(1499,true)]) (.leaf [(1497,false),(1500,true)])) (.node 1 (.leaf [(1498,false),(1501,true)]) (.node 1 (.leaf [(1492,false),(1499,true)]) (.leaf [(1492,false),(1496,false),(1500,true)])))) (.node 3 (.node 1 (.leaf [(1492,false),(1497,false),(1501,true)]) (.node 1 (.leaf [(1492,false),(1498,false),(1502,true)]) (.leaf [(1493,false),(1500,true)]))) (.node 1 (.leaf [(1493,false),(1496,false),(1501,true)]) (.node 1 (.leaf [(1493,false),(1497,false),(1502,true)]) (.leaf [(1493,false),(1498,false),(1503,true)])))))
theorem merge222 : m222.clauses = ScoreNodes.m222 := by rfl

def t222 : Tree := .node 11 (.node 3 t216 t221) m222
theorem eq222 : t222.clauses = ScoreNodes.c222 :=
  cat_eq _ (cat_eq _ eq216 eq221) merge222

def m223 : Tree := (.node 14 (.node 7 (.node 3 (.node 1 (.leaf [(1499,false),(1504,true)]) (.node 1 (.leaf [(1500,false),(1505,true)]) (.leaf [(1501,false),(1506,true)]))) (.node 2 (.node 1 (.leaf [(1502,false),(1507,true)]) (.leaf [(1503,false),(1508,true)])) (.node 1 (.leaf [(1488,false),(1504,true)]) (.leaf [(1488,false),(1499,false),(1505,true)])))) (.node 3 (.node 1 (.leaf [(1488,false),(1500,false),(1506,true)]) (.node 1 (.leaf [(1488,false),(1501,false),(1507,true)]) (.leaf [(1488,false),(1502,false),(1508,true)]))) (.node 2 (.node 1 (.leaf [(1488,false),(1503,false),(1509,true)]) (.leaf [(1489,false),(1505,true)])) (.node 1 (.leaf [(1489,false),(1499,false),(1506,true)]) (.leaf [(1489,false),(1500,false),(1507,true)]))))) (.node 7 (.node 3 (.node 1 (.leaf [(1489,false),(1501,false),(1508,true)]) (.node 1 (.leaf [(1489,false),(1502,false),(1509,true)]) (.leaf [(1489,false),(1503,false),(1510,true)]))) (.node 2 (.node 1 (.leaf [(1490,false),(1506,true)]) (.leaf [(1490,false),(1499,false),(1507,true)])) (.node 1 (.leaf [(1490,false),(1500,false),(1508,true)]) (.leaf [(1490,false),(1501,false),(1509,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1490,false),(1502,false),(1510,true)]) (.leaf [(1490,false),(1503,false),(1511,true)])) (.node 1 (.leaf [(1491,false),(1507,true)]) (.leaf [(1491,false),(1499,false),(1508,true)]))) (.node 2 (.node 1 (.leaf [(1491,false),(1500,false),(1509,true)]) (.leaf [(1491,false),(1501,false),(1510,true)])) (.node 1 (.leaf [(1491,false),(1502,false),(1511,true)]) (.leaf [(1491,false),(1503,false),(1512,true)]))))))
theorem merge223 : m223.clauses = ScoreNodes.m223 := by rfl

def t223 : Tree := .node 36 (.node 14 t214 t222) m223
theorem eq223 : t223.clauses = ScoreNodes.c223 :=
  cat_eq _ (cat_eq _ eq214 eq222) merge223

def m224 : Tree := (.node 49 (.node 24 (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1504,false),(1513,true)]) (.node 1 (.leaf [(1505,false),(1514,true)]) (.leaf [(1506,false),(1515,true)]))) (.node 1 (.leaf [(1507,false),(1516,true)]) (.node 1 (.leaf [(1508,false),(1517,true)]) (.leaf [(1509,false),(1518,true)])))) (.node 3 (.node 1 (.leaf [(1510,false),(1519,true)]) (.node 1 (.leaf [(1511,false),(1520,true)]) (.leaf [(1512,false),(1521,true)]))) (.node 1 (.leaf [(1475,false),(1513,true)]) (.node 1 (.leaf [(1475,false),(1504,false),(1514,true)]) (.leaf [(1475,false),(1505,false),(1515,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1475,false),(1506,false),(1516,true)]) (.node 1 (.leaf [(1475,false),(1507,false),(1517,true)]) (.leaf [(1475,false),(1508,false),(1518,true)]))) (.node 1 (.leaf [(1475,false),(1509,false),(1519,true)]) (.node 1 (.leaf [(1475,false),(1510,false),(1520,true)]) (.leaf [(1475,false),(1511,false),(1521,true)])))) (.node 3 (.node 1 (.leaf [(1475,false),(1512,false),(1522,true)]) (.node 1 (.leaf [(1476,false),(1514,true)]) (.leaf [(1476,false),(1504,false),(1515,true)]))) (.node 1 (.leaf [(1476,false),(1505,false),(1516,true)]) (.node 1 (.leaf [(1476,false),(1506,false),(1517,true)]) (.leaf [(1476,false),(1507,false),(1518,true)])))))) (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1476,false),(1508,false),(1519,true)]) (.node 1 (.leaf [(1476,false),(1509,false),(1520,true)]) (.leaf [(1476,false),(1510,false),(1521,true)]))) (.node 1 (.leaf [(1476,false),(1511,false),(1522,true)]) (.node 1 (.leaf [(1476,false),(1512,false),(1523,true)]) (.leaf [(1477,false),(1515,true)])))) (.node 3 (.node 1 (.leaf [(1477,false),(1504,false),(1516,true)]) (.node 1 (.leaf [(1477,false),(1505,false),(1517,true)]) (.leaf [(1477,false),(1506,false),(1518,true)]))) (.node 1 (.leaf [(1477,false),(1507,false),(1519,true)]) (.node 1 (.leaf [(1477,false),(1508,false),(1520,true)]) (.leaf [(1477,false),(1509,false),(1521,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1477,false),(1510,false),(1522,true)]) (.node 1 (.leaf [(1477,false),(1511,false),(1523,true)]) (.leaf [(1477,false),(1512,false),(1524,true)]))) (.node 1 (.leaf [(1478,false),(1516,true)]) (.node 1 (.leaf [(1478,false),(1504,false),(1517,true)]) (.leaf [(1478,false),(1505,false),(1518,true)])))) (.node 3 (.node 1 (.leaf [(1478,false),(1506,false),(1519,true)]) (.node 1 (.leaf [(1478,false),(1507,false),(1520,true)]) (.leaf [(1478,false),(1508,false),(1521,true)]))) (.node 2 (.node 1 (.leaf [(1478,false),(1509,false),(1522,true)]) (.leaf [(1478,false),(1510,false),(1523,true)])) (.node 1 (.leaf [(1478,false),(1511,false),(1524,true)]) (.leaf [(1478,false),(1512,false),(1525,true)]))))))) (.node 25 (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1479,false),(1517,true)]) (.node 1 (.leaf [(1479,false),(1504,false),(1518,true)]) (.leaf [(1479,false),(1505,false),(1519,true)]))) (.node 1 (.leaf [(1479,false),(1506,false),(1520,true)]) (.node 1 (.leaf [(1479,false),(1507,false),(1521,true)]) (.leaf [(1479,false),(1508,false),(1522,true)])))) (.node 3 (.node 1 (.leaf [(1479,false),(1509,false),(1523,true)]) (.node 1 (.leaf [(1479,false),(1510,false),(1524,true)]) (.leaf [(1479,false),(1511,false),(1525,true)]))) (.node 1 (.leaf [(1479,false),(1512,false),(1526,true)]) (.node 1 (.leaf [(1480,false),(1518,true)]) (.leaf [(1480,false),(1504,false),(1519,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1480,false),(1505,false),(1520,true)]) (.node 1 (.leaf [(1480,false),(1506,false),(1521,true)]) (.leaf [(1480,false),(1507,false),(1522,true)]))) (.node 1 (.leaf [(1480,false),(1508,false),(1523,true)]) (.node 1 (.leaf [(1480,false),(1509,false),(1524,true)]) (.leaf [(1480,false),(1510,false),(1525,true)])))) (.node 3 (.node 1 (.leaf [(1480,false),(1511,false),(1526,true)]) (.node 1 (.leaf [(1480,false),(1512,false),(1527,true)]) (.leaf [(1481,false),(1519,true)]))) (.node 2 (.node 1 (.leaf [(1481,false),(1504,false),(1520,true)]) (.leaf [(1481,false),(1505,false),(1521,true)])) (.node 1 (.leaf [(1481,false),(1506,false),(1522,true)]) (.leaf [(1481,false),(1507,false),(1523,true)])))))) (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1481,false),(1508,false),(1524,true)]) (.node 1 (.leaf [(1481,false),(1509,false),(1525,true)]) (.leaf [(1481,false),(1510,false),(1526,true)]))) (.node 1 (.leaf [(1481,false),(1511,false),(1527,true)]) (.node 1 (.leaf [(1481,false),(1512,false),(1528,true)]) (.leaf [(1482,false),(1520,true)])))) (.node 3 (.node 1 (.leaf [(1482,false),(1504,false),(1521,true)]) (.node 1 (.leaf [(1482,false),(1505,false),(1522,true)]) (.leaf [(1482,false),(1506,false),(1523,true)]))) (.node 1 (.leaf [(1482,false),(1507,false),(1524,true)]) (.node 1 (.leaf [(1482,false),(1508,false),(1525,true)]) (.leaf [(1482,false),(1509,false),(1526,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1482,false),(1510,false),(1527,true)]) (.node 1 (.leaf [(1482,false),(1511,false),(1528,true)]) (.leaf [(1482,false),(1512,false),(1529,true)]))) (.node 1 (.leaf [(1483,false),(1521,true)]) (.node 1 (.leaf [(1483,false),(1504,false),(1522,true)]) (.leaf [(1483,false),(1505,false),(1523,true)])))) (.node 3 (.node 1 (.leaf [(1483,false),(1506,false),(1524,true)]) (.node 1 (.leaf [(1483,false),(1507,false),(1525,true)]) (.leaf [(1483,false),(1508,false),(1526,true)]))) (.node 2 (.node 1 (.leaf [(1483,false),(1509,false),(1527,true)]) (.leaf [(1483,false),(1510,false),(1528,true)])) (.node 1 (.leaf [(1483,false),(1511,false),(1529,true)]) (.leaf [(1483,false),(1512,false),(1530,true)]))))))))
theorem merge224 : m224.clauses = ScoreNodes.m224 := by rfl

def t224 : Tree := .node 130 (.node 65 t209 t223) m224
theorem eq224 : t224.clauses = ScoreNodes.c224 :=
  cat_eq _ (cat_eq _ eq209 eq223) merge224

def t225 : Tree := .nil
theorem eq225 : t225.clauses = ScoreNodes.c225 := by rfl

def t226 : Tree := .nil
theorem eq226 : t226.clauses = ScoreNodes.c226 := by rfl

def m227 : Tree := (.node 1 (.leaf [(299,true),(1531,true)]) (.node 1 (.leaf [(297,true),(1531,true)]) (.leaf [(297,true),(299,true),(1532,true)])))
theorem merge227 : m227.clauses = ScoreNodes.m227 := by rfl

def t227 : Tree := .node 0 (.node 0 t225 t226) m227
theorem eq227 : t227.clauses = ScoreNodes.c227 :=
  cat_eq _ (cat_eq _ eq225 eq226) merge227

def t228 : Tree := .nil
theorem eq228 : t228.clauses = ScoreNodes.c228 := by rfl

def t229 : Tree := .nil
theorem eq229 : t229.clauses = ScoreNodes.c229 := by rfl

def m230 : Tree := (.node 1 (.leaf [(303,true),(1533,true)]) (.node 1 (.leaf [(301,true),(1533,true)]) (.leaf [(301,true),(303,true),(1534,true)])))
theorem merge230 : m230.clauses = ScoreNodes.m230 := by rfl

def t230 : Tree := .node 0 (.node 0 t228 t229) m230
theorem eq230 : t230.clauses = ScoreNodes.c230 :=
  cat_eq _ (cat_eq _ eq228 eq229) merge230

def m231 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1533,false),(1535,true)]) (.leaf [(1534,false),(1536,true)])) (.node 1 (.leaf [(1531,false),(1535,true)]) (.leaf [(1531,false),(1533,false),(1536,true)]))) (.node 2 (.node 1 (.leaf [(1531,false),(1534,false),(1537,true)]) (.leaf [(1532,false),(1536,true)])) (.node 1 (.leaf [(1532,false),(1533,false),(1537,true)]) (.leaf [(1532,false),(1534,false),(1538,true)]))))
theorem merge231 : m231.clauses = ScoreNodes.m231 := by rfl

def t231 : Tree := .node 6 (.node 3 t227 t230) m231
theorem eq231 : t231.clauses = ScoreNodes.c231 :=
  cat_eq _ (cat_eq _ eq227 eq230) merge231

def t232 : Tree := .nil
theorem eq232 : t232.clauses = ScoreNodes.c232 := by rfl

def m233 : Tree := (.node 1 (.leaf [(305,true),(1539,true)]) (.node 1 (.leaf [(305,true),(1539,true)]) (.leaf [(305,true),(305,true),(1540,true)])))
theorem merge233 : m233.clauses = ScoreNodes.m233 := by rfl

def t233 : Tree := .node 0 (.node 0 t232 t232) m233
theorem eq233 : t233.clauses = ScoreNodes.c233 :=
  cat_eq _ (cat_eq _ eq232 eq232) merge233

def t234 : Tree := .nil
theorem eq234 : t234.clauses = ScoreNodes.c234 := by rfl

def m235 : Tree := (.node 1 (.leaf [(307,true),(1541,true)]) (.node 1 (.leaf [(305,true),(1541,true)]) (.leaf [(305,true),(307,true),(1542,true)])))
theorem merge235 : m235.clauses = ScoreNodes.m235 := by rfl

def t235 : Tree := .node 0 (.node 0 t232 t234) m235
theorem eq235 : t235.clauses = ScoreNodes.c235 :=
  cat_eq _ (cat_eq _ eq232 eq234) merge235

def m236 : Tree := (.node 2 (.node 1 (.leaf [(1541,false),(1543,true)]) (.leaf [(1542,false),(1544,true)])) (.node 1 (.leaf [(305,true),(1543,true)]) (.node 1 (.leaf [(305,true),(1541,false),(1544,true)]) (.leaf [(305,true),(1542,false),(1545,true)]))))
theorem merge236 : m236.clauses = ScoreNodes.m236 := by rfl

def t236 : Tree := .node 3 (.node 0 t232 t235) m236
theorem eq236 : t236.clauses = ScoreNodes.c236 :=
  cat_eq _ (cat_eq _ eq232 eq235) merge236

def m237 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(1543,false),(1546,true)]) (.leaf [(1544,false),(1547,true)])) (.node 1 (.leaf [(1545,false),(1548,true)]) (.node 1 (.leaf [(1539,false),(1546,true)]) (.leaf [(1539,false),(1543,false),(1547,true)])))) (.node 3 (.node 1 (.leaf [(1539,false),(1544,false),(1548,true)]) (.node 1 (.leaf [(1539,false),(1545,false),(1549,true)]) (.leaf [(1540,false),(1547,true)]))) (.node 1 (.leaf [(1540,false),(1543,false),(1548,true)]) (.node 1 (.leaf [(1540,false),(1544,false),(1549,true)]) (.leaf [(1540,false),(1545,false),(1550,true)])))))
theorem merge237 : m237.clauses = ScoreNodes.m237 := by rfl

def t237 : Tree := .node 11 (.node 3 t233 t236) m237
theorem eq237 : t237.clauses = ScoreNodes.c237 :=
  cat_eq _ (cat_eq _ eq233 eq236) merge237


end EncloseHorse.Certificate.Generated.Daily20260107.Lookup
