import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure ReceptorActivationPackage where
  ligandBinding : Type u
  receptorDimerization : Type v
  tyrosinePhosphorylation : Type w
  adaptorRecruitment : Prop
  ligandBindingAffinityMeasured : Prop
  dimerizationObserved : Prop
  phosphorylationDetected : Prop
  adaptorRecruitmentClosed : adaptorRecruitment

structure ReceptorActivationEvidence (R : ReceptorActivationPackage) where
  ligandBindingAffinityClosed : R.ligandBindingAffinityMeasured
  dimerizationObservedClosed : R.dimerizationObserved
  phosphorylationDetectedClosed : R.phosphorylationDetected
  adaptorRecruitmentClosed : R.adaptorRecruitmentClosed

def ReceptorActivationClosed (R : ReceptorActivationPackage) : Prop :=
  R.ligandBindingAffinityMeasured ∧ R.dimerizationObserved ∧
  R.phosphorylationDetected ∧ R.adaptorRecruitment

theorem receptor_activation_closed_from_evidence
    (R : ReceptorActivationPackage) (E : ReceptorActivationEvidence R) :
    ReceptorActivationClosed R := by
  exact And.intro E.ligandBindingAffinityClosed
    (And.intro E.dimerizationObservedClosed
      (And.intro E.phosphorylationDetectedClosed E.adaptorRecruitmentClosed))

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse