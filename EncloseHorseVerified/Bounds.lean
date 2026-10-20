import EncloseHorseVerified.Game

/-!
# Certified bounds for exact search

Adding walls can only remove reachable cells. At a search node, all completions
therefore lie between the reachable components obtained by blocking the mandatory
walls and by blocking every still-available wall. Positive points from the larger
component and negative points forced by the smaller component give a sound bound.
-/
namespace EncloseHorse

/-- Adding walls cannot open a cell. -/
theorem Board.openCell_antitone (b : Board) {small large : Placement}
    (hs : small ⊆ large) (v : Nat) (h : b.openCell large v = true) :
    b.openCell small v = true := by
  simp only [Board.openCell, Bool.and_eq_true] at h ⊢
  refine ⟨h.1, ?_⟩
  have hn : v ∉ large := by
    intro hv
    have hc : large.contains v = true := List.contains_iff_mem.mpr hv
    simp [hc] at h
  have hn' : v ∉ small := fun hv => hn (hs hv)
  simp [List.contains_eq_mem, hn']

/-- Every move possible with more walls is possible with fewer walls. -/
theorem Board.edge_antitone (b : Board) {small large : Placement}
    (hs : small ⊆ large) (u v : Nat) (h : b.edge large u v = true) :
    b.edge small u v = true := by
  simp only [Board.edge, Bool.and_eq_true] at h ⊢
  exact ⟨⟨b.openCell_antitone hs u h.1.1,
    b.openCell_antitone hs v h.1.2⟩, h.2⟩

/-- Adding walls can only shrink the horse's complete reachable component. -/
theorem reach_antitone (b : Board) {small large : Placement}
    (hs : small ⊆ large) : reach b large ⊆ reach b small := by
  intro v hv
  apply (mem_reach_iff b small v).mpr
  have hp := (mem_reach_iff b large v).mp hv
  induction hp with
  | refl => exact .refl
  | @step u v hp he ih => exact .step ih (b.edge_antitone hs u v he)

/-- Once enclosed, the horse stays enclosed after additional walls are placed. -/
theorem enclosed_monotone (b : Board) {small large : Placement}
    (hs : small ⊆ large) (he : enclosed b small = true) :
    enclosed b large = true := by
  obtain ⟨hh, he⟩ := (enclosed_iff b small).mp he
  apply (enclosed_iff b large).mpr
  refine ⟨hh, ?_⟩
  intro v hp
  exact he v ((mem_reach_iff b small v).mp
    (reach_antitone b hs ((mem_reach_iff b large v).mpr hp)))

/-- If even blocking every allowed cell leaves an escape, no completion can enclose. -/
theorem no_enclosure_of_maximal (b : Board) (allowed walls : Placement)
    (hs : walls ⊆ allowed) (he : enclosed b allowed = false) :
    enclosed b walls ≠ true := by
  intro hw
  have hh := enclosed_monotone b hs hw
  rw [he] at hh
  contradiction

/-- Sum the positive contributions, omitting all penalties. -/
def positiveValue (b : Board) (cells : List Nat) : Int :=
  (cells.map (fun i => max (b.tileAt i).points 0)).sum

/-- The magnitude of all negative contributions in a cell list. -/
def negativeCost (b : Board) (cells : List Nat) : Int :=
  (cells.map (fun i => max (-(b.tileAt i).points) 0)).sum

private theorem positive_sum_nonneg (f : Nat → Int) (xs : List Nat) :
    0 ≤ (xs.map (fun i => max (f i) 0)).sum := by
  induction xs with
  | nil => simp
  | cons a xs ih =>
    simp only [List.map_cons, List.sum_cons]
    have ha := Int.le_max_right (f a) 0
    omega

private theorem positive_sum_erase (f : Nat → Int) (ys : List Nat) (a : Nat)
    (ha : a ∈ ys) :
    (ys.map (fun i => max (f i) 0)).sum =
      max (f a) 0 + ((ys.erase a).map (fun i => max (f i) 0)).sum := by
  induction ys with
  | nil => simp at ha
  | cons y ys ih =>
    by_cases hay : a = y
    · subst a
      simp
    · have ha' : a ∈ ys := by
        rcases List.mem_cons.mp ha with h | h
        · exact False.elim (hay h)
        · exact h
      rw [List.erase_cons_tail (by simpa using Ne.symm hay)]
      simp only [List.map_cons, List.sum_cons]
      have hh := ih ha'
      omega

/-- A duplicate-free sublist of physical cells cannot exceed the positive value
of any containing cell set, even when its original weights are signed. -/
private theorem sum_le_positive_of_subset (f : Nat → Int)
    (xs ys : List Nat) (hn : xs.Nodup) (hs : xs ⊆ ys) :
    (xs.map f).sum ≤ (ys.map (fun i => max (f i) 0)).sum := by
  induction xs generalizing ys with
  | nil => simpa using positive_sum_nonneg f ys
  | cons a xs ih =>
    obtain ⟨ha, hn⟩ := List.nodup_cons.mp hn
    have hay : a ∈ ys := hs List.mem_cons_self
    have hsub : xs ⊆ ys.erase a := by
      intro i hi
      have hia : i ≠ a := by
        intro hh
        subst i
        exact ha hi
      exact (List.mem_erase_of_ne hia).mpr (hs (List.mem_cons_of_mem a hi))
    have hh := ih (ys.erase a) hn hsub
    have he := positive_sum_erase f ys a hay
    have hw := Int.le_max_left (f a) 0
    simp only [List.map_cons, List.sum_cons]
    omega

private theorem positive_sum_mono (f : Nat → Int) (xs ys : List Nat)
    (hn : xs.Nodup) (hs : xs ⊆ ys) :
    (xs.map (fun i => max (f i) 0)).sum ≤
      (ys.map (fun i => max (f i) 0)).sum := by
  have hh := sum_le_positive_of_subset (fun i => max (f i) 0) xs ys hn hs
  have hm : (fun i => max (max (f i) 0) 0) = (fun i => max (f i) 0) := by
    funext i
    exact Int.max_eq_left (Int.le_max_right (f i) 0)
  simpa only [hm] using hh

private theorem signed_sum_decomposition (f : Nat → Int) (xs : List Nat) :
    (xs.map f).sum =
      (xs.map (fun i => max (f i) 0)).sum -
      (xs.map (fun i => max (-(f i)) 0)).sum := by
  induction xs with
  | nil => simp
  | cons a xs ih =>
    simp only [List.map_cons, List.sum_cons]
    have ha : f a = max (f a) 0 - max (-(f a)) 0 := by
      simp only [Int.max_def]
      split <;> split <;> omega
    omega

/-- An optimistic score that ignores penalties and all walls yet to be placed. -/
def upperBound (b : Board) (mandatory : Placement) : Int :=
  positiveValue b (reach b mandatory)

/-- A bound for every completion, including an escaped placement's zero score. -/
theorem score_le_upperBound (b : Board) (mandatory walls : Placement)
    (hs : mandatory ⊆ walls) : score b walls ≤ upperBound b mandatory := by
  unfold score upperBound positiveValue
  split
  · exact sum_le_positive_of_subset (fun i => (b.tileAt i).points)
      (reach b walls) (reach b mandatory) (reach_nodup b walls) (reach_antitone b hs)
  · exact positive_sum_nonneg (fun i => (b.tileAt i).points) (reach b mandatory)

theorem score_append_le_upperBound (b : Board) (mandatory extra : Placement) :
    score b (mandatory ++ extra) ≤ upperBound b mandatory := by
  apply score_le_upperBound
  intro i hi
  exact List.mem_append_left extra hi

/-- A tighter signed bound: retain every positive point still reachable, and
subtract penalties that remain unavoidable even if every allowed wall is built. -/
def completionBound (b : Board) (mandatory allowed : Placement) : Int :=
  positiveValue b (reach b mandatory) - negativeCost b (reach b allowed)

/-- Every actual enclosure between the mandatory and maximal wall sets is bounded
by the optimistic component minus its unavoidable negative contributions. -/
theorem score_le_completionBound (b : Board) (mandatory allowed walls : Placement)
    (hlo : mandatory ⊆ walls) (hhi : walls ⊆ allowed)
    (he : enclosed b walls = true) :
    score b walls ≤ completionBound b mandatory allowed := by
  have hp := positive_sum_mono (fun i => (b.tileAt i).points)
    (reach b walls) (reach b mandatory) (reach_nodup b walls) (reach_antitone b hlo)
  have hn := positive_sum_mono (fun i => -(b.tileAt i).points)
    (reach b allowed) (reach b walls) (reach_nodup b allowed) (reach_antitone b hhi)
  have hd := signed_sum_decomposition (fun i => (b.tileAt i).points) (reach b walls)
  simp only [score, he, ↓reduceIte, completionBound, positiveValue, negativeCost]
  omega

end EncloseHorse
