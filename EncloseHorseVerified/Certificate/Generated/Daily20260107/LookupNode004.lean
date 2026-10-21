import EncloseHorseVerified.Certificate.Generated.Daily20260107.LookupNode003

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.Lookup

def m70 : Tree := (.node 2 (.node 1 (.leaf [(1017,false),(1019,true)]) (.leaf [(1018,false),(1020,true)])) (.node 1 (.leaf [(79,true),(1019,true)]) (.node 1 (.leaf [(79,true),(1017,false),(1020,true)]) (.leaf [(79,true),(1018,false),(1021,true)]))))
theorem merge70 : m70.clauses = ScoreNodes.m70 := by rfl

def t70 : Tree := .node 3 (.node 0 t63 t69) m70
theorem eq70 : t70.clauses = ScoreNodes.c70 :=
  cat_eq _ (cat_eq _ eq63 eq69) merge70

def m71 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(1019,false),(1022,true)]) (.leaf [(1020,false),(1023,true)])) (.node 1 (.leaf [(1021,false),(1024,true)]) (.node 1 (.leaf [(1015,false),(1022,true)]) (.leaf [(1015,false),(1019,false),(1023,true)])))) (.node 3 (.node 1 (.leaf [(1015,false),(1020,false),(1024,true)]) (.node 1 (.leaf [(1015,false),(1021,false),(1025,true)]) (.leaf [(1016,false),(1023,true)]))) (.node 1 (.leaf [(1016,false),(1019,false),(1024,true)]) (.node 1 (.leaf [(1016,false),(1020,false),(1025,true)]) (.leaf [(1016,false),(1021,false),(1026,true)])))))
theorem merge71 : m71.clauses = ScoreNodes.m71 := by rfl

def t71 : Tree := .node 11 (.node 3 t66 t70) m71
theorem eq71 : t71.clauses = ScoreNodes.c71 :=
  cat_eq _ (cat_eq _ eq66 eq70) merge71

def m72 : Tree := (.node 14 (.node 7 (.node 3 (.node 1 (.leaf [(1022,false),(1027,true)]) (.node 1 (.leaf [(1023,false),(1028,true)]) (.leaf [(1024,false),(1029,true)]))) (.node 2 (.node 1 (.leaf [(1025,false),(1030,true)]) (.leaf [(1026,false),(1031,true)])) (.node 1 (.leaf [(1011,false),(1027,true)]) (.leaf [(1011,false),(1022,false),(1028,true)])))) (.node 3 (.node 1 (.leaf [(1011,false),(1023,false),(1029,true)]) (.node 1 (.leaf [(1011,false),(1024,false),(1030,true)]) (.leaf [(1011,false),(1025,false),(1031,true)]))) (.node 2 (.node 1 (.leaf [(1011,false),(1026,false),(1032,true)]) (.leaf [(1012,false),(1028,true)])) (.node 1 (.leaf [(1012,false),(1022,false),(1029,true)]) (.leaf [(1012,false),(1023,false),(1030,true)]))))) (.node 7 (.node 3 (.node 1 (.leaf [(1012,false),(1024,false),(1031,true)]) (.node 1 (.leaf [(1012,false),(1025,false),(1032,true)]) (.leaf [(1012,false),(1026,false),(1033,true)]))) (.node 2 (.node 1 (.leaf [(1013,false),(1029,true)]) (.leaf [(1013,false),(1022,false),(1030,true)])) (.node 1 (.leaf [(1013,false),(1023,false),(1031,true)]) (.leaf [(1013,false),(1024,false),(1032,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1013,false),(1025,false),(1033,true)]) (.leaf [(1013,false),(1026,false),(1034,true)])) (.node 1 (.leaf [(1014,false),(1030,true)]) (.leaf [(1014,false),(1022,false),(1031,true)]))) (.node 2 (.node 1 (.leaf [(1014,false),(1023,false),(1032,true)]) (.leaf [(1014,false),(1024,false),(1033,true)])) (.node 1 (.leaf [(1014,false),(1025,false),(1034,true)]) (.leaf [(1014,false),(1026,false),(1035,true)]))))))
theorem merge72 : m72.clauses = ScoreNodes.m72 := by rfl

def t72 : Tree := .node 36 (.node 14 t65 t71) m72
theorem eq72 : t72.clauses = ScoreNodes.c72 :=
  cat_eq _ (cat_eq _ eq65 eq71) merge72

def t73 : Tree := .nil
theorem eq73 : t73.clauses = ScoreNodes.c73 := by rfl

def t74 : Tree := .nil
theorem eq74 : t74.clauses = ScoreNodes.c74 := by rfl

def m75 : Tree := (.node 1 (.leaf [(99,true),(1036,true)]) (.node 1 (.leaf [(93,true),(1036,true)]) (.leaf [(93,true),(99,true),(1037,true)])))
theorem merge75 : m75.clauses = ScoreNodes.m75 := by rfl

def t75 : Tree := .node 0 (.node 0 t73 t74) m75
theorem eq75 : t75.clauses = ScoreNodes.c75 :=
  cat_eq _ (cat_eq _ eq73 eq74) merge75

def t76 : Tree := .nil
theorem eq76 : t76.clauses = ScoreNodes.c76 := by rfl

def t77 : Tree := .nil
theorem eq77 : t77.clauses = ScoreNodes.c77 := by rfl

def m78 : Tree := (.node 1 (.leaf [(109,true),(1038,true)]) (.node 1 (.leaf [(103,true),(1038,true)]) (.leaf [(103,true),(109,true),(1039,true)])))
theorem merge78 : m78.clauses = ScoreNodes.m78 := by rfl

def t78 : Tree := .node 0 (.node 0 t76 t77) m78
theorem eq78 : t78.clauses = ScoreNodes.c78 :=
  cat_eq _ (cat_eq _ eq76 eq77) merge78

def m79 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1038,false),(1040,true)]) (.leaf [(1039,false),(1041,true)])) (.node 1 (.leaf [(1036,false),(1040,true)]) (.leaf [(1036,false),(1038,false),(1041,true)]))) (.node 2 (.node 1 (.leaf [(1036,false),(1039,false),(1042,true)]) (.leaf [(1037,false),(1041,true)])) (.node 1 (.leaf [(1037,false),(1038,false),(1042,true)]) (.leaf [(1037,false),(1039,false),(1043,true)]))))
theorem merge79 : m79.clauses = ScoreNodes.m79 := by rfl

def t79 : Tree := .node 6 (.node 3 t75 t78) m79
theorem eq79 : t79.clauses = ScoreNodes.c79 :=
  cat_eq _ (cat_eq _ eq75 eq78) merge79

def t80 : Tree := .nil
theorem eq80 : t80.clauses = ScoreNodes.c80 := by rfl

def t81 : Tree := .nil
theorem eq81 : t81.clauses = ScoreNodes.c81 := by rfl

def m82 : Tree := (.node 1 (.leaf [(113,true),(1044,true)]) (.node 1 (.leaf [(111,true),(1044,true)]) (.leaf [(111,true),(113,true),(1045,true)])))
theorem merge82 : m82.clauses = ScoreNodes.m82 := by rfl

def t82 : Tree := .node 0 (.node 0 t80 t81) m82
theorem eq82 : t82.clauses = ScoreNodes.c82 :=
  cat_eq _ (cat_eq _ eq80 eq81) merge82

def t83 : Tree := .nil
theorem eq83 : t83.clauses = ScoreNodes.c83 := by rfl

def t84 : Tree := .nil
theorem eq84 : t84.clauses = ScoreNodes.c84 := by rfl

def t85 : Tree := .nil
theorem eq85 : t85.clauses = ScoreNodes.c85 := by rfl

def m86 : Tree := (.node 1 (.leaf [(123,true),(1046,true)]) (.node 1 (.leaf [(117,true),(1046,true)]) (.leaf [(117,true),(123,true),(1047,true)])))
theorem merge86 : m86.clauses = ScoreNodes.m86 := by rfl

def t86 : Tree := .node 0 (.node 0 t84 t85) m86
theorem eq86 : t86.clauses = ScoreNodes.c86 :=
  cat_eq _ (cat_eq _ eq84 eq85) merge86

def m87 : Tree := (.node 2 (.node 1 (.leaf [(1046,false),(1048,true)]) (.leaf [(1047,false),(1049,true)])) (.node 1 (.leaf [(115,true),(1048,true)]) (.node 1 (.leaf [(115,true),(1046,false),(1049,true)]) (.leaf [(115,true),(1047,false),(1050,true)]))))
theorem merge87 : m87.clauses = ScoreNodes.m87 := by rfl

def t87 : Tree := .node 3 (.node 0 t83 t86) m87
theorem eq87 : t87.clauses = ScoreNodes.c87 :=
  cat_eq _ (cat_eq _ eq83 eq86) merge87

def m88 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(1048,false),(1051,true)]) (.leaf [(1049,false),(1052,true)])) (.node 1 (.leaf [(1050,false),(1053,true)]) (.node 1 (.leaf [(1044,false),(1051,true)]) (.leaf [(1044,false),(1048,false),(1052,true)])))) (.node 3 (.node 1 (.leaf [(1044,false),(1049,false),(1053,true)]) (.node 1 (.leaf [(1044,false),(1050,false),(1054,true)]) (.leaf [(1045,false),(1052,true)]))) (.node 1 (.leaf [(1045,false),(1048,false),(1053,true)]) (.node 1 (.leaf [(1045,false),(1049,false),(1054,true)]) (.leaf [(1045,false),(1050,false),(1055,true)])))))
theorem merge88 : m88.clauses = ScoreNodes.m88 := by rfl

def t88 : Tree := .node 11 (.node 3 t82 t87) m88
theorem eq88 : t88.clauses = ScoreNodes.c88 :=
  cat_eq _ (cat_eq _ eq82 eq87) merge88


end EncloseHorse.Certificate.Generated.Daily20260107.Lookup
