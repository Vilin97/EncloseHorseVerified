import Lean
import EncloseHorseVerified.Game
import EncloseHorseVerified.Solver

/-!
# An interactive native Lean infoview

Place the cursor on `#enclose_horse board` in VS Code to open the widget.
The JavaScript component only draws the board and collects clicks. The Lean RPC
methods below evaluate the actual game and run the proved exact solver.
-/

namespace EncloseHorse.Widget
open Lean Server Elab Command

/-- A board kept alive by the infoview's RPC reference store. -/
structure GameState where
  board : Board
  deriving TypeName

/-- The visual data sent to the client. Scores use strings to preserve exact integers. -/
structure ViewState where
  width : Nat
  height : Nat
  budget : Nat
  tiles : Array String
  walls : List Nat
  reached : List Nat
  enclosed : Bool
  score : String
  deriving RpcEncodable

private def tileName : Tile → String
  | .grass => "grass"
  | .water => "water"
  | .horse => "horse"
  | .cherry => "cherry"
  | .apple => "apple"
  | .bee => "bee"
  | .portal n => s!"portal:{n}"

private def view (b : Board) (walls : Placement) : ViewState := {
  width := b.width
  height := b.height
  budget := b.budget
  tiles := b.cells.toArray.map (fun i => tileName (b.tileAt i))
  walls := walls
  reached := reach b walls
  enclosed := enclosed b walls
  score := toString (score b walls)
}

structure Props where
  state : WithRpcRef GameState
  initial : ViewState
  deriving RpcEncodable

structure UpdateParams where
  state : WithRpcRef GameState
  walls : Placement
  deriving RpcEncodable

/-- Recompute a user placement in Lean, rejecting illegal or over-budget requests. -/
@[server_rpc_method]
def evaluate (params : UpdateParams) : RequestM (RequestTask ViewState) :=
  RequestM.asTask do
    let b := params.state.val.board
    unless decide (legal b params.walls) do
      throwThe RequestError ⟨.invalidParams, "Illegal wall placement or wall budget exceeded"⟩
    return view b params.walls

/-- Run exact search. The solver's theorem proves maximality for every board. -/
@[server_rpc_method]
def findOptimal (params : UpdateParams) : RequestM (RequestTask ViewState) :=
  RequestM.asTask do
    let b := params.state.val.board
    let some walls := solve b
      | throwThe RequestError ⟨.invalidParams, "This board has no legal enclosure"⟩
    return view b walls

@[widget_module]
def gameWidget : Lean.Widget.Module where
  javascript := include_str ".." / "widget" / "encloseHorse.js"

private unsafe def evalBoardUnsafe (stx : Syntax) : TermElabM Board :=
  Term.evalTerm Board (mkConst ``Board) stx

@[implemented_by evalBoardUnsafe]
private opaque evalBoard (stx : Syntax) : TermElabM Board

/-- Show the interactive game for a board in the native Lean infoview. -/
syntax (name := encloseHorseCmd) "#enclose_horse " term : command

@[command_elab encloseHorseCmd]
def elabEncloseHorse : CommandElab := fun
  | stx@`(#enclose_horse $board:term) => do
    let b ← liftTermElabM <| evalBoard board
    liftCoreM do
      let props : Props := {
        state := ← WithRpcRef.mk { board := b }
        initial := view b []
      }
      Lean.Widget.savePanelWidgetInfo gameWidget.javascriptHash (rpcEncode props) stx
  | _ => throwUnsupportedSyntax

end EncloseHorse.Widget
