import EncloseHorseVerified.Certificate.Generated.Daily20260310.LookupNode002

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.Lookup

def m64 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(1524,false),(1527,true)]) (.node 1 (.leaf [(1525,false),(1528,true)]) (.leaf [(1526,false),(1529,true)]))) (.node 2 (.node 1 (.leaf [(1519,false),(1527,true)]) (.leaf [(1519,false),(1524,false),(1528,true)])) (.node 1 (.leaf [(1519,false),(1525,false),(1529,true)]) (.leaf [(1519,false),(1526,false),(1530,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1520,false),(1528,true)]) (.leaf [(1520,false),(1524,false),(1529,true)])) (.node 1 (.leaf [(1520,false),(1525,false),(1530,true)]) (.leaf [(1520,false),(1526,false),(1531,true)]))) (.node 2 (.node 1 (.leaf [(1521,false),(1529,true)]) (.leaf [(1521,false),(1524,false),(1530,true)])) (.node 1 (.leaf [(1521,false),(1525,false),(1531,true)]) (.leaf [(1521,false),(1526,false),(1532,true)])))))
theorem merge64 : m64.clauses = ScoreNodes.m64 := by rfl

def t64 : Tree := .node 16 (.node 8 t58 t63) m64
theorem eq64 : t64.clauses = ScoreNodes.c64 :=
  cat_eq _ (cat_eq _ eq58 eq63) merge64

def m65 : Tree := (.node 20 (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1527,false),(1533,true)]) (.leaf [(1528,false),(1534,true)])) (.node 1 (.leaf [(1529,false),(1535,true)]) (.node 1 (.leaf [(1530,false),(1536,true)]) (.leaf [(1531,false),(1537,true)])))) (.node 2 (.node 1 (.leaf [(1532,false),(1538,true)]) (.leaf [(1512,false),(1533,true)])) (.node 1 (.leaf [(1512,false),(1527,false),(1534,true)]) (.node 1 (.leaf [(1512,false),(1528,false),(1535,true)]) (.leaf [(1512,false),(1529,false),(1536,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1512,false),(1530,false),(1537,true)]) (.leaf [(1512,false),(1531,false),(1538,true)])) (.node 1 (.leaf [(1512,false),(1532,false),(1539,true)]) (.node 1 (.leaf [(1513,false),(1534,true)]) (.leaf [(1513,false),(1527,false),(1535,true)])))) (.node 2 (.node 1 (.leaf [(1513,false),(1528,false),(1536,true)]) (.leaf [(1513,false),(1529,false),(1537,true)])) (.node 1 (.leaf [(1513,false),(1530,false),(1538,true)]) (.node 1 (.leaf [(1513,false),(1531,false),(1539,true)]) (.leaf [(1513,false),(1532,false),(1540,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1514,false),(1535,true)]) (.leaf [(1514,false),(1527,false),(1536,true)])) (.node 1 (.leaf [(1514,false),(1528,false),(1537,true)]) (.node 1 (.leaf [(1514,false),(1529,false),(1538,true)]) (.leaf [(1514,false),(1530,false),(1539,true)])))) (.node 2 (.node 1 (.leaf [(1514,false),(1531,false),(1540,true)]) (.leaf [(1514,false),(1532,false),(1541,true)])) (.node 1 (.leaf [(1515,false),(1536,true)]) (.node 1 (.leaf [(1515,false),(1527,false),(1537,true)]) (.leaf [(1515,false),(1528,false),(1538,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1515,false),(1529,false),(1539,true)]) (.leaf [(1515,false),(1530,false),(1540,true)])) (.node 1 (.leaf [(1515,false),(1531,false),(1541,true)]) (.node 1 (.leaf [(1515,false),(1532,false),(1542,true)]) (.leaf [(1516,false),(1537,true)])))) (.node 3 (.node 1 (.leaf [(1516,false),(1527,false),(1538,true)]) (.node 1 (.leaf [(1516,false),(1528,false),(1539,true)]) (.leaf [(1516,false),(1529,false),(1540,true)]))) (.node 1 (.leaf [(1516,false),(1530,false),(1541,true)]) (.node 1 (.leaf [(1516,false),(1531,false),(1542,true)]) (.leaf [(1516,false),(1532,false),(1543,true)])))))))
theorem merge65 : m65.clauses = ScoreNodes.m65 := by rfl

def t65 : Tree := .node 53 (.node 22 t53 t64) m65
theorem eq65 : t65.clauses = ScoreNodes.c65 :=
  cat_eq _ (cat_eq _ eq53 eq64) merge65

def t66 : Tree := .nil
theorem eq66 : t66.clauses = ScoreNodes.c66 := by rfl

def t67 : Tree := .nil
theorem eq67 : t67.clauses = ScoreNodes.c67 := by rfl

def t68 : Tree := .nil
theorem eq68 : t68.clauses = ScoreNodes.c68 := by rfl

def m69 : Tree := (.node 1 (.leaf [(121,true),(1544,true)]) (.node 1 (.leaf [(119,true),(1544,true)]) (.leaf [(119,true),(121,true),(1545,true)])))
theorem merge69 : m69.clauses = ScoreNodes.m69 := by rfl

def t69 : Tree := .node 0 (.node 0 t67 t68) m69
theorem eq69 : t69.clauses = ScoreNodes.c69 :=
  cat_eq _ (cat_eq _ eq67 eq68) merge69

def m70 : Tree := (.node 2 (.node 1 (.leaf [(1544,false),(1546,true)]) (.leaf [(1545,false),(1547,true)])) (.node 1 (.leaf [(117,true),(1546,true)]) (.node 1 (.leaf [(117,true),(1544,false),(1547,true)]) (.leaf [(117,true),(1545,false),(1548,true)]))))
theorem merge70 : m70.clauses = ScoreNodes.m70 := by rfl

def t70 : Tree := .node 3 (.node 0 t66 t69) m70
theorem eq70 : t70.clauses = ScoreNodes.c70 :=
  cat_eq _ (cat_eq _ eq66 eq69) merge70

def t71 : Tree := .nil
theorem eq71 : t71.clauses = ScoreNodes.c71 := by rfl

def t72 : Tree := .nil
theorem eq72 : t72.clauses = ScoreNodes.c72 := by rfl

def t73 : Tree := .nil
theorem eq73 : t73.clauses = ScoreNodes.c73 := by rfl

def m74 : Tree := (.node 1 (.leaf [(127,true),(1549,true)]) (.node 1 (.leaf [(125,true),(1549,true)]) (.leaf [(125,true),(127,true),(1550,true)])))
theorem merge74 : m74.clauses = ScoreNodes.m74 := by rfl

def t74 : Tree := .node 0 (.node 0 t72 t73) m74
theorem eq74 : t74.clauses = ScoreNodes.c74 :=
  cat_eq _ (cat_eq _ eq72 eq73) merge74

def m75 : Tree := (.node 2 (.node 1 (.leaf [(1549,false),(1551,true)]) (.leaf [(1550,false),(1552,true)])) (.node 1 (.leaf [(123,true),(1551,true)]) (.node 1 (.leaf [(123,true),(1549,false),(1552,true)]) (.leaf [(123,true),(1550,false),(1553,true)]))))
theorem merge75 : m75.clauses = ScoreNodes.m75 := by rfl

def t75 : Tree := .node 3 (.node 0 t71 t74) m75
theorem eq75 : t75.clauses = ScoreNodes.c75 :=
  cat_eq _ (cat_eq _ eq71 eq74) merge75

def m76 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(1551,false),(1554,true)]) (.node 1 (.leaf [(1552,false),(1555,true)]) (.leaf [(1553,false),(1556,true)]))) (.node 2 (.node 1 (.leaf [(1546,false),(1554,true)]) (.leaf [(1546,false),(1551,false),(1555,true)])) (.node 1 (.leaf [(1546,false),(1552,false),(1556,true)]) (.leaf [(1546,false),(1553,false),(1557,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1547,false),(1555,true)]) (.leaf [(1547,false),(1551,false),(1556,true)])) (.node 1 (.leaf [(1547,false),(1552,false),(1557,true)]) (.leaf [(1547,false),(1553,false),(1558,true)]))) (.node 2 (.node 1 (.leaf [(1548,false),(1556,true)]) (.leaf [(1548,false),(1551,false),(1557,true)])) (.node 1 (.leaf [(1548,false),(1552,false),(1558,true)]) (.leaf [(1548,false),(1553,false),(1559,true)])))))
theorem merge76 : m76.clauses = ScoreNodes.m76 := by rfl

def t76 : Tree := .node 16 (.node 8 t70 t75) m76
theorem eq76 : t76.clauses = ScoreNodes.c76 :=
  cat_eq _ (cat_eq _ eq70 eq75) merge76

def t77 : Tree := .nil
theorem eq77 : t77.clauses = ScoreNodes.c77 := by rfl

def t78 : Tree := .nil
theorem eq78 : t78.clauses = ScoreNodes.c78 := by rfl

def t79 : Tree := .nil
theorem eq79 : t79.clauses = ScoreNodes.c79 := by rfl

def m80 : Tree := (.node 1 (.leaf [(133,true),(1560,true)]) (.node 1 (.leaf [(131,true),(1560,true)]) (.leaf [(131,true),(133,true),(1561,true)])))
theorem merge80 : m80.clauses = ScoreNodes.m80 := by rfl

def t80 : Tree := .node 0 (.node 0 t78 t79) m80
theorem eq80 : t80.clauses = ScoreNodes.c80 :=
  cat_eq _ (cat_eq _ eq78 eq79) merge80

def m81 : Tree := (.node 2 (.node 1 (.leaf [(1560,false),(1562,true)]) (.leaf [(1561,false),(1563,true)])) (.node 1 (.leaf [(129,true),(1562,true)]) (.node 1 (.leaf [(129,true),(1560,false),(1563,true)]) (.leaf [(129,true),(1561,false),(1564,true)]))))
theorem merge81 : m81.clauses = ScoreNodes.m81 := by rfl

def t81 : Tree := .node 3 (.node 0 t77 t80) m81
theorem eq81 : t81.clauses = ScoreNodes.c81 :=
  cat_eq _ (cat_eq _ eq77 eq80) merge81

def t82 : Tree := .nil
theorem eq82 : t82.clauses = ScoreNodes.c82 := by rfl

def t83 : Tree := .nil
theorem eq83 : t83.clauses = ScoreNodes.c83 := by rfl

def t84 : Tree := .nil
theorem eq84 : t84.clauses = ScoreNodes.c84 := by rfl

def m85 : Tree := (.node 1 (.leaf [(141,true),(1565,true)]) (.node 1 (.leaf [(139,true),(1565,true)]) (.leaf [(139,true),(141,true),(1566,true)])))
theorem merge85 : m85.clauses = ScoreNodes.m85 := by rfl

def t85 : Tree := .node 0 (.node 0 t83 t84) m85
theorem eq85 : t85.clauses = ScoreNodes.c85 :=
  cat_eq _ (cat_eq _ eq83 eq84) merge85


end EncloseHorse.Certificate.Generated.Daily20260310.Lookup
