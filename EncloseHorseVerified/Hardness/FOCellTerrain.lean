import EncloseHorseVerified.Hardness.FOCellModel
import EncloseHorseVerified.Hardness.TokenPermutation

/-! The interpreted terrain and portal labels are those of the physical board. -/
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false
noncomputable section
namespace EncloseHorse.Hardness.FOEncoding

open FirstOrder DescriptiveComplexity Language Structure FOTokens

variable {A : Type} [Src.Structure A] [LinearOrder A]
variable (lo : A) (hlo : ∀ a, lo ≤ a)

include hlo

theorem cells_water_iff (f e : A → Nat) (x : OrderedCells.Cell (G lo)) :
    BoardEncoding.Water (cellsEquiv lo hlo x).val ↔
      OrderedCells.cellTile (fun g : G lo => decode f e g.val) x = .water := by
  rw [cellsEquiv_val, out_water lo hlo, cellTile_value, terrain_value_water]
  exact and_iff_right ((out_cell lo hlo _).mpr (cellValue_valid lo x))

theorem cells_grass_iff (f e : A → Nat) (x : OrderedCells.Cell (G lo)) :
    BoardEncoding.Grass (cellsEquiv lo hlo x).val ↔
      OrderedCells.cellTile (fun g : G lo => decode f e g.val) x = .grass := by
  rw [cellsEquiv_val, out_grass lo hlo, cellTile_value, terrain_value_grass]
  exact and_iff_right ((out_cell lo hlo _).mpr (cellValue_valid lo x))

theorem cells_horse_iff (f e : A → Nat) (x : OrderedCells.Cell (G lo)) :
    BoardEncoding.Horse (cellsEquiv lo hlo x).val ↔
      OrderedCells.cellTile (fun g : G lo => decode f e g.val) x = .horse := by
  rw [cellsEquiv_val, out_horse lo hlo, cellTile_value, terrain_value_horse]
  exact and_iff_right ((out_cell lo hlo _).mpr (cellValue_valid lo x))

theorem cells_bee_iff (f e : A → Nat) (x : OrderedCells.Cell (G lo)) :
    BoardEncoding.Bee (cellsEquiv lo hlo x).val ↔
      OrderedCells.cellTile (fun g : G lo => decode f e g.val) x = .bee := by
  rw [cellsEquiv_val, out_bee lo hlo, cellTile_value, terrain_value_bee]
  exact and_iff_right ((out_cell lo hlo _).mpr (cellValue_valid lo x))

theorem out_cherry_false (p : Out (A := A)) : ¬ BoardEncoding.Cherry p := by
  change ¬ (⊥ : OrdSrc.Formula (Fin 1 × Fin 4)).Realize (fun ij => (![p] ij.1).2 ij.2)
  simp

theorem out_apple_false (p : Out (A := A)) : ¬ BoardEncoding.Apple p := by
  change ¬ (⊥ : OrdSrc.Formula (Fin 1 × Fin 4)).Realize (fun ij => (![p] ij.1).2 ij.2)
  simp

theorem cells_cherry_iff (f e : A → Nat) (x : OrderedCells.Cell (G lo)) :
    BoardEncoding.Cherry (cellsEquiv lo hlo x).val ↔
      OrderedCells.cellTile (fun g : G lo => decode f e g.val) x = .cherry := by
  rw [cellTile_value]
  have hh := out_cherry_false lo hlo (cellsEquiv lo hlo x).val
  cases terrain (cellValue lo x).1 <;> simp_all [Terrain.value]

theorem cells_apple_iff (f e : A → Nat) (x : OrderedCells.Cell (G lo)) :
    BoardEncoding.Apple (cellsEquiv lo hlo x).val ↔
      OrderedCells.cellTile (fun g : G lo => decode f e g.val) x = .apple := by
  rw [cellTile_value]
  have hh := out_apple_false lo hlo (cellsEquiv lo hlo x).val
  cases terrain (cellValue lo x).1 <;> simp_all [Terrain.value]

theorem cells_portal_iff (f e : A → Nat) (x : OrderedCells.Cell (G lo)) :
    BoardEncoding.Portal (cellsEquiv lo hlo x).val ↔
      ∃ label, OrderedCells.cellTile (fun g : G lo => decode f e g.val) x = .portal label := by
  simp_rw [cellTile_value]
  rw [cellsEquiv_val, out_portal lo hlo, terrain_value_portal]
  exact and_iff_right ((out_cell lo hlo _).mpr (cellValue_valid lo x))

omit hlo in
def RoleValid (E F : A → Prop) (p : Payload A) : Role → Prop
  | .root => True
  | .family i => F (p i)
  | .element i => E (p i)

omit hlo in
def RoleSame (p q : Payload A) : Role → Role → Prop
  | .root, .root => True
  | .family i, .family j => p i = q j
  | .element i, .element j => p i = q j
  | _, _ => False

omit hlo in
theorem slot_role_valid (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (kind : GKind) (p : Payload A) (s : Nat) (r : Role)
    (hv : ValidGadget E F M K lo (kind,p)) (ht : slot kind s = .portal r) :
    RoleValid E F p r := by
  unfold ValidGadget at hv
  dsimp only at hv
  unfold slot at ht
  split_ifs at ht <;> simp_all [RoleValid]
  all_goals (try split_ifs at ht) <;> (try simp_all [RoleValid])
  all_goals subst r <;> simp_all [RoleValid]

omit hlo in
theorem terrain_role_valid (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (p : Token A) (r : Role) (hv : ValidCell E F M K lo p)
    (ht : terrain p.1 = .portal r) : RoleValid E F p.2 r := by
  rcases p with ⟨t,p⟩
  cases t <;> try simp [terrain] at ht
  case gadget kind phase col =>
    split_ifs at ht with hh
    · exact slot_role_valid lo E F M K kind p (col.val-1) r hv ht

section PortalIndices
variable [Finite A]

omit hlo in
theorem role_value_eq_iff (E F : A → Prop) (p q : Payload A) (r s : Role)
    (hr : RoleValid E F p r) (hs : RoleValid E F q s) :
    r.value (TokenPermutation.familyIndex F) (TokenPermutation.elementIndex E F) p =
      s.value (TokenPermutation.familyIndex F) (TokenPermutation.elementIndex E F) q ↔
        RoleSame p q r s := by
  cases r with
  | root =>
    cases s with
    | root => simp [Role.value, RoleSame]
    | family j => simp [Role.value, RoleSame]
    | element j =>
      have hh := TokenPermutation.elementIndex_lower E F (q j)
      simp only [Role.value, RoleSame, iff_false]
      omega
  | family i =>
    cases s with
    | root => simp [Role.value, RoleSame]
    | family j =>
      simp only [Role.value, RoleSame, Nat.add_right_cancel_iff]
      exact ⟨TokenPermutation.familyIndex_injective_on F hr hs, congrArg _⟩
    | element j =>
      have hi := TokenPermutation.familyIndex_lt F hr
      have hj := TokenPermutation.elementIndex_lower E F (q j)
      simp only [Role.value, RoleSame, iff_false]
      omega
  | element i =>
    cases s with
    | root =>
      have hh := TokenPermutation.elementIndex_lower E F (p i)
      simp only [Role.value, RoleSame, iff_false]
      omega
    | family j =>
      have hi := TokenPermutation.elementIndex_lower E F (p i)
      have hj := TokenPermutation.familyIndex_lt F hs
      simp only [Role.value, RoleSame, iff_false]
      omega
    | element j =>
      simp only [Role.value, RoleSame]
      exact ⟨TokenPermutation.elementIndex_injective_on E F hr hs, congrArg _⟩

end PortalIndices

omit hlo in
theorem realize_roleEqF {α : Type} {v : α → A} (r s : Role) (x y : Fin 4 → α) :
    (roleEqF r s x y).Realize v ↔ RoleSame (v ∘ x) (v ∘ y) r s := by
  cases r <;> cases s <;> simp [roleEqF, RoleSame, Function.comp_def]

omit hlo in
theorem realize_rawPortalF {α : Type} {v : α → A} (t u : Tag) (x y : Fin 4 → α) :
    (rawPortalF t u x y).Realize v ↔
      ∃ r s, terrain t = .portal r ∧ terrain u = .portal s ∧
        RoleSame (v ∘ x) (v ∘ y) r s := by
  cases ht : terrain t <;> cases hu : terrain u <;>
    simp [rawPortalF, ht, hu, realize_roleEqF]

omit hlo in
def portalVal (p q : Token A) (ij : Fin 2 × Fin 4) : A := (![p,q] ij.1).2 ij.2

theorem realize_portalCells (p q : Token A) :
    (cellF p.1 (fun i => (0,i)) ⊓ cellF q.1 (fun i => (1,i)) ⊓
      rawPortalF p.1 q.1 (fun i => (0,i)) (fun i => (1,i))).Realize (portalVal p q) ↔
      ValidCell SSElem SSFam SSMem SSMarked lo p ∧ ValidCell SSElem SSFam SSMem SSMarked lo q ∧
        ∃ r s, terrain p.1 = .portal r ∧ terrain q.1 = .portal s ∧ RoleSame p.2 q.2 r s := by
  simp only [Formula.realize_inf, realize_cellF lo hlo, realize_rawPortalF]
  simp only [portalVal, Function.comp_def, Matrix.cons_val_zero, Matrix.cons_val_succ,
    Matrix.cons_val_fin_one, Prod.eta]
  exact and_assoc

theorem out_portalLinked (p q : Out (A := A)) :
    BoardEncoding.PortalLinked p q ↔ BoardEncoding.Cell p ∧ BoardEncoding.Cell q ∧
      ∃ r s, terrain p.1 = .portal r ∧ terrain q.1 = .portal s ∧
        RoleSame p.2 q.2 r s := by
  rw [out_cell lo hlo p, out_cell lo hlo q]
  exact realize_portalCells lo hlo p q

section PortalCells
variable [Finite A]

noncomputable abbrev familyLabels : A → Nat := TokenPermutation.familyIndex SSFam
noncomputable abbrev elementLabels : A → Nat := TokenPermutation.elementIndex SSElem SSFam

theorem cells_portalLinked_iff (x y : OrderedCells.Cell (G lo)) :
    BoardEncoding.PortalLinked (cellsEquiv lo hlo x).val (cellsEquiv lo hlo y).val ↔
      ∃ label, OrderedCells.cellTile (fun g : G lo => decode familyLabels elementLabels g.val) x =
        .portal label ∧
        OrderedCells.cellTile (fun g : G lo => decode familyLabels elementLabels g.val) y =
          .portal label := by
  rw [cellsEquiv_val, cellsEquiv_val, out_portalLinked lo hlo]
  have hx := (out_cell lo hlo _).mpr (cellValue_valid lo x)
  have hy := (out_cell lo hlo _).mpr (cellValue_valid lo y)
  simp only [hx, hy, true_and]
  simp_rw [cellTile_value]
  constructor
  · rintro ⟨r,s,hr,hs,he⟩
    have hrv := terrain_role_valid lo SSElem SSFam SSMem SSMarked _ r (cellValue_valid lo x) hr
    have hsv := terrain_role_valid lo SSElem SSFam SSMem SSMarked _ s (cellValue_valid lo y) hs
    have heq := (role_value_eq_iff SSElem SSFam _ _ r s hrv hsv).mpr he
    refine ⟨r.value familyLabels elementLabels (cellValue lo x).2, ?_, ?_⟩
    · rw [hr]; rfl
    · rw [hs]
      exact congrArg Tile.portal heq.symm
  · rintro ⟨label,hx,hy⟩
    cases ht : terrain (cellValue lo x).1 <;> simp [ht, Terrain.value] at hx
    cases hu : terrain (cellValue lo y).1 <;> simp [hu, Terrain.value] at hy
    case portal.portal r s =>
      refine ⟨r,s,rfl,rfl,?_⟩
      apply (role_value_eq_iff SSElem SSFam _ _ r s
        (terrain_role_valid lo SSElem SSFam SSMem SSMarked _ r (cellValue_valid lo x) ht)
        (terrain_role_valid lo SSElem SSFam SSMem SSMarked _ s (cellValue_valid lo y) hu)).mp
      exact hx.trans hy.symm

end PortalCells

end EncloseHorse.Hardness.FOEncoding
end
