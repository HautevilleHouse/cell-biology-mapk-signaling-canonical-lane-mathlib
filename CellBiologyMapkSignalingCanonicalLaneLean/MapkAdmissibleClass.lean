import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure MapkAdmittedObject where
  cellType : Type
  receptorType : Type
  ligandConcentration : Float
  phosphorylationState : Prop
  signalingActive : Prop
  downstreamTranscription : Prop
  conclusion : downstreamTranscription

def MapkWitnessClosed (O : MapkAdmittedObject) : Prop :=
  O.downstreamTranscription

structure AdmissibleClass where
  object : MapkAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MapkWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse