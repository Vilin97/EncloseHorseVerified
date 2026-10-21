import EncloseHorseVerified.Certificate.Generated.Daily20260107.ScoreNode001

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes

def t36 : CounterTree := .node [903,904] t33 t33
def m36 : CNF := [[(53,true),(903,true)],[(53,true),(903,true)],[(53,true),(53,true),(904,true)]]
theorem merge36 : mergeClauses t33.outputLits t33.outputLits [903,904] = m36 := by rfl

def c36 : CNF := c33 ++ c33 ++ m36
theorem eq36 : t36.clauses = c36 := by
  change t33.clauses ++ t33.clauses ++ mergeClauses t33.outputLits t33.outputLits [903,904] = c36
  exact concat3_congr eq33 eq33 merge36

def t37 : CounterTree := .leaf (55,false)
def c37 : CNF := []
theorem eq37 : t37.clauses = c37 := rfl

def t38 : CounterTree := .leaf (57,false)
def c38 : CNF := []
theorem eq38 : t38.clauses = c38 := rfl

def t39 : CounterTree := .node [905,906] t37 t38
def m39 : CNF := [[(57,true),(905,true)],[(55,true),(905,true)],[(55,true),(57,true),(906,true)]]
theorem merge39 : mergeClauses t37.outputLits t38.outputLits [905,906] = m39 := by rfl

def c39 : CNF := c37 ++ c38 ++ m39
theorem eq39 : t39.clauses = c39 := by
  change t37.clauses ++ t38.clauses ++ mergeClauses t37.outputLits t38.outputLits [905,906] = c39
  exact concat3_congr eq37 eq38 merge39

def t40 : CounterTree := .node [907,908,909] t33 t39
def m40 : CNF := [[(905,false),(907,true)],[(906,false),(908,true)],[(53,true),(907,true)],[(53,true),(905,false),(908,true)],[(53,true),(906,false),(909,true)]]
theorem merge40 : mergeClauses t33.outputLits t39.outputLits [907,908,909] = m40 := by rfl

def c40 : CNF := c33 ++ c39 ++ m40
theorem eq40 : t40.clauses = c40 := by
  change t33.clauses ++ t39.clauses ++ mergeClauses t33.outputLits t39.outputLits [907,908,909] = c40
  exact concat3_congr eq33 eq39 merge40

def t41 : CounterTree := .node [910,911,912,913,914] t36 t40
def m41 : CNF := [[(907,false),(910,true)],[(908,false),(911,true)],[(909,false),(912,true)],[(903,false),(910,true)],[(903,false),(907,false),(911,true)],[(903,false),(908,false),(912,true)],[(903,false),(909,false),(913,true)],[(904,false),(911,true)],[(904,false),(907,false),(912,true)],[(904,false),(908,false),(913,true)],[(904,false),(909,false),(914,true)]]
theorem merge41 : mergeClauses t36.outputLits t40.outputLits [910,911,912,913,914] = m41 := by rfl

def c41 : CNF := c36 ++ c40 ++ m41
theorem eq41 : t41.clauses = c41 := by
  change t36.clauses ++ t40.clauses ++ mergeClauses t36.outputLits t40.outputLits [910,911,912,913,914] = c41
  exact concat3_congr eq36 eq40 merge41

def t42 : CounterTree := .node [915,916,917,918,919,920,921,922,923] t35 t41
def m42 : CNF := [[(910,false),(915,true)],[(911,false),(916,true)],[(912,false),(917,true)],[(913,false),(918,true)],[(914,false),(919,true)],[(899,false),(915,true)],[(899,false),(910,false),(916,true)],[(899,false),(911,false),(917,true)],[(899,false),(912,false),(918,true)],[(899,false),(913,false),(919,true)],[(899,false),(914,false),(920,true)],[(900,false),(916,true)],[(900,false),(910,false),(917,true)],[(900,false),(911,false),(918,true)],[(900,false),(912,false),(919,true)],[(900,false),(913,false),(920,true)],[(900,false),(914,false),(921,true)],[(901,false),(917,true)],[(901,false),(910,false),(918,true)],[(901,false),(911,false),(919,true)],[(901,false),(912,false),(920,true)],[(901,false),(913,false),(921,true)],[(901,false),(914,false),(922,true)],[(902,false),(918,true)],[(902,false),(910,false),(919,true)],[(902,false),(911,false),(920,true)],[(902,false),(912,false),(921,true)],[(902,false),(913,false),(922,true)],[(902,false),(914,false),(923,true)]]
theorem merge42 : mergeClauses t35.outputLits t41.outputLits [915,916,917,918,919,920,921,922,923] = m42 := by rfl

def c42 : CNF := c35 ++ c41 ++ m42
theorem eq42 : t42.clauses = c42 := by
  change t35.clauses ++ t41.clauses ++ mergeClauses t35.outputLits t41.outputLits [915,916,917,918,919,920,921,922,923] = c42
  exact concat3_congr eq35 eq41 merge42

def t43 : CounterTree := .leaf (59,false)
def c43 : CNF := []
theorem eq43 : t43.clauses = c43 := rfl

def t44 : CounterTree := .leaf (61,false)
def c44 : CNF := []
theorem eq44 : t44.clauses = c44 := rfl

def t45 : CounterTree := .node [924,925] t43 t44
def m45 : CNF := [[(61,true),(924,true)],[(59,true),(924,true)],[(59,true),(61,true),(925,true)]]
theorem merge45 : mergeClauses t43.outputLits t44.outputLits [924,925] = m45 := by rfl

def c45 : CNF := c43 ++ c44 ++ m45
theorem eq45 : t45.clauses = c45 := by
  change t43.clauses ++ t44.clauses ++ mergeClauses t43.outputLits t44.outputLits [924,925] = c45
  exact concat3_congr eq43 eq44 merge45

def t46 : CounterTree := .leaf (63,false)
def c46 : CNF := []
theorem eq46 : t46.clauses = c46 := rfl

def t47 : CounterTree := .leaf (65,false)
def c47 : CNF := []
theorem eq47 : t47.clauses = c47 := rfl

def t48 : CounterTree := .node [926,927] t46 t47
def m48 : CNF := [[(65,true),(926,true)],[(63,true),(926,true)],[(63,true),(65,true),(927,true)]]
theorem merge48 : mergeClauses t46.outputLits t47.outputLits [926,927] = m48 := by rfl

def c48 : CNF := c46 ++ c47 ++ m48
theorem eq48 : t48.clauses = c48 := by
  change t46.clauses ++ t47.clauses ++ mergeClauses t46.outputLits t47.outputLits [926,927] = c48
  exact concat3_congr eq46 eq47 merge48

def t49 : CounterTree := .node [928,929,930,931] t45 t48
def m49 : CNF := [[(926,false),(928,true)],[(927,false),(929,true)],[(924,false),(928,true)],[(924,false),(926,false),(929,true)],[(924,false),(927,false),(930,true)],[(925,false),(929,true)],[(925,false),(926,false),(930,true)],[(925,false),(927,false),(931,true)]]
theorem merge49 : mergeClauses t45.outputLits t48.outputLits [928,929,930,931] = m49 := by rfl

def c49 : CNF := c45 ++ c48 ++ m49
theorem eq49 : t49.clauses = c49 := by
  change t45.clauses ++ t48.clauses ++ mergeClauses t45.outputLits t48.outputLits [928,929,930,931] = c49
  exact concat3_congr eq45 eq48 merge49

def t50 : CounterTree := .leaf (69,false)
def c50 : CNF := []
theorem eq50 : t50.clauses = c50 := rfl

def t51 : CounterTree := .leaf (71,false)
def c51 : CNF := []
theorem eq51 : t51.clauses = c51 := rfl

def t52 : CounterTree := .node [932,933] t50 t51
def m52 : CNF := [[(71,true),(932,true)],[(69,true),(932,true)],[(69,true),(71,true),(933,true)]]
theorem merge52 : mergeClauses t50.outputLits t51.outputLits [932,933] = m52 := by rfl

def c52 : CNF := c50 ++ c51 ++ m52
theorem eq52 : t52.clauses = c52 := by
  change t50.clauses ++ t51.clauses ++ mergeClauses t50.outputLits t51.outputLits [932,933] = c52
  exact concat3_congr eq50 eq51 merge52

def t53 : CounterTree := .leaf (73,false)
def c53 : CNF := []
theorem eq53 : t53.clauses = c53 := rfl

def t54 : CounterTree := .leaf (75,false)
def c54 : CNF := []
theorem eq54 : t54.clauses = c54 := rfl

def t55 : CounterTree := .node [934,935] t54 t54
def m55 : CNF := [[(75,true),(934,true)],[(75,true),(934,true)],[(75,true),(75,true),(935,true)]]
theorem merge55 : mergeClauses t54.outputLits t54.outputLits [934,935] = m55 := by rfl

def c55 : CNF := c54 ++ c54 ++ m55
theorem eq55 : t55.clauses = c55 := by
  change t54.clauses ++ t54.clauses ++ mergeClauses t54.outputLits t54.outputLits [934,935] = c55
  exact concat3_congr eq54 eq54 merge55


end EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes
