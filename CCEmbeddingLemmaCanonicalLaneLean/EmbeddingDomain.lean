import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure EmbeddingDomain where
  sourceSpace : Type u
  targetSpace : Type v
  sourceTopology : TopologicalSpace sourceSpace
  targetTopology : TopologicalSpace targetSpace
  sourceMetric : MetricSpace sourceSpace
  targetMetric : MetricSpace targetSpace
  continuousEmbedding : sourceSpace → targetSpace
  isHomeomorphicToImage : Prop

structure EmbeddingDomainEvidence (E : EmbeddingDomain) where
  continuousEmbeddingClosed : Continuous E.continuousEmbedding
  isHomeomorphicToImageClosed : E.isHomeomorphicToImage

def EmbeddingDomainClosed (E : EmbeddingDomain) : Prop :=
  Continuous E.continuousEmbedding ∧ E.isHomeomorphicToImage

theorem embedding_domain_closed_from_evidence (E : EmbeddingDomain) (Ev : EmbeddingDomainEvidence E) : EmbeddingDomainClosed E := by
  exact And.intro Ev.continuousEmbeddingClosed Ev.isHomeomorphicToImageClosed

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse