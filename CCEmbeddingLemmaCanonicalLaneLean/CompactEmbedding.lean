import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure CompactEmbeddingPackage (P : EmbeddingTheoremPackage) where
  compactTargetCondition : Prop
  precompactImageCondition : Prop
  uniformContinuityCondition : Prop

structure CompactEmbeddingEvidence (C : CompactEmbeddingPackage) where
  compactTargetConditionClosed : C.compactTargetCondition
  precompactImageConditionClosed : C.precompactImageCondition
  uniformContinuityConditionClosed : C.uniformContinuityCondition

def CompactEmbeddingClosed (C : CompactEmbeddingPackage) : Prop :=
  C.compactTargetCondition ∧ C.precompactImageCondition ∧ C.uniformContinuityCondition

theorem compact_embedding_closed_from_evidence
    (C : CompactEmbeddingPackage) (E : CompactEmbeddingEvidence C) :
    CompactEmbeddingClosed C := by
  exact And.intro E.compactTargetConditionClosed
    (And.intro E.precompactImageConditionClosed E.uniformContinuityConditionClosed)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse