import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

/-- The C C embedding lane carries the target embedding space and its base structure. -/
structure EmbeddingLane where
  space : Type u
  base : Type v
  embeddingMap : space → base
  embeddingInjective : Function.Injective embeddingMap
  embeddingContinuous : Continuous embeddingMap

def EmbeddingLaneClosed (L : EmbeddingLane) : Prop :=
  L.embeddingInjective ∧ L.embeddingContinuous

theorem embedding_lane_closed (L : EmbeddingLane) : EmbeddingLaneClosed L := by
  exact And.intro L.embeddingInjective L.embeddingContinuous

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse