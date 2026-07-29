import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure PhosphorylationCascadePackage where
  kinaseActivationOrder : Prop
  phosphorylationEvents : Prop
  signalAmplification : Prop
  negativeFeedback : Prop

structure PhosphorylationCascadeEvidence (P : PhosphorylationCascadePackage) where
  kinaseActivationOrderClosed : P.kinaseActivationOrder
  phosphorylationEventsClosed : P.phosphorylationEvents
  signalAmplificationClosed : P.signalAmplification
  negativeFeedbackClosed : P.negativeFeedback

def PhosphorylationCascadeClosed (P : PhosphorylationCascadePackage) : Prop :=
  P.kinaseActivationOrder ∧ P.phosphorylationEvents ∧
  P.signalAmplification ∧ P.negativeFeedback

theorem phosphorylation_cascade_closed_from_evidence
    (P : PhosphorylationCascadePackage) (E : PhosphorylationCascadeEvidence P) :
    PhosphorylationCascadeClosed P := by
  exact And.intro E.kinaseActivationOrderClosed
    (And.intro E.phosphorylationEventsClosed
      (And.intro E.signalAmplificationClosed E.negativeFeedbackClosed))

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse