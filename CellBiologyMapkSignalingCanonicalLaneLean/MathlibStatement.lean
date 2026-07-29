import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation :=
  { sourceKey := "cell-biology-mapk-signaling-canonical-lane",
    theoremObject := "MAPK signaling cascade activation and signal propagation",
    commonCoreImported := true,
    theoremSpecificDefinitionsNative := true,
    theoremSpecificBridgeNative := true,
    theoremSpecificAdmittedClosureNative := true,
    unrestrictedClassicalClosureNative := false,
    carriedGap := "theorem-specific endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
  }

def theoremSpecificEndgamePilotClosed : Prop :=
  forall A : AdmissibleClass, ConstrainedMapkClosure A

theorem theorem_specific_endgame_pilot_checked :
    theoremSpecificEndgamePilotClosed := by
  intro A
  exact constrained_mapk_endgame A

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse