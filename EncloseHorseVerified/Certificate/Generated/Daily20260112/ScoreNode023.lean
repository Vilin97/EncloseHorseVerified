import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode022

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t410 : CounterTree := .leaf (657,false)
def c410 : CNF := []
theorem eq410 : t410.clauses = c410 := rfl
def t411 : CounterTree := .leaf (659,false)
def c411 : CNF := []
theorem eq411 : t411.clauses = c411 := rfl
def t412 : CounterTree := .node [2848,2849] t410 t411
def m412 : CNF := [[(659,true),(2848,true)],[(657,true),(2848,true)],[(657,true),(659,true),(2849,true)]]
theorem merge412 : mergeClauses t410.outputLits t411.outputLits [2848,2849] = m412 := by
  rfl

def c412 : CNF := c410 ++ c411 ++ m412
theorem eq412 : t412.clauses = c412 := by
  change t410.clauses ++ t411.clauses ++ mergeClauses t410.outputLits t411.outputLits [2848,2849] = c412
  exact concat3_congr eq410 eq411 merge412
def t413 : CounterTree := .leaf (661,false)
def c413 : CNF := []
theorem eq413 : t413.clauses = c413 := rfl
def t414 : CounterTree := .leaf (663,false)
def c414 : CNF := []
theorem eq414 : t414.clauses = c414 := rfl
def t415 : CounterTree := .node [2850,2851] t413 t414
def m415 : CNF := [[(663,true),(2850,true)],[(661,true),(2850,true)],[(661,true),(663,true),(2851,true)]]
theorem merge415 : mergeClauses t413.outputLits t414.outputLits [2850,2851] = m415 := by
  rfl

def c415 : CNF := c413 ++ c414 ++ m415
theorem eq415 : t415.clauses = c415 := by
  change t413.clauses ++ t414.clauses ++ mergeClauses t413.outputLits t414.outputLits [2850,2851] = c415
  exact concat3_congr eq413 eq414 merge415
def t416 : CounterTree := .node [2852,2853,2854,2855] t412 t415
def m416 : CNF := [[(2850,false),(2852,true)],[(2851,false),(2853,true)],[(2848,false),(2852,true)],[(2848,false),(2850,false),(2853,true)],[(2848,false),(2851,false),(2854,true)],[(2849,false),(2853,true)],[(2849,false),(2850,false),(2854,true)],[(2849,false),(2851,false),(2855,true)]]
theorem merge416 : mergeClauses t412.outputLits t415.outputLits [2852,2853,2854,2855] = m416 := by
  rfl

def c416 : CNF := c412 ++ c415 ++ m416
theorem eq416 : t416.clauses = c416 := by
  change t412.clauses ++ t415.clauses ++ mergeClauses t412.outputLits t415.outputLits [2852,2853,2854,2855] = c416
  exact concat3_congr eq412 eq415 merge416
def t417 : CounterTree := .leaf (669,false)
def c417 : CNF := []
theorem eq417 : t417.clauses = c417 := rfl
def t418 : CounterTree := .leaf (671,false)
def c418 : CNF := []
theorem eq418 : t418.clauses = c418 := rfl
def t419 : CounterTree := .node [2856,2857] t417 t418
def m419 : CNF := [[(671,true),(2856,true)],[(669,true),(2856,true)],[(669,true),(671,true),(2857,true)]]
theorem merge419 : mergeClauses t417.outputLits t418.outputLits [2856,2857] = m419 := by
  rfl

def c419 : CNF := c417 ++ c418 ++ m419
theorem eq419 : t419.clauses = c419 := by
  change t417.clauses ++ t418.clauses ++ mergeClauses t417.outputLits t418.outputLits [2856,2857] = c419
  exact concat3_congr eq417 eq418 merge419
def t420 : CounterTree := .leaf (673,false)
def c420 : CNF := []
theorem eq420 : t420.clauses = c420 := rfl
def t421 : CounterTree := .leaf (675,false)
def c421 : CNF := []
theorem eq421 : t421.clauses = c421 := rfl
def t422 : CounterTree := .node [2858,2859] t420 t421
def m422 : CNF := [[(675,true),(2858,true)],[(673,true),(2858,true)],[(673,true),(675,true),(2859,true)]]
theorem merge422 : mergeClauses t420.outputLits t421.outputLits [2858,2859] = m422 := by
  rfl

def c422 : CNF := c420 ++ c421 ++ m422
theorem eq422 : t422.clauses = c422 := by
  change t420.clauses ++ t421.clauses ++ mergeClauses t420.outputLits t421.outputLits [2858,2859] = c422
  exact concat3_congr eq420 eq421 merge422
def t423 : CounterTree := .node [2860,2861,2862,2863] t419 t422
def m423 : CNF := [[(2858,false),(2860,true)],[(2859,false),(2861,true)],[(2856,false),(2860,true)],[(2856,false),(2858,false),(2861,true)],[(2856,false),(2859,false),(2862,true)],[(2857,false),(2861,true)],[(2857,false),(2858,false),(2862,true)],[(2857,false),(2859,false),(2863,true)]]
theorem merge423 : mergeClauses t419.outputLits t422.outputLits [2860,2861,2862,2863] = m423 := by
  rfl

def c423 : CNF := c419 ++ c422 ++ m423
theorem eq423 : t423.clauses = c423 := by
  change t419.clauses ++ t422.clauses ++ mergeClauses t419.outputLits t422.outputLits [2860,2861,2862,2863] = c423
  exact concat3_congr eq419 eq422 merge423
def t424 : CounterTree := .node [2864,2865,2866,2867,2868,2869,2870,2871] t416 t423
def m424 : CNF := [[(2860,false),(2864,true)],[(2861,false),(2865,true)],[(2862,false),(2866,true)],[(2863,false),(2867,true)],[(2852,false),(2864,true)],[(2852,false),(2860,false),(2865,true)],[(2852,false),(2861,false),(2866,true)],[(2852,false),(2862,false),(2867,true)],[(2852,false),(2863,false),(2868,true)],[(2853,false),(2865,true)],[(2853,false),(2860,false),(2866,true)],[(2853,false),(2861,false),(2867,true)],[(2853,false),(2862,false),(2868,true)],[(2853,false),(2863,false),(2869,true)],[(2854,false),(2866,true)],[(2854,false),(2860,false),(2867,true)],[(2854,false),(2861,false),(2868,true)],[(2854,false),(2862,false),(2869,true)],[(2854,false),(2863,false),(2870,true)],[(2855,false),(2867,true)],[(2855,false),(2860,false),(2868,true)],[(2855,false),(2861,false),(2869,true)],[(2855,false),(2862,false),(2870,true)],[(2855,false),(2863,false),(2871,true)]]
theorem merge424 : mergeClauses t416.outputLits t423.outputLits [2864,2865,2866,2867,2868,2869,2870,2871] = m424 := by
  rfl

def c424 : CNF := c416 ++ c423 ++ m424
theorem eq424 : t424.clauses = c424 := by
  change t416.clauses ++ t423.clauses ++ mergeClauses t416.outputLits t423.outputLits [2864,2865,2866,2867,2868,2869,2870,2871] = c424
  exact concat3_congr eq416 eq423 merge424
def t425 : CounterTree := .leaf (677,false)
def c425 : CNF := []
theorem eq425 : t425.clauses = c425 := rfl
def t426 : CounterTree := .leaf (679,false)
def c426 : CNF := []
theorem eq426 : t426.clauses = c426 := rfl
def t427 : CounterTree := .node [2872,2873] t425 t426
def m427 : CNF := [[(679,true),(2872,true)],[(677,true),(2872,true)],[(677,true),(679,true),(2873,true)]]
theorem merge427 : mergeClauses t425.outputLits t426.outputLits [2872,2873] = m427 := by
  rfl

def c427 : CNF := c425 ++ c426 ++ m427
theorem eq427 : t427.clauses = c427 := by
  change t425.clauses ++ t426.clauses ++ mergeClauses t425.outputLits t426.outputLits [2872,2873] = c427
  exact concat3_congr eq425 eq426 merge427
def t428 : CounterTree := .leaf (693,false)
def c428 : CNF := []
theorem eq428 : t428.clauses = c428 := rfl
def t429 : CounterTree := .leaf (695,false)
def c429 : CNF := []
theorem eq429 : t429.clauses = c429 := rfl
def t430 : CounterTree := .node [2874,2875] t428 t429
def m430 : CNF := [[(695,true),(2874,true)],[(693,true),(2874,true)],[(693,true),(695,true),(2875,true)]]
theorem merge430 : mergeClauses t428.outputLits t429.outputLits [2874,2875] = m430 := by
  rfl

def c430 : CNF := c428 ++ c429 ++ m430
theorem eq430 : t430.clauses = c430 := by
  change t428.clauses ++ t429.clauses ++ mergeClauses t428.outputLits t429.outputLits [2874,2875] = c430
  exact concat3_congr eq428 eq429 merge430
def t431 : CounterTree := .node [2876,2877,2878,2879] t427 t430
def m431 : CNF := [[(2874,false),(2876,true)],[(2875,false),(2877,true)],[(2872,false),(2876,true)],[(2872,false),(2874,false),(2877,true)],[(2872,false),(2875,false),(2878,true)],[(2873,false),(2877,true)],[(2873,false),(2874,false),(2878,true)],[(2873,false),(2875,false),(2879,true)]]
theorem merge431 : mergeClauses t427.outputLits t430.outputLits [2876,2877,2878,2879] = m431 := by
  rfl

def c431 : CNF := c427 ++ c430 ++ m431
theorem eq431 : t431.clauses = c431 := by
  change t427.clauses ++ t430.clauses ++ mergeClauses t427.outputLits t430.outputLits [2876,2877,2878,2879] = c431
  exact concat3_congr eq427 eq430 merge431

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
