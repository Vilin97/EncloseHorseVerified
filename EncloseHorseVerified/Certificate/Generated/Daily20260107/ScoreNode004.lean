import EncloseHorseVerified.Certificate.Generated.Daily20260107.ScoreNode003

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes

def t70 : CounterTree := .node [1019,1020,1021] t63 t69
def m70 : CNF := [[(1017,false),(1019,true)],[(1018,false),(1020,true)],[(79,true),(1019,true)],[(79,true),(1017,false),(1020,true)],[(79,true),(1018,false),(1021,true)]]
theorem merge70 : mergeClauses t63.outputLits t69.outputLits [1019,1020,1021] = m70 := by rfl

def c70 : CNF := c63 ++ c69 ++ m70
theorem eq70 : t70.clauses = c70 := by
  change t63.clauses ++ t69.clauses ++ mergeClauses t63.outputLits t69.outputLits [1019,1020,1021] = c70
  exact concat3_congr eq63 eq69 merge70

def t71 : CounterTree := .node [1022,1023,1024,1025,1026] t66 t70
def m71 : CNF := [[(1019,false),(1022,true)],[(1020,false),(1023,true)],[(1021,false),(1024,true)],[(1015,false),(1022,true)],[(1015,false),(1019,false),(1023,true)],[(1015,false),(1020,false),(1024,true)],[(1015,false),(1021,false),(1025,true)],[(1016,false),(1023,true)],[(1016,false),(1019,false),(1024,true)],[(1016,false),(1020,false),(1025,true)],[(1016,false),(1021,false),(1026,true)]]
theorem merge71 : mergeClauses t66.outputLits t70.outputLits [1022,1023,1024,1025,1026] = m71 := by rfl

def c71 : CNF := c66 ++ c70 ++ m71
theorem eq71 : t71.clauses = c71 := by
  change t66.clauses ++ t70.clauses ++ mergeClauses t66.outputLits t70.outputLits [1022,1023,1024,1025,1026] = c71
  exact concat3_congr eq66 eq70 merge71

def t72 : CounterTree := .node [1027,1028,1029,1030,1031,1032,1033,1034,1035] t65 t71
def m72 : CNF := [[(1022,false),(1027,true)],[(1023,false),(1028,true)],[(1024,false),(1029,true)],[(1025,false),(1030,true)],[(1026,false),(1031,true)],[(1011,false),(1027,true)],[(1011,false),(1022,false),(1028,true)],[(1011,false),(1023,false),(1029,true)],[(1011,false),(1024,false),(1030,true)],[(1011,false),(1025,false),(1031,true)],[(1011,false),(1026,false),(1032,true)],[(1012,false),(1028,true)],[(1012,false),(1022,false),(1029,true)],[(1012,false),(1023,false),(1030,true)],[(1012,false),(1024,false),(1031,true)],[(1012,false),(1025,false),(1032,true)],[(1012,false),(1026,false),(1033,true)],[(1013,false),(1029,true)],[(1013,false),(1022,false),(1030,true)],[(1013,false),(1023,false),(1031,true)],[(1013,false),(1024,false),(1032,true)],[(1013,false),(1025,false),(1033,true)],[(1013,false),(1026,false),(1034,true)],[(1014,false),(1030,true)],[(1014,false),(1022,false),(1031,true)],[(1014,false),(1023,false),(1032,true)],[(1014,false),(1024,false),(1033,true)],[(1014,false),(1025,false),(1034,true)],[(1014,false),(1026,false),(1035,true)]]
theorem merge72 : mergeClauses t65.outputLits t71.outputLits [1027,1028,1029,1030,1031,1032,1033,1034,1035] = m72 := by rfl

def c72 : CNF := c65 ++ c71 ++ m72
theorem eq72 : t72.clauses = c72 := by
  change t65.clauses ++ t71.clauses ++ mergeClauses t65.outputLits t71.outputLits [1027,1028,1029,1030,1031,1032,1033,1034,1035] = c72
  exact concat3_congr eq65 eq71 merge72

def t73 : CounterTree := .leaf (93,false)
def c73 : CNF := []
theorem eq73 : t73.clauses = c73 := rfl

def t74 : CounterTree := .leaf (99,false)
def c74 : CNF := []
theorem eq74 : t74.clauses = c74 := rfl

def t75 : CounterTree := .node [1036,1037] t73 t74
def m75 : CNF := [[(99,true),(1036,true)],[(93,true),(1036,true)],[(93,true),(99,true),(1037,true)]]
theorem merge75 : mergeClauses t73.outputLits t74.outputLits [1036,1037] = m75 := by rfl

def c75 : CNF := c73 ++ c74 ++ m75
theorem eq75 : t75.clauses = c75 := by
  change t73.clauses ++ t74.clauses ++ mergeClauses t73.outputLits t74.outputLits [1036,1037] = c75
  exact concat3_congr eq73 eq74 merge75

def t76 : CounterTree := .leaf (103,false)
def c76 : CNF := []
theorem eq76 : t76.clauses = c76 := rfl

def t77 : CounterTree := .leaf (109,false)
def c77 : CNF := []
theorem eq77 : t77.clauses = c77 := rfl

def t78 : CounterTree := .node [1038,1039] t76 t77
def m78 : CNF := [[(109,true),(1038,true)],[(103,true),(1038,true)],[(103,true),(109,true),(1039,true)]]
theorem merge78 : mergeClauses t76.outputLits t77.outputLits [1038,1039] = m78 := by rfl

def c78 : CNF := c76 ++ c77 ++ m78
theorem eq78 : t78.clauses = c78 := by
  change t76.clauses ++ t77.clauses ++ mergeClauses t76.outputLits t77.outputLits [1038,1039] = c78
  exact concat3_congr eq76 eq77 merge78

def t79 : CounterTree := .node [1040,1041,1042,1043] t75 t78
def m79 : CNF := [[(1038,false),(1040,true)],[(1039,false),(1041,true)],[(1036,false),(1040,true)],[(1036,false),(1038,false),(1041,true)],[(1036,false),(1039,false),(1042,true)],[(1037,false),(1041,true)],[(1037,false),(1038,false),(1042,true)],[(1037,false),(1039,false),(1043,true)]]
theorem merge79 : mergeClauses t75.outputLits t78.outputLits [1040,1041,1042,1043] = m79 := by rfl

def c79 : CNF := c75 ++ c78 ++ m79
theorem eq79 : t79.clauses = c79 := by
  change t75.clauses ++ t78.clauses ++ mergeClauses t75.outputLits t78.outputLits [1040,1041,1042,1043] = c79
  exact concat3_congr eq75 eq78 merge79

def t80 : CounterTree := .leaf (111,false)
def c80 : CNF := []
theorem eq80 : t80.clauses = c80 := rfl

def t81 : CounterTree := .leaf (113,false)
def c81 : CNF := []
theorem eq81 : t81.clauses = c81 := rfl

def t82 : CounterTree := .node [1044,1045] t80 t81
def m82 : CNF := [[(113,true),(1044,true)],[(111,true),(1044,true)],[(111,true),(113,true),(1045,true)]]
theorem merge82 : mergeClauses t80.outputLits t81.outputLits [1044,1045] = m82 := by rfl

def c82 : CNF := c80 ++ c81 ++ m82
theorem eq82 : t82.clauses = c82 := by
  change t80.clauses ++ t81.clauses ++ mergeClauses t80.outputLits t81.outputLits [1044,1045] = c82
  exact concat3_congr eq80 eq81 merge82

def t83 : CounterTree := .leaf (115,false)
def c83 : CNF := []
theorem eq83 : t83.clauses = c83 := rfl

def t84 : CounterTree := .leaf (117,false)
def c84 : CNF := []
theorem eq84 : t84.clauses = c84 := rfl

def t85 : CounterTree := .leaf (123,false)
def c85 : CNF := []
theorem eq85 : t85.clauses = c85 := rfl

def t86 : CounterTree := .node [1046,1047] t84 t85
def m86 : CNF := [[(123,true),(1046,true)],[(117,true),(1046,true)],[(117,true),(123,true),(1047,true)]]
theorem merge86 : mergeClauses t84.outputLits t85.outputLits [1046,1047] = m86 := by rfl

def c86 : CNF := c84 ++ c85 ++ m86
theorem eq86 : t86.clauses = c86 := by
  change t84.clauses ++ t85.clauses ++ mergeClauses t84.outputLits t85.outputLits [1046,1047] = c86
  exact concat3_congr eq84 eq85 merge86

def t87 : CounterTree := .node [1048,1049,1050] t83 t86
def m87 : CNF := [[(1046,false),(1048,true)],[(1047,false),(1049,true)],[(115,true),(1048,true)],[(115,true),(1046,false),(1049,true)],[(115,true),(1047,false),(1050,true)]]
theorem merge87 : mergeClauses t83.outputLits t86.outputLits [1048,1049,1050] = m87 := by rfl

def c87 : CNF := c83 ++ c86 ++ m87
theorem eq87 : t87.clauses = c87 := by
  change t83.clauses ++ t86.clauses ++ mergeClauses t83.outputLits t86.outputLits [1048,1049,1050] = c87
  exact concat3_congr eq83 eq86 merge87

def t88 : CounterTree := .node [1051,1052,1053,1054,1055] t82 t87
def m88 : CNF := [[(1048,false),(1051,true)],[(1049,false),(1052,true)],[(1050,false),(1053,true)],[(1044,false),(1051,true)],[(1044,false),(1048,false),(1052,true)],[(1044,false),(1049,false),(1053,true)],[(1044,false),(1050,false),(1054,true)],[(1045,false),(1052,true)],[(1045,false),(1048,false),(1053,true)],[(1045,false),(1049,false),(1054,true)],[(1045,false),(1050,false),(1055,true)]]
theorem merge88 : mergeClauses t82.outputLits t87.outputLits [1051,1052,1053,1054,1055] = m88 := by rfl

def c88 : CNF := c82 ++ c87 ++ m88
theorem eq88 : t88.clauses = c88 := by
  change t82.clauses ++ t87.clauses ++ mergeClauses t82.outputLits t87.outputLits [1051,1052,1053,1054,1055] = c88
  exact concat3_congr eq82 eq87 merge88


end EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes
