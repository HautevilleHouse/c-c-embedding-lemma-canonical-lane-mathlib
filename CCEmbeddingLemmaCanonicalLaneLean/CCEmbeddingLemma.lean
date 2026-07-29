import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure CCEmbeddingPackage where
  domainSpace : Type u
  codomainSpace : Type v
  embeddingMap : domainSpace → codomainSpace
  embeddingInjectivity : Prop
  embeddingContinuity : Prop
  embeddingClosedRange : Prop

structure CCEmbeddingEvidence (P : CCEmbeddingPackage) where
  embeddingInjectivityClosed : P.embeddingInjectivity
  embeddingContinuityClosed : P.embeddingContinuity
  embeddingClosedRangeClosed : P.embeddingClosedRange

def CCEmbeddingClosed (P : CCEmbeddingPackage) : Prop :=
  P.embeddingInjectivity ∧ P.embeddingContinuity ∧ P.embeddingClosedRange

theorem cc_embedding_closed_from_evidence (P : CCEmbeddingPackage) (E : CCEmbeddingEvidence P) : CCEmbeddingClosed P := by
  exact And.intro E.embeddingInjectivityClosed (And.intro E.embeddingContinuityClosed E.embeddingClosedRangeClosed)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse