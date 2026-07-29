import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CentralLimitWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse