import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure ProbabilitySpace where
  carrier : Type
  sigmaAlgebra : Set (Set carrier)
  probabilityMeasure : (Set carrier) → ℝ
  measureNonnegative : ∀ s, probabilityMeasure s ≥ 0
  measureTotal : probabilityMeasure (Set.univ : Set carrier) = 1
  sigmaAdditive : ∀ (f : ℕ → Set carrier), (∀ i j, i ≠ j → Disjoint (f i) (f j)) →
    probabilityMeasure (⋃ i, f i) = ∑' i, probabilityMeasure (f i)

structure RandomVariable (Ω : ProbabilitySpace) (ℝ : Type) where
  measurable : Ω.carrier → ℝ
  measurablePreimage : ∀ (B : Set ℝ), MeasurableSet B →
    Ω.sigmaAlgebra (measurable ‣ B)

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse