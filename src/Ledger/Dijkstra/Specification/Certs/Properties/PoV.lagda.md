# `CERTS`{.AgdaDatatype} Properties: Preservation of Value {#sec:certs-pov}

This module provides the `CERTS`{.AgdaDatatype}-level value-accounting facts
consumed by `Ledger.Properties.PoV`{.AgdaModule}: it discharges the
`CERTS-rewards-pov`, `CERTS-deposits-pov`, `CERTS-deposits-registered`,
`CERTS-new-thread` and `refundCertDeposits-++` module parameters of the
`LEDGER-PoV`{.AgdaModule} consumer, with statements matching those parameters
verbatim.

`CERTS`{.AgdaDatatype} is the reflexive–transitive closure of the
single-certificate rule `CERT`{.AgdaDatatype}, so each fact is an induction
over the closure whose step case is the corresponding per-step lemma of
`Certs.Properties.PoVLemmas`{.AgdaModule}.  Composing the deposit facts across
steps rests on the pool-set threading explained there: peeling the first
certificate off `newCertDeposits`{.AgdaFunction}
(`newCertDeposits-∷`{.AgdaFunction}) leaves the tail charged against the
evolved accumulator, which `CERT-poolSet`{.AgdaFunction} identifies — up to
extensional equality, absorbed by `newCertDeposits-cong`{.AgdaFunction} — with
the pool set of the state after the step.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Certs.Properties.PoV
  (gs : GovStructure) (open GovStructure gs) where

open import Data.Nat.Properties using (+-assoc; +-comm)

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Gov.Actions gs hiding (yes; no)
open import Ledger.Dijkstra.Specification.Certs gs

open import Ledger.Dijkstra.Specification.Certs.Properties.PoVLemmas gs
  hiding (refundCertDeposits-++)
open import Ledger.Dijkstra.Specification.Certs.Properties.PoVLemmas gs
  using (refundCertDeposits-++) public

open import Interface.STS

open ≡-Reasoning
```
-->

## Rewards preservation

A `CERTS`{.AgdaDatatype} run leaves the rewards balance unchanged, by chaining
`CERT-rewards-pov`{.AgdaFunction} along the closure.

```agda
CERTS-rewards-pov : {Γ : CertEnv} {s s' : CertState} {dCerts : List DCert}
  → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s' → coinFromRewards s ≡ coinFromRewards s'
CERTS-rewards-pov (BS-base Id-nop)   = refl
CERTS-rewards-pov (BS-ind step rest) =
  trans (CERT-rewards-pov step) (CERTS-rewards-pov rest)
```

## Preservation of the pool-deposit registration invariant

```agda
CERTS-deposits-registered : {Γ : CertEnv} {s s' : CertState} {dCerts : List DCert}
  → PoolDepositsRegistered s
  → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s'
  → PoolDepositsRegistered s'
CERTS-deposits-registered reg (BS-base Id-nop)   = reg
CERTS-deposits-registered reg (BS-ind step rest) =
  CERTS-deposits-registered (CERT-deposits-registered reg step) rest
```

## Splitting `newCertDeposits`{.AgdaFunction} at a run boundary

For a `CERTS`{.AgdaDatatype} run followed by further certificates
`ys`{.AgdaBound}, the new-deposit total splits at the boundary, with the
trailing certificates charged against the run's *final* pool set.  This is
what lets per-step accounting compose across a batch.

```agda
CERTS-new-thread : {Γ : CertEnv} {s s' : CertState} {dCerts : List DCert}
  → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s'
  → (ys : List DCert)
  → newCertDeposits (PParamsOf Γ) (dom (PoolsOf s)) (dCerts ++ ys)
  ≡ newCertDeposits (PParamsOf Γ) (dom (PoolsOf s)) dCerts
    + newCertDeposits (PParamsOf Γ) (dom (PoolsOf s')) ys
CERTS-new-thread (BS-base Id-nop) ys = refl
CERTS-new-thread {Γ = Γ} (BS-ind {s = s₀} {sig = c} {s' = s₁} {sigs = cs} {s'' = s₂} step rest) ys =
  begin
    nc P₀ (c ∷ (cs ++ ys))
      ≡⟨ newCertDeposits-∷ pp P₀ c (cs ++ ys) ⟩
    nc P₀ (c ∷ []) + nc (nextPools P₀ c) (cs ++ ys)
      ≡⟨ cong (nc P₀ (c ∷ []) +_) (newCertDeposits-cong pp (cs ++ ys) (CERT-poolSet step)) ⟩
    nc P₀ (c ∷ []) + nc P₁ (cs ++ ys)
      ≡⟨ cong (nc P₀ (c ∷ []) +_) (CERTS-new-thread rest ys) ⟩
    nc P₀ (c ∷ []) + (nc P₁ cs + nc P₂ ys)
      ≡˘⟨ +-assoc (nc P₀ (c ∷ [])) (nc P₁ cs) (nc P₂ ys) ⟩
    nc P₀ (c ∷ []) + nc P₁ cs + nc P₂ ys
      ≡˘⟨ cong (_+ nc P₂ ys) (head-split step) ⟩
    nc P₀ (c ∷ cs) + nc P₂ ys
      ∎
  where
  pp = PParamsOf Γ
  nc = newCertDeposits pp
  P₀ = dom (PoolsOf s₀)
  P₁ = dom (PoolsOf s₁)
  P₂ = dom (PoolsOf s₂)

  head-split : Γ ⊢ s₀ ⇀⦇ c ,CERT⦈ s₁ → nc P₀ (c ∷ cs) ≡ nc P₀ (c ∷ []) + nc P₁ cs
  head-split st = trans (newCertDeposits-∷ pp P₀ c cs)
                        (cong (nc P₀ (c ∷ []) +_) (newCertDeposits-cong pp cs (CERT-poolSet st)))
```

## Closed-form deposit accounting

Over a `CERTS`{.AgdaDatatype} run from a state satisfying
`PoolDepositsRegistered`{.AgdaFunction}, the deposit pots satisfy
*pre + new ≡ post + refunds* in the closed form of the `UTXO`{.AgdaDatatype}
batch balance.  The step case splits the new-deposit total as above, applies
the per-step accounting, and recombines the refunds with
`refundCertDeposits-++`{.AgdaFunction}; the invariant is threaded through the
run by `CERT-deposits-registered`{.AgdaFunction}.

```agda
CERTS-deposits-pov : {Γ : CertEnv} {s s' : CertState} {dCerts : List DCert}
  → PoolDepositsRegistered s
  → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s'
  → coinFromDeposits s  + newCertDeposits (PParamsOf Γ) (dom (PoolsOf s)) dCerts
  ≡ coinFromDeposits s' + refundCertDeposits (PParamsOf Γ) dCerts
CERTS-deposits-pov _ (BS-base Id-nop) = refl
CERTS-deposits-pov {Γ = Γ} reg (BS-ind {s = s₀} {sig = c} {s' = s₁} {sigs = cs} {s'' = s₂} step rest) =
  begin
    D₀ + nc P₀ (c ∷ cs)
      ≡⟨ cong (D₀ +_) (trans (newCertDeposits-∷ pp P₀ c cs)
                             (cong (nc P₀ (c ∷ []) +_)
                                   (newCertDeposits-cong pp cs (CERT-poolSet step)))) ⟩
    D₀ + (nc P₀ (c ∷ []) + nc P₁ cs)
      ≡˘⟨ +-assoc D₀ (nc P₀ (c ∷ [])) (nc P₁ cs) ⟩
    D₀ + nc P₀ (c ∷ []) + nc P₁ cs
      ≡⟨ cong (_+ nc P₁ cs) (CERT-deposits-pov reg step) ⟩
    D₁ + refund (c ∷ []) + nc P₁ cs
      ≡⟨ +-assoc D₁ (refund (c ∷ [])) (nc P₁ cs) ⟩
    D₁ + (refund (c ∷ []) + nc P₁ cs)
      ≡⟨ cong (D₁ +_) (+-comm (refund (c ∷ [])) (nc P₁ cs)) ⟩
    D₁ + (nc P₁ cs + refund (c ∷ []))
      ≡˘⟨ +-assoc D₁ (nc P₁ cs) (refund (c ∷ [])) ⟩
    D₁ + nc P₁ cs + refund (c ∷ [])
      ≡⟨ cong (_+ refund (c ∷ []))
              (CERTS-deposits-pov (CERT-deposits-registered reg step) rest) ⟩
    D₂ + refund cs + refund (c ∷ [])
      ≡⟨ +-assoc D₂ (refund cs) (refund (c ∷ [])) ⟩
    D₂ + (refund cs + refund (c ∷ []))
      ≡⟨ cong (D₂ +_) (+-comm (refund cs) (refund (c ∷ []))) ⟩
    D₂ + (refund (c ∷ []) + refund cs)
      ≡˘⟨ cong (D₂ +_) (refundCertDeposits-++ pp (c ∷ []) cs) ⟩
    D₂ + refund (c ∷ cs)
      ∎
  where
  pp = PParamsOf Γ
  nc = newCertDeposits pp
  refund = refundCertDeposits pp
  D₀ = coinFromDeposits s₀
  D₁ = coinFromDeposits s₁
  D₂ = coinFromDeposits s₂
  P₀ = dom (PoolsOf s₀)
  P₁ = dom (PoolsOf s₁)
```
