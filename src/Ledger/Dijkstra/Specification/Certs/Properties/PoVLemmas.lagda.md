---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Certs/Properties/PoVLemmas.lagda.md
---


# CERTS: Preservation of Value Lemmas {#sec:certs-pov-lemmas}

## Key Differences from Conway

+  **`PRE-CERT`**.  Conway uses `constMap wdrlCreds 0 ∪ˡ rewards` (zeroing).
   Dijkstra (CIP-159) uses `applyWithdrawals wdrls rewards` (subtraction).
   The PoV equation still holds; the proof structure differs.
+  **`POST-CERT`**.  Conway only filters `voteDelegs` and preserves `getCoin`.
   Dijkstra (CIP-159) additionally applies `rewards ∪⁺ directDeposits`, increasing
   the value by `getCoin (DirectDepositsOf Γ)`.  The PoV equation
   therefore changes: `POST-CERT-pov` and `sts-pov` now relate the pre- and
   post-state by the direct-deposit total, and `CERTS-pov` becomes a symmetric
   "consumed ≡ produced" equation balancing withdrawals against direct deposits.
+  **`CERT` / `DELEG`**.  Same value-relevant structure as Conway.
+  **No `CERT-vdel`**.  Dijkstra has `CERT-deleg`, `CERT-pool`, `CERT-gov` only.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Certs.Properties.PoVLemmas
  (gs : GovStructure) (open GovStructure gs) where

open import Ledger.Dijkstra.Specification.Account gs
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

(The `CERT` rule is unchanged in Dijkstra, so this lemma matches the Conway version.)

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

## CIP-159 PoV lemmas (parameterized)

The `POST-CERT-pov`, `sts-pov`, and `PRE-CERT-pov` proofs all live inside the
parameterized `Certs-Pov-lemmas`{.AgdaModule} sub-module.

+  `PRE-CERT-pov`{.AgdaFunction} relies on `applyWithdrawals-pov`{.AgdaFunction}
   from `Certs.Properties.ApplyWithdrawalsPoV`{.AgdaModule}, which itself takes
   three module parameters bridging gaps in the `agda-sets` API.
+  `POST-CERT-pov`{.AgdaFunction} relies on a fourth parameter
   `indexedSumᵛ'-∪⁺`{.AgdaFunction} stating that `getCoin` distributes over
   `∪⁺`{.AgdaFunction} (union with addition).  This is the natural analogue of
   the existing Conway `indexedSumᵛ'-∪`{.AgdaFunction} lemma for `∪ˡ`{.AgdaFunction}
   on disjoint domains, but for `∪⁺`{.AgdaFunction} the equation holds
   *unconditionally* — values at shared keys are added rather than dropped.

<!--
```agda
injOn : (wdls : Withdrawals)
      → ∀[ a ∈ dom (wdls ˢ) ] NetworkIdOf a ≡ NetworkId
      → InjectiveOn (dom (wdls ˢ)) RewardAddress.stake
injOn _ h {record { stake = stakex }} {record { stake = stakey }} x∈ y∈ refl =
  cong (λ u → record { net = u ; stake = stakex }) (trans (h x∈) (sym (h y∈)))

module Certs-Pov-lemmas
  ( ∪ˡ-lookup-preserve : ∀ (m : Rewards) (c : Credential) (v : Coin) (c' : Credential)
      → c' ≢ c → lookupᵐ? (❴ c , v ❵ ∪ˡ m ) c' ≡ lookupᵐ? m c' )

  ( sum-map-proj₂≡getCoin : ∀ (m : RewardAddress ⇀ Coin) → sum (map proj₂ (setToList (m ˢ))) ≡ getCoin m )

  ( setToList-Unique : ∀ (m : RewardAddress ⇀ Coin) → ∀[ a ∈ dom (m ˢ) ] NetworkIdOf a ≡ NetworkId
      → Unique (map (stake ∘ proj₁) (setToList (m ˢ))) )
  where
    open ApplyToRewards-PoV ∪ˡ-lookup-preserve sum-map-proj₂≡getCoin setToList-Unique
```
-->

### POST-CERT-pov (CIP-159: direct deposits)

The `POST-CERT`{.AgdaDatatype} rule applies direct deposits via `rewards ∪⁺ dd`,
*increasing* the rewards balance by `getCoin dd`.  The PoV equation therefore
becomes "pre-balance plus direct deposits equals post-balance":

```agda
    POST-CERT-pov : {Γ : CertEnv} {s s' : CertState}
      → ∀[ a ∈ dom (DirectDepositsOf Γ) ] NetworkIdOf a ≡ NetworkId
      → Γ ⊢ s ⇀⦇ _ ,POST-CERT⦈ s'
      → getCoin s + getCoin (DirectDepositsOf Γ) ≡ getCoin s'
```

<!--
```agda
    -- `CERT-post`'s own premise `creds∈ : mapˢ stake (dom dd) ⊆ dom rewards`
    -- is exactly what `applyDirectDeposits-pov` needs.  We extract it from
    -- the step rather than threading it from outside, because CERTs *do*
    -- generally change `dom rewards` (e.g. `DELEG-dereg`), so the premise
    -- can't be propagated from the pre-CERT* state.
    POST-CERT-pov netIds (CERT-post {dd = dd} {rewards = rewards} creds∈) =
      sym (applyDirectDeposits-pov dd rewards creds∈ netIds)
```
-->

### sts-pov

A trace of `CERT`{.AgdaDatatype} steps followed by `POST-CERT`{.AgdaDatatype}
increases the rewards balance by exactly the direct-deposit total: each
`CERT`{.AgdaDatatype} step preserves value (by `CERT-pov`{.AgdaFunction}), and the
final `POST-CERT`{.AgdaDatatype} step adds `getCoin (DirectDepositsOf Γ)`.

```agda
    sts-pov : {Γ : CertEnv} {s₁ sₙ : CertState} {sigs : List DCert}
      → ∀[ a ∈ dom (DirectDepositsOf Γ) ] NetworkIdOf a ≡ NetworkId
      → RunTraceAndThen _⊢_⇀⦇_,CERT⦈_ _⊢_⇀⦇_,POST-CERT⦈_ Γ s₁ sigs sₙ
      → getCoin s₁ + getCoin (DirectDepositsOf Γ) ≡ getCoin sₙ
```

<!--
```agda
    sts-pov nid (run-[] x) = POST-CERT-pov nid x
    sts-pov {Γ} {s₁} {sₙ} nid (run-∷ {s' = s'} x xs) =
      begin
      rewardsBalance (dState s₁) + getCoin (DirectDepositsOf Γ)
      ≡⟨ cong (_+ getCoin (DirectDepositsOf Γ)) (CERT-pov x) ⟩
      rewardsBalance (dState s') + getCoin (DirectDepositsOf Γ)
        ≡⟨ sts-pov nid xs ⟩
      rewardsBalance (dState sₙ)
      ∎
```
-->

### PRE-CERT-pov (CIP-159: partial withdrawals)

The key new assumption `applyWithdrawals-pov` states that applying withdrawals
decreases `rewardsBalance` by exactly the total withdrawn amount.  This replaces
Conway's `constMap`/`res-decomp`/`sumConstZero` chain.

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
        applyWithdrawals-pov wdrls (RewardsOf (dState cs)) wdrlCreds⊆rwds validNetId wdrlBounded
```
-->
