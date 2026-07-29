import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure CompactnessArgument (X : EmbeddingDomain) where
  targetCompact : Prop
  uniformContinuityOnSubdomain : Prop
  subsequenceConverges : Prop

structure CompactnessEvidence {X : EmbeddingDomain} (C : CompactnessArgument X) where
  targetCompactClosed : C.targetCompact
  uniformContinuityOnSubdomainClosed : C.uniformContinuityOnSubdomain
  subsequenceConvergesClosed : C.subsequenceConverges

def CompactnessClosed {X : EmbeddingDomain} (C : CompactnessArgument X) : Prop :=
  C.targetCompact ∧ C.uniformContinuityOnSubdomain ∧ C.subsequenceConverges

theorem compactness_closed_from_evidence {X : EmbeddingDomain} (C : CompactnessArgument X) (Ev : CompactnessEvidence C) : CompactnessClosed C := by
  exact And.intro Ev.targetCompactClosed (And.intro Ev.uniformContinuityOnSubdomainClosed Ev.subsequenceConvergesClosed)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse