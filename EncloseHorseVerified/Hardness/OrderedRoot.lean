import EncloseHorseVerified.Hardness.OrderedCells

/-! Root-first ordering and the unique physical horse of an ordered gadget layout. -/
namespace EncloseHorse.Hardness.OrderedCells

open Geometry

variable {G : Type} [Fintype G] [LinearOrder G]

private theorem gadget_tile_horse_iff (g : Gadget) {s : Nat} (hs : s < 3) :
    g.tile s = .horse ↔ g = .root ∧ s = 0 := by
  have hc : s = 0 ∨ s = 1 ∨ s = 2 := by omega
  rcases hc with rfl | rfl | rfl <;> cases g <;> simp [Gadget.tile]

omit [Fintype G] [LinearOrder G] in
/-- A horse cell is precisely column one in the first phase of a root gadget. -/
theorem cellTile_horse_inr (decode : G → Gadget) (g : G) (phase : Fin 2) (c : Fin 5) :
    cellTile decode (.inr (g, phase, c)) = .horse ↔
      decode g = .root ∧ phase = 0 ∧ c = 1 := by
  by_cases hc : phase.val = 0 ∧ 1 ≤ c.val ∧ c.val ≤ 3
  · have hs : c.val - 1 < 3 := by omega
    simp only [cellTile, ite_eq_left hc, gadget_tile_horse_iff _ hs]
    constructor
    · rintro ⟨hg, hzero⟩
      refine ⟨hg, Fin.ext hc.1, Fin.ext ?_⟩
      change c.val = 1
      omega
    · rintro ⟨hg, _, hcol⟩
      exact ⟨hg, by rw [hcol]; rfl⟩
  · simp only [cellTile, ite_eq_right hc, reduceCtorEq, false_iff]
    rintro ⟨_, rfl, rfl⟩
    exact hc (by decide)

omit [Fintype G] [LinearOrder G] in
theorem cellTile_horse_iff (decode : G → Gadget) (x : Cell G) :
    cellTile decode x = .horse ↔
      ∃ g, decode g = .root ∧ x = .inr (g, 0, 1) := by
  rcases x with c | ⟨g, phase, c⟩
  · simp [cellTile]
  · rw [cellTile_horse_inr]
    constructor
    · rintro ⟨hg, rfl, rfl⟩
      exact ⟨g, hg, rfl⟩
    · rintro ⟨h, hh, heq⟩
      have heq' := Sum.inr.inj heq
      have hgh : g = h := (Prod.mk.inj heq').1
      have hpc := Prod.mk.inj (Prod.mk.inj heq').2
      exact ⟨by rw [hgh]; exact hh, hpc⟩

omit [Fintype G] [LinearOrder G] in
/-- A unique root token gives exactly one horse among the abstract expanded cells. -/
theorem unique_cellHorse (decode : G → Gadget) (g0 : G)
    (hroot : decode g0 = .root) (hunique : ∀ g, decode g = .root → g = g0) :
    ∃ x : Cell G, cellTile decode x = .horse ∧
      ∀ y : Cell G, cellTile decode y = .horse → y = x := by
  refine ⟨.inr (g0, 0, 1), (cellTile_horse_inr decode g0 0 1).mpr ⟨hroot, rfl, rfl⟩, ?_⟩
  intro y hy
  obtain ⟨g, hg, heq⟩ := (cellTile_horse_iff decode y).mp hy
  rw [hunique g hg] at heq
  exact heq

/-- A unique root token gives exactly one horse in the complete physical matrix. -/
theorem unique_horse (decode : G → Gadget) (budget : Nat) (g0 : G)
    (hroot : decode g0 = .root) (hunique : ∀ g, decode g = .root → g = g0) :
    ∃ p : Fin (board (sortedGadgets decode) budget).size,
      (board (sortedGadgets decode) budget).tileAt p.val = .horse ∧
        ∀ q : Fin (board (sortedGadgets decode) budget).size,
          (board (sortedGadgets decode) budget).tileAt q.val = .horse → q = p := by
  let rootCell : Cell G := .inr (g0, 0, 1)
  let p := (cellEquiv decode budget).symm rootCell
  refine ⟨p, ?_, ?_⟩
  · change (board (sortedGadgets decode) budget).tileAt
      ((cellEquiv decode budget).symm rootCell).val = .horse
    rw [tileAt_cellEquiv_symm]
    simp [rootCell, cellTile, hroot, Gadget.tile]
  · intro q hq
    have htile : cellTile decode (cellEquiv decode budget q) = .horse := by
      rw [← tileAt_index decode budget, index_cellEquiv]
      exact hq
    obtain ⟨g, hg, hx⟩ := (cellTile_horse_iff decode _).mp htile
    have heq : cellEquiv decode budget q = rootCell := by
      rw [hunique g hg] at hx
      exact hx
    apply (cellEquiv decode budget).injective
    simpa only [p, Equiv.apply_symm_apply] using heq

/-- The least gadget token occupies the first position of the increasing enumeration. -/
theorem first_token_eq (g0 : G) (hleast : ∀ g : G, g0 ≤ g)
    (hpos : 0 < Fintype.card G) : orderIso G ⟨0, hpos⟩ = g0 := by
  apply le_antisymm
  · have hz : (⟨0, hpos⟩ : Fin (Fintype.card G)) ≤ rank g0 := Nat.zero_le _
    have h := (orderIso G).monotone hz
    simpa only [rank, OrderIso.apply_symm_apply] using h
  · exact hleast _

/-- A least root token makes the decoded gadget list root-first. -/
theorem sortedGadgets_root_head (decode : G → Gadget) (g0 : G)
    (hroot : decode g0 = .root) (hleast : ∀ g : G, g0 ≤ g) :
    ∃ tail, sortedGadgets decode = .root :: tail := by
  have hpos : 0 < Fintype.card G := Fintype.card_pos_iff.mpr ⟨g0⟩
  have hlen : 0 < (sortedGadgets decode).length := by
    simpa only [sortedGadgets_length] using hpos
  have hfirst : (sortedGadgets decode)[0]'hlen = .root := by
    simp only [sortedGadgets, List.getElem_ofFn]
    rw [first_token_eq g0 hleast hpos, hroot]
  cases hgs : sortedGadgets decode with
  | nil => simp [hgs] at hlen
  | cons g tail =>
    have heq : g = .root := by simpa only [hgs, List.getElem_cons_zero] using hfirst
    exact ⟨tail, by rw [heq]⟩

end EncloseHorse.Hardness.OrderedCells
