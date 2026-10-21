import EncloseHorseVerified.Certificate.Generated.Daily20260310.SelectionPart007

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310

theorem and_true {a b : Bool} (ha : a = true) (hb : b = true) : (a && b) = true := by
  cases a <;> cases b <;> simp_all

/-- All independently kernel-checked pieces of the sparse proof's initial CNF. -/
theorem selectionAccepted : (SelectionTree.check Lookup.fullTree partIndices0 initialPart0.clauses && SelectionTree.check Lookup.fullTree partIndices1 initialPart1.clauses && SelectionTree.check Lookup.fullTree partIndices2 initialPart2.clauses && SelectionTree.check Lookup.fullTree partIndices3 initialPart3.clauses && SelectionTree.check Lookup.fullTree partIndices4 initialPart4.clauses && SelectionTree.check Lookup.fullTree partIndices5 initialPart5.clauses && SelectionTree.check Lookup.fullTree partIndices6 initialPart6.clauses && SelectionTree.check Lookup.fullTree partIndices7 initialPart7.clauses) = true := (and_true (and_true (and_true (and_true (and_true (and_true (and_true selectionPart0 selectionPart1) selectionPart2) selectionPart3) selectionPart4) selectionPart5) selectionPart6) selectionPart7)

theorem initialTree_eq : state0 = (Rup.ClauseTree.node (Rup.ClauseTree.node (Rup.ClauseTree.node initialPart0 initialPart1) (Rup.ClauseTree.node initialPart2 initialPart3)) (Rup.ClauseTree.node (Rup.ClauseTree.node initialPart4 initialPart5) (Rup.ClauseTree.node initialPart6 initialPart7))) := by rfl

theorem sat_initial_node (model : Nat → Bool) (left right : Rup.ClauseTree)
    (hl : Satisfies model left.clauses) (hr : Satisfies model right.clauses) :
    Satisfies model (Rup.ClauseTree.node left right).clauses := by
  intro clause hc
  rcases List.mem_append.mp hc with hc | hc
  · exact hl clause hc
  · exact hr clause hc

theorem initial_sat_of_full (model : Nat → Bool)
    (hs : Satisfies model (fullCNF DailyLevels.daily20260310 counters)) :
    Satisfies model state0.clauses := by
  have ht : Satisfies model Lookup.fullTree.clauses := by
    rw [Lookup.fullTree_eq]
    exact hs
  have hp0 := SelectionTree.check_sat Lookup.fullTree partIndices0 initialPart0.clauses selectionPart0 model ht
  have hp1 := SelectionTree.check_sat Lookup.fullTree partIndices1 initialPart1.clauses selectionPart1 model ht
  have hp2 := SelectionTree.check_sat Lookup.fullTree partIndices2 initialPart2.clauses selectionPart2 model ht
  have hp3 := SelectionTree.check_sat Lookup.fullTree partIndices3 initialPart3.clauses selectionPart3 model ht
  have hp4 := SelectionTree.check_sat Lookup.fullTree partIndices4 initialPart4.clauses selectionPart4 model ht
  have hp5 := SelectionTree.check_sat Lookup.fullTree partIndices5 initialPart5.clauses selectionPart5 model ht
  have hp6 := SelectionTree.check_sat Lookup.fullTree partIndices6 initialPart6.clauses selectionPart6 model ht
  have hp7 := SelectionTree.check_sat Lookup.fullTree partIndices7 initialPart7.clauses selectionPart7 model ht
  rw [initialTree_eq]
  exact (sat_initial_node model _ _ (sat_initial_node model _ _ (sat_initial_node model _ _ hp0 hp1) (sat_initial_node model _ _ hp2 hp3)) (sat_initial_node model _ _ (sat_initial_node model _ _ hp4 hp5) (sat_initial_node model _ _ hp6 hp7)))

theorem full_unsat_of_selected
    (hu : ∀ model : Nat → Bool, ¬ Satisfies model state0.clauses) :
    ∀ model : Nat → Bool, ¬ Satisfies model (fullCNF DailyLevels.daily20260310 counters) := by
  intro model hs
  exact hu model (initial_sat_of_full model hs)

end EncloseHorse.Certificate.Generated.Daily20260310
