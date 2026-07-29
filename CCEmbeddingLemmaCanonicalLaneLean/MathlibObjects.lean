import HautevilleHouse.CCEmbeddingLemmaCanonicalLaneLean.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure CCEmbeddingSpace where
  source : Type u
  sourceTop : TopologicalSpace source
  target : Type v
  targetTop : TopologicalSpace target

structure CCEmbeddingAdmittedObject where
  spaces : CCEmbeddingSpace
  continuousEmbedding : Prop
  embeddingClosed : Prop
  conclusion : embeddingClosed

def CCEmbeddingWitnessClosed (O : CCEmbeddingAdmittedObject) : Prop :=
  O.embeddingClosed

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse