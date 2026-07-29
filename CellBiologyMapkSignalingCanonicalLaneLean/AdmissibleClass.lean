import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure MapkAdmittedObject where
  cellType : Type
  signalingPathway : Prop
  receptorActivation : Prop
  mapkCascadeActivated : Prop
  downstreamTranscription : Prop
  conclusion : downstreamTranscription

structure AdmissibleClass where
  object : MapkAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MapkWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse