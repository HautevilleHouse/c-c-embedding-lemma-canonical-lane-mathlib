import HautevilleHouse.CCEmbeddingLemmaCanonicalLaneLean.EmbeddingStructure

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure ContinuousFunctionBanach where
  domain : Type
  codomain : Type
  norm : (domain → codomain) → ℝ
  complete : Prop

def BanachSpaceClosed (B : ContinuousFunctionBanach) : Prop :=
  B.complete

structure BanachSpaceEvidence (B : ContinuousFunctionBanach) where
  completeClosed : B.complete

theorem banach_space_closed_from_evidence (B : ContinuousFunctionBanach)
    (ev : BanachSpaceEvidence B) : BanachSpaceClosed B := by
  exact ev.completeClosed

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse