import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure RasGTPCyclePackage where
  rasGDPBound : Prop
  gefCatalyzedExchange : Prop
  rasGTPActive : Prop
  gapHydrolysis : Prop
  effectorBinding : Prop
  cycleRegulation : Prop
  rasGDPBoundClosed : rasGDPBound
  gefCatalyzedExchangeClosed : gefCatalyzedExchange
  rasGTPActiveClosed : rasGTPActive
  gapHydrolysisClosed : gapHydrolysis
  effectorBindingClosed : effectorBinding

structure RasGTPCycleEvidence (R : RasGTPCyclePackage) where
  rasGDPBoundClosed : R.rasGDPBound
  gefCatalyzedExchangeClosed : R.gefCatalyzedExchange
  rasGTPActiveClosed : R.rasGTPActive
  gapHydrolysisClosed : R.gapHydrolysis
  effectorBindingClosed : R.effectorBinding
  cycleRegulationClosed : R.cycleRegulation

def RasGTPCycleClosed (R : RasGTPCyclePackage) : Prop :=
  R.rasGDPBound ∧ R.gefCatalyzedExchange ∧ R.rasGTPActive ∧
  R.gapHydrolysis ∧ R.effectorBinding ∧ R.cycleRegulation

theorem ras_gtp_cycle_closed_from_evidence
    (R : RasGTPCyclePackage) (E : RasGTPCycleEvidence R) :
    RasGTPCycleClosed R := by
  exact And.intro E.rasGDPBoundClosed
    (And.intro E.gefCatalyzedExchangeClosed
      (And.intro E.rasGTPActiveClosed
        (And.intro E.gapHydrolysisClosed
          (And.intro E.effectorBindingClosed E.cycleRegulationClosed))))

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse