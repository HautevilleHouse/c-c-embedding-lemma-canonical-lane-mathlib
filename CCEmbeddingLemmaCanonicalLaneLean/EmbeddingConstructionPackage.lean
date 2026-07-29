import CCEmbeddingLemmaCanonicalLaneLean.CStarAlgebraPackage

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure EmbeddingConstructionPackage (P : CStarAlgebraPackage) where
  sourceAlgebra : Type u
  targetAlgebra : Type v
  starHomomorphism : Type
  isometricEmbedding : Prop
  kernelTrivial : Prop
  essentialProperty : Prop

structure EmbeddingConstructionEvidence {P : CStarAlgebraPackage}
    (E : EmbeddingConstructionPackage P) where
  isometricEmbeddingClosed : E.isometricEmbedding
  kernelTrivialClosed : E.kernelTrivial
  essentialPropertyClosed : E.essentialProperty

def EmbeddingConstructionClosed {P : CStarAlgebraPackage}
    (E : EmbeddingConstructionPackage P) : Prop :=
  E.isometricEmbedding ∧ E.kernelTrivial ∧ E.essentialProperty

theorem embedding_construction_closed_from_evidence
    {P : CStarAlgebraPackage} (E : EmbeddingConstructionPackage P)
    (Ev : EmbeddingConstructionEvidence E) : EmbeddingConstructionClosed E := by
  exact And.intro Ev.isometricEmbeddingClosed
    (And.intro Ev.kernelTrivialClosed Ev.essentialPropertyClosed)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse