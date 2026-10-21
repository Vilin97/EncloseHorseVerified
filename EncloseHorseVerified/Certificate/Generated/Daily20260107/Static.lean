import EncloseHorseVerified.Certificate.Generated.Daily20260107.StaticData
import EncloseHorseVerified.Certificate.PathForest

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107


def staticCells : List Nat := Input.staticCells

def parentForest : List (Nat × Nat) := [(102,90),(101,102),(103,102),(100,101),(113,101),(104,103),(99,100),(112,100),(125,113),(92,104),(105,104),(116,104),(87,99),(98,99),(111,99),(124,112),(137,125),(80,92),(93,92),(106,105),(117,105),(128,116),(75,87),(86,87),(97,98),(110,98),(136,124),(138,137),(149,137),(68,80),(81,80),(94,93),(107,106),(118,106),(129,117),(140,128),(63,75),(74,75),(85,86),(109,97),(135,136),(148,136),(139,138),(150,138),(56,68),(67,68),(69,68),(82,81),(95,94),(130,118),(141,129),(152,140),(51,63),(62,63),(64,63),(73,74),(121,109),(147,135),(160,148),(151,139),(162,150),(55,56),(57,56),(66,67),(70,69),(142,130),(153,141),(164,152),(39,51),(61,62),(65,64),(72,73),(120,121),(133,121),(146,147),(43,55),(54,55),(58,57),(154,142),(165,153),(27,39),(38,39),(49,61),(77,65),(145,133),(31,43),(42,43),(46,58),(166,154),(15,27),(26,27),(28,27),(37,38),(157,145),(19,31),(30,31),(32,31),(34,46),(3,15),(14,15),(16,15),(25,26),(29,28),(36,37),(7,19),(18,19),(20,19),(22,34),(35,34),(2,3),(13,14),(17,16),(24,25),(21,20)]

theorem pathsAccepted : PathForest.check (DailyLevels.daily20260107.edge []) DailyLevels.daily20260107.horse parentForest = true := by
  decide +kernel

theorem staticCoverage : DailyLevels.daily20260107.openCells [] = staticCells := by decide +kernel

theorem horseIndex : DailyLevels.daily20260107.horse = 90 := by decide +kernel

theorem forestCoverage : staticCells.all (fun i =>
    (parentForest.map Prod.fst ++ [DailyLevels.daily20260107.horse]).contains i) = true := by
  decide +kernel

theorem staticPaths : ∀ i ∈ staticCells,
    Reachability.Path (DailyLevels.daily20260107.edge []) DailyLevels.daily20260107.horse i := by
  intro i hi
  apply PathForest.check_sound (DailyLevels.daily20260107.edge []) DailyLevels.daily20260107.horse parentForest pathsAccepted i
  exact List.contains_iff_mem.mp ((List.all_eq_true.mp forestCoverage) i hi)

theorem staticMask_eq : (reach DailyLevels.daily20260107 []).contains = staticCells.contains :=
  static_contains_eq DailyLevels.daily20260107 (by decide +kernel) staticCells staticCoverage staticPaths

end EncloseHorse.Certificate.Generated.Daily20260107
