import EncloseHorseVerified.Hardness.Weights

namespace EncloseHorse.Hardness.BoardReduction

open Geometry BoardGadgets

def slotSum (tail : List Gadget) (budget : Nat) (walls : Placement) (g : Nat) : Int :=
  ((List.range 3).map (fun s =>
    if (reach (board (.root :: tail) budget) walls).contains (pos g s) then
      ((((.root :: tail)[g]?.getD .root).tile s).points) else 0)).sum

def gateBonus (gs : List Gadget) (budget : Nat) (walls : Placement) (g : Nat) : Int :=
  if (gs[g]?.getD .root).isGate then
    bit ((reach (board gs budget) walls).contains (pos g 1)) else 0

private theorem conditional_eq_bit_mul (v : Bool) (n : Int) :
    (if v then n else 0) = bit v * n := by
  cases v <;> simp [bit]

/-- This identity is about actual reachable cells, rather than an assumed gadget score. -/
theorem slotSum_eq_base_plus_bonus (tail : List Gadget) (budget : Nat) (walls : Placement)
    (hl : legal (board (.root :: tail) budget) walls) (g : Nat)
    (hg : g < (.root :: tail).length) :
    slotSum tail budget walls g =
      baseWeight (hot (.root :: tail) budget walls) ((.root :: tail)[g]) +
        gateBonus (.root :: tail) budget walls g := by
  have hs (s : Nat) (hss : s < 3)
      (hw : ((.root :: tail)[g]).tile s ≠ .water)
      (hng : ((.root :: tail)[g]).tile s ≠ .grass) :=
    nongrass_slot_contains_eq_hot tail budget walls hl hg hss hw hng
  unfold slotSum gateBonus
  simp only [List.getElem?_eq_getElem hg, Option.getD_some,
    show List.range 3 = [0, 1, 2] from rfl,
    List.map_cons, List.map_nil, List.sum_cons, List.sum_nil]
  cases hgs : (.root :: tail)[g] with
  | root =>
    have h0 := hs 0 (by decide) (by simp [hgs, Gadget.tile]) (by simp [hgs, Gadget.tile])
    have h1 := hs 1 (by decide) (by simp [hgs, Gadget.tile]) (by simp [hgs, Gadget.tile])
    simp only [hgs, gadgetLabel] at h0 h1
    simp only [Gadget.tile, Tile.points, Gadget.isGate, baseWeight, Bool.false_eq_true,
      ite_false, h0, h1, conditional_eq_bit_mul, Int.mul_one, Int.mul_zero]
    omega
  | gate left right =>
    have h0 := hs 0 (by decide) (by simp [hgs, Gadget.tile]) (by simp [hgs, Gadget.tile])
    have h2 := hs 2 (by decide) (by simp [hgs, Gadget.tile]) (by simp [hgs, Gadget.tile])
    simp only [hgs, gadgetLabel] at h0 h2
    simp only [Gadget.tile, Tile.points, Gadget.isGate, baseWeight,
      ite_true, h0, h2, conditional_eq_bit_mul, Int.mul_one, Int.mul_zero]
    omega
  | bee label =>
    have h0 := hs 0 (by decide) (by simp [hgs, Gadget.tile]) (by simp [hgs, Gadget.tile])
    have h1 := hs 1 (by decide) (by simp [hgs, Gadget.tile]) (by simp [hgs, Gadget.tile])
    simp only [hgs, gadgetLabel] at h0 h1
    simp only [Gadget.tile, Tile.points, Gadget.isGate, baseWeight, Bool.false_eq_true,
      ite_false, h0, h1, conditional_eq_bit_mul, Int.mul_one, Int.mul_zero]
    omega
  | pad label =>
    have h0 := hs 0 (by decide) (by simp [hgs, Gadget.tile]) (by simp [hgs, Gadget.tile])
    simp only [hgs, gadgetLabel] at h0
    simp only [Gadget.tile, Tile.points, Gadget.isGate, baseWeight, Bool.false_eq_true,
      ite_false, h0, conditional_eq_bit_mul, Int.mul_one, Int.mul_zero]
    omega

private theorem sum_map_add {α : Type} (xs : List α) (f g : α → Int) :
    (xs.map (fun x => f x + g x)).sum = (xs.map f).sum + (xs.map g).sum := by
  induction xs with
  | nil => rfl
  | cons a xs ih =>
    simp only [List.map_cons, List.sum_cons, ih]
    omega

private theorem sum_range_getElem (gs : List Gadget) (f : Gadget → Int) :
    ((List.range gs.length).map (fun i => f (gs[i]?.getD .root))).sum = (gs.map f).sum := by
  have he : (List.range gs.length).map (fun i => gs[i]?.getD .root) = gs := by
    apply List.ext_getElem
    · simp
    · intro i hi hi'
      simp [List.getElem?_eq_getElem hi']
  have hm := congrArg (fun xs : List Gadget => (xs.map f).sum) he
  simpa only [List.map_map, Function.comp_def] using hm

/-- Exact real-game score decomposition into portal-group weights and gate grass. -/
theorem score_eq_base_plus_bonus (tail : List Gadget) (budget : Nat) (walls : Placement)
    (hl : legal (board (.root :: tail) budget) walls) :
    score (board (.root :: tail) budget) walls =
      ((.root :: tail).map (baseWeight (hot (.root :: tail) budget walls))).sum +
        ((List.range (.root :: tail).length).map
          (gateBonus (.root :: tail) budget walls)).sum := by
  rw [score_eq_gadget_sum]
  change ((List.range (.root :: tail).length).map (slotSum tail budget walls)).sum = _
  have he : (List.range (.root :: tail).length).map (slotSum tail budget walls) =
      (List.range (.root :: tail).length).map (fun g =>
        baseWeight (hot (.root :: tail) budget walls) ((.root :: tail)[g]?.getD .root) +
        gateBonus (.root :: tail) budget walls g) := by
    apply List.map_congr_left
    intro g hg
    have hgl := List.mem_range.mp hg
    simpa only [List.getElem?_eq_getElem hgl, Option.getD_some] using
      slotSum_eq_base_plus_bonus tail budget walls hl g hgl
  rw [he, sum_map_add, sum_range_getElem]

end EncloseHorse.Hardness.BoardReduction
