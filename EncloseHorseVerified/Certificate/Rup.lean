import EncloseHorseVerified.Certificate.Totalizer

/-!
A structurally recursive RUP checker. The external prover supplies clauses and
unit-propagation hints; every successful derivation preserves all models of the
input CNF. Lists and structural recursion allow reduction in Lean's kernel.
-/
namespace EncloseHorse.Certificate.Rup
open Totalizer

abbrev Assignment := List Lit

def remaining (clause : Clause) (assigned : Assignment) : Clause :=
  (clause.filter (fun l => !(assigned.contains (neg l)))).eraseDups

/-- A hint is usable only if it names an actual clause already in the state. -/
def getClause (state : CNF) (size id : Nat) : Option Clause :=
  if id = 0 ∨ size < id then none else state[size - id]?

/-- True means that the supplied hints derive a contradiction. -/
def propagate (state : CNF) (size : Nat) : List Nat → Assignment → Bool
  | [], _ => false
  | id :: hints, assigned =>
    match getClause state size id with
    | none => false
    | some clause =>
      match remaining clause assigned with
      | [] => true
      | [lit] => propagate state size hints (lit :: assigned)
      | _ => false

def checkRup (state : CNF) (size : Nat) (clause : Clause) (hints : List Nat) : Bool :=
  propagate state size hints (clause.map neg)

inductive Action where
  | add (clause : Clause) (hints : List Nat)
  | empty (hints : List Nat)
  deriving Repr

def checkFrom : List Action → CNF → Nat → Bool
  | [], _, _ => false
  | .empty hints :: _, state, size => checkRup state size [] hints
  | .add clause hints :: rest, state, size =>
    checkRup state size clause hints && checkFrom rest (clause :: state) (size + 1)

def check (cnf : CNF) (proof : List Action) : Bool :=
  checkFrom proof cnf.reverse cnf.length

private theorem mem_of_getClause {state : CNF} {size id : Nat} {clause : Clause}
    (h : getClause state size id = some clause) : clause ∈ state := by
  unfold getClause at h
  split at h
  · contradiction
  · exact List.mem_of_getElem? h

private theorem remaining_true (model : Nat → Bool) (clause : Clause)
    (assigned : Assignment)
    (ha : ∀ l ∈ assigned, evalLit model l = true)
    (hc : evalClause model clause = true) :
    evalClause model (remaining clause assigned) = true := by
  obtain ⟨l, hl, ht⟩ := List.any_eq_true.mp hc
  apply List.any_eq_true.mpr
  refine ⟨l, ?_, ht⟩
  simp only [remaining, List.mem_eraseDups, List.mem_filter]
  refine ⟨hl, ?_⟩
  have hf : assigned.contains (neg l) = false := by
    apply Bool.eq_false_iff.mpr
    intro hm
    have hh := ha (neg l) (List.contains_iff_mem.mp hm)
    rw [evalLit_neg, ht] at hh
    contradiction
  simp only [Bool.not_eq_true']
  exact hf

private theorem propagate_sound (model : Nat → Bool) (state : CNF) (size : Nat)
    (hs : Satisfies model state) (hints : List Nat) (assigned : Assignment)
    (ha : ∀ l ∈ assigned, evalLit model l = true)
    (h : propagate state size hints assigned = true) : False := by
  induction hints generalizing assigned with
  | nil => simp [propagate] at h
  | cons id hints ih =>
    simp only [propagate] at h
    split at h
    · contradiction
    · rename_i clause hg
      have hc := remaining_true model clause assigned ha (hs clause (mem_of_getClause hg))
      split at h
      · rename_i he
        simp only [he, evalClause, List.any_nil] at hc
        contradiction
      · rename_i lit he
        have ht : evalLit model lit = true := by simpa [he, evalClause] using hc
        apply ih (assigned := lit :: assigned) ?_ h
        intro l hl
        rcases List.mem_cons.mp hl with rfl | hl
        · exact ht
        · exact ha l hl
      · contradiction

theorem checkRup_sound (state : CNF) (size : Nat) (clause : Clause) (hints : List Nat)
    (h : checkRup state size clause hints = true) (model : Nat → Bool)
    (hs : Satisfies model state) : evalClause model clause = true := by
  cases hc : evalClause model clause
  · apply False.elim
    apply propagate_sound model state size hs hints (clause.map neg) ?_ h
    intro l hl
    obtain ⟨k, hk, rfl⟩ := List.mem_map.mp hl
    rw [evalLit_neg]
    have ht : evalLit model k = false := by
      cases ht : evalLit model k
      · rfl
      · have := List.any_eq_true.mpr ⟨k, hk, ht⟩
        change evalClause model clause = true at this
        rw [hc] at this
        contradiction
    simp [ht]
  · rfl

theorem checkFrom_sound (proof : List Action) (state : CNF) (size : Nat)
    (h : checkFrom proof state size = true) (model : Nat → Bool)
    (hs : Satisfies model state) : False := by
  induction proof generalizing state size with
  | nil => simp [checkFrom] at h
  | cons action rest ih =>
    cases action with
    | empty hints =>
      have := checkRup_sound state size [] hints h model hs
      simp [evalClause] at this
    | add clause hints =>
      have hp : checkRup state size clause hints = true ∧
          checkFrom rest (clause :: state) (size + 1) = true := by
        simpa only [checkFrom, Bool.and_eq_true] using h
      apply ih (clause :: state) (size + 1) hp.2
      intro c hc
      rcases List.mem_cons.mp hc with rfl | hc
      · exact checkRup_sound state size c hints hp.1 model hs
      · exact hs c hc

/-- A successful certificate rules out every Boolean model of the original CNF. -/
theorem check_sound (cnf : CNF) (proof : List Action) (h : check cnf proof = true) :
    ∀ model : Nat → Bool, ¬ Satisfies model cnf := by
  intro model hs
  apply checkFrom_sound proof cnf.reverse cnf.length h model
  intro c hc
  exact hs c (List.mem_reverse.mp hc)

/-- A sparse binary tree gives logarithmic certificate-clause lookup. -/
inductive ClauseTree where
  | nil
  | leaf (clause : Clause)
  | node (left right : ClauseTree)
  deriving Repr

namespace ClauseTree

def clauses : ClauseTree → CNF
  | .nil => []
  | .leaf c => [c]
  | .node left right => left.clauses ++ right.clauses

def children : ClauseTree → ClauseTree × ClauseTree
  | .node left right => (left, right)
  | _ => (.nil, .nil)

/-- Slots are read least-significant bit first, for a fixed depth. -/
def get : ClauseTree → Nat → Nat → Option Clause
  | .leaf clause, 0, _ => some clause
  | .node left right, depth + 1, slot =>
      if slot % 2 = 0 then get left depth (slot / 2)
      else get right depth (slot / 2)
  | _, _, _ => none

def put (tree : ClauseTree) : Nat → Nat → Clause → ClauseTree
  | 0, _, clause => .leaf clause
  | depth + 1, slot, clause =>
      let parts := tree.children
      if slot % 2 = 0 then .node (parts.1.put depth (slot / 2) clause) parts.2
      else .node parts.1 (parts.2.put depth (slot / 2) clause)

theorem mem_of_get {tree : ClauseTree} {depth slot : Nat} {clause : Clause}
    (h : tree.get depth slot = some clause) : clause ∈ tree.clauses := by
  induction depth generalizing tree slot with
  | zero =>
    cases tree with
    | nil => simp [get] at h
    | node _ _ => simp [get] at h
    | leaf c =>
      have he : c = clause := by simpa [get] using h
      simp [clauses, he]
  | succ depth ih =>
    cases tree with
    | nil => simp [get] at h
    | leaf _ => simp [get] at h
    | node left right =>
      simp only [get] at h
      split at h
      · exact List.mem_append_left _ (ih h)
      · exact List.mem_append_right _ (ih h)

private theorem children_sat (model : Nat → Bool) (tree : ClauseTree)
    (h : Satisfies model tree.clauses) :
    Satisfies model tree.children.1.clauses ∧ Satisfies model tree.children.2.clauses := by
  cases tree with
  | nil => simp [children, clauses, Satisfies]
  | leaf _ => simp [children, clauses, Satisfies]
  | node left right =>
    constructor
    · intro c hc
      exact h c (List.mem_append_left _ hc)
    · intro c hc
      exact h c (List.mem_append_right _ hc)

theorem put_sat (model : Nat → Bool) (tree : ClauseTree) (depth slot : Nat)
    (clause : Clause) (hs : Satisfies model tree.clauses)
    (hc : evalClause model clause = true) :
    Satisfies model (tree.put depth slot clause).clauses := by
  induction depth generalizing tree slot with
  | zero => simpa [put, clauses, Satisfies] using hc
  | succ depth ih =>
    have hh := children_sat model tree hs
    simp only [put]
    split
    · intro c hmem
      rcases List.mem_append.mp hmem with hl | hr
      · exact ih tree.children.1 (slot / 2) hh.1 c hl
      · exact hh.2 c hr
    · intro c hmem
      rcases List.mem_append.mp hmem with hl | hr
      · exact hh.1 c hl
      · exact ih tree.children.2 (slot / 2) hh.2 c hr

end ClauseTree

def propagateTree (state : ClauseTree) (depth : Nat) : List Nat → Assignment → Bool
  | [], _ => false
  | id :: hints, assigned =>
    match state.get depth (id - 1) with
    | none => false
    | some clause =>
      match remaining clause assigned with
      | [] => true
      | [lit] => propagateTree state depth hints (lit :: assigned)
      | _ => false

private theorem propagateTree_sound (model : Nat → Bool) (state : ClauseTree) (depth : Nat)
    (hs : Satisfies model state.clauses) (hints : List Nat) (assigned : Assignment)
    (ha : ∀ l ∈ assigned, evalLit model l = true)
    (h : propagateTree state depth hints assigned = true) : False := by
  induction hints generalizing assigned with
  | nil => simp [propagateTree] at h
  | cons id hints ih =>
    simp only [propagateTree] at h
    split at h
    · contradiction
    · rename_i clause hg
      have hc := remaining_true model clause assigned ha (hs clause (ClauseTree.mem_of_get hg))
      split at h
      · rename_i he
        simp only [he, evalClause, List.any_nil] at hc
        contradiction
      · rename_i lit he
        have ht : evalLit model lit = true := by simpa [he, evalClause] using hc
        apply ih (assigned := lit :: assigned) ?_ h
        intro l hl
        rcases List.mem_cons.mp hl with rfl | hl
        · exact ht
        · exact ha l hl
      · contradiction

def checkRupTree (state : ClauseTree) (depth : Nat) (clause : Clause) (hints : List Nat) : Bool :=
  propagateTree state depth hints (clause.map neg)

theorem checkRupTree_sound (state : ClauseTree) (depth : Nat) (clause : Clause) (hints : List Nat)
    (h : checkRupTree state depth clause hints = true) (model : Nat → Bool)
    (hs : Satisfies model state.clauses) : evalClause model clause = true := by
  cases hc : evalClause model clause
  · apply False.elim
    apply propagateTree_sound model state depth hs hints (clause.map neg) ?_ h
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

inductive TreeAction where
  | add (slot : Nat) (clause : Clause) (hints : List Nat)
  | empty (hints : List Nat)
  deriving Repr

/-- Each insertion may use any slot; the checker never trusts slot metadata. -/
def checkTree : List TreeAction → ClauseTree → Nat → Bool
  | [], _, _ => false
  | .empty hints :: _, state, depth => checkRupTree state depth [] hints
  | .add slot clause hints :: rest, state, depth =>
    checkRupTree state depth clause hints && checkTree rest (state.put depth slot clause) depth

theorem checkTree_sound (proof : List TreeAction) (state : ClauseTree) (depth : Nat)
    (h : checkTree proof state depth = true) :
    ∀ model : Nat → Bool, ¬ Satisfies model state.clauses := by
  intro model hs
  induction proof generalizing state with
  | nil => simp [checkTree] at h
  | cons action rest ih =>
    cases action with
    | empty hints =>
      have := checkRupTree_sound state depth [] hints h model hs
      simp [evalClause] at this
    | add slot clause hints =>
      have hp : checkRupTree state depth clause hints = true ∧
          checkTree rest (state.put depth slot clause) depth = true := by
        simpa only [checkTree, Bool.and_eq_true] using h
      exact ih _ hp.2 (ClauseTree.put_sat model state depth slot clause hs
        (checkRupTree_sound state depth clause hints hp.1 model hs))

/-- Run a finite group of additions, allowing kernel certificates to checkpoint. -/
def runPrefix : List TreeAction → ClauseTree → Nat → Option ClauseTree
  | [], state, _ => some state
  | .empty _ :: _, _, _ => none
  | .add slot clause hints :: rest, state, depth =>
    if checkRupTree state depth clause hints then
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
          (checkRupTree_sound state depth clause hints hc model hs))
      · contradiction

end EncloseHorse.Certificate.Rup
