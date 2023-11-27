
open import Data.Nat.Properties using (+-0-commutativeMonoid; +-0-monoid)

open import Ledger.Prelude
open import Ledger.GovStructure

module Ledger.GovernanceActions.Properties (gs : _) (open GovStructure gs) where

open import Ledger.GovernanceActions gs hiding (yes; no)

open EnactState

instance
  _ = +-0-monoid
  _ = +-0-commutativeMonoid

open Computational ⦃...⦄
instance
  Computational-ENACT : Computational _⊢_⇀⦇_,ENACT⦈_
  Computational-ENACT .computeProof ⟦ _ , t , e ⟧ᵉ s = λ where
    NoConfidence             → just (_ , Enact-NoConf)
    (NewCommittee new rem q) →
      case ¿ ∀[ term ∈ range new ]
               term ≤ (s .pparams .proj₁ .PParams.ccMaxTermLength +ᵉ e) ¿ of λ where
      (yes p) → just (-, Enact-NewComm p)
      (no ¬p) → nothing
    (NewConstitution dh sh)  → just (-, Enact-NewConst)
    (TriggerHF v)            → just (-, Enact-HF)
    (ChangePParams up)       → just (-, Enact-PParams)
    Info                     → just (-, Enact-Info)
    (TreasuryWdrl wdrl) →
      case ¿ ∑[ x ← (s .withdrawals ∪⁺ wdrl) ᶠᵐ ] x ≤ t ¿ of λ where
        (yes p)             → just (-, Enact-Wdrl p)
        (no _)              → nothing
  Computational-ENACT .completeness ⟦ _ , t , e ⟧ᵉ s action _ p
    with action | p
  ... | .NoConfidence           | Enact-NoConf   = refl
  ... | .NewCommittee new rem q | Enact-NewComm p
    rewrite dec-yes
      (¿ ∀[ term ∈ range new ] term
           ≤ (s .pparams .proj₁ .PParams.ccMaxTermLength +ᵉ e) ¿) p .proj₂
      = refl
  ... | .NewConstitution dh sh  | Enact-NewConst = refl
  ... | .TriggerHF v            | Enact-HF       = refl
  ... | .ChangePParams up       | Enact-PParams  = refl
  ... | .Info                   | Enact-Info     = refl
  ... | .TreasuryWdrl wdrl      | Enact-Wdrl p
    rewrite dec-yes (¿ (∑[ x ← (s .withdrawals ∪⁺ wdrl) ᶠᵐ ] x) ≤ t ¿) p .proj₂
    = refl
