import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MapkWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse