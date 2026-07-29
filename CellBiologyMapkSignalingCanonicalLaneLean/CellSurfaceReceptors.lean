import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure CellSurfaceReceptor where
  receptorType : String
  ligandAffinity : Float
  dimerizationState : Prop
  phosphorylationState : Prop
  active : Prop
  activeTerm : active

def CellSurfaceReceptorClosed (R : CellSurfaceReceptor) : Prop :=
  R.active

theorem cell_surface_receptor_closed (R : CellSurfaceReceptor) : CellSurfaceReceptorClosed R := by
  exact R.activeTerm

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse