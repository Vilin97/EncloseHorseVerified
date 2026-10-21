import EncloseHorseVerified.Reachability

/-! A supplied forest certifies paths without evaluating the flood fill. Every
parent must already be reached, and every edge is checked against the game. -/
namespace EncloseHorse.Certificate.PathForest

/-- Pairs are `(new cell, already reached parent)`. -/
def checkSteps (edge : Nat → Nat → Bool) : List (Nat × Nat) → List Nat → Bool
  | [], _ => true
  | (cell, parent) :: rest, seen =>
    seen.contains parent && edge parent cell && checkSteps edge rest (cell :: seen)

def check (edge : Nat → Nat → Bool) (horse : Nat) (steps : List (Nat × Nat)) : Bool :=
  checkSteps edge steps [horse]

theorem checkSteps_sound (edge : Nat → Nat → Bool) (horse : Nat)
    (steps : List (Nat × Nat)) (seen : List Nat)
    (hs : ∀ i ∈ seen, Reachability.Path edge horse i)
    (hc : checkSteps edge steps seen = true) :
    ∀ i ∈ steps.map Prod.fst ++ seen, Reachability.Path edge horse i := by
  induction steps generalizing seen with
  | nil => simpa only [List.map_nil, List.nil_append] using hs
  | cons step rest ih =>
    obtain ⟨cell, parent⟩ := step
    simp only [checkSteps, Bool.and_eq_true] at hc
    have hcell : Reachability.Path edge horse cell :=
      .step (hs parent (List.contains_iff_mem.mp hc.1.1)) hc.1.2
    have hh := ih (cell :: seen) (fun i hi => by
      rcases List.mem_cons.mp hi with rfl | hi
      · exact hcell
      · exact hs i hi) hc.2
    intro i hi
    simp only [List.map_cons, List.cons_append, List.mem_cons,
      List.mem_append] at hi
    rcases hi with rfl | hi | hi
    · exact hcell
    · exact hh i (List.mem_append_left _ hi)
    · exact hs i hi

theorem check_sound (edge : Nat → Nat → Bool) (horse : Nat)
    (steps : List (Nat × Nat)) (hc : check edge horse steps = true) :
    ∀ i ∈ steps.map Prod.fst ++ [horse], Reachability.Path edge horse i := by
  apply checkSteps_sound edge horse steps [horse] ?_ hc
  intro i hi
  have he : i = horse := List.mem_singleton.mp hi
  subst i
  exact .refl

end EncloseHorse.Certificate.PathForest
