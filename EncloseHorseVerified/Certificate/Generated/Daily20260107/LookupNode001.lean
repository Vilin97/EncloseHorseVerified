import EncloseHorseVerified.Certificate.Generated.Daily20260107.LookupNode000

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.Lookup

def m17 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(850,false),(852,true)]) (.leaf [(851,false),(853,true)])) (.node 1 (.leaf [(848,false),(852,true)]) (.leaf [(848,false),(850,false),(853,true)]))) (.node 2 (.node 1 (.leaf [(848,false),(851,false),(854,true)]) (.leaf [(849,false),(853,true)])) (.node 1 (.leaf [(849,false),(850,false),(854,true)]) (.leaf [(849,false),(851,false),(855,true)]))))
theorem merge17 : m17.clauses = ScoreNodes.m17 := by rfl

def t17 : Tree := .node 6 (.node 3 t14 t16) m17
theorem eq17 : t17.clauses = ScoreNodes.c17 :=
  cat_eq _ (cat_eq _ eq14 eq16) merge17

def t18 : Tree := .nil
theorem eq18 : t18.clauses = ScoreNodes.c18 := by rfl

def t19 : Tree := .nil
theorem eq19 : t19.clauses = ScoreNodes.c19 := by rfl

def m20 : Tree := (.node 1 (.leaf [(37,true),(856,true)]) (.node 1 (.leaf [(35,true),(856,true)]) (.leaf [(35,true),(37,true),(857,true)])))
theorem merge20 : m20.clauses = ScoreNodes.m20 := by rfl

def t20 : Tree := .node 0 (.node 0 t18 t19) m20
theorem eq20 : t20.clauses = ScoreNodes.c20 :=
  cat_eq _ (cat_eq _ eq18 eq19) merge20

def t21 : Tree := .nil
theorem eq21 : t21.clauses = ScoreNodes.c21 := by rfl

def t22 : Tree := .nil
theorem eq22 : t22.clauses = ScoreNodes.c22 := by rfl

def t23 : Tree := .nil
theorem eq23 : t23.clauses = ScoreNodes.c23 := by rfl

def m24 : Tree := (.node 1 (.leaf [(43,true),(858,true)]) (.node 1 (.leaf [(41,true),(858,true)]) (.leaf [(41,true),(43,true),(859,true)])))
theorem merge24 : m24.clauses = ScoreNodes.m24 := by rfl

def t24 : Tree := .node 0 (.node 0 t22 t23) m24
theorem eq24 : t24.clauses = ScoreNodes.c24 :=
  cat_eq _ (cat_eq _ eq22 eq23) merge24

def m25 : Tree := (.node 2 (.node 1 (.leaf [(858,false),(860,true)]) (.leaf [(859,false),(861,true)])) (.node 1 (.leaf [(39,true),(860,true)]) (.node 1 (.leaf [(39,true),(858,false),(861,true)]) (.leaf [(39,true),(859,false),(862,true)]))))
theorem merge25 : m25.clauses = ScoreNodes.m25 := by rfl

def t25 : Tree := .node 3 (.node 0 t21 t24) m25
theorem eq25 : t25.clauses = ScoreNodes.c25 :=
  cat_eq _ (cat_eq _ eq21 eq24) merge25

def m26 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(860,false),(863,true)]) (.leaf [(861,false),(864,true)])) (.node 1 (.leaf [(862,false),(865,true)]) (.node 1 (.leaf [(856,false),(863,true)]) (.leaf [(856,false),(860,false),(864,true)])))) (.node 3 (.node 1 (.leaf [(856,false),(861,false),(865,true)]) (.node 1 (.leaf [(856,false),(862,false),(866,true)]) (.leaf [(857,false),(864,true)]))) (.node 1 (.leaf [(857,false),(860,false),(865,true)]) (.node 1 (.leaf [(857,false),(861,false),(866,true)]) (.leaf [(857,false),(862,false),(867,true)])))))
theorem merge26 : m26.clauses = ScoreNodes.m26 := by rfl

def t26 : Tree := .node 11 (.node 3 t20 t25) m26
theorem eq26 : t26.clauses = ScoreNodes.c26 :=
  cat_eq _ (cat_eq _ eq20 eq25) merge26

def m27 : Tree := (.node 14 (.node 7 (.node 3 (.node 1 (.leaf [(863,false),(868,true)]) (.node 1 (.leaf [(864,false),(869,true)]) (.leaf [(865,false),(870,true)]))) (.node 2 (.node 1 (.leaf [(866,false),(871,true)]) (.leaf [(867,false),(872,true)])) (.node 1 (.leaf [(852,false),(868,true)]) (.leaf [(852,false),(863,false),(869,true)])))) (.node 3 (.node 1 (.leaf [(852,false),(864,false),(870,true)]) (.node 1 (.leaf [(852,false),(865,false),(871,true)]) (.leaf [(852,false),(866,false),(872,true)]))) (.node 2 (.node 1 (.leaf [(852,false),(867,false),(873,true)]) (.leaf [(853,false),(869,true)])) (.node 1 (.leaf [(853,false),(863,false),(870,true)]) (.leaf [(853,false),(864,false),(871,true)]))))) (.node 7 (.node 3 (.node 1 (.leaf [(853,false),(865,false),(872,true)]) (.node 1 (.leaf [(853,false),(866,false),(873,true)]) (.leaf [(853,false),(867,false),(874,true)]))) (.node 2 (.node 1 (.leaf [(854,false),(870,true)]) (.leaf [(854,false),(863,false),(871,true)])) (.node 1 (.leaf [(854,false),(864,false),(872,true)]) (.leaf [(854,false),(865,false),(873,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(854,false),(866,false),(874,true)]) (.leaf [(854,false),(867,false),(875,true)])) (.node 1 (.leaf [(855,false),(871,true)]) (.leaf [(855,false),(863,false),(872,true)]))) (.node 2 (.node 1 (.leaf [(855,false),(864,false),(873,true)]) (.leaf [(855,false),(865,false),(874,true)])) (.node 1 (.leaf [(855,false),(866,false),(875,true)]) (.leaf [(855,false),(867,false),(876,true)]))))))
theorem merge27 : m27.clauses = ScoreNodes.m27 := by rfl

def t27 : Tree := .node 36 (.node 14 t17 t26) m27
theorem eq27 : t27.clauses = ScoreNodes.c27 :=
  cat_eq _ (cat_eq _ eq17 eq26) merge27

def m28 : Tree := (.node 49 (.node 24 (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(868,false),(877,true)]) (.node 1 (.leaf [(869,false),(878,true)]) (.leaf [(870,false),(879,true)]))) (.node 1 (.leaf [(871,false),(880,true)]) (.node 1 (.leaf [(872,false),(881,true)]) (.leaf [(873,false),(882,true)])))) (.node 3 (.node 1 (.leaf [(874,false),(883,true)]) (.node 1 (.leaf [(875,false),(884,true)]) (.leaf [(876,false),(885,true)]))) (.node 1 (.leaf [(839,false),(877,true)]) (.node 1 (.leaf [(839,false),(868,false),(878,true)]) (.leaf [(839,false),(869,false),(879,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(839,false),(870,false),(880,true)]) (.node 1 (.leaf [(839,false),(871,false),(881,true)]) (.leaf [(839,false),(872,false),(882,true)]))) (.node 1 (.leaf [(839,false),(873,false),(883,true)]) (.node 1 (.leaf [(839,false),(874,false),(884,true)]) (.leaf [(839,false),(875,false),(885,true)])))) (.node 3 (.node 1 (.leaf [(839,false),(876,false),(886,true)]) (.node 1 (.leaf [(840,false),(878,true)]) (.leaf [(840,false),(868,false),(879,true)]))) (.node 1 (.leaf [(840,false),(869,false),(880,true)]) (.node 1 (.leaf [(840,false),(870,false),(881,true)]) (.leaf [(840,false),(871,false),(882,true)])))))) (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(840,false),(872,false),(883,true)]) (.node 1 (.leaf [(840,false),(873,false),(884,true)]) (.leaf [(840,false),(874,false),(885,true)]))) (.node 1 (.leaf [(840,false),(875,false),(886,true)]) (.node 1 (.leaf [(840,false),(876,false),(887,true)]) (.leaf [(841,false),(879,true)])))) (.node 3 (.node 1 (.leaf [(841,false),(868,false),(880,true)]) (.node 1 (.leaf [(841,false),(869,false),(881,true)]) (.leaf [(841,false),(870,false),(882,true)]))) (.node 1 (.leaf [(841,false),(871,false),(883,true)]) (.node 1 (.leaf [(841,false),(872,false),(884,true)]) (.leaf [(841,false),(873,false),(885,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(841,false),(874,false),(886,true)]) (.node 1 (.leaf [(841,false),(875,false),(887,true)]) (.leaf [(841,false),(876,false),(888,true)]))) (.node 1 (.leaf [(842,false),(880,true)]) (.node 1 (.leaf [(842,false),(868,false),(881,true)]) (.leaf [(842,false),(869,false),(882,true)])))) (.node 3 (.node 1 (.leaf [(842,false),(870,false),(883,true)]) (.node 1 (.leaf [(842,false),(871,false),(884,true)]) (.leaf [(842,false),(872,false),(885,true)]))) (.node 2 (.node 1 (.leaf [(842,false),(873,false),(886,true)]) (.leaf [(842,false),(874,false),(887,true)])) (.node 1 (.leaf [(842,false),(875,false),(888,true)]) (.leaf [(842,false),(876,false),(889,true)]))))))) (.node 25 (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(843,false),(881,true)]) (.node 1 (.leaf [(843,false),(868,false),(882,true)]) (.leaf [(843,false),(869,false),(883,true)]))) (.node 1 (.leaf [(843,false),(870,false),(884,true)]) (.node 1 (.leaf [(843,false),(871,false),(885,true)]) (.leaf [(843,false),(872,false),(886,true)])))) (.node 3 (.node 1 (.leaf [(843,false),(873,false),(887,true)]) (.node 1 (.leaf [(843,false),(874,false),(888,true)]) (.leaf [(843,false),(875,false),(889,true)]))) (.node 1 (.leaf [(843,false),(876,false),(890,true)]) (.node 1 (.leaf [(844,false),(882,true)]) (.leaf [(844,false),(868,false),(883,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(844,false),(869,false),(884,true)]) (.node 1 (.leaf [(844,false),(870,false),(885,true)]) (.leaf [(844,false),(871,false),(886,true)]))) (.node 1 (.leaf [(844,false),(872,false),(887,true)]) (.node 1 (.leaf [(844,false),(873,false),(888,true)]) (.leaf [(844,false),(874,false),(889,true)])))) (.node 3 (.node 1 (.leaf [(844,false),(875,false),(890,true)]) (.node 1 (.leaf [(844,false),(876,false),(891,true)]) (.leaf [(845,false),(883,true)]))) (.node 2 (.node 1 (.leaf [(845,false),(868,false),(884,true)]) (.leaf [(845,false),(869,false),(885,true)])) (.node 1 (.leaf [(845,false),(870,false),(886,true)]) (.leaf [(845,false),(871,false),(887,true)])))))) (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(845,false),(872,false),(888,true)]) (.node 1 (.leaf [(845,false),(873,false),(889,true)]) (.leaf [(845,false),(874,false),(890,true)]))) (.node 1 (.leaf [(845,false),(875,false),(891,true)]) (.node 1 (.leaf [(845,false),(876,false),(892,true)]) (.leaf [(846,false),(884,true)])))) (.node 3 (.node 1 (.leaf [(846,false),(868,false),(885,true)]) (.node 1 (.leaf [(846,false),(869,false),(886,true)]) (.leaf [(846,false),(870,false),(887,true)]))) (.node 1 (.leaf [(846,false),(871,false),(888,true)]) (.node 1 (.leaf [(846,false),(872,false),(889,true)]) (.leaf [(846,false),(873,false),(890,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(846,false),(874,false),(891,true)]) (.node 1 (.leaf [(846,false),(875,false),(892,true)]) (.leaf [(846,false),(876,false),(893,true)]))) (.node 1 (.leaf [(847,false),(885,true)]) (.node 1 (.leaf [(847,false),(868,false),(886,true)]) (.leaf [(847,false),(869,false),(887,true)])))) (.node 3 (.node 1 (.leaf [(847,false),(870,false),(888,true)]) (.node 1 (.leaf [(847,false),(871,false),(889,true)]) (.leaf [(847,false),(872,false),(890,true)]))) (.node 2 (.node 1 (.leaf [(847,false),(873,false),(891,true)]) (.leaf [(847,false),(874,false),(892,true)])) (.node 1 (.leaf [(847,false),(875,false),(893,true)]) (.leaf [(847,false),(876,false),(894,true)]))))))))
theorem merge28 : m28.clauses = ScoreNodes.m28 := by rfl

def t28 : Tree := .node 130 (.node 65 t13 t27) m28
theorem eq28 : t28.clauses = ScoreNodes.c28 :=
  cat_eq _ (cat_eq _ eq13 eq27) merge28

def t29 : Tree := .nil
theorem eq29 : t29.clauses = ScoreNodes.c29 := by rfl

def t30 : Tree := .nil
theorem eq30 : t30.clauses = ScoreNodes.c30 := by rfl

def m31 : Tree := (.node 1 (.leaf [(49,true),(895,true)]) (.node 1 (.leaf [(45,true),(895,true)]) (.leaf [(45,true),(49,true),(896,true)])))
theorem merge31 : m31.clauses = ScoreNodes.m31 := by rfl

def t31 : Tree := .node 0 (.node 0 t29 t30) m31
theorem eq31 : t31.clauses = ScoreNodes.c31 :=
  cat_eq _ (cat_eq _ eq29 eq30) merge31

def t32 : Tree := .nil
theorem eq32 : t32.clauses = ScoreNodes.c32 := by rfl

def t33 : Tree := .nil
theorem eq33 : t33.clauses = ScoreNodes.c33 := by rfl

def m34 : Tree := (.node 1 (.leaf [(53,true),(897,true)]) (.node 1 (.leaf [(51,true),(897,true)]) (.leaf [(51,true),(53,true),(898,true)])))
theorem merge34 : m34.clauses = ScoreNodes.m34 := by rfl

def t34 : Tree := .node 0 (.node 0 t32 t33) m34
theorem eq34 : t34.clauses = ScoreNodes.c34 :=
  cat_eq _ (cat_eq _ eq32 eq33) merge34

def m35 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(897,false),(899,true)]) (.leaf [(898,false),(900,true)])) (.node 1 (.leaf [(895,false),(899,true)]) (.leaf [(895,false),(897,false),(900,true)]))) (.node 2 (.node 1 (.leaf [(895,false),(898,false),(901,true)]) (.leaf [(896,false),(900,true)])) (.node 1 (.leaf [(896,false),(897,false),(901,true)]) (.leaf [(896,false),(898,false),(902,true)]))))
theorem merge35 : m35.clauses = ScoreNodes.m35 := by rfl

def t35 : Tree := .node 6 (.node 3 t31 t34) m35
theorem eq35 : t35.clauses = ScoreNodes.c35 :=
  cat_eq _ (cat_eq _ eq31 eq34) merge35


end EncloseHorse.Certificate.Generated.Daily20260107.Lookup
