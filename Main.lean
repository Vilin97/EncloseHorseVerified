import Lean
import EncloseHorseVerified.Levels
import EncloseHorseVerified.Solver

open EncloseHorse Lean

private def fixtureJson (f : Levels.Fixture) (walls : Placement) (elapsed : Nat) : Json :=
  Json.mkObj [
    ("id", toJson f.id), ("walls", toJson walls),
    ("score", toJson (score f.board walls)),
    ("expectedScore", toJson f.expectedScore),
    ("enclosed", toJson (enclosed f.board walls)),
    ("legal", toJson (decide (legal f.board walls))),
    ("elapsedMs", toJson elapsed)]

def main (args : List String) : IO UInt32 := do
  let fixtures := if args.contains "--all" then Levels.fixtures else Levels.smallFixtures
  let jsonMode := args.contains "--json"
  let witnessesOnly := args.contains "--witnesses"
  let mut results : Array Json := #[]
  let mut failed := false
  for f in fixtures do
    let start ← IO.monoMsNow
    let answer := if witnessesOnly then some f.witness else solve f.board
    match answer with
    | none =>
      failed := true
      IO.eprintln s!"{f.id}: no enclosure found (expected {f.expectedScore})"
    | some walls =>
      let elapsed := (← IO.monoMsNow) - start
      let ok := decide (admissible f.board walls) && score f.board walls == f.expectedScore
      failed := failed || !ok
      results := results.push (fixtureJson f walls elapsed)
      unless jsonMode do
        IO.println s!"{f.name}: score={score f.board walls}, walls={walls}, {elapsed}ms, pass={ok}"
  if jsonMode then IO.println (Json.arr results).pretty
  return if failed then 1 else 0
