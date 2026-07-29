import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure AdmissibleClass where
  object : CentralLimitAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CentralLimitWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse