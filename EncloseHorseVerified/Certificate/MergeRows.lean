import EncloseHorseVerified.Certificate.Totalizer

/-! Split counter merge normalization into independent row checkpoints. -/
namespace EncloseHorse.Certificate.Totalizer

def mergeRows (rows : List (Nat × Clause)) (right : List Lit) (outputs : List Nat) : CNF :=
  rows.flatMap fun p =>
    (thresholds right).flatMap fun q =>
      if h : 0 < p.1 + q.1 ∧ p.1 + q.1 ≤ outputs.length then
        [p.2 ++ q.2 ++ [(outputs[p.1 + q.1 - 1]'(by omega), true)]]
      else []

theorem mergeClauses_eq_mergeRows (left right : List Lit) (outputs : List Nat) :
    mergeClauses left right outputs = mergeRows (thresholds left) right outputs := rfl

theorem mergeRows_append (xs ys : List (Nat × Clause)) (right : List Lit)
    (outputs : List Nat) :
    mergeRows (xs ++ ys) right outputs =
      mergeRows xs right outputs ++ mergeRows ys right outputs := by
  exact List.flatMap_append

end EncloseHorse.Certificate.Totalizer
