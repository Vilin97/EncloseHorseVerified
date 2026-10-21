import EncloseHorseVerified.Hardness.AbstractPermutation
import EncloseHorseVerified.Hardness.OrderedCells

/-! The lexicographically ordered valid FO tokens decode to the reduction's gadget multiset. -/
namespace EncloseHorse.Hardness.FOTokens

open Geometry TokenPermutation OrderedCells AbstractPermutation

variable {A : Type} [Finite A] [LinearOrder A]

noncomputable def tokenDecode (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A)
    (g : GadgetToken E F M K lo) : Gadget :=
  FOTokens.decode (familyIndex F) (elementIndex E F) g.val

/-- The interpretation's source tuples enumerate exactly the intended physical
islands, independently of how the source's elements and families are ordered. -/
theorem sortedTokens_perm (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A)
    [Fintype (GadgetToken E F M K lo)] :
    (sortedGadgets (tokenDecode E F M K lo)).Perm
      (BoardGadgets.gadgets (SourceEncoding.encode E F M K)) := by
  let G := GadgetToken E F M K lo
  let e := rawEquiv E F M K lo
  let o : Fin (Fintype.card G) ≃ G := (orderIso G).toEquiv
  let xs : List (AbstractGadget E F M K) :=
    List.ofFn (fun i : Fin (Fintype.card G) => e.symm (o i))
  have hn : xs.Nodup := by
    apply List.nodup_ofFn.mpr
    intro i j hij
    exact o.injective (e.symm.injective hij)
  have hc : ∀ x, x ∈ xs := by
    intro x
    apply List.mem_ofFn.mpr
    exact ⟨o.symm (e x), by simp⟩
  have hh (g : G) : raw E F M K lo (e.symm g) = g.val := by
    exact congrArg Subtype.val (e.apply_symm_apply g)
  have h := decoded_complete_perm E F M K lo xs hn hc
  simpa only [xs, List.map_ofFn, decoded, Function.comp_def, hh,
    sortedGadgets, tokenDecode, o, G, OrderIso.coe_toEquiv] using h

end EncloseHorse.Hardness.FOTokens
