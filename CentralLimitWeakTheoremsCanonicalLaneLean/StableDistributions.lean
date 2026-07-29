import CentralLimitWeakTheoremsCanonicalLaneLean.LindebergFeller

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure StableDistributionPackage where
  domainOfAttraction : Type u
  stableLaws : Prop
  characteristicExponent : Prop
  lévyKhintchineRepresentation : Prop
  generalizedCentralLimitTheorem : Prop

structure StableDistributionEvidence (S : StableDistributionPackage) where
  stableLawsClosed : S.stableLaws
  characteristicExponentClosed : S.characteristicExponent
  lévyKhintchineRepresentationClosed : S.lévyKhintchineRepresentation
  generalizedCentralLimitTheoremClosed : S.generalizedCentralLimitTheorem

def StableDistributionClosed (S : StableDistributionPackage) : Prop :=
  S.stableLaws ∧ S.characteristicExponent ∧ S.lévyKhintchineRepresentation ∧ S.generalizedCentralLimitTheorem

theorem stable_distribution_closed_from_evidence (S : StableDistributionPackage) (E : StableDistributionEvidence S) :
    StableDistributionClosed S := by
  exact And.intro E.stableLawsClosed (And.intro E.characteristicExponentClosed (And.intro E.lévyKhintchineRepresentationClosed E.generalizedCentralLimitTheoremClosed))

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse