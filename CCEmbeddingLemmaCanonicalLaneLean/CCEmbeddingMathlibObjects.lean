import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CCEmbeddingSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  starAlgebra : Type
  starNorm : Type
  complete : Prop

structure CCEmbeddingAdmittedObject where
  space : CCEmbeddingSpace
  ccEmbeddingFrom : Type
  ccEmbeddingTo : Type
  embeddingExists : Prop
  conclusion : embeddingExists

structure CCEmbeddingEndgameState where
  object : CCEmbeddingAdmittedObject

def CCEmbeddingWitnessClosed (O : CCEmbeddingAdmittedObject) : Prop :=
  O.embeddingExists

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse