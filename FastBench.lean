import Lean
import EncloseHorseVerified.FastSolver
import EncloseHorseVerified.Levels
import EncloseHorseVerified.DailyLevels

open EncloseHorse Lean

private structure BenchFixture where
  id : String
  board : Board
  expected : Int
  witness : Placement

private def tutorials (all : Bool) : List BenchFixture :=
  (if all then Levels.fixtures else Levels.smallFixtures).map
    (fun f => ⟨f.id, f.board, f.expectedScore, f.witness⟩)

private def dailies : List BenchFixture :=
  DailyLevels.fixtures.map (fun f => ⟨f.id, f.board, f.reportedOptimalScore, f.witness⟩)

/-- Native benchmark. Every returned answer is rechecked against the game engine.
The expected daily scores are external reference values, not imported proof assumptions. -/
def main (args : List String) : IO UInt32 := do
  let seeded := args.contains "--seed"
  let fixtures := if args.contains "--daily" then dailies else tutorials (args.contains "--all")
  let wanted := (args.find? (fun a => a.startsWith "--id=")).map (fun a => a.drop 5 |>.toString)
  let mut failed := false
  for f in fixtures do
    if wanted.isNone || wanted == some f.id then
      let start ← IO.monoMsNow
      IO.eprintln s!"Starting {f.id}, seeded={seeded}, candidates={f.board.candidates.length}, budget={f.board.budget}"
      match solveFastWithSeed f.board (if seeded then some f.witness else none) with
      | none =>
        IO.eprintln s!"No enclosure found for {f.id}"
        failed := true
      | some walls =>
        let elapsed := (← IO.monoMsNow) - start
        let ok := decide (admissible f.board walls) && score f.board walls == f.expected
        failed := failed || !ok
        let row := Json.mkObj [
          ("id", toJson f.id), ("seeded", toJson seeded), ("walls", toJson walls),
          ("score", toJson (score f.board walls)), ("expected", toJson f.expected),
          ("elapsedMs", toJson elapsed), ("pass", toJson ok),
          ("algorithm", toJson ("verified-dynamic-branch-and-bound" : String))]
        IO.println row.compress
  return if failed then 1 else 0
