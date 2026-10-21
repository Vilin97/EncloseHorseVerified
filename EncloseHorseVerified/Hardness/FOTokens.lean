import EncloseHorseVerified.Hardness.Geometry
import DescriptiveComplexity.OrderedComposition
import Mathlib.Data.Fintype.Order

/-! Polynomially many, explicitly named physical gadget and cell tokens. -/
namespace EncloseHorse.Hardness.FOTokens

abbrev GKind := Fin 33

inductive Tag where
  | top (col : Fin 5)
  | gadget (kind : GKind) (phase : Fin 2) (col : Fin 5)
  | plusRoot (copy : Fin 2)
  | plusFamily
  | plusElement (reward : Fin 4) (cost : Fin 3)
  | minus (cost : Fin 3)
  deriving DecidableEq, Fintype
instance : Nonempty Tag := ⟨.top 0⟩

abbrev Payload (A : Type) := Fin 4 → A
abbrev RawGadget (A : Type) := GKind × Payload A
abbrev Token (A : Type) := Tag × Payload A

def CostValid {A : Type} (E F : A → Prop) (M : A → A → Prop) (lo : A)
    (kind : Fin 3) (x y : A) : Prop :=
  if kind = 0 then x = lo ∧ y = lo
  else if kind = 1 then F x ∧ y = lo
  else F x ∧ E y ∧ M y x

def RewardValid {A : Type} (F K : A → Prop) (lo : A) (kind : Fin 4) (x : A) : Prop :=
  if kind < 2 then x = lo else if kind = 2 then F x else K x

def AllMin {A : Type} (lo : A) (x : Payload A) : Prop := ∀ i, x i = lo

def ValidGadget {A : Type} (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (g : RawGadget A) : Prop :=
  let kind := g.1
  let x := g.2
  if kind = 0 then AllMin lo x
  else if kind < 5 then F (x 0) ∧ x 1 = lo ∧ x 2 = lo ∧ x 3 = lo
  else if kind < 12 then F (x 0) ∧ E (x 1) ∧ M (x 1) (x 0) ∧ x 2 = lo ∧ x 3 = lo
  else if kind < 21 then
    F (x 0) ∧ CostValid E F M lo ⟨((kind.val - 12) / 3) % 3, Nat.mod_lt _ (by decide)⟩
      (x 1) (x 2) ∧ x 3 = lo
  else E (x 0) ∧ RewardValid F K lo ⟨((kind.val - 21) / 3) % 4, Nat.mod_lt _ (by decide)⟩
      (x 1) ∧ CostValid E F M lo ⟨(kind.val - 21) % 3, Nat.mod_lt _ (by decide)⟩ (x 2) (x 3)

/-- The lexicographic order used to place the finitely many valid islands. -/
noncomputable instance rawGadgetLinearOrder {A : Type} [LinearOrder A] :
    LinearOrder (RawGadget A) := DescriptiveComplexity.tagTupleOrder

abbrev GadgetToken {A : Type} (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) := {g : RawGadget A // ValidGadget E F M K lo g}

def ValidCell {A : Type} (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (p : Token A) : Prop :=
  match p.1 with
  | .top _ => AllMin lo p.2
  | .gadget kind _ _ => ValidGadget E F M K lo (kind, p.2)
  | _ => False

def Plus {A : Type} (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (p : Token A) : Prop :=
  match p.1 with
  | .plusRoot _ => AllMin lo p.2
  | .plusFamily => F (p.2 0) ∧ p.2 1 = lo ∧ p.2 2 = lo ∧ p.2 3 = lo
  | .plusElement r c => E (p.2 0) ∧ RewardValid F K lo r (p.2 1) ∧
      CostValid E F M lo c (p.2 2) (p.2 3)
  | _ => False

def Minus {A : Type} (E F : A → Prop) (M : A → A → Prop) (K : A → Prop)
    (lo : A) (p : Token A) : Prop :=
  match p.1 with
  | .minus c => K (p.2 0) ∧ CostValid E F M lo c (p.2 1) (p.2 2) ∧ p.2 3 = lo
  | _ => False

/-- Portal labels are either the distinguished root, a family, or an element. -/
inductive Role where
  | root
  | family (coordinate : Fin 4)
  | element (coordinate : Fin 4)
  deriving DecidableEq, Fintype

inductive Terrain where
  | water | grass | horse | bee | portal (role : Role)
  deriving DecidableEq

/-- The three slots of a gadget, retaining symbolic portal labels. -/
def slot (kind : GKind) (s : Nat) : Terrain :=
  if kind = 0 then
    if s = 0 then .horse else if s = 1 then .portal .root else .water
  else if kind < 5 then
    let part := kind.val - 1
    if part = 0 then
      if s = 0 then .portal .root else if s = 1 then .grass
      else if s = 2 then .portal (.family 0) else .water
    else if s = 0 then .portal (.family 0)
    else if part = 1 ∧ s = 1 then .bee else .water
  else if kind < 12 then
    let part := kind.val - 5
    if part = 0 then
      if s = 0 then .portal (.family 0) else if s = 1 then .grass
      else if s = 2 then .portal (.element 1) else .water
    else if part < 4 then
      if s = 0 then .portal (.family 0) else if part = 1 ∧ s = 1 then .bee else .water
    else if s = 0 then .portal (.element 1)
    else if part = 4 ∧ s = 1 then .bee else .water
  else if kind < 21 then
    if s = 0 then .portal (.family 0)
    else if (kind.val - 12) % 3 = 0 ∧ s = 1 then .bee else .water
  else if s = 0 then .portal (.element 0) else .water

/-- Terrain at a column of a full width-five cell row. -/
def terrain (tag : Tag) : Terrain :=
  match tag with
  | .gadget kind phase col =>
    if phase = 0 ∧ 0 < col.val ∧ col.val < 4 then slot kind (col.val - 1) else .water
  | _ => .water

def Role.value {A : Type} (familyIndex elementIndex : A → Nat) (x : Payload A) : Role → Nat
  | .root => 0
  | .family i => familyIndex (x i) + 1
  | .element i => elementIndex (x i)

/-- Decode a token to the ordinary Board gadget used by the game semantics.
`elementIndex` includes the offset past all family labels. -/
def decode {A : Type} (familyIndex elementIndex : A → Nat) (g : RawGadget A) : Geometry.Gadget :=
  let kind := g.1
  let x := g.2
  if kind = 0 then .root
  else if kind < 5 then
    let part := kind.val - 1
    if part = 0 then .gate 0 (familyIndex (x 0) + 1)
    else if part = 1 then .bee (familyIndex (x 0) + 1)
    else .pad (familyIndex (x 0) + 1)
  else if kind < 12 then
    let part := kind.val - 5
    if part = 0 then .gate (familyIndex (x 0) + 1) (elementIndex (x 1))
    else if part < 4 then
      if part = 1 then .bee (familyIndex (x 0) + 1) else .pad (familyIndex (x 0) + 1)
    else if part = 4 then .bee (elementIndex (x 1)) else .pad (elementIndex (x 1))
  else if kind < 21 then
    if (kind.val - 12) % 3 = 0 then .bee (familyIndex (x 0) + 1)
    else .pad (familyIndex (x 0) + 1)
  else .pad (elementIndex (x 0))

def Terrain.value {A : Type} (familyIndex elementIndex : A → Nat) (x : Payload A) : Terrain → Tile
  | .water => .water | .grass => .grass | .horse => .horse | .bee => .bee
  | .portal role => .portal (role.value familyIndex elementIndex x)

theorem decode_tile {A : Type} (familyIndex elementIndex : A → Nat) (g : RawGadget A)
    (s : Nat) :
    (decode familyIndex elementIndex g).tile s =
      (slot g.1 s).value familyIndex elementIndex g.2 := by
  rcases g with ⟨kind, x⟩
  by_cases h0 : s = 0
  · subst s
    fin_cases kind <;> norm_num [decode, slot, Geometry.Gadget.tile, Terrain.value, Role.value]
  by_cases h1 : s = 1
  · subst s
    fin_cases kind <;> norm_num [decode, slot, Geometry.Gadget.tile, Terrain.value, Role.value]
  by_cases h2 : s = 2
  · subst s
    fin_cases kind <;> norm_num [decode, slot, Geometry.Gadget.tile, Terrain.value, Role.value]
  have hs : s = 0 ∨ s = 1 ∨ s = 2 ∨ 3 ≤ s := by omega
  have hs3 : 3 ≤ s := by omega
  fin_cases kind <;>
    simp [decode, slot, Geometry.Gadget.tile, Terrain.value, Role.value, h0, h1, h2]

end EncloseHorse.Hardness.FOTokens
