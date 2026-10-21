import EncloseHorseVerified.Certificate.Generated.Daily20260107.LookupBase

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.Lookup

def t0 : Tree := .nil
theorem eq0 : t0.clauses = ScoreNodes.c0 := by rfl

def t1 : Tree := .nil
theorem eq1 : t1.clauses = ScoreNodes.c1 := by rfl

def m2 : Tree := (.node 1 (.leaf [(7,true),(819,true)]) (.node 1 (.leaf [(5,true),(819,true)]) (.leaf [(5,true),(7,true),(820,true)])))
theorem merge2 : m2.clauses = ScoreNodes.m2 := by rfl

def t2 : Tree := .node 0 (.node 0 t0 t1) m2
theorem eq2 : t2.clauses = ScoreNodes.c2 :=
  cat_eq _ (cat_eq _ eq0 eq1) merge2

def t3 : Tree := .nil
theorem eq3 : t3.clauses = ScoreNodes.c3 := by rfl

def t4 : Tree := .nil
theorem eq4 : t4.clauses = ScoreNodes.c4 := by rfl

def m5 : Tree := (.node 1 (.leaf [(27,true),(821,true)]) (.node 1 (.leaf [(15,true),(821,true)]) (.leaf [(15,true),(27,true),(822,true)])))
theorem merge5 : m5.clauses = ScoreNodes.m5 := by rfl

def t5 : Tree := .node 0 (.node 0 t3 t4) m5
theorem eq5 : t5.clauses = ScoreNodes.c5 :=
  cat_eq _ (cat_eq _ eq3 eq4) merge5

def m6 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(821,false),(823,true)]) (.leaf [(822,false),(824,true)])) (.node 1 (.leaf [(819,false),(823,true)]) (.leaf [(819,false),(821,false),(824,true)]))) (.node 2 (.node 1 (.leaf [(819,false),(822,false),(825,true)]) (.leaf [(820,false),(824,true)])) (.node 1 (.leaf [(820,false),(821,false),(825,true)]) (.leaf [(820,false),(822,false),(826,true)]))))
theorem merge6 : m6.clauses = ScoreNodes.m6 := by rfl

def t6 : Tree := .node 6 (.node 3 t2 t5) m6
theorem eq6 : t6.clauses = ScoreNodes.c6 :=
  cat_eq _ (cat_eq _ eq2 eq5) merge6

def m7 : Tree := (.node 1 (.leaf [(27,true),(827,true)]) (.node 1 (.leaf [(27,true),(827,true)]) (.leaf [(27,true),(27,true),(828,true)])))
theorem merge7 : m7.clauses = ScoreNodes.m7 := by rfl

def t7 : Tree := .node 0 (.node 0 t4 t4) m7
theorem eq7 : t7.clauses = ScoreNodes.c7 :=
  cat_eq _ (cat_eq _ eq4 eq4) merge7

def t8 : Tree := .nil
theorem eq8 : t8.clauses = ScoreNodes.c8 := by rfl

def t9 : Tree := .nil
theorem eq9 : t9.clauses = ScoreNodes.c9 := by rfl

def m10 : Tree := (.node 1 (.leaf [(31,true),(829,true)]) (.node 1 (.leaf [(29,true),(829,true)]) (.leaf [(29,true),(31,true),(830,true)])))
theorem merge10 : m10.clauses = ScoreNodes.m10 := by rfl

def t10 : Tree := .node 0 (.node 0 t8 t9) m10
theorem eq10 : t10.clauses = ScoreNodes.c10 :=
  cat_eq _ (cat_eq _ eq8 eq9) merge10

def m11 : Tree := (.node 2 (.node 1 (.leaf [(829,false),(831,true)]) (.leaf [(830,false),(832,true)])) (.node 1 (.leaf [(27,true),(831,true)]) (.node 1 (.leaf [(27,true),(829,false),(832,true)]) (.leaf [(27,true),(830,false),(833,true)]))))
theorem merge11 : m11.clauses = ScoreNodes.m11 := by rfl

def t11 : Tree := .node 3 (.node 0 t4 t10) m11
theorem eq11 : t11.clauses = ScoreNodes.c11 :=
  cat_eq _ (cat_eq _ eq4 eq10) merge11

def m12 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(831,false),(834,true)]) (.leaf [(832,false),(835,true)])) (.node 1 (.leaf [(833,false),(836,true)]) (.node 1 (.leaf [(827,false),(834,true)]) (.leaf [(827,false),(831,false),(835,true)])))) (.node 3 (.node 1 (.leaf [(827,false),(832,false),(836,true)]) (.node 1 (.leaf [(827,false),(833,false),(837,true)]) (.leaf [(828,false),(835,true)]))) (.node 1 (.leaf [(828,false),(831,false),(836,true)]) (.node 1 (.leaf [(828,false),(832,false),(837,true)]) (.leaf [(828,false),(833,false),(838,true)])))))
theorem merge12 : m12.clauses = ScoreNodes.m12 := by rfl

def t12 : Tree := .node 11 (.node 3 t7 t11) m12
theorem eq12 : t12.clauses = ScoreNodes.c12 :=
  cat_eq _ (cat_eq _ eq7 eq11) merge12

def m13 : Tree := (.node 14 (.node 7 (.node 3 (.node 1 (.leaf [(834,false),(839,true)]) (.node 1 (.leaf [(835,false),(840,true)]) (.leaf [(836,false),(841,true)]))) (.node 2 (.node 1 (.leaf [(837,false),(842,true)]) (.leaf [(838,false),(843,true)])) (.node 1 (.leaf [(823,false),(839,true)]) (.leaf [(823,false),(834,false),(840,true)])))) (.node 3 (.node 1 (.leaf [(823,false),(835,false),(841,true)]) (.node 1 (.leaf [(823,false),(836,false),(842,true)]) (.leaf [(823,false),(837,false),(843,true)]))) (.node 2 (.node 1 (.leaf [(823,false),(838,false),(844,true)]) (.leaf [(824,false),(840,true)])) (.node 1 (.leaf [(824,false),(834,false),(841,true)]) (.leaf [(824,false),(835,false),(842,true)]))))) (.node 7 (.node 3 (.node 1 (.leaf [(824,false),(836,false),(843,true)]) (.node 1 (.leaf [(824,false),(837,false),(844,true)]) (.leaf [(824,false),(838,false),(845,true)]))) (.node 2 (.node 1 (.leaf [(825,false),(841,true)]) (.leaf [(825,false),(834,false),(842,true)])) (.node 1 (.leaf [(825,false),(835,false),(843,true)]) (.leaf [(825,false),(836,false),(844,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(825,false),(837,false),(845,true)]) (.leaf [(825,false),(838,false),(846,true)])) (.node 1 (.leaf [(826,false),(842,true)]) (.leaf [(826,false),(834,false),(843,true)]))) (.node 2 (.node 1 (.leaf [(826,false),(835,false),(844,true)]) (.leaf [(826,false),(836,false),(845,true)])) (.node 1 (.leaf [(826,false),(837,false),(846,true)]) (.leaf [(826,false),(838,false),(847,true)]))))))
theorem merge13 : m13.clauses = ScoreNodes.m13 := by rfl

def t13 : Tree := .node 36 (.node 14 t6 t12) m13
theorem eq13 : t13.clauses = ScoreNodes.c13 :=
  cat_eq _ (cat_eq _ eq6 eq12) merge13

def m14 : Tree := (.node 1 (.leaf [(31,true),(848,true)]) (.node 1 (.leaf [(31,true),(848,true)]) (.leaf [(31,true),(31,true),(849,true)])))
theorem merge14 : m14.clauses = ScoreNodes.m14 := by rfl

def t14 : Tree := .node 0 (.node 0 t9 t9) m14
theorem eq14 : t14.clauses = ScoreNodes.c14 :=
  cat_eq _ (cat_eq _ eq9 eq9) merge14

def t15 : Tree := .nil
theorem eq15 : t15.clauses = ScoreNodes.c15 := by rfl

def m16 : Tree := (.node 1 (.leaf [(33,true),(850,true)]) (.node 1 (.leaf [(31,true),(850,true)]) (.leaf [(31,true),(33,true),(851,true)])))
theorem merge16 : m16.clauses = ScoreNodes.m16 := by rfl

def t16 : Tree := .node 0 (.node 0 t9 t15) m16
theorem eq16 : t16.clauses = ScoreNodes.c16 :=
  cat_eq _ (cat_eq _ eq9 eq15) merge16


end EncloseHorse.Certificate.Generated.Daily20260107.Lookup
