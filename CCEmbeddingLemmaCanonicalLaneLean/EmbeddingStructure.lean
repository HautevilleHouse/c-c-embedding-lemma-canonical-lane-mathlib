import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure CCEmbeddingStructure where
  sourceSpace : Type
  targetSpace : Type
  embeddingMap : sourceSpace → targetSpace
  continuity : Prop
  injectivity : Prop
  properInverse : Prop

def CCEmbeddingClosed (E : CCEmbeddingStructure) : Prop :=
  E.continuity ∧ E.injectivity ∧ E.properInverse

structure CCEmbeddingEvidence (E : CCEmbeddingStructure) where
  continuityClosed : E.continuity
  injectivityClosed : E.injectivity
  properInverseClosed : E.properInverse

theorem cc_embedding_closed_from_evidence (E : CCEmbeddingStructure)
    (ev : CCEmbeddingEvidence E) : CCEmbeddingClosed E := by
  exact And.intro ev.continuityClosed (And.intro ev.injectivityClosed ev.properInverseClosed)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse