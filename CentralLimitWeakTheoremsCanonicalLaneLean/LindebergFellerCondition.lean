import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure LindebergFellerConditionPackage where
  triangularArray : Type u
  rowSums : Type v
  lindebergCondition : Prop
  fellerCondition : Prop

def LindebergFellerConditionClosed (L : LindebergFellerConditionPackage) : Prop :=
  L.lindebergCondition ∧ L.fellerCondition

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse