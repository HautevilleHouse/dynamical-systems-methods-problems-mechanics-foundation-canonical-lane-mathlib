import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure VectorField (M : PhaseSpace) where
  assignment : M.carrier → Type u
  smooth : Prop
  tangentSpaceStructure : Prop

def vector_field_closed (M : PhaseSpace) (V : VectorField M) : Prop :=
  V.smooth ∧ V.tangentSpaceStructure

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse