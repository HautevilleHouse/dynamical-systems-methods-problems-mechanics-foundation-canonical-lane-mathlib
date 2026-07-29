import DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean.HamiltonianFlowPackage

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure StabilityAnalysisPackage {G : RiemannianCurvaturePackage} (H : HamiltonianFlowPackage G) where
  equilibriumPoints : Type u
  lyapunovFunction : Type v
  linearizationStability : Prop
  globalStabilityCondition : Prop

structure StabilityAnalysisEvidence {G : RiemannianCurvaturePackage} {H : HamiltonianFlowPackage G} (S : StabilityAnalysisPackage H) where
  linearizationStabilityClosed : S.linearizationStability
  globalStabilityConditionClosed : S.globalStabilityCondition

def StabilityAnalysisClosed {G : RiemannianCurvaturePackage} {H : HamiltonianFlowPackage G} (S : StabilityAnalysisPackage H) : Prop :=
  S.linearizationStability ∧ S.globalStabilityCondition

theorem stability_analysis_closed_from_evidence
    {G : RiemannianCurvaturePackage} {H : HamiltonianFlowPackage G} (S : StabilityAnalysisPackage H) (E : StabilityAnalysisEvidence S) :
    StabilityAnalysisClosed S := by
  exact And.intro E.linearizationStabilityClosed E.globalStabilityConditionClosed

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse