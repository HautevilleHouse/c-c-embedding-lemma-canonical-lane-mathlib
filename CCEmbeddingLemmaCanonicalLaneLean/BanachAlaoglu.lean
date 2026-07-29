import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure BanachAlaogluPackage (D : EmbeddingDomain) where
  dualSpace : Type u
  weakStarTopology : TopologicalSpace dualSpace
  closedUnitBall : Set dualSpace
  weakStarCompact : Prop
  closedUnitBallWeakStarCompact : Prop

structure BanachAlaogluEvidence {D : EmbeddingDomain} (B : BanachAlaogluPackage D) where
  weakStarCompactClosed : B.weakStarCompact
  closedUnitBallWeakStarCompactClosed : B.closedUnitBallWeakStarCompact

def BanachAlaogluClosed {D : EmbeddingDomain} (B : BanachAlaogluPackage D) : Prop :=
  B.weakStarCompact ∧ B.closedUnitBallWeakStarCompact

theorem banach_alaoglu_closed_from_evidence {D : EmbeddingDomain} (B : BanachAlaogluPackage D) (E : BanachAlaogluEvidence B) : BanachAlaogluClosed B := by
  exact And.intro E.weakStarCompactClosed E.closedUnitBallWeakStarCompactClosed

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse