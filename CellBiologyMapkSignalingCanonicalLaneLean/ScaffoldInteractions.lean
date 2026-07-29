import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure ScaffoldPackage (M : MapkPathwayPackage) where
  ksrPresent : Prop
  mekErkDocking : Prop
  signalAmplification : Prop
  spatialLocalization : Prop

structure ScaffoldEvidence {M : MapkPathwayPackage} (S : ScaffoldPackage M) where
  ksrPresentClosed : S.ksrPresent
  mekErkDockingClosed : S.mekErkDocking
  signalAmplificationClosed : S.signalAmplification
  spatialLocalizationClosed : S.spatialLocalization

def ScaffoldClosed {M : MapkPathwayPackage} (S : ScaffoldPackage M) : Prop :=
  S.ksrPresent ∧ S.mekErkDocking ∧ S.signalAmplification ∧ S.spatialLocalization

theorem scaffold_closed_from_evidence {M : MapkPathwayPackage} (S : ScaffoldPackage M) (E : ScaffoldEvidence S) :
    ScaffoldClosed S := by
  exact And.intro E.ksrPresentClosed
    (And.intro E.mekErkDockingClosed
      (And.intro E.signalAmplificationClosed E.spatialLocalizationClosed))

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse