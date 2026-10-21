import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupNode022

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def t410 : Tree := .nil
theorem eq410 : t410.clauses = ScoreNodes.c410 := by rfl

def t411 : Tree := .nil
theorem eq411 : t411.clauses = ScoreNodes.c411 := by rfl

def m412 : Tree := (.node 1 (.leaf [(659,true),(2848,true)]) (.node 1 (.leaf [(657,true),(2848,true)]) (.leaf [(657,true),(659,true),(2849,true)])))
theorem merge412 : m412.clauses = ScoreNodes.m412 := by rfl

def t412 : Tree := .node 0 (.node 0 t410 t411) m412
theorem eq412 : t412.clauses = ScoreNodes.c412 :=
  cat_eq _ (cat_eq _ eq410 eq411) merge412

def t413 : Tree := .nil
theorem eq413 : t413.clauses = ScoreNodes.c413 := by rfl

def t414 : Tree := .nil
theorem eq414 : t414.clauses = ScoreNodes.c414 := by rfl

def m415 : Tree := (.node 1 (.leaf [(663,true),(2850,true)]) (.node 1 (.leaf [(661,true),(2850,true)]) (.leaf [(661,true),(663,true),(2851,true)])))
theorem merge415 : m415.clauses = ScoreNodes.m415 := by rfl

def t415 : Tree := .node 0 (.node 0 t413 t414) m415
theorem eq415 : t415.clauses = ScoreNodes.c415 :=
  cat_eq _ (cat_eq _ eq413 eq414) merge415

def m416 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2850,false),(2852,true)]) (.leaf [(2851,false),(2853,true)])) (.node 1 (.leaf [(2848,false),(2852,true)]) (.leaf [(2848,false),(2850,false),(2853,true)]))) (.node 2 (.node 1 (.leaf [(2848,false),(2851,false),(2854,true)]) (.leaf [(2849,false),(2853,true)])) (.node 1 (.leaf [(2849,false),(2850,false),(2854,true)]) (.leaf [(2849,false),(2851,false),(2855,true)]))))
theorem merge416 : m416.clauses = ScoreNodes.m416 := by rfl

def t416 : Tree := .node 6 (.node 3 t412 t415) m416
theorem eq416 : t416.clauses = ScoreNodes.c416 :=
  cat_eq _ (cat_eq _ eq412 eq415) merge416

def t417 : Tree := .nil
theorem eq417 : t417.clauses = ScoreNodes.c417 := by rfl

def t418 : Tree := .nil
theorem eq418 : t418.clauses = ScoreNodes.c418 := by rfl

def m419 : Tree := (.node 1 (.leaf [(671,true),(2856,true)]) (.node 1 (.leaf [(669,true),(2856,true)]) (.leaf [(669,true),(671,true),(2857,true)])))
theorem merge419 : m419.clauses = ScoreNodes.m419 := by rfl

def t419 : Tree := .node 0 (.node 0 t417 t418) m419
theorem eq419 : t419.clauses = ScoreNodes.c419 :=
  cat_eq _ (cat_eq _ eq417 eq418) merge419

def t420 : Tree := .nil
theorem eq420 : t420.clauses = ScoreNodes.c420 := by rfl

def t421 : Tree := .nil
theorem eq421 : t421.clauses = ScoreNodes.c421 := by rfl

def m422 : Tree := (.node 1 (.leaf [(675,true),(2858,true)]) (.node 1 (.leaf [(673,true),(2858,true)]) (.leaf [(673,true),(675,true),(2859,true)])))
theorem merge422 : m422.clauses = ScoreNodes.m422 := by rfl

def t422 : Tree := .node 0 (.node 0 t420 t421) m422
theorem eq422 : t422.clauses = ScoreNodes.c422 :=
  cat_eq _ (cat_eq _ eq420 eq421) merge422

def m423 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2858,false),(2860,true)]) (.leaf [(2859,false),(2861,true)])) (.node 1 (.leaf [(2856,false),(2860,true)]) (.leaf [(2856,false),(2858,false),(2861,true)]))) (.node 2 (.node 1 (.leaf [(2856,false),(2859,false),(2862,true)]) (.leaf [(2857,false),(2861,true)])) (.node 1 (.leaf [(2857,false),(2858,false),(2862,true)]) (.leaf [(2857,false),(2859,false),(2863,true)]))))
theorem merge423 : m423.clauses = ScoreNodes.m423 := by rfl

def t423 : Tree := .node 6 (.node 3 t419 t422) m423
theorem eq423 : t423.clauses = ScoreNodes.c423 :=
  cat_eq _ (cat_eq _ eq419 eq422) merge423

def m424 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2860,false),(2864,true)]) (.node 1 (.leaf [(2861,false),(2865,true)]) (.leaf [(2862,false),(2866,true)]))) (.node 1 (.leaf [(2863,false),(2867,true)]) (.node 1 (.leaf [(2852,false),(2864,true)]) (.leaf [(2852,false),(2860,false),(2865,true)])))) (.node 3 (.node 1 (.leaf [(2852,false),(2861,false),(2866,true)]) (.node 1 (.leaf [(2852,false),(2862,false),(2867,true)]) (.leaf [(2852,false),(2863,false),(2868,true)]))) (.node 1 (.leaf [(2853,false),(2865,true)]) (.node 1 (.leaf [(2853,false),(2860,false),(2866,true)]) (.leaf [(2853,false),(2861,false),(2867,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2853,false),(2862,false),(2868,true)]) (.node 1 (.leaf [(2853,false),(2863,false),(2869,true)]) (.leaf [(2854,false),(2866,true)]))) (.node 1 (.leaf [(2854,false),(2860,false),(2867,true)]) (.node 1 (.leaf [(2854,false),(2861,false),(2868,true)]) (.leaf [(2854,false),(2862,false),(2869,true)])))) (.node 3 (.node 1 (.leaf [(2854,false),(2863,false),(2870,true)]) (.node 1 (.leaf [(2855,false),(2867,true)]) (.leaf [(2855,false),(2860,false),(2868,true)]))) (.node 1 (.leaf [(2855,false),(2861,false),(2869,true)]) (.node 1 (.leaf [(2855,false),(2862,false),(2870,true)]) (.leaf [(2855,false),(2863,false),(2871,true)]))))))
theorem merge424 : m424.clauses = ScoreNodes.m424 := by rfl

def t424 : Tree := .node 28 (.node 14 t416 t423) m424
theorem eq424 : t424.clauses = ScoreNodes.c424 :=
  cat_eq _ (cat_eq _ eq416 eq423) merge424

def t425 : Tree := .nil
theorem eq425 : t425.clauses = ScoreNodes.c425 := by rfl

def t426 : Tree := .nil
theorem eq426 : t426.clauses = ScoreNodes.c426 := by rfl

def m427 : Tree := (.node 1 (.leaf [(679,true),(2872,true)]) (.node 1 (.leaf [(677,true),(2872,true)]) (.leaf [(677,true),(679,true),(2873,true)])))
theorem merge427 : m427.clauses = ScoreNodes.m427 := by rfl

def t427 : Tree := .node 0 (.node 0 t425 t426) m427
theorem eq427 : t427.clauses = ScoreNodes.c427 :=
  cat_eq _ (cat_eq _ eq425 eq426) merge427

def t428 : Tree := .nil
theorem eq428 : t428.clauses = ScoreNodes.c428 := by rfl

def t429 : Tree := .nil
theorem eq429 : t429.clauses = ScoreNodes.c429 := by rfl

def m430 : Tree := (.node 1 (.leaf [(695,true),(2874,true)]) (.node 1 (.leaf [(693,true),(2874,true)]) (.leaf [(693,true),(695,true),(2875,true)])))
theorem merge430 : m430.clauses = ScoreNodes.m430 := by rfl

def t430 : Tree := .node 0 (.node 0 t428 t429) m430
theorem eq430 : t430.clauses = ScoreNodes.c430 :=
  cat_eq _ (cat_eq _ eq428 eq429) merge430

def m431 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2874,false),(2876,true)]) (.leaf [(2875,false),(2877,true)])) (.node 1 (.leaf [(2872,false),(2876,true)]) (.leaf [(2872,false),(2874,false),(2877,true)]))) (.node 2 (.node 1 (.leaf [(2872,false),(2875,false),(2878,true)]) (.leaf [(2873,false),(2877,true)])) (.node 1 (.leaf [(2873,false),(2874,false),(2878,true)]) (.leaf [(2873,false),(2875,false),(2879,true)]))))
theorem merge431 : m431.clauses = ScoreNodes.m431 := by rfl

def t431 : Tree := .node 6 (.node 3 t427 t430) m431
theorem eq431 : t431.clauses = ScoreNodes.c431 :=
  cat_eq _ (cat_eq _ eq427 eq430) merge431


end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
