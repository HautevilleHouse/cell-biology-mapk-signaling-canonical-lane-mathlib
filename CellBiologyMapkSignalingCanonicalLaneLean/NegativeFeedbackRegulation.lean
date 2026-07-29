import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyMapkSignalingCanonicalLaneLean.MapkCascadePhosphorylation

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure NegativeFeedbackLoop where
  targetKinase : String
  phosphataseRecruited : Bool
  dephosphorylationRate : Float
  thresholdActivity : Float
  feedbackActive : Prop
  feedbackActiveTerm : feedbackActive

def NegativeFeedbackClosed (F : NegativeFeedbackLoop) : Prop :=
  F.feedbackActive

theorem negative_feedback_closed (F : NegativeFeedbackLoop) : NegativeFeedbackClosed F := by
  exact F.feedbackActiveTerm

structure DuspFeedbackCircuit where
  dusp : NegativeFeedbackLoop
  effectOnCascade : Prop
  effectOnCascadeTerm : effectOnCascade

def DuspFeedbackClosed (D : DuspFeedbackCircuit) : Prop :=
  NegativeFeedbackClosed D.dusp ∧ D.effectOnCascade

theorem dusp_feedback_closed (D : DuspFeedbackCircuit) : DuspFeedbackClosed D := by
  exact And.intro (negative_feedback_closed D.dusp) D.effectOnCascadeTerm

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse