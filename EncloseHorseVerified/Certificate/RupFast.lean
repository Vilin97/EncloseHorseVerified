import EncloseHorseVerified.Certificate.Rup

/-! RUP with a persistent partial-assignment trie. Stored literals are checked
against their complete variable names, so even colliding or undersized trie
slots can only forget facts. They cannot invent a propagated assignment. -/
namespace EncloseHorse.Certificate.RupFast
open Totalizer Rup

/-- A singleton clause records one assigned literal. -/
def assign (a : ClauseTree) (depth : Nat) (l : Lit) : ClauseTree :=
  a.put depth l.1 [l]

def assignMany (depth : Nat) : List Lit → ClauseTree → ClauseTree
  | [], a => a
  | l :: ls, a => assignMany depth ls (assign a depth l)

/-- A lookup removes a literal only after comparing its complete negation. -/
def falsified (a : ClauseTree) (depth : Nat) (l : Lit) : Bool :=
  match a.get depth l.1 with
  | some [stored] => stored == neg l
  | _ => false

def remaining (clause : Clause) (a : ClauseTree) (depth : Nat) : Clause :=
  (clause.filter (fun l => !(falsified a depth l))).eraseDups

theorem assign_sat (model : Nat → Bool) (a : ClauseTree) (depth : Nat) (l : Lit)
    (ha : Satisfies model a.clauses) (hl : evalLit model l = true) :
    Satisfies model (assign a depth l).clauses := by
  apply ClauseTree.put_sat model a depth l.1 [l] ha
  simpa only [evalClause, List.any_cons, List.any_nil, Bool.or_false] using hl

theorem assignMany_sat (model : Nat → Bool) (depth : Nat) (ls : List Lit) (a : ClauseTree)
    (ha : Satisfies model a.clauses) (hl : ∀ l ∈ ls, evalLit model l = true) :
    Satisfies model (assignMany depth ls a).clauses := by
  induction ls generalizing a with
  | nil => exact ha
  | cons l ls ih =>
    exact ih (assign a depth l) (assign_sat model a depth l ha (hl l (by simp)))
      (fun k hk => hl k (List.mem_cons_of_mem l hk))

private theorem falsified_false (model : Nat → Bool) (a : ClauseTree) (depth : Nat)
    (ha : Satisfies model a.clauses) (l : Lit) (hl : evalLit model l = true) :
    falsified a depth l = false := by
  apply Bool.eq_false_iff.mpr
  intro hf
  unfold falsified at hf
  split at hf
  · rename_i stored he
    have hs : stored = neg l := by simpa only [beq_iff_eq] using hf
    have ht := ha [stored] (ClauseTree.mem_of_get he)
    rw [hs] at ht
    simp only [evalClause, List.any_cons, List.any_nil, Bool.or_false, evalLit_neg, hl] at ht
    contradiction
  · contradiction

private theorem remaining_true (model : Nat → Bool) (clause : Clause)
    (a : ClauseTree) (depth : Nat) (ha : Satisfies model a.clauses)
    (hc : evalClause model clause = true) :
    evalClause model (remaining clause a depth) = true := by
  obtain ⟨l, hl, ht⟩ := List.any_eq_true.mp hc
  apply List.any_eq_true.mpr
  refine ⟨l, ?_, ht⟩
  simp only [remaining, List.mem_eraseDups, List.mem_filter]
  exact ⟨hl, by simp only [falsified_false model a depth ha l ht, Bool.not_false]⟩

def propagate (state : ClauseTree) (depth : Nat) : List Nat → ClauseTree → Bool
  | [], _ => false
  | id :: hints, a =>
    match state.get depth (id - 1) with
    | none => false
    | some clause =>
      match remaining clause a depth with
      | [] => true
      | [lit] => propagate state depth hints (assign a depth lit)
      | _ => false

private theorem propagate_sound (model : Nat → Bool) (state : ClauseTree) (depth : Nat)
    (hs : Satisfies model state.clauses) (hints : List Nat) (a : ClauseTree)
    (ha : Satisfies model a.clauses)
    (h : propagate state depth hints a = true) : False := by
  induction hints generalizing a with
  | nil => simp [propagate] at h
  | cons id hints ih =>
    simp only [propagate] at h
    split at h
    · contradiction
    · rename_i clause hg
      have hc := remaining_true model clause a depth ha (hs clause (ClauseTree.mem_of_get hg))
      split at h
      · rename_i he
        simp only [he, evalClause, List.any_nil] at hc
        contradiction
      · rename_i lit he
        have ht : evalLit model lit = true := by simpa [he, evalClause] using hc
        exact ih (assign a depth lit) (assign_sat model a depth lit ha ht) h
      · contradiction

def checkRup (state : ClauseTree) (depth : Nat) (clause : Clause) (hints : List Nat) : Bool :=
  propagate state depth hints (assignMany depth (clause.map neg) .nil)

theorem checkRup_sound (state : ClauseTree) (depth : Nat) (clause : Clause) (hints : List Nat)
    (h : checkRup state depth clause hints = true) (model : Nat → Bool)
    (hs : Satisfies model state.clauses) : evalClause model clause = true := by
  cases hc : evalClause model clause
  · apply False.elim
    apply propagate_sound model state depth hs hints _ ?_ h
    apply assignMany_sat model depth (clause.map neg) .nil
    · intro c hm; simp [ClauseTree.clauses] at hm
    · intro l hl
      obtain ⟨k, hk, rfl⟩ := List.mem_map.mp hl
      rw [evalLit_neg]
      have ht : evalLit model k = false := by
        cases ht : evalLit model k
        · rfl
        · have ht' : evalClause model clause = true := List.any_eq_true.mpr ⟨k, hk, ht⟩
          rw [hc] at ht'
          contradiction
      simp [ht]
  · rfl

def checkTree : List TreeAction → ClauseTree → Nat → Bool
  | [], _, _ => false
  | .empty hints :: _, state, depth => checkRup state depth [] hints
  | .add slot clause hints :: rest, state, depth =>
    checkRup state depth clause hints && checkTree rest (state.put depth slot clause) depth

theorem checkTree_sound (proof : List TreeAction) (state : ClauseTree) (depth : Nat)
    (h : checkTree proof state depth = true) :
    ∀ model : Nat → Bool, ¬ Satisfies model state.clauses := by
  intro model hs
  induction proof generalizing state with
  | nil => simp [checkTree] at h
  | cons action rest ih =>
    cases action with
    | empty hints =>
      have := checkRup_sound state depth [] hints h model hs
      simp [evalClause] at this
    | add slot clause hints =>
      have hp : checkRup state depth clause hints = true ∧
          checkTree rest (state.put depth slot clause) depth = true := by
        simpa only [checkTree, Bool.and_eq_true] using h
      exact ih _ hp.2 (ClauseTree.put_sat model state depth slot clause hs
        (checkRup_sound state depth clause hints hp.1 model hs))

def runPrefix : List TreeAction → ClauseTree → Nat → Option ClauseTree
  | [], state, _ => some state
  | .empty _ :: _, _, _ => none
  | .add slot clause hints :: rest, state, depth =>
    if checkRup state depth clause hints then
      runPrefix rest (state.put depth slot clause) depth
    else none

theorem runPrefix_sound (proof : List TreeAction) (state : ClauseTree) (depth : Nat)
    (result : ClauseTree) (h : runPrefix proof state depth = some result)
    (model : Nat → Bool) (hs : Satisfies model state.clauses) :
    Satisfies model result.clauses := by
  induction proof generalizing state result with
  | nil =>
    simp only [runPrefix, Option.some.injEq] at h
    subst result
    exact hs
  | cons action rest ih =>
    cases action with
    | empty _ => simp [runPrefix] at h
    | add slot clause hints =>
      simp only [runPrefix] at h
      split at h
      · rename_i hc
        exact ih _ result h (ClauseTree.put_sat model state depth slot clause hs
          (checkRup_sound state depth clause hints hc model hs))
      · contradiction

end EncloseHorse.Certificate.RupFast
