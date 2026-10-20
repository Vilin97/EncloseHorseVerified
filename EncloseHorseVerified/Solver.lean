import EncloseHorseVerified.Game
import EncloseHorseVerified.FiniteSearch

/-!
# Verified optimal solver

The solver searches all budget-bounded legal wall sets and returns a highest
scoring enclosure. It returns `none` exactly when the board admits no enclosure.
The completeness proof is uniform in the board, wall budget and signed scores.
-/
namespace EncloseHorse

/-- The finite search space, with escape routes checked by the game engine. -/
def feasiblePlacements (b : Board) : List Placement :=
  (choices b.candidates b.budget).filter (enclosed b)

/-- Search-space membership is equivalent to the independent game specification. -/
theorem mem_feasiblePlacements (b : Board) (walls : Placement) :
    walls ∈ feasiblePlacements b ↔ admissible b walls := by
  simp only [feasiblePlacements, List.mem_filter, mem_choices, admissible, legal]

/-- Exhaustive exact optimization; unlike a heuristic, this can prove a maximum. -/
def solve (b : Board) : Option Placement :=
  bestBy (score b) (feasiblePlacements b)

/-- Legality and comparison against every legal enclosure, independent of the solver. -/
def Optimal (b : Board) (walls : Placement) : Prop :=
  admissible b walls ∧ ∀ other, admissible b other → score b other ≤ score b walls

/-- Every answer returned by `solve` is a legal, globally optimal enclosure. -/
theorem solve_optimal (b : Board) (walls : Placement)
    (h : solve b = some walls) : Optimal b walls := by
  have hs := bestBy_spec (score b) (feasiblePlacements b) walls h
  exact ⟨(mem_feasiblePlacements b walls).mp hs.1,
    fun other ho => hs.2 other ((mem_feasiblePlacements b other).mpr ho)⟩

/-- An empty result certifies impossibility, rather than a failed search heuristic. -/
theorem solve_eq_none_iff (b : Board) :
    solve b = none ↔ ¬ ∃ walls, admissible b walls := by
  rw [solve, bestBy_eq_none_iff]
  constructor
  · intro h ⟨walls, hw⟩
    have hm := (mem_feasiblePlacements b walls).mpr hw
    simp [h] at hm
  · intro h
    cases hf : feasiblePlacements b with
    | nil => rfl
    | cons w ws =>
      have hm : w ∈ feasiblePlacements b := by simp [hf]
      exact False.elim (h ⟨w, (mem_feasiblePlacements b w).mp hm⟩)

/-- A board has an optimal solution exactly when some legal enclosure exists. -/
theorem exists_optimal_iff (b : Board) :
    (∃ walls, Optimal b walls) ↔ ∃ walls, admissible b walls := by
  constructor
  · rintro ⟨walls, h⟩
    exact ⟨walls, h.1⟩
  · intro h
    cases hs : solve b with
    | none => exact False.elim ((solve_eq_none_iff b).mp hs h)
    | some walls => exact ⟨walls, solve_optimal b walls hs⟩

/-- Legal physical wall placements may list their distinct grass cells in any order. -/
def PhysicalLegal (b : Board) (walls : Placement) : Prop :=
  walls.Nodup ∧ (∀ i ∈ walls, i ∈ b.candidates) ∧ walls.length ≤ b.budget

/-- A legal physical enclosure, without a canonical ordering requirement. -/
def PhysicalAdmissible (b : Board) (walls : Placement) : Prop :=
  PhysicalLegal b walls ∧ enclosed b walls = true

/-- Optimality against every physical enclosure, in arbitrary list order. -/
def PhysicalOptimal (b : Board) (walls : Placement) : Prop :=
  PhysicalAdmissible b walls ∧
    ∀ other, PhysicalAdmissible b other → score b other ≤ score b walls

theorem legal_physical (b : Board) (walls : Placement) (h : legal b walls) :
    PhysicalLegal b walls := by
  exact ⟨b.candidates_nodup.sublist h.1, fun _ hi => h.1.subset hi, h.2⟩

/-- Canonical representation does not restrict the optimality claim: all distinct
wall lists within budget are compared, regardless of their order. -/
theorem Optimal.physical {b : Board} {walls : Placement} (h : Optimal b walls) :
    PhysicalOptimal b walls := by
  constructor
  · exact ⟨legal_physical b walls h.1.1, h.1.2⟩
  · intro other ho
    obtain ⟨⟨hn, hc, hb⟩, he⟩ := ho
    have hs := canonicalize_sameWalls b other hc
    have ha : admissible b (canonicalize b other) :=
      ⟨canonicalize_legal b other hn hc hb,
        (enclosed_sameWalls b hs).trans he⟩
    have hm := h.2 (canonicalize b other) ha
    rwa [score_sameWalls b hs] at hm

/-- Every solver answer dominates all legal physical placements, including
unordered inputs that never appear literally in the enumeration. -/
theorem solve_optimal_physical (b : Board) (walls : Placement)
    (h : solve b = some walls) : PhysicalOptimal b walls :=
  (solve_optimal b walls h).physical

end EncloseHorse
