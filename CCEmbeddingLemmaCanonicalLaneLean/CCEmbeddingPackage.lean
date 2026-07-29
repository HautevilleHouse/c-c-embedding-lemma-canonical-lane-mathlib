import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure CCEmbeddingPackage where
  sourceManifold : Type u
  targetManifold : Type v
  embeddingMap : sourceManifold → targetManifold
  smoothEmbedding : Prop
  properInclusion : Prop
  continuity : Prop
  injectivity : Prop

structure CCEmbeddingEvidence (P : CCEmbeddingPackage) where
  smoothEmbeddingClosed : P.smoothEmbedding
  properInclusionClosed : P.properInclusion
  continuityClosed : P.continuity
  injectivityClosed : P.injectivity

def CCEmbeddingClosed (P : CCEmbeddingPackage) : Prop :=
  P.smoothEmbedding ∧ P.properInclusion ∧ P.continuity ∧ P.injectivity

theorem cc_embedding_closed_from_evidence (P : CCEmbeddingPackage)
    (E : CCEmbeddingEvidence P) : CCEmbeddingClosed P := by
  exact And.intro E.smoothEmbeddingClosed
    (And.intro E.properInclusionClosed
      (And.intro E.continuityClosed E.injectivityClosed))

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse