import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CentralLimitWeakTheoremsCanonicalLaneLean.ProbabilitySpace

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure WeakConvergence (P : ProbabilitySpace) (Q : ProbabilitySpace) where
  sequenceDistributions : ℕ → (Set ℝ) → ℝ
  limitDistribution : (Set ℝ) → ℝ
  convergenceAtContinuityPoints : Prop
  portmanteauTheorem : Prop

structure WeakConvergenceEvidence {P Q : ProbabilitySpace} (W : WeakConvergence P Q) where
  convergenceAtContinuityPointsClosed : W.convergenceAtContinuityPoints
  portmanteauTheoremClosed : W.portmanteauTheorem

def WeakConvergenceClosed {P Q : ProbabilitySpace} (W : WeakConvergence P Q) : Prop :=
  W.convergenceAtContinuityPoints ∧ W.portmanteauTheorem

theorem weak_convergence_closed_from_evidence {P Q : ProbabilitySpace} (W : WeakConvergence P Q) (E : WeakConvergenceEvidence W) : WeakConvergenceClosed W := by
  exact And.intro E.convergenceAtContinuityPointsClosed E.portmanteauTheoremClosed

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse