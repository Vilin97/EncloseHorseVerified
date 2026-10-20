import EncloseHorseVerified.Solver
import EncloseHorseVerified.Bounds
import EncloseHorseVerified.FastSearch

/-!
# Practical exact solver

At each node the solver chooses a still-undecided grass cell on an escape path
(or on a path to a bee after enclosure), then explores building and forbidding
that wall. A signed reachability bound prunes dominated branches; blocking every
remaining cell detects branches that can never enclose. Pivot selection is only
a heuristic: the include/exclude coverage proof is independent of the path.
-/
namespace EncloseHorse

structure FastState where
  placed : Placement
  remaining : Placement
  deriving Repr, Inhabited

namespace FastSolver

/-- Queue BFS used only to guide branching. Its output is never a proof assumption. -/
private def pathLoop (b : Board) (walls : Placement) (goal : Nat → Bool) :
    Nat → List (Nat × List Nat) → List Nat → Option (List Nat)
  | 0, _, _ => none
  | _ + 1, [], _ => none
  | n + 1, (u, path) :: queue, seen =>
    if goal u then some path
    else
      let next := b.cells.filter (fun v => b.edge walls u v && !seen.contains v)
      pathLoop b walls goal n
        (queue ++ next.map (fun v => (v, v :: path))) (next ++ seen)

/-- An approximate shortest path; invalid or missing guidance falls back safely. -/
private def pathTo (b : Board) (walls : Placement) (goal : Nat → Bool) : Option (List Nat) :=
  pathLoop b walls goal (b.size + 1) [(b.horse, [b.horse])] [b.horse]

private def guidedPivot (b : Board) (s : FastState) : Option Nat :=
  let goal := if enclosed b s.placed then
      (fun v => decide ((b.tileAt v).points < 0))
    else b.onEdge
  match pathTo b s.placed goal with
  | none => none
  | some path =>
    let options := path.filter (fun v => s.remaining.contains v)
    -- Small degree cells tend to lie at narrow necks in the reachable region.
    options.foldl (fun best v =>
      match best with
      | none => some v
      | some w =>
        let dv := (b.cells.filter (b.edge s.placed v)).length
        let dw := (b.cells.filter (b.edge s.placed w)).length
        if dv < dw then some v else some w) none

/-- Heuristic suggestions are checked against the actual remaining candidates. -/
def pivot (b : Board) (s : FastState) : Option Nat :=
  match guidedPivot b s with
  | some v => if v ∈ s.remaining then some v else s.remaining.head?
  | none => s.remaining.head?

theorem pivot_mem (b : Board) (s : FastState) {v : Nat} (h : pivot b s = some v) :
    v ∈ s.remaining := by
  unfold pivot at h
  split at h
  · split at h
    · cases h; assumption
    · cases hh : s.remaining with
      | nil => simp [hh] at h
      | cons a rest => simp [hh] at h; subst v; simp [hh]
  · cases hh : s.remaining with
    | nil => simp [hh] at h
    | cons a rest => simp [hh] at h; subst v; simp [hh]

theorem pivot_none (b : Board) (s : FastState) (h : pivot b s = none) :
    s.remaining = [] := by
  unfold pivot at h
  split at h
  · split at h
    · contradiction
    · cases hh : s.remaining <;> simp_all
  · cases hh : s.remaining <;> simp_all

def candidate (b : Board) (s : FastState) : Placement := canonicalize b s.placed

def dead (b : Board) (s : FastState) : Bool :=
  decide (b.budget < (candidate b s).length) ||
    !enclosed b (s.placed ++ s.remaining)

def split (b : Board) (s : FastState) : Option (FastState × FastState) :=
  if dead b s then none
  else match pivot b s with
    | none => none
    | some v =>
      let rest := s.remaining.erase v
      some (⟨v :: s.placed, rest⟩, ⟨s.placed, rest⟩)

/-- All completions satisfy the mandatory and still-allowed wall constraints. -/
def Region (s : FastState) (walls : Placement) : Prop :=
  s.placed ⊆ walls ∧ walls ⊆ s.placed ++ s.remaining

theorem dead_no_completion (b : Board) (s : FastState) (h : dead b s = true)
    (walls : Placement) (hw : Region s walls) : ¬ admissible b walls := by
  simp only [dead, Bool.or_eq_true, decide_eq_true_eq, Bool.not_eq_true'] at h
  rcases h with hb | he
  · exact not_admissible_of_mandatory_over_budget b s.placed walls hw.1 hb
  · intro ha
    exact no_enclosure_of_maximal b (s.placed ++ s.remaining) walls hw.2 he ha.2

theorem split_cover (b : Board) (s l r : FastState) (h : split b s = some (l, r))
    (walls : Placement) (hw : Region s walls) :
    Region l walls ∨ Region r walls := by
  unfold split at h
  split at h
  · contradiction
  · cases hp : pivot b s with
    | none => simp [hp] at h
    | some v =>
      simp only [hp, Option.some.injEq, Prod.mk.injEq] at h
      obtain ⟨rfl, rfl⟩ := h
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
        intro i hi
        rcases List.mem_append.mp (hw.2 hi) with hi | hi
        · exact List.mem_append_left _ hi
        · have hiv : i ≠ v := by intro he; subst i; exact hv hi
          exact List.mem_append_right _ ((List.mem_erase_of_ne hiv).mpr hi)

theorem split_rank (b : Board) (s l r : FastState) (h : split b s = some (l, r)) :
    l.remaining.length < s.remaining.length ∧ r.remaining.length < s.remaining.length := by
  unfold split at h
  split at h
  · contradiction
  · cases hp : pivot b s with
    | none => simp [hp] at h
    | some v =>
      simp only [hp, Option.some.injEq, Prod.mk.injEq] at h
      obtain ⟨rfl, rfl⟩ := h
      have hm := pivot_mem b s hp
      have hl := List.length_erase_of_mem hm
      have hn : s.remaining.length ≠ 0 := by
        intro hz
        have he : s.remaining = [] := List.length_eq_zero_iff.mp hz
        simp [he] at hm
      simp only
      omega

theorem leaf_cover (b : Board) (s : FastState) (h : split b s = none)
    (walls : Placement) (hw : Region s walls) (ha : admissible b walls) :
    admissible b (candidate b s) ∧ score b walls ≤ score b (candidate b s) := by
  unfold split at h
  split at h
  · rename_i hd
    exact False.elim (dead_no_completion b s hd walls hw ha)
  · cases hp : pivot b s with
    | some v => simp [hp] at h
    | none =>
      have hr := pivot_none b s hp
      have hs : SameWalls s.placed walls := by
        intro i
        exact ⟨fun hi => hw.1 hi, fun hi => by simpa [hr] using hw.2 hi⟩
      have hc : ∀ i ∈ s.placed, i ∈ b.candidates :=
        fun i hi => ha.1.1.subset (hw.1 hi)
      have hc' := canonicalize_sameWalls b s.placed hc
      have hall : SameWalls (candidate b s) walls :=
        fun i => (hc' i).trans (hs i)
      have hsub : (candidate b s).Sublist b.candidates := canonicalize_sublist b s.placed
      have hlen := canonicalize_length_le_of_subset b s.placed walls hw.1
      refine ⟨⟨⟨hsub, Nat.le_trans hlen ha.1.2⟩, ?_⟩, ?_⟩
      · exact (enclosed_sameWalls b hall).trans ha.2
      · exact Int.le_of_eq (score_sameWalls b hall).symm

/-- Concrete branch-and-bound problem with every callback obligation discharged. -/
def problem (b : Board) : BranchBound.Problem FastState Placement where
  valid := fun w => decide (admissible b w)
  score := score b
  candidate := candidate b
  upper := fun s => completionBound b s.placed (s.placed ++ s.remaining)
  split := split b
  rank := fun s => s.remaining.length
  region := Region
  bound_sound := by
    intro s w hw hv
    have ha : admissible b w := by simpa using hv
    exact score_le_completionBound b s.placed (s.placed ++ s.remaining) w hw.1 hw.2 ha.2
  split_cover := by
    intro s l r hs w hw _
    exact split_cover b s l r hs w hw
  split_rank := split_rank b
  leaf_cover := by
    intro s hs w hw hv
    have ha : admissible b w := by simpa using hv
    have hh := leaf_cover b s hs w hw ha
    exact ⟨by simpa using hh.1, hh.2⟩

def initial (b : Board) : FastState := ⟨[], b.candidates⟩

end FastSolver

/-- An external or heuristic incumbent is accepted only after checking game legality. -/
def checkedSeed (b : Board) (seed : Option Placement) : Option Placement :=
  seed.filter (fun walls => decide (admissible b walls))

theorem checkedSeed_valid (b : Board) (seed : Option Placement) :
    BranchBound.ValidOption (fun w => decide (admissible b w)) (checkedSeed b seed) := by
  intro w hw
  cases seed with
  | none => simp [checkedSeed] at hw
  | some x =>
    simp only [checkedSeed, Option.filter] at hw
    split at hw
    · rename_i hx
      cases hw
      exact hx
    · contradiction

/-- Exact branch-and-bound with an optionally supplied, independently checked incumbent.
A strong seed speeds pruning; it cannot weaken the global optimality guarantee. -/
def solveFastWithSeed (b : Board) (seed : Option Placement) : Option Placement :=
  BranchBound.search (FastSolver.problem b) b.candidates.length (FastSolver.initial b)
    (checkedSeed b seed)

/-- Exact branch-and-bound using dynamic escape-path pivots and signed bounds. -/
def solveFast (b : Board) : Option Placement := solveFastWithSeed b none

/-- Every answer returned by the practical solver is globally optimal. -/
theorem solveFastWithSeed_optimal (b : Board) (seed : Option Placement) (walls : Placement)
    (h : solveFastWithSeed b seed = some walls) : Optimal b walls := by
  have hs := BranchBound.search_spec (FastSolver.problem b) b.candidates.length
    (FastSolver.initial b) (checkedSeed b seed) (by simp [FastSolver.problem, FastSolver.initial])
    (checkedSeed_valid b seed)
  constructor
  · have hv := hs.1 walls h
    simpa [FastSolver.problem] using hv
  · intro other ho
    have hr : FastSolver.Region (FastSolver.initial b) other := by
      refine ⟨?_, ?_⟩
      · intro i hi; simp [FastSolver.initial] at hi
      · simpa [FastSolver.initial] using ho.1.1.subset
    obtain ⟨answer, he, hscore⟩ := hs.2.2 other hr (by simpa [FastSolver.problem] using ho)
    rw [show answer = walls from Option.some.inj (he.symm.trans h)] at hscore
    exact hscore

theorem solveFast_optimal (b : Board) (walls : Placement) (h : solveFast b = some walls) :
    Optimal b walls := solveFastWithSeed_optimal b none walls h

theorem solveFast_optimal_physical (b : Board) (walls : Placement)
    (h : solveFast b = some walls) : PhysicalOptimal b walls :=
  (solveFast_optimal b walls h).physical

end EncloseHorse
