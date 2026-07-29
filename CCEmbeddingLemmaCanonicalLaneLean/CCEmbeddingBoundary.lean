import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure CCEmbeddingBoundaryPackage {P : CCEmbeddingPackage} where
  domainCompact : Prop
  codomainComplete : Prop
  boundaryConditionsMet : Prop

structure CCEmbeddingBoundaryEvidence {P : CCEmbeddingPackage} (B : CCEmbeddingBoundaryPackage P) where
  domainCompactClosed : B.domainCompact
  codomainCompleteClosed : B.codomainComplete
  boundaryConditionsMetClosed : B.boundaryConditionsMet

def CCEmbeddingBoundaryClosed {P : CCEmbeddingPackage} (B : CCEmbeddingBoundaryPackage P) : Prop :=
  B.domainCompact ∧ B.codomainComplete ∧ B.boundaryConditionsMet

theorem cc_embedding_boundary_closed_from_evidence {P : CCEmbeddingPackage} (B : CCEmbeddingBoundaryPackage P) (E : CCEmbeddingBoundaryEvidence B) : CCEmbeddingBoundaryClosed B := by
  exact And.intro E.domainCompactClosed (And.intro E.codomainCompleteClosed E.boundaryConditionsMetClosed)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse