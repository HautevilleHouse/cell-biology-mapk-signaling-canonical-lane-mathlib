import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure MapkCell where
  carrier : Type
  cellType : String

def MapkWitnessClosed (O : MapkAdmittedObject) : Prop :=
  O.downstreamTranscription

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse