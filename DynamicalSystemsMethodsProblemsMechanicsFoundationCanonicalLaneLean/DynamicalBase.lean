import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure DynamicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicalAdmittedObject where
  space : DynamicalSpace
  dynamicalSystem : Prop
  invariantMeasure : Prop
  ergodicProperty : Prop
  conclusion : dynamicalSystem ∧ invariantMeasure ∧ ergodicProperty

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.dynamicalSystem ∧ O.invariantMeasure ∧ O.ergodicProperty

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse