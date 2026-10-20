import Std

/-!
# Exhaustive finite optimization

`choices xs k` enumerates every subsequence of `xs` containing at most `k`
elements. Its specification uses the independent inductive `List.Sublist`
relation. `bestBy` retains an actual maximum, including when every score is
negative; an empty search has no answer.
-/
namespace EncloseHorse

/-- All subsequences of length at most the budget, including the empty one. -/
def choices {α : Type} : List α → Nat → List (List α)
  | [], _ => [[]]
  | _ :: _, 0 => [[]]
  | a :: xs, k + 1 => choices xs (k + 1) ++ (choices xs k).map (a :: ·)

/-- The enumerator is sound and complete, without assumptions about the input. -/
theorem mem_choices {α : Type} (xs : List α) (k : Nat) (ys : List α) :
    ys ∈ choices xs k ↔ ys.Sublist xs ∧ ys.length ≤ k := by
  induction xs generalizing k ys with
  | nil =>
    simp only [choices, List.mem_cons, List.not_mem_nil, or_false, List.sublist_nil]
    constructor
    · intro h; subst ys; simp
    · exact And.left
  | cons a xs ih =>
    cases k with
    | zero =>
      simp only [choices, List.mem_cons, List.not_mem_nil, or_false]
      constructor
      · intro h; subst ys; simp
      · rintro ⟨_, h⟩
        exact List.length_eq_zero_iff.mp (Nat.eq_zero_of_le_zero h)
    | succ k =>
      simp only [choices, List.mem_append, List.mem_map, ih]
      constructor
      · rintro (⟨hs, hl⟩ | ⟨zs, ⟨hs, hl⟩, rfl⟩)
        · exact ⟨hs.cons _, hl⟩
        · exact ⟨hs.cons_cons _, by simpa using Nat.succ_le_succ hl⟩
      · rintro ⟨hs, hl⟩
        rcases List.sublist_cons_iff.mp hs with ht | ⟨zs, heq, hzs⟩
        · exact Or.inl ⟨ht, hl⟩
        · subst ys
          exact Or.inr ⟨zs, ⟨hzs, by simpa using hl⟩, rfl⟩

/-- A deterministic maximum selector; ties favor the earlier candidate. -/
def bestBy {α : Type} (score : α → Int) : List α → Option α
  | [] => none
  | x :: xs =>
    match bestBy score xs with
    | none => some x
    | some y => some (if score y ≤ score x then x else y)

/-- Every returned answer belongs to the input and dominates every input score. -/
theorem bestBy_spec {α : Type} (score : α → Int) (xs : List α) (answer : α)
    (h : bestBy score xs = some answer) :
    answer ∈ xs ∧ ∀ x ∈ xs, score x ≤ score answer := by
  induction xs generalizing answer with
  | nil => simp [bestBy] at h
  | cons x xs ih =>
    cases hb : bestBy score xs with
    | none =>
      simp only [bestBy, hb, Option.some.injEq] at h
      subst answer
      have hx : xs = [] := by
        cases xs with
        | nil => rfl
        | cons z zs =>
          simp only [bestBy] at hb
          split at hb <;> simp_all
      subst xs
      simp
    | some y =>
      have hy := ih y hb
      simp only [bestBy, hb, Option.some.injEq] at h
      split at h
      · rename_i hxy
        subst answer
        constructor
        · simp
        · intro z hz
          rcases List.mem_cons.mp hz with rfl | hz
          · exact Int.le_refl _
          · exact Int.le_trans (hy.2 z hz) hxy
      · rename_i hxy
        subst answer
        constructor
        · exact List.mem_cons_of_mem _ hy.1
        · intro z hz
          rcases List.mem_cons.mp hz with rfl | hz
          · exact Int.le_of_lt (Int.lt_of_not_ge hxy)
          · exact hy.2 z hz

/-- Failure means precisely that the search space is empty. -/
theorem bestBy_eq_none_iff {α : Type} (score : α → Int) (xs : List α) :
    bestBy score xs = none ↔ xs = [] := by
  cases xs with
  | nil => simp [bestBy]
  | cons x xs =>
    simp only [bestBy]
    cases bestBy score xs <;> simp

end EncloseHorse
