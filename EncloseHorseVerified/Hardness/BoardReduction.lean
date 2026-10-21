import EncloseHorseVerified.Hardness.Geometry

namespace EncloseHorse.Hardness.BoardReduction

open Geometry

deriving instance ReflBEq for Tile
deriving instance LawfulBEq for Tile

/-- The quotient graph's only nontrivial edges are the unblocked grass gates. -/
inductive LabelReach (gs : List Gadget) (walls : Placement) : Nat → Prop where
  | root : LabelReach gs walls 0
  | forward {g : Nat} {hg : g < gs.length} {left right : Nat} :
      gs[g] = .gate left right → pos g 1 ∉ walls →
      LabelReach gs walls left → LabelReach gs walls right
  | backward {g : Nat} {hg : g < gs.length} {left right : Nat} :
      gs[g] = .gate left right → pos g 1 ∉ walls →
      LabelReach gs walls right → LabelReach gs walls left

def gadgetLabel : Gadget → Nat → Nat
  | .root, _ => 0
  | .gate _ right, 2 => right
  | .gate left _, _ => left
  | .bee label, _ => label
  | .pad label, _ => label

def labelAt (gs : List Gadget) (p : Nat) : Nat :=
  gadgetLabel (gs[(p - 6) / 10]?.getD .root) ((p - 6) % 10)

theorem labelAt_pos (gs : List Gadget) {g s : Nat} (hg : g < gs.length) (hs : s < 3) :
    labelAt gs (pos g s) = gadgetLabel gs[g] s := by
  simp only [labelAt, pos_div_ten hs, pos_mod_ten hs, List.getElem?_eq_getElem hg,
    Option.getD_some]

theorem labelAt_of_portal (gs : List Gadget) (budget p label : Nat)
    (ht : (board gs budget).tileAt p = .portal label) : labelAt gs p = label := by
  have hn : (board gs budget).tileAt p ≠ .water := by rw [ht]; simp
  obtain ⟨g, s, hg, hs, rfl, _⟩ := (nonwater_iff gs budget p).mp hn
  rw [labelAt_pos gs hg hs]
  rw [tileAt_pos gs budget hg hs] at ht
  have hcases : s = 0 ∨ s = 1 ∨ s = 2 := by omega
  rcases hcases with rfl | rfl | rfl <;> cases hgs : gs[g] <;>
    simp_all [Gadget.tile, gadgetLabel]

theorem nonwater_of_open (b : Board) (walls : Placement) (p : Nat)
    (hp : b.openCell walls p = true) : b.tileAt p ≠ .water := by
  simp only [Board.openCell, Bool.and_eq_true] at hp
  have ht := hp.1.2
  intro hw
  rw [hw] at ht
  change false = true at ht
  contradiction

theorem not_mem_of_open (b : Board) (walls : Placement) (p : Nat)
    (hp : b.openCell walls p = true) : p ∉ walls := by
  simp only [Board.openCell, Bool.and_eq_true] at hp
  simpa [Bool.not_eq_true', List.contains_eq_mem] using hp.2

theorem labelReach_of_adjacent (gs : List Gadget) (budget : Nat) (walls : Placement)
    (p q : Nat) (hp : (board gs budget).openCell walls p = true)
    (hq : (board gs budget).openCell walls q = true)
    (ha : (board gs budget).adjacent p q = true)
    (hr : LabelReach gs walls (labelAt gs p)) : LabelReach gs walls (labelAt gs q) := by
  obtain ⟨g, s, hg, hs, rfl, _⟩ :=
    (nonwater_iff gs budget p).mp (nonwater_of_open _ _ _ hp)
  obtain ⟨h, t, hh, ht, rfl, _⟩ :=
    (nonwater_iff gs budget q).mp (nonwater_of_open _ _ _ hq)
  obtain ⟨rfl, hadj⟩ := (adjacent_pos_iff gs budget hs ht).mp ha
  rw [labelAt_pos gs hg hs] at hr
  rw [labelAt_pos gs hh ht]
  have hc : (s = 0 ∧ t = 1) ∨ (s = 1 ∧ t = 0) ∨
      (s = 1 ∧ t = 2) ∨ (s = 2 ∧ t = 1) := by omega
  rcases hc with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
  · cases hgs : gs[g] <;> simpa [gadgetLabel, hgs] using hr
  · cases hgs : gs[g] <;> simpa [gadgetLabel, hgs] using hr
  · cases hgs : gs[g] with
    | root => simpa [gadgetLabel, hgs] using hr
    | bee label => simpa [gadgetLabel, hgs] using hr
    | pad label => simpa [gadgetLabel, hgs] using hr
    | gate left right =>
      simp only [hgs, gadgetLabel] at hr ⊢
      exact .forward hgs (not_mem_of_open _ _ _ hp) hr
  · cases hgs : gs[g] with
    | root => simpa [gadgetLabel, hgs] using hr
    | bee label => simpa [gadgetLabel, hgs] using hr
    | pad label => simpa [gadgetLabel, hgs] using hr
    | gate left right =>
      simp only [hgs, gadgetLabel] at hr ⊢
      exact .backward hgs (not_mem_of_open _ _ _ hq) hr

theorem portalLinked_label_eq (gs : List Gadget) (budget p q : Nat)
    (hp : (board gs budget).portalLinked p q = true) : labelAt gs p = labelAt gs q := by
  unfold Board.portalLinked at hp
  cases htp : (board gs budget).tileAt p <;>
    cases htq : (board gs budget).tileAt q <;> simp_all only [Bool.false_eq_true]
  rename_i left right
  have he : left = right := by simpa [htp, htq] using hp
  subst right
  exact (labelAt_of_portal gs budget p left htp).trans
    (labelAt_of_portal gs budget q left htq).symm

/-- Every path of the actual game maps to an ordinary path in the gate graph. -/
theorem actual_to_label (tail : List Gadget) (budget : Nat) (walls : Placement)
    (p : Nat) (hp : p ∈ reach (board (.root :: tail) budget) walls) :
    LabelReach (.root :: tail) walls (labelAt (.root :: tail) p) := by
  have hpath := (mem_reach_iff _ _ _).mp hp
  clear hp
  induction hpath with
  | refl =>
    rw [horse_eq]
    have hl := labelAt_pos (.root :: tail) (g := 0) (s := 0) (by simp) (by decide)
    change labelAt (.root :: tail) 6 = 0 at hl
    rw [hl]
    exact .root
  | @step u v hpath he ih =>
    simp only [Board.edge, Bool.and_eq_true, Bool.or_eq_true] at he
    rcases he.2 with ha | ht
    · exact labelReach_of_adjacent _ budget walls u v he.1.1 he.1.2 ha ih
    · rw [← portalLinked_label_eq _ budget u v ht]
      exact ih

/-- A label is hot exactly when one of its actual portal cells is reachable. -/
def hot (gs : List Gadget) (budget : Nat) (walls : Placement) (label : Nat) : Bool :=
  (reach (board gs budget) walls).any (fun p => (board gs budget).tileAt p == .portal label)

theorem hot_iff_exists (gs : List Gadget) (budget : Nat) (walls : Placement) (label : Nat) :
    hot gs budget walls label = true ↔ ∃ p, p ∈ reach (board gs budget) walls ∧
      (board gs budget).tileAt p = .portal label := by
  simp only [hot, List.any_eq_true, beq_iff_eq]

theorem open_of_nonwater_nongrass (gs : List Gadget) (budget : Nat) (walls : Placement)
    (hl : legal (board gs budget) walls) (p : Nat)
    (hw : (board gs budget).tileAt p ≠ .water)
    (hg : (board gs budget).tileAt p ≠ .grass) :
    (board gs budget).openCell walls p = true := by
  have hp : p < (board gs budget).size := by
    obtain ⟨g, s, hgi, hs, rfl, _⟩ := (nonwater_iff gs budget p).mp hw
    exact pos_lt gs hgi hs
  have hn : p ∉ walls := by
    intro hm
    have hc := (List.mem_filter.mp (hl.1.subset hm)).2
    have he : (board gs budget).tileAt p = .grass := by
      exact beq_iff_eq.mp hc
    exact hg he
  simp only [Board.openCell, Bool.and_eq_true, decide_eq_true_eq, bne_iff_ne,
    Bool.not_eq_true', List.contains_eq_mem, decide_eq_false_iff_not]
  exact ⟨⟨hp, hw⟩, hn⟩

theorem portal_reach_iff_hot (gs : List Gadget) (budget : Nat) (walls : Placement)
    (hl : legal (board gs budget) walls) (p label : Nat)
    (ht : (board gs budget).tileAt p = .portal label) :
    p ∈ reach (board gs budget) walls ↔ hot gs budget walls label = true := by
  constructor
  · intro hp
    exact (hot_iff_exists gs budget walls label).mpr ⟨p, hp, ht⟩
  · intro hh
    obtain ⟨q, hq, hqt⟩ := (hot_iff_exists gs budget walls label).mp hh
    have hop := open_of_nonwater_nongrass gs budget walls hl p
      (by rw [ht]; simp) (by rw [ht]; simp)
    have hoq := open_of_nonwater_nongrass gs budget walls hl q
      (by rw [hqt]; simp) (by rw [hqt]; simp)
    exact (mem_reach_iff _ _ _).mpr (.step ((mem_reach_iff _ _ _).mp hq) (by
      simp [Board.edge, hop, hoq, Board.portalLinked, ht, hqt]))

theorem edge_of_adjacent (b : Board) (walls : Placement) (p q : Nat)
    (hp : b.openCell walls p = true) (hq : b.openCell walls q = true)
    (ha : b.adjacent p q = true) : b.edge walls p q = true := by
  simp only [Board.edge, Bool.and_eq_true, Bool.or_eq_true]
  exact ⟨⟨hp, hq⟩, Or.inl ha⟩

theorem reach_step (b : Board) (walls : Placement) (p q : Nat)
    (hp : p ∈ reach b walls) (he : b.edge walls p q = true) : q ∈ reach b walls :=
  (mem_reach_iff _ _ _).mpr (.step ((mem_reach_iff _ _ _).mp hp) he)

theorem gate_hot_iff (gs : List Gadget) (budget : Nat) (walls : Placement)
    (hl : legal (board gs budget) walls) {g : Nat} (hg : g < gs.length)
    (left right : Nat) (hgate : gs[g] = .gate left right) (hc : pos g 1 ∉ walls) :
    hot gs budget walls left = true ↔ hot gs budget walls right = true := by
  have ht0 : (board gs budget).tileAt (pos g 0) = .portal left := by
    rw [tileAt_pos gs budget hg (by decide), hgate]; rfl
  have ht1 : (board gs budget).tileAt (pos g 1) = .grass := by
    rw [tileAt_pos gs budget hg (by decide), hgate]; rfl
  have ht2 : (board gs budget).tileAt (pos g 2) = .portal right := by
    rw [tileAt_pos gs budget hg (by decide), hgate]; rfl
  have ho0 := open_of_nonwater_nongrass gs budget walls hl (pos g 0)
    (by rw [ht0]; simp) (by rw [ht0]; simp)
  have ho2 := open_of_nonwater_nongrass gs budget walls hl (pos g 2)
    (by rw [ht2]; simp) (by rw [ht2]; simp)
  have ho1 : (board gs budget).openCell walls (pos g 1) = true := by
    have hb := pos_lt (budget := budget) gs hg (s := 1) (by decide)
    simp only [Board.openCell, Bool.and_eq_true, decide_eq_true_eq, bne_iff_ne,
      Bool.not_eq_true', List.contains_eq_mem, decide_eq_false_iff_not]
    exact ⟨⟨hb, by rw [ht1]; simp⟩, hc⟩
  have ha01 := (adjacent_pos_iff gs budget (g := g) (h := g)
    (s := 0) (t := 1) (by decide) (by decide)).mpr ⟨rfl, Or.inl rfl⟩
  have ha12 := (adjacent_pos_iff gs budget (g := g) (h := g)
    (s := 1) (t := 2) (by decide) (by decide)).mpr ⟨rfl, Or.inl rfl⟩
  have ha21 := (adjacent_pos_iff gs budget (g := g) (h := g)
    (s := 2) (t := 1) (by decide) (by decide)).mpr ⟨rfl, Or.inr rfl⟩
  have ha10 := (adjacent_pos_iff gs budget (g := g) (h := g)
    (s := 1) (t := 0) (by decide) (by decide)).mpr ⟨rfl, Or.inr rfl⟩
  constructor
  · intro hh
    have hr0 := (portal_reach_iff_hot gs budget walls hl _ _ ht0).mpr hh
    have hr1 := reach_step _ walls _ _ hr0 (edge_of_adjacent _ walls _ _ ho0 ho1 ha01)
    have hr2 := reach_step _ walls _ _ hr1 (edge_of_adjacent _ walls _ _ ho1 ho2 ha12)
    exact (portal_reach_iff_hot gs budget walls hl _ _ ht2).mp hr2
  · intro hh
    have hr2 := (portal_reach_iff_hot gs budget walls hl _ _ ht2).mpr hh
    have hr1 := reach_step _ walls _ _ hr2 (edge_of_adjacent _ walls _ _ ho2 ho1 ha21)
    have hr0 := reach_step _ walls _ _ hr1 (edge_of_adjacent _ walls _ _ ho1 ho0 ha10)
    exact (portal_reach_iff_hot gs budget walls hl _ _ ht0).mp hr0

theorem root_hot (tail : List Gadget) (budget : Nat) (walls : Placement)
    (hl : legal (board (.root :: tail) budget) walls) :
    hot (.root :: tail) budget walls 0 = true := by
  have ht0 : (board (.root :: tail) budget).tileAt (pos 0 0) = .horse := by
    rw [tileAt_pos _ budget (g := 0) (s := 0) (by simp) (by decide)]; rfl
  have ht1 : (board (.root :: tail) budget).tileAt (pos 0 1) = .portal 0 := by
    rw [tileAt_pos _ budget (g := 0) (s := 1) (by simp) (by decide)]; rfl
  have ho0 := open_of_nonwater_nongrass _ budget walls hl (pos 0 0)
    (by rw [ht0]; simp) (by rw [ht0]; simp)
  have ho1 := open_of_nonwater_nongrass _ budget walls hl (pos 0 1)
    (by rw [ht1]; simp) (by rw [ht1]; simp)
  have ha := (adjacent_pos_iff (.root :: tail) budget (g := 0) (h := 0)
    (s := 0) (t := 1) (by decide) (by decide)).mpr ⟨rfl, Or.inl rfl⟩
  apply (hot_iff_exists _ budget walls 0).mpr
  refine ⟨pos 0 1, ?_, ht1⟩
  apply (mem_reach_iff _ _ _).mpr
  rw [horse_eq]
  change Reachability.Path _ (pos 0 0) (pos 0 1)
  exact .step .refl (edge_of_adjacent _ walls _ _ ho0 ho1 ha)

/-- The reverse quotient correspondence is constructed from actual moves and portals. -/
theorem label_to_hot (tail : List Gadget) (budget : Nat) (walls : Placement)
    (hl : legal (board (.root :: tail) budget) walls) (label : Nat)
    (hr : LabelReach (.root :: tail) walls label) :
    hot (.root :: tail) budget walls label = true := by
  induction hr with
  | root => exact root_hot tail budget walls hl
  | @forward g hg left right hgate hc hr ih =>
    exact (gate_hot_iff _ budget walls hl hg left right hgate hc).mp ih
  | @backward g hg left right hgate hc hr ih =>
    exact (gate_hot_iff _ budget walls hl hg left right hgate hc).mpr ih

/-- Exact correspondence with the real executable game, without an assumed bridge. -/
theorem hot_iff_label (tail : List Gadget) (budget : Nat) (walls : Placement)
    (hl : legal (board (.root :: tail) budget) walls) (label : Nat) :
    hot (.root :: tail) budget walls label = true ↔ LabelReach (.root :: tail) walls label := by
  constructor
  · intro hh
    obtain ⟨p, hp, ht⟩ := (hot_iff_exists _ budget walls label).mp hh
    have hr := actual_to_label tail budget walls p hp
    rwa [labelAt_of_portal _ budget p label ht] at hr
  · exact label_to_hot tail budget walls hl label

theorem reachable_open (tail : List Gadget) (budget : Nat) (walls : Placement)
    (hl : legal (board (.root :: tail) budget) walls) (p : Nat)
    (hp : p ∈ reach (board (.root :: tail) budget) walls) :
    (board (.root :: tail) budget).openCell walls p = true := by
  have hpath := (mem_reach_iff _ _ p).mp hp
  cases hpath with
  | refl =>
    have ht : (board (.root :: tail) budget).tileAt (pos 0 0) = .horse := by
      rw [tileAt_pos _ budget (g := 0) (s := 0) (by simp) (by decide)]; rfl
    rw [horse_eq]
    change (board (.root :: tail) budget).openCell walls (pos 0 0) = true
    exact open_of_nonwater_nongrass _ budget walls hl _ (by rw [ht]; simp) (by rw [ht]; simp)
  | @step u v hpath he =>
    simp only [Board.edge, Bool.and_eq_true] at he
    exact he.1.2

theorem attached_reachable (gs : List Gadget) (budget : Nat) (walls : Placement)
    (hl : legal (board gs budget) walls) (p q label : Nat)
    (htp : (board gs budget).tileAt p = .portal label)
    (hwq : (board gs budget).tileAt q ≠ .water)
    (hgq : (board gs budget).tileAt q ≠ .grass)
    (ha : (board gs budget).adjacent p q = true)
    (hh : hot gs budget walls label = true) : q ∈ reach (board gs budget) walls := by
  have hr := (portal_reach_iff_hot gs budget walls hl p label htp).mpr hh
  have hop := open_of_nonwater_nongrass gs budget walls hl p
    (by rw [htp]; simp) (by rw [htp]; simp)
  have hoq := open_of_nonwater_nongrass gs budget walls hl q hwq hgq
  exact reach_step _ walls p q hr (edge_of_adjacent _ walls p q hop hoq ha)

/-- Every nonwallable nonwater slot is reachable exactly when its portal group is. -/
theorem nongrass_slot_reach_iff_hot (tail : List Gadget) (budget : Nat) (walls : Placement)
    (hl : legal (board (.root :: tail) budget) walls) {g s : Nat}
    (hg : g < (.root :: tail).length) (hs : s < 3)
    (hw : ((.root :: tail)[g]).tile s ≠ .water)
    (hng : ((.root :: tail)[g]).tile s ≠ .grass) :
    pos g s ∈ reach (board (.root :: tail) budget) walls ↔
      hot (.root :: tail) budget walls (gadgetLabel ((.root :: tail)[g]) s) = true := by
  constructor
  · intro hp
    have hr := actual_to_label tail budget walls _ hp
    rw [labelAt_pos _ hg hs] at hr
    exact label_to_hot tail budget walls hl _ hr
  · intro hh
    have viaPortal (ss : Nat) (hss : ss < 3) (label : Nat)
        (ht : ((.root :: tail)[g]).tile ss = .portal label)
        (hh : hot (.root :: tail) budget walls label = true) :
        pos g ss ∈ reach (board (.root :: tail) budget) walls := by
      apply (portal_reach_iff_hot _ budget walls hl _ label ?_).mpr hh
      rw [tileAt_pos _ budget hg hss]
      exact ht
    have viaAttached (ss tt : Nat) (hss : ss < 3) (htt : tt < 3) (label : Nat)
        (ht : ((.root :: tail)[g]).tile tt = .portal label)
        (hw : ((.root :: tail)[g]).tile ss ≠ .water)
        (hng : ((.root :: tail)[g]).tile ss ≠ .grass)
        (ha : tt + 1 = ss ∨ ss + 1 = tt)
        (hh : hot (.root :: tail) budget walls label = true) :
        pos g ss ∈ reach (board (.root :: tail) budget) walls := by
      apply attached_reachable _ budget walls hl (pos g tt) (pos g ss) label
      · rw [tileAt_pos _ budget hg htt]; exact ht
      · rw [tileAt_pos _ budget hg hss]; exact hw
      · rw [tileAt_pos _ budget hg hss]; exact hng
      · exact (adjacent_pos_iff _ budget htt hss).mpr ⟨rfl, ha⟩
      · exact hh
    have scases : s = 0 ∨ s = 1 ∨ s = 2 := by omega
    cases hgs : (.root :: tail)[g] with
    | root =>
      simp only [hgs, gadgetLabel] at hh
      rcases scases with rfl | rfl | rfl
      · exact viaAttached 0 1 (by decide) (by decide) 0
          (by simp [hgs, Gadget.tile]) (by simp [hgs, Gadget.tile])
          (by simp [hgs, Gadget.tile]) (Or.inr rfl) hh
      · exact viaPortal 1 (by decide) 0 (by simp [hgs, Gadget.tile]) hh
      · simp [hgs, Gadget.tile] at hw
    | gate left right =>
      rcases scases with rfl | rfl | rfl
      · simp only [hgs, gadgetLabel] at hh
        exact viaPortal 0 (by decide) left (by simp [hgs, Gadget.tile]) hh
      · simp [hgs, Gadget.tile] at hng
      · simp only [hgs, gadgetLabel] at hh
        exact viaPortal 2 (by decide) right (by simp [hgs, Gadget.tile]) hh
    | bee label =>
      simp only [hgs, gadgetLabel] at hh
      rcases scases with rfl | rfl | rfl
      · exact viaPortal 0 (by decide) label (by simp [hgs, Gadget.tile]) hh
      · exact viaAttached 1 0 (by decide) (by decide) label
          (by simp [hgs, Gadget.tile]) (by simp [hgs, Gadget.tile])
          (by simp [hgs, Gadget.tile]) (Or.inl rfl) hh
      · simp [hgs, Gadget.tile] at hw
    | pad label =>
      simp only [hgs, gadgetLabel] at hh
      rcases scases with rfl | rfl | rfl
      · exact viaPortal 0 (by decide) label (by simp [hgs, Gadget.tile]) hh
      · simp [hgs, Gadget.tile] at hw
      · simp [hgs, Gadget.tile] at hw

theorem nongrass_slot_contains_eq_hot (tail : List Gadget) (budget : Nat) (walls : Placement)
    (hl : legal (board (.root :: tail) budget) walls) {g s : Nat}
    (hg : g < (.root :: tail).length) (hs : s < 3)
    (hw : ((.root :: tail)[g]).tile s ≠ .water)
    (hng : ((.root :: tail)[g]).tile s ≠ .grass) :
    (reach (board (.root :: tail) budget) walls).contains (pos g s) =
      hot (.root :: tail) budget walls (gadgetLabel ((.root :: tail)[g]) s) := by
  apply Bool.eq_iff_iff.mpr
  simp only [List.contains_iff_mem]
  exact nongrass_slot_reach_iff_hot tail budget walls hl hg hs hw hng

end EncloseHorse.Hardness.BoardReduction
