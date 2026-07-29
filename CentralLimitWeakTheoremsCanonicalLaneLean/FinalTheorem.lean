import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

def ConstrainedCentralLimitClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_central_limit_endgame (A : AdmissibleClass) :
    ConstrainedCentralLimitClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse