import EncloseHorseVerified.Certificate.Rup

/-! Kernel-reducible RUP using exact, unbounded natural-number bitsets for the
partial assignment. Every set bit is tied to its complete variable index. -/
namespace EncloseHorse.Certificate.RupBits
open Totalizer Rup

structure Assignment where
  positive : Nat
  negative : Nat
  deriving Repr

def empty : Assignment := ⟨0,0⟩

def assign (a : Assignment) (l : Lit) : Assignment :=
  if l.2 then ⟨a.positive ||| (1 <<< l.1), a.negative⟩
  else ⟨a.positive, a.negative ||| (1 <<< l.1)⟩

def assignMany : List Lit → Assignment → Assignment
  | [], a => a
  | l :: ls, a => assignMany ls (assign a l)

def falsified (a : Assignment) (l : Lit) : Bool :=
  (if l.2 then a.negative else a.positive).testBit l.1

def remaining (clause : Clause) (a : Assignment) : Clause :=
  (clause.filter (fun l => !(falsified a l))).eraseDups

/-- Every recorded assignment is true in the model. Both signs may be recorded;
then this invariant rules out every model, as required for unit propagation. -/
def Agrees (model : Nat → Bool) (a : Assignment) : Prop :=
  (∀ i, a.positive.testBit i = true → model i = true) ∧
  (∀ i, a.negative.testBit i = true → model i = false)

private theorem mask_index {i j : Nat} (h : (1 <<< i : Nat).testBit j = true) : j = i := by
  simp only [Nat.testBit_shiftLeft, Bool.and_eq_true, decide_eq_true_eq,
    Nat.testBit_one_eq_true_iff_self_eq_zero] at h
  omega

@[simp] theorem agrees_empty (model : Nat → Bool) : Agrees model empty := by
  simp [Agrees, empty]

theorem assign_sat (model : Nat → Bool) (a : Assignment) (l : Lit)
    (ha : Agrees model a) (hl : evalLit model l = true) : Agrees model (assign a l) := by
  rcases l with ⟨v,b⟩
  cases b with
  | false =>
    have hv : model v = false := by simpa [evalLit] using hl
    constructor
    · exact ha.1
    · intro i hi
      change (a.negative ||| (1 <<< v)).testBit i = true at hi
      simp only [Nat.testBit_or, Bool.or_eq_true] at hi
      rcases hi with hi | hi
      · exact ha.2 i hi
      · rw [mask_index hi]
        exact hv
  | true =>
    have hv : model v = true := by simpa [evalLit] using hl
    constructor
    · intro i hi
      change (a.positive ||| (1 <<< v)).testBit i = true at hi
      simp only [Nat.testBit_or, Bool.or_eq_true] at hi
      rcases hi with hi | hi
      · exact ha.1 i hi
      · rw [mask_index hi]
        exact hv
    · exact ha.2

theorem assignMany_sat (model : Nat → Bool) (ls : List Lit) (a : Assignment)
    (ha : Agrees model a) (hl : ∀ l ∈ ls, evalLit model l = true) :
    Agrees model (assignMany ls a) := by
  induction ls generalizing a with
  | nil => exact ha
  | cons l ls ih =>
    exact ih (assign a l) (assign_sat model a l ha (hl l (by simp)))
      (fun k hk => hl k (List.mem_cons_of_mem l hk))

private theorem falsified_false (model : Nat → Bool) (a : Assignment)
    (ha : Agrees model a) (l : Lit) (hl : evalLit model l = true) :
    falsified a l = false := by
  rcases l with ⟨i,b⟩
  cases b with
  | false =>
    have hm : model i = false := by simpa [evalLit] using hl
    apply Bool.eq_false_iff.mpr
    intro h
    have ht := ha.1 i h
    rw [hm] at ht
    contradiction
  | true =>
    have hm : model i = true := by simpa [evalLit] using hl
    apply Bool.eq_false_iff.mpr
    intro h
    have ht := ha.2 i h
    rw [hm] at ht
    contradiction

private theorem remaining_true (model : Nat → Bool) (clause : Clause)
    (a : Assignment) (ha : Agrees model a) (hc : evalClause model clause = true) :
    evalClause model (remaining clause a) = true := by
  obtain ⟨l, hl, ht⟩ := List.any_eq_true.mp hc
  apply List.any_eq_true.mpr
  refine ⟨l, ?_, ht⟩
  simp only [remaining, List.mem_eraseDups, List.mem_filter]
  exact ⟨hl, by simp only [falsified_false model a ha l ht, Bool.not_false]⟩

def propagate (state : ClauseTree) (depth : Nat) : List Nat → Assignment → Bool
  | [], _ => false
  | id :: hints, a =>
    match state.get depth (id - 1) with
    | none => false
    | some clause =>
      match remaining clause a with
      | [] => true
      | [lit] => propagate state depth hints (assign a lit)
      | _ => false

private theorem propagate_sound (model : Nat → Bool) (state : ClauseTree) (depth : Nat)
    (hs : Satisfies model state.clauses) (hints : List Nat) (a : Assignment)
    (ha : Agrees model a) (h : propagate state depth hints a = true) : False := by
  induction hints generalizing a with
  | nil => simp [propagate] at h
  | cons id hints ih =>
    simp only [propagate] at h
    split at h
    · contradiction
    · rename_i clause hg
      have hc := remaining_true model clause a ha (hs clause (ClauseTree.mem_of_get hg))
      split at h
      · rename_i he
        simp only [he, evalClause, List.any_nil] at hc
        contradiction
      · rename_i lit he
        have ht : evalLit model lit = true := by simpa [he, evalClause] using hc
        exact ih (assign a lit) (assign_sat model a lit ha ht) h
      · contradiction

def checkRup (state : ClauseTree) (depth : Nat) (clause : Clause) (hints : List Nat) : Bool :=
  propagate state depth hints (assignMany (clause.map neg) empty)

theorem checkRup_sound (state : ClauseTree) (depth : Nat) (clause : Clause) (hints : List Nat)
    (h : checkRup state depth clause hints = true) (model : Nat → Bool)
    (hs : Satisfies model state.clauses) : evalClause model clause = true := by
  cases hc : evalClause model clause
  · apply False.elim
    apply propagate_sound model state depth hs hints _ ?_ h
    apply assignMany_sat model (clause.map neg) empty (agrees_empty model)
    intro l hl
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
    if checkRup state depth clause hints then runPrefix rest (state.put depth slot clause) depth
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

end EncloseHorse.Certificate.RupBits
