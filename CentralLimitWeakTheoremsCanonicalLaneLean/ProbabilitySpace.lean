import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure ProbabilitySpace where
  carrier : Type u
  sigmaAlgebra : Set (Set carrier)
  probabilityMeasure : (Set carrier) → ℝ
  measureSpaceAxioms : Prop
  probabilityAxioms : Prop

structure ProbabilitySpaceEvidence (P : ProbabilitySpace) where
  measureSpaceAxiomsClosed : P.measureSpaceAxioms
  probabilityAxiomsClosed : P.probabilityAxioms

def ProbabilitySpaceClosed (P : ProbabilitySpace) : Prop :=
  P.measureSpaceAxioms ∧ P.probabilityAxioms

theorem probability_space_closed_from_evidence (P : ProbabilitySpace) (E : ProbabilitySpaceEvidence P) : ProbabilitySpaceClosed P := by
  exact And.intro E.measureSpaceAxiomsClosed E.probabilityAxiomsClosed

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse