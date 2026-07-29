import CentralLimitWeakTheoremsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CentralLimitWeakTheoremsCanonicalLaneLean

structure WeakConvergencePackage where
  probabilityMeasures : Type u
  weakTopology : Prop
  portmanteauTheorem : Prop
  continuousMappingTheorem : Prop
  lévyContinuityTheorem : Prop

structure WeakConvergenceEvidence (P : WeakConvergencePackage) where
  weakTopologyClosed : P.weakTopology
  portmanteauTheoremClosed : P.portmanteauTheorem
  continuousMappingTheoremClosed : P.continuousMappingTheorem
  lévyContinuityTheoremClosed : P.lévyContinuityTheorem

def WeakConvergenceClosed (P : WeakConvergencePackage) : Prop :=
  P.weakTopology ∧ P.portmanteauTheorem ∧ P.continuousMappingTheorem ∧ P.lévyContinuityTheorem

theorem weak_convergence_closed_from_evidence (P : WeakConvergencePackage) (E : WeakConvergenceEvidence P) :
    WeakConvergenceClosed P := by
  exact And.intro E.weakTopologyClosed (And.intro E.portmanteauTheoremClosed (And.intro E.continuousMappingTheoremClosed E.lévyContinuityTheoremClosed))

end CentralLimitWeakTheoremsCanonicalLaneLean
end HautevilleHouse