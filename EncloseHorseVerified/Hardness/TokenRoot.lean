import EncloseHorseVerified.Hardness.FOTokens
import EncloseHorseVerified.Hardness.OrderedRoot
import Mathlib.Tactic.SplitIfs

/-! The unique least root of the first-order gadget-token domain. -/
namespace EncloseHorse.Hardness.TokenRoot

open FOTokens Geometry

variable {A : Type}

def rootToken (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A) :
    GadgetToken E F M K lo :=
  ⟨(0, fun _ => lo), by simp [ValidGadget, AllMin]⟩

/-- No nonzero token kind decodes to a root gadget. -/
theorem decode_root_iff (familyIndex elementIndex : A → Nat) (g : RawGadget A) :
    FOTokens.decode familyIndex elementIndex g = .root ↔ g.1 = 0 := by
  constructor
  · intro h
    unfold FOTokens.decode at h
    dsimp only at h
    split_ifs at h; simp_all
  · intro h
    simp [FOTokens.decode, h]

theorem decode_rootToken (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (familyIndex elementIndex : A → Nat) :
    FOTokens.decode familyIndex elementIndex (rootToken E F M K lo).val = .root := by
  simp [FOTokens.decode, rootToken]

/-- Validity pins every coordinate of a kind-zero token to the one root payload. -/
theorem eq_root_of_kind_zero (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (g : GadgetToken E F M K lo) (hk : g.val.1 = 0) :
    g = rootToken E F M K lo := by
  apply Subtype.ext
  apply Prod.ext
  · exact hk
  · funext i
    have hv := g.property
    simp only [ValidGadget, hk, ↓reduceIte] at hv
    exact hv i

theorem unique_decode_root (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (familyIndex elementIndex : A → Nat) (g : GadgetToken E F M K lo)
    (hroot : FOTokens.decode familyIndex elementIndex g.val = .root) :
    g = rootToken E F M K lo :=
  eq_root_of_kind_zero E F M K lo g ((decode_root_iff familyIndex elementIndex g.val).mp hroot)

/-- The root is least in the token lexicographic order, independent of the chosen payload minimum. -/
theorem rootToken_le [LinearOrder A] (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (g : GadgetToken E F M K lo) :
    (inferInstance : LinearOrder (GadgetToken E F M K lo)).le
      (rootToken E F M K lo) g := by
  by_cases hk : g.val.1 = 0
  · rw [eq_root_of_kind_zero E F M K lo g hk]
    exact (inferInstance : LinearOrder (GadgetToken E F M K lo)).le_refl _
  · change (DescriptiveComplexity.tagTupleOrder : LinearOrder (RawGadget A)).le
      (rootToken E F M K lo).val g.val
    apply (DescriptiveComplexity.tagTupleLe_iff_le _ _).mp
    apply Or.inl
    change (0 : Nat) < g.val.1.val
    have hn : g.val.1.val ≠ 0 := fun hz => hk (Fin.ext hz)
    omega

end EncloseHorse.Hardness.TokenRoot
