import DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean.DynamicalBase

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure LagrangianFormalism where
  configurationSpace : DynamicalSpace
  lagrangianFunction : Prop
  eulerLagrangeEquations : Prop
  symmetries : Prop

structure LagrangianEvidence (L : LagrangianFormalism) where
  lagrangianFunctionClosed : L.lagrangianFunction
  eulerLagrangeEquationsClosed : L.eulerLagrangeEquations
  symmetriesClosed : L.symmetries

def LagrangianClosed (L : LagrangianFormalism) : Prop :=
  L.lagrangianFunction ∧ L.eulerLagrangeEquations ∧ L.symmetries

theorem lagrangian_closed_from_evidence (L : LagrangianFormalism) (E : LagrangianEvidence L) :
    LagrangianClosed L := by
  exact And.intro E.lagrangianFunctionClosed (And.intro E.eulerLagrangeEquationsClosed E.symmetriesClosed)

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse