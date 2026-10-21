import EncloseHorseVerified.Hardness.SetCover
import DescriptiveComplexity.Problems.SetFamily.Defs

/-! A semantic decoding of finite relational Set Cover inputs. This does not
itself assert that any Board compiler is polynomial-time; that obligation is
the separate first-order interpretation of the expanded physical matrix. -/

namespace EncloseHorse.Hardness.SourceEncoding

open DescriptiveComplexity

variable {A : Type} [Finite A]

noncomputable def enum (P : A → Prop) : Fin (Nat.card {x // P x}) ≃ {x // P x} := by
  letI := Fintype.ofFinite {x // P x}
  exact (Fintype.equivFinOfCardEq Nat.card_eq_fintype_card.symm).symm

noncomputable abbrev enumE (E : A → Prop) := enum E
noncomputable abbrev enumF (F : A → Prop) := enum F

noncomputable def encode (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) :
    CoverInstance := by
  classical
  exact
    { elementCount := Nat.card {x // E x}
      sets := List.ofFn fun i : Fin (Nat.card {x // F x}) =>
        ((List.finRange (Nat.card {x // E x})).filter fun e =>
          decide (M (enumE E e).val (enumF F i).val)).map Fin.val
      coverBudget := {x | K x}.ncard }

@[simp] theorem elementCount_encode (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) :
    (encode E F M K).elementCount = Nat.card {x // E x} := rfl

@[simp] theorem setCount_encode (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) :
    (encode E F M K).setCount = Nat.card {x // F x} := by
  simp [CoverInstance.setCount, encode]

@[simp] theorem budget_encode (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) :
    (encode E F M K).coverBudget = {x | K x}.ncard := rfl

theorem mem_encode_members (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (i : Fin (Nat.card {x // F x})) (e : Fin (Nat.card {x // E x})) :
    e.val ∈ (encode E F M K).members i.val ↔ M (enumE E e).val (enumF F i).val := by
  classical
  have hi : i.val < (encode E F M K).sets.length := by
    simpa [encode] using i.isLt
  simp only [mem_members_iff, elementCount_encode, e.isLt, true_and]
  rw [List.getElem?_eq_getElem hi]
  simp only [encode, List.getElem_ofFn, Option.getD_some, List.mem_map, List.mem_filter,
    List.mem_finRange, true_and, decide_eq_true_eq]
  constructor
  · rintro ⟨j, hj, heq⟩
    have he : j = e := Fin.ext heq
    simpa [he] using hj
  · intro h
    exact ⟨e, h, rfl⟩

theorem mem_encode_incidences (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (i : Fin (Nat.card {x // F x})) (e : Fin (Nat.card {x // E x})) :
    (i.val, e.val) ∈ (encode E F M K).incidences ↔
      M (enumE E e).val (enumF F i).val := by
  simp only [CoverInstance.incidences, List.mem_flatMap, List.mem_map]
  constructor
  · rintro ⟨j, _, e', he', heq⟩
    obtain ⟨rfl, rfl⟩ := Prod.mk.inj heq
    exact (mem_encode_members E F M K i e).mp he'
  · intro h
    refine ⟨i.val, ?_, e.val, (mem_encode_members E F M K i e).mpr h, rfl⟩
    simpa using i.isLt

private noncomputable def selected (F G : A → Prop) (hGF : ∀ x, G x → F x) : List Nat :=
  List.ofFn fun i : Fin (Nat.card {x // G x}) =>
    ((enumF F).symm ⟨(enum G i).val, hGF _ (enum G i).property⟩).val

private theorem selected_nodup (F G : A → Prop) (hGF : ∀ x, G x → F x) :
    (selected F G hGF).Nodup := by
  apply List.nodup_ofFn.mpr
  intro i j hij
  have hF : (enumF F).symm ⟨(enum G i).val, hGF _ (enum G i).property⟩ =
      (enumF F).symm ⟨(enum G j).val, hGF _ (enum G j).property⟩ := Fin.ext hij
  have hval := congrArg Subtype.val ((enumF F).symm.injective hF)
  exact (enum G).injective (Subtype.ext hval)

private theorem selected_mem (F G : A → Prop) (hGF : ∀ x, G x → F x)
    (x : A) (hx : G x) : ((enumF F).symm ⟨x, hGF x hx⟩).val ∈ selected F G hGF := by
  apply List.mem_ofFn.mpr
  refine ⟨(enum G).symm ⟨x, hx⟩, ?_⟩
  simp

theorem coverYES_of_coversOn (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (h : CoversOn E F M K) : CoverYES (encode E F M K) := by
  classical
  obtain ⟨G, hGF, hcover, hcard⟩ := h
  refine ⟨selected F G hGF, selected_nodup F G hGF, ?_, ?_, ?_⟩
  · intro i hi
    obtain ⟨j, rfl⟩ := List.mem_ofFn.mp hi
    simpa using ((enumF F).symm ⟨(enum G j).val, hGF _ (enum G j).property⟩).isLt
  · have hc : Nat.card {x // G x} = {x | G x}.ncard := Nat.card_coe_set_eq _
    simpa only [selected, List.length_ofFn, budget_encode, hc] using hcard
  · intro e he
    let ee : Fin (Nat.card {x // E x}) := ⟨e, he⟩
    obtain ⟨x, hx, hM⟩ := hcover (enumE E ee).val (enumE E ee).property
    let ii := (enumF F).symm ⟨x, hGF x hx⟩
    refine ⟨ii.val, selected_mem F G hGF x hx, ?_⟩
    exact (mem_encode_members E F M K ii ee).mpr (by simpa [ii] using hM)

theorem coversOn_of_coverYES (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (h : CoverYES (encode E F M K)) : CoversOn E F M K := by
  classical
  obtain ⟨chosen, h⟩ := h
  have hi : ∀ i ∈ chosen, i < Nat.card {x // F x} := by
    intro i him
    simpa using h.in_range i him
  let decoded : List A := chosen.attach.map fun i => (enumF F ⟨i.val, hi i.val i.property⟩).val
  let g : Finset A := decoded.toFinset
  have mem_g (i : Nat) (him : i ∈ chosen) :
      (enumF F ⟨i, hi i him⟩).val ∈ g := by
    apply List.mem_toFinset.mpr
    exact List.mem_map.mpr ⟨⟨i, him⟩, List.mem_attach _ _, rfl⟩
  refine ⟨fun x => x ∈ g, ?_, ?_, ?_⟩
  · intro x hx
    obtain ⟨i, _, rfl⟩ := List.mem_map.mp (List.mem_toFinset.mp hx)
    exact (enumF F ⟨i.val, hi i.val i.property⟩).property
  · intro x hx
    let e := (enumE E).symm ⟨x, hx⟩
    obtain ⟨i, him, hm⟩ := h.cover e.val e.isLt
    let ii : Fin (Nat.card {x // F x}) := ⟨i, hi i him⟩
    refine ⟨(enumF F ii).val, mem_g i him, ?_⟩
    have hh := (mem_encode_members E F M K ii e).mp hm
    simpa [e] using hh
  · change (g : Set A).ncard ≤ _
    rw [Set.ncard_coe_finset]
    calc g.card ≤ decoded.length := List.toFinset_card_le decoded
      _ = chosen.length := by simp [decoded]
      _ ≤ {x | K x}.ncard := h.budget

/-- The native list problem and the existing library's independent source problem agree. -/
theorem coverYES_encode_iff (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) :
    CoverYES (encode E F M K) ↔ CoversOn E F M K :=
  ⟨coversOn_of_coverYES E F M K, coverYES_of_coversOn E F M K⟩

end EncloseHorse.Hardness.SourceEncoding
