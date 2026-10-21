import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk084

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def finalProof : List TreeAction := [.empty [2834,2835,2830]]

theorem finalAccepted : checkTree finalProof state85 depth = true := by
  decide +kernel

theorem unsat : ∀ model : Nat → Bool, ¬ Satisfies model state0.clauses := by
  intro model h0
  have h1 := runPrefix_sound prefix0 state0 depth state1 transition0 model h0
  have h2 := runPrefix_sound prefix1 state1 depth state2 transition1 model h1
  have h3 := runPrefix_sound prefix2 state2 depth state3 transition2 model h2
  have h4 := runPrefix_sound prefix3 state3 depth state4 transition3 model h3
  have h5 := runPrefix_sound prefix4 state4 depth state5 transition4 model h4
  have h6 := runPrefix_sound prefix5 state5 depth state6 transition5 model h5
  have h7 := runPrefix_sound prefix6 state6 depth state7 transition6 model h6
  have h8 := runPrefix_sound prefix7 state7 depth state8 transition7 model h7
  have h9 := runPrefix_sound prefix8 state8 depth state9 transition8 model h8
  have h10 := runPrefix_sound prefix9 state9 depth state10 transition9 model h9
  have h11 := runPrefix_sound prefix10 state10 depth state11 transition10 model h10
  have h12 := runPrefix_sound prefix11 state11 depth state12 transition11 model h11
  have h13 := runPrefix_sound prefix12 state12 depth state13 transition12 model h12
  have h14 := runPrefix_sound prefix13 state13 depth state14 transition13 model h13
  have h15 := runPrefix_sound prefix14 state14 depth state15 transition14 model h14
  have h16 := runPrefix_sound prefix15 state15 depth state16 transition15 model h15
  have h17 := runPrefix_sound prefix16 state16 depth state17 transition16 model h16
  have h18 := runPrefix_sound prefix17 state17 depth state18 transition17 model h17
  have h19 := runPrefix_sound prefix18 state18 depth state19 transition18 model h18
  have h20 := runPrefix_sound prefix19 state19 depth state20 transition19 model h19
  have h21 := runPrefix_sound prefix20 state20 depth state21 transition20 model h20
  have h22 := runPrefix_sound prefix21 state21 depth state22 transition21 model h21
  have h23 := runPrefix_sound prefix22 state22 depth state23 transition22 model h22
  have h24 := runPrefix_sound prefix23 state23 depth state24 transition23 model h23
  have h25 := runPrefix_sound prefix24 state24 depth state25 transition24 model h24
  have h26 := runPrefix_sound prefix25 state25 depth state26 transition25 model h25
  have h27 := runPrefix_sound prefix26 state26 depth state27 transition26 model h26
  have h28 := runPrefix_sound prefix27 state27 depth state28 transition27 model h27
  have h29 := runPrefix_sound prefix28 state28 depth state29 transition28 model h28
  have h30 := runPrefix_sound prefix29 state29 depth state30 transition29 model h29
  have h31 := runPrefix_sound prefix30 state30 depth state31 transition30 model h30
  have h32 := runPrefix_sound prefix31 state31 depth state32 transition31 model h31
  have h33 := runPrefix_sound prefix32 state32 depth state33 transition32 model h32
  have h34 := runPrefix_sound prefix33 state33 depth state34 transition33 model h33
  have h35 := runPrefix_sound prefix34 state34 depth state35 transition34 model h34
  have h36 := runPrefix_sound prefix35 state35 depth state36 transition35 model h35
  have h37 := runPrefix_sound prefix36 state36 depth state37 transition36 model h36
  have h38 := runPrefix_sound prefix37 state37 depth state38 transition37 model h37
  have h39 := runPrefix_sound prefix38 state38 depth state39 transition38 model h38
  have h40 := runPrefix_sound prefix39 state39 depth state40 transition39 model h39
  have h41 := runPrefix_sound prefix40 state40 depth state41 transition40 model h40
  have h42 := runPrefix_sound prefix41 state41 depth state42 transition41 model h41
  have h43 := runPrefix_sound prefix42 state42 depth state43 transition42 model h42
  have h44 := runPrefix_sound prefix43 state43 depth state44 transition43 model h43
  have h45 := runPrefix_sound prefix44 state44 depth state45 transition44 model h44
  have h46 := runPrefix_sound prefix45 state45 depth state46 transition45 model h45
  have h47 := runPrefix_sound prefix46 state46 depth state47 transition46 model h46
  have h48 := runPrefix_sound prefix47 state47 depth state48 transition47 model h47
  have h49 := runPrefix_sound prefix48 state48 depth state49 transition48 model h48
  have h50 := runPrefix_sound prefix49 state49 depth state50 transition49 model h49
  have h51 := runPrefix_sound prefix50 state50 depth state51 transition50 model h50
  have h52 := runPrefix_sound prefix51 state51 depth state52 transition51 model h51
  have h53 := runPrefix_sound prefix52 state52 depth state53 transition52 model h52
  have h54 := runPrefix_sound prefix53 state53 depth state54 transition53 model h53
  have h55 := runPrefix_sound prefix54 state54 depth state55 transition54 model h54
  have h56 := runPrefix_sound prefix55 state55 depth state56 transition55 model h55
  have h57 := runPrefix_sound prefix56 state56 depth state57 transition56 model h56
  have h58 := runPrefix_sound prefix57 state57 depth state58 transition57 model h57
  have h59 := runPrefix_sound prefix58 state58 depth state59 transition58 model h58
  have h60 := runPrefix_sound prefix59 state59 depth state60 transition59 model h59
  have h61 := runPrefix_sound prefix60 state60 depth state61 transition60 model h60
  have h62 := runPrefix_sound prefix61 state61 depth state62 transition61 model h61
  have h63 := runPrefix_sound prefix62 state62 depth state63 transition62 model h62
  have h64 := runPrefix_sound prefix63 state63 depth state64 transition63 model h63
  have h65 := runPrefix_sound prefix64 state64 depth state65 transition64 model h64
  have h66 := runPrefix_sound prefix65 state65 depth state66 transition65 model h65
  have h67 := runPrefix_sound prefix66 state66 depth state67 transition66 model h66
  have h68 := runPrefix_sound prefix67 state67 depth state68 transition67 model h67
  have h69 := runPrefix_sound prefix68 state68 depth state69 transition68 model h68
  have h70 := runPrefix_sound prefix69 state69 depth state70 transition69 model h69
  have h71 := runPrefix_sound prefix70 state70 depth state71 transition70 model h70
  have h72 := runPrefix_sound prefix71 state71 depth state72 transition71 model h71
  have h73 := runPrefix_sound prefix72 state72 depth state73 transition72 model h72
  have h74 := runPrefix_sound prefix73 state73 depth state74 transition73 model h73
  have h75 := runPrefix_sound prefix74 state74 depth state75 transition74 model h74
  have h76 := runPrefix_sound prefix75 state75 depth state76 transition75 model h75
  have h77 := runPrefix_sound prefix76 state76 depth state77 transition76 model h76
  have h78 := runPrefix_sound prefix77 state77 depth state78 transition77 model h77
  have h79 := runPrefix_sound prefix78 state78 depth state79 transition78 model h78
  have h80 := runPrefix_sound prefix79 state79 depth state80 transition79 model h79
  have h81 := runPrefix_sound prefix80 state80 depth state81 transition80 model h80
  have h82 := runPrefix_sound prefix81 state81 depth state82 transition81 model h81
  have h83 := runPrefix_sound prefix82 state82 depth state83 transition82 model h82
  have h84 := runPrefix_sound prefix83 state83 depth state84 transition83 model h83
  have h85 := runPrefix_sound prefix84 state84 depth state85 transition84 model h84
  exact checkTree_sound finalProof state85 depth finalAccepted model h85

#print axioms unsat

end EncloseHorse.Certificate.Generated.Daily20260112
