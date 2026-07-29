import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsCanonicalLaneLean

-- Gate closure definition: endpoint satisfied or remainder recorded
def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

-- Proof that any admissible class satisfies gate closure
theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end BernoulliEulerNumbersPolynomialsCanonicalLaneLean
end HautevilleHouse