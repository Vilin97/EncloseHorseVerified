import EncloseHorseVerified.Hardness.BoardEncoding
import EncloseHorseVerified.Hardness.BoardReduction

/-!
# Independence of the represented physical board

Two boards representing one relational input may use different numeric portal
labels. Their physical game, including the score of every placement, is identical.
-/
namespace EncloseHorse.Hardness.BoardEncoding

open FirstOrder DescriptiveComplexity

namespace Represents

variable {A : Type} [FirstOrder.Language.encloseBoard.Structure A] {b c : Board}

private theorem kind_water {x y : Tile} (h : tileKind x = tileKind y) :
    x = .water ↔ y = .water := by
  cases x <;> cases y <;> simp_all [tileKind]

private theorem kind_grass {x y : Tile} (h : tileKind x = tileKind y) :
    x = .grass ↔ y = .grass := by
  cases x <;> cases y <;> simp_all [tileKind]

private theorem kind_horse {x y : Tile} (h : tileKind x = tileKind y) :
    x = .horse ↔ y = .horse := by
  cases x <;> cases y <;> simp_all [tileKind]

/-- The item score is independent of the names chosen for portals. -/
theorem points_eq (r : Represents b A) (s : Represents c A) (i : Nat) :
    (b.tileAt i).points = (c.tileAt i).points := by
  have h := r.tileKind_eq s i
  cases hb : b.tileAt i <;> cases hc : c.tileAt i <;>
    simp_all [tileKind, Tile.points]

theorem cells_eq (r : Represents b A) (s : Represents c A) : b.cells = c.cells := by
  simp only [Board.cells, r.size_eq s]

theorem grass_test_eq (r : Represents b A) (s : Represents c A) (i : Nat) :
    (b.tileAt i == .grass) = (c.tileAt i == .grass) := by
  apply Bool.eq_iff_iff.mpr
  simp only [beq_iff_eq]
  exact kind_grass (r.tileKind_eq s i)

theorem horse_test_eq (r : Represents b A) (s : Represents c A) (i : Nat) :
    (b.tileAt i == .horse) = (c.tileAt i == .horse) := by
  apply Bool.eq_iff_iff.mpr
  simp only [beq_iff_eq]
  exact kind_horse (r.tileKind_eq s i)

theorem water_test_eq (r : Represents b A) (s : Represents c A) (i : Nat) :
    (b.tileAt i == .water) = (c.tileAt i == .water) := by
  apply Bool.eq_iff_iff.mpr
  simp only [beq_iff_eq]
  exact kind_water (r.tileKind_eq s i)

theorem candidates_eq (r : Represents b A) (s : Represents c A) :
    b.candidates = c.candidates := by
  have hp : (fun i => b.tileAt i == .grass) = (fun i => c.tileAt i == .grass) :=
    funext (r.grass_test_eq s)
  simp only [Board.candidates, r.cells_eq s, hp]

theorem horse_eq (r : Represents b A) (s : Represents c A) : b.horse = c.horse := by
  have hp : (fun i => b.tileAt i == .horse) = (fun i => c.tileAt i == .horse) :=
    funext (r.horse_test_eq s)
  simp only [Board.horse, r.cells_eq s, hp, r.size_eq s]

theorem openCell_eq (r : Represents b A) (s : Represents c A)
    (walls : Placement) (i : Nat) : b.openCell walls i = c.openCell walls i := by
  have hw := r.water_test_eq s i
  simp only [Board.openCell, bne, hw, r.size_eq s]

theorem openCells_eq (r : Represents b A) (s : Represents c A) (walls : Placement) :
    b.openCells walls = c.openCells walls := by
  have hp : b.openCell walls = c.openCell walls := funext (r.openCell_eq s walls)
  simp only [Board.openCells, r.cells_eq s, hp]

theorem adjacent_eq (r : Represents b A) (s : Represents c A) (i j : Nat) :
    b.adjacent i j = c.adjacent i j := by
  simp only [Board.adjacent, r.width_eq, s.width_eq]

theorem onEdge_eq (r : Represents b A) (s : Represents c A) (i : Nat) :
    b.onEdge i = c.onEdge i := by
  simp only [Board.onEdge, r.width_eq, s.width_eq, r.height_eq s]

/-- Equality of actual horse moves only needs portal-link agreement inside the matrix. -/
theorem edge_eq (r : Represents b A) (s : Represents c A)
    (walls : Placement) (i j : Nat) : b.edge walls i j = c.edge walls i j := by
  by_cases hi : i < b.size
  · by_cases hj : j < b.size
    · simp only [Board.edge, r.openCell_eq s walls i, r.openCell_eq s walls j,
        r.adjacent_eq s i j, r.portalLinked_eq s i j hi hj]
    · have hcj : ¬j < c.size := by rw [← r.size_eq s]; exact hj
      simp [Board.edge, Board.openCell, hj, hcj]
  · have hci : ¬i < c.size := by rw [← r.size_eq s]; exact hi
    simp [Board.edge, Board.openCell, hi, hci]

/-- Both representations compute exactly the same reachable-cell list. -/
theorem reach_eq (r : Represents b A) (s : Represents c A) (walls : Placement) :
    reach b walls = reach c walls := by
  have he : b.edge walls = c.edge walls := funext fun i => funext (r.edge_eq s walls i)
  simp only [reach, r.openCells_eq s walls, r.horse_eq s, he]

theorem enclosed_eq (r : Represents b A) (s : Represents c A) (walls : Placement) :
    enclosed b walls = enclosed c walls := by
  have he : b.onEdge = c.onEdge := funext (r.onEdge_eq s)
  simp only [enclosed, r.horse_eq s, r.size_eq s, r.reach_eq s walls, he]

theorem legal_iff (r : Represents b A) (s : Represents c A) (walls : Placement) :
    legal b walls ↔ legal c walls := by
  simp only [legal, r.candidates_eq s, r.budget_eq_board s]

/-- Admissibility is a property of the encoded physical matrix, independent of its witness. -/
theorem admissible_iff (r : Represents b A) (s : Represents c A) (walls : Placement) :
    admissible b walls ↔ admissible c walls := by
  simp only [admissible, r.legal_iff s walls, r.enclosed_eq s walls]

/-- Every placement has exactly the same reference score in both representations. -/
theorem score_eq (r : Represents b A) (s : Represents c A) (walls : Placement) :
    score b walls = score c walls := by
  simp only [score, r.enclosed_eq s walls, r.reach_eq s walls, r.points_eq s]

/-- The existential board witness in `Holds` can be replaced by any representation. -/
theorem holds_iff (r : Represents b A) :
    Holds A ↔ Finite A ∧
      ∃ walls : Placement, admissible b walls ∧ threshold A ≤ score b walls := by
  constructor
  · rintro ⟨hf, c, ⟨s⟩, walls, ha, hs⟩
    refine ⟨hf, walls, (r.admissible_iff s walls).mpr ha, ?_⟩
    rw [r.score_eq s walls]
    exact hs
  · rintro ⟨hf, walls, ha, hs⟩
    exact ⟨hf, b, ⟨r⟩, walls, ha, hs⟩

/-- On a finite input, the target decision problem is precisely the game on any representing board. -/
theorem gameYES_iff [Finite A] (r : Represents b A) :
    GameYES.Holds A ↔ ∃ walls : Placement, admissible b walls ∧ threshold A ≤ score b walls := by
  exact r.holds_iff.trans (and_iff_right (inferInstance : Finite A))

end Represents
end EncloseHorse.Hardness.BoardEncoding
