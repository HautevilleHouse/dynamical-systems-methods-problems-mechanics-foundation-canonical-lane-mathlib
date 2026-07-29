import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure PhaseSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  dimensionFinite : Prop

def phase_space_closed (P : PhaseSpace) : Prop :=
  P.topology = inferInstance ∧ P.smoothStructure ∧ P.dimensionFinite

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse