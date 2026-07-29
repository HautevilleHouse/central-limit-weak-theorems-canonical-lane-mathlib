import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure CharacteristicFunctionFamily where
  randomVariableSequence : Type u
  limitDistribution : Type v
  pointwiseConvergence : Prop
  uniformConvergenceOnCompacts : Prop
  continuityAtZero : Prop

structure CharacteristicFunctionEvidence (F : CharacteristicFunctionFamily) where
  pointwiseConvergenceClosed : F.pointwiseConvergence
  uniformConvergenceOnCompactsClosed : F.uniformConvergenceOnCompacts
  continuityAtZeroClosed : F.continuityAtZero

def CharacteristicFunctionClosed (F : CharacteristicFunctionFamily) : Prop :=
  F.pointwiseConvergence ∧ F.uniformConvergenceOnCompacts ∧ F.continuityAtZero

theorem characteristic_function_closed_from_evidence
    (F : CharacteristicFunctionFamily) (E : CharacteristicFunctionEvidence F) :
    CharacteristicFunctionClosed F := by
  exact And.intro E.pointwiseConvergenceClosed
    (And.intro E.uniformConvergenceOnCompactsClosed E.continuityAtZeroClosed)

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse