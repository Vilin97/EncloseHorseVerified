import EncloseHorseVerified.Certificate.Generated.Daily20260107.ScoreNode004

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes

def t89 : CounterTree := .node [1056,1057,1058,1059,1060,1061,1062,1063,1064] t79 t88
def m89 : CNF := [[(1051,false),(1056,true)],[(1052,false),(1057,true)],[(1053,false),(1058,true)],[(1054,false),(1059,true)],[(1055,false),(1060,true)],[(1040,false),(1056,true)],[(1040,false),(1051,false),(1057,true)],[(1040,false),(1052,false),(1058,true)],[(1040,false),(1053,false),(1059,true)],[(1040,false),(1054,false),(1060,true)],[(1040,false),(1055,false),(1061,true)],[(1041,false),(1057,true)],[(1041,false),(1051,false),(1058,true)],[(1041,false),(1052,false),(1059,true)],[(1041,false),(1053,false),(1060,true)],[(1041,false),(1054,false),(1061,true)],[(1041,false),(1055,false),(1062,true)],[(1042,false),(1058,true)],[(1042,false),(1051,false),(1059,true)],[(1042,false),(1052,false),(1060,true)],[(1042,false),(1053,false),(1061,true)],[(1042,false),(1054,false),(1062,true)],[(1042,false),(1055,false),(1063,true)],[(1043,false),(1059,true)],[(1043,false),(1051,false),(1060,true)],[(1043,false),(1052,false),(1061,true)],[(1043,false),(1053,false),(1062,true)],[(1043,false),(1054,false),(1063,true)],[(1043,false),(1055,false),(1064,true)]]
theorem merge89 : mergeClauses t79.outputLits t88.outputLits [1056,1057,1058,1059,1060,1061,1062,1063,1064] = m89 := by rfl

def c89 : CNF := c79 ++ c88 ++ m89
theorem eq89 : t89.clauses = c89 := by
  change t79.clauses ++ t88.clauses ++ mergeClauses t79.outputLits t88.outputLits [1056,1057,1058,1059,1060,1061,1062,1063,1064] = c89
  exact concat3_congr eq79 eq88 merge89

def t90 : CounterTree := .node [1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082] t72 t89
def m90 : CNF := [[(1056,false),(1065,true)],[(1057,false),(1066,true)],[(1058,false),(1067,true)],[(1059,false),(1068,true)],[(1060,false),(1069,true)],[(1061,false),(1070,true)],[(1062,false),(1071,true)],[(1063,false),(1072,true)],[(1064,false),(1073,true)],[(1027,false),(1065,true)],[(1027,false),(1056,false),(1066,true)],[(1027,false),(1057,false),(1067,true)],[(1027,false),(1058,false),(1068,true)],[(1027,false),(1059,false),(1069,true)],[(1027,false),(1060,false),(1070,true)],[(1027,false),(1061,false),(1071,true)],[(1027,false),(1062,false),(1072,true)],[(1027,false),(1063,false),(1073,true)],[(1027,false),(1064,false),(1074,true)],[(1028,false),(1066,true)],[(1028,false),(1056,false),(1067,true)],[(1028,false),(1057,false),(1068,true)],[(1028,false),(1058,false),(1069,true)],[(1028,false),(1059,false),(1070,true)],[(1028,false),(1060,false),(1071,true)],[(1028,false),(1061,false),(1072,true)],[(1028,false),(1062,false),(1073,true)],[(1028,false),(1063,false),(1074,true)],[(1028,false),(1064,false),(1075,true)],[(1029,false),(1067,true)],[(1029,false),(1056,false),(1068,true)],[(1029,false),(1057,false),(1069,true)],[(1029,false),(1058,false),(1070,true)],[(1029,false),(1059,false),(1071,true)],[(1029,false),(1060,false),(1072,true)],[(1029,false),(1061,false),(1073,true)],[(1029,false),(1062,false),(1074,true)],[(1029,false),(1063,false),(1075,true)],[(1029,false),(1064,false),(1076,true)],[(1030,false),(1068,true)],[(1030,false),(1056,false),(1069,true)],[(1030,false),(1057,false),(1070,true)],[(1030,false),(1058,false),(1071,true)],[(1030,false),(1059,false),(1072,true)],[(1030,false),(1060,false),(1073,true)],[(1030,false),(1061,false),(1074,true)],[(1030,false),(1062,false),(1075,true)],[(1030,false),(1063,false),(1076,true)],[(1030,false),(1064,false),(1077,true)],[(1031,false),(1069,true)],[(1031,false),(1056,false),(1070,true)],[(1031,false),(1057,false),(1071,true)],[(1031,false),(1058,false),(1072,true)],[(1031,false),(1059,false),(1073,true)],[(1031,false),(1060,false),(1074,true)],[(1031,false),(1061,false),(1075,true)],[(1031,false),(1062,false),(1076,true)],[(1031,false),(1063,false),(1077,true)],[(1031,false),(1064,false),(1078,true)],[(1032,false),(1070,true)],[(1032,false),(1056,false),(1071,true)],[(1032,false),(1057,false),(1072,true)],[(1032,false),(1058,false),(1073,true)],[(1032,false),(1059,false),(1074,true)],[(1032,false),(1060,false),(1075,true)],[(1032,false),(1061,false),(1076,true)],[(1032,false),(1062,false),(1077,true)],[(1032,false),(1063,false),(1078,true)],[(1032,false),(1064,false),(1079,true)],[(1033,false),(1071,true)],[(1033,false),(1056,false),(1072,true)],[(1033,false),(1057,false),(1073,true)],[(1033,false),(1058,false),(1074,true)],[(1033,false),(1059,false),(1075,true)],[(1033,false),(1060,false),(1076,true)],[(1033,false),(1061,false),(1077,true)],[(1033,false),(1062,false),(1078,true)],[(1033,false),(1063,false),(1079,true)],[(1033,false),(1064,false),(1080,true)],[(1034,false),(1072,true)],[(1034,false),(1056,false),(1073,true)],[(1034,false),(1057,false),(1074,true)],[(1034,false),(1058,false),(1075,true)],[(1034,false),(1059,false),(1076,true)],[(1034,false),(1060,false),(1077,true)],[(1034,false),(1061,false),(1078,true)],[(1034,false),(1062,false),(1079,true)],[(1034,false),(1063,false),(1080,true)],[(1034,false),(1064,false),(1081,true)],[(1035,false),(1073,true)],[(1035,false),(1056,false),(1074,true)],[(1035,false),(1057,false),(1075,true)],[(1035,false),(1058,false),(1076,true)],[(1035,false),(1059,false),(1077,true)],[(1035,false),(1060,false),(1078,true)],[(1035,false),(1061,false),(1079,true)],[(1035,false),(1062,false),(1080,true)],[(1035,false),(1063,false),(1081,true)],[(1035,false),(1064,false),(1082,true)]]
theorem merge90 : mergeClauses t72.outputLits t89.outputLits [1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082] = m90 := by rfl

def c90 : CNF := c72 ++ c89 ++ m90
theorem eq90 : t90.clauses = c90 := by
  change t72.clauses ++ t89.clauses ++ mergeClauses t72.outputLits t89.outputLits [1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082] = c90
  exact concat3_congr eq72 eq89 merge90

def t91 : CounterTree := .leaf (125,false)
def c91 : CNF := []
theorem eq91 : t91.clauses = c91 := rfl

def t92 : CounterTree := .leaf (127,false)
def c92 : CNF := []
theorem eq92 : t92.clauses = c92 := rfl

def t93 : CounterTree := .node [1083,1084] t91 t92
def m93 : CNF := [[(127,true),(1083,true)],[(125,true),(1083,true)],[(125,true),(127,true),(1084,true)]]
theorem merge93 : mergeClauses t91.outputLits t92.outputLits [1083,1084] = m93 := by rfl

def c93 : CNF := c91 ++ c92 ++ m93
theorem eq93 : t93.clauses = c93 := by
  change t91.clauses ++ t92.clauses ++ mergeClauses t91.outputLits t92.outputLits [1083,1084] = c93
  exact concat3_congr eq91 eq92 merge93

def t94 : CounterTree := .leaf (129,false)
def c94 : CNF := []
theorem eq94 : t94.clauses = c94 := rfl

def t95 : CounterTree := .leaf (131,false)
def c95 : CNF := []
theorem eq95 : t95.clauses = c95 := rfl

def t96 : CounterTree := .node [1085,1086] t94 t95
def m96 : CNF := [[(131,true),(1085,true)],[(129,true),(1085,true)],[(129,true),(131,true),(1086,true)]]
theorem merge96 : mergeClauses t94.outputLits t95.outputLits [1085,1086] = m96 := by rfl

def c96 : CNF := c94 ++ c95 ++ m96
theorem eq96 : t96.clauses = c96 := by
  change t94.clauses ++ t95.clauses ++ mergeClauses t94.outputLits t95.outputLits [1085,1086] = c96
  exact concat3_congr eq94 eq95 merge96

def t97 : CounterTree := .node [1087,1088,1089,1090] t93 t96
def m97 : CNF := [[(1085,false),(1087,true)],[(1086,false),(1088,true)],[(1083,false),(1087,true)],[(1083,false),(1085,false),(1088,true)],[(1083,false),(1086,false),(1089,true)],[(1084,false),(1088,true)],[(1084,false),(1085,false),(1089,true)],[(1084,false),(1086,false),(1090,true)]]
theorem merge97 : mergeClauses t93.outputLits t96.outputLits [1087,1088,1089,1090] = m97 := by rfl

def c97 : CNF := c93 ++ c96 ++ m97
theorem eq97 : t97.clauses = c97 := by
  change t93.clauses ++ t96.clauses ++ mergeClauses t93.outputLits t96.outputLits [1087,1088,1089,1090] = c97
  exact concat3_congr eq93 eq96 merge97

def t98 : CounterTree := .leaf (133,false)
def c98 : CNF := []
theorem eq98 : t98.clauses = c98 := rfl

def t99 : CounterTree := .leaf (135,false)
def c99 : CNF := []
theorem eq99 : t99.clauses = c99 := rfl

def t100 : CounterTree := .node [1091,1092] t98 t99
def m100 : CNF := [[(135,true),(1091,true)],[(133,true),(1091,true)],[(133,true),(135,true),(1092,true)]]
theorem merge100 : mergeClauses t98.outputLits t99.outputLits [1091,1092] = m100 := by rfl

def c100 : CNF := c98 ++ c99 ++ m100
theorem eq100 : t100.clauses = c100 := by
  change t98.clauses ++ t99.clauses ++ mergeClauses t98.outputLits t99.outputLits [1091,1092] = c100
  exact concat3_congr eq98 eq99 merge100

def t101 : CounterTree := .leaf (137,false)
def c101 : CNF := []
theorem eq101 : t101.clauses = c101 := rfl

def t102 : CounterTree := .leaf (139,false)
def c102 : CNF := []
theorem eq102 : t102.clauses = c102 := rfl

def t103 : CounterTree := .leaf (141,false)
def c103 : CNF := []
theorem eq103 : t103.clauses = c103 := rfl

def t104 : CounterTree := .node [1093,1094] t102 t103
def m104 : CNF := [[(141,true),(1093,true)],[(139,true),(1093,true)],[(139,true),(141,true),(1094,true)]]
theorem merge104 : mergeClauses t102.outputLits t103.outputLits [1093,1094] = m104 := by rfl

def c104 : CNF := c102 ++ c103 ++ m104
theorem eq104 : t104.clauses = c104 := by
  change t102.clauses ++ t103.clauses ++ mergeClauses t102.outputLits t103.outputLits [1093,1094] = c104
  exact concat3_congr eq102 eq103 merge104

def t105 : CounterTree := .node [1095,1096,1097] t101 t104
def m105 : CNF := [[(1093,false),(1095,true)],[(1094,false),(1096,true)],[(137,true),(1095,true)],[(137,true),(1093,false),(1096,true)],[(137,true),(1094,false),(1097,true)]]
theorem merge105 : mergeClauses t101.outputLits t104.outputLits [1095,1096,1097] = m105 := by rfl

def c105 : CNF := c101 ++ c104 ++ m105
theorem eq105 : t105.clauses = c105 := by
  change t101.clauses ++ t104.clauses ++ mergeClauses t101.outputLits t104.outputLits [1095,1096,1097] = c105
  exact concat3_congr eq101 eq104 merge105

def t106 : CounterTree := .node [1098,1099,1100,1101,1102] t100 t105
def m106 : CNF := [[(1095,false),(1098,true)],[(1096,false),(1099,true)],[(1097,false),(1100,true)],[(1091,false),(1098,true)],[(1091,false),(1095,false),(1099,true)],[(1091,false),(1096,false),(1100,true)],[(1091,false),(1097,false),(1101,true)],[(1092,false),(1099,true)],[(1092,false),(1095,false),(1100,true)],[(1092,false),(1096,false),(1101,true)],[(1092,false),(1097,false),(1102,true)]]
theorem merge106 : mergeClauses t100.outputLits t105.outputLits [1098,1099,1100,1101,1102] = m106 := by rfl

def c106 : CNF := c100 ++ c105 ++ m106
theorem eq106 : t106.clauses = c106 := by
  change t100.clauses ++ t105.clauses ++ mergeClauses t100.outputLits t105.outputLits [1098,1099,1100,1101,1102] = c106
  exact concat3_congr eq100 eq105 merge106

def t107 : CounterTree := .node [1103,1104,1105,1106,1107,1108,1109,1110,1111] t97 t106
def m107 : CNF := [[(1098,false),(1103,true)],[(1099,false),(1104,true)],[(1100,false),(1105,true)],[(1101,false),(1106,true)],[(1102,false),(1107,true)],[(1087,false),(1103,true)],[(1087,false),(1098,false),(1104,true)],[(1087,false),(1099,false),(1105,true)],[(1087,false),(1100,false),(1106,true)],[(1087,false),(1101,false),(1107,true)],[(1087,false),(1102,false),(1108,true)],[(1088,false),(1104,true)],[(1088,false),(1098,false),(1105,true)],[(1088,false),(1099,false),(1106,true)],[(1088,false),(1100,false),(1107,true)],[(1088,false),(1101,false),(1108,true)],[(1088,false),(1102,false),(1109,true)],[(1089,false),(1105,true)],[(1089,false),(1098,false),(1106,true)],[(1089,false),(1099,false),(1107,true)],[(1089,false),(1100,false),(1108,true)],[(1089,false),(1101,false),(1109,true)],[(1089,false),(1102,false),(1110,true)],[(1090,false),(1106,true)],[(1090,false),(1098,false),(1107,true)],[(1090,false),(1099,false),(1108,true)],[(1090,false),(1100,false),(1109,true)],[(1090,false),(1101,false),(1110,true)],[(1090,false),(1102,false),(1111,true)]]
theorem merge107 : mergeClauses t97.outputLits t106.outputLits [1103,1104,1105,1106,1107,1108,1109,1110,1111] = m107 := by rfl

def c107 : CNF := c97 ++ c106 ++ m107
theorem eq107 : t107.clauses = c107 := by
  change t97.clauses ++ t106.clauses ++ mergeClauses t97.outputLits t106.outputLits [1103,1104,1105,1106,1107,1108,1109,1110,1111] = c107
  exact concat3_congr eq97 eq106 merge107


end EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes
