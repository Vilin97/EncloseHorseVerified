import EncloseHorseVerified.Certificate.Generated.Daily20260107.LookupNode001

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.Lookup

def m36 : Tree := (.node 1 (.leaf [(53,true),(903,true)]) (.node 1 (.leaf [(53,true),(903,true)]) (.leaf [(53,true),(53,true),(904,true)])))
theorem merge36 : m36.clauses = ScoreNodes.m36 := by rfl

def t36 : Tree := .node 0 (.node 0 t33 t33) m36
theorem eq36 : t36.clauses = ScoreNodes.c36 :=
  cat_eq _ (cat_eq _ eq33 eq33) merge36

def t37 : Tree := .nil
theorem eq37 : t37.clauses = ScoreNodes.c37 := by rfl

def t38 : Tree := .nil
theorem eq38 : t38.clauses = ScoreNodes.c38 := by rfl

def m39 : Tree := (.node 1 (.leaf [(57,true),(905,true)]) (.node 1 (.leaf [(55,true),(905,true)]) (.leaf [(55,true),(57,true),(906,true)])))
theorem merge39 : m39.clauses = ScoreNodes.m39 := by rfl

def t39 : Tree := .node 0 (.node 0 t37 t38) m39
theorem eq39 : t39.clauses = ScoreNodes.c39 :=
  cat_eq _ (cat_eq _ eq37 eq38) merge39

def m40 : Tree := (.node 2 (.node 1 (.leaf [(905,false),(907,true)]) (.leaf [(906,false),(908,true)])) (.node 1 (.leaf [(53,true),(907,true)]) (.node 1 (.leaf [(53,true),(905,false),(908,true)]) (.leaf [(53,true),(906,false),(909,true)]))))
theorem merge40 : m40.clauses = ScoreNodes.m40 := by rfl

def t40 : Tree := .node 3 (.node 0 t33 t39) m40
theorem eq40 : t40.clauses = ScoreNodes.c40 :=
  cat_eq _ (cat_eq _ eq33 eq39) merge40

def m41 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(907,false),(910,true)]) (.leaf [(908,false),(911,true)])) (.node 1 (.leaf [(909,false),(912,true)]) (.node 1 (.leaf [(903,false),(910,true)]) (.leaf [(903,false),(907,false),(911,true)])))) (.node 3 (.node 1 (.leaf [(903,false),(908,false),(912,true)]) (.node 1 (.leaf [(903,false),(909,false),(913,true)]) (.leaf [(904,false),(911,true)]))) (.node 1 (.leaf [(904,false),(907,false),(912,true)]) (.node 1 (.leaf [(904,false),(908,false),(913,true)]) (.leaf [(904,false),(909,false),(914,true)])))))
theorem merge41 : m41.clauses = ScoreNodes.m41 := by rfl

def t41 : Tree := .node 11 (.node 3 t36 t40) m41
theorem eq41 : t41.clauses = ScoreNodes.c41 :=
  cat_eq _ (cat_eq _ eq36 eq40) merge41

def m42 : Tree := (.node 14 (.node 7 (.node 3 (.node 1 (.leaf [(910,false),(915,true)]) (.node 1 (.leaf [(911,false),(916,true)]) (.leaf [(912,false),(917,true)]))) (.node 2 (.node 1 (.leaf [(913,false),(918,true)]) (.leaf [(914,false),(919,true)])) (.node 1 (.leaf [(899,false),(915,true)]) (.leaf [(899,false),(910,false),(916,true)])))) (.node 3 (.node 1 (.leaf [(899,false),(911,false),(917,true)]) (.node 1 (.leaf [(899,false),(912,false),(918,true)]) (.leaf [(899,false),(913,false),(919,true)]))) (.node 2 (.node 1 (.leaf [(899,false),(914,false),(920,true)]) (.leaf [(900,false),(916,true)])) (.node 1 (.leaf [(900,false),(910,false),(917,true)]) (.leaf [(900,false),(911,false),(918,true)]))))) (.node 7 (.node 3 (.node 1 (.leaf [(900,false),(912,false),(919,true)]) (.node 1 (.leaf [(900,false),(913,false),(920,true)]) (.leaf [(900,false),(914,false),(921,true)]))) (.node 2 (.node 1 (.leaf [(901,false),(917,true)]) (.leaf [(901,false),(910,false),(918,true)])) (.node 1 (.leaf [(901,false),(911,false),(919,true)]) (.leaf [(901,false),(912,false),(920,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(901,false),(913,false),(921,true)]) (.leaf [(901,false),(914,false),(922,true)])) (.node 1 (.leaf [(902,false),(918,true)]) (.leaf [(902,false),(910,false),(919,true)]))) (.node 2 (.node 1 (.leaf [(902,false),(911,false),(920,true)]) (.leaf [(902,false),(912,false),(921,true)])) (.node 1 (.leaf [(902,false),(913,false),(922,true)]) (.leaf [(902,false),(914,false),(923,true)]))))))
theorem merge42 : m42.clauses = ScoreNodes.m42 := by rfl

def t42 : Tree := .node 36 (.node 14 t35 t41) m42
theorem eq42 : t42.clauses = ScoreNodes.c42 :=
  cat_eq _ (cat_eq _ eq35 eq41) merge42

def t43 : Tree := .nil
theorem eq43 : t43.clauses = ScoreNodes.c43 := by rfl

def t44 : Tree := .nil
theorem eq44 : t44.clauses = ScoreNodes.c44 := by rfl

def m45 : Tree := (.node 1 (.leaf [(61,true),(924,true)]) (.node 1 (.leaf [(59,true),(924,true)]) (.leaf [(59,true),(61,true),(925,true)])))
theorem merge45 : m45.clauses = ScoreNodes.m45 := by rfl

def t45 : Tree := .node 0 (.node 0 t43 t44) m45
theorem eq45 : t45.clauses = ScoreNodes.c45 :=
  cat_eq _ (cat_eq _ eq43 eq44) merge45

def t46 : Tree := .nil
theorem eq46 : t46.clauses = ScoreNodes.c46 := by rfl

def t47 : Tree := .nil
theorem eq47 : t47.clauses = ScoreNodes.c47 := by rfl

def m48 : Tree := (.node 1 (.leaf [(65,true),(926,true)]) (.node 1 (.leaf [(63,true),(926,true)]) (.leaf [(63,true),(65,true),(927,true)])))
theorem merge48 : m48.clauses = ScoreNodes.m48 := by rfl

def t48 : Tree := .node 0 (.node 0 t46 t47) m48
theorem eq48 : t48.clauses = ScoreNodes.c48 :=
  cat_eq _ (cat_eq _ eq46 eq47) merge48

def m49 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(926,false),(928,true)]) (.leaf [(927,false),(929,true)])) (.node 1 (.leaf [(924,false),(928,true)]) (.leaf [(924,false),(926,false),(929,true)]))) (.node 2 (.node 1 (.leaf [(924,false),(927,false),(930,true)]) (.leaf [(925,false),(929,true)])) (.node 1 (.leaf [(925,false),(926,false),(930,true)]) (.leaf [(925,false),(927,false),(931,true)]))))
theorem merge49 : m49.clauses = ScoreNodes.m49 := by rfl

def t49 : Tree := .node 6 (.node 3 t45 t48) m49
theorem eq49 : t49.clauses = ScoreNodes.c49 :=
  cat_eq _ (cat_eq _ eq45 eq48) merge49

def t50 : Tree := .nil
theorem eq50 : t50.clauses = ScoreNodes.c50 := by rfl

def t51 : Tree := .nil
theorem eq51 : t51.clauses = ScoreNodes.c51 := by rfl

def m52 : Tree := (.node 1 (.leaf [(71,true),(932,true)]) (.node 1 (.leaf [(69,true),(932,true)]) (.leaf [(69,true),(71,true),(933,true)])))
theorem merge52 : m52.clauses = ScoreNodes.m52 := by rfl

def t52 : Tree := .node 0 (.node 0 t50 t51) m52
theorem eq52 : t52.clauses = ScoreNodes.c52 :=
  cat_eq _ (cat_eq _ eq50 eq51) merge52

def t53 : Tree := .nil
theorem eq53 : t53.clauses = ScoreNodes.c53 := by rfl

def t54 : Tree := .nil
theorem eq54 : t54.clauses = ScoreNodes.c54 := by rfl

def m55 : Tree := (.node 1 (.leaf [(75,true),(934,true)]) (.node 1 (.leaf [(75,true),(934,true)]) (.leaf [(75,true),(75,true),(935,true)])))
theorem merge55 : m55.clauses = ScoreNodes.m55 := by rfl

def t55 : Tree := .node 0 (.node 0 t54 t54) m55
theorem eq55 : t55.clauses = ScoreNodes.c55 :=
  cat_eq _ (cat_eq _ eq54 eq54) merge55


end EncloseHorse.Certificate.Generated.Daily20260107.Lookup
