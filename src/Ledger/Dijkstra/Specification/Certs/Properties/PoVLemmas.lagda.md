---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Certs/Properties/PoVLemmas.lagda.md
---


# CERTS: Preservation of Value Lemmas {#sec:certs-pov-lemmas}

## Key Differences from Conway

+  **`PRE-CERT`**: Conway uses `constMap wdrlCreds 0 ∪ˡ rewards` (zeroing).
   Dijkstra (CIP-159) uses `applyWithdrawals wdrls rewards` (subtraction).
   The PoV equation still holds; the proof structure differs.
+  **`CERT` / `DELEG`**: Same value-relevant structure as Conway.
+  **No `CERT-vdel`**: Dijkstra has `CERT-deleg`, `CERT-pool`, `CERT-gov` only.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Certs.Properties.PoVLemmas
  (gs : GovStructure) (open GovStructure gs) where

open import Ledger.Dijkstra.Specification.Certs gs
open import Ledger.Dijkstra.Specification.Certs.Properties.ApplyWithdrawalsPoV gs
open import Ledger.Dijkstra.Specification.Gov.Actions gs hiding (yes; no)
open import Ledger.Prelude

open import Axiom.Set.Properties th

open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.Nat.Properties using (+-0-monoid; +-identityʳ)
open import Relation.Binary using (IsEquivalence)

open RewardAddress
open Computational ⦃...⦄
open CertState

private variable
  dCert : DCert
  A A' : Type

instance
  _ = +-0-monoid

open ≡-Reasoning
```
-->

## CERT-pov: Each certificate step preserves value

```agda
CERT-pov : {Γ : CertEnv} {s s' : CertState}
  → Γ ⊢ s ⇀⦇ dCert ,CERT⦈ s' → getCoin s ≡ getCoin s'
```

<!--
```agda
CERT-pov (CERT-deleg (DELEG-delegate {rwds = rwds} _)) = sym (∪ˡsingleton0≡ rwds)
CERT-pov {s = ⟦ _ , stᵖ , stᵍ ⟧ᶜˢ} {⟦ _ , stᵖ' , stᵍ' ⟧ᶜˢ}
    (CERT-deleg (DELEG-dereg {c = c} {rwds} {vDelegs = vDelegs} {sDelegs} x)) = begin
    getCoin ⟦ ⟦ vDelegs , sDelegs , rwds , DepositsOf stᵍ ⟧ , stᵖ , stᵍ ⟧
      ≡˘⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp rwds
          ( ≡ᵉ.trans rwds-∪ˡ-∪
            (≡ᵉ.trans ∪-sym (res-ex-∪ Dec-∈-singleton)) ) ⟩
    getCoin rwds-∪ˡ-decomp
      ≡⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp
           ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ) rwds-∪ˡ≡sing-∪ˡ ⟩
    getCoin ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ)
      ≡⟨ ∪ˡsingleton0≡ (rwds ∣ ❴ c ❵ ᶜ) ⟩
    getCoin ⟦ ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ , DepositsOf stᵍ ⟧ , stᵖ' , stᵍ' ⟧
      ∎
    where
    module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})
    rwds-∪ˡ-decomp = (rwds ∣ ❴ c ❵ ᶜ) ∪ˡ (rwds ∣ ❴ c ❵)
    rwds-∪ˡ-∪ : rwds-∪ˡ-decomp ˢ ≡ᵉ (rwds ∣ ❴ c ❵ ᶜ)ˢ ∪ (rwds ∣ ❴ c ❵)ˢ
    rwds-∪ˡ-∪ = disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint)
    disj : disjoint (dom ((rwds ∣ ❴ c ❵ˢ ᶜ) ˢ)) (dom (❴ c , 0 ❵ᵐ ˢ))
    disj {a} a∈res a∈dom = res-comp-dom a∈res (dom-single→single a∈dom)
    rwds-∪ˡ≡sing-∪ˡ : rwds-∪ˡ-decomp ˢ ≡ᵉ ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ)ˢ
    rwds-∪ˡ≡sing-∪ˡ = ≡ᵉ.trans rwds-∪ˡ-∪
                        ( ≡ᵉ.trans (∪-cong ≡ᵉ.refl (res-singleton'{m = rwds} (x .proj₁)))
                                   (≡ᵉ.sym $ disjoint-∪ˡ-∪ disj) )
CERT-pov (CERT-pool _) = refl
CERT-pov (CERT-gov _) = refl
```
-->

## POST-CERT-pov and sts-pov

```agda
POST-CERT-pov : {Γ : CertEnv} {s s' : CertState}
  → Γ ⊢ s ⇀⦇ _ ,POST-CERT⦈ s' → getCoin s ≡ getCoin s'

POST-CERT-pov CERT-post = refl

sts-pov : {Γ : CertEnv} {s₁ sₙ : CertState} {sigs : List DCert}
  → RunTraceAndThen _⊢_⇀⦇_,CERT⦈_ _⊢_⇀⦇_,POST-CERT⦈_ Γ s₁ sigs sₙ
  → getCoin s₁ ≡ getCoin sₙ
sts-pov (run-[] x) = POST-CERT-pov x
sts-pov (run-∷ x xs) = trans (CERT-pov x) (sts-pov xs)
```

## PRE-CERT-pov (CIP-159: partial withdrawals)

The key new assumption `applyWithdrawals-pov` states that applying withdrawals
decreases `rewardsBalance` by exactly the total withdrawn amount.  This replaces
Conway's `constMap`/`res-decomp`/`sumConstZero` chain.

<!--
```agda
injOn : (wdls : Withdrawals)
      → ∀[ a ∈ dom (wdls ˢ) ] NetworkIdOf a ≡ NetworkId
      → InjectiveOn (dom (wdls ˢ)) RewardAddress.stake
injOn _ h {record { stake = stakex }} {record { stake = stakey }} x∈ y∈ refl =
  cong (λ u → record { net = u ; stake = stakex }) (trans (h x∈) (sym (h y∈)))

module Certs-Pov-lemmas
  ( ∪ˡ-res-lookup-preserve : ∀ (m : Rewards) (c : Credential) (v : Coin) (c' : Credential)
      → c' ≢ c → lookupᵐ? (❴ c , v ❵ ∪ˡ (m ∣ ❴ c ❵ ᶜ)) c' ≡ lookupᵐ? m c' )

  ( sum-map-proj₂≡getCoin : ∀ (m : Withdrawals) → sum (map proj₂ (setToList (m ˢ))) ≡ getCoin m )

  ( setToList-Unique : ∀ (m : Withdrawals) → Unique (map (stake ∘ proj₁) (setToList (m ˢ))) )
  where
    open ApplyWithdrawals-PoV ∪ˡ-res-lookup-preserve sum-map-proj₂≡getCoin setToList-Unique
```
-->

```agda
    PRE-CERT-pov : {Γ : CertEnv} {s s' : CertState}
      → ∀[ a ∈ dom (WithdrawalsOf Γ) ] NetworkIdOf a ≡ NetworkId
      → Γ ⊢ s ⇀⦇ _ ,PRE-CERT⦈ s'
      → getCoin s ≡ getCoin s' + getCoin (WithdrawalsOf Γ)
```

<!--
```agda
    PRE-CERT-pov {Γ = Γ} {s = cs} validNetId
      (CERT-pre {wdrls = wdrls} (_ , wdrlCreds⊆rwds , wdrlBounded)) =
        applyWithdrawals-pov wdrls (RewardsOf (dState cs)) wdrlCreds⊆rwds wdrlBounded
```
-->
