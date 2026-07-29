import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure EmbeddingFunction where
  source : Type u
  target : Type v
  sourceTopology : TopologicalSpace source
  targetTopology : TopologicalSpace target
  map : source → target
  isContinuous : Prop
  isInjective : Prop
  isProper : Prop
  isAnIsometry : Prop

structure EmbeddingFunctionEvidence (f : EmbeddingFunction) where
  isContinuousClosed : f.isContinuous
  isInjectiveClosed : f.isInjective
  isProperClosed : f.isProper
  isAnIsometryClosed : f.isAnIsometry

def EmbeddingFunctionClosed (f : EmbeddingFunction) : Prop :=
  f.isContinuous ∧ f.isInjective ∧ f.isProper ∧ f.isAnIsometry

theorem embedding_function_closed_from_evidence (f : EmbeddingFunction) (E : EmbeddingFunctionEvidence f) : EmbeddingFunctionClosed f := by
  exact And.intro E.isContinuousClosed (And.intro E.isInjectiveClosed (And.intro E.isProperClosed E.isAnIsometryClosed))

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse