import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BernoulliEulerNumbersPolynomialsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BernoulliEulerNumbersPolynomialsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsCanonicalLaneLean

-- Constrained closure for Bernoulli Euler Numbers Polynomials
def ConstrainedBernoulliEulerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

-- Endgame proof: both bridge and gate are closed for any admissible class
theorem bernoulli_euler_endgame (A : AdmissibleClass) : ConstrainedBernoulliEulerClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BernoulliEulerNumbersPolynomialsCanonicalLaneLean
end HautevilleHouse