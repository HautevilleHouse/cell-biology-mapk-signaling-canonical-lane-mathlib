import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

def ConstrainedMapkSignalingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mapk_signaling_endgame (A : AdmissibleClass) :
    ConstrainedMapkSignalingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse