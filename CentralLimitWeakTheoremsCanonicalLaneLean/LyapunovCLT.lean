import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CentralLimitWeakTheoremsCanonicalLaneLean.CentralLimitBase
import HautevilleHouse.CentralLimitWeakTheoremsCanonicalLaneLean.MomentGeneratingFunction

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure LyapunovCondition (Ω : ProbabilitySpace) (X : ℕ → RandomVariable Ω ℝ) where
  independent : ∀ i, Independent (X i)
  finiteMoments : ∀ δ > 0, ∃ C : ℝ, ∀ n, 𝔼[|X n|^(2+δ)] < C
  lyapunovExponent : ∃ δ > 0, lim (fun n => (∑ i in Finset.range n, 𝔼[|X i|^(2+δ)]) / (∑ i in Finset.range n, Var (X i))^((2+δ)/2)) = 0

theorem lyapunov_central_limit_theorem (Ω : ProbabilitySpace) (X : ℕ → RandomVariable Ω ℝ) (cond : LyapunovCondition Ω X) :
  let S_n := (1 / Real.sqrt (∑ i in Finset.range n, Var (X i))) • (∑ i in Finset.range n, (X i - 𝔼[X i])) in
  S_n converges_in_distribution_to StandardNormal Ω := by
  intro S_n
  sorry

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse