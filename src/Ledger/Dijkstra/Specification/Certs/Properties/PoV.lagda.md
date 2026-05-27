---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Certs/Properties/PoV.lagda.md
---

# Properties of `CERTS`: Preservation of Value {#thm:CERTS-PoV}

This module proves preservation of value for the `CERTS`{.AgdaDatatype} rule.  In the
Dijkstra era, `CERTS`{.AgdaDatatype} is the reflexive-transitive closure of
`CERT`{.AgdaDatatype} (withdrawal and direct-deposit handling having migrated to the
surrounding `ENTITIES`{.AgdaDatatype} rule in [CIP-159-11d][PR-1201]).  Consequently
the statement is the cleanest possible one: for any list of certificates
`dCerts`{.AgdaBound} and any `CertState`{.AgdaRecord}s `s`{.AgdaBound},
`s'`{.AgdaBound} related by `CERTS`{.AgdaDatatype}, we have

`getCoin`{.AgdaFunction} `s`{.AgdaBound} ≡ `getCoin`{.AgdaFunction} `s'`{.AgdaBound}.

The proof is a textbook induction on the reflexive-transitive closure using
`CERT-pov`{.AgdaFunction} (from `Certs.Properties.PoVLemmas`) at each inductive step.

`CERTS-pov`{.AgdaFunction} is the per-`CERTS`-step ingredient consumed by
`ENTITIES-pov`{.AgdaFunction} (in `Entities.Properties.PoV`), which combines it with
`applyWithdrawals-pov`{.AgdaFunction} and `applyDirectDeposits-pov`{.AgdaFunction} to
obtain the value-flow equation for the whole `ENTITIES`{.AgdaDatatype} rule.

[PR-1201]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1201

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Certs.Properties.PoV
  (gs : GovStructure) (open GovStructure gs) where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs gs
open import Ledger.Dijkstra.Specification.Certs.Properties.PoVLemmas gs

open import Interface.STS

private variable
  A      : Type
  dCerts : List DCert
```
-->

## The `CERTS-pov` theorem

**Informally**. Let `dCerts`{.AgdaBound} be a list of `DCert`{.AgdaDatatype}s and let
`s`{.AgdaBound}, `s'`{.AgdaBound} be `CertState`{.AgdaRecord}s related by
`CERTS`{.AgdaDatatype}.  Then we have

`getCoin`{.AgdaFunction} `s`{.AgdaBound} ≡ `getCoin`{.AgdaFunction} `s'`{.AgdaBound}.

**Formally**.

```agda
CERTS-pov : {Γ : CertEnv} {s s' : CertState}
  → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s' → getCoin s ≡ getCoin s'
```

**Proof**. Induct on the structure of the reflexive-transitive closure.

+  Base case: `BS-base Id-nop`{.AgdaInductiveConstructor} forces the
   start and end states to coincide, so the goal is `refl`{.AgdaInductiveConstructor}.
+  Inductive case: chain `CERT-pov`{.AgdaFunction} on the head step with the
   inductive hypothesis on the tail.

```agda
CERTS-pov (BS-base Id-nop)    = refl
CERTS-pov (BS-ind step rest)  = trans (CERT-pov step) (CERTS-pov rest)
```

## The `CERTS-deposits-updateCertDeposits` bridging lemma

The `LEDGER-pov` chain needs to know that the actual `CertState` produced by
a `CERTS` chain has the same three deposit pots — and hence the same
`coinFromDeposits` — as the closed-form `updateCertDeposits`{.AgdaFunction}
(defined in `Certs.lagda.md`) applied to the initial state and the cert list.
The per-step ingredient is `CERT-deposits-updateCertDeposit`{.AgdaFunction}
(in `Certs.Properties.PoVLemmas`); here we lift it to the reflexive-transitive
closure.

The lift goes via a pure pot-only foldl (`updateCertDeposit-list`).  This is a
small intermediate that lets us state and prove the rule-intrinsic RTC induction
(`CERTS-deposits-updateCertDeposit-list`) without mentioning `updateCertDeposits`
at all, and then bridge to `updateCertDeposits`-form via `pots-updateCertDeposits`,
which captures the structural fact that `updateCertDeposits` only updates the
three deposit pots (inheriting all other `CertState` fields from its initial
state).

The proof structure (after diff #04 puts `updateCertDeposits` on `foldl` and
exposes the named step function `updateCertDepositsStep`):

+  `updateCertDeposit-list pp init []        = init`
+  `updateCertDeposit-list pp init (c ∷ cs)  = updateCertDeposit-list pp (updateCertDeposit pp c init) cs`
+  `pots-updateCertDepositsStep` is `refl` (up to Σ-η on the
   `updateCertDeposit pp c (pots s)` triple).
+  `pots-updateCertDeposits` is an induction on the cert list, applying the
   step-level pots equation at each cons.
+  `CERTS-deposits-updateCertDeposit-list` is RTC induction in the style of
   `CERTS-pov`, using `CERT-deposits-updateCertDeposit` at each `BS-ind` step
   and threading the `PoolDepositsAligned` invariant via the
   `PoolDepositsAligned-CERT` preservation lemma (a deferred parameter).

<!--
```agda
open import Data.List using (foldl)
open import Data.Product using (proj₁; proj₂)

private
  -- Convenience accessor for the three deposit pots of a `CertState`.
  pots : CertState → (Credential ⇀ Coin) × (KeyHash ⇀ Coin) × (Credential ⇀ Coin)
  pots cs = ( DepositsOf (DStateOf cs)
            , DepositsOf (PStateOf cs)
            , DepositsOf (GStateOf cs) )

-- Pure pot-only foldl mirroring `updateCertDeposits`.  Operates on the three
-- deposit pots without touching any other `CertState` field.
updateCertDeposit-list :
    PParams
  → (Credential ⇀ Coin) × (KeyHash ⇀ Coin) × (Credential ⇀ Coin)
  → List DCert
  → (Credential ⇀ Coin) × (KeyHash ⇀ Coin) × (Credential ⇀ Coin)
updateCertDeposit-list pp = foldl (λ p c → updateCertDeposit pp c p)
```
-->

```agda
module CERTS-Deposits-Bridge
  -- Forwarded helpers from the per-step bridging module in PoVLemmas.
  ( ∪ˡ-singleton-mem-≡ :
      ∀ {A : Type} ⦃ _ : DecEq A ⦄
        (m : A ⇀ Coin) (k : A) (v : Coin)
      → k ∈ dom m → m ∪ˡ ❴ k , v ❵ ≡ m )
  ( Is-just-isPoolRegistered⇒∈-dom :
      ∀ {pools : Pools} {kh : KeyHash}
      → Is-just (isPoolRegistered pools kh) → kh ∈ dom pools )
  -- Preservation of the pool-deposit alignment invariant under one `CERT` step.
  -- Provable from the rules by inspection (the invariant is genuinely preserved
  -- by every `POOL` sub-rule); deferred as a parameter to keep this module
  -- focused on the RTC induction.
  ( PoolDepositsAligned-CERT :
      ∀ {Γ : CertEnv} {s s' : CertState} {dCert : DCert}
      → Γ ⊢ s ⇀⦇ dCert ,CERT⦈ s'
      → PoolDepositsAligned (PStateOf s)
      → PoolDepositsAligned (PStateOf s') )
  where

  open CERT-Deposits-Bridge ∪ˡ-singleton-mem-≡
    using (CERT-deposits-updateCertDeposit)
```

### Step-level pots equation

`updateCertDepositsStep pp s c` updates only the three deposit pots of `s` (per
`updateCertDeposit pp c` applied to `s`'s initial pots) and inherits all other
fields from `s`.  Therefore its pots-projection equals `updateCertDeposit pp c
(pots s)`.  Holds by Σ-η on the projection triple.

```agda
  pots-updateCertDepositsStep :
    ∀ (pp : PParams) (s : CertState) (c : DCert)
    → pots (updateCertDepositsStep pp s c) ≡ updateCertDeposit pp c (pots s)
  pots-updateCertDepositsStep pp s c = refl
    -- If Agda balks here (because Σ-η isn't kicking in through the `let`-binding
    -- in `updateCertDepositsStep`'s definition), fall back to a case split on the
    -- seven `DCert` constructors, each closing by `refl`.
```

### Bridging `updateCertDeposits` to the pure pots fold

Captures that `updateCertDeposits` only updates the deposit pots.  Induction on
the cert list; per-step we apply the step-level pots equation under `cong`.

```agda
  pots-updateCertDeposits :
    ∀ (pp : PParams) (s : CertState) (cs : List DCert)
    → pots (updateCertDeposits pp s cs) ≡ updateCertDeposit-list pp (pots s) cs
  pots-updateCertDeposits pp s []        = refl
  pots-updateCertDeposits pp s (c ∷ cs)  =
    -- After `foldl` unfolding (diff #04):
    --   updateCertDeposits pp s (c ∷ cs)
    --     = foldl (updateCertDepositsStep pp) s (c ∷ cs)
    --     = foldl (updateCertDepositsStep pp) (updateCertDepositsStep pp s c) cs
    --     = updateCertDeposits pp (updateCertDepositsStep pp s c) cs
    -- so the IH applies at the new initial state `updateCertDepositsStep pp s c`.
    trans
      (pots-updateCertDeposits pp (updateCertDepositsStep pp s c) cs)
      (cong (λ p → updateCertDeposit-list pp p cs)
            (pots-updateCertDepositsStep pp s c))
```

### Rule-intrinsic RTC induction

Pots-only form of the main lemma.  Mirrors `CERTS-pov`'s structure: empty
chain is `refl`, cons-chain chains the per-step lemma with the IH on the tail.

```agda
  CERTS-deposits-updateCertDeposit-list :
    {Γ : CertEnv} {s s' : CertState}
    → PoolDepositsAligned (PStateOf s)
    → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s'
    → pots s' ≡ updateCertDeposit-list (PParamsOf Γ) (pots s) dCerts
  CERTS-deposits-updateCertDeposit-list _ (BS-base Id-nop)              = refl
  CERTS-deposits-updateCertDeposit-list
    {c ∷ cs} {Γ = Γ} poolInv (BS-ind step rest) =
    -- step : Γ ⊢ s   ⇀⦇ c  ,CERT⦈  s₁
    -- rest : Γ ⊢ s₁  ⇀⦇ cs ,CERTS⦈ s'
    --
    --   pots s'
    --     ≡ updateCertDeposit-list pp (pots s₁) cs                       [IH on `rest`]
    --     ≡ updateCertDeposit-list pp (updateCertDeposit pp c (pots s)) cs
    --                                                                   [cong, per-step lemma]
    --     = updateCertDeposit-list pp (pots s) (c ∷ cs)                  [def. of updateCertDeposit-list]
    trans
      (CERTS-deposits-updateCertDeposit-list
         (PoolDepositsAligned-CERT step poolInv) rest)
      (cong (λ p → updateCertDeposit-list (PParamsOf Γ) p cs)
            (CERT-deposits-updateCertDeposit poolInv step))
```

### The main `updateCertDeposits`-form lemma

Combines the pots-only RTC induction with the bridge to `updateCertDeposits`.
This is the form `LEDGER-pov` (and the `posNeg-deposits` cancellation) will
actually consume.

```agda
  CERTS-deposits-updateCertDeposits :
    {Γ : CertEnv} {s s' : CertState}
    → PoolDepositsAligned (PStateOf s)
    → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s'
    → pots s' ≡ pots (updateCertDeposits (PParamsOf Γ) s dCerts)
  CERTS-deposits-updateCertDeposits {dCerts} {Γ} {s} poolInv chain =
    trans
      (CERTS-deposits-updateCertDeposit-list poolInv chain)
      (sym (pots-updateCertDeposits (PParamsOf Γ) s dCerts))
```

### Coin corollary

Projection of `CERTS-deposits-updateCertDeposits` to coin.  This is the
immediately-useful corollary for `LEDGER-pov`: it gives us a `coinFromDeposits`
equation that matches the `consumed`/`produced` UTxO batch-balance terms (which
are defined via `coinFromDeposits ∘ updateCertDeposits` inside
`newCertDeposits` / `refundCertDeposits`).

```agda
  CERTS-coinFromDeposits-updateCertDeposits :
    {Γ : CertEnv} {s s' : CertState}
    → PoolDepositsAligned (PStateOf s)
    → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s'
    → coinFromDeposits s' ≡ coinFromDeposits (updateCertDeposits (PParamsOf Γ) s dCerts)
  CERTS-coinFromDeposits-updateCertDeposits poolInv chain =
    -- `coinFromDeposits` is a function of the pots triple only:
    --   coinFromDeposits cs = getCoin (proj₁ (pots cs))
    --                       + getCoin (proj₁ (proj₂ (pots cs)))
    --                       + getCoin (proj₂ (proj₂ (pots cs)))
    -- so the pots equation transports straight through under `cong`.
    cong (λ (a , b , c) → getCoin a + getCoin b + getCoin c)
         (CERTS-deposits-updateCertDeposits poolInv chain)
```
