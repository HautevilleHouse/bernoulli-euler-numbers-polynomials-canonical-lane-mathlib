import BernoulliEulerNumbersPolynomialsCanonicalLaneLean.BernoulliEulerAnalyticCertificate

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsCanonicalLaneLean

def ConstrainedBernoulliEulerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bernoulli_euler_endgame (A : AdmissibleClass) :
    ConstrainedBernoulliEulerClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BernoulliEulerNumbersPolynomialsCanonicalLaneLean
end HautevilleHouse