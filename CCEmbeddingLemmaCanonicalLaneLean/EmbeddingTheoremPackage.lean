import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CCEmbeddingLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure EmbeddingTheoremPackage where
  targetSpace : Type u
  sourceSpace : Type v
  embeddingOperator : Type w
  compactnessCondition : Prop
  continuousInverseCondition : Prop
  closedRangeCondition : Prop

structure EmbeddingTheoremEvidence (P : EmbeddingTheoremPackage) where
  compactnessConditionClosed : P.compactnessCondition
  continuousInverseConditionClosed : P.continuousInverseCondition
  closedRangeConditionClosed : P.closedRangeCondition

def EmbeddingTheoremClosed (P : EmbeddingTheoremPackage) : Prop :=
  P.compactnessCondition ∧ P.continuousInverseCondition ∧ P.closedRangeCondition

theorem embedding_theorem_closed_from_evidence (P : EmbeddingTheoremPackage)
    (E : EmbeddingTheoremEvidence P) : EmbeddingTheoremClosed P := by
  exact And.intro E.compactnessConditionClosed
    (And.intro E.continuousInverseConditionClosed E.closedRangeConditionClosed)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse