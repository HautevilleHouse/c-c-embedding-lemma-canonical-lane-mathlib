import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure CompactOpenTopologyPackage (D : EmbeddingDomain) where
  functionSpace : Type u
  topology : TopologicalSpace functionSpace
  subbasisDefined : Prop
  compactOpenTheorem : Prop
  functionSpaceClosed : Prop

structure CompactOpenTopologyEvidence {D : EmbeddingDomain} (C : CompactOpenTopologyPackage D) where
  subbasisDefinedClosed : C.subbasisDefined
  compactOpenTheoremClosed : C.compactOpenTheorem
  functionSpaceClosedClosed : C.functionSpaceClosed

def CompactOpenTopologyClosed {D : EmbeddingDomain} (C : CompactOpenTopologyPackage D) : Prop :=
  C.subbasisDefined ∧ C.compactOpenTheorem ∧ C.functionSpaceClosed

theorem compact_open_topology_closed_from_evidence {D : EmbeddingDomain} (C : CompactOpenTopologyPackage D) (E : CompactOpenTopologyEvidence C) : CompactOpenTopologyClosed C := by
  exact And.intro E.subbasisDefinedClosed (And.intro E.compactOpenTheoremClosed E.functionSpaceClosedClosed)

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse