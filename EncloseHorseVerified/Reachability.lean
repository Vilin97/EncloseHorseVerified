import Std

namespace EncloseHorse.Reachability

/-- A finite, executable flood fill. The remaining list strictly shrinks. -/
def takeFirst (p : Nat → Bool) : List Nat → Option (Nat × List Nat)
  | [] => none
  | x :: xs =>
    if p x then some (x, xs)
    else (takeFirst p xs).map fun (y, ys) => (y, x :: ys)

private theorem takeFirst_length {p : Nat → Bool} {xs : List Nat} {x : Nat} {rest : List Nat}
    (h : takeFirst p xs = some (x, rest)) : rest.length < xs.length := by
  induction xs generalizing x rest with
  | nil => simp [takeFirst] at h
  | cons a xs ih =>
    simp only [takeFirst] at h
    split at h
    · cases h; simp
    · cases he : takeFirst p xs with
      | none => simp [he] at h
      | some pair =>
        rcases pair with ⟨y, ys⟩
        simp [he] at h
        rcases h with ⟨rfl, rfl⟩
        simpa using Nat.succ_lt_succ (ih he)

private theorem takeFirst_spec {p : Nat → Bool} {xs : List Nat} {x : Nat} {rest : List Nat}
    (h : takeFirst p xs = some (x, rest)) :
    p x = true ∧ (∀ v, v ∈ xs ↔ v = x ∨ v ∈ rest) := by
  induction xs generalizing x rest with
  | nil => simp [takeFirst] at h
  | cons a xs ih =>
    simp only [takeFirst] at h
    split at h
    · rename_i hp
      cases h
      exact ⟨hp, by simp⟩
    · cases he : takeFirst p xs with
      | none => simp [he] at h
      | some pair =>
        rcases pair with ⟨y, ys⟩
        simp [he] at h
        rcases h with ⟨rfl, rfl⟩
        obtain ⟨hp, hs⟩ := ih he
        exact ⟨hp, fun v => by simp only [List.mem_cons, hs]; exact or_left_comm⟩

private theorem takeFirst_none {p : Nat → Bool} {xs : List Nat}
    (h : takeFirst p xs = none) : ∀ v ∈ xs, p v = false := by
  induction xs with
  | nil => simp
  | cons a xs ih =>
    simp only [takeFirst] at h
    split at h
    · contradiction
    · rename_i hp
      have he : takeFirst p xs = none := by
        cases hh : takeFirst p xs <;> simp_all
      intro v hv
      rcases List.mem_cons.mp hv with rfl | hv
      · simpa using hp
      · exact ih he v hv

def adjacentFrom (edge : Nat → Nat → Bool) (seen : List Nat) (v : Nat) : Bool :=
  seen.any fun u => edge u v

def saturate (edge : Nat → Nat → Bool) (todo seen : List Nat) : List Nat :=
  match _h : takeFirst (adjacentFrom edge seen) todo with
  | none => seen
  | some (x, rest) => saturate edge rest (x :: seen)
termination_by todo.length
decreasing_by exact takeFirst_length _h

/-- Structurally recursive form of flood fill, so concrete results reduce in the kernel. -/
def saturateFuel (edge : Nat → Nat → Bool) : Nat → List Nat → List Nat → List Nat
  | 0, _, seen => seen
  | fuel + 1, todo, seen =>
    match takeFirst (adjacentFrom edge seen) todo with
    | none => seen
    | some (x, rest) => saturateFuel edge fuel rest (x :: seen)

private theorem saturateFuel_eq (edge : Nat → Nat → Bool) (fuel : Nat)
    (todo seen : List Nat) (h : todo.length ≤ fuel) :
    saturateFuel edge fuel todo seen = saturate edge todo seen := by
  induction fuel generalizing todo seen with
  | zero =>
    have ht : todo = [] := List.length_eq_zero_iff.mp (Nat.eq_zero_of_le_zero h)
    subst todo
    simp [saturateFuel, saturate, takeFirst]
  | succ fuel ih =>
    cases he : takeFirst (adjacentFrom edge seen) todo with
    | none =>
      rw [saturate]
      simp only [saturateFuel, he]
      split <;> simp_all
    | some pair =>
      rcases pair with ⟨x, rest⟩
      simp only [saturateFuel, he]
      have hr := takeFirst_length he
      rw [saturate]
      split <;> simp_all
      apply ih
      omega

/-- All vertices reachable from `start`, inside the finite universe `nodes`. -/
def closure (nodes : List Nat) (edge : Nat → Nat → Bool) (start : Nat) : List Nat :=
  saturateFuel edge nodes.length (nodes.filter fun v => v != start) [start]

private theorem closure_eq_saturate (nodes : List Nat) (edge : Nat → Nat → Bool)
    (start : Nat) : closure nodes edge start =
      saturate edge (nodes.filter fun v => v != start) [start] :=
  saturateFuel_eq edge nodes.length _ _ (List.length_filter_le _ _)

/-- Unbounded graph reachability, independent of the flood-fill implementation. -/
inductive Path (edge : Nat → Nat → Bool) (start : Nat) : Nat → Prop
  | refl : Path edge start start
  | step {u v} : Path edge start u → edge u v = true → Path edge start v

private theorem saturate_seen (edge : Nat → Nat → Bool) (todo seen : List Nat) :
    ∀ v ∈ seen, v ∈ saturate edge todo seen := by
  fun_induction saturate edge todo seen with
  | case1 todo seen h => simp_all
  | case2 todo seen x rest h ih =>
    intro v hv
    exact ih v (List.mem_cons_of_mem x hv)

private theorem saturate_sound (edge : Nat → Nat → Bool) (start : Nat)
    (todo seen : List Nat) (hs : ∀ v ∈ seen, Path edge start v) :
    ∀ v ∈ saturate edge todo seen, Path edge start v := by
  fun_induction saturate edge todo seen with
  | case1 todo seen h => exact hs
  | case2 todo seen x rest h ih =>
    apply ih
    intro v hv
    rcases List.mem_cons.mp hv with rfl | hv
    · have hx := (takeFirst_spec h).1
      obtain ⟨u, hu, he⟩ := List.any_eq_true.mp hx
      exact .step (hs u hu) he
    · exact hs v hv

private theorem saturate_closed (edge : Nat → Nat → Bool) (nodes todo seen : List Nat)
    (cover : ∀ v ∈ nodes, v ∈ todo ∨ v ∈ seen) :
    ∀ u ∈ saturate edge todo seen, ∀ v ∈ nodes,
      edge u v = true → v ∈ saturate edge todo seen := by
  fun_induction saturate edge todo seen with
  | case1 todo seen h =>
    intro u hu v hv he
    rcases cover v hv with ht | hs
    · have hn := takeFirst_none h v ht
      have hy : adjacentFrom edge seen v = true := List.any_eq_true.mpr ⟨u, hu, he⟩
      rw [hn] at hy
      contradiction
    · exact hs
  | case2 todo seen x rest h ih =>
    apply ih
    intro v hv
    rcases cover v hv with ht | hs
    · rcases (takeFirst_spec h).2 v |>.mp ht with rfl | ht
      · exact Or.inr List.mem_cons_self
      · exact Or.inl ht
    · exact Or.inr (List.mem_cons_of_mem x hs)

private theorem takeFirst_nodup {p : Nat → Bool} {xs : List Nat} {x : Nat} {rest : List Nat}
    (h : takeFirst p xs = some (x, rest)) (hn : xs.Nodup) :
    rest.Nodup ∧ x ∉ rest := by
  induction xs generalizing x rest with
  | nil => simp [takeFirst] at h
  | cons a xs ih =>
    obtain ⟨ha, hn⟩ := List.nodup_cons.mp hn
    simp only [takeFirst] at h
    split at h
    · cases h; exact ⟨hn, ha⟩
    · cases he : takeFirst p xs with
      | none => simp [he] at h
      | some pair =>
        rcases pair with ⟨y, ys⟩
        simp [he] at h
        rcases h with ⟨rfl, rfl⟩
        obtain ⟨hys, hy⟩ := ih he hn
        have hs := (takeFirst_spec he).2
        have hay : a ∉ ys := fun hm => ha ((hs a).mpr (Or.inr hm))
        have hya : y ≠ a := by
          intro hya
          subst y
          exact ha ((hs a).mpr (Or.inl rfl))
        exact ⟨List.nodup_cons.mpr ⟨hay, hys⟩, by simp [hya, hy]⟩

private theorem saturate_nodup (edge : Nat → Nat → Bool) (todo seen : List Nat)
    (ht : todo.Nodup) (hs : seen.Nodup) (hd : ∀ v ∈ todo, v ∉ seen) :
    (saturate edge todo seen).Nodup := by
  fun_induction saturate edge todo seen with
  | case1 todo seen h => exact hs
  | case2 todo seen x rest h ih =>
    obtain ⟨hr, hx⟩ := takeFirst_nodup h ht
    have hspec := (takeFirst_spec h).2
    have hxt : x ∈ todo := (hspec x).mpr (Or.inl rfl)
    apply ih hr (List.nodup_cons.mpr ⟨hd x hxt, hs⟩)
    intro v hv
    have hvt : v ∈ todo := (hspec v).mpr (Or.inr hv)
    have hvx : v ≠ x := by intro hvx; subst v; exact hx hv
    simp only [List.mem_cons, not_or]
    exact ⟨hvx, hd v hvt⟩

/-- Flood fill counts every reachable cell once when its universe has no duplicates. -/
theorem closure_nodup (nodes : List Nat) (edge : Nat → Nat → Bool) (start : Nat)
    (hn : nodes.Nodup) : (closure nodes edge start).Nodup := by
  rw [closure_eq_saturate]
  apply saturate_nodup
  · exact List.Pairwise.filter _ hn
  · simp
  · intro v hv
    have hne : v ≠ start := by simpa using (List.mem_filter.mp hv).2
    simpa using hne

/-- The computed flood fill equals unbounded graph reachability. -/
theorem mem_closure_iff (nodes : List Nat) (edge : Nat → Nat → Bool) (start : Nat)
    (target_domain : ∀ u v, edge u v = true → v ∈ nodes) (v : Nat) :
    v ∈ closure nodes edge start ↔ Path edge start v := by
  rw [closure_eq_saturate]
  constructor
  · change ∀ (_ : v ∈ saturate edge (nodes.filter fun x => x != start) [start]), Path edge start v
    exact saturate_sound edge start (nodes.filter fun x => x != start) [start] (by
      intro x hx
      have hx' : x = start := by simpa using hx
      subst x
      exact .refl) v
  · intro hp
    induction hp with
    | refl => exact saturate_seen edge _ _ start (by simp)
    | @step u v hp he ih =>
      apply saturate_closed edge nodes _ _ _ u ih v (target_domain u v he) he
      intro x hx
      by_cases hs : x = start
      · simp [hs]
      · exact Or.inl (List.mem_filter.mpr ⟨hx, by simp [hs]⟩)

end EncloseHorse.Reachability
