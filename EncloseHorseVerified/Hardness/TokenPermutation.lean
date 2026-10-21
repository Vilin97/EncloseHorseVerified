import EncloseHorseVerified.Hardness.FOTokens
import EncloseHorseVerified.Hardness.SourceEncoding
import EncloseHorseVerified.Hardness.Weights

namespace EncloseHorse.Hardness.TokenPermutation

open FOTokens Geometry

variable {A : Type} [Finite A]

noncomputable def familyIndex (F : A → Prop) (x : A) : Nat := by
  classical
  exact if h : F x then ((SourceEncoding.enumF F).symm ⟨x, h⟩).val else 0

noncomputable def elementIndex (E F : A → Prop) (x : A) : Nat := by
  classical
  exact Nat.card {x // F x} + 1 +
    if h : E x then ((SourceEncoding.enumE E).symm ⟨x, h⟩).val else 0

theorem familyIndex_lt (F : A → Prop) {x : A} (hx : F x) :
    familyIndex F x < Nat.card {x // F x} := by
  simpa only [familyIndex, dif_pos hx] using ((SourceEncoding.enumF F).symm ⟨x, hx⟩).isLt

theorem familyIndex_injective_on (F : A → Prop) {x y : A} (hx : F x) (hy : F y)
    (h : familyIndex F x = familyIndex F y) : x = y := by
  simp only [familyIndex, dif_pos hx, dif_pos hy] at h
  exact congrArg Subtype.val ((SourceEncoding.enumF F).symm.injective (Fin.ext h))

theorem elementIndex_lower (E F : A → Prop) (x : A) :
    Nat.card {x // F x} + 1 ≤ elementIndex E F x := by
  unfold elementIndex
  omega

theorem elementIndex_injective_on (E F : A → Prop) {x y : A} (hx : E x) (hy : E y)
    (h : elementIndex E F x = elementIndex E F y) : x = y := by
  simp only [elementIndex, dif_pos hx, dif_pos hy, Nat.add_left_cancel_iff] at h
  exact congrArg Subtype.val ((SourceEncoding.enumE E).symm.injective (Fin.ext h))

@[simp] theorem familyIndex_enum (F : A → Prop) (i : Fin (Nat.card {x // F x})) :
    familyIndex F (SourceEncoding.enumF F i).val = i.val := by
  simp [familyIndex, (SourceEncoding.enumF F i).property]

@[simp] theorem elementIndex_enum (E F : A → Prop) (i : Fin (Nat.card {x // E x})) :
    elementIndex E F (SourceEncoding.enumE E i).val = Nat.card {x // F x} + 1 + i.val := by
  simp [elementIndex, (SourceEncoding.enumE E i).property]

abbrev Incidence (E F : A → Prop) (M : A → A → Prop) :=
  {p : {x // F x} × {x // E x} // M p.2.val p.1.val}

abbrev Cost (E F : A → Prop) (M : A → A → Prop) :=
  Unit ⊕ ({x // F x} ⊕ Incidence E F M)

abbrev Reward (F K : A → Prop) := Fin 2 ⊕ ({x // F x} ⊕ {x // K x})

abbrev AbstractGadget (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) :=
  Unit ⊕ (({x // F x} × Fin 4) ⊕ ((Incidence E F M × Fin 7) ⊕
    (({x // F x} × Cost E F M × Fin 3) ⊕ ({x // E x} × Reward F K × Cost E F M))))

def costCode (E F : A → Prop) (M : A → A → Prop) (lo : A) :
    Cost E F M → Fin 3 × A × A
  | .inl _ => (0, lo, lo)
  | .inr (.inl x) => (1, x.val, lo)
  | .inr (.inr p) => (2, p.val.1.val, p.val.2.val)

def rewardCode (F K : A → Prop) (lo : A) : Reward F K → Fin 4 × A
  | .inl i => (⟨i.val, by omega⟩, lo)
  | .inr (.inl x) => (2, x.val)
  | .inr (.inr x) => (3, x.val)

def raw (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A) :
    AbstractGadget E F M K → RawGadget A
  | .inl _ => (0, ![lo, lo, lo, lo])
  | .inr (.inl (x, p)) => (⟨1 + p.val, by omega⟩, ![x.val, lo, lo, lo])
  | .inr (.inr (.inl (ie, p))) =>
      (⟨5 + p.val, by omega⟩, ![ie.val.1.val, ie.val.2.val, lo, lo])
  | .inr (.inr (.inr (.inl (x, cost, p)))) =>
      let cc := costCode E F M lo cost
      (⟨12 + 3 * cc.1.val + p.val, by have := cc.1.isLt; omega⟩,
        ![x.val, cc.2.1, cc.2.2, lo])
  | .inr (.inr (.inr (.inr (x, reward, cost)))) =>
      let rr := rewardCode F K lo reward
      let cc := costCode E F M lo cost
      (⟨21 + 3 * rr.1.val + cc.1.val, by have := cc.1.isLt; have := rr.1.isLt; omega⟩,
        ![x.val, rr.2, cc.2.1, cc.2.2])

theorem raw_valid (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A)
    (g : AbstractGadget E F M K) : ValidGadget E F M K lo (raw E F M K lo g) := by
  rcases g with _ | ⟨x, p⟩ | ⟨ie, p⟩ | ⟨x, cost, p⟩ | ⟨x, reward, cost⟩
  · simp only [raw, ValidGadget, ↓reduceIte, AllMin]
    intro i
    fin_cases i <;> rfl
  · fin_cases p <;> simp [raw, ValidGadget, x.property]
  · fin_cases p <;> simp [raw, ValidGadget, ie.val.1.property, ie.val.2.property, ie.property]
  · rcases cost with _ | c | ie
    · fin_cases p <;> simp [raw, costCode, ValidGadget, CostValid, x.property]
    · fin_cases p <;> simp [raw, costCode, ValidGadget, CostValid, x.property, c.property]
    · fin_cases p <;> simp [raw, costCode, ValidGadget, CostValid, x.property,
        ie.val.1.property, ie.val.2.property, ie.property]
  · rcases reward with rr | f | k
    · rcases cost with _ | f' | ie
      · fin_cases rr <;> simp [raw, rewardCode, costCode, ValidGadget, RewardValid, CostValid, x.property]
      · fin_cases rr <;> simp [raw, rewardCode, costCode, ValidGadget, RewardValid, CostValid,
          x.property, f'.property]
      · fin_cases rr <;> simp [raw, rewardCode, costCode, ValidGadget, RewardValid, CostValid,
          x.property, ie.val.1.property, ie.val.2.property, ie.property]
    · rcases cost with _ | f' | ie
      · simp [raw, rewardCode, costCode, ValidGadget, RewardValid, CostValid, x.property, f.property]
      · simp [raw, rewardCode, costCode, ValidGadget, RewardValid, CostValid,
          x.property, f.property, f'.property]
      · simp [raw, rewardCode, costCode, ValidGadget, RewardValid, CostValid,
          x.property, f.property, ie.val.1.property, ie.val.2.property, ie.property]
    · rcases cost with _ | f' | ie
      · simp [raw, rewardCode, costCode, ValidGadget, RewardValid, CostValid, x.property, k.property]
      · simp [raw, rewardCode, costCode, ValidGadget, RewardValid, CostValid,
          x.property, k.property, f'.property]
      · simp [raw, rewardCode, costCode, ValidGadget, RewardValid, CostValid,
          x.property, k.property, ie.val.1.property, ie.val.2.property, ie.property]

noncomputable def costDecode (E F : A → Prop) (M : A → A → Prop) (lo : A)
    (kind : Fin 3) (x y : A) (h : CostValid E F M lo kind x y) : Cost E F M := by
  classical
  by_cases h0 : kind = 0
  · exact .inl ()
  by_cases h1 : kind = 1
  · have hh : F x ∧ y = lo := by simpa [CostValid, h0, h1] using h
    exact .inr (.inl ⟨x, hh.1⟩)
  · have hh : F x ∧ E y ∧ M y x := by simpa [CostValid, h0, h1] using h
    exact .inr (.inr ⟨(⟨x, hh.1⟩, ⟨y, hh.2.1⟩), hh.2.2⟩)

theorem costCode_decode (E F : A → Prop) (M : A → A → Prop) (lo : A)
    (kind : Fin 3) (x y : A) (h : CostValid E F M lo kind x y) :
    costCode E F M lo (costDecode E F M lo kind x y h) = (kind, x, y) := by
  fin_cases kind
  · have hh : x = lo ∧ y = lo := by simpa [CostValid] using h
    rcases hh with ⟨rfl, rfl⟩
    rfl
  · have hh : F x ∧ y = lo := by simpa [CostValid] using h
    rcases hh with ⟨_, rfl⟩
    rfl
  · rfl

theorem costDecode_code (E F : A → Prop) (M : A → A → Prop) (lo : A)
    (c : Cost E F M)
    (h : CostValid E F M lo (costCode E F M lo c).1
      (costCode E F M lo c).2.1 (costCode E F M lo c).2.2) :
    costDecode E F M lo (costCode E F M lo c).1
      (costCode E F M lo c).2.1 (costCode E F M lo c).2.2 h = c := by
  rcases c with u | f | ie
  · cases u; rfl
  · rfl
  · rfl

noncomputable def rewardDecode (F K : A → Prop) (lo : A)
    (kind : Fin 4) (x : A) (h : RewardValid F K lo kind x) : Reward F K := by
  classical
  by_cases h2 : kind < 2
  · exact .inl ⟨kind.val, h2⟩
  by_cases hEq : kind = 2
  · have hx : F x := by simpa [RewardValid, h2, hEq] using h
    exact .inr (.inl ⟨x, hx⟩)
  · have hx : K x := by simpa [RewardValid, h2, hEq] using h
    exact .inr (.inr ⟨x, hx⟩)

theorem rewardCode_decode (F K : A → Prop) (lo : A)
    (kind : Fin 4) (x : A) (h : RewardValid F K lo kind x) :
    rewardCode F K lo (rewardDecode F K lo kind x h) = (kind, x) := by
  fin_cases kind
  · have hx : x = lo := by simpa [RewardValid] using h
    subst x; rfl
  · have hx : x = lo := by simpa [RewardValid] using h
    subst x; rfl
  · rfl
  · rfl

theorem rewardDecode_code (F K : A → Prop) (lo : A) (r : Reward F K)
    (h : RewardValid F K lo (rewardCode F K lo r).1 (rewardCode F K lo r).2) :
    rewardDecode F K lo (rewardCode F K lo r).1 (rewardCode F K lo r).2 h = r := by
  rcases r with i | f | k
  · fin_cases i <;> rfl
  · rfl
  · rfl

noncomputable def fromRaw (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (g : RawGadget A) (h : ValidGadget E F M K lo g) : AbstractGadget E F M K := by
  classical
  let kind := g.1
  let x := g.2
  by_cases h0 : kind = 0
  · exact .inl ()
  have hn0 : kind.val ≠ 0 := by intro hz; exact h0 (Fin.ext hz)
  by_cases h5 : kind < 5
  · have hh : F (x 0) ∧ x 1 = lo ∧ x 2 = lo ∧ x 3 = lo := by
      simpa [ValidGadget, kind, x, h0, h5] using h
    have hn5 : kind.val < 5 := h5
    exact .inr (.inl (⟨x 0, hh.1⟩, ⟨kind.val - 1, by omega⟩))
  have hn5 : 5 ≤ kind.val := Nat.le_of_not_lt h5
  by_cases h12 : kind < 12
  · have hh : F (x 0) ∧ E (x 1) ∧ M (x 1) (x 0) ∧ x 2 = lo ∧ x 3 = lo := by
      simpa [ValidGadget, kind, x, h0, h5, h12] using h
    have hn12 : kind.val < 12 := h12
    exact .inr (.inr (.inl
      (⟨(⟨x 0, hh.1⟩, ⟨x 1, hh.2.1⟩), hh.2.2.1⟩, ⟨kind.val - 5, by omega⟩)))
  by_cases h21 : kind < 21
  · have hh : F (x 0) ∧ CostValid E F M lo
        ⟨((kind.val - 12) / 3) % 3, Nat.mod_lt _ (by decide)⟩ (x 1) (x 2) ∧ x 3 = lo := by
      simpa [ValidGadget, kind, x, h0, h5, h12, h21] using h
    exact .inr (.inr (.inr (.inl (⟨x 0, hh.1⟩,
      costDecode E F M lo _ (x 1) (x 2) hh.2.1,
      ⟨(kind.val - 12) % 3, Nat.mod_lt _ (by decide)⟩))))
  · have hh : E (x 0) ∧ RewardValid F K lo
        ⟨((kind.val - 21) / 3) % 4, Nat.mod_lt _ (by decide)⟩ (x 1) ∧
        CostValid E F M lo ⟨(kind.val - 21) % 3, Nat.mod_lt _ (by decide)⟩ (x 2) (x 3) := by
      simpa [ValidGadget, kind, x, h0, h5, h12, h21] using h
    exact .inr (.inr (.inr (.inr (⟨x 0, hh.1⟩,
      rewardDecode F K lo _ (x 1) hh.2.1, costDecode E F M lo _ (x 2) (x 3) hh.2.2))))

theorem fromRaw_raw (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A)
    (g : AbstractGadget E F M K) :
    fromRaw E F M K lo (raw E F M K lo g) (raw_valid E F M K lo g) = g := by
  rcases g with u | ⟨x, p⟩ | ⟨ie, p⟩ | ⟨x, cost, p⟩ | ⟨x, reward, cost⟩
  · cases u; rfl
  · fin_cases p <;> rfl
  · fin_cases p <;> rfl
  · rcases cost with u | c | ie
    · cases u; fin_cases p <;> simp [fromRaw, raw, costCode, costDecode]
    · fin_cases p <;> simp [fromRaw, raw, costCode, costDecode]
    · fin_cases p <;> simp [fromRaw, raw, costCode, costDecode]
  · rcases reward with rr | f | k
    · rcases cost with u | f' | ie
      · cases u; fin_cases rr <;> simp [fromRaw, raw, costCode, costDecode, rewardCode, rewardDecode]
      · fin_cases rr <;> simp [fromRaw, raw, costCode, costDecode, rewardCode, rewardDecode]
      · fin_cases rr <;> simp [fromRaw, raw, costCode, costDecode, rewardCode, rewardDecode]
    · rcases cost with u | f' | ie
      · cases u; simp [fromRaw, raw, costCode, costDecode, rewardCode, rewardDecode]
      · simp [fromRaw, raw, costCode, costDecode, rewardCode, rewardDecode]
      · simp [fromRaw, raw, costCode, costDecode, rewardCode, rewardDecode]
    · rcases cost with u | f' | ie
      · cases u; simp [fromRaw, raw, costCode, costDecode, rewardCode, rewardDecode]
      · simp [fromRaw, raw, costCode, costDecode, rewardCode, rewardDecode]
      · simp [fromRaw, raw, costCode, costDecode, rewardCode, rewardDecode]

theorem raw_fromRaw (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A)
    (g : RawGadget A) (h : ValidGadget E F M K lo g) :
    raw E F M K lo (fromRaw E F M K lo g h) = g := by
  rcases g with ⟨kind, x⟩
  fin_cases kind <;> simp [fromRaw, raw, costCode_decode, rewardCode_decode]
  all_goals
    funext i
    fin_cases i <;> simp_all [ValidGadget, AllMin]

/-- The physical token universe is precisely the polynomial sum of products. -/
noncomputable def rawEquiv (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A) :
    AbstractGadget E F M K ≃ {g : RawGadget A // ValidGadget E F M K lo g} where
  toFun g := ⟨raw E F M K lo g, raw_valid E F M K lo g⟩
  invFun g := fromRaw E F M K lo g.val g.property
  left_inv := fromRaw_raw E F M K lo
  right_inv g := Subtype.ext (raw_fromRaw E F M K lo g.val g.property)

end EncloseHorse.Hardness.TokenPermutation
