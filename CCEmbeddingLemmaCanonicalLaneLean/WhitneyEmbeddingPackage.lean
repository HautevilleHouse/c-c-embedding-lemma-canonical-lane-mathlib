import canonicalLaneMathlib.AdmissibleClass
import CCEmbeddingLemmaCanonicalLaneLean.SmoothEmbeddingPackage

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure WhitneyEmbeddingPackage (S : SmoothEmbeddingPackage) where
  sourceDimension : ℕ
  targetDimension : ℕ
  dimensionInequality : sourceDimension ≤ 2 * sourceDimension + 1
  targetEuclidean : Prop
  strongEmbedding : Prop

structure WhitneyEmbeddingEvidence {S : SmoothEmbeddingPackage}
    (W : WhitneyEmbeddingPackage S) where
  dimensionInequalityClosed : W.dimensionInequality
  targetEuclideanClosed : W.targetEuclidean
  strongEmbeddingClosed : W.strongEmbedding

def WhitneyEmbeddingClosed {S : SmoothEmbeddingPackage}
    (W : WhitneyEmbeddingPackage S) : Prop :=
  W.dimensionInequality ∧ W.targetEuclidean ∧ W.strongEmbedding

theorem whitney_embedding_closed_from_evidence
    {S : SmoothEmbeddingPackage} (W : WhitneyEmbeddingPackage S)
    (E : WhitneyEmbeddingEvidence W) : WhitneyEmbeddingClosed W := by
  exact And.intro E.dimensionInequalityClosed
    (And.intro E.targetEuclideanClosed E.strongEmbeddingClosed)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse