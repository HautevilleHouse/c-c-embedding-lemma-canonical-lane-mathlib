import canonicalLaneMathlib.AdmissibleClass
import CCEmbeddingLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure SmoothEmbeddingPackage where
  sourceSmooth : Prop
  targetSmooth : Prop
  embeddingMap : Type
  immersionCondition : Prop
  topologicalEmbeddingCondition : Prop

structure SmoothEmbeddingEvidence (S : SmoothEmbeddingPackage) where
  sourceSmoothClosed : S.sourceSmooth
  targetSmoothClosed : S.targetSmooth
  immersionConditionClosed : S.immersionCondition
  topologicalEmbeddingConditionClosed : S.topologicalEmbeddingCondition

def SmoothEmbeddingClosed (S : SmoothEmbeddingPackage) : Prop :=
  S.sourceSmooth ∧ S.targetSmooth ∧ S.immersionCondition ∧ S.topologicalEmbeddingCondition

theorem smooth_embedding_closed_from_evidence
    (S : SmoothEmbeddingPackage) (E : SmoothEmbeddingEvidence S) :
    SmoothEmbeddingClosed S := by
  exact And.intro E.sourceSmoothClosed
    (And.intro E.targetSmoothClosed
      (And.intro E.immersionConditionClosed E.topologicalEmbeddingConditionClosed))

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse