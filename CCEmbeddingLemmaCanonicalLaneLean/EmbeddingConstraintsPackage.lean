import canonicalLaneMathlib.AdmissibleClass
import CCEmbeddingLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure EmbeddingConstraintsPackage where
  dimensionRequirement : ℕ → ℕ → Prop
  compactnessRequirement : Prop
  boundaryBehavior : Prop
  embeddingType : String

structure EmbeddingConstraintsEvidence (E : EmbeddingConstraintsPackage) where
  dimensionRequirementClosed : E.dimensionRequirement 0 0
  compactnessRequirementClosed : E.compactnessRequirement
  boundaryBehaviorClosed : E.boundaryBehavior

def EmbeddingConstraintsClosed (E : EmbeddingConstraintsPackage) : Prop :=
  E.dimensionRequirement 0 0 ∧ E.compactnessRequirement ∧ E.boundaryBehavior

theorem embedding_constraints_closed_from_evidence
    (E : EmbeddingConstraintsPackage) (Ev : EmbeddingConstraintsEvidence E) :
    EmbeddingConstraintsClosed E := by
  exact And.intro Ev.dimensionRequirementClosed
    (And.intro Ev.compactnessRequirementClosed Ev.boundaryBehaviorClosed)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse