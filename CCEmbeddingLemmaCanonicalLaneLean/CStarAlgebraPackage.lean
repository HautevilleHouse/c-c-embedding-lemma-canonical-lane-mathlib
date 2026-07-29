import CCEmbeddingLemmaCanonicalLaneLean.CCEmbeddingMathlibObjects

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure CStarAlgebraPackage where
  underlyingSpace : CCEmbeddingSpace
  normedStarAlgebra : Prop
  continuousFunctionalCalculus : Prop
  positiveCone : Prop
  idealStructure : Prop
  simpleCondition : Prop

structure CStarAlgebraEvidence (P : CStarAlgebraPackage) where
  normedStarAlgebraClosed : P.normedStarAlgebra
  continuousFunctionalCalculusClosed : P.continuousFunctionalCalculus
  positiveConeClosed : P.positiveCone
  idealStructureClosed : P.idealStructure
  simpleConditionClosed : P.simpleCondition

def CStarAlgebraClosed (P : CStarAlgebraPackage) : Prop :=
  P.normedStarAlgebra ∧ P.continuousFunctionalCalculus ∧
  P.positiveCone ∧ P.idealStructure ∧ P.simpleCondition

theorem cstar_algebra_closed_from_evidence (P : CStarAlgebraPackage)
    (E : CStarAlgebraEvidence P) : CStarAlgebraClosed P := by
  exact And.intro E.normedStarAlgebraClosed
    (And.intro E.continuousFunctionalCalculusClosed
      (And.intro E.positiveConeClosed
        (And.intro E.idealStructureClosed E.simpleConditionClosed)))

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse