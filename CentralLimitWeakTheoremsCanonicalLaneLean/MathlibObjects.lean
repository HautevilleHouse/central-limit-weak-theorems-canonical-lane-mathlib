import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Probability.Distributions

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure CentralLimitSpace where
  carrier : Type
  probabilityMeasure : Set (carrier → ℝ)

structure CentralLimitAdmittedObject where
  space : CentralLimitSpace
  iidSequence : ℕ → (space.carrier → ℝ)
  finiteVariance : Prop
  zeroMean : Prop
  normalizedSumConverges : Prop
  conclusion : normalizedSumConverges

def CentralLimitWitnessClosed (O : CentralLimitAdmittedObject) : Prop :=
  O.normalizedSumConverges

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse