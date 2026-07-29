import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure LindebergConditionFamily where
  triangularArray : Type u
  varianceNormalization : Prop
  lindebergConditionHolds : Prop
  asymptoticNegligibility : Prop
  lyapunovCondition : Prop

structure LindebergConditionEvidence (L : LindebergConditionFamily) where
  varianceNormalizationClosed : L.varianceNormalization
  lindebergConditionHoldsClosed : L.lindebergConditionHolds
  asymptoticNegligibilityClosed : L.asymptoticNegligibility
  lyapunovConditionClosed : L.lyapunovCondition

def LindebergConditionClosed (L : LindebergConditionFamily) : Prop :=
  L.varianceNormalization ∧ L.lindebergConditionHolds ∧ L.asymptoticNegligibility ∧ L.lyapunovCondition

theorem lindeberg_condition_closed_from_evidence
    (L : LindebergConditionFamily) (E : LindebergConditionEvidence L) :
    LindebergConditionClosed L := by
  exact And.intro E.varianceNormalizationClosed
    (And.intro E.lindebergConditionHoldsClosed
      (And.intro E.asymptoticNegligibilityClosed E.lyapunovConditionClosed))

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse