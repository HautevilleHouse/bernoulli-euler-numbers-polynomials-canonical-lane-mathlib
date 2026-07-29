import BernoulliEulerNumbersPolynomialsCanonicalLaneLean.BernoulliEulerClosureLayer
import BernoulliEulerNumbersPolynomialsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsCanonicalLaneLean

structure BernoulliEulerAnalyticCertificate where
  kummerLayerClosed : Prop
  bridgeClosedOnAdmissible : Prop
  gateClosedOnAdmissible : Prop
  kummerLayerClosedProof : kummerLayerClosed
  bridgeClosedProof : bridgeClosedOnAdmissible
  gateClosedProof : gateClosedOnAdmissible

def sourceBernoulliEulerAnalyticCertificate : BernoulliEulerAnalyticCertificate := {
  kummerLayerClosed := KummerCongruenceLayerClosed sourceKummerCongruenceCertificate
  bridgeClosedOnAdmissible := bridgeClosed (AdmissibleClass.mk ???)
  gateClosedOnAdmissible := gateClosed (AdmissibleClass.mk ???)
  kummerLayerClosedProof := source_kummer_congruence_closed
  bridgeClosedProof := bridge_from_admissible_class (AdmissibleClass.mk ???)
  gateClosedProof := gate_from_admissible_class (AdmissibleClass.mk ???)
}

def BernoulliEulerAnalyticCertificateClosed (C : BernoulliEulerAnalyticCertificate) : Prop :=
  C.kummerLayerClosed ∧ C.bridgeClosedOnAdmissible ∧ C.gateClosedOnAdmissible

theorem source_bernoulli_euler_certificate_closed :
    BernoulliEulerAnalyticCertificateClosed sourceBernoulliEulerAnalyticCertificate := by
  exact And.intro sourceBernoulliEulerAnalyticCertificate.kummerLayerClosedProof
    (And.intro sourceBernoulliEulerAnalyticCertificate.bridgeClosedProof
      sourceBernoulliEulerAnalyticCertificate.gateClosedProof)

end BernoulliEulerNumbersPolynomialsCanonicalLaneLean
end HautevilleHouse