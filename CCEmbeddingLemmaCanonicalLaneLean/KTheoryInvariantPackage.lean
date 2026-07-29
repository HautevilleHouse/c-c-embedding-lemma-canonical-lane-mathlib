import CCEmbeddingLemmaCanonicalLaneLean.EmbeddingConstructionPackage

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure KTheoryInvariantPackage {P : CStarAlgebraPackage}
    (E : EmbeddingConstructionPackage P) where
  sixTermExactSequence : Prop
  indexMapInjective : Prop
  exponentialMapSurjective : Prop
  k0Group : Type
  k1Group : Type
  bottPeriodicity : Prop

structure KTheoryInvariantEvidence {P : CStarAlgebraPackage}
    {E : EmbeddingConstructionPackage P} (K : KTheoryInvariantPackage E) where
  sixTermExactSequenceClosed : K.sixTermExactSequence
  indexMapInjectiveClosed : K.indexMapInjective
  exponentialMapSurjectiveClosed : K.exponentialMapSurjective
  bottPeriodicityClosed : K.bottPeriodicity

def KTheoryInvariantClosed {P : CStarAlgebraPackage}
    {E : EmbeddingConstructionPackage P} (K : KTheoryInvariantPackage E) : Prop :=
  K.sixTermExactSequence ∧ K.indexMapInjective ∧
  K.exponentialMapSurjective ∧ K.bottPeriodicity

theorem ktheory_invariant_closed_from_evidence
    {P : CStarAlgebraPackage} {E : EmbeddingConstructionPackage P}
    (K : KTheoryInvariantPackage E) (Ev : KTheoryInvariantEvidence K) :
    KTheoryInvariantClosed K := by
  exact And.intro Ev.sixTermExactSequenceClosed
    (And.intro Ev.indexMapInjectiveClosed
      (And.intro Ev.exponentialMapSurjectiveClosed Ev.bottPeriodicityClosed))

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse