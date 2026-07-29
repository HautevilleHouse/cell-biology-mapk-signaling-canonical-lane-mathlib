import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyMapkSignalingCanonicalLaneLean.CellSurfaceReceptors

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure MapkCascadeLevel where
  kinase : String
  phosphorylationSite : String
  upstreamActivity : Prop
  downstreamEffect : Prop
  activeForm : Prop
  activeFormTerm : activeForm

def MapkCascadeClosed (L : MapkCascadeLevel) : Prop :=
  L.activeForm

theorem mapk_cascade_closed (L : MapkCascadeLevel) : MapkCascadeClosed L := by
  exact L.activeFormTerm

structure RafMekMapkCascade where
  raf : MapkCascadeLevel
  mek : MapkCascadeLevel
  mapk : MapkCascadeLevel
  rafClosed : MapkCascadeClosed raf
  mekClosed : MapkCascadeClosed mek
  mapkClosed : MapkCascadeClosed mapk

def RafMekMapkCascadeClosed (C : RafMekMapkCascade) : Prop :=
  MapkCascadeClosed C.raf ∧ MapkCascadeClosed C.mek ∧ MapkCascadeClosed C.mapk

theorem raf_mek_mapk_cascade_closed (C : RafMekMapkCascade) : RafMekMapkCascadeClosed C := by
  exact And.intro C.rafClosed (And.intro C.mekClosed C.mapkClosed)

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse