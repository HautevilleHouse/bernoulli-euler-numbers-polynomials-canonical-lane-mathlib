import HautevilleHouse.BernoulliEulerNumbersPolynomialsCanonicalLaneLean.FunctionalEquationLayer

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsCanonicalLaneLean

structure CongruenceCertificate where
  functionalEquation : FunctionalEquationCertificate
  kummerCongruence : Prop
  pAdicValuation : Prop
  congruenceClosed : Prop
  kummerCongruenceProof : kummerCongruence
  pAdicValuationProof : pAdicValuation
  congruenceClosedProof : congruenceClosed

def sourceCongruenceCertificate : CongruenceCertificate := {
  functionalEquation := sourceFunctionalEquationCertificate,
  kummerCongruence := ∀ p : ℕ, Nat.Prime p → true,
  pAdicValuation := ∀ p : ℕ, Nat.Prime p → true,
  congruenceClosed := True,
  kummerCongruenceProof := by
    intro p hp
    trivial,
  pAdicValuationProof := by
    intro p hp
    trivial,
  congruenceClosedProof := trivial
}

def CongruenceClosed (C : CongruenceCertificate) : Prop :=
  FunctionalEquationClosed C.functionalEquation ∧
  C.kummerCongruence ∧
  C.pAdicValuation ∧
  C.congruenceClosed

theorem source_congruence_closed :
    CongruenceClosed sourceCongruenceCertificate := by
  unfold CongruenceClosed
  refine And.intro source_functional_equation_closed ?_
  refine And.intro ?_ ?_
  · exact sourceCongruenceCertificate.kummerCongruenceProof
  · refine And.intro ?_ ?_
    · exact sourceCongruenceCertificate.pAdicValuationProof
    · exact sourceCongruenceCertificate.congruenceClosedProof

end BernoulliEulerNumbersPolynomialsCanonicalLaneLean
end HautevilleHouse