import EncloseHorseVerified.Certificate.Generated.Daily20260310.StaticData
import EncloseHorseVerified.Certificate.PathForest

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310


def staticCells : List Nat := Input.staticCells

def parentForest : List (Nat × Nat) := [(143,144),(145,144),(142,143),(146,145),(141,142),(147,146),(124,141),(140,141),(158,141),(130,147),(148,147),(164,147),(107,124),(123,124),(157,140),(175,158),(113,130),(131,130),(149,148),(165,148),(181,164),(90,107),(106,107),(108,107),(156,157),(174,157),(176,175),(192,175),(96,113),(112,113),(114,113),(132,131),(150,149),(182,165),(180,181),(198,181),(73,90),(89,90),(91,90),(109,108),(155,156),(173,156),(191,174),(177,176),(193,176),(95,96),(97,96),(111,112),(133,132),(151,150),(167,150),(199,182),(179,180),(197,180),(215,198),(56,73),(92,91),(110,109),(138,155),(154,155),(172,155),(178,177),(194,177),(94,95),(116,133),(134,133),(168,151),(184,167),(196,179),(232,215),(39,56),(55,56),(57,56),(93,92),(121,138),(137,138),(153,154),(171,154),(189,172),(195,178),(99,116),(117,116),(135,134),(169,168),(185,168),(201,184),(231,232),(233,232),(249,232),(22,39),(38,39),(40,39),(54,55),(58,57),(76,93),(104,121),(120,121),(136,137),(188,171),(206,189),(212,195),(82,99),(100,99),(202,185),(218,201),(230,231),(234,233),(266,249),(5,22),(21,22),(23,22),(53,54),(59,58),(87,104),(103,104),(187,188),(205,188),(223,206),(229,212),(65,82),(83,82),(219,202),(235,218),(247,230),(265,266),(267,266),(20,21),(24,23),(52,53),(70,53),(42,59),(60,59),(86,87),(222,205),(224,223),(228,229),(246,229),(48,65),(64,65),(66,65),(236,219),(264,247),(268,267),(19,20),(25,24),(35,52),(69,52),(43,42),(61,60),(239,222),(225,224),(227,228),(245,228),(263,246),(31,48),(49,48),(63,64),(67,66),(253,236),(269,268),(18,19),(26,25),(44,43),(62,61),(256,239),(226,225),(262,245),(14,31),(30,31),(32,31),(254,253),(270,253),(27,26),(45,44),(257,256),(261,262),(29,30),(10,27),(28,27),(258,257),(260,261),(278,261),(259,258),(277,260)]

theorem pathsAccepted : PathForest.check (DailyLevels.daily20260310.edge []) DailyLevels.daily20260310.horse parentForest = true := by
  decide +kernel

theorem staticCoverage : DailyLevels.daily20260310.openCells [] = staticCells := by decide +kernel

theorem horseIndex : DailyLevels.daily20260310.horse = 144 := by decide +kernel

theorem forestCoverage : staticCells.all (fun i =>
    (parentForest.map Prod.fst ++ [DailyLevels.daily20260310.horse]).contains i) = true := by
  decide +kernel

theorem staticPaths : ∀ i ∈ staticCells,
    Reachability.Path (DailyLevels.daily20260310.edge []) DailyLevels.daily20260310.horse i := by
  intro i hi
  apply PathForest.check_sound (DailyLevels.daily20260310.edge []) DailyLevels.daily20260310.horse parentForest pathsAccepted i
  exact List.contains_iff_mem.mp ((List.all_eq_true.mp forestCoverage) i hi)

theorem staticMask_eq : (reach DailyLevels.daily20260310 []).contains = staticCells.contains :=
  static_contains_eq DailyLevels.daily20260310 (by decide +kernel) staticCells staticCoverage staticPaths

end EncloseHorse.Certificate.Generated.Daily20260310
