import DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean.LagrangianMethods

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure HamiltonianSystem where
  phaseSpace : DynamicalSpace
  hamiltonianFunction : Prop
  canonicalEquations : Prop
  poissonBracket : Prop

structure HamiltonianEvidence (H : HamiltonianSystem) where
  hamiltonianFunctionClosed : H.hamiltonianFunction
  canonicalEquationsClosed : H.canonicalEquations
  poissonBracketClosed : H.poissonBracket

def HamiltonianClosed (H : HamiltonianSystem) : Prop :=
  H.hamiltonianFunction ∧ H.canonicalEquations ∧ H.poissonBracket

theorem hamiltonian_closed_from_evidence (H : HamiltonianSystem) (E : HamiltonianEvidence H) :
    HamiltonianClosed H := by
  exact And.intro E.hamiltonianFunctionClosed (And.intro E.canonicalEquationsClosed E.poissonBracketClosed)

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse