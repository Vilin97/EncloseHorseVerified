import EncloseHorseVerified.Certificate.Generated.Daily20260310.ScoreNode002

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes

def t64 : CounterTree := .node [1527,1528,1529,1530,1531,1532] t58 t63
def m64 : CNF := [[(1524,false),(1527,true)],[(1525,false),(1528,true)],[(1526,false),(1529,true)],[(1519,false),(1527,true)],[(1519,false),(1524,false),(1528,true)],[(1519,false),(1525,false),(1529,true)],[(1519,false),(1526,false),(1530,true)],[(1520,false),(1528,true)],[(1520,false),(1524,false),(1529,true)],[(1520,false),(1525,false),(1530,true)],[(1520,false),(1526,false),(1531,true)],[(1521,false),(1529,true)],[(1521,false),(1524,false),(1530,true)],[(1521,false),(1525,false),(1531,true)],[(1521,false),(1526,false),(1532,true)]]
theorem merge64 : mergeClauses t58.outputLits t63.outputLits [1527,1528,1529,1530,1531,1532] = m64 := by rfl

def c64 : CNF := c58 ++ c63 ++ m64
theorem eq64 : t64.clauses = c64 := by
  change t58.clauses ++ t63.clauses ++ mergeClauses t58.outputLits t63.outputLits [1527,1528,1529,1530,1531,1532] = c64
  exact concat3_congr eq58 eq63 merge64

def t65 : CounterTree := .node [1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543] t53 t64
def m65 : CNF := [[(1527,false),(1533,true)],[(1528,false),(1534,true)],[(1529,false),(1535,true)],[(1530,false),(1536,true)],[(1531,false),(1537,true)],[(1532,false),(1538,true)],[(1512,false),(1533,true)],[(1512,false),(1527,false),(1534,true)],[(1512,false),(1528,false),(1535,true)],[(1512,false),(1529,false),(1536,true)],[(1512,false),(1530,false),(1537,true)],[(1512,false),(1531,false),(1538,true)],[(1512,false),(1532,false),(1539,true)],[(1513,false),(1534,true)],[(1513,false),(1527,false),(1535,true)],[(1513,false),(1528,false),(1536,true)],[(1513,false),(1529,false),(1537,true)],[(1513,false),(1530,false),(1538,true)],[(1513,false),(1531,false),(1539,true)],[(1513,false),(1532,false),(1540,true)],[(1514,false),(1535,true)],[(1514,false),(1527,false),(1536,true)],[(1514,false),(1528,false),(1537,true)],[(1514,false),(1529,false),(1538,true)],[(1514,false),(1530,false),(1539,true)],[(1514,false),(1531,false),(1540,true)],[(1514,false),(1532,false),(1541,true)],[(1515,false),(1536,true)],[(1515,false),(1527,false),(1537,true)],[(1515,false),(1528,false),(1538,true)],[(1515,false),(1529,false),(1539,true)],[(1515,false),(1530,false),(1540,true)],[(1515,false),(1531,false),(1541,true)],[(1515,false),(1532,false),(1542,true)],[(1516,false),(1537,true)],[(1516,false),(1527,false),(1538,true)],[(1516,false),(1528,false),(1539,true)],[(1516,false),(1529,false),(1540,true)],[(1516,false),(1530,false),(1541,true)],[(1516,false),(1531,false),(1542,true)],[(1516,false),(1532,false),(1543,true)]]
theorem merge65 : mergeClauses t53.outputLits t64.outputLits [1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543] = m65 := by rfl

def c65 : CNF := c53 ++ c64 ++ m65
theorem eq65 : t65.clauses = c65 := by
  change t53.clauses ++ t64.clauses ++ mergeClauses t53.outputLits t64.outputLits [1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543] = c65
  exact concat3_congr eq53 eq64 merge65

def t66 : CounterTree := .leaf (117,false)
def c66 : CNF := []
theorem eq66 : t66.clauses = c66 := rfl

def t67 : CounterTree := .leaf (119,false)
def c67 : CNF := []
theorem eq67 : t67.clauses = c67 := rfl

def t68 : CounterTree := .leaf (121,false)
def c68 : CNF := []
theorem eq68 : t68.clauses = c68 := rfl

def t69 : CounterTree := .node [1544,1545] t67 t68
def m69 : CNF := [[(121,true),(1544,true)],[(119,true),(1544,true)],[(119,true),(121,true),(1545,true)]]
theorem merge69 : mergeClauses t67.outputLits t68.outputLits [1544,1545] = m69 := by rfl

def c69 : CNF := c67 ++ c68 ++ m69
theorem eq69 : t69.clauses = c69 := by
  change t67.clauses ++ t68.clauses ++ mergeClauses t67.outputLits t68.outputLits [1544,1545] = c69
  exact concat3_congr eq67 eq68 merge69

def t70 : CounterTree := .node [1546,1547,1548] t66 t69
def m70 : CNF := [[(1544,false),(1546,true)],[(1545,false),(1547,true)],[(117,true),(1546,true)],[(117,true),(1544,false),(1547,true)],[(117,true),(1545,false),(1548,true)]]
theorem merge70 : mergeClauses t66.outputLits t69.outputLits [1546,1547,1548] = m70 := by rfl

def c70 : CNF := c66 ++ c69 ++ m70
theorem eq70 : t70.clauses = c70 := by
  change t66.clauses ++ t69.clauses ++ mergeClauses t66.outputLits t69.outputLits [1546,1547,1548] = c70
  exact concat3_congr eq66 eq69 merge70

def t71 : CounterTree := .leaf (123,false)
def c71 : CNF := []
theorem eq71 : t71.clauses = c71 := rfl

def t72 : CounterTree := .leaf (125,false)
def c72 : CNF := []
theorem eq72 : t72.clauses = c72 := rfl

def t73 : CounterTree := .leaf (127,false)
def c73 : CNF := []
theorem eq73 : t73.clauses = c73 := rfl

def t74 : CounterTree := .node [1549,1550] t72 t73
def m74 : CNF := [[(127,true),(1549,true)],[(125,true),(1549,true)],[(125,true),(127,true),(1550,true)]]
theorem merge74 : mergeClauses t72.outputLits t73.outputLits [1549,1550] = m74 := by rfl

def c74 : CNF := c72 ++ c73 ++ m74
theorem eq74 : t74.clauses = c74 := by
  change t72.clauses ++ t73.clauses ++ mergeClauses t72.outputLits t73.outputLits [1549,1550] = c74
  exact concat3_congr eq72 eq73 merge74

def t75 : CounterTree := .node [1551,1552,1553] t71 t74
def m75 : CNF := [[(1549,false),(1551,true)],[(1550,false),(1552,true)],[(123,true),(1551,true)],[(123,true),(1549,false),(1552,true)],[(123,true),(1550,false),(1553,true)]]
theorem merge75 : mergeClauses t71.outputLits t74.outputLits [1551,1552,1553] = m75 := by rfl

def c75 : CNF := c71 ++ c74 ++ m75
theorem eq75 : t75.clauses = c75 := by
  change t71.clauses ++ t74.clauses ++ mergeClauses t71.outputLits t74.outputLits [1551,1552,1553] = c75
  exact concat3_congr eq71 eq74 merge75

def t76 : CounterTree := .node [1554,1555,1556,1557,1558,1559] t70 t75
def m76 : CNF := [[(1551,false),(1554,true)],[(1552,false),(1555,true)],[(1553,false),(1556,true)],[(1546,false),(1554,true)],[(1546,false),(1551,false),(1555,true)],[(1546,false),(1552,false),(1556,true)],[(1546,false),(1553,false),(1557,true)],[(1547,false),(1555,true)],[(1547,false),(1551,false),(1556,true)],[(1547,false),(1552,false),(1557,true)],[(1547,false),(1553,false),(1558,true)],[(1548,false),(1556,true)],[(1548,false),(1551,false),(1557,true)],[(1548,false),(1552,false),(1558,true)],[(1548,false),(1553,false),(1559,true)]]
theorem merge76 : mergeClauses t70.outputLits t75.outputLits [1554,1555,1556,1557,1558,1559] = m76 := by rfl

def c76 : CNF := c70 ++ c75 ++ m76
theorem eq76 : t76.clauses = c76 := by
  change t70.clauses ++ t75.clauses ++ mergeClauses t70.outputLits t75.outputLits [1554,1555,1556,1557,1558,1559] = c76
  exact concat3_congr eq70 eq75 merge76

def t77 : CounterTree := .leaf (129,false)
def c77 : CNF := []
theorem eq77 : t77.clauses = c77 := rfl

def t78 : CounterTree := .leaf (131,false)
def c78 : CNF := []
theorem eq78 : t78.clauses = c78 := rfl

def t79 : CounterTree := .leaf (133,false)
def c79 : CNF := []
theorem eq79 : t79.clauses = c79 := rfl

def t80 : CounterTree := .node [1560,1561] t78 t79
def m80 : CNF := [[(133,true),(1560,true)],[(131,true),(1560,true)],[(131,true),(133,true),(1561,true)]]
theorem merge80 : mergeClauses t78.outputLits t79.outputLits [1560,1561] = m80 := by rfl

def c80 : CNF := c78 ++ c79 ++ m80
theorem eq80 : t80.clauses = c80 := by
  change t78.clauses ++ t79.clauses ++ mergeClauses t78.outputLits t79.outputLits [1560,1561] = c80
  exact concat3_congr eq78 eq79 merge80

def t81 : CounterTree := .node [1562,1563,1564] t77 t80
def m81 : CNF := [[(1560,false),(1562,true)],[(1561,false),(1563,true)],[(129,true),(1562,true)],[(129,true),(1560,false),(1563,true)],[(129,true),(1561,false),(1564,true)]]
theorem merge81 : mergeClauses t77.outputLits t80.outputLits [1562,1563,1564] = m81 := by rfl

def c81 : CNF := c77 ++ c80 ++ m81
theorem eq81 : t81.clauses = c81 := by
  change t77.clauses ++ t80.clauses ++ mergeClauses t77.outputLits t80.outputLits [1562,1563,1564] = c81
  exact concat3_congr eq77 eq80 merge81

def t82 : CounterTree := .leaf (135,false)
def c82 : CNF := []
theorem eq82 : t82.clauses = c82 := rfl

def t83 : CounterTree := .leaf (139,false)
def c83 : CNF := []
theorem eq83 : t83.clauses = c83 := rfl

def t84 : CounterTree := .leaf (141,false)
def c84 : CNF := []
theorem eq84 : t84.clauses = c84 := rfl

def t85 : CounterTree := .node [1565,1566] t83 t84
def m85 : CNF := [[(141,true),(1565,true)],[(139,true),(1565,true)],[(139,true),(141,true),(1566,true)]]
theorem merge85 : mergeClauses t83.outputLits t84.outputLits [1565,1566] = m85 := by rfl

def c85 : CNF := c83 ++ c84 ++ m85
theorem eq85 : t85.clauses = c85 := by
  change t83.clauses ++ t84.clauses ++ mergeClauses t83.outputLits t84.outputLits [1565,1566] = c85
  exact concat3_congr eq83 eq84 merge85


end EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes
