import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure SmoothFunctionSpace where
  domainType : Type u
  codomainType : Type v
  topology : Prop
  smoothStructure : Prop
  compactOpenTopology : Prop
  closureUnderLimits : Prop

structure SmoothFunctionSpaceEvidence (S : SmoothFunctionSpace) where
  topologyClosed : S.topology
  smoothStructureClosed : S.smoothStructure
  compactOpenTopologyClosed : S.compactOpenTopology
  closureUnderLimitsClosed : S.closureUnderLimits

def SmoothFunctionSpaceClosed (S : SmoothFunctionSpace) : Prop :=
  S.topology ∧ S.smoothStructure ∧ S.compactOpenTopology ∧ S.closureUnderLimits

theorem smooth_function_space_closed_from_evidence (S : SmoothFunctionSpace)
    (E : SmoothFunctionSpaceEvidence S) : SmoothFunctionSpaceClosed S := by
  exact And.intro E.topologyClosed
    (And.intro E.smoothStructureClosed
      (And.intro E.compactOpenTopologyClosed E.closureUnderLimitsClosed))

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse