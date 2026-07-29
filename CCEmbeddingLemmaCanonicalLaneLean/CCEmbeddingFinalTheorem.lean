import CCEmbeddingLemmaCanonicalLaneLean.CCEmbeddingGateLemmas

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

def ConstrainedCCEmbeddingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ccembedding_endgame (A : AdmissibleClass) :
    ConstrainedCCEmbeddingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse