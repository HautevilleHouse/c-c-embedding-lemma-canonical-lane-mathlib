import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure ExtendabilityProperty where
  subdomain : EmbeddingDomain
  extensionExists : Prop
  extensionUnique : Prop
  extensionContinuous : Prop

structure ExtendabilityEvidence (P : ExtendabilityProperty) where
  extensionExistsClosed : P.extensionExists
  extensionUniqueClosed : P.extensionUnique
  extensionContinuousClosed : P.extensionContinuous

def ExtendabilityClosed (P : ExtendabilityProperty) : Prop :=
  P.extensionExists ∧ P.extensionUnique ∧ P.extensionContinuous

theorem extendability_closed_from_evidence (P : ExtendabilityProperty) (Ev : ExtendabilityEvidence P) : ExtendabilityClosed P := by
  exact And.intro Ev.extensionExistsClosed (And.intro Ev.extensionUniqueClosed Ev.extensionContinuousClosed)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse