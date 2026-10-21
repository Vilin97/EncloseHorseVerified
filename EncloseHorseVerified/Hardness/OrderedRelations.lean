import EncloseHorseVerified.Hardness.OrderedCells
import Mathlib.Order.SuccPred.Nat

/-! Coordinate-free ordered-island predicates and their row-major meanings. -/
namespace EncloseHorse.Hardness.OrderedCells

variable {G : Type} [Fintype G] [LinearOrder G]

def First (g : G) : Prop := ∀ h, g ≤ h
def Last (g : G) : Prop := ∀ h, h ≤ g

def SameRow : Cell G → Cell G → Prop
  | .inl _, .inl _ => True
  | .inr (g, p, _), .inr (h, q, _) => g = h ∧ p = q
  | _, _ => False

def NextRow : Cell G → Cell G → Prop
  | .inl c, .inr (g, p, d) => c = d ∧ p = 0 ∧ First g
  | .inr (g, p, c), .inr (h, q, d) => c = d ∧
      ((g = h ∧ p = 0 ∧ q = 1) ∨ (g ⋖ h ∧ p = 1 ∧ q = 0))
  | _, _ => False

def Adjacent (x y : Cell G) : Prop :=
  (SameRow x y ∧ (col x + 1 = col y ∨ col y + 1 = col x)) ∨
    NextRow x y ∨ NextRow y x

def OnEdge : Cell G → Prop
  | .inl _ => True
  | .inr (g, p, c) => c = 0 ∨ c = 4 ∨ (p = 1 ∧ Last g)

def IndexLe : Cell G → Cell G → Prop
  | .inl c, .inl d => c ≤ d
  | .inl _, .inr _ => True
  | .inr _, .inl _ => False
  | .inr (g, p, c), .inr (h, q, d) =>
      g < h ∨ (g = h ∧ (p < q ∨ (p = q ∧ c ≤ d)))

theorem rank_eq_iff (g h : G) : (rank g).val = (rank h).val ↔ g = h := by
  constructor
  · intro he
    exact (orderIso G).symm.injective (Fin.ext he)
  · rintro rfl; rfl

theorem rank_lt_iff (g h : G) : (rank g).val < (rank h).val ↔ g < h := by
  exact (orderIso G).symm.lt_iff_lt

theorem rank_le_iff (g h : G) : (rank g).val ≤ (rank h).val ↔ g ≤ h := by
  exact (orderIso G).symm.le_iff_le

theorem rank_first_iff (g : G) : (rank g).val = 0 ↔ First g := by
  constructor
  · intro hg h
    apply (rank_le_iff g h).mp
    omega
  · intro hg
    have hn : 0 < Fintype.card G := Nat.zero_lt_of_lt (rank g).isLt
    have h := (rank_le_iff g ((orderIso G) ⟨0, hn⟩)).mpr (hg _)
    have hz : rank ((orderIso G) ⟨0, hn⟩) = ⟨0, hn⟩ := (orderIso G).symm_apply_apply _
    have hzval : (rank ((orderIso G) ⟨0, hn⟩)).val = 0 := congrArg Fin.val hz
    omega

theorem rank_last_iff (g : G) : (rank g).val + 1 = Fintype.card G ↔ Last g := by
  constructor
  · intro hg h
    apply (rank_le_iff h g).mp
    have hh := (rank h).isLt
    omega
  · intro hg
    have hn : 0 < Fintype.card G := Nat.zero_lt_of_lt (rank g).isLt
    let last : Fin (Fintype.card G) := ⟨Fintype.card G - 1, by omega⟩
    have h := (rank_le_iff ((orderIso G) last) g).mpr (hg _)
    have hz : rank ((orderIso G) last) = last := (orderIso G).symm_apply_apply _
    rw [hz] at h
    have hb := (rank g).isLt
    change Fintype.card G - 1 ≤ (rank g).val at h
    omega

theorem rank_succ_iff (g h : G) : (rank g).val + 1 = (rank h).val ↔ g ⋖ h := by
  rw [← Nat.covBy_iff_add_one_eq, ← Fin.covBy_iff]
  exact apply_covBy_apply_iff (orderIso G).symm

theorem sameRow_iff (x y : Cell G) : SameRow x y ↔ row x = row y := by
  rcases x with c | ⟨g,p,c⟩ <;> rcases y with d | ⟨h,q,d⟩
  · simp [SameRow, row]
  · simp [SameRow, row]
  · simp [SameRow, row]
  · simp only [SameRow, row]
    have hp := p.isLt
    have hq := q.isLt
    constructor
    · rintro ⟨rfl,rfl⟩; rfl
    · intro he
      have hh : (rank g).val = (rank h).val := by omega
      exact ⟨(rank_eq_iff g h).mp hh, Fin.ext (by omega)⟩

theorem nextRow_iff (x y : Cell G) :
    NextRow x y ↔ col x = col y ∧ row x + 1 = row y := by
  rcases x with c | ⟨g,p,c⟩ <;> rcases y with d | ⟨h,q,d⟩
  · simp [NextRow, row]
  · simp only [NextRow, col, row, ← rank_first_iff, Fin.ext_iff]
    have hp := q.isLt
    omega
  · simp [NextRow, row]
  · simp only [NextRow, col, row, ← rank_eq_iff g h, ← rank_succ_iff g h, Fin.ext_iff]
    have hp := p.isLt
    have hq := q.isLt
    omega

theorem adjacent_iff (x y : Cell G) : Adjacent x y ↔
    (row x = row y ∧ (col x + 1 = col y ∨ col y + 1 = col x)) ∨
    (col x = col y ∧ (row x + 1 = row y ∨ row y + 1 = row x)) := by
  simp only [Adjacent, sameRow_iff, nextRow_iff]
  constructor
  · rintro (h | h | h)
    · exact Or.inl h
    · exact Or.inr ⟨h.1, Or.inl h.2⟩
    · exact Or.inr ⟨h.1.symm, Or.inr h.2⟩
  · rintro (h | ⟨hc,h⟩)
    · exact Or.inl h
    · rcases h with h | h
      · exact Or.inr (Or.inl ⟨hc,h⟩)
      · exact Or.inr (Or.inr ⟨hc.symm,h⟩)

theorem onEdge_iff (x : Cell G) : OnEdge x ↔
    col x = 0 ∨ col x + 1 = 5 ∨ row x = 0 ∨ row x + 1 = 2 * Fintype.card G + 1 := by
  rcases x with c | ⟨g,p,c⟩
  · simp [OnEdge, row]
  · simp only [OnEdge, col, row, ← rank_last_iff, Fin.ext_iff]
    have hp := p.isLt
    have hc := c.isLt
    have hg := (rank g).isLt
    omega

theorem indexLe_iff (x y : Cell G) : IndexLe x y ↔ index x ≤ index y := by
  rcases x with c | ⟨g,p,c⟩ <;> rcases y with d | ⟨h,q,d⟩
  · rfl
  · simp only [IndexLe, index, true_iff]
    have hc := c.isLt
    omega
  · simp only [IndexLe, index, false_iff]
    have hd := d.isLt
    omega
  · simp only [IndexLe, index, ← rank_lt_iff g h, ← rank_eq_iff g h, Fin.lt_def,
      Fin.ext_iff, Fin.le_iff_val_le_val]
    have hp := p.isLt
    have hq := q.isLt
    have hc := c.isLt
    have hd := d.isLt
    omega

end EncloseHorse.Hardness.OrderedCells
