import EncloseHorseVerified.Solver
import EncloseHorseVerified.Bounds
import EncloseHorseVerified.FastSearch
import EncloseHorseVerified.Cache

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
private def pathLoop (b : Board) (c : GraphCache b) (walls : Placement) (goal : Nat → Bool) :
    Nat → List (Nat × List Nat) → List Nat → Option (List Nat)
  | 0, _, _ => none
  | _ + 1, [], _ => none
  | n + 1, (u, path) :: queue, seen =>
    if goal u then some path
    else
      let next := c.cells.filter (fun v => c.edge walls u v && !seen.contains v)
      pathLoop b c walls goal n
        (queue ++ next.map (fun v => (v, v :: path))) (next ++ seen)

/-- An approximate shortest path; invalid or missing guidance falls back safely. -/
private def pathTo (b : Board) (c : GraphCache b) (walls : Placement) (goal : Nat → Bool) : Option (List Nat) :=
  pathLoop b c walls goal (b.size + 1) [(c.horse, [c.horse])] [c.horse]

private def guidedPivot (b : Board) (c : GraphCache b) (s : FastState) : Option Nat :=
  let goal := if c.enclosed s.placed then
      let forced := c.reach (s.placed ++ s.remaining)
      (fun v => decide ((c.tileAt v).points < 0) && !forced.contains v)
    else b.onEdge
  match pathTo b c s.placed goal with
  | none => none
  | some path =>
    let options := path.filter (fun v => s.remaining.contains v)
    -- Small degree cells tend to lie at narrow necks in the reachable region.
    options.foldl (fun best v =>
      match best with
      | none => some v
      | some w =>
        let dv := (c.cells.filter (c.edge s.placed v)).length
        let dw := (c.cells.filter (c.edge s.placed w)).length
        if dv < dw then some v else some w) none

/-- Heuristic suggestions are checked against the actual remaining candidates. -/
def pivot (b : Board) (c : GraphCache b) (s : FastState) : Option Nat :=
  match guidedPivot b c s with
  | some v => if v ∈ s.remaining then some v else s.remaining.head?
  | none => s.remaining.head?

theorem pivot_mem (b : Board) (c : GraphCache b) (s : FastState) {v : Nat} (h : pivot b c s = some v) :
    v ∈ s.remaining := by
  unfold pivot at h
  split at h
  · split at h
    · cases h; assumption
    · cases hh : s.remaining with
      | nil => simp [hh] at h
      | cons a rest => simp [hh] at h; subst v; simp
  · cases hh : s.remaining with
    | nil => simp [hh] at h
    | cons a rest => simp [hh] at h; subst v; simp

theorem pivot_none (b : Board) (c : GraphCache b) (s : FastState) (h : pivot b c s = none) :
    s.remaining = [] := by
  unfold pivot at h
  split at h
  · split at h
    · contradiction
    · cases hh : s.remaining <;> simp_all
  · cases hh : s.remaining <;> simp_all

def candidate (b : Board) (c : GraphCache b) (s : FastState) : Placement := c.canonicalize s.placed

def dead (b : Board) (c : GraphCache b) (s : FastState) : Bool :=
  decide (b.budget < (candidate b c s).length) ||
    !c.enclosed (s.placed ++ s.remaining)

def split (b : Board) (c : GraphCache b) (s : FastState) : Option (FastState × FastState) :=
  if dead b c s then none
  else if b.budget ≤ (candidate b c s).length then none
  else match pivot b c s with
    | none => none
    | some v =>
      let rest := s.remaining.erase v
      some (⟨v :: s.placed, rest⟩, ⟨s.placed, rest⟩)

/-- All completions satisfy the mandatory and still-allowed wall constraints. -/
def Region (s : FastState) (walls : Placement) : Prop :=
  s.placed ⊆ walls ∧ walls ⊆ s.placed ++ s.remaining

theorem dead_no_completion (b : Board) (c : GraphCache b) (s : FastState) (h : dead b c s = true)
    (walls : Placement) (hw : Region s walls) : ¬ admissible b walls := by
  simp only [dead, candidate, c.canonicalize_eq, c.enclosed_eq, Bool.or_eq_true, decide_eq_true_eq, Bool.not_eq_true'] at h
  rcases h with hb | he
  · exact not_admissible_of_mandatory_over_budget b s.placed walls hw.1 hb
  · intro ha
    exact no_enclosure_of_maximal b (s.placed ++ s.remaining) walls hw.2 he ha.2

theorem split_cover (b : Board) (c : GraphCache b) (s l r : FastState) (h : split b c s = some (l, r))
    (walls : Placement) (hw : Region s walls) :
    Region l walls ∨ Region r walls := by
  unfold split at h
  split at h
  · contradiction
  · split at h
    · contradiction
    · cases hp : pivot b c s with
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
          intro i hiw
          rcases List.mem_append.mp (hw.2 hiw) with hi | hi
          · exact List.mem_append_left _ hi
          · have hiv : i ≠ v := by intro he; subst i; exact hv hiw
            exact List.mem_append_right _ ((List.mem_erase_of_ne hiv).mpr hi)

theorem split_rank (b : Board) (c : GraphCache b) (s l r : FastState) (h : split b c s = some (l, r)) :
    l.remaining.length < s.remaining.length ∧ r.remaining.length < s.remaining.length := by
  unfold split at h
  split at h
  · contradiction
  · split at h
    · contradiction
    · cases hp : pivot b c s with
      | none => simp [hp] at h
      | some v =>
        simp only [hp, Option.some.injEq, Prod.mk.injEq] at h
        obtain ⟨rfl, rfl⟩ := h
        have hm := pivot_mem b c s hp
        have hl := List.length_erase_of_mem hm
        have hn : s.remaining.length ≠ 0 := by
          intro hz
          have he : s.remaining = [] := List.length_eq_zero_iff.mp hz
          simp [he] at hm
        simp only
        omega

private theorem candidate_cover (b : Board) (c : GraphCache b) (s : FastState) (walls : Placement)
    (hw : Region s walls) (ha : admissible b walls)
    (hall : SameWalls (candidate b c s) walls) :
    admissible b (candidate b c s) ∧ score b walls ≤ score b (candidate b c s) := by
  have hsub : (candidate b c s).Sublist b.candidates := by
    simpa only [candidate, c.canonicalize_eq] using canonicalize_sublist b s.placed
  have hlen : (candidate b c s).length ≤ walls.length := by
    simpa only [candidate, c.canonicalize_eq] using
      canonicalize_length_le_of_subset b s.placed walls hw.1
  refine ⟨⟨⟨hsub, Nat.le_trans hlen ha.1.2⟩, ?_⟩, ?_⟩
  · exact (enclosed_sameWalls b hall).trans ha.2
  · exact Int.le_of_eq (score_sameWalls b hall).symm

theorem leaf_cover (b : Board) (c : GraphCache b) (s : FastState) (h : split b c s = none)
    (walls : Placement) (hw : Region s walls) (ha : admissible b walls) :
    admissible b (candidate b c s) ∧ score b walls ≤ score b (candidate b c s) := by
  unfold split at h
  split at h
  · rename_i hd
    exact False.elim (dead_no_completion b c s hd walls hw ha)
  · split at h
    · rename_i hb
      have hb' : b.budget ≤ (canonicalize b s.placed).length := by
        simpa only [candidate, c.canonicalize_eq] using hb
      apply candidate_cover b c s walls hw ha
      simpa only [candidate, c.canonicalize_eq] using
        sameWalls_of_mandatory_budget_full b s.placed walls hw.1 ha hb'
    · cases hp : pivot b c s with
      | some v => simp [hp] at h
      | none =>
        have hr := pivot_none b c s hp
        have hs : SameWalls s.placed walls := by
          intro i
          exact ⟨fun hi => hw.1 hi, fun hi => by simpa [hr] using hw.2 hi⟩
        have hc : ∀ i ∈ s.placed, i ∈ b.candidates :=
          fun i hi => ha.1.1.subset (hw.1 hi)
        have hc' := canonicalize_sameWalls b s.placed hc
        have hall : SameWalls (candidate b c s) walls := by
          intro i
          simp only [candidate, c.canonicalize_eq]
          exact (hc' i).trans (hs i)
        exact candidate_cover b c s walls hw ha hall

/-- Concrete branch-and-bound problem with every callback obligation discharged. -/
def problem (b : Board) (c : GraphCache b) : BranchBound.Problem FastState Placement where
  valid := c.admissible
  score := c.score
  candidate := candidate b c
  upper := fun s => c.completionBound s.placed (s.placed ++ s.remaining)
  split := split b c
  rank := fun s => s.remaining.length
  region := Region
  bound_sound := by
    intro s w hw hv
    have ha : admissible b w := by simpa only [c.admissible_eq, decide_eq_true_eq] using hv
    rw [c.score_eq, c.completionBound_eq]
    exact score_le_completionBound b s.placed (s.placed ++ s.remaining) w hw.1 hw.2 ha.2
  split_cover := by
    intro s l r hs w hw _
    exact split_cover b c s l r hs w hw
  split_rank := split_rank b c
  leaf_cover := by
    intro s hs w hw hv
    have ha : admissible b w := by simpa only [c.admissible_eq, decide_eq_true_eq] using hv
    have hh := leaf_cover b c s hs w hw ha
    simpa only [c.admissible_eq, c.score_eq, decide_eq_true_eq] using hh


/-- A cached score carries its equality proof; cached values never become assumptions. -/
structure ScoreCache (b : Board) where
  walls : Placement
  value : Int
  correct : value = score b walls

def makeScoreCache (b : Board) (c : GraphCache b) (seed : Option Placement) : Option (ScoreCache b) :=
  seed.map (fun walls => ⟨walls, c.score walls, c.score_eq walls⟩)

def cachedScore (b : Board) (c : GraphCache b) (cache : Option (ScoreCache b)) (walls : Placement) : Int :=
  match cache with
  | none => c.score walls
  | some entry => if walls = entry.walls then entry.value else c.score walls

theorem cachedScore_eq (b : Board) (c : GraphCache b) (cache : Option (ScoreCache b)) (walls : Placement) :
    cachedScore b c cache walls = score b walls := by
  cases cache with
  | none => exact c.score_eq walls
  | some entry =>
    simp only [cachedScore]
    split
    · rename_i hw
      subst walls
      exact entry.correct
    · exact c.score_eq walls

/-- A seed's score is evaluated once, rather than flood-filled at every comparison. -/
def cachedProblem (b : Board) (c : GraphCache b) (cache : Option (ScoreCache b)) :
    BranchBound.Problem FastState Placement :=
  { problem b c with
    score := cachedScore b c cache
    bound_sound := by
      intro s w hw hv
      simpa only [cachedScore_eq, problem, c.score_eq] using (problem b c).bound_sound s w hw hv
    leaf_cover := by
      intro s hs w hw hv
      simpa only [cachedScore_eq, problem, c.score_eq] using (problem b c).leaf_cover s hs w hw hv
  }

def initial (b : Board) (c : GraphCache b) : FastState := ⟨[], c.candidates⟩

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
  let c := GraphCache.ofBoard b
  let incumbent := checkedSeed b seed
  let cache := FastSolver.makeScoreCache b c incumbent
  BranchBound.search (FastSolver.cachedProblem b c cache) c.candidates.length
    (FastSolver.initial b c) incumbent

/-- Exact branch-and-bound using dynamic escape-path pivots and signed bounds. -/
def solveFast (b : Board) : Option Placement := solveFastWithSeed b none

/-- Every answer returned by the practical solver is globally optimal. -/
theorem solveFastWithSeed_optimal (b : Board) (seed : Option Placement) (walls : Placement)
    (h : solveFastWithSeed b seed = some walls) : Optimal b walls := by
  let c := GraphCache.ofBoard b
  let cache := FastSolver.makeScoreCache b c (checkedSeed b seed)
  have hs := BranchBound.search_spec (FastSolver.cachedProblem b c cache) c.candidates.length
    (FastSolver.initial b c) (checkedSeed b seed)
    (by simp [FastSolver.cachedProblem, FastSolver.problem, FastSolver.initial])
    (by simpa only [BranchBound.ValidOption, FastSolver.cachedProblem, FastSolver.problem, c.admissible_eq] using checkedSeed_valid b seed)
  constructor
  · have hv := hs.1 walls h
    simpa [FastSolver.cachedProblem, FastSolver.problem, c.admissible_eq] using hv
  · intro other ho
    have hr : FastSolver.Region (FastSolver.initial b c) other := by
      refine ⟨?_, ?_⟩
      · intro i hi; simp [FastSolver.initial] at hi
      · simpa [FastSolver.initial, c.candidates_eq] using ho.1.1.subset
    obtain ⟨answer, he, hscore⟩ := hs.2.2 other hr (by simpa [FastSolver.cachedProblem, FastSolver.problem, c.admissible_eq] using ho)
    rw [show answer = walls from Option.some.inj (he.symm.trans h)] at hscore
    simpa only [FastSolver.cachedProblem, FastSolver.cachedScore_eq] using hscore

theorem solveFast_optimal (b : Board) (walls : Placement) (h : solveFast b = some walls) :
    Optimal b walls := solveFastWithSeed_optimal b none walls h

theorem solveFast_optimal_physical (b : Board) (walls : Placement)
    (h : solveFast b = some walls) : PhysicalOptimal b walls :=
  (solveFast_optimal b walls h).physical

/-- No enclosure is missed: an empty exact-search result certifies impossibility. -/
theorem solveFastWithSeed_eq_none_iff (b : Board) (seed : Option Placement) :
    solveFastWithSeed b seed = none ↔ ¬ ∃ walls, admissible b walls := by
  constructor
  · intro hn ⟨walls, ha⟩
    let c := GraphCache.ofBoard b
    let cache := FastSolver.makeScoreCache b c (checkedSeed b seed)
    have hs := BranchBound.search_spec (FastSolver.cachedProblem b c cache) c.candidates.length
      (FastSolver.initial b c) (checkedSeed b seed)
      (by simp [FastSolver.cachedProblem, FastSolver.problem, FastSolver.initial])
      (by simpa only [BranchBound.ValidOption, FastSolver.cachedProblem, FastSolver.problem, c.admissible_eq] using checkedSeed_valid b seed)
    have hr : FastSolver.Region (FastSolver.initial b c) walls := by
      refine ⟨?_, ?_⟩
      · intro i hi; simp [FastSolver.initial] at hi
      · simpa [FastSolver.initial, c.candidates_eq] using ha.1.1.subset
    obtain ⟨answer, he, _⟩ := hs.2.2 walls hr (by
      simpa [FastSolver.cachedProblem, FastSolver.problem, c.admissible_eq] using ha)
    change solveFastWithSeed b seed = some answer at he
    rw [hn] at he
    contradiction
  · intro hno
    cases hs : solveFastWithSeed b seed with
    | none => rfl
    | some answer =>
      exact False.elim (hno ⟨answer, (solveFastWithSeed_optimal b seed answer hs).1⟩)

theorem solveFast_eq_none_iff (b : Board) :
    solveFast b = none ↔ ¬ ∃ walls, admissible b walls :=
  solveFastWithSeed_eq_none_iff b none

end EncloseHorse
