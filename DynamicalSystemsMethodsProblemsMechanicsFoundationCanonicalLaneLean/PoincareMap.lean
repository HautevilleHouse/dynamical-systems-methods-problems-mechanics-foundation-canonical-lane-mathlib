import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure PoincareMap (M : PhaseSpace) (V : VectorField M) (F : FlowMap M V) where
  sectionS : Set M.carrier
  firstReturnMap : M.carrier → M.carrier
  transverseCondition : Prop
  periodicOrbitDetection : Prop

def poincare_map_closed (M : PhaseSpace) (V : VectorField M) (F : FlowMap M V) (P : PoincareMap M V F) : Prop :=
  P.transverseCondition ∧ P.periodicOrbitDetection

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse