import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure NuclearGeneExpressionPackage where
  erkNuclearTranslocation : Prop
  transcriptionFactorActivation : Prop
  immediateEarlyGenes : Prop
  delayedResponseGenes : Prop
  chromatinRemodeling : Prop
  mrnaExport : Prop
  erkNuclearTranslocationClosed : erkNuclearTranslocation
  transcriptionFactorActivationClosed : transcriptionFactorActivation
  immediateEarlyGenesClosed : immediateEarlyGenes
  delayedResponseGenesClosed : delayedResponseGenes
  chromatinRemodelingClosed : chromatinRemodeling

structure NuclearGeneExpressionEvidence
    (N : NuclearGeneExpressionPackage) where
  erkNuclearTranslocationClosed : N.erkNuclearTranslocation
  transcriptionFactorActivationClosed : N.transcriptionFactorActivation
  immediateEarlyGenesClosed : N.immediateEarlyGenes
  delayedResponseGenesClosed : N.delayedResponseGenes
  chromatinRemodelingClosed : N.chromatinRemodeling
  mrnaExportClosed : N.mrnaExport

def NuclearGeneExpressionClosed
    (N : NuclearGeneExpressionPackage) : Prop :=
  N.erkNuclearTranslocation ∧ N.transcriptionFactorActivation ∧
  N.immediateEarlyGenes ∧ N.delayedResponseGenes ∧
  N.chromatinRemodeling ∧ N.mrnaExport

theorem nuclear_gene_expression_closed_from_evidence
    (N : NuclearGeneExpressionPackage)
    (E : NuclearGeneExpressionEvidence N) :
    NuclearGeneExpressionClosed N := by
  exact And.intro E.erkNuclearTranslocationClosed
    (And.intro E.transcriptionFactorActivationClosed
      (And.intro E.immediateEarlyGenesClosed
        (And.intro E.delayedResponseGenesClosed
          (And.intro E.chromatinRemodelingClosed E.mrnaExportClosed))))

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse