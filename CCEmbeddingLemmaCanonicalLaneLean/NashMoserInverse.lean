import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure NashMoserInversePackage where
  tameFrechetSpace : Type u
  perturbationMap : tameFrechetSpace → tameFrechetSpace
  smoothInverse : Prop
  lossOfDerivatives : Prop
  iterativeConvergence : Prop

structure NashMoserInverseEvidence (N : NashMoserInversePackage) where
  smoothInverseClosed : N.smoothInverse
  lossOfDerivativesClosed : N.lossOfDerivatives
  iterativeConvergenceClosed : N.iterativeConvergence

def NashMoserInverseClosed (N : NashMoserInversePackage) : Prop :=
  N.smoothInverse ∧ N.lossOfDerivatives ∧ N.iterativeConvergence

theorem nash_moser_inverse_closed_from_evidence (N : NashMoserInversePackage)
    (E : NashMoserInverseEvidence N) : NashMoserInverseClosed N := by
  exact And.intro E.smoothInverseClosed
    (And.intro E.lossOfDerivativesClosed E.iterativeConvergenceClosed)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse