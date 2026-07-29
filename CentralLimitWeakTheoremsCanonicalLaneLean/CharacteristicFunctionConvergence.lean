import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure CharacteristicFunctionConvergencePackage where
  sequenceOfDistributions : Type u
  limitingCharacteristicFunction : Type v
  pointwiseConvergence : Prop
  continuityAtZero : Prop

def CharacteristicFunctionConvergenceClosed (C : CharacteristicFunctionConvergencePackage) : Prop :=
  C.pointwiseConvergence ∧ C.continuityAtZero

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse