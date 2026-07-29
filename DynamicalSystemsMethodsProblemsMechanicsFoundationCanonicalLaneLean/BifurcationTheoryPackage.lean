import DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean.HamiltonianFlowPackage

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure BifurcationTheoryPackage {G : RiemannianCurvaturePackage} (H : HamiltonianFlowPackage G) where
  parameterSpace : Type u
  bifurcationConditions : Prop
  normalForms : Prop
  codimensionOneBifurcations : Prop

structure BifurcationTheoryEvidence {G : RiemannianCurvaturePackage} {H : HamiltonianFlowPackage G} (B : BifurcationTheoryPackage H) where
  bifurcationConditionsClosed : B.bifurcationConditions
  normalFormsClosed : B.normalForms
  codimensionOneBifurcationsClosed : B.codimensionOneBifurcations

def BifurcationTheoryClosed {G : RiemannianCurvaturePackage} {H : HamiltonianFlowPackage G} (B : BifurcationTheoryPackage H) : Prop :=
  B.bifurcationConditions ∧ B.normalForms ∧ B.codimensionOneBifurcations

theorem bifurcation_theory_closed_from_evidence
    {G : RiemannianCurvaturePackage} {H : HamiltonianFlowPackage G} (B : BifurcationTheoryPackage H) (E : BifurcationTheoryEvidence B) :
    BifurcationTheoryClosed B := by
  exact And.intro E.bifurcationConditionsClosed (And.intro E.normalFormsClosed E.codimensionOneBifurcationsClosed)

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse