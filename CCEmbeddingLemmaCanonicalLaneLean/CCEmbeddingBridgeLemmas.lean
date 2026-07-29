import CCEmbeddingLemmaCanonicalLaneLean.CCEmbeddingAdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CCEmbeddingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse