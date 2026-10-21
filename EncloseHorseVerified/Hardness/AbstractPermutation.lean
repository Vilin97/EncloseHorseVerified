import EncloseHorseVerified.Hardness.TokenCardinality
import Mathlib.Data.List.FinRange
import Mathlib.Data.List.Nodup
import Mathlib.Data.List.ProdSigma

/-! Enumerating each typed gadget exactly once, independently of its linear order. -/
namespace EncloseHorse.Hardness.AbstractPermutation

open FOTokens Geometry TokenPermutation

noncomputable def all (T : Type) [Finite T] : List T := by
  letI := Fintype.ofFinite T
  exact List.ofFn (Fintype.equivFin T).symm

@[simp] theorem all_length (T : Type) [Finite T] : (all T).length = Nat.card T := by
  letI := Fintype.ofFinite T
  simp [all, Nat.card_eq_fintype_card]

theorem all_nodup (T : Type) [Finite T] : (all T).Nodup := by
  letI := Fintype.ofFinite T
  exact List.nodup_ofFn.mpr (Fintype.equivFin T).symm.injective

@[simp] theorem mem_all {T : Type} [Finite T] (x : T) : x ∈ all T := by
  letI := Fintype.ofFinite T
  exact List.mem_ofFn.mpr ⟨Fintype.equivFin T x, (Fintype.equivFin T).symm_apply_apply x⟩

def sumList {X Y : Type} (xs : List X) (ys : List Y) : List (X ⊕ Y) :=
  xs.map Sum.inl ++ ys.map Sum.inr

theorem sumList_nodup {X Y : Type} (xs : List X) (ys : List Y)
    (hx : xs.Nodup) (hy : ys.Nodup) : (sumList xs ys).Nodup := by
  apply List.nodup_append.mpr
  exact ⟨hx.map Sum.inl_injective, hy.map Sum.inr_injective,
    by intro a ha b hb; obtain ⟨x,_,rfl⟩ := List.mem_map.mp ha
       obtain ⟨y,_,rfl⟩ := List.mem_map.mp hb
       simp⟩

theorem sumList_complete {X Y : Type} (xs : List X) (ys : List Y)
    (hx : ∀ x, x ∈ xs) (hy : ∀ y, y ∈ ys) (z : X ⊕ Y) : z ∈ sumList xs ys := by
  cases z <;> simp [sumList, hx, hy]

theorem product_complete {X Y : Type} (xs : List X) (ys : List Y)
    (hx : ∀ x, x ∈ xs) (hy : ∀ y, y ∈ ys) (z : X × Y) : z ∈ xs.product ys := by
  rcases z with ⟨x,y⟩
  exact List.mem_product.mpr ⟨hx x,hy y⟩

variable {A : Type} [Finite A]

noncomputable def families (F : A → Prop) : List {x // F x} :=
  List.ofFn (SourceEncoding.enumF F)
noncomputable def elements (E : A → Prop) : List {x // E x} :=
  List.ofFn (SourceEncoding.enumE E)

@[simp] theorem families_length (F : A → Prop) : (families F).length = Nat.card {x // F x} := by
  simp [families]
@[simp] theorem elements_length (E : A → Prop) : (elements E).length = Nat.card {x // E x} := by
  simp [elements]

theorem families_nodup (F : A → Prop) : (families F).Nodup :=
  List.nodup_ofFn.mpr (SourceEncoding.enumF F).injective

theorem elements_nodup (E : A → Prop) : (elements E).Nodup :=
  List.nodup_ofFn.mpr (SourceEncoding.enumE E).injective

@[simp] theorem mem_families (F : A → Prop) (x : {x // F x}) : x ∈ families F :=
  List.mem_ofFn.mpr ⟨(SourceEncoding.enumF F).symm x, (SourceEncoding.enumF F).apply_symm_apply x⟩
@[simp] theorem mem_elements (E : A → Prop) (x : {x // E x}) : x ∈ elements E :=
  List.mem_ofFn.mpr ⟨(SourceEncoding.enumE E).symm x, (SourceEncoding.enumE E).apply_symm_apply x⟩

noncomputable def costs (E F : A → Prop) (M : A → A → Prop) : List (Cost E F M) :=
  sumList [()] (sumList (families F) (all (Incidence E F M)))
noncomputable def rewards (F K : A → Prop) : List (Reward F K) :=
  sumList (List.finRange 2) (sumList (families F) (all {x // K x}))

noncomputable def abstractList (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) :
    List (AbstractGadget E F M K) :=
  sumList [()] (sumList ((families F).product (List.finRange 4))
    (sumList ((all (Incidence E F M)).product (List.finRange 7))
      (sumList ((families F).product ((costs E F M).product (List.finRange 3)))
        ((elements E).product ((rewards F K).product (costs E F M))))))

theorem costs_nodup (E F : A → Prop) (M : A → A → Prop) : (costs E F M).Nodup :=
  sumList_nodup _ _ (by simp) (sumList_nodup _ _ (families_nodup F) (all_nodup _))
theorem rewards_nodup (F K : A → Prop) : (rewards F K).Nodup :=
  sumList_nodup _ _ (List.nodup_finRange _) (sumList_nodup _ _ (families_nodup F) (all_nodup _))

theorem abstractList_nodup (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) :
    (abstractList E F M K).Nodup :=
  sumList_nodup _ _ (by simp) (sumList_nodup _ _ ((families_nodup F).product (List.nodup_finRange _))
    (sumList_nodup _ _ ((all_nodup _).product (List.nodup_finRange _))
      (sumList_nodup _ _ ((families_nodup F).product ((costs_nodup E F M).product (List.nodup_finRange _)))
        ((elements_nodup E).product ((rewards_nodup F K).product (costs_nodup E F M))))))

theorem costs_complete (E F : A → Prop) (M : A → A → Prop) : ∀ x, x ∈ costs E F M :=
  sumList_complete _ _ (by intro x; cases x; simp)
    (sumList_complete _ _ (mem_families F) (mem_all))
theorem rewards_complete (F K : A → Prop) : ∀ x, x ∈ rewards F K :=
  sumList_complete _ _ (fun _ => List.mem_finRange _)
    (sumList_complete _ _ (mem_families F) (mem_all))

theorem abstractList_complete (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) :
    ∀ x, x ∈ abstractList E F M K :=
  sumList_complete _ _ (by intro x; cases x; simp)
    (sumList_complete _ _ (product_complete _ _ (mem_families F) (fun _ => List.mem_finRange _))
      (sumList_complete _ _ (product_complete _ _ mem_all (fun _ => List.mem_finRange _))
        (sumList_complete _ _
          (product_complete _ _ (mem_families F)
            (product_complete _ _ (costs_complete E F M) (fun _ => List.mem_finRange _)))
          (product_complete _ _ (mem_elements E)
            (product_complete _ _ (rewards_complete F K) (costs_complete E F M))))))

/-- A complete nodup enumeration can be reordered into the explicit token blocks. -/
theorem perm_abstractList (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (xs : List (AbstractGadget E F M K)) (hn : xs.Nodup) (hc : ∀ x, x ∈ xs) :
    xs.Perm (abstractList E F M K) :=
  (List.perm_ext_iff_of_nodup hn (abstractList_nodup E F M K)).mpr
    (fun x => ⟨fun _ => abstractList_complete E F M K x, fun _ => hc x⟩)

noncomputable def decoded (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A)
    (g : AbstractGadget E F M K) : Gadget :=
  FOTokens.decode (familyIndex F) (elementIndex E F) (raw E F M K lo g)

@[simp] theorem decoded_root (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A) :
    decoded E F M K lo (.inl ()) = .root := rfl

theorem decoded_family_parts (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (x : {x // F x}) :
    (List.finRange 4).map (fun p => decoded E F M K lo (.inr (.inl (x,p)))) =
      BoardGadgets.rootBundle (familyIndex F x.val) := rfl

theorem decoded_incidence_parts (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (ie : Incidence E F M) :
    (List.finRange 7).map (fun p => decoded E F M K lo (.inr (.inr (.inl (ie,p))))) =
      [Gadget.gate (familyIndex F ie.val.1.val + 1) (elementIndex E F ie.val.2.val),
       .bee (familyIndex F ie.val.1.val + 1), .pad (familyIndex F ie.val.1.val + 1),
       .pad (familyIndex F ie.val.1.val + 1), .bee (elementIndex E F ie.val.2.val),
       .pad (elementIndex E F ie.val.2.val), .pad (elementIndex E F ie.val.2.val)] := rfl

theorem decoded_set_parts (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (x : {x // F x}) (c : Cost E F M) :
    (List.finRange 3).map (fun p => decoded E F M K lo (.inr (.inr (.inr (.inl (x,c,p)))))) =
      BoardGadgets.compensation (familyIndex F x.val + 1) := by
  rcases c with _ | f | ie <;>
    norm_num [decoded, raw, costCode, FOTokens.decode, BoardGadgets.compensation, List.finRange, List.ofFn_succ]

theorem decoded_element_pad (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (x : {x // E x}) (r : Reward F K) (c : Cost E F M) :
    decoded E F M K lo (.inr (.inr (.inr (.inr (x,r,c))))) =
      .pad (elementIndex E F x.val) := by
  rcases r with r | f | k <;> rcases c with _ | f' | ie
  · fin_cases r <;> rfl
  · fin_cases r <;> rfl
  · fin_cases r <;> rfl
  all_goals rfl

private theorem map_product {X Y Z : Type} (xs : List X) (ys : List Y) (f : X × Y → Z) :
    (xs.product ys).map f = xs.flatMap (fun x => ys.map (fun y => f (x,y))) := by
  simp only [List.product, List.map_flatMap, List.map_map, Function.comp_def]

private theorem flatMap_const {X Y : Type} (xs : List X) (ys : List Y) :
    xs.flatMap (fun _ => ys) = (List.replicate xs.length ys).flatten := by
  induction xs with
  | nil => rfl
  | cons a xs ih => simp only [List.flatMap_cons, List.length_cons, List.replicate_succ,
      List.flatten_cons, ih]

theorem families_index_map {B : Type} (F : A → Prop) (f : Nat → B) :
    (families F).map (fun x => f (familyIndex F x.val)) =
      (List.range (Nat.card {x // F x})).map f := by
  simp only [families, List.map_ofFn, familyIndex_enum]
  apply List.ext_getElem
  · simp
  · intro i hi hj
    simp

theorem elements_index_map {B : Type} (E F : A → Prop) (f : Nat → B) :
    (elements E).map (fun x => f (elementIndex E F x.val)) =
      (List.range (Nat.card {x // E x})).map (fun e => f (Nat.card {x // F x} + 1 + e)) := by
  simp only [elements, List.map_ofFn, elementIndex_enum]
  apply List.ext_getElem
  · simp
  · intro i hi hj
    simp

theorem map_root_block (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A) :
    (((families F).product (List.finRange 4)).map
      (fun x => decoded E F M K lo (.inr (.inl x)))) =
      (List.range (Nat.card {x // F x})).flatMap BoardGadgets.rootBundle := by
  rw [map_product]
  simp only [decoded_family_parts]
  have h := congrArg List.flatten (families_index_map F BoardGadgets.rootBundle)
  simpa only [List.flatMap_def] using h

theorem map_set_block (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A) :
    (((families F).product ((costs E F M).product (List.finRange 3))).map
      (fun x => decoded E F M K lo (.inr (.inr (.inr (.inl x)))))) =
      (List.range (Nat.card {x // F x})).flatMap (fun i =>
        (List.replicate (costs E F M).length (BoardGadgets.compensation (i+1))).flatten) := by
  rw [map_product]
  simp only [map_product, decoded_set_parts, flatMap_const]
  have h := congrArg List.flatten (families_index_map F (fun i =>
    (List.replicate (costs E F M).length (BoardGadgets.compensation (i+1))).flatten))
  simpa only [List.flatMap_def] using h

theorem map_element_block (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A) :
    (((elements E).product ((rewards F K).product (costs E F M))).map
      (fun x => decoded E F M K lo (.inr (.inr (.inr (.inr x)))))) =
      (List.range (Nat.card {x // E x})).flatMap (fun e =>
        List.replicate ((rewards F K).length * (costs E F M).length)
          (.pad (Nat.card {x // F x} + 1 + e))) := by
  rw [map_product]
  simp only [map_product, decoded_element_pad, List.map_const', flatMap_const, List.flatten_replicate_replicate]
  have h := congrArg List.flatten (elements_index_map E F (fun e =>
    List.replicate ((rewards F K).length * (costs E F M).length) (Gadget.pad e)))
  simpa only [List.flatMap_def] using h

@[simp] theorem costs_length (E F : A → Prop) (M : A → A → Prop) :
    (costs E F M).length = Nat.card (Cost E F M) := by
  simp [costs, sumList, Cost, Nat.card_sum, Nat.add_comm, Nat.add_assoc]

@[simp] theorem rewards_length (F K : A → Prop) :
    (rewards F K).length = Nat.card (Reward F K) := by
  simp [rewards, sumList, Reward, Nat.card_sum]

theorem incidencePairs_perm (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) :
    ((all (Incidence E F M)).map (incidencePair E F M)).Perm
      (SourceEncoding.encode E F M K).incidences := by
  let e := incidenceEquiv_encode E F M K
  have hinj : Function.Injective (incidencePair E F M) := by
    intro x y h
    apply e.injective
    exact Subtype.ext h
  apply (List.perm_ext_iff_of_nodup ((all_nodup _).map hinj) (incidences_nodup _)).mpr
  intro p
  constructor
  · intro hp
    obtain ⟨x,_,rfl⟩ := List.mem_map.mp hp
    exact incidencePair_mem E F M K x
  · intro hp
    refine List.mem_map.mpr ⟨e.symm ⟨p,hp⟩,mem_all _,?_⟩
    exact congrArg Subtype.val (e.apply_symm_apply ⟨p,hp⟩)

theorem decoded_incidence_bundle (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (ie : Incidence E F M) :
    (List.finRange 7).map (fun p => decoded E F M K lo (.inr (.inr (.inl (ie,p))))) =
      BoardGadgets.incidenceBundle (SourceEncoding.encode E F M K) (incidencePair E F M ie) := by
  rw [decoded_incidence_parts]
  simp [BoardGadgets.incidenceBundle, BoardGadgets.compensation, setLabel, elementLabel,
    incidencePair, familyIndex, elementIndex, ie.val.1.property, ie.val.2.property]

theorem map_incidence_block_perm (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A) :
    (((all (Incidence E F M)).product (List.finRange 7)).map
      (fun x => decoded E F M K lo (.inr (.inr (.inl x))))).Perm
      ((SourceEncoding.encode E F M K).incidences.flatMap
        (BoardGadgets.incidenceBundle (SourceEncoding.encode E F M K))) := by
  rw [map_product]
  simp only [decoded_incidence_bundle]
  have h := (incidencePairs_perm E F M K).flatMap_right
    (BoardGadgets.incidenceBundle (SourceEncoding.encode E F M K))
  simpa only [List.flatMap_map, Function.comp_def] using h

/-- Every typed gadget is materialized exactly once; its block order is irrelevant. -/
theorem decoded_abstractList_perm (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) :
    ((abstractList E F M K).map (decoded E F M K lo)).Perm
      (BoardGadgets.gadgets (SourceEncoding.encode E F M K)) := by
  let a := SourceEncoding.encode E F M K
  have hcost : (costs E F M).length = a.setCost := by
    rw [costs_length, card_cost_encode E F M K]
  have hreward : (rewards F K).length * (costs E F M).length = BoardGadgets.formalReward a := by
    rw [rewards_length, card_reward_encode E F M K, hcost]
    rfl
  unfold abstractList
  simp only [sumList, List.map_append, List.map_map, Function.comp_def, List.map_cons,
    List.map_nil, decoded_root]
  rw [map_root_block, map_set_block, map_element_block, hreward, hcost]
  have hi := map_incidence_block_perm E F M K lo
  have h := (List.Perm.refl
      ((List.range (Nat.card {x // F x})).flatMap BoardGadgets.rootBundle)).append
    (hi.append (List.Perm.refl
      ((List.range (Nat.card {x // F x})).flatMap (fun i =>
        (List.replicate a.setCost (BoardGadgets.compensation (i+1))).flatten) ++
      (List.range (Nat.card {x // E x})).flatMap (fun e =>
        List.replicate (BoardGadgets.formalReward a) (.pad (Nat.card {x // F x}+1+e))))))
  have hset : BoardGadgets.setPadding a = (fun i =>
    (List.replicate a.setCost (BoardGadgets.compensation (i+1))).flatten) := rfl
  have hpad : BoardGadgets.elementPadding a = (fun e =>
    List.replicate (BoardGadgets.formalReward a) (.pad (Nat.card {x // F x}+1+e))) := by
    funext e
    simp only [a, BoardGadgets.elementPadding, elementLabel, SourceEncoding.setCount_encode]
  have heq : BoardGadgets.gadgets a = .root ::
      ((List.range (Nat.card {x // F x})).flatMap BoardGadgets.rootBundle ++
      a.incidences.flatMap (BoardGadgets.incidenceBundle a) ++
      (List.range (Nat.card {x // F x})).flatMap (fun i =>
        (List.replicate a.setCost (BoardGadgets.compensation (i+1))).flatten) ++
      (List.range (Nat.card {x // E x})).flatMap (fun e =>
        List.replicate (BoardGadgets.formalReward a) (.pad (Nat.card {x // F x}+1+e)))) := by
    unfold BoardGadgets.gadgets
    rw [hset,hpad]
    simp only [a, SourceEncoding.setCount_encode, SourceEncoding.elementCount_encode]
  rw [heq]
  simpa only [List.append_assoc, List.cons_append, List.nil_append] using h.cons .root


/-- Any complete duplicate-free typed enumeration decodes to the canonical
source-instance gadget multiset. -/
theorem decoded_complete_perm (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (xs : List (AbstractGadget E F M K))
    (hn : xs.Nodup) (hc : ∀ x, x ∈ xs) :
    (xs.map (decoded E F M K lo)).Perm
      (BoardGadgets.gadgets (SourceEncoding.encode E F M K)) :=
  ((perm_abstractList E F M K xs hn hc).map (decoded E F M K lo)).trans
    (decoded_abstractList_perm E F M K lo)

end EncloseHorse.Hardness.AbstractPermutation
