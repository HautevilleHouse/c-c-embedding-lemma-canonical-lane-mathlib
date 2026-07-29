import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

/-- Extension lane: a continuous function on a dense subspace extends to the whole space (Tietze-type). -/
structure ExtensionLane where
  space : Type u
  subspace : Set space
  denseSubspace : Dense subspace
  target : Type v
  f : subspace → target
  continuousF : ContinuousOn f (subspace : Set space)
  extension : space → target
  continuousExtension : Continuous extension
  extendsF : ∀ x : subspace, extension (x : space) = f x

def ExtensionLaneClosed (E : ExtensionLane) : Prop := True

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse