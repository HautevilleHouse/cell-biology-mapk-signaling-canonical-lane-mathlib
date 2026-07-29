import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure RafMekErkPhosphorylationPackage where
  rafActivation : Prop
  mekPhosphorylation : Prop
  erkPhosphorylation : Prop
  scaffoldProteins : Prop
  negativeFeedback : Prop
  temporalDynamics : Prop
  rafActivationClosed : rafActivation
  mekPhosphorylationClosed : mekPhosphorylation
  erkPhosphorylationClosed : erkPhosphorylation
  scaffoldProteinsClosed : scaffoldProteins
  negativeFeedbackClosed : negativeFeedback

structure RafMekErkPhosphorylationEvidence
    (P : RafMekErkPhosphorylationPackage) where
  rafActivationClosed : P.rafActivation
  mekPhosphorylationClosed : P.mekPhosphorylation
  erkPhosphorylationClosed : P.erkPhosphorylation
  scaffoldProteinsClosed : P.scaffoldProteins
  negativeFeedbackClosed : P.negativeFeedback
  temporalDynamicsClosed : P.temporalDynamics

def RafMekErkPhosphorylationClosed
    (P : RafMekErkPhosphorylationPackage) : Prop :=
  P.rafActivation ∧ P.mekPhosphorylation ∧ P.erkPhosphorylation ∧
  P.scaffoldProteins ∧ P.negativeFeedback ∧ P.temporalDynamics

theorem raf_mek_erk_phosphorylation_closed_from_evidence
    (P : RafMekErkPhosphorylationPackage)
    (E : RafMekErkPhosphorylationEvidence P) :
    RafMekErkPhosphorylationClosed P := by
  exact And.intro E.rafActivationClosed
    (And.intro E.mekPhosphorylationClosed
      (And.intro E.erkPhosphorylationClosed
        (And.intro E.scaffoldProteinsClosed
          (And.intro E.negativeFeedbackClosed E.temporalDynamicsClosed))))

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse