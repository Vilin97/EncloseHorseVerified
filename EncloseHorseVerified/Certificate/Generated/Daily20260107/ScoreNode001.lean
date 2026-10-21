import EncloseHorseVerified.Certificate.Generated.Daily20260107.ScoreNode000

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes

def t17 : CounterTree := .node [852,853,854,855] t14 t16
def m17 : CNF := [[(850,false),(852,true)],[(851,false),(853,true)],[(848,false),(852,true)],[(848,false),(850,false),(853,true)],[(848,false),(851,false),(854,true)],[(849,false),(853,true)],[(849,false),(850,false),(854,true)],[(849,false),(851,false),(855,true)]]
theorem merge17 : mergeClauses t14.outputLits t16.outputLits [852,853,854,855] = m17 := by rfl

def c17 : CNF := c14 ++ c16 ++ m17
theorem eq17 : t17.clauses = c17 := by
  change t14.clauses ++ t16.clauses ++ mergeClauses t14.outputLits t16.outputLits [852,853,854,855] = c17
  exact concat3_congr eq14 eq16 merge17

def t18 : CounterTree := .leaf (35,false)
def c18 : CNF := []
theorem eq18 : t18.clauses = c18 := rfl

def t19 : CounterTree := .leaf (37,false)
def c19 : CNF := []
theorem eq19 : t19.clauses = c19 := rfl

def t20 : CounterTree := .node [856,857] t18 t19
def m20 : CNF := [[(37,true),(856,true)],[(35,true),(856,true)],[(35,true),(37,true),(857,true)]]
theorem merge20 : mergeClauses t18.outputLits t19.outputLits [856,857] = m20 := by rfl

def c20 : CNF := c18 ++ c19 ++ m20
theorem eq20 : t20.clauses = c20 := by
  change t18.clauses ++ t19.clauses ++ mergeClauses t18.outputLits t19.outputLits [856,857] = c20
  exact concat3_congr eq18 eq19 merge20

def t21 : CounterTree := .leaf (39,false)
def c21 : CNF := []
theorem eq21 : t21.clauses = c21 := rfl

def t22 : CounterTree := .leaf (41,false)
def c22 : CNF := []
theorem eq22 : t22.clauses = c22 := rfl

def t23 : CounterTree := .leaf (43,false)
def c23 : CNF := []
theorem eq23 : t23.clauses = c23 := rfl

def t24 : CounterTree := .node [858,859] t22 t23
def m24 : CNF := [[(43,true),(858,true)],[(41,true),(858,true)],[(41,true),(43,true),(859,true)]]
theorem merge24 : mergeClauses t22.outputLits t23.outputLits [858,859] = m24 := by rfl

def c24 : CNF := c22 ++ c23 ++ m24
theorem eq24 : t24.clauses = c24 := by
  change t22.clauses ++ t23.clauses ++ mergeClauses t22.outputLits t23.outputLits [858,859] = c24
  exact concat3_congr eq22 eq23 merge24

def t25 : CounterTree := .node [860,861,862] t21 t24
def m25 : CNF := [[(858,false),(860,true)],[(859,false),(861,true)],[(39,true),(860,true)],[(39,true),(858,false),(861,true)],[(39,true),(859,false),(862,true)]]
theorem merge25 : mergeClauses t21.outputLits t24.outputLits [860,861,862] = m25 := by rfl

def c25 : CNF := c21 ++ c24 ++ m25
theorem eq25 : t25.clauses = c25 := by
  change t21.clauses ++ t24.clauses ++ mergeClauses t21.outputLits t24.outputLits [860,861,862] = c25
  exact concat3_congr eq21 eq24 merge25

def t26 : CounterTree := .node [863,864,865,866,867] t20 t25
def m26 : CNF := [[(860,false),(863,true)],[(861,false),(864,true)],[(862,false),(865,true)],[(856,false),(863,true)],[(856,false),(860,false),(864,true)],[(856,false),(861,false),(865,true)],[(856,false),(862,false),(866,true)],[(857,false),(864,true)],[(857,false),(860,false),(865,true)],[(857,false),(861,false),(866,true)],[(857,false),(862,false),(867,true)]]
theorem merge26 : mergeClauses t20.outputLits t25.outputLits [863,864,865,866,867] = m26 := by rfl

def c26 : CNF := c20 ++ c25 ++ m26
theorem eq26 : t26.clauses = c26 := by
  change t20.clauses ++ t25.clauses ++ mergeClauses t20.outputLits t25.outputLits [863,864,865,866,867] = c26
  exact concat3_congr eq20 eq25 merge26

def t27 : CounterTree := .node [868,869,870,871,872,873,874,875,876] t17 t26
def m27 : CNF := [[(863,false),(868,true)],[(864,false),(869,true)],[(865,false),(870,true)],[(866,false),(871,true)],[(867,false),(872,true)],[(852,false),(868,true)],[(852,false),(863,false),(869,true)],[(852,false),(864,false),(870,true)],[(852,false),(865,false),(871,true)],[(852,false),(866,false),(872,true)],[(852,false),(867,false),(873,true)],[(853,false),(869,true)],[(853,false),(863,false),(870,true)],[(853,false),(864,false),(871,true)],[(853,false),(865,false),(872,true)],[(853,false),(866,false),(873,true)],[(853,false),(867,false),(874,true)],[(854,false),(870,true)],[(854,false),(863,false),(871,true)],[(854,false),(864,false),(872,true)],[(854,false),(865,false),(873,true)],[(854,false),(866,false),(874,true)],[(854,false),(867,false),(875,true)],[(855,false),(871,true)],[(855,false),(863,false),(872,true)],[(855,false),(864,false),(873,true)],[(855,false),(865,false),(874,true)],[(855,false),(866,false),(875,true)],[(855,false),(867,false),(876,true)]]
theorem merge27 : mergeClauses t17.outputLits t26.outputLits [868,869,870,871,872,873,874,875,876] = m27 := by rfl

def c27 : CNF := c17 ++ c26 ++ m27
theorem eq27 : t27.clauses = c27 := by
  change t17.clauses ++ t26.clauses ++ mergeClauses t17.outputLits t26.outputLits [868,869,870,871,872,873,874,875,876] = c27
  exact concat3_congr eq17 eq26 merge27

def t28 : CounterTree := .node [877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894] t13 t27
def m28 : CNF := [[(868,false),(877,true)],[(869,false),(878,true)],[(870,false),(879,true)],[(871,false),(880,true)],[(872,false),(881,true)],[(873,false),(882,true)],[(874,false),(883,true)],[(875,false),(884,true)],[(876,false),(885,true)],[(839,false),(877,true)],[(839,false),(868,false),(878,true)],[(839,false),(869,false),(879,true)],[(839,false),(870,false),(880,true)],[(839,false),(871,false),(881,true)],[(839,false),(872,false),(882,true)],[(839,false),(873,false),(883,true)],[(839,false),(874,false),(884,true)],[(839,false),(875,false),(885,true)],[(839,false),(876,false),(886,true)],[(840,false),(878,true)],[(840,false),(868,false),(879,true)],[(840,false),(869,false),(880,true)],[(840,false),(870,false),(881,true)],[(840,false),(871,false),(882,true)],[(840,false),(872,false),(883,true)],[(840,false),(873,false),(884,true)],[(840,false),(874,false),(885,true)],[(840,false),(875,false),(886,true)],[(840,false),(876,false),(887,true)],[(841,false),(879,true)],[(841,false),(868,false),(880,true)],[(841,false),(869,false),(881,true)],[(841,false),(870,false),(882,true)],[(841,false),(871,false),(883,true)],[(841,false),(872,false),(884,true)],[(841,false),(873,false),(885,true)],[(841,false),(874,false),(886,true)],[(841,false),(875,false),(887,true)],[(841,false),(876,false),(888,true)],[(842,false),(880,true)],[(842,false),(868,false),(881,true)],[(842,false),(869,false),(882,true)],[(842,false),(870,false),(883,true)],[(842,false),(871,false),(884,true)],[(842,false),(872,false),(885,true)],[(842,false),(873,false),(886,true)],[(842,false),(874,false),(887,true)],[(842,false),(875,false),(888,true)],[(842,false),(876,false),(889,true)],[(843,false),(881,true)],[(843,false),(868,false),(882,true)],[(843,false),(869,false),(883,true)],[(843,false),(870,false),(884,true)],[(843,false),(871,false),(885,true)],[(843,false),(872,false),(886,true)],[(843,false),(873,false),(887,true)],[(843,false),(874,false),(888,true)],[(843,false),(875,false),(889,true)],[(843,false),(876,false),(890,true)],[(844,false),(882,true)],[(844,false),(868,false),(883,true)],[(844,false),(869,false),(884,true)],[(844,false),(870,false),(885,true)],[(844,false),(871,false),(886,true)],[(844,false),(872,false),(887,true)],[(844,false),(873,false),(888,true)],[(844,false),(874,false),(889,true)],[(844,false),(875,false),(890,true)],[(844,false),(876,false),(891,true)],[(845,false),(883,true)],[(845,false),(868,false),(884,true)],[(845,false),(869,false),(885,true)],[(845,false),(870,false),(886,true)],[(845,false),(871,false),(887,true)],[(845,false),(872,false),(888,true)],[(845,false),(873,false),(889,true)],[(845,false),(874,false),(890,true)],[(845,false),(875,false),(891,true)],[(845,false),(876,false),(892,true)],[(846,false),(884,true)],[(846,false),(868,false),(885,true)],[(846,false),(869,false),(886,true)],[(846,false),(870,false),(887,true)],[(846,false),(871,false),(888,true)],[(846,false),(872,false),(889,true)],[(846,false),(873,false),(890,true)],[(846,false),(874,false),(891,true)],[(846,false),(875,false),(892,true)],[(846,false),(876,false),(893,true)],[(847,false),(885,true)],[(847,false),(868,false),(886,true)],[(847,false),(869,false),(887,true)],[(847,false),(870,false),(888,true)],[(847,false),(871,false),(889,true)],[(847,false),(872,false),(890,true)],[(847,false),(873,false),(891,true)],[(847,false),(874,false),(892,true)],[(847,false),(875,false),(893,true)],[(847,false),(876,false),(894,true)]]
theorem merge28 : mergeClauses t13.outputLits t27.outputLits [877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894] = m28 := by rfl

def c28 : CNF := c13 ++ c27 ++ m28
theorem eq28 : t28.clauses = c28 := by
  change t13.clauses ++ t27.clauses ++ mergeClauses t13.outputLits t27.outputLits [877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894] = c28
  exact concat3_congr eq13 eq27 merge28

def t29 : CounterTree := .leaf (45,false)
def c29 : CNF := []
theorem eq29 : t29.clauses = c29 := rfl

def t30 : CounterTree := .leaf (49,false)
def c30 : CNF := []
theorem eq30 : t30.clauses = c30 := rfl

def t31 : CounterTree := .node [895,896] t29 t30
def m31 : CNF := [[(49,true),(895,true)],[(45,true),(895,true)],[(45,true),(49,true),(896,true)]]
theorem merge31 : mergeClauses t29.outputLits t30.outputLits [895,896] = m31 := by rfl

def c31 : CNF := c29 ++ c30 ++ m31
theorem eq31 : t31.clauses = c31 := by
  change t29.clauses ++ t30.clauses ++ mergeClauses t29.outputLits t30.outputLits [895,896] = c31
  exact concat3_congr eq29 eq30 merge31

def t32 : CounterTree := .leaf (51,false)
def c32 : CNF := []
theorem eq32 : t32.clauses = c32 := rfl

def t33 : CounterTree := .leaf (53,false)
def c33 : CNF := []
theorem eq33 : t33.clauses = c33 := rfl

def t34 : CounterTree := .node [897,898] t32 t33
def m34 : CNF := [[(53,true),(897,true)],[(51,true),(897,true)],[(51,true),(53,true),(898,true)]]
theorem merge34 : mergeClauses t32.outputLits t33.outputLits [897,898] = m34 := by rfl

def c34 : CNF := c32 ++ c33 ++ m34
theorem eq34 : t34.clauses = c34 := by
  change t32.clauses ++ t33.clauses ++ mergeClauses t32.outputLits t33.outputLits [897,898] = c34
  exact concat3_congr eq32 eq33 merge34

def t35 : CounterTree := .node [899,900,901,902] t31 t34
def m35 : CNF := [[(897,false),(899,true)],[(898,false),(900,true)],[(895,false),(899,true)],[(895,false),(897,false),(900,true)],[(895,false),(898,false),(901,true)],[(896,false),(900,true)],[(896,false),(897,false),(901,true)],[(896,false),(898,false),(902,true)]]
theorem merge35 : mergeClauses t31.outputLits t34.outputLits [899,900,901,902] = m35 := by rfl

def c35 : CNF := c31 ++ c34 ++ m35
theorem eq35 : t35.clauses = c35 := by
  change t31.clauses ++ t34.clauses ++ mergeClauses t31.outputLits t34.outputLits [899,900,901,902] = c35
  exact concat3_congr eq31 eq34 merge35


end EncloseHorse.Certificate.Generated.Daily20260107.ScoreNodes
