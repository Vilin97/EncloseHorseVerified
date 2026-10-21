import EncloseHorseVerified.Certificate.Generated.Daily20260107.ScoreNode005

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes

def t108 : CounterTree := .leaf (145,false)
def c108 : CNF := []
theorem eq108 : t108.clauses = c108 := rfl

def t109 : CounterTree := .leaf (147,false)
def c109 : CNF := []
theorem eq109 : t109.clauses = c109 := rfl

def t110 : CounterTree := .node [1112,1113] t108 t109
def m110 : CNF := [[(147,true),(1112,true)],[(145,true),(1112,true)],[(145,true),(147,true),(1113,true)]]
theorem merge110 : mergeClauses t108.outputLits t109.outputLits [1112,1113] = m110 := by rfl

def c110 : CNF := c108 ++ c109 ++ m110
theorem eq110 : t110.clauses = c110 := by
  change t108.clauses ++ t109.clauses ++ mergeClauses t108.outputLits t109.outputLits [1112,1113] = c110
  exact concat3_congr eq108 eq109 merge110

def t111 : CounterTree := .leaf (149,false)
def c111 : CNF := []
theorem eq111 : t111.clauses = c111 := rfl

def t112 : CounterTree := .leaf (151,false)
def c112 : CNF := []
theorem eq112 : t112.clauses = c112 := rfl

def t113 : CounterTree := .node [1114,1115] t111 t112
def m113 : CNF := [[(151,true),(1114,true)],[(149,true),(1114,true)],[(149,true),(151,true),(1115,true)]]
theorem merge113 : mergeClauses t111.outputLits t112.outputLits [1114,1115] = m113 := by rfl

def c113 : CNF := c111 ++ c112 ++ m113
theorem eq113 : t113.clauses = c113 := by
  change t111.clauses ++ t112.clauses ++ mergeClauses t111.outputLits t112.outputLits [1114,1115] = c113
  exact concat3_congr eq111 eq112 merge113

def t114 : CounterTree := .node [1116,1117,1118,1119] t110 t113
def m114 : CNF := [[(1114,false),(1116,true)],[(1115,false),(1117,true)],[(1112,false),(1116,true)],[(1112,false),(1114,false),(1117,true)],[(1112,false),(1115,false),(1118,true)],[(1113,false),(1117,true)],[(1113,false),(1114,false),(1118,true)],[(1113,false),(1115,false),(1119,true)]]
theorem merge114 : mergeClauses t110.outputLits t113.outputLits [1116,1117,1118,1119] = m114 := by rfl

def c114 : CNF := c110 ++ c113 ++ m114
theorem eq114 : t114.clauses = c114 := by
  change t110.clauses ++ t113.clauses ++ mergeClauses t110.outputLits t113.outputLits [1116,1117,1118,1119] = c114
  exact concat3_congr eq110 eq113 merge114

def t115 : CounterTree := .leaf (155,false)
def c115 : CNF := []
theorem eq115 : t115.clauses = c115 := rfl

def t116 : CounterTree := .leaf (161,false)
def c116 : CNF := []
theorem eq116 : t116.clauses = c116 := rfl

def t117 : CounterTree := .node [1120,1121] t115 t116
def m117 : CNF := [[(161,true),(1120,true)],[(155,true),(1120,true)],[(155,true),(161,true),(1121,true)]]
theorem merge117 : mergeClauses t115.outputLits t116.outputLits [1120,1121] = m117 := by rfl

def c117 : CNF := c115 ++ c116 ++ m117
theorem eq117 : t117.clauses = c117 := by
  change t115.clauses ++ t116.clauses ++ mergeClauses t115.outputLits t116.outputLits [1120,1121] = c117
  exact concat3_congr eq115 eq116 merge117

def t118 : CounterTree := .leaf (163,false)
def c118 : CNF := []
theorem eq118 : t118.clauses = c118 := rfl

def t119 : CounterTree := .leaf (165,false)
def c119 : CNF := []
theorem eq119 : t119.clauses = c119 := rfl

def t120 : CounterTree := .leaf (171,false)
def c120 : CNF := []
theorem eq120 : t120.clauses = c120 := rfl

def t121 : CounterTree := .node [1122,1123] t119 t120
def m121 : CNF := [[(171,true),(1122,true)],[(165,true),(1122,true)],[(165,true),(171,true),(1123,true)]]
theorem merge121 : mergeClauses t119.outputLits t120.outputLits [1122,1123] = m121 := by rfl

def c121 : CNF := c119 ++ c120 ++ m121
theorem eq121 : t121.clauses = c121 := by
  change t119.clauses ++ t120.clauses ++ mergeClauses t119.outputLits t120.outputLits [1122,1123] = c121
  exact concat3_congr eq119 eq120 merge121

def t122 : CounterTree := .node [1124,1125,1126] t118 t121
def m122 : CNF := [[(1122,false),(1124,true)],[(1123,false),(1125,true)],[(163,true),(1124,true)],[(163,true),(1122,false),(1125,true)],[(163,true),(1123,false),(1126,true)]]
theorem merge122 : mergeClauses t118.outputLits t121.outputLits [1124,1125,1126] = m122 := by rfl

def c122 : CNF := c118 ++ c121 ++ m122
theorem eq122 : t122.clauses = c122 := by
  change t118.clauses ++ t121.clauses ++ mergeClauses t118.outputLits t121.outputLits [1124,1125,1126] = c122
  exact concat3_congr eq118 eq121 merge122

def t123 : CounterTree := .node [1127,1128,1129,1130,1131] t117 t122
def m123 : CNF := [[(1124,false),(1127,true)],[(1125,false),(1128,true)],[(1126,false),(1129,true)],[(1120,false),(1127,true)],[(1120,false),(1124,false),(1128,true)],[(1120,false),(1125,false),(1129,true)],[(1120,false),(1126,false),(1130,true)],[(1121,false),(1128,true)],[(1121,false),(1124,false),(1129,true)],[(1121,false),(1125,false),(1130,true)],[(1121,false),(1126,false),(1131,true)]]
theorem merge123 : mergeClauses t117.outputLits t122.outputLits [1127,1128,1129,1130,1131] = m123 := by rfl

def c123 : CNF := c117 ++ c122 ++ m123
theorem eq123 : t123.clauses = c123 := by
  change t117.clauses ++ t122.clauses ++ mergeClauses t117.outputLits t122.outputLits [1127,1128,1129,1130,1131] = c123
  exact concat3_congr eq117 eq122 merge123

def t124 : CounterTree := .node [1132,1133,1134,1135,1136,1137,1138,1139,1140] t114 t123
def m124 : CNF := [[(1127,false),(1132,true)],[(1128,false),(1133,true)],[(1129,false),(1134,true)],[(1130,false),(1135,true)],[(1131,false),(1136,true)],[(1116,false),(1132,true)],[(1116,false),(1127,false),(1133,true)],[(1116,false),(1128,false),(1134,true)],[(1116,false),(1129,false),(1135,true)],[(1116,false),(1130,false),(1136,true)],[(1116,false),(1131,false),(1137,true)],[(1117,false),(1133,true)],[(1117,false),(1127,false),(1134,true)],[(1117,false),(1128,false),(1135,true)],[(1117,false),(1129,false),(1136,true)],[(1117,false),(1130,false),(1137,true)],[(1117,false),(1131,false),(1138,true)],[(1118,false),(1134,true)],[(1118,false),(1127,false),(1135,true)],[(1118,false),(1128,false),(1136,true)],[(1118,false),(1129,false),(1137,true)],[(1118,false),(1130,false),(1138,true)],[(1118,false),(1131,false),(1139,true)],[(1119,false),(1135,true)],[(1119,false),(1127,false),(1136,true)],[(1119,false),(1128,false),(1137,true)],[(1119,false),(1129,false),(1138,true)],[(1119,false),(1130,false),(1139,true)],[(1119,false),(1131,false),(1140,true)]]
theorem merge124 : mergeClauses t114.outputLits t123.outputLits [1132,1133,1134,1135,1136,1137,1138,1139,1140] = m124 := by rfl

def c124 : CNF := c114 ++ c123 ++ m124
theorem eq124 : t124.clauses = c124 := by
  change t114.clauses ++ t123.clauses ++ mergeClauses t114.outputLits t123.outputLits [1132,1133,1134,1135,1136,1137,1138,1139,1140] = c124
  exact concat3_congr eq114 eq123 merge124

def t125 : CounterTree := .node [1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158] t107 t124
def m125 : CNF := [[(1132,false),(1141,true)],[(1133,false),(1142,true)],[(1134,false),(1143,true)],[(1135,false),(1144,true)],[(1136,false),(1145,true)],[(1137,false),(1146,true)],[(1138,false),(1147,true)],[(1139,false),(1148,true)],[(1140,false),(1149,true)],[(1103,false),(1141,true)],[(1103,false),(1132,false),(1142,true)],[(1103,false),(1133,false),(1143,true)],[(1103,false),(1134,false),(1144,true)],[(1103,false),(1135,false),(1145,true)],[(1103,false),(1136,false),(1146,true)],[(1103,false),(1137,false),(1147,true)],[(1103,false),(1138,false),(1148,true)],[(1103,false),(1139,false),(1149,true)],[(1103,false),(1140,false),(1150,true)],[(1104,false),(1142,true)],[(1104,false),(1132,false),(1143,true)],[(1104,false),(1133,false),(1144,true)],[(1104,false),(1134,false),(1145,true)],[(1104,false),(1135,false),(1146,true)],[(1104,false),(1136,false),(1147,true)],[(1104,false),(1137,false),(1148,true)],[(1104,false),(1138,false),(1149,true)],[(1104,false),(1139,false),(1150,true)],[(1104,false),(1140,false),(1151,true)],[(1105,false),(1143,true)],[(1105,false),(1132,false),(1144,true)],[(1105,false),(1133,false),(1145,true)],[(1105,false),(1134,false),(1146,true)],[(1105,false),(1135,false),(1147,true)],[(1105,false),(1136,false),(1148,true)],[(1105,false),(1137,false),(1149,true)],[(1105,false),(1138,false),(1150,true)],[(1105,false),(1139,false),(1151,true)],[(1105,false),(1140,false),(1152,true)],[(1106,false),(1144,true)],[(1106,false),(1132,false),(1145,true)],[(1106,false),(1133,false),(1146,true)],[(1106,false),(1134,false),(1147,true)],[(1106,false),(1135,false),(1148,true)],[(1106,false),(1136,false),(1149,true)],[(1106,false),(1137,false),(1150,true)],[(1106,false),(1138,false),(1151,true)],[(1106,false),(1139,false),(1152,true)],[(1106,false),(1140,false),(1153,true)],[(1107,false),(1145,true)],[(1107,false),(1132,false),(1146,true)],[(1107,false),(1133,false),(1147,true)],[(1107,false),(1134,false),(1148,true)],[(1107,false),(1135,false),(1149,true)],[(1107,false),(1136,false),(1150,true)],[(1107,false),(1137,false),(1151,true)],[(1107,false),(1138,false),(1152,true)],[(1107,false),(1139,false),(1153,true)],[(1107,false),(1140,false),(1154,true)],[(1108,false),(1146,true)],[(1108,false),(1132,false),(1147,true)],[(1108,false),(1133,false),(1148,true)],[(1108,false),(1134,false),(1149,true)],[(1108,false),(1135,false),(1150,true)],[(1108,false),(1136,false),(1151,true)],[(1108,false),(1137,false),(1152,true)],[(1108,false),(1138,false),(1153,true)],[(1108,false),(1139,false),(1154,true)],[(1108,false),(1140,false),(1155,true)],[(1109,false),(1147,true)],[(1109,false),(1132,false),(1148,true)],[(1109,false),(1133,false),(1149,true)],[(1109,false),(1134,false),(1150,true)],[(1109,false),(1135,false),(1151,true)],[(1109,false),(1136,false),(1152,true)],[(1109,false),(1137,false),(1153,true)],[(1109,false),(1138,false),(1154,true)],[(1109,false),(1139,false),(1155,true)],[(1109,false),(1140,false),(1156,true)],[(1110,false),(1148,true)],[(1110,false),(1132,false),(1149,true)],[(1110,false),(1133,false),(1150,true)],[(1110,false),(1134,false),(1151,true)],[(1110,false),(1135,false),(1152,true)],[(1110,false),(1136,false),(1153,true)],[(1110,false),(1137,false),(1154,true)],[(1110,false),(1138,false),(1155,true)],[(1110,false),(1139,false),(1156,true)],[(1110,false),(1140,false),(1157,true)],[(1111,false),(1149,true)],[(1111,false),(1132,false),(1150,true)],[(1111,false),(1133,false),(1151,true)],[(1111,false),(1134,false),(1152,true)],[(1111,false),(1135,false),(1153,true)],[(1111,false),(1136,false),(1154,true)],[(1111,false),(1137,false),(1155,true)],[(1111,false),(1138,false),(1156,true)],[(1111,false),(1139,false),(1157,true)],[(1111,false),(1140,false),(1158,true)]]
theorem merge125 : mergeClauses t107.outputLits t124.outputLits [1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158] = m125 := by rfl

def c125 : CNF := c107 ++ c124 ++ m125
theorem eq125 : t125.clauses = c125 := by
  change t107.clauses ++ t124.clauses ++ mergeClauses t107.outputLits t124.outputLits [1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158] = c125
  exact concat3_congr eq107 eq124 merge125

def t126 : CounterTree := .node [1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194] t90 t125
def m126 : CNF := [[(1141,false),(1159,true)],[(1142,false),(1160,true)],[(1143,false),(1161,true)],[(1144,false),(1162,true)],[(1145,false),(1163,true)],[(1146,false),(1164,true)],[(1147,false),(1165,true)],[(1148,false),(1166,true)],[(1149,false),(1167,true)],[(1150,false),(1168,true)],[(1151,false),(1169,true)],[(1152,false),(1170,true)],[(1153,false),(1171,true)],[(1154,false),(1172,true)],[(1155,false),(1173,true)],[(1156,false),(1174,true)],[(1157,false),(1175,true)],[(1158,false),(1176,true)],[(1065,false),(1159,true)],[(1065,false),(1141,false),(1160,true)],[(1065,false),(1142,false),(1161,true)],[(1065,false),(1143,false),(1162,true)],[(1065,false),(1144,false),(1163,true)],[(1065,false),(1145,false),(1164,true)],[(1065,false),(1146,false),(1165,true)],[(1065,false),(1147,false),(1166,true)],[(1065,false),(1148,false),(1167,true)],[(1065,false),(1149,false),(1168,true)],[(1065,false),(1150,false),(1169,true)],[(1065,false),(1151,false),(1170,true)],[(1065,false),(1152,false),(1171,true)],[(1065,false),(1153,false),(1172,true)],[(1065,false),(1154,false),(1173,true)],[(1065,false),(1155,false),(1174,true)],[(1065,false),(1156,false),(1175,true)],[(1065,false),(1157,false),(1176,true)],[(1065,false),(1158,false),(1177,true)],[(1066,false),(1160,true)],[(1066,false),(1141,false),(1161,true)],[(1066,false),(1142,false),(1162,true)],[(1066,false),(1143,false),(1163,true)],[(1066,false),(1144,false),(1164,true)],[(1066,false),(1145,false),(1165,true)],[(1066,false),(1146,false),(1166,true)],[(1066,false),(1147,false),(1167,true)],[(1066,false),(1148,false),(1168,true)],[(1066,false),(1149,false),(1169,true)],[(1066,false),(1150,false),(1170,true)],[(1066,false),(1151,false),(1171,true)],[(1066,false),(1152,false),(1172,true)],[(1066,false),(1153,false),(1173,true)],[(1066,false),(1154,false),(1174,true)],[(1066,false),(1155,false),(1175,true)],[(1066,false),(1156,false),(1176,true)],[(1066,false),(1157,false),(1177,true)],[(1066,false),(1158,false),(1178,true)],[(1067,false),(1161,true)],[(1067,false),(1141,false),(1162,true)],[(1067,false),(1142,false),(1163,true)],[(1067,false),(1143,false),(1164,true)],[(1067,false),(1144,false),(1165,true)],[(1067,false),(1145,false),(1166,true)],[(1067,false),(1146,false),(1167,true)],[(1067,false),(1147,false),(1168,true)],[(1067,false),(1148,false),(1169,true)],[(1067,false),(1149,false),(1170,true)],[(1067,false),(1150,false),(1171,true)],[(1067,false),(1151,false),(1172,true)],[(1067,false),(1152,false),(1173,true)],[(1067,false),(1153,false),(1174,true)],[(1067,false),(1154,false),(1175,true)],[(1067,false),(1155,false),(1176,true)],[(1067,false),(1156,false),(1177,true)],[(1067,false),(1157,false),(1178,true)],[(1067,false),(1158,false),(1179,true)],[(1068,false),(1162,true)],[(1068,false),(1141,false),(1163,true)],[(1068,false),(1142,false),(1164,true)],[(1068,false),(1143,false),(1165,true)],[(1068,false),(1144,false),(1166,true)],[(1068,false),(1145,false),(1167,true)],[(1068,false),(1146,false),(1168,true)],[(1068,false),(1147,false),(1169,true)],[(1068,false),(1148,false),(1170,true)],[(1068,false),(1149,false),(1171,true)],[(1068,false),(1150,false),(1172,true)],[(1068,false),(1151,false),(1173,true)],[(1068,false),(1152,false),(1174,true)],[(1068,false),(1153,false),(1175,true)],[(1068,false),(1154,false),(1176,true)],[(1068,false),(1155,false),(1177,true)],[(1068,false),(1156,false),(1178,true)],[(1068,false),(1157,false),(1179,true)],[(1068,false),(1158,false),(1180,true)],[(1069,false),(1163,true)],[(1069,false),(1141,false),(1164,true)],[(1069,false),(1142,false),(1165,true)],[(1069,false),(1143,false),(1166,true)],[(1069,false),(1144,false),(1167,true)],[(1069,false),(1145,false),(1168,true)],[(1069,false),(1146,false),(1169,true)],[(1069,false),(1147,false),(1170,true)],[(1069,false),(1148,false),(1171,true)],[(1069,false),(1149,false),(1172,true)],[(1069,false),(1150,false),(1173,true)],[(1069,false),(1151,false),(1174,true)],[(1069,false),(1152,false),(1175,true)],[(1069,false),(1153,false),(1176,true)],[(1069,false),(1154,false),(1177,true)],[(1069,false),(1155,false),(1178,true)],[(1069,false),(1156,false),(1179,true)],[(1069,false),(1157,false),(1180,true)],[(1069,false),(1158,false),(1181,true)],[(1070,false),(1164,true)],[(1070,false),(1141,false),(1165,true)],[(1070,false),(1142,false),(1166,true)],[(1070,false),(1143,false),(1167,true)],[(1070,false),(1144,false),(1168,true)],[(1070,false),(1145,false),(1169,true)],[(1070,false),(1146,false),(1170,true)],[(1070,false),(1147,false),(1171,true)],[(1070,false),(1148,false),(1172,true)],[(1070,false),(1149,false),(1173,true)],[(1070,false),(1150,false),(1174,true)],[(1070,false),(1151,false),(1175,true)],[(1070,false),(1152,false),(1176,true)],[(1070,false),(1153,false),(1177,true)],[(1070,false),(1154,false),(1178,true)],[(1070,false),(1155,false),(1179,true)],[(1070,false),(1156,false),(1180,true)],[(1070,false),(1157,false),(1181,true)],[(1070,false),(1158,false),(1182,true)],[(1071,false),(1165,true)],[(1071,false),(1141,false),(1166,true)],[(1071,false),(1142,false),(1167,true)],[(1071,false),(1143,false),(1168,true)],[(1071,false),(1144,false),(1169,true)],[(1071,false),(1145,false),(1170,true)],[(1071,false),(1146,false),(1171,true)],[(1071,false),(1147,false),(1172,true)],[(1071,false),(1148,false),(1173,true)],[(1071,false),(1149,false),(1174,true)],[(1071,false),(1150,false),(1175,true)],[(1071,false),(1151,false),(1176,true)],[(1071,false),(1152,false),(1177,true)],[(1071,false),(1153,false),(1178,true)],[(1071,false),(1154,false),(1179,true)],[(1071,false),(1155,false),(1180,true)],[(1071,false),(1156,false),(1181,true)],[(1071,false),(1157,false),(1182,true)],[(1071,false),(1158,false),(1183,true)],[(1072,false),(1166,true)],[(1072,false),(1141,false),(1167,true)],[(1072,false),(1142,false),(1168,true)],[(1072,false),(1143,false),(1169,true)],[(1072,false),(1144,false),(1170,true)],[(1072,false),(1145,false),(1171,true)],[(1072,false),(1146,false),(1172,true)],[(1072,false),(1147,false),(1173,true)],[(1072,false),(1148,false),(1174,true)],[(1072,false),(1149,false),(1175,true)],[(1072,false),(1150,false),(1176,true)],[(1072,false),(1151,false),(1177,true)],[(1072,false),(1152,false),(1178,true)],[(1072,false),(1153,false),(1179,true)],[(1072,false),(1154,false),(1180,true)],[(1072,false),(1155,false),(1181,true)],[(1072,false),(1156,false),(1182,true)],[(1072,false),(1157,false),(1183,true)],[(1072,false),(1158,false),(1184,true)],[(1073,false),(1167,true)],[(1073,false),(1141,false),(1168,true)],[(1073,false),(1142,false),(1169,true)],[(1073,false),(1143,false),(1170,true)],[(1073,false),(1144,false),(1171,true)],[(1073,false),(1145,false),(1172,true)],[(1073,false),(1146,false),(1173,true)],[(1073,false),(1147,false),(1174,true)],[(1073,false),(1148,false),(1175,true)],[(1073,false),(1149,false),(1176,true)],[(1073,false),(1150,false),(1177,true)],[(1073,false),(1151,false),(1178,true)],[(1073,false),(1152,false),(1179,true)],[(1073,false),(1153,false),(1180,true)],[(1073,false),(1154,false),(1181,true)],[(1073,false),(1155,false),(1182,true)],[(1073,false),(1156,false),(1183,true)],[(1073,false),(1157,false),(1184,true)],[(1073,false),(1158,false),(1185,true)],[(1074,false),(1168,true)],[(1074,false),(1141,false),(1169,true)],[(1074,false),(1142,false),(1170,true)],[(1074,false),(1143,false),(1171,true)],[(1074,false),(1144,false),(1172,true)],[(1074,false),(1145,false),(1173,true)],[(1074,false),(1146,false),(1174,true)],[(1074,false),(1147,false),(1175,true)],[(1074,false),(1148,false),(1176,true)],[(1074,false),(1149,false),(1177,true)],[(1074,false),(1150,false),(1178,true)],[(1074,false),(1151,false),(1179,true)],[(1074,false),(1152,false),(1180,true)],[(1074,false),(1153,false),(1181,true)],[(1074,false),(1154,false),(1182,true)],[(1074,false),(1155,false),(1183,true)],[(1074,false),(1156,false),(1184,true)],[(1074,false),(1157,false),(1185,true)],[(1074,false),(1158,false),(1186,true)],[(1075,false),(1169,true)],[(1075,false),(1141,false),(1170,true)],[(1075,false),(1142,false),(1171,true)],[(1075,false),(1143,false),(1172,true)],[(1075,false),(1144,false),(1173,true)],[(1075,false),(1145,false),(1174,true)],[(1075,false),(1146,false),(1175,true)],[(1075,false),(1147,false),(1176,true)],[(1075,false),(1148,false),(1177,true)],[(1075,false),(1149,false),(1178,true)],[(1075,false),(1150,false),(1179,true)],[(1075,false),(1151,false),(1180,true)],[(1075,false),(1152,false),(1181,true)],[(1075,false),(1153,false),(1182,true)],[(1075,false),(1154,false),(1183,true)],[(1075,false),(1155,false),(1184,true)],[(1075,false),(1156,false),(1185,true)],[(1075,false),(1157,false),(1186,true)],[(1075,false),(1158,false),(1187,true)],[(1076,false),(1170,true)],[(1076,false),(1141,false),(1171,true)],[(1076,false),(1142,false),(1172,true)],[(1076,false),(1143,false),(1173,true)],[(1076,false),(1144,false),(1174,true)],[(1076,false),(1145,false),(1175,true)],[(1076,false),(1146,false),(1176,true)],[(1076,false),(1147,false),(1177,true)],[(1076,false),(1148,false),(1178,true)],[(1076,false),(1149,false),(1179,true)],[(1076,false),(1150,false),(1180,true)],[(1076,false),(1151,false),(1181,true)],[(1076,false),(1152,false),(1182,true)],[(1076,false),(1153,false),(1183,true)],[(1076,false),(1154,false),(1184,true)],[(1076,false),(1155,false),(1185,true)],[(1076,false),(1156,false),(1186,true)],[(1076,false),(1157,false),(1187,true)],[(1076,false),(1158,false),(1188,true)],[(1077,false),(1171,true)],[(1077,false),(1141,false),(1172,true)],[(1077,false),(1142,false),(1173,true)],[(1077,false),(1143,false),(1174,true)],[(1077,false),(1144,false),(1175,true)],[(1077,false),(1145,false),(1176,true)],[(1077,false),(1146,false),(1177,true)],[(1077,false),(1147,false),(1178,true)],[(1077,false),(1148,false),(1179,true)],[(1077,false),(1149,false),(1180,true)],[(1077,false),(1150,false),(1181,true)],[(1077,false),(1151,false),(1182,true)],[(1077,false),(1152,false),(1183,true)],[(1077,false),(1153,false),(1184,true)],[(1077,false),(1154,false),(1185,true)],[(1077,false),(1155,false),(1186,true)],[(1077,false),(1156,false),(1187,true)],[(1077,false),(1157,false),(1188,true)],[(1077,false),(1158,false),(1189,true)],[(1078,false),(1172,true)],[(1078,false),(1141,false),(1173,true)],[(1078,false),(1142,false),(1174,true)],[(1078,false),(1143,false),(1175,true)],[(1078,false),(1144,false),(1176,true)],[(1078,false),(1145,false),(1177,true)],[(1078,false),(1146,false),(1178,true)],[(1078,false),(1147,false),(1179,true)],[(1078,false),(1148,false),(1180,true)],[(1078,false),(1149,false),(1181,true)],[(1078,false),(1150,false),(1182,true)],[(1078,false),(1151,false),(1183,true)],[(1078,false),(1152,false),(1184,true)],[(1078,false),(1153,false),(1185,true)],[(1078,false),(1154,false),(1186,true)],[(1078,false),(1155,false),(1187,true)],[(1078,false),(1156,false),(1188,true)],[(1078,false),(1157,false),(1189,true)],[(1078,false),(1158,false),(1190,true)],[(1079,false),(1173,true)],[(1079,false),(1141,false),(1174,true)],[(1079,false),(1142,false),(1175,true)],[(1079,false),(1143,false),(1176,true)],[(1079,false),(1144,false),(1177,true)],[(1079,false),(1145,false),(1178,true)],[(1079,false),(1146,false),(1179,true)],[(1079,false),(1147,false),(1180,true)],[(1079,false),(1148,false),(1181,true)],[(1079,false),(1149,false),(1182,true)],[(1079,false),(1150,false),(1183,true)],[(1079,false),(1151,false),(1184,true)],[(1079,false),(1152,false),(1185,true)],[(1079,false),(1153,false),(1186,true)],[(1079,false),(1154,false),(1187,true)],[(1079,false),(1155,false),(1188,true)],[(1079,false),(1156,false),(1189,true)],[(1079,false),(1157,false),(1190,true)],[(1079,false),(1158,false),(1191,true)],[(1080,false),(1174,true)],[(1080,false),(1141,false),(1175,true)],[(1080,false),(1142,false),(1176,true)],[(1080,false),(1143,false),(1177,true)],[(1080,false),(1144,false),(1178,true)],[(1080,false),(1145,false),(1179,true)],[(1080,false),(1146,false),(1180,true)],[(1080,false),(1147,false),(1181,true)],[(1080,false),(1148,false),(1182,true)],[(1080,false),(1149,false),(1183,true)],[(1080,false),(1150,false),(1184,true)],[(1080,false),(1151,false),(1185,true)],[(1080,false),(1152,false),(1186,true)],[(1080,false),(1153,false),(1187,true)],[(1080,false),(1154,false),(1188,true)],[(1080,false),(1155,false),(1189,true)],[(1080,false),(1156,false),(1190,true)],[(1080,false),(1157,false),(1191,true)],[(1080,false),(1158,false),(1192,true)],[(1081,false),(1175,true)],[(1081,false),(1141,false),(1176,true)],[(1081,false),(1142,false),(1177,true)],[(1081,false),(1143,false),(1178,true)],[(1081,false),(1144,false),(1179,true)],[(1081,false),(1145,false),(1180,true)],[(1081,false),(1146,false),(1181,true)],[(1081,false),(1147,false),(1182,true)],[(1081,false),(1148,false),(1183,true)],[(1081,false),(1149,false),(1184,true)],[(1081,false),(1150,false),(1185,true)],[(1081,false),(1151,false),(1186,true)],[(1081,false),(1152,false),(1187,true)],[(1081,false),(1153,false),(1188,true)],[(1081,false),(1154,false),(1189,true)],[(1081,false),(1155,false),(1190,true)],[(1081,false),(1156,false),(1191,true)],[(1081,false),(1157,false),(1192,true)],[(1081,false),(1158,false),(1193,true)],[(1082,false),(1176,true)],[(1082,false),(1141,false),(1177,true)],[(1082,false),(1142,false),(1178,true)],[(1082,false),(1143,false),(1179,true)],[(1082,false),(1144,false),(1180,true)],[(1082,false),(1145,false),(1181,true)],[(1082,false),(1146,false),(1182,true)],[(1082,false),(1147,false),(1183,true)],[(1082,false),(1148,false),(1184,true)],[(1082,false),(1149,false),(1185,true)],[(1082,false),(1150,false),(1186,true)],[(1082,false),(1151,false),(1187,true)],[(1082,false),(1152,false),(1188,true)],[(1082,false),(1153,false),(1189,true)],[(1082,false),(1154,false),(1190,true)],[(1082,false),(1155,false),(1191,true)],[(1082,false),(1156,false),(1192,true)],[(1082,false),(1157,false),(1193,true)],[(1082,false),(1158,false),(1194,true)]]
theorem merge126 : mergeClauses t90.outputLits t125.outputLits [1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194] = m126 := by rfl

def c126 : CNF := c90 ++ c125 ++ m126
theorem eq126 : t126.clauses = c126 := by
  change t90.clauses ++ t125.clauses ++ mergeClauses t90.outputLits t125.outputLits [1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194] = c126
  exact concat3_congr eq90 eq125 merge126


end EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes
