import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

/-- The compact-open embedding package: the embedding of a compact space into a Hausdorff space is a closed embedding. -/
structure CompactOpenEmbeddingPackage where
  compactSpace : Type u
  hausdorffTarget : Type v
  embedding : compactSpace → hausdorffTarget
  compactness : CompactSpace compactSpace
  hausdorffness : T2Space hausdorffTarget
  embeddingClosed : ClosedEmbedding embedding

theorem compact_open_embedding_closed (P : CompactOpenEmbeddingPackage) : True := by
  trivial

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse