import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData
import EncloseHorseVerified.Certificate.PathForest

open EncloseHorse EncloseHorse.Certificate.Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

private abbrev board := DailyLevels.daily20260112

def staticCells : List Nat := Input.staticCells

/-- A supplied BFS parent forest. Every edge and earlier-parent dependency is checked. -/
def parentForest : List (Nat × Nat) := [(181,200),(219,200),(199,200),(201,200),(180,181),(238,219),(218,219),(220,219),(198,199),(202,201),(161,180),(179,180),(257,238),(237,238),(239,238),(217,218),(221,220),(197,198),(203,202),(142,161),(160,161),(178,179),(276,257),(256,257),(236,237),(216,217),(222,221),(196,197),(204,203),(123,142),(141,142),(159,160),(177,178),(295,276),(275,276),(215,216),(241,222),(223,222),(195,196),(185,204),(104,123),(122,123),(124,123),(140,141),(158,159),(176,177),(314,295),(294,295),(214,215),(242,241),(166,185),(186,185),(105,104),(121,122),(125,124),(313,314),(315,314),(233,214),(213,214),(261,242),(167,166),(106,105),(102,121),(312,313),(334,315),(316,315),(232,233),(212,213),(280,261),(262,261),(148,167),(168,167),(107,106),(101,102),(331,312),(311,312),(335,334),(317,316),(23,316),(251,232),(231,232),(193,212),(211,212),(299,280),(281,280),(129,148),(149,148),(169,168),(88,107),(100,101),(330,331),(310,311),(336,335),(298,317),(318,317),(22,23),(250,251),(230,231),(62,231),(192,193),(210,211),(300,299),(282,281),(110,129),(128,129),(130,129),(150,149),(188,169),(170,169),(89,88),(99,100),(349,330),(329,330),(309,310),(337,336),(319,318),(41,22),(21,22),(249,250),(229,230),(63,62),(191,192),(301,300),(283,282),(91,110),(109,110),(111,110),(131,130),(151,150),(189,188),(70,89),(90,89),(98,99),(328,329),(308,309),(356,337),(338,337),(320,319),(60,41),(40,41),(20,21),(268,249),(248,249),(228,229),(44,63),(64,63),(172,191),(302,301),(284,283),(72,91),(92,91),(67,91),(208,189),(71,70),(97,98),(347,328),(327,328),(307,308),(357,356),(339,338),(321,320),(59,60),(39,40),(287,268),(25,44),(45,44),(153,172),(303,302),(265,284),(53,72),(73,72),(66,67),(116,97),(96,97),(346,347),(326,327),(288,307),(306,307),(358,357),(58,59),(26,25),(134,153),(54,53),(47,66),(115,116),(325,326),(305,306),(133,134),(35,54),(55,54),(28,47),(114,115),(304,305),(36,35),(37,36)]

theorem pathsAccepted : PathForest.check (board.edge []) board.horse parentForest = true := by
  decide +kernel

theorem staticCoverage : board.openCells [] = staticCells := by decide +kernel

theorem horseIndex : board.horse = 200 := by decide +kernel

theorem forestCoverage : staticCells.all (fun i =>
    (parentForest.map Prod.fst ++ [board.horse]).contains i) = true := by
  decide +kernel

theorem staticPaths : ∀ i ∈ staticCells,
    Reachability.Path (board.edge []) board.horse i := by
  intro i hi
  apply PathForest.check_sound (board.edge []) board.horse parentForest pathsAccepted i
  exact List.contains_iff_mem.mp ((List.all_eq_true.mp forestCoverage) i hi)

/-- Coverage and every supplied path edge are kernel checked, without flood-fill reduction. -/
theorem staticMask_eq : (reach board []).contains = staticCells.contains :=
  static_contains_eq board (by decide +kernel) staticCells staticCoverage staticPaths

end EncloseHorse.Certificate.Generated.Daily20260112
