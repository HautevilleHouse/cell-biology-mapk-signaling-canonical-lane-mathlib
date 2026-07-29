import CellBiologyMapkSignalingCanonicalLaneLean.MapkSignalingPathway

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure TranscriptionFactor (L R : Type) (P : MapkPathwayPackage L R) where
  factorName : String
  phosphorylatedByErk : Prop
  dnaBinding : Prop
  targetGene : Type
  geneExpressionActivated : Prop

structure EarlyResponseGenes (L R : Type) (P : MapkPathwayPackage L R) where
  cFos : TranscriptionFactor L R P
  cJun : TranscriptionFactor L R P
  immediateEarlyInduction : Prop

structure DelayedResponseGenes (L R : Type) (P : MapkPathwayPackage L R) where
  cyclinD1 : TranscriptionFactor L R P
  proliferationSignal : Prop

def CellFateDecision (L R : Type) (P : MapkPathwayPackage L R) (E : EarlyResponseGenes L R P) (D : DelayedResponseGenes L R P) : Prop :=
  E.immediateEarlyInduction ∧ D.proliferationSignal

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse