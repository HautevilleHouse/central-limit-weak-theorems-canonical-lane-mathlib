import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure PrimaryCentralLimitTheoremPackage where
  iidSequence : Type u
  meanZero : Prop
  finiteVariance : Prop
  normalizedSumConvergesToNormal : Prop

def PrimaryCentralLimitTheoremClosed (P : PrimaryCentralLimitTheoremPackage) : Prop :=
  P.meanZero ∧ P.finiteVariance ∧ P.normalizedSumConvergesToNormal

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse