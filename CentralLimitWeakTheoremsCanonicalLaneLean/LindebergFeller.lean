import CentralLimitWeakTheoremsCanonicalLaneLean.WeakConvergencePackage

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure LindebergFellerPackage where
  triangularArray : Type u
  lindebergCondition : Prop
  fellerCondition : Prop
  centralLimitTheorem : Prop
  uniformAsymptoticNegligibility : Prop

structure LindebergFellerEvidence (L : LindebergFellerPackage) where
  lindebergConditionClosed : L.lindebergCondition
  fellerConditionClosed : L.fellerCondition
  centralLimitTheoremClosed : L.centralLimitTheorem
  uniformAsymptoticNegligibilityClosed : L.uniformAsymptoticNegligibility

def LindebergFellerClosed (L : LindebergFellerPackage) : Prop :=
  L.lindebergCondition ∧ L.fellerCondition ∧ L.centralLimitTheorem ∧ L.uniformAsymptoticNegligibility

theorem lindeberg_feller_closed_from_evidence (L : LindebergFellerPackage) (E : LindebergFellerEvidence L) :
    LindebergFellerClosed L := by
  exact And.intro E.lindebergConditionClosed (And.intro E.fellerConditionClosed (And.intro E.centralLimitTheoremClosed E.uniformAsymptoticNegligibilityClosed))

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse