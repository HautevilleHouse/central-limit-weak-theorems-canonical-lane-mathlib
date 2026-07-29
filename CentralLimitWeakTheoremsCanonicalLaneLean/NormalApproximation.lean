import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure NormalApproximationFamily where
  standardizedSumSequence : Type u
  normalDistribution : Type v
  distributionConvergence : Prop
  berryEsseenBound : Prop
  rateOfConvergence : Prop

structure NormalApproximationEvidence (N : NormalApproximationFamily) where
  distributionConvergenceClosed : N.distributionConvergence
  berryEsseenBoundClosed : N.berryEsseenBound
  rateOfConvergenceClosed : N.rateOfConvergence

def NormalApproximationClosed (N : NormalApproximationFamily) : Prop :=
  N.distributionConvergence ∧ N.berryEsseenBound ∧ N.rateOfConvergence

theorem normal_approximation_closed_from_evidence
    (N : NormalApproximationFamily) (E : NormalApproximationEvidence N) :
    NormalApproximationClosed N := by
  exact And.intro E.distributionConvergenceClosed
    (And.intro E.berryEsseenBoundClosed E.rateOfConvergenceClosed)

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse