import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyMapkSignalingCanonicalLaneLean.MapkCascadePhosphorylation

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure NuclearTranslocationEvent where
  protein : String
  importinBinding : Bool
  nuclearAccumulation : Bool
  downstreamGeneExpression : Prop
  targetGene : String
  expressionChange : Float
  downstreamGeneExpressionTerm : downstreamGeneExpression

def NuclearTranslocationClosed (N : NuclearTranslocationEvent) : Prop :=
  N.downstreamGeneExpression

theorem nuclear_translocation_closed (N : NuclearTranslocationEvent) : NuclearTranslocationClosed N := by
  exact N.downstreamGeneExpressionTerm

structure MapkSignalingEndpoint where
  translocation : NuclearTranslocationEvent
  transcriptionFactor : String
  cellResponse : Prop
  cellResponseTerm : cellResponse

def MapkSignalingEndpointClosed (E : MapkSignalingEndpoint) : Prop :=
  NuclearTranslocationClosed E.translocation ∧ E.cellResponse

theorem mapk_signaling_endpoint_closed (E : MapkSignalingEndpoint) : MapkSignalingEndpointClosed E := by
  exact And.intro (nuclear_translocation_closed E.translocation) E.cellResponseTerm

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse