import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CentralLimitWeakTheoremsCanonicalLaneLean.CentralLimitBase

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure MomentGeneratingFunction (Ω : ProbabilitySpace) (X : RandomVariable Ω ℝ) where
  mgf : ℝ → ℝ
  mgfDefined : ∀ t, mgf t = ∫ (x : ℝ), exp (t * x) ∂ (pushforward X.measurable Ω.probabilityMeasure)
  domain : Set ℝ
  existsFinite : ∀ t ∈ domain, mgf t < ∞
  differentiable : ∀ t ∈ interior domain, HasDerivAt mgf (𝔼[X * exp (t * X)]) t

theorem mgf_exists_then_moments_exist (Ω : ProbabilitySpace) (X : RandomVariable Ω ℝ) (mgf : MomentGeneratingFunction Ω X) :
  ∀ n : ℕ, 𝔼[X^n] < ∞ := by
  intro n
  sorry

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse