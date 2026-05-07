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

open import Ledger.Prelude

open import Ledger.Dijkstra.Specification.Certs gs
open import Ledger.Dijkstra.Specification.Certs.Properties.PoVLemmas gs
open import Ledger.Dijkstra.Specification.Gov.Actions gs hiding (yes; no)
open import Ledger.Prelude
open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.Nat.Properties using (+-0-monoid)

open CertState
open RewardAddress

private variable
  l : List DCert

instance
  _ = +-0-monoid

module Certs-PoV
  ( ∪ˡ-res-lookup-preserve : ∀ (m : Rewards) (c : Credential) (v : Coin) (c' : Credential)
      → c' ≢ c → lookupᵐ? (❴ c , v ❵ ∪ˡ (m ∣ ❴ c ❵ ᶜ)) c' ≡ lookupᵐ? m c' )

  ( sum-map-proj₂≡getCoin : ∀ (m : Withdrawals) → sum (map proj₂ (setToList (m ˢ))) ≡ getCoin m )

  ( setToList-Unique : ∀ (m : Withdrawals) → Unique (map (stake ∘ proj₁) (setToList (m ˢ))) )
  where
    open Certs-Pov-lemmas ∪ˡ-res-lookup-preserve sum-map-proj₂≡getCoin setToList-Unique
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
             (cong (_+ getCoin (WithdrawalsOf Γ)) (sts-pov certs))
```
