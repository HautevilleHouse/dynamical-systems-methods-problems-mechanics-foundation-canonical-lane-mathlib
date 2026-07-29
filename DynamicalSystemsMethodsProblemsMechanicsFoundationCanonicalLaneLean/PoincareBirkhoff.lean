import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure TwistMap (annulus : Type u) [TopologicalSpace annulus] where
  radialCoordinate : annulus → ℝ
  angularCoordinate : annulus → ℝ
  twistCondition : Prop
  areaPreserving : Prop
  periodicOrbits : Prop
  poincareBirkhoffTheorem : Prop
  twistConditionClosed : twistCondition
  areaPreservingClosed : areaPreserving
  periodicOrbitsClosed : periodicOrbits
  poincareBirkhoffTheoremClosed : poincareBirkhoffTheorem

structure TwistMapEvidence (T : TwistMap annulus) where
  twistConditionClosed : T.twistCondition
  areaPreservingClosed : T.areaPreserving
  periodicOrbitsClosed : T.periodicOrbits
  poincareBirkhoffTheoremClosed : T.poincareBirkhoffTheorem

def TwistMapClosed (T : TwistMap annulus) : Prop :=
  T.twistCondition ∧ T.areaPreserving ∧ T.periodicOrbits ∧ T.poincareBirkhoffTheorem

theorem twist_map_closed_from_evidence (T : TwistMap annulus) (E : TwistMapEvidence T) : TwistMapClosed T := by
  exact And.intro E.twistConditionClosed
    (And.intro E.areaPreservingClosed
      (And.intro E.periodicOrbitsClosed E.poincareBirkhoffTheoremClosed))

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse