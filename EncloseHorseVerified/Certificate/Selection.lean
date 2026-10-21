import EncloseHorseVerified.Certificate.Totalizer

/-!
# Safe selection of clauses from a verified encoding

External proof minimization can select and reorder input clauses. Selection uses
optional lookup: an out-of-range index contributes no clause. In particular, a
bad index never fabricates an empty clause (which would trivially imply UNSAT).
-/
namespace EncloseHorse.Certificate.Selection
open Totalizer

def selectClauses (full : CNF) (indices : List Nat) : CNF :=
  indices.filterMap (fun i => full[i]?)

/-- Array lookup has exactly the same safe semantics and permits faster checking. -/
def selectClausesArray (full : CNF) (indices : List Nat) : CNF :=
  let clauses := full.toArray
  indices.filterMap (fun i => clauses[i]?)

theorem selectClausesArray_eq (full : CNF) (indices : List Nat) :
    selectClausesArray full indices = selectClauses full indices := by
  simp only [selectClausesArray, List.getElem?_toArray, selectClauses]

theorem mem_selectClauses (full : CNF) (indices : List Nat) (clause : Clause)
    (h : clause ∈ selectClauses full indices) : clause ∈ full := by
  obtain ⟨i, _, hi⟩ := List.mem_filterMap.mp h
  exact List.mem_of_getElem? hi

/-- Dropping, duplicating, or reordering real clauses preserves every full model. -/
theorem selectClauses_sat (model : Nat → Bool) (full : CNF) (indices : List Nat)
    (h : Satisfies model full) : Satisfies model (selectClauses full indices) := by
  intro clause hc
  exact h clause (mem_selectClauses full indices clause hc)

/-- Compare to the actual sparse proof input without trusting external metadata. -/
def checkSelection (full : CNF) (indices : List Nat) (selected : CNF) : Bool :=
  decide (selectClausesArray full indices = selected)

theorem checkSelection_sound (full : CNF) (indices : List Nat) (selected : CNF)
    (h : checkSelection full indices selected = true) :
    selectClauses full indices = selected := by
  have he := of_decide_eq_true h
  exact (selectClausesArray_eq full indices).symm.trans he

theorem checkSelection_sat (model : Nat → Bool) (full : CNF) (indices : List Nat)
    (selected : CNF) (h : checkSelection full indices selected = true)
    (hs : Satisfies model full) : Satisfies model selected := by
  rw [← checkSelection_sound full indices selected h]
  exact selectClauses_sat model full indices hs

/-- A refutation of a checked selection refutes the entire verified formula. -/
theorem unsat_of_checkSelection (full : CNF) (indices : List Nat) (selected : CNF)
    (h : checkSelection full indices selected = true)
    (hu : ∀ model : Nat → Bool, ¬ Satisfies model selected) :
    ∀ model : Nat → Bool, ¬ Satisfies model full := by
  intro model hs
  exact hu model (checkSelection_sat model full indices selected h hs)

end EncloseHorse.Certificate.Selection
