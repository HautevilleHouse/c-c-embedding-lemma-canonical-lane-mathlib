import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure ArzelaAscoliPackage (D : EmbeddingDomain) where
  familyOfFunctions : Type u
  equicontinuous : Prop
  pointwiseBounded : Prop
  relativelyCompact : Prop
  closureCompact : Prop

structure ArzelaAscoliEvidence {D : EmbeddingDomain} (A : ArzelaAscoliPackage D) where
  equicontinuousClosed : A.equicontinuous
  pointwiseBoundedClosed : A.pointwiseBounded
  relativelyCompactClosed : A.relativelyCompact
  closureCompactClosed : A.closureCompact

def ArzelaAscoliClosed {D : EmbeddingDomain} (A : ArzelaAscoliPackage D) : Prop :=
  A.equicontinuous ∧ A.pointwiseBounded ∧ A.relativelyCompact ∧ A.closureCompact

theorem arzela_ascoli_closed_from_evidence {D : EmbeddingDomain} (A : ArzelaAscoliPackage D) (E : ArzelaAscoliEvidence A) : ArzelaAscoliClosed A := by
  exact And.intro E.equicontinuousClosed (And.intro E.pointwiseBoundedClosed (And.intro E.relativelyCompactClosed E.closureCompactClosed))

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse