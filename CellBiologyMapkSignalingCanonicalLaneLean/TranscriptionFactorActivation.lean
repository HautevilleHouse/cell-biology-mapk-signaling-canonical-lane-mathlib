import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure TranscriptionFactorActivationPackage where
  activatedKinaseNuclearTranslocation : Prop
  transcriptionFactorPhosphorylation : Prop
  geneExpressionChanges : Prop
  cellularResponse : Prop

structure TranscriptionFactorActivationEvidence (T : TranscriptionFactorActivationPackage) where
  activatedKinaseNuclearTranslocationClosed : T.activatedKinaseNuclearTranslocation
  transcriptionFactorPhosphorylationClosed : T.transcriptionFactorPhosphorylation
  geneExpressionChangesClosed : T.geneExpressionChanges
  cellularResponseClosed : T.cellularResponse

def TranscriptionFactorActivationClosed (T : TranscriptionFactorActivationPackage) : Prop :=
  T.activatedKinaseNuclearTranslocation ∧ T.transcriptionFactorPhosphorylation ∧
  T.geneExpressionChanges ∧ T.cellularResponse

theorem transcription_factor_activation_closed_from_evidence
    (T : TranscriptionFactorActivationPackage) (E : TranscriptionFactorActivationEvidence T) :
    TranscriptionFactorActivationClosed T := by
  exact And.intro E.activatedKinaseNuclearTranslocationClosed
    (And.intro E.transcriptionFactorPhosphorylationClosed
      (And.intro E.geneExpressionChangesClosed E.cellularResponseClosed))

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse