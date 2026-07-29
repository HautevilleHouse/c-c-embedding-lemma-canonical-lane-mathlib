import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure CCEmbeddingPackage (E : EmbeddingDomain) where
  subdomain : EmbeddingDomain
  extensionCondition : Prop
  embeddingLifts : Prop

structure CCEmbeddingEvidence {E : EmbeddingDomain} (Pkg : CCEmbeddingPackage E) where
  extensionConditionClosed : Pkg.extensionCondition
  embeddingLiftsClosed : Pkg.embeddingLifts

def CCEmbeddingClosed {E : EmbeddingDomain} (Pkg : CCEmbeddingPackage E) : Prop :=
  Pkg.extensionCondition ∧ Pkg.embeddingLifts

theorem cc_embedding_closed_from_evidence {E : EmbeddingDomain} (Pkg : CCEmbeddingPackage E) (Ev : CCEmbeddingEvidence Pkg) : CCEmbeddingClosed Pkg := by
  exact And.intro Ev.extensionConditionClosed Ev.embeddingLiftsClosed

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse