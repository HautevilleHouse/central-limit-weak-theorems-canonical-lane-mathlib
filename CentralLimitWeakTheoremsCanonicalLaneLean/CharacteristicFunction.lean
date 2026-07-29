import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CentralLimitWeakTheoremsCanonicalLaneLean.CentralLimitBase

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure CharacteristicFunction (Ω : ProbabilitySpace) (X : RandomVariable Ω ℝ) where
  cf : ℝ → ℂ
  cfDefined : ∀ t, cf t = 𝔼[exp (I * t * X)]
  continuity : Continuous cf
  cfAtZeroOne : cf 0 = 1
  cfDifferentiable : Differentiable ℂ cf

theorem levy_continuity (Ω : ProbabilitySpace) (X : RandomVariable Ω ℝ) (seq : ℕ → RandomVariable Ω ℝ) :
  (∀ t, lim (fun n => characteristicFunction (seq n) t) = characteristicFunction X t) →
  seq converges_in_distribution_to X := by
  intro h
  sorry

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse