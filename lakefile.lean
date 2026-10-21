import Lake
open Lake DSL
package «EncloseHorseVerified» where
  version := v!"0.1.0"
require «descriptive-complexity» from git
  "https://github.com/PierreSenellart/descriptive-complexity" @
  "4f35579400754757b1e6b1f13e74ac1913f64162"
@[default_target]
lean_lib EncloseHorseVerified
lean_exe encloseHorse where
  root := `Main

lean_exe fastBench where
  root := `FastBench
