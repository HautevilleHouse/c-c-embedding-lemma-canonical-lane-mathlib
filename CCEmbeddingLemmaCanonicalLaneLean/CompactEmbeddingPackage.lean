import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CCEmbeddingLemmaCanonicalLaneLean.SobolevSpacePackage

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure CompactEmbeddingPackage {S : SobolevSpacePackage} where
  domainCompact : Prop
  targetBanachSpace : Type u
  precompactImage : Prop
  arzelaAscoliCondition : Prop

structure CompactEmbeddingEvidence {S : SobolevSpacePackage} (C : CompactEmbeddingPackage S) where
  domainCompactClosed : C.domainCompact
  precompactImageClosed : C.precompactImage
  arzelaAscoliConditionClosed : C.arzelaAscoliCondition

def CompactEmbeddingClosed {S : SobolevSpacePackage} (C : CompactEmbeddingPackage S) : Prop :=
  C.domainCompact ∧ C.precompactImage ∧ C.arzelaAscoliCondition

theorem compact_embedding_closed_from_evidence {S : SobolevSpacePackage}
    (C : CompactEmbeddingPackage S) (E : CompactEmbeddingEvidence C) :
    CompactEmbeddingClosed C := by
  exact And.intro E.domainCompactClosed
    (And.intro E.precompactImageClosed E.arzelaAscoliConditionClosed)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse