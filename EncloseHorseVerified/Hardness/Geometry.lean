import EncloseHorseVerified.Game

/-!
# A water-separated layout for graph gadgets

Every gadget occupies three horizontally consecutive cells in its own odd row.
The board has constant width five; the outside border and the even rows are water.
-/
namespace EncloseHorse.Hardness.Geometry

inductive Gadget where
  | root
  | gate (left right : Nat)
  | bee (label : Nat)
  | pad (label : Nat)
  deriving DecidableEq, Repr, Inhabited

def Gadget.tile : Gadget → Nat → Tile
  | .root, 0 => .horse
  | .root, 1 => .portal 0
  | .gate left _, 0 => .portal left
  | .gate _ _, 1 => .grass
  | .gate _ right, 2 => .portal right
  | .bee label, 0 => .portal label
  | .bee _, 1 => .bee
  | .pad label, 0 => .portal label
  | _, _ => .water

/-- Gadget `g`, slot `s`, is at column `s+1` of row `2*g+1`. -/
def pos (g s : Nat) : Nat := 10 * g + 6 + s

def tileFn (gs : List Gadget) (p : Nat) : Tile :=
  if _h : 6 ≤ p then
    let g := (p - 6) / 10
    let s := (p - 6) % 10
    if hg : g < gs.length then
      if _hs : s < 3 then (gs[g]'hg).tile s else .water
    else .water
  else .water

/-- Materialize the layout as an ordinary finite game board. -/
def board (gs : List Gadget) (budget : Nat) : Board where
  width := 5
  height := 2 * gs.length + 1
  tiles := List.ofFn (fun p : Fin (5 * (2 * gs.length + 1)) => tileFn gs p.val)
  budget := budget

@[simp] theorem board_width (gs : List Gadget) (budget : Nat) :
    (board gs budget).width = 5 := rfl
@[simp] theorem board_height (gs : List Gadget) (budget : Nat) :
    (board gs budget).height = 2 * gs.length + 1 := rfl
@[simp] theorem board_size (gs : List Gadget) (budget : Nat) :
    (board gs budget).size = 10 * gs.length + 5 := by
  simp only [Board.size, board]
  omega

@[simp] theorem tileAt_eq (gs : List Gadget) (budget p : Nat) :
    (board gs budget).tileAt p =
      if p < 10 * gs.length + 5 then tileFn gs p else .water := by
  simp only [Board.tileAt, board, List.getElem?_ofFn]
  split <;> split <;> simp_all <;> omega

theorem pos_lt (gs : List Gadget) {g s : Nat} (hg : g < gs.length) (hs : s < 3) :
    pos g s < (board gs budget).size := by
  simp only [board_size, pos]
  omega

@[simp] theorem pos_div_ten {g s : Nat} (hs : s < 3) :
    (pos g s - 6) / 10 = g := by simp only [pos]; omega
@[simp] theorem pos_mod_ten {g s : Nat} (hs : s < 3) :
    (pos g s - 6) % 10 = s := by simp only [pos]; omega
@[simp] theorem pos_row {g s : Nat} (hs : s < 3) :
    pos g s / 5 = 2 * g + 1 := by simp only [pos]; omega
@[simp] theorem pos_col {g s : Nat} (hs : s < 3) :
    pos g s % 5 = s + 1 := by simp only [pos]; omega

/-- Distinct gadget slots are distinct board cells. -/
theorem pos_injective {g h s t : Nat} (hs : s < 3) (ht : t < 3) :
    pos g s = pos h t ↔ g = h ∧ s = t := by
  simp only [pos]
  omega

/-- Looking up any gadget slot returns precisely its declared tile. -/
@[simp] theorem tileAt_pos (gs : List Gadget) (budget : Nat) {g s : Nat}
    (hg : g < gs.length) (hs : s < 3) :
    (board gs budget).tileAt (pos g s) = (gs[g]'hg).tile s := by
  rw [tileAt_eq]
  have hp : pos g s < 10 * gs.length + 5 := by simp only [pos]; omega
  simp only [hp, ↓reduceIte, tileFn]
  have h6 : 6 ≤ pos g s := by simp only [pos]; omega
  simp only [h6, ↓reduceDIte, pos_div_ten hs, pos_mod_ten hs, hg, hs]

/-- Every nonwater tile lies in a unique declared gadget slot. -/
theorem nonwater_iff (gs : List Gadget) (budget p : Nat) :
    (board gs budget).tileAt p ≠ .water ↔
      ∃ (g s : Nat) (hg : g < gs.length),
        s < 3 ∧ p = pos g s ∧ (gs[g]'hg).tile s ≠ .water := by
  constructor
  · intro hp
    rw [tileAt_eq] at hp
    split at hp
    · rename_i hb
      unfold tileFn at hp
      split at hp
      · rename_i h6
        dsimp only at hp
        split at hp
        · rename_i hg
          split at hp
          · rename_i hs
            refine ⟨(p - 6) / 10, (p - 6) % 10, hg, hs, ?_, hp⟩
            simp only [pos]
            omega
          · exact False.elim (hp rfl)
        · exact False.elim (hp rfl)
      · exact False.elim (hp rfl)
    · exact False.elim (hp rfl)
  · rintro ⟨g, s, hg, hs, rfl, ht⟩
    simpa only [tileAt_pos gs budget hg hs] using ht

/-- The isolated odd rows prevent any unintended vertical adjacency. -/
theorem adjacent_pos_iff (gs : List Gadget) (budget : Nat) {g h s t : Nat}
    (hs : s < 3) (ht : t < 3) :
    (board gs budget).adjacent (pos g s) (pos h t) = true ↔
      g = h ∧ (s + 1 = t ∨ t + 1 = s) := by
  simp only [Board.adjacent, board_width, pos_row hs, pos_row ht,
    pos_col hs, pos_col ht, Bool.or_eq_true, Bool.and_eq_true, beq_iff_eq]
  omega

/-- Every nonwater tile lies strictly inside the boundary water frame. -/
theorem nonwater_not_onEdge (gs : List Gadget) (budget p : Nat)
    (hp : (board gs budget).tileAt p ≠ .water) :
    (board gs budget).onEdge p = false := by
  obtain ⟨g, s, hg, hs, rfl, _⟩ := (nonwater_iff gs budget p).mp hp
  simp only [Board.onEdge, board_width, board_height, pos_row hs, pos_col hs,
    Bool.or_eq_false_iff, beq_eq_false_iff_ne]
  omega

/-- All ordinary moves between nonwater cells are the intended within-gadget moves. -/
theorem adjacent_nonwater_iff (gs : List Gadget) (budget p q : Nat)
    (hp : (board gs budget).tileAt p ≠ .water)
    (hq : (board gs budget).tileAt q ≠ .water) :
    (board gs budget).adjacent p q = true ↔
      ∃ g s t, s < 3 ∧ t < 3 ∧ p = pos g s ∧ q = pos g t ∧
        (s + 1 = t ∨ t + 1 = s) := by
  obtain ⟨g, s, hg, hs, rfl, _⟩ := (nonwater_iff gs budget p).mp hp
  obtain ⟨h, t, hh, ht, rfl, _⟩ := (nonwater_iff gs budget q).mp hq
  rw [adjacent_pos_iff gs budget hs ht]
  constructor
  · rintro ⟨rfl, hadj⟩
    exact ⟨g, s, t, hs, ht, rfl, rfl, hadj⟩
  · rintro ⟨k, u, v, hu, hv, heq, heq', hadj⟩
    obtain ⟨rfl, rfl⟩ := (pos_injective hs hu).mp heq
    obtain ⟨rfl, rfl⟩ := (pos_injective ht hv).mp heq'
    exact ⟨rfl, hadj⟩

/-- Cells before the first gadget belong to the water frame. -/
theorem tileAt_low (gs : List Gadget) (budget p : Nat) (hp : p < 6) :
    (board gs budget).tileAt p = .water := by
  rw [tileAt_eq]
  have h6 : ¬6 ≤ p := by omega
  split <;> simp only [tileFn, h6, ↓reduceDIte]

/-- The first root gadget places the board's first horse at cell six. -/
@[simp] theorem horse_eq (tail : List Gadget) (budget : Nat) :
    (board (.root :: tail) budget).horse = 6 := by
  let b := board (.root :: tail) budget
  have h6 : b.tileAt 6 = .horse := by
    have hh := tileAt_pos (.root :: tail) budget (g := 0) (s := 0)
      (by simp) (by decide)
    change b.tileAt 6 = .horse at hh
    exact hh
  have hlow : ∀ i, i < 6 → b.tileAt i = .water :=
    fun i hi => tileAt_low (.root :: tail) budget i hi
  have hfirst : (List.range 7).find? (fun i => b.tileAt i == .horse) = some 6 := by
    change ([0, 1, 2, 3, 4, 5, 6] : List Nat).find?
      (fun i => b.tileAt i == .horse) = some 6
    simp only [List.find?_cons, hlow 0 (by decide), hlow 1 (by decide),
      hlow 2 (by decide), hlow 3 (by decide), hlow 4 (by decide), hlow 5 (by decide), h6]
    rfl
  have hsize : b.size = 7 + (b.size - 7) := by
    simp only [b, board_size, List.length_cons]
    omega
  have hc : b.cells = List.range 7 ++ (List.range (b.size - 7)).map (7 + ·) := by
    rw [Board.cells, hsize, List.range_add]
    simp
  change (b.cells.find? (fun i => b.tileAt i == .horse)).getD b.size = 6
  rw [hc, List.find?_append, hfirst]
  rfl

/-- Alias emphasizing that the tile function covers every natural-number index. -/
theorem tileAt_totalfn (gs : List Gadget) (budget p : Nat) :
    (board gs budget).tileAt p =
      if p < 10 * gs.length + 5 then tileFn gs p else .water := tileAt_eq gs budget p

/-- The water frame encloses every reachable component with a valid horse start. -/
theorem enclosed_of_horse (gs : List Gadget) (budget : Nat) (walls : Placement)
    (hh : (board gs budget).horse < (board gs budget).size)
    (ht : (board gs budget).tileAt (board gs budget).horse ≠ .water) :
    enclosed (board gs budget) walls = true := by
  apply (enclosed_iff _ _).mpr
  refine ⟨hh, ?_⟩
  intro v hv
  cases hv with
  | refl => exact nonwater_not_onEdge gs budget _ ht
  | @step u v hp he =>
    have hvopen : (board gs budget).openCell walls v = true := by
      simp only [Board.edge, Bool.and_eq_true] at he
      exact he.1.2
    have hvnonwater : (board gs budget).tileAt v ≠ .water := by
      simp only [Board.openCell, Bool.and_eq_true] at hvopen
      have ht := hvopen.1.2
      intro hw
      rw [hw] at ht
      change false = true at ht
      contradiction
    exact nonwater_not_onEdge gs budget v hvnonwater

/-- A root-first layout is enclosed for every possible wall placement. -/
theorem enclosed_root (tail : List Gadget) (budget : Nat) (walls : Placement) :
    enclosed (board (.root :: tail) budget) walls = true := by
  apply enclosed_of_horse
  · rw [horse_eq, board_size]
    simp only [List.length_cons]
    omega
  · rw [horse_eq]
    have hh := tileAt_pos (.root :: tail) budget (g := 0) (s := 0)
      (by simp) (by decide)
    change (board (.root :: tail) budget).tileAt 6 = .horse at hh
    rw [hh]
    decide

/-- In a root-first layout, admissibility is exactly the ordinary wall legality. -/
theorem admissible_root_iff (tail : List Gadget) (budget : Nat) (walls : Placement) :
    admissible (board (.root :: tail) budget) walls ↔
      legal (board (.root :: tail) budget) walls := by
  simp only [admissible, enclosed_root, and_true]

/-- The middle of a gate is the only wallable gadget slot. -/
theorem Gadget.grass_iff (g : Gadget) {s : Nat} (hs : s < 3) :
    g.tile s = .grass ↔ ∃ left right, g = .gate left right ∧ s = 1 := by
  have hcases : s = 0 ∨ s = 1 ∨ s = 2 := by omega
  rcases hcases with rfl | rfl | rfl <;> cases g <;> simp [Gadget.tile]

/-- The terrain constructor has the expected Boolean test for grass. -/
private theorem beq_grass_iff (t : Tile) : (t == .grass) = true ↔ t = .grass := by
  cases t <;> simp [BEq.beq, instBEqTile.beq]

/-- Exactly the gate centers are grass cells. -/
theorem tileAt_grass_iff (gs : List Gadget) (budget p : Nat) :
    (board gs budget).tileAt p = .grass ↔
      ∃ (g : Nat) (hg : g < gs.length) (left right : Nat),
        gs[g] = .gate left right ∧ p = pos g 1 := by
  constructor
  · intro hp
    have hn : (board gs budget).tileAt p ≠ .water := by rw [hp]; decide
    obtain ⟨g, s, hg, hs, rfl, _⟩ := (nonwater_iff gs budget p).mp hn
    rw [tileAt_pos gs budget hg hs] at hp
    obtain ⟨left, right, hgadget, rfl⟩ := (Gadget.grass_iff _ hs).mp hp
    exact ⟨g, hg, left, right, hgadget, rfl⟩
  · rintro ⟨g, hg, left, right, hgadget, rfl⟩
    rw [tileAt_pos gs budget hg (by decide), hgadget]
    rfl

/-- A board cell is wallable exactly when it is the middle of a gate. -/
theorem mem_candidates_iff (gs : List Gadget) (budget p : Nat) :
    p ∈ (board gs budget).candidates ↔
      ∃ (g : Nat) (hg : g < gs.length) (left right : Nat),
        gs[g] = .gate left right ∧ p = pos g 1 := by
  simp only [Board.candidates, List.mem_filter, Board.cells, List.mem_range,
    beq_grass_iff]
  rw [tileAt_grass_iff]
  constructor
  · exact And.right
  · intro h
    refine ⟨?_, h⟩
    obtain ⟨g, hg, left, right, _, rfl⟩ := h
    exact pos_lt gs hg (by decide)

def Gadget.isGate : Gadget → Bool
  | .gate _ _ => true
  | _ => false

def gateIndices (gs : List Gadget) : List Nat :=
  (List.range gs.length).filter fun i => (gs[i]?.getD .root).isGate

def gateCells (gs : List Gadget) : List Nat :=
  (gateIndices gs).map fun i => pos i 1

private theorem isGate_iff (g : Gadget) : g.isGate = true ↔ ∃ left right, g = .gate left right := by
  cases g <;> simp [Gadget.isGate]

private theorem mem_gateCells (gs : List Gadget) (p : Nat) :
    p ∈ gateCells gs ↔
      ∃ (g : Nat) (hg : g < gs.length) (left right : Nat),
        gs[g] = .gate left right ∧ p = pos g 1 := by
  simp only [gateCells, gateIndices, List.mem_map, List.mem_filter, List.mem_range]
  constructor
  · rintro ⟨g, ⟨hg, hgate⟩, rfl⟩
    rw [List.getElem?_eq_getElem hg] at hgate
    obtain ⟨left, right, heq⟩ := isGate_iff _ |>.mp hgate
    exact ⟨g, hg, left, right, heq, rfl⟩
  · rintro ⟨g, hg, left, right, heq, rfl⟩
    refine ⟨g, ⟨hg, ?_⟩, rfl⟩
    simp only [List.getElem?_eq_getElem hg, Option.getD_some, heq, Gadget.isGate]

private theorem gateCells_nodup (gs : List Gadget) : (gateCells gs).Nodup := by
  apply List.Pairwise.map (R := fun i j : Nat => i ≠ j) (fun i => pos i 1)
  · intro i j hij heq
    exact hij ((pos_injective (by decide) (by decide)).mp heq).1
  · exact List.Pairwise.filter _ List.nodup_range

/-- The candidate list has one cell for each gate, with no extra wallable terrain. -/
theorem candidates_perm_gateCells (gs : List Gadget) (budget : Nat) :
    (board gs budget).candidates.Perm (gateCells gs) := by
  apply List.perm_iff_count.mpr
  intro p
  rw [(board gs budget).candidates_nodup.count, (gateCells_nodup gs).count]
  have hm := (mem_candidates_iff gs budget p).trans (mem_gateCells gs p).symm
  by_cases hc : p ∈ (board gs budget).candidates
  · have hg := hm.mp hc
    simp only [hc, hg, ↓reduceIte]
  · have hg : p ∉ gateCells gs := fun h => hc (hm.mpr h)
    simp only [hc, hg, ↓reduceIte]

theorem gateIndices_length (gs : List Gadget) :
    (gateIndices gs).length = (gs.filter Gadget.isGate).length := by
  induction gs with
  | nil => rfl
  | cons g gs ih =>
    simp only [gateIndices, List.length_cons, List.range_succ_eq_map,
      List.filter_cons, List.getElem?_cons_zero, Option.getD_some, List.filter_map,
      List.getElem?_cons_succ, Function.comp_def] at *
    cases hg : g.isGate <;> simp_all

/-- The total number of wallable cells is exactly the number of gate gadgets. -/
theorem candidates_length (gs : List Gadget) (budget : Nat) :
    (board gs budget).candidates.length = (gs.filter Gadget.isGate).length := by
  rw [(candidates_perm_gateCells gs budget).length_eq]
  simp only [gateCells, List.length_map, gateIndices_length]

/-- All three declared slots, including water slots, in gadget order. -/
def slots (n : Nat) : List Nat :=
  (List.range n).flatMap fun g => (List.range 3).map (pos g)

@[simp] theorem mem_slots (n p : Nat) :
    p ∈ slots n ↔ ∃ g, g < n ∧ ∃ s, s < 3 ∧ p = pos g s := by
  simp only [slots, List.mem_flatMap, List.mem_range, List.mem_map]
  constructor
  · rintro ⟨g, hg, s, hs, rfl⟩
    exact ⟨g, hg, s, hs, rfl⟩
  · rintro ⟨g, hg, s, hs, rfl⟩
    exact ⟨g, hg, s, hs, rfl⟩

theorem slots_nodup (n : Nat) : (slots n).Nodup := by
  apply List.pairwise_flatMap.mpr
  constructor
  · intro g hg
    apply List.Pairwise.map (R := fun i j : Nat => i ≠ j) (pos g)
    · intro s t hst heq
      apply hst
      simp only [pos] at heq
      omega
    · exact List.nodup_range
  · apply List.Pairwise.imp _ List.nodup_range
    intro g h hne p hp q hq heq
    obtain ⟨s, hs, rfl⟩ := List.mem_map.mp hp
    obtain ⟨t, ht, rfl⟩ := List.mem_map.mp hq
    exact hne ((pos_injective (List.mem_range.mp hs) (List.mem_range.mp ht)).mp heq).1

private theorem sum_map_perm (f : Nat → Int) {xs ys : List Nat} (hp : xs.Perm ys) :
    (xs.map f).sum = (ys.map f).sum := by
  induction hp with
  | nil => rfl
  | cons a hp ih => simp only [List.map_cons, List.sum_cons, ih]
  | swap a b xs => simp only [List.map_cons, List.sum_cons]; omega
  | trans hp hq ihp ihq => exact ihp.trans ihq

private theorem sum_filter_indicator (f : Nat → Int) (p : Nat → Bool) (xs : List Nat) :
    ((xs.filter p).map f).sum = (xs.map fun i => if p i then f i else 0).sum := by
  induction xs with
  | nil => rfl
  | cons a xs ih =>
    cases ha : p a <;> simp [ha, ih]

/-- Convert a duplicate-free weighted subset into an indicator sum over its universe. -/
theorem sum_subset_indicator (f : Nat → Int) (xs allCells : List Nat)
    (hx : xs.Nodup) (hu : allCells.Nodup) (hsub : xs ⊆ allCells) :
    (xs.map f).sum = (allCells.map fun i => if xs.contains i then f i else 0).sum := by
  let filtered := allCells.filter xs.contains
  have hf : filtered.Nodup := List.Pairwise.filter _ hu
  have hp : xs.Perm filtered := by
    apply List.perm_iff_count.mpr
    intro i
    rw [hx.count, hf.count]
    have hm : i ∈ filtered ↔ i ∈ xs := by
      simp only [filtered, List.mem_filter, List.contains_iff_mem]
      exact ⟨And.right, fun hi => ⟨hsub hi, hi⟩⟩
    simp only [hm]
  rw [sum_map_perm f hp]
  exact sum_filter_indicator f xs.contains allCells

private theorem sum_flatMap_map (xs : List Nat) (g : Nat → List Nat) (f : Nat → Int) :
    ((xs.flatMap g).map f).sum = (xs.map fun i => ((g i).map f).sum).sum := by
  induction xs with
  | nil => rfl
  | cons a xs ih => simp only [List.flatMap_cons, List.map_append, List.sum_append,
      List.map_cons, List.sum_cons, ih]

/-- Every reached cell in a root-first layout is one of the declared gadget slots. -/
theorem reach_subset_slots (tail : List Gadget) (budget : Nat) (walls : Placement) :
    reach (board (.root :: tail) budget) walls ⊆ slots (.root :: tail).length := by
  intro v hv
  have hn : (board (.root :: tail) budget).tileAt v ≠ .water := by
    have hp := (mem_reach_iff _ _ v).mp hv
    cases hp with
    | refl =>
      rw [horse_eq]
      have hh := tileAt_pos (.root :: tail) budget (g := 0) (s := 0) (by simp) (by decide)
      change (board (.root :: tail) budget).tileAt 6 = .horse at hh
      rw [hh]
      decide
    | @step u v hp he =>
      simp only [Board.edge, Bool.and_eq_true, Board.openCell] at he
      have hne := he.1.2
      intro hw
      have ht := hne.1.2
      rw [hw] at ht
      change false = true at ht
      contradiction
  obtain ⟨g, s, hg, hs, rfl, _⟩ := (nonwater_iff (.root :: tail) budget v).mp hn
  exact (mem_slots _ _).mpr ⟨g, hg, s, hs, rfl⟩

/-- The actual game score equals the sum of contributions from reachable gadget slots. -/
theorem score_eq_gadget_sum (tail : List Gadget) (budget : Nat) (walls : Placement) :
    score (board (.root :: tail) budget) walls =
      ((List.range (.root :: tail).length).map (fun g =>
        ((List.range 3).map (fun s =>
          if (reach (board (.root :: tail) budget) walls).contains (pos g s) then
            (((.root :: tail)[g]?.getD .root).tile s).points else 0)).sum)).sum := by
  let gs := .root :: tail
  let b := board gs budget
  rw [score, enclosed_root, ite_eq_left (by decide)]
  rw [sum_subset_indicator (fun i => (b.tileAt i).points)
    (reach b walls) (slots gs.length) (reach_nodup b walls)
    (slots_nodup gs.length) (reach_subset_slots tail budget walls)]
  rw [slots, sum_flatMap_map]
  apply congrArg List.sum
  apply List.map_congr_left
  intro g hg
  have hgl : g < gs.length := List.mem_range.mp hg
  rw [List.map_map]
  apply congrArg List.sum
  apply List.map_congr_left
  intro s hs
  have hsl : s < 3 := List.mem_range.mp hs
  simp only [Function.comp_def, b, gs, tileAt_pos (.root :: tail) budget hgl hsl,
    List.getElem?_eq_getElem hgl, Option.getD_some]

end EncloseHorse.Hardness.Geometry
