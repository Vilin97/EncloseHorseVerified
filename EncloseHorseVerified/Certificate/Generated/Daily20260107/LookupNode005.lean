import EncloseHorseVerified.Certificate.Generated.Daily20260107.LookupNode004

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.Lookup

def m89 : Tree := (.node 14 (.node 7 (.node 3 (.node 1 (.leaf [(1051,false),(1056,true)]) (.node 1 (.leaf [(1052,false),(1057,true)]) (.leaf [(1053,false),(1058,true)]))) (.node 2 (.node 1 (.leaf [(1054,false),(1059,true)]) (.leaf [(1055,false),(1060,true)])) (.node 1 (.leaf [(1040,false),(1056,true)]) (.leaf [(1040,false),(1051,false),(1057,true)])))) (.node 3 (.node 1 (.leaf [(1040,false),(1052,false),(1058,true)]) (.node 1 (.leaf [(1040,false),(1053,false),(1059,true)]) (.leaf [(1040,false),(1054,false),(1060,true)]))) (.node 2 (.node 1 (.leaf [(1040,false),(1055,false),(1061,true)]) (.leaf [(1041,false),(1057,true)])) (.node 1 (.leaf [(1041,false),(1051,false),(1058,true)]) (.leaf [(1041,false),(1052,false),(1059,true)]))))) (.node 7 (.node 3 (.node 1 (.leaf [(1041,false),(1053,false),(1060,true)]) (.node 1 (.leaf [(1041,false),(1054,false),(1061,true)]) (.leaf [(1041,false),(1055,false),(1062,true)]))) (.node 2 (.node 1 (.leaf [(1042,false),(1058,true)]) (.leaf [(1042,false),(1051,false),(1059,true)])) (.node 1 (.leaf [(1042,false),(1052,false),(1060,true)]) (.leaf [(1042,false),(1053,false),(1061,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1042,false),(1054,false),(1062,true)]) (.leaf [(1042,false),(1055,false),(1063,true)])) (.node 1 (.leaf [(1043,false),(1059,true)]) (.leaf [(1043,false),(1051,false),(1060,true)]))) (.node 2 (.node 1 (.leaf [(1043,false),(1052,false),(1061,true)]) (.leaf [(1043,false),(1053,false),(1062,true)])) (.node 1 (.leaf [(1043,false),(1054,false),(1063,true)]) (.leaf [(1043,false),(1055,false),(1064,true)]))))))
theorem merge89 : m89.clauses = ScoreNodes.m89 := by rfl

def t89 : Tree := .node 36 (.node 14 t79 t88) m89
theorem eq89 : t89.clauses = ScoreNodes.c89 :=
  cat_eq _ (cat_eq _ eq79 eq88) merge89

def m90 : Tree := (.node 49 (.node 24 (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1056,false),(1065,true)]) (.node 1 (.leaf [(1057,false),(1066,true)]) (.leaf [(1058,false),(1067,true)]))) (.node 1 (.leaf [(1059,false),(1068,true)]) (.node 1 (.leaf [(1060,false),(1069,true)]) (.leaf [(1061,false),(1070,true)])))) (.node 3 (.node 1 (.leaf [(1062,false),(1071,true)]) (.node 1 (.leaf [(1063,false),(1072,true)]) (.leaf [(1064,false),(1073,true)]))) (.node 1 (.leaf [(1027,false),(1065,true)]) (.node 1 (.leaf [(1027,false),(1056,false),(1066,true)]) (.leaf [(1027,false),(1057,false),(1067,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1027,false),(1058,false),(1068,true)]) (.node 1 (.leaf [(1027,false),(1059,false),(1069,true)]) (.leaf [(1027,false),(1060,false),(1070,true)]))) (.node 1 (.leaf [(1027,false),(1061,false),(1071,true)]) (.node 1 (.leaf [(1027,false),(1062,false),(1072,true)]) (.leaf [(1027,false),(1063,false),(1073,true)])))) (.node 3 (.node 1 (.leaf [(1027,false),(1064,false),(1074,true)]) (.node 1 (.leaf [(1028,false),(1066,true)]) (.leaf [(1028,false),(1056,false),(1067,true)]))) (.node 1 (.leaf [(1028,false),(1057,false),(1068,true)]) (.node 1 (.leaf [(1028,false),(1058,false),(1069,true)]) (.leaf [(1028,false),(1059,false),(1070,true)])))))) (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1028,false),(1060,false),(1071,true)]) (.node 1 (.leaf [(1028,false),(1061,false),(1072,true)]) (.leaf [(1028,false),(1062,false),(1073,true)]))) (.node 1 (.leaf [(1028,false),(1063,false),(1074,true)]) (.node 1 (.leaf [(1028,false),(1064,false),(1075,true)]) (.leaf [(1029,false),(1067,true)])))) (.node 3 (.node 1 (.leaf [(1029,false),(1056,false),(1068,true)]) (.node 1 (.leaf [(1029,false),(1057,false),(1069,true)]) (.leaf [(1029,false),(1058,false),(1070,true)]))) (.node 1 (.leaf [(1029,false),(1059,false),(1071,true)]) (.node 1 (.leaf [(1029,false),(1060,false),(1072,true)]) (.leaf [(1029,false),(1061,false),(1073,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1029,false),(1062,false),(1074,true)]) (.node 1 (.leaf [(1029,false),(1063,false),(1075,true)]) (.leaf [(1029,false),(1064,false),(1076,true)]))) (.node 1 (.leaf [(1030,false),(1068,true)]) (.node 1 (.leaf [(1030,false),(1056,false),(1069,true)]) (.leaf [(1030,false),(1057,false),(1070,true)])))) (.node 3 (.node 1 (.leaf [(1030,false),(1058,false),(1071,true)]) (.node 1 (.leaf [(1030,false),(1059,false),(1072,true)]) (.leaf [(1030,false),(1060,false),(1073,true)]))) (.node 2 (.node 1 (.leaf [(1030,false),(1061,false),(1074,true)]) (.leaf [(1030,false),(1062,false),(1075,true)])) (.node 1 (.leaf [(1030,false),(1063,false),(1076,true)]) (.leaf [(1030,false),(1064,false),(1077,true)]))))))) (.node 25 (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1031,false),(1069,true)]) (.node 1 (.leaf [(1031,false),(1056,false),(1070,true)]) (.leaf [(1031,false),(1057,false),(1071,true)]))) (.node 1 (.leaf [(1031,false),(1058,false),(1072,true)]) (.node 1 (.leaf [(1031,false),(1059,false),(1073,true)]) (.leaf [(1031,false),(1060,false),(1074,true)])))) (.node 3 (.node 1 (.leaf [(1031,false),(1061,false),(1075,true)]) (.node 1 (.leaf [(1031,false),(1062,false),(1076,true)]) (.leaf [(1031,false),(1063,false),(1077,true)]))) (.node 1 (.leaf [(1031,false),(1064,false),(1078,true)]) (.node 1 (.leaf [(1032,false),(1070,true)]) (.leaf [(1032,false),(1056,false),(1071,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1032,false),(1057,false),(1072,true)]) (.node 1 (.leaf [(1032,false),(1058,false),(1073,true)]) (.leaf [(1032,false),(1059,false),(1074,true)]))) (.node 1 (.leaf [(1032,false),(1060,false),(1075,true)]) (.node 1 (.leaf [(1032,false),(1061,false),(1076,true)]) (.leaf [(1032,false),(1062,false),(1077,true)])))) (.node 3 (.node 1 (.leaf [(1032,false),(1063,false),(1078,true)]) (.node 1 (.leaf [(1032,false),(1064,false),(1079,true)]) (.leaf [(1033,false),(1071,true)]))) (.node 2 (.node 1 (.leaf [(1033,false),(1056,false),(1072,true)]) (.leaf [(1033,false),(1057,false),(1073,true)])) (.node 1 (.leaf [(1033,false),(1058,false),(1074,true)]) (.leaf [(1033,false),(1059,false),(1075,true)])))))) (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1033,false),(1060,false),(1076,true)]) (.node 1 (.leaf [(1033,false),(1061,false),(1077,true)]) (.leaf [(1033,false),(1062,false),(1078,true)]))) (.node 1 (.leaf [(1033,false),(1063,false),(1079,true)]) (.node 1 (.leaf [(1033,false),(1064,false),(1080,true)]) (.leaf [(1034,false),(1072,true)])))) (.node 3 (.node 1 (.leaf [(1034,false),(1056,false),(1073,true)]) (.node 1 (.leaf [(1034,false),(1057,false),(1074,true)]) (.leaf [(1034,false),(1058,false),(1075,true)]))) (.node 1 (.leaf [(1034,false),(1059,false),(1076,true)]) (.node 1 (.leaf [(1034,false),(1060,false),(1077,true)]) (.leaf [(1034,false),(1061,false),(1078,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1034,false),(1062,false),(1079,true)]) (.node 1 (.leaf [(1034,false),(1063,false),(1080,true)]) (.leaf [(1034,false),(1064,false),(1081,true)]))) (.node 1 (.leaf [(1035,false),(1073,true)]) (.node 1 (.leaf [(1035,false),(1056,false),(1074,true)]) (.leaf [(1035,false),(1057,false),(1075,true)])))) (.node 3 (.node 1 (.leaf [(1035,false),(1058,false),(1076,true)]) (.node 1 (.leaf [(1035,false),(1059,false),(1077,true)]) (.leaf [(1035,false),(1060,false),(1078,true)]))) (.node 2 (.node 1 (.leaf [(1035,false),(1061,false),(1079,true)]) (.leaf [(1035,false),(1062,false),(1080,true)])) (.node 1 (.leaf [(1035,false),(1063,false),(1081,true)]) (.leaf [(1035,false),(1064,false),(1082,true)]))))))))
theorem merge90 : m90.clauses = ScoreNodes.m90 := by rfl

def t90 : Tree := .node 130 (.node 65 t72 t89) m90
theorem eq90 : t90.clauses = ScoreNodes.c90 :=
  cat_eq _ (cat_eq _ eq72 eq89) merge90

def t91 : Tree := .nil
theorem eq91 : t91.clauses = ScoreNodes.c91 := by rfl

def t92 : Tree := .nil
theorem eq92 : t92.clauses = ScoreNodes.c92 := by rfl

def m93 : Tree := (.node 1 (.leaf [(127,true),(1083,true)]) (.node 1 (.leaf [(125,true),(1083,true)]) (.leaf [(125,true),(127,true),(1084,true)])))
theorem merge93 : m93.clauses = ScoreNodes.m93 := by rfl

def t93 : Tree := .node 0 (.node 0 t91 t92) m93
theorem eq93 : t93.clauses = ScoreNodes.c93 :=
  cat_eq _ (cat_eq _ eq91 eq92) merge93

def t94 : Tree := .nil
theorem eq94 : t94.clauses = ScoreNodes.c94 := by rfl

def t95 : Tree := .nil
theorem eq95 : t95.clauses = ScoreNodes.c95 := by rfl

def m96 : Tree := (.node 1 (.leaf [(131,true),(1085,true)]) (.node 1 (.leaf [(129,true),(1085,true)]) (.leaf [(129,true),(131,true),(1086,true)])))
theorem merge96 : m96.clauses = ScoreNodes.m96 := by rfl

def t96 : Tree := .node 0 (.node 0 t94 t95) m96
theorem eq96 : t96.clauses = ScoreNodes.c96 :=
  cat_eq _ (cat_eq _ eq94 eq95) merge96

def m97 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1085,false),(1087,true)]) (.leaf [(1086,false),(1088,true)])) (.node 1 (.leaf [(1083,false),(1087,true)]) (.leaf [(1083,false),(1085,false),(1088,true)]))) (.node 2 (.node 1 (.leaf [(1083,false),(1086,false),(1089,true)]) (.leaf [(1084,false),(1088,true)])) (.node 1 (.leaf [(1084,false),(1085,false),(1089,true)]) (.leaf [(1084,false),(1086,false),(1090,true)]))))
theorem merge97 : m97.clauses = ScoreNodes.m97 := by rfl

def t97 : Tree := .node 6 (.node 3 t93 t96) m97
theorem eq97 : t97.clauses = ScoreNodes.c97 :=
  cat_eq _ (cat_eq _ eq93 eq96) merge97

def t98 : Tree := .nil
theorem eq98 : t98.clauses = ScoreNodes.c98 := by rfl

def t99 : Tree := .nil
theorem eq99 : t99.clauses = ScoreNodes.c99 := by rfl

def m100 : Tree := (.node 1 (.leaf [(135,true),(1091,true)]) (.node 1 (.leaf [(133,true),(1091,true)]) (.leaf [(133,true),(135,true),(1092,true)])))
theorem merge100 : m100.clauses = ScoreNodes.m100 := by rfl

def t100 : Tree := .node 0 (.node 0 t98 t99) m100
theorem eq100 : t100.clauses = ScoreNodes.c100 :=
  cat_eq _ (cat_eq _ eq98 eq99) merge100

def t101 : Tree := .nil
theorem eq101 : t101.clauses = ScoreNodes.c101 := by rfl

def t102 : Tree := .nil
theorem eq102 : t102.clauses = ScoreNodes.c102 := by rfl

def t103 : Tree := .nil
theorem eq103 : t103.clauses = ScoreNodes.c103 := by rfl

def m104 : Tree := (.node 1 (.leaf [(141,true),(1093,true)]) (.node 1 (.leaf [(139,true),(1093,true)]) (.leaf [(139,true),(141,true),(1094,true)])))
theorem merge104 : m104.clauses = ScoreNodes.m104 := by rfl

def t104 : Tree := .node 0 (.node 0 t102 t103) m104
theorem eq104 : t104.clauses = ScoreNodes.c104 :=
  cat_eq _ (cat_eq _ eq102 eq103) merge104

def m105 : Tree := (.node 2 (.node 1 (.leaf [(1093,false),(1095,true)]) (.leaf [(1094,false),(1096,true)])) (.node 1 (.leaf [(137,true),(1095,true)]) (.node 1 (.leaf [(137,true),(1093,false),(1096,true)]) (.leaf [(137,true),(1094,false),(1097,true)]))))
theorem merge105 : m105.clauses = ScoreNodes.m105 := by rfl

def t105 : Tree := .node 3 (.node 0 t101 t104) m105
theorem eq105 : t105.clauses = ScoreNodes.c105 :=
  cat_eq _ (cat_eq _ eq101 eq104) merge105

def m106 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(1095,false),(1098,true)]) (.leaf [(1096,false),(1099,true)])) (.node 1 (.leaf [(1097,false),(1100,true)]) (.node 1 (.leaf [(1091,false),(1098,true)]) (.leaf [(1091,false),(1095,false),(1099,true)])))) (.node 3 (.node 1 (.leaf [(1091,false),(1096,false),(1100,true)]) (.node 1 (.leaf [(1091,false),(1097,false),(1101,true)]) (.leaf [(1092,false),(1099,true)]))) (.node 1 (.leaf [(1092,false),(1095,false),(1100,true)]) (.node 1 (.leaf [(1092,false),(1096,false),(1101,true)]) (.leaf [(1092,false),(1097,false),(1102,true)])))))
theorem merge106 : m106.clauses = ScoreNodes.m106 := by rfl

def t106 : Tree := .node 11 (.node 3 t100 t105) m106
theorem eq106 : t106.clauses = ScoreNodes.c106 :=
  cat_eq _ (cat_eq _ eq100 eq105) merge106

def m107 : Tree := (.node 14 (.node 7 (.node 3 (.node 1 (.leaf [(1098,false),(1103,true)]) (.node 1 (.leaf [(1099,false),(1104,true)]) (.leaf [(1100,false),(1105,true)]))) (.node 2 (.node 1 (.leaf [(1101,false),(1106,true)]) (.leaf [(1102,false),(1107,true)])) (.node 1 (.leaf [(1087,false),(1103,true)]) (.leaf [(1087,false),(1098,false),(1104,true)])))) (.node 3 (.node 1 (.leaf [(1087,false),(1099,false),(1105,true)]) (.node 1 (.leaf [(1087,false),(1100,false),(1106,true)]) (.leaf [(1087,false),(1101,false),(1107,true)]))) (.node 2 (.node 1 (.leaf [(1087,false),(1102,false),(1108,true)]) (.leaf [(1088,false),(1104,true)])) (.node 1 (.leaf [(1088,false),(1098,false),(1105,true)]) (.leaf [(1088,false),(1099,false),(1106,true)]))))) (.node 7 (.node 3 (.node 1 (.leaf [(1088,false),(1100,false),(1107,true)]) (.node 1 (.leaf [(1088,false),(1101,false),(1108,true)]) (.leaf [(1088,false),(1102,false),(1109,true)]))) (.node 2 (.node 1 (.leaf [(1089,false),(1105,true)]) (.leaf [(1089,false),(1098,false),(1106,true)])) (.node 1 (.leaf [(1089,false),(1099,false),(1107,true)]) (.leaf [(1089,false),(1100,false),(1108,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1089,false),(1101,false),(1109,true)]) (.leaf [(1089,false),(1102,false),(1110,true)])) (.node 1 (.leaf [(1090,false),(1106,true)]) (.leaf [(1090,false),(1098,false),(1107,true)]))) (.node 2 (.node 1 (.leaf [(1090,false),(1099,false),(1108,true)]) (.leaf [(1090,false),(1100,false),(1109,true)])) (.node 1 (.leaf [(1090,false),(1101,false),(1110,true)]) (.leaf [(1090,false),(1102,false),(1111,true)]))))))
theorem merge107 : m107.clauses = ScoreNodes.m107 := by rfl

def t107 : Tree := .node 36 (.node 14 t97 t106) m107
theorem eq107 : t107.clauses = ScoreNodes.c107 :=
  cat_eq _ (cat_eq _ eq97 eq106) merge107


end EncloseHorse.Certificate.Generated.Daily20260107.Lookup
