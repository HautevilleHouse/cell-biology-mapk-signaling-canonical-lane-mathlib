import CellBiologyMapkSignalingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure ReceptorTyrosineKinase (L : Type) (R : Type) where
  ligand : L → R → Prop
  dimerization : Prop
  autophosphorylation : Prop

structure RasActivation (R : Type) where
  receptor : R
  gtpBound : Prop
  downstreamSignal : Prop

structure RafKinase (Ras : Type) where
  ras : Ras
  phosphorylationActivated : Prop
  mekPhosphorylation : Prop

structure MekKinase (Raf : Type) where
  raf : Raf
  phosphorylationActivated : Prop
  erkPhosphorylation : Prop

structure ErkKinase (Mek : Type) where
  mek : Mek
  phosphorylationActivated : Prop
  nuclearTranslocation : Prop

structure MapkPathwayPackage (L : Type) (R : Type) where
  ligand : L
  receptor : ReceptorTyrosineKinase L R
  ras : RasActivation R
  raf : RafKinase (RasActivation R)
  mek : MekKinase (RafKinase (RasActivation R))
  erk : ErkKinase (MekKinase (RafKinase (RasActivation R)))
  pathwayActive : Prop
  transcriptionFactorPhosphorylation : Prop

def MapkClosure {L R : Type} (P : MapkPathwayPackage L R) : Prop :=
  P.pathwayActive ∧ P.transcriptionFactorPhosphorylation

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse