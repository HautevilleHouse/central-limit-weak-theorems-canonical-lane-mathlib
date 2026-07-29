import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CentralLimitWeakTheoremsCanonicalLaneLean.CentralLimitBase

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure LindebergCondition (Ω : ProbabilitySpace) (X : ℕ → RandomVariable Ω ℝ) where
  independent : ∀ i, Independent (X i)
  meanZero : ∀ i, 𝔼[X i] = 0
  finiteVariance : ∀ i, Var (X i) < ∞
  lindebergCondition : ∀ ε > 0, lim (fun n => (1 / (∑ i in Finset.range n, Var (X i))) * ∑ i in Finset.range n, 𝔼[X i^2 * indicator {|X i| > ε * Real.sqrt (∑ i in Finset.range n, Var (X i))}]) = 0

theorem lindeberg_central_limit_theorem (Ω : ProbabilitySpace) (X : ℕ → RandomVariable Ω ℝ) (cond : LindebergCondition Ω X) :
  let S_n := (1 / Real.sqrt (∑ i in Finset.range n, Var (X i))) • (∑ i in Finset.range n, X i) in
  S_n converges_in_distribution_to StandardNormal Ω := by
  intro S_n
  sorry

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse