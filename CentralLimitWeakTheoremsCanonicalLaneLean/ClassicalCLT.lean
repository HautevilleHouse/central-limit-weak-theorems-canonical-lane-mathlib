import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CentralLimitWeakTheoremsCanonicalLaneLean.CentralLimitBase
import HautevilleHouse.CentralLimitWeakTheoremsCanonicalLaneLean.CharacteristicFunction

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure ClassicalCLTAssumptions (Ω : ProbabilitySpace) (X : ℕ → RandomVariable Ω ℝ) where
  iid : ∀ i j, X i = X j
  meanZero : 𝔼[X 0] = 0
  varianceOne : Var (X 0) = 1
  finiteVariance : Var (X 0) < ∞

theorem classical_central_limit_theorem (Ω : ProbabilitySpace) (X : ℕ → RandomVariable Ω ℝ) (assumptions : ClassicalCLTAssumptions Ω X) :
  let S_n := (1 / Real.sqrt n) • (∑ i in Finset.range n, X i) in
  S_n converges_in_distribution_to StandardNormal Ω := by
  intro S_n
  have cf_Sn : ∀ n t, characteristicFunction (S_n n) t = (characteristicFunction (X 0) (t / Real.sqrt n))^n := by
    intro n t
    calc
      characteristicFunction (S_n n) t = 𝔼[exp (I * t * ((1 / Real.sqrt n) • (∑ i in range n, X i)))] := rfl
      _ = (𝔼[exp (I * (t / Real.sqrt n) * X 0)])^n := by
        apply iid_expectation_product
        apply assumptions.iid
      _ = (characteristicFunction (X 0) (t / Real.sqrt n))^n := rfl
  have expand_cf : ∀ t, lim (fun n : ℕ => (characteristicFunction (X 0) (t / Real.sqrt n))^n) = exp (-(t^2)/2) := by
    intro t
    have chf_expansion : characteristicFunction (X 0) u = 1 - (u^2)/2 + o(u^2) := by
      apply chf_second_order_expansion
      exact assumptions.meanZero
      exact assumptions.varianceOne
    sorry
  have convergence : ∀ t, lim (fun n : ℕ => characteristicFunction (S_n n) t) = exp (-(t^2)/2) := by
    intro t
    calc
      lim (fun n : ℕ => characteristicFunction (S_n n) t) = lim (fun n : ℕ => (characteristicFunction (X 0) (t / Real.sqrt n))^n) := by
        apply Filter.Tendsto.congr (fun n => (cf_Sn n t).symm)
        exact tendsto_id
      _ = exp (-(t^2)/2) := expand_cf t
  have standard_normal_cf : ∀ t, characteristicFunction StandardNormal t = exp (-(t^2)/2) := by
    exact standardNormalCharacteristicFunction
  apply levy_continuity Ω StandardNormal (fun n => S_n n)
  intro t
  calc
    lim (fun n : ℕ => characteristicFunction (S_n n) t) = exp (-(t^2)/2) := convergence t
    _ = characteristicFunction StandardNormal t := (standard_normal_cf t).symm

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse