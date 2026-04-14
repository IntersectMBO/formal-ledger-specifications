---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Certs/Properties/PoV.lagda.md
---

# CERTS: Preservation of Value {#sec:certs-pov}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Certs.Properties.PoV
  (gs : GovStructure) (open GovStructure gs) where

open import Ledger.Dijkstra.Specification.Certs gs
open import Ledger.Dijkstra.Specification.Certs.Properties.PoVLemmas gs
open import Ledger.Dijkstra.Specification.Gov.Actions gs hiding (yes; no)
open import Ledger.Prelude
open import Data.Nat.Properties using (+-0-monoid)

open CertState

private variable
  l : List DCert

instance
  _ = +-0-monoid

module Certs-PoV
    ( indexedSumᵛ'-∪' :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                         → disjoint (dom m) (dom m')
                         → getCoin (m ∪ˡ m') ≡ getCoin m + getCoin m' )
    ( applyWithdrawals-pov' :
        (wdrls : Withdrawals) (rwds : Rewards)
        → mapˢ RewardAddress.stake (dom wdrls) ⊆ dom rwds
        → (∀[ (addr , amt) ∈ wdrls ˢ ]
            amt ≤ maybe id 0 (lookupᵐ? rwds (RewardAddress.stake addr)))
        → getCoin rwds ≡ getCoin (applyWithdrawals wdrls rwds) + getCoin wdrls )
    ( ≡ᵉ-getCoinˢ' :
        {A A' : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq A' ⦄
        (s : ℙ (A × Coin)) {f : A → A'}
        → InjectiveOn (dom s) f
        → getCoin (mapˢ (map₁ f) s) ≡ getCoin s )
    where
    open Certs-Pov-lemmas indexedSumᵛ'-∪' applyWithdrawals-pov' ≡ᵉ-getCoinˢ'
```
-->

## Theorem: The `CERTS` rule preserves value {#thm:CERTS-PoV}

```agda
    CERTS-pov : {Γ : CertEnv} {s₁ sₙ : CertState}
      → ∀[ a ∈ dom (WithdrawalsOf Γ) ] NetworkIdOf a ≡ NetworkId
      → Γ ⊢ s₁ ⇀⦇ l ,CERTS⦈ sₙ
      → getCoin s₁ ≡ getCoin sₙ + getCoin (WithdrawalsOf Γ)
```

```agda
    CERTS-pov {Γ = Γ} validNetId (run (pre-cert , certs)) =
      trans  (PRE-CERT-pov validNetId pre-cert)
             (cong (_+ getCoin (WithdrawalsOf Γ)) {!!}) -- (sts-pov certs))
```
