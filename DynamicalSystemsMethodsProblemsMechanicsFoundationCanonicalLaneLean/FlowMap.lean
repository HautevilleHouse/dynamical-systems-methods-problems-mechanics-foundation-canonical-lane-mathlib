import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure FlowMap (M : PhaseSpace) (V : VectorField M) where
  timeDomain : Type u
  flow : M.carrier → timeDomain → M.carrier
  initialCondition : ∀ x : M.carrier, flow x (0 : timeDomain) = x
  groupProperty : ∀ x : M.carrier, ∀ t s : timeDomain, flow (flow x t) s = flow x (t + s)

def flow_map_closed (M : PhaseSpace) (V : VectorField M) (F : FlowMap M V) : Prop :=
  F.initialCondition ∧ F.groupProperty

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse