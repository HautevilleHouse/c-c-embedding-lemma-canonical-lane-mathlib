import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure CCEmbeddingPackage where
  sourceSpace : Type u
  targetSpace : Type v
  sourceTopology : TopologicalSpace sourceSpace
  targetTopology : TopologicalSpace targetSpace
  embeddingMap : sourceSpace → targetSpace
  embeddingContinuous : Prop
  embeddingInjective : Prop
  embeddingOpen : Prop
  embeddingClosed : Prop
  embeddingProper : Prop

def CCEmbeddingWitnessClosed (O : CCAdmittedObject) : Prop :=
  O.embeddingWitness

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse