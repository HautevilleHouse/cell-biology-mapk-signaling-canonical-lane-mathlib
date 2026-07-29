import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure TerminalDifferentiationPackage where
  sustainedErkActivity : Prop
  cellCycleArrest : Prop
  differentiationMarkers : Prop
  lineageSpecification : Prop
  apoptosisResistance : Prop
  sustainedErkActivityClosed : sustainedErkActivity
  cellCycleArrestClosed : cellCycleArrest
  differentiationMarkersClosed : differentiationMarkers
  lineageSpecificationClosed : lineageSpecification

structure TerminalDifferentiationEvidence
    (T : TerminalDifferentiationPackage) where
  sustainedErkActivityClosed : T.sustainedErkActivity
  cellCycleArrestClosed : T.cellCycleArrest
  differentiationMarkersClosed : T.differentiationMarkers
  lineageSpecificationClosed : T.lineageSpecification
  apoptosisResistanceClosed : T.apoptosisResistance

def TerminalDifferentiationClosed
    (T : TerminalDifferentiationPackage) : Prop :=
  T.sustainedErkActivity ∧ T.cellCycleArrest ∧
  T.differentiationMarkers ∧ T.lineageSpecification ∧ T.apoptosisResistance

theorem terminal_differentiation_closed_from_evidence
    (T : TerminalDifferentiationPackage)
    (E : TerminalDifferentiationEvidence T) :
    TerminalDifferentiationClosed T := by
  exact And.intro E.sustainedErkActivityClosed
    (And.intro E.cellCycleArrestClosed
      (And.intro E.differentiationMarkersClosed
        (And.intro E.lineageSpecificationClosed E.apoptosisResistanceClosed)))

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse