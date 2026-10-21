import EncloseHorseVerified.Certificate.Generated.Daily20260310.ScoreNode000

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes

def t21 : CounterTree := .leaf (53,false)
def c21 : CNF := []
theorem eq21 : t21.clauses = c21 := rfl

def t22 : CounterTree := .leaf (55,false)
def c22 : CNF := []
theorem eq22 : t22.clauses = c22 := rfl

def t23 : CounterTree := .leaf (57,false)
def c23 : CNF := []
theorem eq23 : t23.clauses = c23 := rfl

def t24 : CounterTree := .node [1438,1439] t22 t23
def m24 : CNF := [[(57,true),(1438,true)],[(55,true),(1438,true)],[(55,true),(57,true),(1439,true)]]
theorem merge24 : mergeClauses t22.outputLits t23.outputLits [1438,1439] = m24 := by rfl

def c24 : CNF := c22 ++ c23 ++ m24
theorem eq24 : t24.clauses = c24 := by
  change t22.clauses ++ t23.clauses ++ mergeClauses t22.outputLits t23.outputLits [1438,1439] = c24
  exact concat3_congr eq22 eq23 merge24

def t25 : CounterTree := .node [1440,1441,1442] t21 t24
def m25 : CNF := [[(1438,false),(1440,true)],[(1439,false),(1441,true)],[(53,true),(1440,true)],[(53,true),(1438,false),(1441,true)],[(53,true),(1439,false),(1442,true)]]
theorem merge25 : mergeClauses t21.outputLits t24.outputLits [1440,1441,1442] = m25 := by rfl

def c25 : CNF := c21 ++ c24 ++ m25
theorem eq25 : t25.clauses = c25 := by
  change t21.clauses ++ t24.clauses ++ mergeClauses t21.outputLits t24.outputLits [1440,1441,1442] = c25
  exact concat3_congr eq21 eq24 merge25

def t26 : CounterTree := .leaf (59,false)
def c26 : CNF := []
theorem eq26 : t26.clauses = c26 := rfl

def t27 : CounterTree := .leaf (61,false)
def c27 : CNF := []
theorem eq27 : t27.clauses = c27 := rfl

def t28 : CounterTree := .leaf (63,false)
def c28 : CNF := []
theorem eq28 : t28.clauses = c28 := rfl

def t29 : CounterTree := .node [1443,1444] t27 t28
def m29 : CNF := [[(63,true),(1443,true)],[(61,true),(1443,true)],[(61,true),(63,true),(1444,true)]]
theorem merge29 : mergeClauses t27.outputLits t28.outputLits [1443,1444] = m29 := by rfl

def c29 : CNF := c27 ++ c28 ++ m29
theorem eq29 : t29.clauses = c29 := by
  change t27.clauses ++ t28.clauses ++ mergeClauses t27.outputLits t28.outputLits [1443,1444] = c29
  exact concat3_congr eq27 eq28 merge29

def t30 : CounterTree := .node [1445,1446,1447] t26 t29
def m30 : CNF := [[(1443,false),(1445,true)],[(1444,false),(1446,true)],[(59,true),(1445,true)],[(59,true),(1443,false),(1446,true)],[(59,true),(1444,false),(1447,true)]]
theorem merge30 : mergeClauses t26.outputLits t29.outputLits [1445,1446,1447] = m30 := by rfl

def c30 : CNF := c26 ++ c29 ++ m30
theorem eq30 : t30.clauses = c30 := by
  change t26.clauses ++ t29.clauses ++ mergeClauses t26.outputLits t29.outputLits [1445,1446,1447] = c30
  exact concat3_congr eq26 eq29 merge30

def t31 : CounterTree := .node [1448,1449,1450,1451,1452,1453] t25 t30
def m31 : CNF := [[(1445,false),(1448,true)],[(1446,false),(1449,true)],[(1447,false),(1450,true)],[(1440,false),(1448,true)],[(1440,false),(1445,false),(1449,true)],[(1440,false),(1446,false),(1450,true)],[(1440,false),(1447,false),(1451,true)],[(1441,false),(1449,true)],[(1441,false),(1445,false),(1450,true)],[(1441,false),(1446,false),(1451,true)],[(1441,false),(1447,false),(1452,true)],[(1442,false),(1450,true)],[(1442,false),(1445,false),(1451,true)],[(1442,false),(1446,false),(1452,true)],[(1442,false),(1447,false),(1453,true)]]
theorem merge31 : mergeClauses t25.outputLits t30.outputLits [1448,1449,1450,1451,1452,1453] = m31 := by rfl

def c31 : CNF := c25 ++ c30 ++ m31
theorem eq31 : t31.clauses = c31 := by
  change t25.clauses ++ t30.clauses ++ mergeClauses t25.outputLits t30.outputLits [1448,1449,1450,1451,1452,1453] = c31
  exact concat3_congr eq25 eq30 merge31

def t32 : CounterTree := .leaf (65,false)
def c32 : CNF := []
theorem eq32 : t32.clauses = c32 := rfl

def t33 : CounterTree := .leaf (71,false)
def c33 : CNF := []
theorem eq33 : t33.clauses = c33 := rfl

def t34 : CounterTree := .leaf (77,false)
def c34 : CNF := []
theorem eq34 : t34.clauses = c34 := rfl

def t35 : CounterTree := .node [1454,1455] t33 t34
def m35 : CNF := [[(77,true),(1454,true)],[(71,true),(1454,true)],[(71,true),(77,true),(1455,true)]]
theorem merge35 : mergeClauses t33.outputLits t34.outputLits [1454,1455] = m35 := by rfl

def c35 : CNF := c33 ++ c34 ++ m35
theorem eq35 : t35.clauses = c35 := by
  change t33.clauses ++ t34.clauses ++ mergeClauses t33.outputLits t34.outputLits [1454,1455] = c35
  exact concat3_congr eq33 eq34 merge35

def t36 : CounterTree := .node [1456,1457,1458] t32 t35
def m36 : CNF := [[(1454,false),(1456,true)],[(1455,false),(1457,true)],[(65,true),(1456,true)],[(65,true),(1454,false),(1457,true)],[(65,true),(1455,false),(1458,true)]]
theorem merge36 : mergeClauses t32.outputLits t35.outputLits [1456,1457,1458] = m36 := by rfl

def c36 : CNF := c32 ++ c35 ++ m36
theorem eq36 : t36.clauses = c36 := by
  change t32.clauses ++ t35.clauses ++ mergeClauses t32.outputLits t35.outputLits [1456,1457,1458] = c36
  exact concat3_congr eq32 eq35 merge36

def t37 : CounterTree := .leaf (79,false)
def c37 : CNF := []
theorem eq37 : t37.clauses = c37 := rfl

def t38 : CounterTree := .leaf (81,false)
def c38 : CNF := []
theorem eq38 : t38.clauses = c38 := rfl

def t39 : CounterTree := .leaf (85,false)
def c39 : CNF := []
theorem eq39 : t39.clauses = c39 := rfl

def t40 : CounterTree := .node [1459,1460] t38 t39
def m40 : CNF := [[(85,true),(1459,true)],[(81,true),(1459,true)],[(81,true),(85,true),(1460,true)]]
theorem merge40 : mergeClauses t38.outputLits t39.outputLits [1459,1460] = m40 := by rfl

def c40 : CNF := c38 ++ c39 ++ m40
theorem eq40 : t40.clauses = c40 := by
  change t38.clauses ++ t39.clauses ++ mergeClauses t38.outputLits t39.outputLits [1459,1460] = c40
  exact concat3_congr eq38 eq39 merge40

def t41 : CounterTree := .node [1461,1462,1463] t37 t40
def m41 : CNF := [[(1459,false),(1461,true)],[(1460,false),(1462,true)],[(79,true),(1461,true)],[(79,true),(1459,false),(1462,true)],[(79,true),(1460,false),(1463,true)]]
theorem merge41 : mergeClauses t37.outputLits t40.outputLits [1461,1462,1463] = m41 := by rfl

def c41 : CNF := c37 ++ c40 ++ m41
theorem eq41 : t41.clauses = c41 := by
  change t37.clauses ++ t40.clauses ++ mergeClauses t37.outputLits t40.outputLits [1461,1462,1463] = c41
  exact concat3_congr eq37 eq40 merge41

def t42 : CounterTree := .node [1464,1465,1466,1467,1468,1469] t36 t41
def m42 : CNF := [[(1461,false),(1464,true)],[(1462,false),(1465,true)],[(1463,false),(1466,true)],[(1456,false),(1464,true)],[(1456,false),(1461,false),(1465,true)],[(1456,false),(1462,false),(1466,true)],[(1456,false),(1463,false),(1467,true)],[(1457,false),(1465,true)],[(1457,false),(1461,false),(1466,true)],[(1457,false),(1462,false),(1467,true)],[(1457,false),(1463,false),(1468,true)],[(1458,false),(1466,true)],[(1458,false),(1461,false),(1467,true)],[(1458,false),(1462,false),(1468,true)],[(1458,false),(1463,false),(1469,true)]]
theorem merge42 : mergeClauses t36.outputLits t41.outputLits [1464,1465,1466,1467,1468,1469] = m42 := by rfl

def c42 : CNF := c36 ++ c41 ++ m42
theorem eq42 : t42.clauses = c42 := by
  change t36.clauses ++ t41.clauses ++ mergeClauses t36.outputLits t41.outputLits [1464,1465,1466,1467,1468,1469] = c42
  exact concat3_congr eq36 eq41 merge42


end EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes
