import EncloseHorseVerified.Hardness.SourceEncoding
import EncloseHorseVerified.Hardness.TokenCounters
import EncloseHorseVerified.Hardness.SortedTokens
import EncloseHorseVerified.Hardness.OrderedReduction
import EncloseHorseVerified.Hardness.FOGameBridge
import EncloseHorseVerified.Hardness.FOCellTerrain
import EncloseHorseVerified.Hardness.Complexity
import Lean

/-! Audit the source decoder, fixed FO compiler, actual physical game reduction,
and final NP-hardness theorem together. -/

namespace HardnessTrust

open EncloseHorse.Hardness Lean Elab Command

elab "#audit_hardness_trust" : command => do
  for name in [``SourceEncoding.coverYES_encode_iff,
      ``TokenPermutation.rawEquiv, ``TokenPermutation.raw_fromRaw,
      ``TokenPermutation.fromRaw_raw, ``TokenPermutation.incidenceEquiv_encode,
      ``TokenPermutation.card_incidence_encode, ``TokenPermutation.card_cost_encode,
      ``TokenPermutation.card_reward_encode, ``TokenPermutation.plusEquiv,
      ``TokenPermutation.minusEquiv, ``TokenPermutation.ncard_plus,
      ``TokenPermutation.ncard_minus, ``FOTokens.sortedTokens_perm,
      ``BoardReduction.actual_to_label, ``BoardReduction.score_eq_base_plus_bonus,
      ``BoardReduction.constructed_score, ``BoardReduction.cover_iff_actual_winning,
      ``BoardReduction.cover_iff_reducedBoard,
      ``BoardEncoding.Represents.admissible_iff, ``BoardEncoding.Represents.score_eq,
      ``BoardEncoding.Represents.gameYES_iff,
      ``OrderedCells.SemanticModel.represents,
      ``OrderedCells.SemanticModel.gameYES_iff_cover,
      ``FOTokens.gameYES_iff_encodedCover, ``FOEncoding.cells_portalLinked_iff,
      ``FOEncoding.out_budget_count, ``FOEncoding.out_threshold,
      ``FOEncoding.semanticModel, ``FOEncoding.interpreted_game_iff_cover,
      ``setCover_fo_reduction_encloseHorse, ``encloseHorse_NP_hard] do
    let axioms ← liftCoreM <| collectAxioms name
    for ax in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains ax do
        throwError "{name} depends on unexpected axiom {ax}"
    logInfo m!"{name}: {axioms}"

#audit_hardness_trust

end HardnessTrust
