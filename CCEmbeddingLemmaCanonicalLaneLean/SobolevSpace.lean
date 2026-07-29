import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure SobolevSpace (M : Type) [TopologicalSpace M] [MeasurableSpace M] where
  exponent : ℝ
  integrabilityCondition : Prop
  completenessCondition : Prop
  embeddingCondition : Prop

structure SobolevSpaceEvidence (S : SobolevSpace) where
  integrabilityConditionClosed : S.integrabilityCondition
  completenessConditionClosed : S.completenessCondition
  embeddingConditionClosed : S.embeddingCondition

def SobolevSpaceClosed (S : SobolevSpace) : Prop :=
  S.integrabilityCondition ∧ S.completenessCondition ∧ S.embeddingCondition

theorem sobolev_space_closed_from_evidence (S : SobolevSpace) (E : SobolevSpaceEvidence S) :
    SobolevSpaceClosed S := by
  exact And.intro E.integrabilityConditionClosed
    (And.intro E.completenessConditionClosed E.embeddingConditionClosed)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse