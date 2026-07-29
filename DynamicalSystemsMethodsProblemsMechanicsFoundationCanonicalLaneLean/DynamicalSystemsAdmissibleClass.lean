import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean

structure DynamicalSystem where
  phaseSpace : Type u
  flow : ℝ → phaseSpace → phaseSpace
  continuous : Prop
  groupProperty : Prop

structure DynamicalAdmittedObject where
  system : DynamicalSystem
  invariantMeasure : Prop
  ergodic : Prop
  conclusion : invariantMeasure ∧ ergodic

structure AdmissibleClass where
  object : DynamicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DynamicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.conclusion

end DynamicalSystemsMethodsProblemsMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
