import Lake
open Lake DSL
package «EncloseHorseVerified» where
  version := v!"0.1.0"
@[default_target]
lean_lib EncloseHorseVerified
lean_exe encloseHorse where
  root := `Main
