import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure KAMSystem (phaseSpace : Type u) [TopologicalSpace phaseSpace] where
  unperturbedHamiltonian : phaseSpace → ℝ
  perturbation : phaseSpace → ℝ
  smallParameter : ℝ
  nondegeneracyCondition : Prop
  invariantToriPersistence : Prop
  nondegeneracyConditionClosed : nondegeneracyCondition
  invariantToriPersistenceClosed : invariantToriPersistence

structure KAMSystemEvidence (K : KAMSystem phaseSpace) where
  nondegeneracyConditionClosed : K.nondegeneracyCondition
  invariantToriPersistenceClosed : K.invariantToriPersistence

def KAMSystemClosed (K : KAMSystem phaseSpace) : Prop :=
  K.nondegeneracyCondition ∧ K.invariantToriPersistence

theorem kam_system_closed_from_evidence (K : KAMSystem phaseSpace)
    (E : KAMSystemEvidence K) : KAMSystemClosed K := by
  exact And.intro E.nondegeneracyConditionClosed E.invariantToriPersistenceClosed

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse