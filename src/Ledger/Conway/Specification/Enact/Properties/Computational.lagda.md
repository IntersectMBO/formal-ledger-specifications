---
source_branch: master
source_path: src/Ledger/Conway/Specification/Enact/Properties/Computational.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Gov.Base

module Ledger.Conway.Specification.Enact.Properties.Computational (gs : _) (open GovStructure gs) where

open import Ledger.Prelude

open import Ledger.Conway.Specification.Gov.Actions gs hiding (yes; no)
open import Ledger.Conway.Specification.Enact gs

open EnactState

open Computational ⦃...⦄

instance
  Computational-ENACT : Computational _⊢_⇀⦇_,ENACT⦈_ String
  Computational-ENACT .computeProof Γᵉ s =
    let open EnactEnv Γᵉ renaming (treasury to t; epoch to e) in
    λ where
    ⟦ NoConfidence        , _               ⟧ᵍᵃ → success (_ , Enact-NoConf)
    ⟦ UpdateCommittee     , (new , rem , q) ⟧ᵍᵃ →
      case ¿ ∀[ term ∈ range new ]
               term ≤ CCMaxTermLengthOf s +ᵉ' e ¿ of λ where
      (yes p) → success (-, Enact-UpdComm
        (subst (λ x → ∀[ term ∈ range new ] term ≤ x) (sym +ᵉ≡+ᵉ') p))
      (no ¬p) → failure "ENACT failed at ∀[ term ∈ range new ] term ≤ (CCMaxTermLengthOf s +ᵉ e)"
    ⟦ NewConstitution     , _               ⟧ᵍᵃ → success (-, Enact-NewConst)
    ⟦ TriggerHardFork     , _               ⟧ᵍᵃ → success (-, Enact-HF)
    ⟦ ChangePParams       , _               ⟧ᵍᵃ → success (-, Enact-PParams)
    ⟦ Info                , _               ⟧ᵍᵃ → success (-, Enact-Info)
    ⟦ TreasuryWithdrawal  , wdrl            ⟧ᵍᵃ →
      case ¿ ∑[ x ← s .withdrawals ∪⁺ wdrl ] x ≤ t ¿ of λ where
        (yes p)  → success (-, Enact-Wdrl p)
        (no _)   → failure "ENACT failed at ∑[ x ← (s .withdrawals ∪⁺ wdrl) ᶠᵐ ] x ≤ t"
  Computational-ENACT .completeness Γᵉ s action _ p
    with action | p
  ... | ⟦ .NoConfidence        , _               ⟧ᵍᵃ | Enact-NoConf   = refl
  ... | ⟦ .UpdateCommittee     , (new , rem , q) ⟧ᵍᵃ | Enact-UpdComm p
    rewrite dec-yes
      (¿ ∀[ term ∈ range new ] term
           ≤ CCMaxTermLengthOf s +ᵉ' EnactEnv.epoch Γᵉ ¿)
      (subst (λ x → ∀[ term ∈ range new ] term ≤ x) +ᵉ≡+ᵉ' p) .proj₂
      = refl
  ... | ⟦ .NewConstitution     , _               ⟧ᵍᵃ | Enact-NewConst = refl
  ... | ⟦ .TriggerHardFork     , _               ⟧ᵍᵃ | Enact-HF       = refl
  ... | ⟦ .ChangePParams       , _               ⟧ᵍᵃ | Enact-PParams  = refl
  ... | ⟦ .Info                , _               ⟧ᵍᵃ | Enact-Info     = refl
  ... | ⟦ .TreasuryWithdrawal  , wdrl            ⟧ᵍᵃ | Enact-Wdrl p
    rewrite dec-yes (¿ ∑[ x ← s .withdrawals ∪⁺ wdrl ] x ≤ EnactEnv.treasury Γᵉ ¿) p .proj₂
    = refl
```
