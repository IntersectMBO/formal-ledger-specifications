{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid)

open import Ledger.Prelude
open import Ledger.Types.GovStructure

module Ledger.GovernanceActions.Properties (gs : _) (open GovStructure gs) where

open import Ledger.GovernanceActions gs hiding (yes; no)
open import Ledger.Enact gs

open EnactState

instance
  _ = +-0-monoid

open Computational ⦃...⦄
instance
  Computational-ENACT : Computational _⊢_⇀⦇_,ENACT⦈_ String
  Computational-ENACT .computeProof Γᵉ s =
    let open EnactEnv Γᵉ renaming (treasury to t; epoch to e) in
    λ where
    ⟦ NoConfidence , _ ⟧ᵍᵃ                → success (_ , Enact-NoConf)
    ⟦ UpdateCommittee , (new , rem , q) ⟧ᵍᵃ →
      case ¿ ∀[ term ∈ range new ]
               term ≤ s .pparams .proj₁ .PParams.ccMaxTermLength +ᵉ' e ¿ of λ where
      (yes p) → success (-, Enact-UpdComm
        (subst (λ x → ∀[ term ∈ range new ] term ≤ x) (sym +ᵉ≡+ᵉ') p))
      (no ¬p) → failure "ENACT failed at ∀[ term ∈ range new ] term ≤ (s .pparams .proj₁ .PParams.ccMaxTermLength +ᵉ e)"
    ⟦ NewConstitution , _ ⟧ᵍᵃ → success (-, Enact-NewConst)
    ⟦ TriggerHF       , _ ⟧ᵍᵃ → success (-, Enact-HF)
    ⟦ ChangePParams   , _ ⟧ᵍᵃ → success (-, Enact-PParams)
    ⟦ Info            , _ ⟧ᵍᵃ → success (-, Enact-Info) 
    ⟦ TreasuryWdrl , wdrl ⟧ᵍᵃ →
      case ¿ ∑[ x ← s .withdrawals ∪⁺ wdrl ] x ≤ t ¿ of λ where
        (yes p)             → success (-, Enact-Wdrl p)
        (no _)              → failure "ENACT failed at ∑[ x ← (s .withdrawals ∪⁺ wdrl) ᶠᵐ ] x ≤ t"
  Computational-ENACT .completeness Γᵉ s action _ p
    with action | p
  ... | ⟦ .NoConfidence    , _               ⟧ᵍᵃ | Enact-NoConf   = refl
  ... | ⟦ .UpdateCommittee , (new , rem , q) ⟧ᵍᵃ | Enact-UpdComm p
    rewrite dec-yes
      (¿ ∀[ term ∈ range new ] term
           ≤ s .pparams .proj₁ .PParams.ccMaxTermLength +ᵉ' EnactEnv.epoch Γᵉ ¿)
      (subst (λ x → ∀[ term ∈ range new ] term ≤ x) +ᵉ≡+ᵉ' p) .proj₂
      = refl
  ... | ⟦ .NewConstitution , _ ⟧ᵍᵃ | Enact-NewConst = refl
  ... | ⟦ .TriggerHF       , _ ⟧ᵍᵃ | Enact-HF       = refl
  ... | ⟦ .ChangePParams   , _ ⟧ᵍᵃ | Enact-PParams  = refl
  ... | ⟦ .Info            , _ ⟧ᵍᵃ | Enact-Info     = refl
  ... | ⟦ .TreasuryWdrl , wdrl ⟧ᵍᵃ | Enact-Wdrl p
    rewrite dec-yes (¿ ∑[ x ← s .withdrawals ∪⁺ wdrl ] x ≤ EnactEnv.treasury Γᵉ ¿) p .proj₂
    = refl
