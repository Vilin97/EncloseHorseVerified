import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode002

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t41 : CounterTree := .leaf (81,false)
def c41 : CNF := []
theorem eq41 : t41.clauses = c41 := rfl
def t42 : CounterTree := .node [1670,1671] t41 t41
def m42 : CNF := [[(81,true),(1670,true)],[(81,true),(1670,true)],[(81,true),(81,true),(1671,true)]]
theorem merge42 : mergeClauses t41.outputLits t41.outputLits [1670,1671] = m42 := by
  rfl

def c42 : CNF := c41 ++ c41 ++ m42
theorem eq42 : t42.clauses = c42 := by
  change t41.clauses ++ t41.clauses ++ mergeClauses t41.outputLits t41.outputLits [1670,1671] = c42
  exact concat3_congr eq41 eq41 merge42
def t43 : CounterTree := .node [1672,1673,1674] t34 t42
def m43 : CNF := [[(1670,false),(1672,true)],[(1671,false),(1673,true)],[(79,true),(1672,true)],[(79,true),(1670,false),(1673,true)],[(79,true),(1671,false),(1674,true)]]
theorem merge43 : mergeClauses t34.outputLits t42.outputLits [1672,1673,1674] = m43 := by
  rfl

def c43 : CNF := c34 ++ c42 ++ m43
theorem eq43 : t43.clauses = c43 := by
  change t34.clauses ++ t42.clauses ++ mergeClauses t34.outputLits t42.outputLits [1672,1673,1674] = c43
  exact concat3_congr eq34 eq42 merge43
def t44 : CounterTree := .node [1675,1676] t41 t41
def m44 : CNF := [[(81,true),(1675,true)],[(81,true),(1675,true)],[(81,true),(81,true),(1676,true)]]
theorem merge44 : mergeClauses t41.outputLits t41.outputLits [1675,1676] = m44 := by
  rfl

def c44 : CNF := c41 ++ c41 ++ m44
theorem eq44 : t44.clauses = c44 := by
  change t41.clauses ++ t41.clauses ++ mergeClauses t41.outputLits t41.outputLits [1675,1676] = c44
  exact concat3_congr eq41 eq41 merge44
def t45 : CounterTree := .leaf (83,false)
def c45 : CNF := []
theorem eq45 : t45.clauses = c45 := rfl
def t46 : CounterTree := .node [1677,1678] t45 t45
def m46 : CNF := [[(83,true),(1677,true)],[(83,true),(1677,true)],[(83,true),(83,true),(1678,true)]]
theorem merge46 : mergeClauses t45.outputLits t45.outputLits [1677,1678] = m46 := by
  rfl

def c46 : CNF := c45 ++ c45 ++ m46
theorem eq46 : t46.clauses = c46 := by
  change t45.clauses ++ t45.clauses ++ mergeClauses t45.outputLits t45.outputLits [1677,1678] = c46
  exact concat3_congr eq45 eq45 merge46
def t47 : CounterTree := .node [1679,1680,1681,1682] t44 t46
def m47 : CNF := [[(1677,false),(1679,true)],[(1678,false),(1680,true)],[(1675,false),(1679,true)],[(1675,false),(1677,false),(1680,true)],[(1675,false),(1678,false),(1681,true)],[(1676,false),(1680,true)],[(1676,false),(1677,false),(1681,true)],[(1676,false),(1678,false),(1682,true)]]
theorem merge47 : mergeClauses t44.outputLits t46.outputLits [1679,1680,1681,1682] = m47 := by
  rfl

def c47 : CNF := c44 ++ c46 ++ m47
theorem eq47 : t47.clauses = c47 := by
  change t44.clauses ++ t46.clauses ++ mergeClauses t44.outputLits t46.outputLits [1679,1680,1681,1682] = c47
  exact concat3_congr eq44 eq46 merge47
def t48 : CounterTree := .node [1683,1684,1685,1686,1687,1688,1689] t43 t47
def m48 : CNF := [[(1679,false),(1683,true)],[(1680,false),(1684,true)],[(1681,false),(1685,true)],[(1682,false),(1686,true)],[(1672,false),(1683,true)],[(1672,false),(1679,false),(1684,true)],[(1672,false),(1680,false),(1685,true)],[(1672,false),(1681,false),(1686,true)],[(1672,false),(1682,false),(1687,true)],[(1673,false),(1684,true)],[(1673,false),(1679,false),(1685,true)],[(1673,false),(1680,false),(1686,true)],[(1673,false),(1681,false),(1687,true)],[(1673,false),(1682,false),(1688,true)],[(1674,false),(1685,true)],[(1674,false),(1679,false),(1686,true)],[(1674,false),(1680,false),(1687,true)],[(1674,false),(1681,false),(1688,true)],[(1674,false),(1682,false),(1689,true)]]
theorem merge48 : mergeClauses t43.outputLits t47.outputLits [1683,1684,1685,1686,1687,1688,1689] = m48 := by
  rfl

def c48 : CNF := c43 ++ c47 ++ m48
theorem eq48 : t48.clauses = c48 := by
  change t43.clauses ++ t47.clauses ++ mergeClauses t43.outputLits t47.outputLits [1683,1684,1685,1686,1687,1688,1689] = c48
  exact concat3_congr eq43 eq47 merge48
def t49 : CounterTree := .node [1690,1691] t45 t45
def m49 : CNF := [[(83,true),(1690,true)],[(83,true),(1690,true)],[(83,true),(83,true),(1691,true)]]
theorem merge49 : mergeClauses t45.outputLits t45.outputLits [1690,1691] = m49 := by
  rfl

def c49 : CNF := c45 ++ c45 ++ m49
theorem eq49 : t49.clauses = c49 := by
  change t45.clauses ++ t45.clauses ++ mergeClauses t45.outputLits t45.outputLits [1690,1691] = c49
  exact concat3_congr eq45 eq45 merge49
def t50 : CounterTree := .leaf (89,false)
def c50 : CNF := []
theorem eq50 : t50.clauses = c50 := rfl
def t51 : CounterTree := .node [1692,1693] t50 t50
def m51 : CNF := [[(89,true),(1692,true)],[(89,true),(1692,true)],[(89,true),(89,true),(1693,true)]]
theorem merge51 : mergeClauses t50.outputLits t50.outputLits [1692,1693] = m51 := by
  rfl

def c51 : CNF := c50 ++ c50 ++ m51
theorem eq51 : t51.clauses = c51 := by
  change t50.clauses ++ t50.clauses ++ mergeClauses t50.outputLits t50.outputLits [1692,1693] = c51
  exact concat3_congr eq50 eq50 merge51
def t52 : CounterTree := .node [1694,1695,1696,1697] t49 t51
def m52 : CNF := [[(1692,false),(1694,true)],[(1693,false),(1695,true)],[(1690,false),(1694,true)],[(1690,false),(1692,false),(1695,true)],[(1690,false),(1693,false),(1696,true)],[(1691,false),(1695,true)],[(1691,false),(1692,false),(1696,true)],[(1691,false),(1693,false),(1697,true)]]
theorem merge52 : mergeClauses t49.outputLits t51.outputLits [1694,1695,1696,1697] = m52 := by
  rfl

def c52 : CNF := c49 ++ c51 ++ m52
theorem eq52 : t52.clauses = c52 := by
  change t49.clauses ++ t51.clauses ++ mergeClauses t49.outputLits t51.outputLits [1694,1695,1696,1697] = c52
  exact concat3_congr eq49 eq51 merge52
def t53 : CounterTree := .node [1698,1699] t50 t50
def m53 : CNF := [[(89,true),(1698,true)],[(89,true),(1698,true)],[(89,true),(89,true),(1699,true)]]
theorem merge53 : mergeClauses t50.outputLits t50.outputLits [1698,1699] = m53 := by
  rfl

def c53 : CNF := c50 ++ c50 ++ m53
theorem eq53 : t53.clauses = c53 := by
  change t50.clauses ++ t50.clauses ++ mergeClauses t50.outputLits t50.outputLits [1698,1699] = c53
  exact concat3_congr eq50 eq50 merge53

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
