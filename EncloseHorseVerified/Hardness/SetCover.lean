import EncloseHorseVerified.Hardness
import EncloseHorseVerified.Bounds

/-!
# The finite Set Cover source problem

The source is an explicit list of sets over `0, ..., elementCount - 1`.
It is separate from the board constructor and its score. In particular, neither
`Covers` nor `CoverYES` mentions the target game.
-/
namespace EncloseHorse.Hardness

/-- A distinct, in-range family of at most `coverBudget` sets covering the universe. -/
def Covers (a : CoverInstance) (chosen : List Nat) : Prop :=
  chosen.Nodup ∧
  (∀ i ∈ chosen, i < a.setCount) ∧
  chosen.length ≤ a.coverBudget ∧
  ∀ e < a.elementCount, ∃ i ∈ chosen, e ∈ a.members i

/-- The Set Cover decision problem on the explicitly listed source input. -/
def CoverYES (a : CoverInstance) : Prop := ∃ chosen, Covers a chosen

theorem Covers.nodup {a : CoverInstance} {chosen : List Nat} (h : Covers a chosen) :
    chosen.Nodup := h.1

theorem Covers.in_range {a : CoverInstance} {chosen : List Nat} (h : Covers a chosen) :
    ∀ i ∈ chosen, i < a.setCount := h.2.1

theorem Covers.budget {a : CoverInstance} {chosen : List Nat} (h : Covers a chosen) :
    chosen.length ≤ a.coverBudget := h.2.2.1

theorem Covers.cover {a : CoverInstance} {chosen : List Nat} (h : Covers a chosen) :
    ∀ e < a.elementCount, ∃ i ∈ chosen, e ∈ a.members i := h.2.2.2

theorem Covers.length_le_setCount {a : CoverInstance} {chosen : List Nat}
    (h : Covers a chosen) : chosen.length ≤ a.setCount := by
  have hn := EncloseHorse.nodup_length_le_of_subset chosen (List.range a.setCount)
    h.nodup (fun i hi => List.mem_range.mpr (h.in_range i hi))
  simpa using hn

/-- Capping the source budget at the number of listed sets preserves every witness. -/
theorem Covers.length_le_limit {a : CoverInstance} {chosen : List Nat}
    (h : Covers a chosen) : chosen.length ≤ a.limit := by
  exact Nat.le_min.mpr ⟨h.budget, h.length_le_setCount⟩

theorem coverYES_iff_capped (a : CoverInstance) :
    CoverYES a ↔ CoverYES { a with coverBudget := a.limit } := by
  constructor
  · rintro ⟨chosen, h⟩
    exact ⟨chosen, h.nodup, h.in_range, h.length_le_limit, h.cover⟩
  · rintro ⟨chosen, hn, hi, hb, hc⟩
    exact ⟨chosen, hn, hi, Nat.le_trans hb (Nat.min_le_left _ _), hc⟩

theorem empty_universe_coverYES (a : CoverInstance) (h : a.elementCount = 0) :
    CoverYES a := by
  refine ⟨[], by simp, by simp, by simp, ?_⟩
  intro e he
  omega

theorem mem_members_iff (a : CoverInstance) (i e : Nat) :
    e ∈ a.members i ↔ e < a.elementCount ∧ e ∈ a.sets[i]?.getD [] := by
  simp [CoverInstance.members]

end EncloseHorse.Hardness
