import HautevilleHouse.CCEmbeddingLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure EmbeddingPackage where
  sourceManifold : Type u
  targetManifold : Type v
  embeddingFunction : sourceManifold → targetManifold
  continuous : Prop
  injective : Prop
  proper : Prop

def EmbeddingClosed (P : EmbeddingPackage) : Prop :=
  P.continuous ∧ P.injective ∧ P.proper

theorem embedding_closed_from_package (P : EmbeddingPackage) (hcont : P.continuous) (hinj : P.injective) (hprop : P.proper) :
    EmbeddingClosed P := by
  exact And.intro hcont (And.intro hinj hprop)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse