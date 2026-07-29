import CellBiologyMapkSignalingCanonicalLaneLean.DownstreamTranscription

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure DownstreamTranscriptEvidence {L R : Type} {P : MapkPathwayPackage L R}
  (E : EarlyResponseGenes L R P) (D : DelayedResponseGenes L R P) where
  immediateEarlyInductionClosed : E.immediateEarlyInduction
  proliferationSignalClosed : D.proliferationSignal

theorem cell_fate_decision_closed_from_evidence {L R : Type} {P : MapkPathwayPackage L R}
  (E : EarlyResponseGenes L R P) (D : DelayedResponseGenes L R P)
  (Ev : DownstreamTranscriptEvidence E D) : CellFateDecision L R P E D := by
  exact And.intro Ev.immediateEarlyInductionClosed Ev.proliferationSignalClosed

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse