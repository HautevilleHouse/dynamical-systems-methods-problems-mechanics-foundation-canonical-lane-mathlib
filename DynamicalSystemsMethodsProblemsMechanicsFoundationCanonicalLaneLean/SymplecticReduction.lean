import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure SymplecticReduction (phaseSpace : Type u) [TopologicalSpace phaseSpace] where
  groupAction : phaseSpace → phaseSpace
  momentumMap : phaseSpace → ℝ
  reducedPhaseSpace : Type v
  reductionTheorem : Prop
  reductionTheoremClosed : reductionTheorem

structure SymplecticReductionEvidence (R : SymplecticReduction phaseSpace) where
  reductionTheoremClosed : R.reductionTheorem

def SymplecticReductionClosed (R : SymplecticReduction phaseSpace) : Prop :=
  R.reductionTheorem

theorem symplectic_reduction_closed_from_evidence (R : SymplecticReduction phaseSpace)
    (E : SymplecticReductionEvidence R) : SymplecticReductionClosed R := by
  exact E.reductionTheoremClosed

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse