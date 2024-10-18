{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid)

open import Ledger.Prelude
open import Ledger.Conway.Conformance.Types.GovStructure

module Ledger.Conway.Conformance.GovernanceActions.Properties (gs : _) (open GovStructure gs) where

open import Ledger.Conway.Conformance.GovernanceActions gs hiding (yes; no)
open import Ledger.Conway.Conformance.Enact gs

open EnactState

instance
  _ = +-0-monoid

open Computational ⦃...⦄
instance
  Computational-ENACT : Computational _⊢_⇀⦇_,ENACT⦈_ String
  Computational-ENACT .computeProof ⟦ _ , t , e ⟧ᵉ s = λ where
    NoConfidence             → success (_ , Enact-NoConf)
    (UpdateCommittee new rem q) →
      case ¿ ∀[ term ∈ range new ]
               term ≤ s .pparams .proj₁ .PParams.ccMaxTermLength +ᵉ' e ¿ of λ where
      (yes p) → success (-, Enact-NewComm
        (subst (λ x → ∀[ term ∈ range new ] term ≤ x) (sym +ᵉ≡+ᵉ') p))
      (no ¬p) → failure "ENACT failed at ∀[ term ∈ range new ] term ≤ (s .pparams .proj₁ .PParams.ccMaxTermLength +ᵉ e)"
    (NewConstitution dh sh)  → success (-, Enact-NewConst)
    (TriggerHF v)            → success (-, Enact-HF)
    (ChangePParams up)       → success (-, Enact-PParams)
    Info                     → success (-, Enact-Info)
    (TreasuryWdrl wdrl) →
      case ¿ ∑[ x ← s .withdrawals ∪⁺ wdrl ] x ≤ t ¿ of λ where
        (yes p)             → success (-, Enact-Wdrl p)
        (no _)              → failure "ENACT failed at ∑[ x ← (s .withdrawals ∪⁺ wdrl) ᶠᵐ ] x ≤ t"
  Computational-ENACT .completeness ⟦ _ , t , e ⟧ᵉ s action _ p
    with action | p
  ... | .NoConfidence           | Enact-NoConf   = refl
  ... | .UpdateCommittee new rem q | Enact-NewComm p
    rewrite dec-yes
      (¿ ∀[ term ∈ range new ] term
           ≤ s .pparams .proj₁ .PParams.ccMaxTermLength +ᵉ' e ¿)
      (subst (λ x → ∀[ term ∈ range new ] term ≤ x) +ᵉ≡+ᵉ' p) .proj₂
      = refl
  ... | .NewConstitution dh sh  | Enact-NewConst = refl
  ... | .TriggerHF v            | Enact-HF       = refl
  ... | .ChangePParams up       | Enact-PParams  = refl
  ... | .Info                   | Enact-Info     = refl
  ... | .TreasuryWdrl wdrl      | Enact-Wdrl p
    rewrite dec-yes (¿ ∑[ x ← s .withdrawals ∪⁺ wdrl ] x ≤ t ¿) p .proj₂
    = refl
