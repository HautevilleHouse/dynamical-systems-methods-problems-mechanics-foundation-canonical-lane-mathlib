import DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure HamiltonianFlowPackage (G : RiemannianCurvaturePackage) where
  phaseSpace : Type u
  symplecticForm : Type v
  hamiltonianFunction : Type w
  flowEquation : Prop
  energyConservation : Prop

structure HamiltonianFlowEvidence {G : RiemannianCurvaturePackage} (H : HamiltonianFlowPackage G) where
  flowEquationClosed : H.flowEquation
  energyConservationClosed : H.energyConservation

def HamiltonianFlowClosed {G : RiemannianCurvaturePackage} (H : HamiltonianFlowPackage G) : Prop :=
  H.flowEquation ∧ H.energyConservation

theorem hamiltonian_flow_closed_from_evidence
    {G : RiemannianCurvaturePackage} (H : HamiltonianFlowPackage G) (E : HamiltonianFlowEvidence H) :
    HamiltonianFlowClosed H := by
  exact And.intro E.flowEquationClosed E.energyConservationClosed

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse