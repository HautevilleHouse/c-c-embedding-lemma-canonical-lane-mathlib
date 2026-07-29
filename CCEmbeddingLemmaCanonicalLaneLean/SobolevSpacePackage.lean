import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CCEmbeddingLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure SobolevSpacePackage where
  domainDimension : ℕ
  exponent : ℝ
  order : ℕ
  embeddingDimension : ℕ
  continuousEmbedding : Prop
  compactEmbedding : Prop
  growthCondition : Prop

structure SobolevSpaceEvidence (S : SobolevSpacePackage) where
  continuousEmbeddingClosed : S.continuousEmbedding
  compactEmbeddingClosed : S.compactEmbedding
  growthConditionClosed : S.growthCondition

def SobolevSpaceClosed (S : SobolevSpacePackage) : Prop :=
  S.continuousEmbedding ∧ S.compactEmbedding ∧ S.growthCondition

theorem sobolev_space_closed_from_evidence (S : SobolevSpacePackage)
    (E : SobolevSpaceEvidence S) : SobolevSpaceClosed S := by
  exact And.intro E.continuousEmbeddingClosed
    (And.intro E.compactEmbeddingClosed E.growthConditionClosed)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse