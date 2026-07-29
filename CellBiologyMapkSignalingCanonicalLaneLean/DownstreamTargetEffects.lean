import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure DownstreamTargetPackage {M : MapkPathwayPackage} (P : M.erkActivation) where
  elkNuclearTargets : Prop
  mskActivation : Prop
  immediateEarlyGenes : Prop
  cellFatePrograms : Prop

structure DownstreamTargetEvidence {M : MapkPathwayPackage} {P : M.erkActivation}
    (D : DownstreamTargetPackage P) where
  elkNuclearTargetsClosed : D.elnNuclearTargets
  mskActivationClosed : D.mskActivation
  immediateEarlyGenesClosed : D.immediateEarlyGenes
  cellFateProgramsClosed : D.cellFatePrograms

def DownstreamTargetClosed {M : MapkPathwayPackage} {P : M.erkActivation}
    (D : DownstreamTargetPackage P) : Prop :=
  D.elnNuclearTargets ∧ D.mskActivation ∧ D.immediateEarlyGenes ∧ D.cellFatePrograms

theorem downstream_target_closed_from_evidence {M : MapkPathwayPackage} {P : M.erkActivation}
    (D : DownstreamTargetPackage P) (E : DownstreamTargetEvidence D) :
    DownstreamTargetClosed D := by
  exact And.intro E.elnNuclearTargetsClosed
    (And.intro E.mskActivationClosed
      (And.intro E.immediateEarlyGenesClosed E.cellFateProgramsClosed))

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse