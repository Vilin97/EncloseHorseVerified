import EncloseHorseVerified.FastSolver

/-!
# Externally generated branch-and-bound certificates

The certificate specifies only which grass cell to split on and which proved
leaf rule to check. Bounds, scores, legality and reachability are recomputed in
Lean. Neither an external optimizer's status nor an external numeric bound is
trusted. A supplied finite tree can be checked without replaying pivot search.
-/

namespace EncloseHorse.Certificate.BranchTree

/-- A finite proof tree. Children respectively build and forbid the split wall. -/
inductive Cert where
  | bound
  | dead
  | budget
  | done
  | split (cell : Nat) (yes no : Cert)
  deriving Repr, Inhabited

abbrev State := FastState
abbrev Region := FastSolver.Region

def build (s : State) (v : Nat) : State :=
  ⟨v :: s.placed, s.remaining.erase v⟩

def forbid (s : State) (v : Nat) : State :=
  ⟨s.placed, s.remaining.erase v⟩

/-- At a terminal region, an invalid candidate means there is no legal completion. -/
def terminalOk (b : Board) (limit : Int) (s : State) : Bool :=
  let walls := canonicalize b s.placed
  if admissible b walls then decide (score b walls ≤ limit) else true

/-- Check a supplied tree against a region and a fixed incumbent score. -/
def checkAt (b : Board) (limit : Int) (s : State) : Cert → Bool
  | .bound => decide (completionBound b s.placed (s.placed ++ s.remaining) ≤ limit)
  | .dead => decide (b.budget < (canonicalize b s.placed).length) ||
      !enclosed b (s.placed ++ s.remaining)
  | .budget => decide (b.budget ≤ (canonicalize b s.placed).length) && terminalOk b limit s
  | .done => decide (s.remaining = []) && terminalOk b limit s
  | .split v yes no =>
      if v ∈ s.remaining then
        checkAt b limit (build s v) yes && checkAt b limit (forbid s v) no
      else false

private theorem canonical_admissible (b : Board) (s : State) (walls : Placement)
    (hw : Region s walls) (ha : admissible b walls)
    (hs : SameWalls (canonicalize b s.placed) walls) :
    admissible b (canonicalize b s.placed) := by
  refine ⟨⟨canonicalize_sublist b s.placed, ?_⟩, ?_⟩
  · exact Nat.le_trans (canonicalize_length_le_of_subset b s.placed walls hw.1) ha.1.2
  · exact (enclosed_sameWalls b hs).trans ha.2

private theorem terminalOk_sound (b : Board) (limit : Int) (s : State)
    (walls : Placement) (hw : Region s walls) (ha : admissible b walls)
    (hs : SameWalls (canonicalize b s.placed) walls)
    (ht : terminalOk b limit s = true) : score b walls ≤ limit := by
  have hc := canonical_admissible b s walls hw ha hs
  simp only [terminalOk, ite_eq_left hc, decide_eq_true_eq] at ht
  exact Int.le_trans (Int.le_of_eq (score_sameWalls b hs).symm) ht

/-- Splitting on any supplied cell covers both possibilities for every placement. -/
theorem split_cover (s : State) (v : Nat) (walls : Placement)
    (hw : Region s walls) : Region (build s v) walls ∨ Region (forbid s v) walls := by
  by_cases hv : v ∈ walls
  · left
    constructor
    · intro i hi
      rcases List.mem_cons.mp hi with rfl | hi
      · exact hv
      · exact hw.1 hi
    · intro i hi
      rcases List.mem_append.mp (hw.2 hi) with hi | hi
      · exact List.mem_append_left _ (List.mem_cons_of_mem v hi)
      · by_cases hiv : i = v
        · subst i; exact List.mem_append_left _ List.mem_cons_self
        · exact List.mem_append_right _ ((List.mem_erase_of_ne hiv).mpr hi)
  · right
    refine ⟨hw.1, ?_⟩
    intro i hiw
    rcases List.mem_append.mp (hw.2 hiw) with hi | hi
    · exact List.mem_append_left _ hi
    · have hiv : i ≠ v := by intro he; subst i; exact hv hiw
      exact List.mem_append_right _ ((List.mem_erase_of_ne hiv).mpr hi)

/-- Every accepted supplied tree bounds every legal enclosure in its region. -/
theorem checkAt_sound (b : Board) (limit : Int) (s : State) (cert : Cert)
    (h : checkAt b limit s cert = true) :
    ∀ walls, Region s walls → admissible b walls → score b walls ≤ limit := by
  induction cert generalizing s with
  | bound =>
    intro walls hw ha
    have hb : completionBound b s.placed (s.placed ++ s.remaining) ≤ limit := by
      simpa only [checkAt, decide_eq_true_eq] using h
    exact Int.le_trans (score_le_completionBound b s.placed
      (s.placed ++ s.remaining) walls hw.1 hw.2 ha.2) hb
  | dead =>
    intro walls hw ha
    simp only [checkAt, Bool.or_eq_true, decide_eq_true_eq, Bool.not_eq_true'] at h
    rcases h with hb | he
    · exact False.elim (not_admissible_of_mandatory_over_budget b s.placed walls hw.1 hb ha)
    · exact False.elim (no_enclosure_of_maximal b (s.placed ++ s.remaining) walls hw.2 he ha.2)
  | budget =>
    intro walls hw ha
    simp only [checkAt, Bool.and_eq_true, decide_eq_true_eq] at h
    have hs := sameWalls_of_mandatory_budget_full b s.placed walls hw.1 ha h.1
    exact terminalOk_sound b limit s walls hw ha hs h.2
  | done =>
    intro walls hw ha
    simp only [checkAt, Bool.and_eq_true, decide_eq_true_eq] at h
    have hhi : walls ⊆ s.placed := by simpa only [h.1, List.append_nil] using hw.2
    have hc := canonicalize_sameWalls b s.placed
      (fun i hi => ha.1.1.subset (hw.1 hi))
    have hs : SameWalls (canonicalize b s.placed) walls := by
      intro i
      exact (hc i).trans ⟨fun hi => hw.1 hi, fun hi => hhi hi⟩
    exact terminalOk_sound b limit s walls hw ha hs h.2
  | split v yes no ihYes ihNo =>
    simp only [checkAt] at h
    split at h
    · simp only [Bool.and_eq_true] at h
      intro walls hw ha
      rcases split_cover s v walls hw with hy | hn
      · exact ihYes (build s v) h.1 walls hy ha
      · exact ihNo (forbid s v) h.2 walls hn ha
    · contradiction

/-- A complete certificate also checks that the proposed incumbent is a legal enclosure. -/
def check (b : Board) (incumbent : Placement) (cert : Cert) : Bool :=
  decide (admissible b incumbent) &&
    checkAt b (score b incumbent) ⟨[], b.candidates⟩ cert

/-- Certificate acceptance proves global optimality against every legal enclosure. -/
theorem check_optimal (b : Board) (incumbent : Placement) (cert : Cert)
    (h : check b incumbent cert = true) : Optimal b incumbent := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at h
  refine ⟨h.1, ?_⟩
  intro walls ha
  apply checkAt_sound b (score b incumbent) ⟨[], b.candidates⟩ cert h.2 walls ?_ ha
  constructor
  · intro i hi; simp at hi
  · simpa using ha.1.1.subset

/-- Canonical storage does not restrict the claim to a particular wall-list order. -/
theorem check_optimal_physical (b : Board) (incumbent : Placement) (cert : Cert)
    (h : check b incumbent cert = true) : PhysicalOptimal b incumbent :=
  (check_optimal b incumbent cert h).physical

end EncloseHorse.Certificate.BranchTree
