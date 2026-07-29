import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure EmbeddingTheoremPackage (S : SobolevSpace) where
  targetSpace : Type
  targetTopology : TopologicalSpace targetSpace
  embeddingMap : S -> targetSpace
  continuityCondition : Prop
  injectivityCondition : Prop
  closedRangeCondition : Prop

structure EmbeddingTheoremEvidence (P : EmbeddingTheoremPackage) where
  continuityConditionClosed : P.continuityCondition
  injectivityConditionClosed : P.injectivityCondition
  closedRangeConditionClosed : P.closedRangeCondition

def EmbeddingTheoremClosed (P : EmbeddingTheoremPackage) : Prop :=
  P.continuityCondition ∧ P.injectivityCondition ∧ P.closedRangeCondition

theorem embedding_theorem_closed_from_evidence
    (P : EmbeddingTheoremPackage) (E : EmbeddingTheoremEvidence P) :
    EmbeddingTheoremClosed P := by
  exact And.intro E.continuityConditionClosed
    (And.intro E.injectivityConditionClosed E.closedRangeConditionClosed)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse