import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MapkSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MapkAdmittedObject where
  space : MapkSpace
  pathwayActive : Prop
  signalTransduced : Prop
  effectorModel : Type
  effectorTopology : TopologicalSpace effectorModel
  activatedToEffector : Prop
  conclusion : activatedToEffector

structure MapkEndgameState where
  object : MapkAdmittedObject

def MapkWitnessClosed (O : MapkAdmittedObject) : Prop :=
  O.activatedToEffector

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse