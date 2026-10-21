import EncloseHorseVerified.Hardness.TokenPermutation

/-! Cardinalities and the exact incidence-index correspondence for typed source tokens. -/
namespace EncloseHorse.Hardness.TokenPermutation

open Geometry

variable {A : Type} [Finite A]

/-- The numeric pair named by a typed source incidence. -/
noncomputable def incidencePair (E F : A → Prop) (M : A → A → Prop)
    (ie : Incidence E F M) : Nat × Nat :=
  (((SourceEncoding.enumF F).symm ie.val.1).val,
    ((SourceEncoding.enumE E).symm ie.val.2).val)

theorem incidencePair_mem (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (ie : Incidence E F M) :
    incidencePair E F M ie ∈ (SourceEncoding.encode E F M K).incidences := by
  apply (SourceEncoding.mem_encode_incidences E F M K
    ((SourceEncoding.enumF F).symm ie.val.1) ((SourceEncoding.enumE E).symm ie.val.2)).mpr
  simpa only [Equiv.apply_symm_apply] using ie.property

/-- Decode a native incidence pair back to its typed source incidence. -/
noncomputable def incidenceOfPair (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (ie : {p : Nat × Nat // p ∈ (SourceEncoding.encode E F M K).incidences}) :
    Incidence E F M := by
  have hm := (BoardGadgets.mem_incidences_iff (SourceEncoding.encode E F M K) ie.val.1 ie.val.2).mp
    ie.property
  have hi : ie.val.1 < Nat.card {x // F x} := by simpa using hm.1
  have he : ie.val.2 < Nat.card {x // E x} := by
    exact ((mem_members_iff _ _ _).mp hm.2).1
  let i : Fin (Nat.card {x // F x}) := ⟨ie.val.1, hi⟩
  let e : Fin (Nat.card {x // E x}) := ⟨ie.val.2, he⟩
  exact ⟨((SourceEncoding.enumF F) i, (SourceEncoding.enumE E) e),
    (SourceEncoding.mem_encode_incidences E F M K i e).mp ie.property⟩

/-- Typed incidences correspond exactly to the native finite incidence list. -/
noncomputable def incidenceEquiv_encode (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) :
    Incidence E F M ≃ {p : Nat × Nat // p ∈ (SourceEncoding.encode E F M K).incidences} where
  toFun ie := ⟨incidencePair E F M ie, incidencePair_mem E F M K ie⟩
  invFun := incidenceOfPair E F M K
  left_inv ie := by
    apply Subtype.ext
    apply Prod.ext <;> simp [incidenceOfPair, incidencePair]
  right_inv ie := by
    apply Subtype.ext
    apply Prod.ext <;> simp [incidenceOfPair, incidencePair]

/-- Each native incidence appears once, because both source enumerations are duplicate-free. -/
theorem incidences_nodup (a : CoverInstance) : a.incidences.Nodup := by
  apply List.pairwise_flatMap.mpr
  constructor
  · intro i hi
    apply List.Pairwise.map (R := fun x y : Nat => x ≠ y) (fun e => (i, e))
    · intro e f hef heq
      exact hef (Prod.mk.inj heq).2
    · exact List.Pairwise.filter _ List.nodup_range
  · apply List.Pairwise.imp _ List.nodup_range
    intro i j hij p hp q hq heq
    obtain ⟨e, he, rfl⟩ := List.mem_map.mp hp
    obtain ⟨f, hf, rfl⟩ := List.mem_map.mp hq
    exact hij (Prod.mk.inj heq).1

/-- Incidence-token cardinality is the length of the actual decoded incidence list. -/
theorem card_incidence_encode (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) :
    Nat.card (Incidence E F M) = (SourceEncoding.encode E F M K).incidences.length := by
  classical
  rw [Nat.card_congr (incidenceEquiv_encode E F M K)]
  have hc : Nat.card {p : Nat × Nat // p ∈ (SourceEncoding.encode E F M K).incidences} =
      {p : Nat × Nat | p ∈ (SourceEncoding.encode E F M K).incidences}.ncard :=
    Nat.card_coe_set_eq _
  rw [hc]
  have hset : {p : Nat × Nat | p ∈ (SourceEncoding.encode E F M K).incidences} =
      ((SourceEncoding.encode E F M K).incidences.toFinset : Set (Nat × Nat)) := by
    ext p
    simp
  rw [hset, Set.ncard_coe_finset, List.toFinset_card_of_nodup (incidences_nodup _)]

theorem card_cost_encode (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) :
    Nat.card (Cost E F M) = (SourceEncoding.encode E F M K).setCost := by
  simp [Cost, Nat.card_sum, card_incidence_encode E F M K, CoverInstance.setCost,
    CoverInstance.gateCount, Nat.add_comm, Nat.add_left_comm]

theorem card_reward_encode (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) :
    Nat.card (Reward F K) = (SourceEncoding.encode E F M K).setCount +
      (SourceEncoding.encode E F M K).coverBudget + 2 := by
  have hk : Nat.card {x : A // K x} = {x : A | K x}.ncard := Nat.card_coe_set_eq _
  simp [Reward, Nat.card_sum, hk, Nat.add_comm, Nat.add_left_comm]

end EncloseHorse.Hardness.TokenPermutation
