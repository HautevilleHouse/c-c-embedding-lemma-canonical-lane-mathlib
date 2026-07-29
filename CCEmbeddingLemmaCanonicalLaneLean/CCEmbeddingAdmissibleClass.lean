import CCEmbeddingLemmaCanonicalLaneLean.CCEmbeddingMathlibObjects

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : CCEmbeddingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CCEmbeddingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse