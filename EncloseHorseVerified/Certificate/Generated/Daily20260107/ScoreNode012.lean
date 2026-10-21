import EncloseHorseVerified.Certificate.Generated.Daily20260107.ScoreNode011

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes

def t222 : CounterTree := .node [1499,1500,1501,1502,1503] t216 t221
def m222 : CNF := [[(1496,false),(1499,true)],[(1497,false),(1500,true)],[(1498,false),(1501,true)],[(1492,false),(1499,true)],[(1492,false),(1496,false),(1500,true)],[(1492,false),(1497,false),(1501,true)],[(1492,false),(1498,false),(1502,true)],[(1493,false),(1500,true)],[(1493,false),(1496,false),(1501,true)],[(1493,false),(1497,false),(1502,true)],[(1493,false),(1498,false),(1503,true)]]
theorem merge222 : mergeClauses t216.outputLits t221.outputLits [1499,1500,1501,1502,1503] = m222 := by rfl

def c222 : CNF := c216 ++ c221 ++ m222
theorem eq222 : t222.clauses = c222 := by
  change t216.clauses ++ t221.clauses ++ mergeClauses t216.outputLits t221.outputLits [1499,1500,1501,1502,1503] = c222
  exact concat3_congr eq216 eq221 merge222

def t223 : CounterTree := .node [1504,1505,1506,1507,1508,1509,1510,1511,1512] t214 t222
def m223 : CNF := [[(1499,false),(1504,true)],[(1500,false),(1505,true)],[(1501,false),(1506,true)],[(1502,false),(1507,true)],[(1503,false),(1508,true)],[(1488,false),(1504,true)],[(1488,false),(1499,false),(1505,true)],[(1488,false),(1500,false),(1506,true)],[(1488,false),(1501,false),(1507,true)],[(1488,false),(1502,false),(1508,true)],[(1488,false),(1503,false),(1509,true)],[(1489,false),(1505,true)],[(1489,false),(1499,false),(1506,true)],[(1489,false),(1500,false),(1507,true)],[(1489,false),(1501,false),(1508,true)],[(1489,false),(1502,false),(1509,true)],[(1489,false),(1503,false),(1510,true)],[(1490,false),(1506,true)],[(1490,false),(1499,false),(1507,true)],[(1490,false),(1500,false),(1508,true)],[(1490,false),(1501,false),(1509,true)],[(1490,false),(1502,false),(1510,true)],[(1490,false),(1503,false),(1511,true)],[(1491,false),(1507,true)],[(1491,false),(1499,false),(1508,true)],[(1491,false),(1500,false),(1509,true)],[(1491,false),(1501,false),(1510,true)],[(1491,false),(1502,false),(1511,true)],[(1491,false),(1503,false),(1512,true)]]
theorem merge223 : mergeClauses t214.outputLits t222.outputLits [1504,1505,1506,1507,1508,1509,1510,1511,1512] = m223 := by rfl

def c223 : CNF := c214 ++ c222 ++ m223
theorem eq223 : t223.clauses = c223 := by
  change t214.clauses ++ t222.clauses ++ mergeClauses t214.outputLits t222.outputLits [1504,1505,1506,1507,1508,1509,1510,1511,1512] = c223
  exact concat3_congr eq214 eq222 merge223

def t224 : CounterTree := .node [1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530] t209 t223
def m224 : CNF := [[(1504,false),(1513,true)],[(1505,false),(1514,true)],[(1506,false),(1515,true)],[(1507,false),(1516,true)],[(1508,false),(1517,true)],[(1509,false),(1518,true)],[(1510,false),(1519,true)],[(1511,false),(1520,true)],[(1512,false),(1521,true)],[(1475,false),(1513,true)],[(1475,false),(1504,false),(1514,true)],[(1475,false),(1505,false),(1515,true)],[(1475,false),(1506,false),(1516,true)],[(1475,false),(1507,false),(1517,true)],[(1475,false),(1508,false),(1518,true)],[(1475,false),(1509,false),(1519,true)],[(1475,false),(1510,false),(1520,true)],[(1475,false),(1511,false),(1521,true)],[(1475,false),(1512,false),(1522,true)],[(1476,false),(1514,true)],[(1476,false),(1504,false),(1515,true)],[(1476,false),(1505,false),(1516,true)],[(1476,false),(1506,false),(1517,true)],[(1476,false),(1507,false),(1518,true)],[(1476,false),(1508,false),(1519,true)],[(1476,false),(1509,false),(1520,true)],[(1476,false),(1510,false),(1521,true)],[(1476,false),(1511,false),(1522,true)],[(1476,false),(1512,false),(1523,true)],[(1477,false),(1515,true)],[(1477,false),(1504,false),(1516,true)],[(1477,false),(1505,false),(1517,true)],[(1477,false),(1506,false),(1518,true)],[(1477,false),(1507,false),(1519,true)],[(1477,false),(1508,false),(1520,true)],[(1477,false),(1509,false),(1521,true)],[(1477,false),(1510,false),(1522,true)],[(1477,false),(1511,false),(1523,true)],[(1477,false),(1512,false),(1524,true)],[(1478,false),(1516,true)],[(1478,false),(1504,false),(1517,true)],[(1478,false),(1505,false),(1518,true)],[(1478,false),(1506,false),(1519,true)],[(1478,false),(1507,false),(1520,true)],[(1478,false),(1508,false),(1521,true)],[(1478,false),(1509,false),(1522,true)],[(1478,false),(1510,false),(1523,true)],[(1478,false),(1511,false),(1524,true)],[(1478,false),(1512,false),(1525,true)],[(1479,false),(1517,true)],[(1479,false),(1504,false),(1518,true)],[(1479,false),(1505,false),(1519,true)],[(1479,false),(1506,false),(1520,true)],[(1479,false),(1507,false),(1521,true)],[(1479,false),(1508,false),(1522,true)],[(1479,false),(1509,false),(1523,true)],[(1479,false),(1510,false),(1524,true)],[(1479,false),(1511,false),(1525,true)],[(1479,false),(1512,false),(1526,true)],[(1480,false),(1518,true)],[(1480,false),(1504,false),(1519,true)],[(1480,false),(1505,false),(1520,true)],[(1480,false),(1506,false),(1521,true)],[(1480,false),(1507,false),(1522,true)],[(1480,false),(1508,false),(1523,true)],[(1480,false),(1509,false),(1524,true)],[(1480,false),(1510,false),(1525,true)],[(1480,false),(1511,false),(1526,true)],[(1480,false),(1512,false),(1527,true)],[(1481,false),(1519,true)],[(1481,false),(1504,false),(1520,true)],[(1481,false),(1505,false),(1521,true)],[(1481,false),(1506,false),(1522,true)],[(1481,false),(1507,false),(1523,true)],[(1481,false),(1508,false),(1524,true)],[(1481,false),(1509,false),(1525,true)],[(1481,false),(1510,false),(1526,true)],[(1481,false),(1511,false),(1527,true)],[(1481,false),(1512,false),(1528,true)],[(1482,false),(1520,true)],[(1482,false),(1504,false),(1521,true)],[(1482,false),(1505,false),(1522,true)],[(1482,false),(1506,false),(1523,true)],[(1482,false),(1507,false),(1524,true)],[(1482,false),(1508,false),(1525,true)],[(1482,false),(1509,false),(1526,true)],[(1482,false),(1510,false),(1527,true)],[(1482,false),(1511,false),(1528,true)],[(1482,false),(1512,false),(1529,true)],[(1483,false),(1521,true)],[(1483,false),(1504,false),(1522,true)],[(1483,false),(1505,false),(1523,true)],[(1483,false),(1506,false),(1524,true)],[(1483,false),(1507,false),(1525,true)],[(1483,false),(1508,false),(1526,true)],[(1483,false),(1509,false),(1527,true)],[(1483,false),(1510,false),(1528,true)],[(1483,false),(1511,false),(1529,true)],[(1483,false),(1512,false),(1530,true)]]
theorem merge224 : mergeClauses t209.outputLits t223.outputLits [1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530] = m224 := by rfl

def c224 : CNF := c209 ++ c223 ++ m224
theorem eq224 : t224.clauses = c224 := by
  change t209.clauses ++ t223.clauses ++ mergeClauses t209.outputLits t223.outputLits [1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530] = c224
  exact concat3_congr eq209 eq223 merge224

def t225 : CounterTree := .leaf (297,false)
def c225 : CNF := []
theorem eq225 : t225.clauses = c225 := rfl

def t226 : CounterTree := .leaf (299,false)
def c226 : CNF := []
theorem eq226 : t226.clauses = c226 := rfl

def t227 : CounterTree := .node [1531,1532] t225 t226
def m227 : CNF := [[(299,true),(1531,true)],[(297,true),(1531,true)],[(297,true),(299,true),(1532,true)]]
theorem merge227 : mergeClauses t225.outputLits t226.outputLits [1531,1532] = m227 := by rfl

def c227 : CNF := c225 ++ c226 ++ m227
theorem eq227 : t227.clauses = c227 := by
  change t225.clauses ++ t226.clauses ++ mergeClauses t225.outputLits t226.outputLits [1531,1532] = c227
  exact concat3_congr eq225 eq226 merge227

def t228 : CounterTree := .leaf (301,false)
def c228 : CNF := []
theorem eq228 : t228.clauses = c228 := rfl

def t229 : CounterTree := .leaf (303,false)
def c229 : CNF := []
theorem eq229 : t229.clauses = c229 := rfl

def t230 : CounterTree := .node [1533,1534] t228 t229
def m230 : CNF := [[(303,true),(1533,true)],[(301,true),(1533,true)],[(301,true),(303,true),(1534,true)]]
theorem merge230 : mergeClauses t228.outputLits t229.outputLits [1533,1534] = m230 := by rfl

def c230 : CNF := c228 ++ c229 ++ m230
theorem eq230 : t230.clauses = c230 := by
  change t228.clauses ++ t229.clauses ++ mergeClauses t228.outputLits t229.outputLits [1533,1534] = c230
  exact concat3_congr eq228 eq229 merge230

def t231 : CounterTree := .node [1535,1536,1537,1538] t227 t230
def m231 : CNF := [[(1533,false),(1535,true)],[(1534,false),(1536,true)],[(1531,false),(1535,true)],[(1531,false),(1533,false),(1536,true)],[(1531,false),(1534,false),(1537,true)],[(1532,false),(1536,true)],[(1532,false),(1533,false),(1537,true)],[(1532,false),(1534,false),(1538,true)]]
theorem merge231 : mergeClauses t227.outputLits t230.outputLits [1535,1536,1537,1538] = m231 := by rfl

def c231 : CNF := c227 ++ c230 ++ m231
theorem eq231 : t231.clauses = c231 := by
  change t227.clauses ++ t230.clauses ++ mergeClauses t227.outputLits t230.outputLits [1535,1536,1537,1538] = c231
  exact concat3_congr eq227 eq230 merge231

def t232 : CounterTree := .leaf (305,false)
def c232 : CNF := []
theorem eq232 : t232.clauses = c232 := rfl

def t233 : CounterTree := .node [1539,1540] t232 t232
def m233 : CNF := [[(305,true),(1539,true)],[(305,true),(1539,true)],[(305,true),(305,true),(1540,true)]]
theorem merge233 : mergeClauses t232.outputLits t232.outputLits [1539,1540] = m233 := by rfl

def c233 : CNF := c232 ++ c232 ++ m233
theorem eq233 : t233.clauses = c233 := by
  change t232.clauses ++ t232.clauses ++ mergeClauses t232.outputLits t232.outputLits [1539,1540] = c233
  exact concat3_congr eq232 eq232 merge233

def t234 : CounterTree := .leaf (307,false)
def c234 : CNF := []
theorem eq234 : t234.clauses = c234 := rfl

def t235 : CounterTree := .node [1541,1542] t232 t234
def m235 : CNF := [[(307,true),(1541,true)],[(305,true),(1541,true)],[(305,true),(307,true),(1542,true)]]
theorem merge235 : mergeClauses t232.outputLits t234.outputLits [1541,1542] = m235 := by rfl

def c235 : CNF := c232 ++ c234 ++ m235
theorem eq235 : t235.clauses = c235 := by
  change t232.clauses ++ t234.clauses ++ mergeClauses t232.outputLits t234.outputLits [1541,1542] = c235
  exact concat3_congr eq232 eq234 merge235

def t236 : CounterTree := .node [1543,1544,1545] t232 t235
def m236 : CNF := [[(1541,false),(1543,true)],[(1542,false),(1544,true)],[(305,true),(1543,true)],[(305,true),(1541,false),(1544,true)],[(305,true),(1542,false),(1545,true)]]
theorem merge236 : mergeClauses t232.outputLits t235.outputLits [1543,1544,1545] = m236 := by rfl

def c236 : CNF := c232 ++ c235 ++ m236
theorem eq236 : t236.clauses = c236 := by
  change t232.clauses ++ t235.clauses ++ mergeClauses t232.outputLits t235.outputLits [1543,1544,1545] = c236
  exact concat3_congr eq232 eq235 merge236

def t237 : CounterTree := .node [1546,1547,1548,1549,1550] t233 t236
def m237 : CNF := [[(1543,false),(1546,true)],[(1544,false),(1547,true)],[(1545,false),(1548,true)],[(1539,false),(1546,true)],[(1539,false),(1543,false),(1547,true)],[(1539,false),(1544,false),(1548,true)],[(1539,false),(1545,false),(1549,true)],[(1540,false),(1547,true)],[(1540,false),(1543,false),(1548,true)],[(1540,false),(1544,false),(1549,true)],[(1540,false),(1545,false),(1550,true)]]
theorem merge237 : mergeClauses t233.outputLits t236.outputLits [1546,1547,1548,1549,1550] = m237 := by rfl

def c237 : CNF := c233 ++ c236 ++ m237
theorem eq237 : t237.clauses = c237 := by
  change t233.clauses ++ t236.clauses ++ mergeClauses t233.outputLits t236.outputLits [1546,1547,1548,1549,1550] = c237
  exact concat3_congr eq233 eq236 merge237


end EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes
