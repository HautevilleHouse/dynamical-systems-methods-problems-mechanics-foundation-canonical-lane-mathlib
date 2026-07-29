import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure IntegrableSystem (phaseSpace : Type u) [TopologicalSpace phaseSpace] where
  firstIntegrals : List (phaseSpace → ℝ)
  involutionCondition : Prop
  levelSetCompact : Prop
  actionAngleCoordinates : Prop
  liouvilleArnoldJostTheorem : Prop
  involutionConditionClosed : involutionCondition
  levelSetCompactClosed : levelSetCompact
  actionAngleCoordinatesClosed : actionAngleCoordinates
  liouvilleArnoldJostTheoremClosed : liouvilleArnoldJostTheorem

structure IntegrableSystemEvidence (I : IntegrableSystem phaseSpace) where
  involutionConditionClosed : I.involutionCondition
  levelSetCompactClosed : I.levelSetCompact
  actionAngleCoordinatesClosed : I.actionAngleCoordinates
  liouvilleArnoldJostTheoremClosed : I.liouvilleArnoldJostTheorem

def IntegrableSystemClosed (I : IntegrableSystem phaseSpace) : Prop :=
  I.involutionCondition ∧ I.levelSetCompact ∧ I.actionAngleCoordinates ∧ I.liouvilleArnoldJostTheorem

theorem integrable_system_closed_from_evidence (I : IntegrableSystem phaseSpace)
    (E : IntegrableSystemEvidence I) : IntegrableSystemClosed I := by
  exact And.intro E.involutionConditionClosed
    (And.intro E.levelSetCompactClosed
      (And.intro E.actionAngleCoordinatesClosed E.liouvilleArnoldJostTheoremClosed))

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse