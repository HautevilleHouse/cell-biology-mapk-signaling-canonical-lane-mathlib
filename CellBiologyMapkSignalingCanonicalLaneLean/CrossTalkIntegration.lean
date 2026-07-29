import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure CrossTalkPackage (M : MapkPathwayPackage) where
  pi3kAktInterplay : Prop
  campPkaInhibition : Prop
  wntBetaCateninSynergy : Prop
  stressKinases : Prop

structure CrossTalkEvidence {M : MapkPathwayPackage} (C : CrossTalkPackage M) where
  pi3kAktInterplayClosed : C.pi3kAktInterplay
  campPkaInhibitionClosed : C.campPkaInhibition
  wntBetaCateninSynergyClosed : C.wntBetaCateninSynergy
  stressKinasesClosed : C.stressKinases

def CrossTalkClosed {M : MapkPathwayPackage} (C : CrossTalkPackage M) : Prop :=
  C.pi3kAktInterplay ∧ C.campPkaInhibition ∧ C.wntBetaCateninSynergy ∧ C.stressKinases

theorem cross_talk_closed_from_evidence {M : MapkPathwayPackage} (C : CrossTalkPackage M) (E : CrossTalkEvidence C) :
    CrossTalkClosed C := by
  exact And.intro E.pi3kAktInterplayClosed
    (And.intro E.campPkaInhibitionClosed
      (And.intro E.wntBetaCateninSynergyClosed E.stressKinasesClosed))

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse