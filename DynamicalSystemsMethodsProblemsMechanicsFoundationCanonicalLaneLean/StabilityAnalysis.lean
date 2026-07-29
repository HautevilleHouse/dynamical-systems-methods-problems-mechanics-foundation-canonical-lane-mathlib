import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure StabilityAnalysis (M : PhaseSpace) (V : VectorField M) (F : FlowMap M V) where
  equilibriumPoints : Set M.carrier
  lyapunovFunctions : Type u
  stabilityConditions : Prop
  bifurcationAnalysis : Prop

def stability_analysis_closed (M : PhaseSpace) (V : VectorField M) (F : FlowMap M V) (A : StabilityAnalysis M V F) : Prop :=
  A.stabilityConditions ∧ A.bifurcationAnalysis

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse