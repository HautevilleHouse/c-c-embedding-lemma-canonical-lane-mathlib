import HautevilleHouse.CCEmbeddingLemmaCanonicalLaneLean.Formalization

namespace HautevilleHouse
namespace CCEmbeddingLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  ccConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

end CCEmbeddingLemmaCanonicalLaneLean
end HautevilleHouse