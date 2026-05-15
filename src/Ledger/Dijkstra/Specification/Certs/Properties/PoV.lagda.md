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

open import Ledger.Dijkstra.Specification.Account gs
open import Ledger.Dijkstra.Specification.Certs gs
open import Ledger.Dijkstra.Specification.Certs.Properties.PoVLemmas gs
open import Ledger.Dijkstra.Specification.Gov.Actions gs hiding (yes; no)
open import Ledger.Prelude
open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.Nat.Properties using (+-0-monoid; +-comm; +-assoc)

open CertState
open RewardAddress

private variable
  l : List DCert

instance
  _ = +-0-monoid

module Certs-PoV
  ( ∪ˡ-lookup-preserve : ∀ (m : Rewards) (c : Credential) (v : Coin) (c' : Credential)
      → c' ≢ c → lookupᵐ? (❴ c , v ❵ ∪ˡ m) c' ≡ lookupᵐ? m c' )

  ( sum-map-proj₂≡getCoin : ∀ (m : RewardAddress ⇀ Coin) → sum (map proj₂ (setToList (m ˢ))) ≡ getCoin m )

  ( setToList-Unique : ∀ (m : RewardAddress ⇀ Coin) → ∀[ a ∈ dom (m ˢ) ] NetworkIdOf a ≡ NetworkId
      → Unique (map (stake ∘ proj₁) (setToList (m ˢ))) )

  where
  open Certs-Pov-lemmas ∪ˡ-lookup-preserve sum-map-proj₂≡getCoin setToList-Unique
```
-->

## Theorem: The `CERTS` rule preserves value {#thm:CERTS-PoV}

In Dijkstra, the `CERTS`{.AgdaDatatype} rule processes withdrawals (via
`PRE-CERT`{.AgdaDatatype}) and direct deposits (via `POST-CERT`{.AgdaDatatype})
in addition to the certificate steps.  Withdrawals reduce the rewards balance;
direct deposits increase it; the preservation-of-value equation is a symmetric
"consumed equals produced" statement:

`getCoin s₁ + getCoin (CertEnv.directDeposits Γ) ≡ getCoin sₙ + getCoin (WithdrawalsOf Γ)`.

Equivalently, the *increase* in rewards balance from `s₁`{.AgdaBound} to
`sₙ`{.AgdaBound} equals `directDeposits − withdrawals`.

```agda
  CERTS-pov : {Γ : CertEnv} {s₁ sₙ : CertState}
    → ∀[ a ∈ dom (WithdrawalsOf Γ) ] NetworkIdOf a ≡ NetworkId
    → ∀[ a ∈ dom (DirectDepositsOf Γ) ] NetworkIdOf a ≡ NetworkId
    → Γ ⊢ s₁ ⇀⦇ l ,CERTS⦈ sₙ
    → getCoin s₁ + getCoin (DirectDepositsOf Γ) ≡ getCoin sₙ + getCoin (WithdrawalsOf Γ)
```

The proof composes `PRE-CERT-pov`{.AgdaFunction} (which gives
`getCoin s₁ ≡ getCoin s' + getCoin (WithdrawalsOf Γ)`) with `sts-pov`{.AgdaFunction}
(which gives `getCoin s' + getCoin (DirectDepositsOf Γ) ≡ getCoin sₙ`),
plus an arithmetic shuffle to interleave the two accounting terms.

<!--
```agda
  CERTS-pov {Γ = Γ} {s₁} {sₙ} validNetIdW validNetIdDD (run {s' = s'} (pre-cert , certs)) =
    begin
      getCoin s₁ + cdd        ≡⟨ cong (_+ cdd) (PRE-CERT-pov validNetIdW pre-cert) ⟩
      getCoin s' + cwd + cdd  ≡⟨ swap-right _ (cwd) (cdd) ⟩
      getCoin s' + cdd + cwd  ≡⟨ cong (_+ cwd) (sts-pov validNetIdDD certs) ⟩
      getCoin sₙ + cwd ∎
    where
    open ≡-Reasoning
    cdd cwd : Coin
    cdd = getCoin (DirectDepositsOf Γ)
    cwd = getCoin (WithdrawalsOf Γ)

    swap-right : ∀ a b c → (a + b) + c ≡ (a + c) + b
    swap-right a b c =
      trans  (+-assoc a b c)
             (trans  (cong (a +_) (+-comm b c))
                     (sym (+-assoc a c b)))
```
-->
