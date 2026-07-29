import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean.DynamicalSystemsAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure InvariantMeasuresPackage (A : AdmissibleClass) where
  invariantMeasureExists : Prop
  ergodicDecomposition : Prop
  entropyDefined : Prop

structure InvariantMeasuresEvidence {A : AdmissibleClass} (P : InvariantMeasuresPackage A) where
  invariantMeasureExistsClosed : P.invariantMeasureExists
  ergodicDecompositionClosed : P.ergodicDecomposition
  entropyDefinedClosed : P.entropyDefined

def InvariantMeasuresClosed {A : AdmissibleClass} (P : InvariantMeasuresPackage A) : Prop :=
  P.invariantMeasureExists ∧ P.ergodicDecomposition ∧ P.entropyDefined

theorem invariant_measures_closed_from_evidence {A : AdmissibleClass}
    (P : InvariantMeasuresPackage A) (E : InvariantMeasuresEvidence P) :
    InvariantMeasuresClosed P := by
  exact And.intro E.invariantMeasureExistsClosed
    (And.intro E.ergodicDecompositionClosed E.entropyDefinedClosed)

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
