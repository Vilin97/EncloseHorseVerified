import EncloseHorseVerified.Certificate.Generated.Daily20260107.Counters

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes

theorem concat3_congr {a b c d e f : CNF} (h : a = b) (k : c = d) (l : e = f) :
    a ++ c ++ e = b ++ d ++ f := by
  cases h; cases k; cases l; rfl

def t0 : CounterTree := .leaf (5,false)
def c0 : CNF := []
theorem eq0 : t0.clauses = c0 := rfl

def t1 : CounterTree := .leaf (7,false)
def c1 : CNF := []
theorem eq1 : t1.clauses = c1 := rfl

def t2 : CounterTree := .node [819,820] t0 t1
def m2 : CNF := [[(7,true),(819,true)],[(5,true),(819,true)],[(5,true),(7,true),(820,true)]]
theorem merge2 : mergeClauses t0.outputLits t1.outputLits [819,820] = m2 := by rfl

def c2 : CNF := c0 ++ c1 ++ m2
theorem eq2 : t2.clauses = c2 := by
  change t0.clauses ++ t1.clauses ++ mergeClauses t0.outputLits t1.outputLits [819,820] = c2
  exact concat3_congr eq0 eq1 merge2

def t3 : CounterTree := .leaf (15,false)
def c3 : CNF := []
theorem eq3 : t3.clauses = c3 := rfl

def t4 : CounterTree := .leaf (27,false)
def c4 : CNF := []
theorem eq4 : t4.clauses = c4 := rfl

def t5 : CounterTree := .node [821,822] t3 t4
def m5 : CNF := [[(27,true),(821,true)],[(15,true),(821,true)],[(15,true),(27,true),(822,true)]]
theorem merge5 : mergeClauses t3.outputLits t4.outputLits [821,822] = m5 := by rfl

def c5 : CNF := c3 ++ c4 ++ m5
theorem eq5 : t5.clauses = c5 := by
  change t3.clauses ++ t4.clauses ++ mergeClauses t3.outputLits t4.outputLits [821,822] = c5
  exact concat3_congr eq3 eq4 merge5

def t6 : CounterTree := .node [823,824,825,826] t2 t5
def m6 : CNF := [[(821,false),(823,true)],[(822,false),(824,true)],[(819,false),(823,true)],[(819,false),(821,false),(824,true)],[(819,false),(822,false),(825,true)],[(820,false),(824,true)],[(820,false),(821,false),(825,true)],[(820,false),(822,false),(826,true)]]
theorem merge6 : mergeClauses t2.outputLits t5.outputLits [823,824,825,826] = m6 := by rfl

def c6 : CNF := c2 ++ c5 ++ m6
theorem eq6 : t6.clauses = c6 := by
  change t2.clauses ++ t5.clauses ++ mergeClauses t2.outputLits t5.outputLits [823,824,825,826] = c6
  exact concat3_congr eq2 eq5 merge6

def t7 : CounterTree := .node [827,828] t4 t4
def m7 : CNF := [[(27,true),(827,true)],[(27,true),(827,true)],[(27,true),(27,true),(828,true)]]
theorem merge7 : mergeClauses t4.outputLits t4.outputLits [827,828] = m7 := by rfl

def c7 : CNF := c4 ++ c4 ++ m7
theorem eq7 : t7.clauses = c7 := by
  change t4.clauses ++ t4.clauses ++ mergeClauses t4.outputLits t4.outputLits [827,828] = c7
  exact concat3_congr eq4 eq4 merge7

def t8 : CounterTree := .leaf (29,false)
def c8 : CNF := []
theorem eq8 : t8.clauses = c8 := rfl

def t9 : CounterTree := .leaf (31,false)
def c9 : CNF := []
theorem eq9 : t9.clauses = c9 := rfl

def t10 : CounterTree := .node [829,830] t8 t9
def m10 : CNF := [[(31,true),(829,true)],[(29,true),(829,true)],[(29,true),(31,true),(830,true)]]
theorem merge10 : mergeClauses t8.outputLits t9.outputLits [829,830] = m10 := by rfl

def c10 : CNF := c8 ++ c9 ++ m10
theorem eq10 : t10.clauses = c10 := by
  change t8.clauses ++ t9.clauses ++ mergeClauses t8.outputLits t9.outputLits [829,830] = c10
  exact concat3_congr eq8 eq9 merge10

def t11 : CounterTree := .node [831,832,833] t4 t10
def m11 : CNF := [[(829,false),(831,true)],[(830,false),(832,true)],[(27,true),(831,true)],[(27,true),(829,false),(832,true)],[(27,true),(830,false),(833,true)]]
theorem merge11 : mergeClauses t4.outputLits t10.outputLits [831,832,833] = m11 := by rfl

def c11 : CNF := c4 ++ c10 ++ m11
theorem eq11 : t11.clauses = c11 := by
  change t4.clauses ++ t10.clauses ++ mergeClauses t4.outputLits t10.outputLits [831,832,833] = c11
  exact concat3_congr eq4 eq10 merge11

def t12 : CounterTree := .node [834,835,836,837,838] t7 t11
def m12 : CNF := [[(831,false),(834,true)],[(832,false),(835,true)],[(833,false),(836,true)],[(827,false),(834,true)],[(827,false),(831,false),(835,true)],[(827,false),(832,false),(836,true)],[(827,false),(833,false),(837,true)],[(828,false),(835,true)],[(828,false),(831,false),(836,true)],[(828,false),(832,false),(837,true)],[(828,false),(833,false),(838,true)]]
theorem merge12 : mergeClauses t7.outputLits t11.outputLits [834,835,836,837,838] = m12 := by rfl

def c12 : CNF := c7 ++ c11 ++ m12
theorem eq12 : t12.clauses = c12 := by
  change t7.clauses ++ t11.clauses ++ mergeClauses t7.outputLits t11.outputLits [834,835,836,837,838] = c12
  exact concat3_congr eq7 eq11 merge12

def t13 : CounterTree := .node [839,840,841,842,843,844,845,846,847] t6 t12
def m13 : CNF := [[(834,false),(839,true)],[(835,false),(840,true)],[(836,false),(841,true)],[(837,false),(842,true)],[(838,false),(843,true)],[(823,false),(839,true)],[(823,false),(834,false),(840,true)],[(823,false),(835,false),(841,true)],[(823,false),(836,false),(842,true)],[(823,false),(837,false),(843,true)],[(823,false),(838,false),(844,true)],[(824,false),(840,true)],[(824,false),(834,false),(841,true)],[(824,false),(835,false),(842,true)],[(824,false),(836,false),(843,true)],[(824,false),(837,false),(844,true)],[(824,false),(838,false),(845,true)],[(825,false),(841,true)],[(825,false),(834,false),(842,true)],[(825,false),(835,false),(843,true)],[(825,false),(836,false),(844,true)],[(825,false),(837,false),(845,true)],[(825,false),(838,false),(846,true)],[(826,false),(842,true)],[(826,false),(834,false),(843,true)],[(826,false),(835,false),(844,true)],[(826,false),(836,false),(845,true)],[(826,false),(837,false),(846,true)],[(826,false),(838,false),(847,true)]]
theorem merge13 : mergeClauses t6.outputLits t12.outputLits [839,840,841,842,843,844,845,846,847] = m13 := by rfl

def c13 : CNF := c6 ++ c12 ++ m13
theorem eq13 : t13.clauses = c13 := by
  change t6.clauses ++ t12.clauses ++ mergeClauses t6.outputLits t12.outputLits [839,840,841,842,843,844,845,846,847] = c13
  exact concat3_congr eq6 eq12 merge13

def t14 : CounterTree := .node [848,849] t9 t9
def m14 : CNF := [[(31,true),(848,true)],[(31,true),(848,true)],[(31,true),(31,true),(849,true)]]
theorem merge14 : mergeClauses t9.outputLits t9.outputLits [848,849] = m14 := by rfl

def c14 : CNF := c9 ++ c9 ++ m14
theorem eq14 : t14.clauses = c14 := by
  change t9.clauses ++ t9.clauses ++ mergeClauses t9.outputLits t9.outputLits [848,849] = c14
  exact concat3_congr eq9 eq9 merge14

def t15 : CounterTree := .leaf (33,false)
def c15 : CNF := []
theorem eq15 : t15.clauses = c15 := rfl

def t16 : CounterTree := .node [850,851] t9 t15
def m16 : CNF := [[(33,true),(850,true)],[(31,true),(850,true)],[(31,true),(33,true),(851,true)]]
theorem merge16 : mergeClauses t9.outputLits t15.outputLits [850,851] = m16 := by rfl

def c16 : CNF := c9 ++ c15 ++ m16
theorem eq16 : t16.clauses = c16 := by
  change t9.clauses ++ t15.clauses ++ mergeClauses t9.outputLits t15.outputLits [850,851] = c16
  exact concat3_congr eq9 eq15 merge16


end EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes
