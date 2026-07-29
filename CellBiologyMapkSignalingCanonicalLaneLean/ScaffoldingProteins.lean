import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure ScaffoldingPackage where
  scaffoldProteinPresent : Prop
  kinaseDockingSites : Prop
  signalComplexity : Prop
  pathwaySpecificity : Prop

structure ScaffoldingEvidence (S : ScaffoldingPackage) where
  scaffoldProteinPresentClosed : S.scaffoldProteinPresent
  kinaseDockingSitesClosed : S.kinaseDockingSites
  signalComplexityClosed : S.signalComplexity
  pathwaySpecificityClosed : S.pathwaySpecificity

def ScaffoldingClosed (S : ScaffoldingPackage) : Prop :=
  S.scaffoldProteinPresent ∧ S.kinaseDockingSites ∧
  S.signalComplexity ∧ S.pathwaySpecificity

theorem scaffolding_closed_from_evidence (S : ScaffoldingPackage) (E : ScaffoldingEvidence S) :
    ScaffoldingClosed S := by
  exact And.intro E.scaffoldProteinPresentClosed
    (And.intro E.kinaseDockingSitesClosed
      (And.intro E.signalComplexityClosed E.pathwaySpecificityClosed))

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse