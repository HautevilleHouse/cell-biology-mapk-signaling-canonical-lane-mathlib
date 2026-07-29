import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyMapkSignalingCanonicalLaneLean.MapkCascadePhosphorylation

namespace HautevilleHouse
namespace CellBiologyMapkSignalingCanonicalLaneLean

structure ScaffoldProtein where
  bindingSites : List String
  kinaseLocalization : Bool
  signalingComplexity : Nat
  efficientSignalTransfer : Prop
  efficientSignalTransferTerm : efficientSignalTransfer

def ScaffoldClosed (S : ScaffoldProtein) : Prop :=
  S.efficientSignalTransfer

theorem scaffold_closed (S : ScaffoldProtein) : ScaffoldClosed S := by
  exact S.efficientSignalTransferTerm

structure KinaseSuppressorOfRasAssembly where
  scaffold : ScaffoldProtein
  rasLocalization : Bool
  signalAmplitude : Float
  assemblyFunctional : Prop
  assemblyFunctionalTerm : assemblyFunctional

def KinaseSuppressorAssemblyClosed (K : KinaseSuppressorOfRasAssembly) : Prop :=
  ScaffoldClosed K.scaffold ∧ K.assemblyFunctional

theorem kinase_suppressor_assembly_closed (K : KinaseSuppressorOfRasAssembly) : KinaseSuppressorAssemblyClosed K := by
  exact And.intro (scaffold_closed K.scaffold) K.assemblyFunctionalTerm

end CellBiologyMapkSignalingCanonicalLaneLean
end HautevilleHouse