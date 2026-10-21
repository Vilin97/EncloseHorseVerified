import EncloseHorseVerified.Hardness.TokenCardinality

namespace EncloseHorse.Hardness.TokenPermutation

open FOTokens
variable {A : Type} [Finite A]

abbrev PlusData (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) :=
  Fin 2 ⊕ ({x // F x} ⊕ ({x // E x} × Reward F K × Cost E F M))
abbrev MinusData (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) :=
  {x // K x} × Cost E F M

omit [Finite A] in
private theorem costCode_valid (E F : A → Prop) (M : A → A → Prop) (lo : A) (c : Cost E F M) :
    CostValid E F M lo (costCode E F M lo c).1
      (costCode E F M lo c).2.1 (costCode E F M lo c).2.2 := by
  rcases c with _ | f | ie
  · simp [costCode, CostValid]
  · simp [costCode, CostValid, f.property]
  · simp [costCode, CostValid, ie.val.1.property, ie.val.2.property, ie.property]

omit [Finite A] in
private theorem rewardCode_valid (F K : A → Prop) (lo : A) (r : Reward F K) :
    RewardValid F K lo (rewardCode F K lo r).1 (rewardCode F K lo r).2 := by
  rcases r with i | f | k
  · fin_cases i <;> simp [rewardCode, RewardValid]
  · simp [rewardCode, RewardValid, f.property]
  · simp [rewardCode, RewardValid, k.property]

def plusRaw (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A) :
    PlusData E F M K → Token A
  | .inl copy => (.plusRoot copy, ![lo, lo, lo, lo])
  | .inr (.inl f) => (.plusFamily, ![f.val, lo, lo, lo])
  | .inr (.inr (e, reward, cost)) =>
      let rr := rewardCode F K lo reward
      let cc := costCode E F M lo cost
      (.plusElement rr.1 cc.1, ![e.val, rr.2, cc.2.1, cc.2.2])

theorem plusRaw_valid (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A)
    (p : PlusData E F M K) : Plus E F M K lo (plusRaw E F M K lo p) := by
  rcases p with copy | f | ⟨e, reward, cost⟩
  · intro i
    fin_cases i <;> rfl
  · exact ⟨f.property, rfl, rfl, rfl⟩
  · exact ⟨e.property, rewardCode_valid F K lo reward, costCode_valid E F M lo cost⟩

noncomputable def plusFromRaw (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (p : Token A) (h : Plus E F M K lo p) : PlusData E F M K := by
  rcases p with ⟨tag, x⟩
  cases tag with
  | top _ => simp [Plus] at h
  | gadget _ _ _ => simp [Plus] at h
  | plusRoot copy => exact .inl copy
  | plusFamily => exact .inr (.inl ⟨x 0, h.1⟩)
  | plusElement r c => exact .inr (.inr
      (⟨x 0, h.1⟩, rewardDecode F K lo r (x 1) h.2.1,
        costDecode E F M lo c (x 2) (x 3) h.2.2))
  | minus _ => simp [Plus] at h

theorem plusFromRaw_plusRaw (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A)
    (p : PlusData E F M K) :
    plusFromRaw E F M K lo (plusRaw E F M K lo p) (plusRaw_valid E F M K lo p) = p := by
  rcases p with copy | f | ⟨e, reward, cost⟩
  · rfl
  · rfl
  · simp [plusFromRaw, plusRaw, costDecode_code, rewardDecode_code]

theorem plusRaw_plusFromRaw (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (p : Token A) (h : Plus E F M K lo p) :
    plusRaw E F M K lo (plusFromRaw E F M K lo p h) = p := by
  rcases p with ⟨tag, x⟩
  cases tag with
  | top _ => simp [Plus] at h
  | gadget _ _ _ => simp [Plus] at h
  | minus _ => simp [Plus] at h
  | plusRoot copy =>
      simp only [plusFromRaw, plusRaw, Prod.mk.injEq, true_and]
      funext i
      fin_cases i <;> exact (h _).symm
  | plusFamily =>
      simp only [plusFromRaw, plusRaw, Prod.mk.injEq, true_and]
      funext i
      fin_cases i <;> simp_all [Plus]
  | plusElement r c =>
      simp [plusFromRaw, plusRaw, costCode_decode, rewardCode_decode]
      funext i
      fin_cases i <;> rfl

noncomputable def plusEquiv (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A) :
    PlusData E F M K ≃ {p : Token A // Plus E F M K lo p} where
  toFun p := ⟨plusRaw E F M K lo p, plusRaw_valid E F M K lo p⟩
  invFun p := plusFromRaw E F M K lo p.val p.property
  left_inv := plusFromRaw_plusRaw E F M K lo
  right_inv p := Subtype.ext (plusRaw_plusFromRaw E F M K lo p.val p.property)

def minusRaw (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A) :
    MinusData E F M K → Token A
  | (k, cost) =>
      let cc := costCode E F M lo cost
      (.minus cc.1, ![k.val, cc.2.1, cc.2.2, lo])

theorem minusRaw_valid (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A)
    (p : MinusData E F M K) : Minus E F M K lo (minusRaw E F M K lo p) := by
  exact ⟨p.1.property, costCode_valid E F M lo p.2, rfl⟩

noncomputable def minusFromRaw (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (p : Token A) (h : Minus E F M K lo p) : MinusData E F M K := by
  rcases p with ⟨tag, x⟩
  cases tag with
  | minus c => exact (⟨x 0, h.1⟩, costDecode E F M lo c (x 1) (x 2) h.2.1)
  | _ => simp [Minus] at h

theorem minusFromRaw_minusRaw (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A)
    (p : MinusData E F M K) :
    minusFromRaw E F M K lo (minusRaw E F M K lo p) (minusRaw_valid E F M K lo p) = p := by
  rcases p with ⟨k, cost⟩
  simp [minusFromRaw, minusRaw, costDecode_code]

theorem minusRaw_minusFromRaw (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (p : Token A) (h : Minus E F M K lo p) :
    minusRaw E F M K lo (minusFromRaw E F M K lo p h) = p := by
  rcases p with ⟨tag, x⟩
  cases tag with
  | minus c =>
      simp only [minusFromRaw, minusRaw, costCode_decode, Prod.mk.injEq, true_and]
      funext i
      fin_cases i <;> simp_all [Minus]
  | _ => simp [Minus] at h

noncomputable def minusEquiv (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A) :
    MinusData E F M K ≃ {p : Token A // Minus E F M K lo p} where
  toFun p := ⟨minusRaw E F M K lo p, minusRaw_valid E F M K lo p⟩
  invFun p := minusFromRaw E F M K lo p.val p.property
  left_inv := minusFromRaw_minusRaw E F M K lo
  right_inv p := Subtype.ext (minusRaw_minusFromRaw E F M K lo p.val p.property)

theorem ncard_plus (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A) :
    {p : Token A | Plus E F M K lo p}.ncard =
      (SourceEncoding.encode E F M K).rootReward +
        (SourceEncoding.encode E F M K).elementCount *
          BoardGadgets.formalReward (SourceEncoding.encode E F M K) := by
  rw [← Nat.card_coe_set_eq]
  change Nat.card {p : Token A // Plus E F M K lo p} = _
  rw [← Nat.card_congr (plusEquiv E F M K lo)]
  simp only [PlusData, Nat.card_sum, Nat.card_prod, Nat.card_fin,
    card_cost_encode E F M K, card_reward_encode E F M K]
  simp [CoverInstance.rootReward, BoardGadgets.formalReward, Nat.add_comm, Nat.add_left_comm,
    Nat.add_assoc]

theorem ncard_minus (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A) :
    {p : Token A | Minus E F M K lo p}.ncard =
      (SourceEncoding.encode E F M K).coverBudget * (SourceEncoding.encode E F M K).setCost := by
  rw [← Nat.card_coe_set_eq]
  change Nat.card {p : Token A // Minus E F M K lo p} = _
  rw [← Nat.card_congr (minusEquiv E F M K lo)]
  have hk : Nat.card {x : A // K x} = {x : A | K x}.ncard := Nat.card_coe_set_eq _
  simp [MinusData, Nat.card_prod, card_cost_encode E F M K, hk]

end EncloseHorse.Hardness.TokenPermutation
