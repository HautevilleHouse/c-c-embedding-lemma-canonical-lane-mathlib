import canonicalLaneMathlib.AdmissibleClass
import CCEmbeddingLemmaCanonicalLaneLean.SmoothEmbeddingPackage

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure NashEmbeddingPackage (S : SmoothEmbeddingPackage) where
  riemannianSource : Prop
  isometricCondition : Prop
  codimensionBound : ℕ
  analyticRegularity : Prop

structure NashEmbeddingEvidence {S : SmoothEmbeddingPackage}
    (N : NashEmbeddingPackage S) where
  riemannianSourceClosed : N.riemannianSource
  isometricConditionClosed : N.isometricCondition
  codimensionBoundClosed : N.codimensionBound
  analyticRegularityClosed : N.analyticRegularity

def NashEmbeddingClosed {S : SmoothEmbeddingPackage}
    (N : NashEmbeddingPackage S) : Prop :=
  N.riemannianSource ∧ N.isometricCondition ∧ N.codimensionBound ∧ N.analyticRegularity

theorem nash_embedding_closed_from_evidence
    {S : SmoothEmbeddingPackage} (N : NashEmbeddingPackage S)
    (E : NashEmbeddingEvidence N) : NashEmbeddingClosed N := by
  exact And.intro E.riemannianSourceClosed
    (And.intro E.isometricConditionClosed
      (And.intro E.codimensionBoundClosed E.analyticRegularityClosed))

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse