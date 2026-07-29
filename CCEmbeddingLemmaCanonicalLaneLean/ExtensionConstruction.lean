import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure ExtensionConstruction (E : EmbeddingDomain) where
  extensionMap : (subdomain : EmbeddingDomain) → (E.continuousEmbedding '' Set.univ) → E.targetSpace
  extensionWellDefined : Prop
  extensionContinuous : Prop

structure ExtensionConstructionEvidence {E : EmbeddingDomain} (C : ExtensionConstruction E) where
  extensionWellDefinedClosed : C.extensionWellDefined
  extensionContinuousClosed : C.extensionContinuous

def ExtensionConstructionClosed {E : EmbeddingDomain} (C : ExtensionConstruction E) : Prop :=
  C.extensionWellDefined ∧ C.extensionContinuous

theorem extension_construction_closed_from_evidence {E : EmbeddingDomain} (C : ExtensionConstruction E) (Ev : ExtensionConstructionEvidence C) : ExtensionConstructionClosed C := by
  exact And.intro Ev.extensionWellDefinedClosed Ev.extensionContinuousClosed

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse