import EncloseHorseVerified.Game

/-!
Five unmodified official tutorial boards from https://enclose.horse/tutorial.
The source, retrieved 2026-10-20, is documented in `data/README.md`.
Indices in witness placements are zero-based, row-major.
-/

namespace EncloseHorse.Levels

/-- Official tutorial stage 1; wall budget 1. -/
def tutorial1 : Board := Board.ofRows
  ["~~~~~~~~",
   "~~.~~~~~",
   "~~~~~...",
   "~.~...~~",
   "~...H.~~",
   "~~....~~",
   "~~~~~~~~",
   "~~~~~~~~"] 1

/-- Official tutorial stage 2; wall budget 3. -/
def tutorial2 : Board := Board.ofRows
  [".~~~.~~~",
   "~~.~~~~~",
   "~~~~~...",
   "~.....~~",
   "~.~.H.~~",
   "......~~",
   ".~~~.~~.",
   "..~~.~.."] 3

/-- Official tutorial stage 3; wall budget 5. -/
def tutorial3 : Board := Board.ofRows
  ["~~..~~~.",
   "~~..~~~~",
   "~~~..~..",
   ".....~.~",
   "~~.H....",
   "....~.~~",
   ".~~.....",
   ".~~..~.~"] 5

/-- Official tutorial stage 4; wall budget 6. -/
def tutorial4 : Board := Board.ofRows
  ["~~~.~~..",
   "~.S....~",
   ".S..~G.~",
   "...~~...",
   ".~.~H..~",
   "~~....C~",
   "~~.~~...",
   ".~.~~~.~"] 6

/-- Official tutorial stage 5; wall budget 3. -/
def tutorial5 : Board := Board.ofRows
  ["~~~.~~~~",
   "~..~.~0~",
   "~0...~G~",
   "~.~~.~G~",
   "~.~.H~~~",
   "..~~...~",
   ".....~.~",
   "~~~..~.~"] 3

structure Fixture where
  id : String
  name : String
  board : Board
  expectedScore : Int
  witness : Placement
  candidateCount : Nat
  placementCount : Nat
  deriving Repr

def fixture1 : Fixture :=
  { id := "tutorial-1"
    name := "Official tutorial 1"
    board := tutorial1
    expectedScore := 15
    witness := [23]
    candidateCount := 16
    placementCount := 17 }

def fixture2 : Fixture :=
  { id := "tutorial-2"
    name := "Official tutorial 2"
    board := tutorial2
    expectedScore := 17
    witness := [23, 40, 60]
    candidateCount := 28
    placementCount := 3683 }

def fixture3 : Fixture :=
  { id := "tutorial-3"
    name := "Official tutorial 3"
    board := tutorial3
    expectedScore := 12
    witness := [11, 24, 37, 40, 51]
    candidateCount := 35
    placementCount := 384168 }

def fixture4 : Fixture :=
  { id := "tutorial-4"
    name := "Official tutorial 4"
    board := tutorial4
    expectedScore := 31
    witness := [6, 11, 26, 31, 54, 58]
    candidateCount := 33
    placementCount := 1391842 }

def fixture5 : Fixture :=
  { id := "tutorial-5"
    name := "Official tutorial 5"
    board := tutorial5
    expectedScore := 39
    witness := [41, 52, 62]
    candidateCount := 25
    placementCount := 2626 }

/-- Three small real levels, including portals and apples. -/
def smallFixtures : List Fixture := [fixture1, fixture2, fixture5]

/-- All official tutorial fixtures; stages 3 and 4 are larger search benchmarks. -/
def fixtures : List Fixture := [fixture1, fixture2, fixture3, fixture4, fixture5]

end EncloseHorse.Levels
