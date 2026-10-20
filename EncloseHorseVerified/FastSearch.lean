import Std

/-!
# Verified branch-and-bound

The engine evaluates states on demand. It never constructs an exhaustive list of
wall subsets. The region, bound, split-coverage and termination obligations are
proved for the concrete game in `FastSolver.lean`; heuristic pivot selection is
allowed to change the search order without changing correctness.
-/
namespace EncloseHorse.BranchBound

def Dominates {α : Type} (score : α → Int) (out : Option α) (x : α) : Prop :=
  ∃ y, out = some y ∧ score x ≤ score y

def Keeps {α : Type} (score : α → Int) (old out : Option α) : Prop :=
  ∀ x, old = some x → Dominates score out x

def ValidOption {α : Type} (valid : α → Bool) (out : Option α) : Prop :=
  ∀ x, out = some x → valid x = true

theorem keeps_refl {α : Type} (score : α → Int) (out : Option α) : Keeps score out out :=
  fun x hx => ⟨x, hx, Int.le_refl _⟩

theorem dominates_of_keeps {α : Type} {score : α → Int} {old out : Option α} {x : α}
    (h : Keeps score old out) (hx : Dominates score old x) : Dominates score out x := by
  obtain ⟨y, hy, hxy⟩ := hx
  obtain ⟨z, hz, hyz⟩ := h y hy
  exact ⟨z, hz, Int.le_trans hxy hyz⟩

theorem keeps_trans {α : Type} {score : α → Int} {a b c : Option α}
    (hab : Keeps score a b) (hbc : Keeps score b c) : Keeps score a c :=
  fun x hx => dominates_of_keeps hbc (hab x hx)

def insert {α : Type} (score : α → Int) (x : α) : Option α → Option α
  | none => some x
  | some y => some (if score y ≤ score x then x else y)

theorem insert_spec {α : Type} (valid : α → Bool) (score : α → Int)
    (x : α) (old : Option α) (hx : valid x = true) (ho : ValidOption valid old) :
    ValidOption valid (insert score x old) ∧
      Keeps score old (insert score x old) ∧ Dominates score (insert score x old) x := by
  cases old with
  | none =>
    constructor
    · intro y hy; simpa [insert] using hy ▸ hx
    · constructor
      · intro y hy; contradiction
      · exact ⟨x, rfl, Int.le_refl _⟩
  | some y =>
    by_cases hxy : score y ≤ score x
    · simp only [insert, if_pos hxy]
      refine ⟨?_, ?_, x, rfl, Int.le_refl _⟩
      · intro z hz; cases hz; exact hx
      · intro z hz; cases hz; exact ⟨x, rfl, hxy⟩
    · simp only [insert, if_neg hxy]
      refine ⟨ho, keeps_refl score (some y), y, rfl, ?_⟩
      exact Int.le_of_lt (Int.lt_of_not_ge hxy)

def consider {α : Type} (valid : α → Bool) (score : α → Int)
    (x : α) (old : Option α) : Option α :=
  if valid x then insert score x old else old

theorem consider_spec {α : Type} (valid : α → Bool) (score : α → Int)
    (x : α) (old : Option α) (ho : ValidOption valid old) :
    ValidOption valid (consider valid score x old) ∧
      Keeps score old (consider valid score x old) ∧
      (valid x = true → Dominates score (consider valid score x old) x) := by
  by_cases hx : valid x = true
  · simpa only [consider, hx, Bool.true_eq, ↓reduceIte] using
      (insert_spec valid score x old hx ho)
  · simp only [consider, hx, ↓reduceIte]
    exact ⟨ho, keeps_refl score old, fun h => False.elim (hx h)⟩

/-- Every obligation refers to the game's independent validity and score. -/
structure Problem (State World : Type) where
  valid : World → Bool
  score : World → Int
  candidate : State → World
  upper : State → Int
  split : State → Option (State × State)
  rank : State → Nat
  region : State → World → Prop
  bound_sound : ∀ s w, region s w → valid w = true → score w ≤ upper s
  split_cover : ∀ s l r, split s = some (l, r) → ∀ w,
    region s w → valid w = true → region l w ∨ region r w
  split_rank : ∀ s l r, split s = some (l, r) → rank l < rank s ∧ rank r < rank s
  leaf_cover : ∀ s, split s = none → ∀ w, region s w → valid w = true →
    valid (candidate s) = true ∧ score w ≤ score (candidate s)

def prunable {α : Type} (score : α → Int) (bound : Int) : Option α → Bool
  | none => false
  | some w => decide (bound ≤ score w)

/-- An incumbent at least as good as a sound bound subsumes the entire region. -/
theorem prunable_spec {State World : Type} (p : Problem State World)
    (s : State) (old : Option World) (h : prunable p.score (p.upper s) old = true) :
    ∀ w, p.region s w → p.valid w = true → Dominates p.score old w := by
  cases old with
  | none => simp [prunable] at h
  | some x =>
    have hb : p.upper s ≤ p.score x := by simpa [prunable] using h
    intro w hw hv
    exact ⟨x, rfl, Int.le_trans (p.bound_sound s w hw hv) hb⟩

/-- Two recursive calls explore only branches whose bounds can improve the incumbent. -/
def search {State World : Type} (p : Problem State World) :
    Nat → State → Option World → Option World
  | 0, s, old => consider p.valid p.score (p.candidate s) old
  | n + 1, s, old =>
    if prunable p.score (p.upper s) old then old
    else
      let current := consider p.valid p.score (p.candidate s) old
      match p.split s with
      | none => current
      | some (l, r) => search p n r (search p n l current)

/-- The result is valid, preserves the incumbent, and dominates every valid world
in the state region. The pruning proof works for arbitrary signed scores. -/
theorem search_spec {State World : Type} (p : Problem State World)
    (n : Nat) (s : State) (old : Option World) (hr : p.rank s ≤ n)
    (ho : ValidOption p.valid old) :
    ValidOption p.valid (search p n s old) ∧
      Keeps p.score old (search p n s old) ∧
      ∀ w, p.region s w → p.valid w = true → Dominates p.score (search p n s old) w := by
  induction n generalizing s old with
  | zero =>
    have hs : p.split s = none := by
      cases hh : p.split s with
      | none => rfl
      | some pair =>
        obtain ⟨l, r⟩ := pair
        have hd := (p.split_rank s l r hh).1
        omega
    have hc := consider_spec p.valid p.score (p.candidate s) old ho
    refine ⟨hc.1, hc.2.1, ?_⟩
    intro w hw hv
    have hl := p.leaf_cover s hs w hw hv
    obtain ⟨x, hx, hcx⟩ := hc.2.2 hl.1
    exact ⟨x, hx, Int.le_trans hl.2 hcx⟩
  | succ n ih =>
    simp only [search]
    split
    · rename_i hp
      exact ⟨ho, keeps_refl p.score old, prunable_spec p s old hp⟩
    · have hc := consider_spec p.valid p.score (p.candidate s) old ho
      cases hs : p.split s with
      | none =>
        simp only [hs]
        refine ⟨hc.1, hc.2.1, ?_⟩
        intro w hw hv
        have hl := p.leaf_cover s hs w hw hv
        obtain ⟨x, hx, hcx⟩ := hc.2.2 hl.1
        exact ⟨x, hx, Int.le_trans hl.2 hcx⟩
      | some pair =>
        obtain ⟨l, r⟩ := pair
        simp only [hs]
        have hd := p.split_rank s l r hs
        have hl := ih l (consider p.valid p.score (p.candidate s) old) (by omega) hc.1
        have hright := ih r (search p n l (consider p.valid p.score (p.candidate s) old))
          (by omega) hl.1
        refine ⟨hright.1, keeps_trans hc.2.1 (keeps_trans hl.2.1 hright.2.1), ?_⟩
        intro w hw hv
        rcases p.split_cover s l r hs w hw hv with hwl | hwr
        · exact dominates_of_keeps hright.2.1 (hl.2.2 w hwl hv)
        · exact hright.2.2 w hwr hv

end EncloseHorse.BranchBound
