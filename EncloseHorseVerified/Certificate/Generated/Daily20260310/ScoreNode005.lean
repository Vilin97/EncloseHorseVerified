import EncloseHorseVerified.Certificate.Generated.Daily20260310.ScoreNode004

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes

def t104 : CounterTree := .node [1671,1672,1673] t100 t103
def m104 : CNF := [[(1669,false),(1671,true)],[(1670,false),(1672,true)],[(175,true),(1671,true)],[(175,true),(1669,false),(1672,true)],[(175,true),(1670,false),(1673,true)]]
theorem merge104 : mergeClauses t100.outputLits t103.outputLits [1671,1672,1673] = m104 := by rfl

def c104 : CNF := c100 ++ c103 ++ m104
theorem eq104 : t104.clauses = c104 := by
  change t100.clauses ++ t103.clauses ++ mergeClauses t100.outputLits t103.outputLits [1671,1672,1673] = c104
  exact concat3_congr eq100 eq103 merge104

def t105 : CounterTree := .leaf (183,false)
def c105 : CNF := []
theorem eq105 : t105.clauses = c105 := rfl

def t106 : CounterTree := .leaf (185,false)
def c106 : CNF := []
theorem eq106 : t106.clauses = c106 := rfl

def t107 : CounterTree := .leaf (187,false)
def c107 : CNF := []
theorem eq107 : t107.clauses = c107 := rfl

def t108 : CounterTree := .node [1674,1675] t106 t107
def m108 : CNF := [[(187,true),(1674,true)],[(185,true),(1674,true)],[(185,true),(187,true),(1675,true)]]
theorem merge108 : mergeClauses t106.outputLits t107.outputLits [1674,1675] = m108 := by rfl

def c108 : CNF := c106 ++ c107 ++ m108
theorem eq108 : t108.clauses = c108 := by
  change t106.clauses ++ t107.clauses ++ mergeClauses t106.outputLits t107.outputLits [1674,1675] = c108
  exact concat3_congr eq106 eq107 merge108

def t109 : CounterTree := .node [1676,1677,1678] t105 t108
def m109 : CNF := [[(1674,false),(1676,true)],[(1675,false),(1677,true)],[(183,true),(1676,true)],[(183,true),(1674,false),(1677,true)],[(183,true),(1675,false),(1678,true)]]
theorem merge109 : mergeClauses t105.outputLits t108.outputLits [1676,1677,1678] = m109 := by rfl

def c109 : CNF := c105 ++ c108 ++ m109
theorem eq109 : t109.clauses = c109 := by
  change t105.clauses ++ t108.clauses ++ mergeClauses t105.outputLits t108.outputLits [1676,1677,1678] = c109
  exact concat3_congr eq105 eq108 merge109

def t110 : CounterTree := .node [1679,1680,1681,1682,1683,1684] t104 t109
def m110 : CNF := [[(1676,false),(1679,true)],[(1677,false),(1680,true)],[(1678,false),(1681,true)],[(1671,false),(1679,true)],[(1671,false),(1676,false),(1680,true)],[(1671,false),(1677,false),(1681,true)],[(1671,false),(1678,false),(1682,true)],[(1672,false),(1680,true)],[(1672,false),(1676,false),(1681,true)],[(1672,false),(1677,false),(1682,true)],[(1672,false),(1678,false),(1683,true)],[(1673,false),(1681,true)],[(1673,false),(1676,false),(1682,true)],[(1673,false),(1677,false),(1683,true)],[(1673,false),(1678,false),(1684,true)]]
theorem merge110 : mergeClauses t104.outputLits t109.outputLits [1679,1680,1681,1682,1683,1684] = m110 := by rfl

def c110 : CNF := c104 ++ c109 ++ m110
theorem eq110 : t110.clauses = c110 := by
  change t104.clauses ++ t109.clauses ++ mergeClauses t104.outputLits t109.outputLits [1679,1680,1681,1682,1683,1684] = c110
  exact concat3_congr eq104 eq109 merge110

def t111 : CounterTree := .node [1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695] t99 t110
def m111 : CNF := [[(1679,false),(1685,true)],[(1680,false),(1686,true)],[(1681,false),(1687,true)],[(1682,false),(1688,true)],[(1683,false),(1689,true)],[(1684,false),(1690,true)],[(1664,false),(1685,true)],[(1664,false),(1679,false),(1686,true)],[(1664,false),(1680,false),(1687,true)],[(1664,false),(1681,false),(1688,true)],[(1664,false),(1682,false),(1689,true)],[(1664,false),(1683,false),(1690,true)],[(1664,false),(1684,false),(1691,true)],[(1665,false),(1686,true)],[(1665,false),(1679,false),(1687,true)],[(1665,false),(1680,false),(1688,true)],[(1665,false),(1681,false),(1689,true)],[(1665,false),(1682,false),(1690,true)],[(1665,false),(1683,false),(1691,true)],[(1665,false),(1684,false),(1692,true)],[(1666,false),(1687,true)],[(1666,false),(1679,false),(1688,true)],[(1666,false),(1680,false),(1689,true)],[(1666,false),(1681,false),(1690,true)],[(1666,false),(1682,false),(1691,true)],[(1666,false),(1683,false),(1692,true)],[(1666,false),(1684,false),(1693,true)],[(1667,false),(1688,true)],[(1667,false),(1679,false),(1689,true)],[(1667,false),(1680,false),(1690,true)],[(1667,false),(1681,false),(1691,true)],[(1667,false),(1682,false),(1692,true)],[(1667,false),(1683,false),(1693,true)],[(1667,false),(1684,false),(1694,true)],[(1668,false),(1689,true)],[(1668,false),(1679,false),(1690,true)],[(1668,false),(1680,false),(1691,true)],[(1668,false),(1681,false),(1692,true)],[(1668,false),(1682,false),(1693,true)],[(1668,false),(1683,false),(1694,true)],[(1668,false),(1684,false),(1695,true)]]
theorem merge111 : mergeClauses t99.outputLits t110.outputLits [1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695] = m111 := by rfl

def c111 : CNF := c99 ++ c110 ++ m111
theorem eq111 : t111.clauses = c111 := by
  change t99.clauses ++ t110.clauses ++ mergeClauses t99.outputLits t110.outputLits [1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695] = c111
  exact concat3_congr eq99 eq110 merge111

def t112 : CounterTree := .leaf (189,false)
def c112 : CNF := []
theorem eq112 : t112.clauses = c112 := rfl

def t113 : CounterTree := .leaf (191,false)
def c113 : CNF := []
theorem eq113 : t113.clauses = c113 := rfl

def t114 : CounterTree := .leaf (193,false)
def c114 : CNF := []
theorem eq114 : t114.clauses = c114 := rfl

def t115 : CounterTree := .node [1696,1697] t113 t114
def m115 : CNF := [[(193,true),(1696,true)],[(191,true),(1696,true)],[(191,true),(193,true),(1697,true)]]
theorem merge115 : mergeClauses t113.outputLits t114.outputLits [1696,1697] = m115 := by rfl

def c115 : CNF := c113 ++ c114 ++ m115
theorem eq115 : t115.clauses = c115 := by
  change t113.clauses ++ t114.clauses ++ mergeClauses t113.outputLits t114.outputLits [1696,1697] = c115
  exact concat3_congr eq113 eq114 merge115

def t116 : CounterTree := .node [1698,1699,1700] t112 t115
def m116 : CNF := [[(1696,false),(1698,true)],[(1697,false),(1699,true)],[(189,true),(1698,true)],[(189,true),(1696,false),(1699,true)],[(189,true),(1697,false),(1700,true)]]
theorem merge116 : mergeClauses t112.outputLits t115.outputLits [1698,1699,1700] = m116 := by rfl

def c116 : CNF := c112 ++ c115 ++ m116
theorem eq116 : t116.clauses = c116 := by
  change t112.clauses ++ t115.clauses ++ mergeClauses t112.outputLits t115.outputLits [1698,1699,1700] = c116
  exact concat3_congr eq112 eq115 merge116

def t117 : CounterTree := .leaf (195,false)
def c117 : CNF := []
theorem eq117 : t117.clauses = c117 := rfl

def t118 : CounterTree := .leaf (199,false)
def c118 : CNF := []
theorem eq118 : t118.clauses = c118 := rfl

def t119 : CounterTree := .leaf (201,false)
def c119 : CNF := []
theorem eq119 : t119.clauses = c119 := rfl

def t120 : CounterTree := .node [1701,1702] t118 t119
def m120 : CNF := [[(201,true),(1701,true)],[(199,true),(1701,true)],[(199,true),(201,true),(1702,true)]]
theorem merge120 : mergeClauses t118.outputLits t119.outputLits [1701,1702] = m120 := by rfl

def c120 : CNF := c118 ++ c119 ++ m120
theorem eq120 : t120.clauses = c120 := by
  change t118.clauses ++ t119.clauses ++ mergeClauses t118.outputLits t119.outputLits [1701,1702] = c120
  exact concat3_congr eq118 eq119 merge120

def t121 : CounterTree := .node [1703,1704,1705] t117 t120
def m121 : CNF := [[(1701,false),(1703,true)],[(1702,false),(1704,true)],[(195,true),(1703,true)],[(195,true),(1701,false),(1704,true)],[(195,true),(1702,false),(1705,true)]]
theorem merge121 : mergeClauses t117.outputLits t120.outputLits [1703,1704,1705] = m121 := by rfl

def c121 : CNF := c117 ++ c120 ++ m121
theorem eq121 : t121.clauses = c121 := by
  change t117.clauses ++ t120.clauses ++ mergeClauses t117.outputLits t120.outputLits [1703,1704,1705] = c121
  exact concat3_congr eq117 eq120 merge121

def t122 : CounterTree := .node [1706,1707,1708,1709,1710,1711] t116 t121
def m122 : CNF := [[(1703,false),(1706,true)],[(1704,false),(1707,true)],[(1705,false),(1708,true)],[(1698,false),(1706,true)],[(1698,false),(1703,false),(1707,true)],[(1698,false),(1704,false),(1708,true)],[(1698,false),(1705,false),(1709,true)],[(1699,false),(1707,true)],[(1699,false),(1703,false),(1708,true)],[(1699,false),(1704,false),(1709,true)],[(1699,false),(1705,false),(1710,true)],[(1700,false),(1708,true)],[(1700,false),(1703,false),(1709,true)],[(1700,false),(1704,false),(1710,true)],[(1700,false),(1705,false),(1711,true)]]
theorem merge122 : mergeClauses t116.outputLits t121.outputLits [1706,1707,1708,1709,1710,1711] = m122 := by rfl

def c122 : CNF := c116 ++ c121 ++ m122
theorem eq122 : t122.clauses = c122 := by
  change t116.clauses ++ t121.clauses ++ mergeClauses t116.outputLits t121.outputLits [1706,1707,1708,1709,1710,1711] = c122
  exact concat3_congr eq116 eq121 merge122


end EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes
