import Std

/-!
# A model extension for forward unary totalizers

Literals use zero-based variable numbers. Input occurrences are counted with
multiplicity; this also encodes positive integral weights by repeated literals.
The clauses only propagate lower bounds on counts. Their sound model extension
is enough for an UNSAT certificate, without assuming a SAT encoder is trusted.
-/

namespace EncloseHorse.Certificate.Totalizer

abbrev Lit := Nat × Bool
abbrev Clause := List Lit
abbrev CNF := List Clause

def neg (l : Lit) : Lit := (l.1, !l.2)
def evalLit (a : Nat → Bool) (l : Lit) : Bool := a l.1 == l.2
def evalClause (a : Nat → Bool) (c : Clause) : Bool := c.any (evalLit a)
def countTrue (a : Nat → Bool) (ls : List Lit) : Nat :=
  (ls.filter (evalLit a)).length
def Satisfies (a : Nat → Bool) (f : CNF) : Prop :=
  ∀ c ∈ f, evalClause a c = true

inductive CounterTree where
  | leaf (lit : Lit)
  | node (outputs : List Nat) (left right : CounterTree)
  deriving Repr, Inhabited

namespace CounterTree

def leaves : CounterTree → List Lit
  | .leaf l => [l]
  | .node _ left right => left.leaves ++ right.leaves

def outputLits : CounterTree → List Lit
  | .leaf l => [l]
  | .node outputs _ _ => outputs.map (fun v => (v, true))

end CounterTree

structure AuxDef where
  var : Nat
  inputs : List Lit
  threshold : Nat
  deriving Repr, DecidableEq

namespace CounterTree

def ownDefs (outputs : List Nat) (inputs : List Lit) : List AuxDef :=
  List.ofFn fun i : Fin outputs.length =>
    ⟨outputs[i], inputs, i.val + 1⟩

def auxDefs : CounterTree → List AuxDef
  | .leaf _ => []
  | .node outputs left right =>
      left.auxDefs ++ right.auxDefs ++ ownDefs outputs (left.leaves ++ right.leaves)

end CounterTree

/-- Extend a base assignment by exact thresholds of the original input list. -/
def extend (base : Nat → Bool) : List AuxDef → Nat → Bool
  | [], v => base v
  | d :: ds, v =>
      if v = d.var then decide (d.threshold ≤ countTrue base d.inputs)
      else extend base ds v

/-- The zero threshold needs no premise; threshold `i+1` needs output `i`. -/
def thresholds (ls : List Lit) : List (Nat × Clause) :=
  (0, []) :: List.ofFn (fun i : Fin ls.length => (i.val + 1, [neg ls[i]]))

/-- Precisely the forward merge clauses, in lexicographic `(i,j)` order. -/
def mergeClauses (left right : List Lit) (outputs : List Nat) : CNF :=
  (thresholds left).flatMap fun p =>
    (thresholds right).flatMap fun q =>
      if h : 0 < p.1 + q.1 ∧ p.1 + q.1 ≤ outputs.length then
        [p.2 ++ q.2 ++ [(outputs[p.1 + q.1 - 1]'(by omega), true)]]
      else []

namespace CounterTree

def clauses : CounterTree → CNF
  | .leaf _ => []
  | .node outputs left right =>
      left.clauses ++ right.clauses ++ mergeClauses left.outputLits right.outputLits outputs

/-- A negative root output enforces the supplied count bound. -/
def atMostClauses (t : CounterTree) (bound : Fin t.outputLits.length) : CNF :=
  t.clauses ++ [[neg t.outputLits[bound]]]

end CounterTree

@[simp] theorem evalLit_neg (a : Nat → Bool) (l : Lit) :
    evalLit a (neg l) = !evalLit a l := by
  rcases l with ⟨v, p⟩
  cases p <;> cases h : a v <;> simp [evalLit, neg, h]

@[simp] theorem evalClause_append (a : Nat → Bool) (c d : Clause) :
    evalClause a (c ++ d) = (evalClause a c || evalClause a d) :=
  List.any_append

@[simp] theorem countTrue_append (a : Nat → Bool) (xs ys : List Lit) :
    countTrue a (xs ++ ys) = countTrue a xs + countTrue a ys := by
  simp [countTrue, List.filter_append]

theorem extend_base (base : Nat → Bool) (defs : List AuxDef) (baseCount v : Nat)
    (hv : v < baseCount) (hvars : ∀ d ∈ defs, baseCount ≤ d.var) :
    extend base defs v = base v := by
  induction defs with
  | nil => rfl
  | cons d ds ih =>
      have hne : v ≠ d.var := by have := hvars d (by simp); omega
      simp only [extend, ite_eq_right hne]
      apply ih
      intro e he
      exact hvars e (List.mem_cons_of_mem d he)

theorem extend_aux (base : Nat → Bool) (defs : List AuxDef)
    (hunique : (defs.map AuxDef.var).Nodup) (d : AuxDef) (hd : d ∈ defs) :
    extend base defs d.var = decide (d.threshold ≤ countTrue base d.inputs) := by
  induction defs with
  | nil => simp at hd
  | cons e es ih =>
      simp only [List.map_cons, List.nodup_cons] at hunique
      rcases List.mem_cons.mp hd with rfl | hd
      · simp [extend]
      · have hne : d.var ≠ e.var := by
          intro heq
          exact hunique.1 (List.mem_map.mpr ⟨d, hd, heq⟩)
        simp only [extend, ite_eq_right hne]
        exact ih hunique.2 hd

/-- Local facts needed by a counter, even when other counters share the model. -/
structure ModelFor (base model : Nat → Bool) (t : CounterTree) : Prop where
  leaf_eq : ∀ l ∈ t.leaves, evalLit model l = evalLit base l
  aux_eq : ∀ d ∈ t.auxDefs,
    model d.var = decide (d.threshold ≤ countTrue base d.inputs)

theorem extend_modelFor (base : Nat → Bool) (defs : List AuxDef) (baseCount : Nat)
    (t : CounterTree) (hunique : (defs.map AuxDef.var).Nodup)
    (haux : ∀ d ∈ defs, baseCount ≤ d.var)
    (hleaf : ∀ l ∈ t.leaves, l.1 < baseCount)
    (hsub : ∀ d ∈ t.auxDefs, d ∈ defs) :
    ModelFor base (extend base defs) t where
  leaf_eq l hl := by
    unfold evalLit
    rw [extend_base base defs baseCount l.1 (hleaf l hl) haux]
  aux_eq d hd := extend_aux base defs hunique d (hsub d hd)

theorem output_correct (base model : Nat → Bool) (t : CounterTree)
    (hm : ModelFor base model t) (i : Fin t.outputLits.length) :
    evalLit model t.outputLits[i] = decide (i.val + 1 ≤ countTrue base t.leaves) := by
  cases t with
  | leaf l =>
      have hi : i.val = 0 := by have := i.isLt; simp [CounterTree.outputLits] at this; omega
      have hl := hm.leaf_eq l (by simp [CounterTree.leaves])
      change evalLit model ([l][i.val]'(by simpa [CounterTree.outputLits] using i.isLt)) = _
      simp only [List.getElem_singleton]
      rw [hl]
      cases h : evalLit base l <;> simp [countTrue, CounterTree.leaves, h, hi]
  | node outputs left right =>
      have hi : i.val < outputs.length := by simpa [CounterTree.outputLits] using i.isLt
      let d : AuxDef := ⟨outputs[i.val], left.leaves ++ right.leaves, i.val + 1⟩
      have hd : d ∈ (CounterTree.node outputs left right).auxDefs := by
        apply List.mem_append_right
        exact List.mem_ofFn.mpr ⟨⟨i.val, hi⟩, rfl⟩
      have hv := hm.aux_eq d hd
      change evalLit model ((outputs.map (fun v => (v, true)))[i.val]'(by simpa using hi)) = _
      simpa [CounterTree.outputLits, List.getElem_map, evalLit, d,
        CounterTree.leaves] using hv

private theorem thresholds_lower (model : Nat → Bool) (ls : List Lit) (n : Nat)
    (hout : ∀ i : Fin ls.length, evalLit model ls[i] = decide (i.val + 1 ≤ n))
    (p : Nat × Clause) (hp : p ∈ thresholds ls)
    (hfalse : evalClause model p.2 = false) : p.1 ≤ n := by
  rcases List.mem_cons.mp hp with rfl | hp
  · exact Nat.zero_le n
  · obtain ⟨i, hi⟩ := List.mem_ofFn.mp hp
    subst p
    have ht : evalLit model ls[i] = true := by
      simpa [evalClause] using hfalse
    have ho := hout i
    rw [ht] at ho
    exact of_decide_eq_true ho.symm

private theorem merge_sat (model : Nat → Bool) (left right : List Lit)
    (outputs : List Nat) (nLeft nRight : Nat)
    (hleft : ∀ i : Fin left.length,
      evalLit model left[i] = decide (i.val + 1 ≤ nLeft))
    (hright : ∀ i : Fin right.length,
      evalLit model right[i] = decide (i.val + 1 ≤ nRight))
    (hout : ∀ i : Fin outputs.length,
      model outputs[i] = decide (i.val + 1 ≤ nLeft + nRight)) :
    Satisfies model (mergeClauses left right outputs) := by
  intro c hc
  simp only [mergeClauses, List.mem_flatMap] at hc
  obtain ⟨p, hp, q, hq, hc⟩ := hc
  split at hc
  · rename_i h
    obtain rfl := List.mem_singleton.mp hc
    by_cases hpl : evalClause model p.2 = true
    · simp [hpl]
    by_cases hqr : evalClause model q.2 = true
    · simp [hqr]
    have hpf : evalClause model p.2 = false := by cases hv : evalClause model p.2 <;> simp_all
    have hqf : evalClause model q.2 = false := by cases hv : evalClause model q.2 <;> simp_all
    have hl := thresholds_lower model left nLeft hleft p hp hpf
    have hr := thresholds_lower model right nRight hright q hq hqf
    have hi : p.1 + q.1 - 1 < outputs.length := by omega
    have hc : p.1 + q.1 - 1 + 1 ≤ nLeft + nRight := by omega
    have hv : model outputs[p.1 + q.1 - 1] = true := by
      have ho := hout ⟨p.1 + q.1 - 1, hi⟩
      simpa [hc] using ho
    simp [evalClause, evalLit, hv]
  · simp at hc

private theorem ModelFor.left (base model : Nat → Bool) (outputs : List Nat)
    (left right : CounterTree) (h : ModelFor base model (.node outputs left right)) :
    ModelFor base model left where
  leaf_eq l hl := h.leaf_eq l (List.mem_append_left _ hl)
  aux_eq d hd := h.aux_eq d (List.mem_append_left _ (List.mem_append_left _ hd))

private theorem ModelFor.right (base model : Nat → Bool) (outputs : List Nat)
    (left right : CounterTree) (h : ModelFor base model (.node outputs left right)) :
    ModelFor base model right where
  leaf_eq l hl := h.leaf_eq l (List.mem_append_right _ hl)
  aux_eq d hd := h.aux_eq d (List.mem_append_left _ (List.mem_append_right _ hd))

/-- Every merge clause holds in the exact threshold extension. -/
theorem clauses_sat (base model : Nat → Bool) (t : CounterTree)
    (hm : ModelFor base model t) : Satisfies model t.clauses := by
  induction t with
  | leaf l => intro c hc; simp [CounterTree.clauses] at hc
  | node outputs left right ihLeft ihRight =>
      have hml := ModelFor.left base model outputs left right hm
      have hmr := ModelFor.right base model outputs left right hm
      have hl := ihLeft hml
      have hr := ihRight hmr
      have hmrg : Satisfies model (mergeClauses left.outputLits right.outputLits outputs) := by
        apply merge_sat model left.outputLits right.outputLits outputs
          (countTrue base left.leaves) (countTrue base right.leaves)
        · exact output_correct base model left hml
        · exact output_correct base model right hmr
        · intro i
          let d : AuxDef := ⟨outputs[i], left.leaves ++ right.leaves, i.val + 1⟩
          have hd : d ∈ (CounterTree.node outputs left right).auxDefs := by
            apply List.mem_append_right
            exact List.mem_ofFn.mpr ⟨i, rfl⟩
          simpa [d] using hm.aux_eq d hd
      intro c hc
      rcases List.mem_append.mp hc with hc | hc
      · rcases List.mem_append.mp hc with hc | hc
        · exact hl c hc
        · exact hr c hc
      · exact hmrg c hc

/-- A count at most `bound` makes the negative root output true. -/
theorem atMost_sat (base model : Nat → Bool) (t : CounterTree)
    (hm : ModelFor base model t) (bound : Fin t.outputLits.length)
    (hcount : countTrue base t.leaves ≤ bound.val) :
    Satisfies model (t.atMostClauses bound) := by
  intro c hc
  rcases List.mem_append.mp hc with hc | hc
  · exact clauses_sat base model t hm c hc
  · obtain rfl := List.mem_singleton.mp hc
    have ho := output_correct base model t hm bound
    have hf : ¬ bound.val + 1 ≤ countTrue base t.leaves := by omega
    simp only [decide_eq_false hf] at ho
    simpa only [evalClause, List.any_cons, List.any_nil, Bool.or_false,
      evalLit_neg, Bool.not_eq_true', Fin.getElem_fin] using ho

/-- All counters use one allocation, so different counters cannot overwrite each other. -/
def allDefs (trees : List CounterTree) : List AuxDef :=
  trees.flatMap CounterTree.auxDefs

structure WellFormed (baseCount : Nat) (trees : List CounterTree) : Prop where
  unique : ((allDefs trees).map AuxDef.var).Nodup
  aux_ge : ∀ d ∈ allDefs trees, baseCount ≤ d.var
  leaves_lt : ∀ t ∈ trees, ∀ l ∈ t.leaves, l.1 < baseCount

/-- A linear check for the generator's consecutive, globally disjoint allocation. -/
def checkVars (baseCount : Nat) (trees : List CounterTree) : Bool :=
  ((allDefs trees).map AuxDef.var == List.range' baseCount (allDefs trees).length) &&
    (trees.flatMap CounterTree.leaves).all (fun l => decide (l.1 < baseCount))

theorem checkVars_sound (baseCount : Nat) (trees : List CounterTree)
    (h : checkVars baseCount trees = true) : WellFormed baseCount trees := by
  simp only [checkVars, Bool.and_eq_true, beq_iff_eq, List.all_eq_true,
    decide_eq_true_eq] at h
  refine ⟨?_, ?_, ?_⟩
  · rw [h.1]
    exact List.nodup_range'
  · intro d hd
    have hv : d.var ∈ (allDefs trees).map AuxDef.var := List.mem_map.mpr ⟨d, hd, rfl⟩
    rw [h.1] at hv
    obtain ⟨i, _, heq⟩ := List.mem_range'.mp hv
    omega
  · intro t ht l hl
    exact h.2 l (List.mem_flatMap.mpr ⟨t, ht, hl⟩)

/-- One extension simultaneously models every counter while preserving every base bit. -/
theorem extend_all (baseCount : Nat) (base : Nat → Bool) (trees : List CounterTree)
    (hwf : WellFormed baseCount trees) :
    (∀ v, v < baseCount → extend base (allDefs trees) v = base v) ∧
      ∀ t ∈ trees, ModelFor base (extend base (allDefs trees)) t := by
  refine ⟨fun v hv => extend_base base (allDefs trees) baseCount v hv hwf.aux_ge, ?_⟩
  intro t ht
  apply extend_modelFor base (allDefs trees) baseCount t hwf.unique hwf.aux_ge
  · exact hwf.leaves_lt t ht
  · intro d hd
    exact List.mem_flatMap.mpr ⟨t, ht, hd⟩

/-- In particular, independent budget and score counters have a common satisfying extension. -/
theorem two_atMost_sat (baseCount : Nat) (base : Nat → Bool)
    (budget score : CounterTree)
    (budgetBound : Fin budget.outputLits.length) (scoreBound : Fin score.outputLits.length)
    (hvars : checkVars baseCount [budget, score] = true)
    (hbudget : countTrue base budget.leaves ≤ budgetBound.val)
    (hscore : countTrue base score.leaves ≤ scoreBound.val) :
    ∃ model : Nat → Bool,
      (∀ v, v < baseCount → model v = base v) ∧
        Satisfies model (budget.atMostClauses budgetBound ++ score.atMostClauses scoreBound) := by
  let model := extend base (allDefs [budget, score])
  have hext := extend_all baseCount base [budget, score] (checkVars_sound _ _ hvars)
  refine ⟨model, hext.1, ?_⟩
  have hb := atMost_sat base model budget (hext.2 budget (by simp)) budgetBound hbudget
  have hs := atMost_sat base model score (hext.2 score (by simp)) scoreBound hscore
  intro c hc
  rcases List.mem_append.mp hc with hc | hc
  · exact hb c hc
  · exact hs c hc

end EncloseHorse.Certificate.Totalizer
