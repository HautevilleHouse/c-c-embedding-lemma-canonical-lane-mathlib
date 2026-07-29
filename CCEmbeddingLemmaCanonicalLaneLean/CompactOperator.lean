import HautevilleHouse.CCEmbeddingLemmaCanonicalLaneLean.FunctionSpace

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure CompactOperator where
  sourceBanach : ContinuousFunctionBanach
  targetBanach : ContinuousFunctionBanach
  operator : (sourceBanach.domain → sourceBanach.codomain) → (targetBanach.domain → targetBanach.codomain)
  linear : Prop
  compactness : Prop

def CompactOperatorClosed (K : CompactOperator) : Prop :=
  K.linear ∧ K.compactness

structure CompactOperatorEvidence (K : CompactOperator) where
  linearClosed : K.linear
  compactnessClosed : K.compactness

theorem compact_operator_closed_from_evidence (K : CompactOperator)
    (ev : CompactOperatorEvidence K) : CompactOperatorClosed K := by
  exact And.intro ev.linearClosed ev.compactnessClosed

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse