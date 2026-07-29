import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure StabilityPackage where
  phaseSpace : Type u
  vectorField : Type v
  equilibriumPoint : Prop
  linearization : Prop
  eigenvalueCondition : Prop
  lyapunovFunction : Prop
  stabilityConclusion : Prop

structure StabilityEvidence (S : StabilityPackage) where
  equilibriumPointClosed : S.equilibriumPoint
  linearizationClosed : S.linearization
  eigenvalueConditionClosed : S.eigenvalueCondition
  lyapunovFunctionClosed : S.lyapunovFunction
  stabilityConclusionClosed : S.stabilityConclusion

def StabilityClosed (S : StabilityPackage) : Prop :=
  S.equilibriumPoint ∧ S.linearization ∧ S.eigenvalueCondition ∧
  S.lyapunovFunction ∧ S.stabilityConclusion

theorem stability_closed_from_evidence (S : StabilityPackage) (E : StabilityEvidence S) :
    StabilityClosed S := by
  exact And.intro E.equilibriumPointClosed
    (And.intro E.linearizationClosed
      (And.intro E.eigenvalueConditionClosed
        (And.intro E.lyapunovFunctionClosed E.stabilityConclusionClosed)))

structure BifurcationPackage where
  parameterSpace : Type u
  familyOfVectorFields : Type v
  criticalParameter : Prop
  bifurcationPoint : Prop
  normalForm : Prop
  centerManifold : Prop
  bifurcationDiagram : Prop

structure BifurcationEvidence (B : BifurcationPackage) where
  criticalParameterClosed : B.criticalParameter
  bifurcationPointClosed : B.bifurcationPoint
  normalFormClosed : B.normalForm
  centerManifoldClosed : B.centerManifold
  bifurcationDiagramClosed : B.bifurcationDiagram

def BifurcationClosed (B : BifurcationPackage) : Prop :=
  B.criticalParameter ∧ B.bifurcationPoint ∧ B.normalForm ∧
  B.centerManifold ∧ B.bifurcationDiagram

theorem bifurcation_closed_from_evidence (B : BifurcationPackage) (E : BifurcationEvidence B) :
    BifurcationClosed B := by
  exact And.intro E.criticalParameterClosed
    (And.intro E.bifurcationPointClosed
      (And.intro E.normalFormClosed
        (And.intro E.centerManifoldClosed E.bifurcationDiagramClosed)))

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse