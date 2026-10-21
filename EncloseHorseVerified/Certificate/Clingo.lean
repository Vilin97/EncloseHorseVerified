import EncloseHorseVerified.Certificate.Weighted
import EncloseHorseVerified.Solver

/-!
A certificate interface for external optimizers. The executable optimizer and its
reported status are outside the trusted base. A checked refutation of this exact
formula proves the submitted placement optimal in the actual game semantics.
-/
namespace EncloseHorse.Certificate.Clingo
open Totalizer

structure Counters where
  budget : CounterTree
  complement : CounterTree
  budgetBound : Fin budget.outputLits.length
  scoreBound : Fin complement.outputLits.length

/-- The exact relaxed no-better-solution CNF. UNSAT is sufficient: every actual
better enclosure extends to a model, even though the converse need not hold. -/
def fullCNF (b : Board) (c : Counters) : CNF :=
  baseClauses b ++ c.budget.atMostClauses c.budgetBound ++
    c.complement.atMostClauses c.scoreBound

/-- This check binds every certificate leaf, limit, and auxiliary variable to the
actual board and the score of the supplied incumbent. -/
def checkCounters (b : Board) (target : Int) (c : Counters) : Bool :=
  checkVars (2 * b.size) [c.budget, c.complement] &&
    (c.budget.leaves == budgetInputs b) &&
    (c.complement.leaves == scoreInputs b) &&
    (c.budgetBound.val == b.budget) &&
    (c.scoreBound.val == scoreLimit b target)

theorem better_has_model (b : Board) (target : Int) (c : Counters)
    (hc : checkCounters b target c = true) (walls : Placement)
    (ha : admissible b walls) (hb : target < score b walls) :
    ∃ model : Nat → Bool, Satisfies model (fullCNF b c) := by
  simp only [checkCounters, Bool.and_eq_true, beq_iff_eq] at hc
  obtain ⟨⟨⟨⟨hvars, hbudgetLeaves⟩, hscoreLeaves⟩, hbudgetBound⟩, hscoreBound⟩ := hc
  have hbudget : countTrue (baseAssignment b walls) c.budget.leaves ≤ c.budgetBound.val := by
    rw [hbudgetLeaves, hbudgetBound, budget_count b walls ha.1]
    exact ha.1.2
  have hscore : countTrue (baseAssignment b walls) c.complement.leaves ≤ c.scoreBound.val := by
    rw [hscoreLeaves, hscoreBound]
    exact better_count_bound b walls ha target hb
  obtain ⟨model, hagree, hsat⟩ := two_atMost_sat (2 * b.size) (baseAssignment b walls)
    c.budget c.complement c.budgetBound c.scoreBound hvars hbudget hscore
  refine ⟨model, ?_⟩
  have hbase := baseClauses_sat_of_agrees b walls ha model hagree
  intro clause hclause
  simp only [fullCNF, List.mem_append] at hclause
  rcases hclause with (hclause | hclause) | hclause
  · exact hbase clause hclause
  · exact hsat clause (List.mem_append_left _ hclause)
  · exact hsat clause (List.mem_append_right _ hclause)

/-- Any kernel-proved refutation of the exact generated CNF certifies optimality
of the external solver's placement. No correctness premise about Clingo occurs. -/
theorem optimal_of_unsat (b : Board) (walls : Placement) (c : Counters)
    (ha : admissible b walls)
    (hc : checkCounters b (score b walls) c = true)
    (hu : ∀ model : Nat → Bool, ¬ Satisfies model (fullCNF b c)) :
    Optimal b walls := by
  refine ⟨ha, ?_⟩
  intro other ho
  apply Int.le_of_not_gt
  intro hb
  obtain ⟨model, hm⟩ := better_has_model b (score b walls) c hc other ho hb
  exact hu model hm

theorem physicalOptimal_of_unsat (b : Board) (walls : Placement) (c : Counters)
    (ha : admissible b walls)
    (hc : checkCounters b (score b walls) c = true)
    (hu : ∀ model : Nat → Bool, ¬ Satisfies model (fullCNF b c)) :
    PhysicalOptimal b walls :=
  (optimal_of_unsat b walls c ha hc hu).physical

end EncloseHorse.Certificate.Clingo
