import EncloseHorseVerified.Game

/-!
Three real daily maps with exact pinned provenance in data/daily-levels.json.
The placements below came from the external ASP reference. Tests check their
legality, enclosure and score in the Lean kernel. Those witness checks alone
are not optimality certificates; Clingo's global optimum claim remains external.
-/
namespace EncloseHorse.DailyLevels

/-- Archived official daily 2026-01-07; source: https://github.com/pink10000/eh_ilp_solver/blob/6956feb8052291d22bac488ce3814749031df83d/maps/daily/2026-01-07_12_66.game -/
def daily20260107 : Board := Board.ofRows
  [
    "~~..~~~.~~~~",
    "~C.C.......~",
    "..C......~..",
    ".C.C~~..~~.~",
    "~.~.~~.....~",
    "~..........~",
    "....~.~~...~",
    "~...~~H~....",
    "~...........",
    "~.....~~...~",
    "..~~..~~C.C~",
    "~.~......C.~",
    "~.......C.C~",
    "~.~~.~.~...~"
  ] 12

/-- A Clingo-produced placement whose legality and score are checked in Tests/DailyLevels.lean. -/
def daily20260107Witness : Placement := [3,7,14,27,35,63,95,101,107,140,153,166]

/-- Archived official daily 2026-01-12; source: https://github.com/pink10000/eh_ilp_solver/blob/6956feb8052291d22bac488ce3814749031df83d/maps/daily/2026-01-12_12_204.game -/
def daily20260112 : Board := Board.ofRows
  [
    "~~~~~~~~~~~~~~~~~~~",
    "~CCC0~CC~C~~~~~~...",
    "~CCC~~CC~C~~~~~...~",
    "~CCC~1CC~C2~~....~~",
    "~~~~~~~~~~~~...2.~~",
    "~.......~....~...~~",
    "...~~~~.....~~....~",
    "..~~~~~...~~~~~....",
    "~.~~~~....~~~~.....",
    "~.~~~......~~~..~..",
    "~...~.....H....~~~.",
    "~..............~~~~",
    "...1..~~....~..~~~~",
    "~....~~~~..~~~..~~.",
    "~~.~~~~~~..~~~.....",
    "~~..~~~~~..~~......",
    "............0.....~",
    "~~.......~~......~~",
    "~~~~..~.~~~~~~...~~"
  ] 12

/-- A Clingo-produced placement whose legality and score are checked in Tests/DailyLevels.lean. -/
def daily20260112Witness : Placement := [37,114,133,151,169,228,283,287,301,312,319,337]

/-- Archived official daily 2026-03-10; source: https://github.com/pink10000/eh_ilp_solver/blob/6956feb8052291d22bac488ce3814749031df83d/maps/daily/2026-03-10_10_99.game -/
def daily20260310 : Board := Board.ofRows
  [
    "~~~~~.~~~~.~~~.~~",
    "~...............~",
    "~.~~...~....~~..~",
    "~................",
    "~..~~.~~.~~~~~..~",
    "~..~.........~..~",
    "~..~.........~..~",
    "~..~..~~~~~......",
    "...~....H.......~",
    "......~~~~~..~...",
    "~............~..~",
    "...~.........~..~",
    "~..~~~~~.~~.~~..~",
    "~...............~",
    "~.~~~~~...~.~~~..",
    "~...............~",
    "~~~~~..~~~~~~~~~~"
  ] 10

/-- A Clingo-produced placement whose legality and score are checked in Tests/DailyLevels.lean. -/
def daily20260310Witness : Placement := [56,59,116,134,155,169,172,223,254,261]

structure Fixture where
  id : String
  board : Board
  reportedOptimalScore : Int
  witness : Placement
  source : String
  deriving Repr

def fixtures : List Fixture :=
  [{ id := "daily-2026-01-07"
     board := daily20260107
     reportedOptimalScore := 66
     witness := daily20260107Witness
     source := "https://github.com/pink10000/eh_ilp_solver/blob/6956feb8052291d22bac488ce3814749031df83d/maps/daily/2026-01-07_12_66.game" },
   { id := "daily-2026-01-12"
     board := daily20260112
     reportedOptimalScore := 204
     witness := daily20260112Witness
     source := "https://github.com/pink10000/eh_ilp_solver/blob/6956feb8052291d22bac488ce3814749031df83d/maps/daily/2026-01-12_12_204.game" },
   { id := "daily-2026-03-10"
     board := daily20260310
     reportedOptimalScore := 99
     witness := daily20260310Witness
     source := "https://github.com/pink10000/eh_ilp_solver/blob/6956feb8052291d22bac488ce3814749031df83d/maps/daily/2026-03-10_10_99.game" }]

end EncloseHorse.DailyLevels
