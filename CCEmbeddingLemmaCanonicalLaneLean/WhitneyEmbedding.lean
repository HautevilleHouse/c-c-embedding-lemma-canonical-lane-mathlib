import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure WhitneyEmbeddingPackage where
  manifold : Type u
  dimension : ℕ
  ambientEuclideanSpace : Type v
  embeddingConstruction : Prop
  dimensionBound : dimension ≤ 2*dimension

structure WhitneyEmbeddingEvidence (W : WhitneyEmbeddingPackage) where
  embeddingConstructionClosed : W.embeddingConstruction
  dimensionBoundClosed : W.dimensionBound

def WhitneyEmbeddingClosed (W : WhitneyEmbeddingPackage) : Prop :=
  W.embeddingConstruction ∧ W.dimensionBound

theorem whitney_embedding_closed_from_evidence (W : WhitneyEmbeddingPackage)
    (E : WhitneyEmbeddingEvidence W) : WhitneyEmbeddingClosed W := by
  exact And.intro E.embeddingConstructionClosed E.dimensionBoundClosed

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse