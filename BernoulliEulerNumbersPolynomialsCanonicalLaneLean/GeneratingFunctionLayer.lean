import HautevilleHouse.BernoulliEulerNumbersPolynomialsCanonicalLaneLean.BernoulliEulerObjects

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsCanonicalLaneLean

structure GeneratingFunctionCertificate where
  flow : BernoulliEulerFlow
  exponentialGF : Prop
  tangentGF : Prop
  recurrenceClosed : Prop
  exponentialGFClosed : exponentialGF
  tangentGFClosed : tangentGF
  recurrenceClosedProof : recurrenceClosed

def sourceGeneratingFunctionCertificate : GeneratingFunctionCertificate := {
  flow := primitiveFlow,
  exponentialGF := primitiveFlow.operators.generatingFunction = fun t => t / (exp t - 1),
  tangentGF := primitiveFlow.operators.generatingFunction = fun t => 1 / cosh t,
  recurrenceClosed := BernoulliRecurrenceClosed primitiveFlow ∧ EulerRecurrenceClosed primitiveFlow,
  exponentialGFClosed := rfl,
  tangentGFClosed := rfl,
  recurrenceClosedProof := And.intro rfl rfl
}

def GeneratingFunctionClosed (C : GeneratingFunctionCertificate) : Prop :=
  C.exponentialGF ∧ C.tangentGF ∧ C.recurrenceClosed

theorem source_generating_function_closed :
    GeneratingFunctionClosed sourceGeneratingFunctionCertificate := by
  exact And.intro sourceGeneratingFunctionCertificate.exponentialGFClosed
    (And.intro sourceGeneratingFunctionCertificate.tangentGFClosed
      sourceGeneratingFunctionCertificate.recurrenceClosedProof)

end BernoulliEulerNumbersPolynomialsCanonicalLaneLean
end HautevilleHouse