---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxow/Properties/PoV.lagda.md
---

# UTXOW Properties: Preservation of Value {#sec:utxow-pov}

This module provides the `UTXOW`{.AgdaDatatype}-level preservation-of-value
facts consumed by `Ledger.Properties.PoV`{.AgdaModule}: the coin equations of
the top-level `UTXOW`{.AgdaDatatype} step and of a `SUBUTXOW`{.AgdaDatatype}
step, the batch balance, and the batch-threading facts of
`Utxo.Properties.PoV`{.AgdaModule} lifted to the witnessed rules.

The `UTXOW`{.AgdaDatatype} rules perform witness checks (signatures, scripts,
datums) and delegate the state change to the `UTXO`{.AgdaDatatype} rule: both
`UTXOW-normal`{.AgdaInductiveConstructor} and
`UTXOW-legacy`{.AgdaInductiveConstructor} embed a `UTXO`{.AgdaDatatype}
derivation as their final premise, and likewise
`SUBUTXOW`{.AgdaInductiveConstructor} embeds a `SUBUTXO`{.AgdaDatatype}
derivation.  Consequently every PoV statement about the witnessed rules
reduces, via the extractors below, to its counterpart in
`Utxo.Properties.PoV`{.AgdaModule}.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Abstract    using (AbstractFunctions)
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Utxow.Properties.PoV
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxow txs abs
open import Ledger.Dijkstra.Specification.Utxo.Properties.Base txs abs using (_AgreesWith_)
open import Ledger.Dijkstra.Specification.Utxo.Properties.PoV txs abs
```
-->

## Extracting the state-changing step

```agda
UTXOW⇒UTXO : ∀ {Γ : UTxOEnv} {s s' : UTxOState} {tx : TopLevelTx}
  → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s' → Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
UTXOW⇒UTXO (UTXOW-normal-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ utxoStep)   = utxoStep
UTXOW⇒UTXO (UTXOW-legacy-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ utxoStep) = utxoStep

SUBUTXOW⇒SUBUTXO : ∀ {Γ : SubUTxOEnv} {s s' : UTxOState} {stx : SubLevelTx}
  → Γ ⊢ s ⇀⦇ stx ,SUBUTXOW⦈ s' → Γ ⊢ s ⇀⦇ stx ,SUBUTXO⦈ s'
SUBUTXOW⇒SUBUTXO (SUBUTXOW-⋯ _ _ _ _ _ _ _ _ _ _ _ _ subUtxoStep) = subUtxoStep
```

The sub-transaction's no-mint premise, through the extractor:

```agda
subutxow-noMint : {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
  → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXOW⦈ s₁ → coin (MintedValueOf stx) ≡ 0
subutxow-noMint = subutxo-noMint ∘ SUBUTXOW⇒SUBUTXO
```

## The `UTXOW-PoV` module

Stated for a fixed top-level transaction `tx`.  Each lemma delegates to
`UTXO-PoV`{.AgdaModule} via `UTXOW⇒UTXO`{.AgdaFunction}.

```agda
module UTXOW-PoV
  (tx : TopLevelTx)
  {Γ' : UTxOEnv}
  {s₀ s₁ : UTxOState}
  where

  open UTXO-PoV tx
```

### `utxow-pov-invalid`

An invalid top-level transaction moves its collateral balance into the fee pot,
preserving `getCoin`{.AgdaField} of the `UTxOState`{.AgdaRecord} exactly:

```agda
  utxow-pov-invalid : Γ' ⊢ s₀ ⇀⦇ tx ,UTXOW⦈ s₁ → IsValidFlagOf tx ≡ false
    → getCoin s₀ ≡ getCoin s₁
  utxow-pov-invalid utxowStep invalid = UTXO-pov-invalid (UTXOW⇒UTXO utxowStep) invalid
```

### `UTXOW-V-mechanical`

The valid-case coin equation for the top-level state change (spend inputs
resolved against the running UTxO; freshness of `TxIdOf tx` lets `outs tx`
split off cleanly):

```agda
  UTXOW-V-mechanical : Γ' ⊢ s₀ ⇀⦇ tx ,UTXOW⦈ s₁
    → IsValidFlagOf tx ≡ true
    → TxIdOf tx ∉ mapˢ proj₁ (dom (UTxOOf s₀))
    →  getCoin s₀ + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
       ≡ getCoin s₁ + cbalance (UTxOOf s₀ ∣ SpendInputsOf tx)
  UTXOW-V-mechanical utxowStep valid fresh =
    UTXO-V-mechanical (UTXOW⇒UTXO utxowStep) valid fresh
```

### `UTXOW-spend-agree`

The top-level spent balance is the same against the running UTxO and against the
pre-batch snapshot, given that the two agree:

```agda
  UTXOW-spend-agree : Γ' ⊢ s₀ ⇀⦇ tx ,UTXOW⦈ s₁
    → UTxOOf s₀ AgreesWith UTxOOf Γ'
    → cbalance (UTxOOf s₀ ∣ SpendInputsOf tx) ≡ cbalance (UTxOOf Γ' ∣ SpendInputsOf tx)
  UTXOW-spend-agree utxowStep = UTXO-spend-agree (UTXOW⇒UTXO utxowStep)
```

### `UTXOW-batch-balance-coin`

The coin projection of the spec's batch balance premise
`consumedBatch ≡ producedBatch`, in closed form: cert deposits as
`refundCertDeposits`{.AgdaFunction}/`newCertDeposits`{.AgdaFunction} over
`allDCerts tx` against the environment's pre-batch registered-pool set, and the
batch's governance-action deposits collected in a trailing group.  The minted
terms drop out (premise 7 of the `UTXO`{.AgdaDatatype} rule for the top level;
the `noMintingSubTxs`{.AgdaFunction} hypothesis for the sub-transactions, which
`Ledger.Properties.PoV`{.AgdaModule} collects from the `SUBLEDGERS`{.AgdaDatatype}
derivation).

```agda
  UTXOW-batch-balance-coin : Γ' ⊢ s₀ ⇀⦇ tx ,UTXOW⦈ s₁
    → noMintingSubTxs tx
    →  cbalance (UTxOOf Γ' ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx)
       + sum (map  (λ stx → cbalance (UTxOOf Γ' ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx))
                   (SubTransactionsOf tx))
       + refundCertDeposits (PParamsOf Γ') (allDCerts tx)
       ≡  cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + getCoin (DirectDepositsOf tx)
          + sum (map  (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
                      (SubTransactionsOf tx))
          + newCertDeposits (PParamsOf Γ') (dom (PoolsOf Γ')) (allDCerts tx)
          + (  govProposalsDeposits (PParamsOf Γ') (ListOfGovProposalsOf tx)
               + sum (map  (λ stx → govProposalsDeposits (PParamsOf Γ') (ListOfGovProposalsOf stx))
                           (SubTransactionsOf tx)) )
  UTXOW-batch-balance-coin utxowStep = UTXO-batch-balance-coin (UTXOW⇒UTXO utxowStep)
```

## The <span class="AgdaDatatype">SUBUTXOW</span> step

The per-step `SUBUTXOW`{.AgdaDatatype} facts, each delegating to its
`SUBUTXO`{.AgdaDatatype} counterpart in `Utxo.Properties.PoV`{.AgdaModule}:
preservation of the batch invariant `BatchUTxO`{.AgdaRecord}, and the coin
equation with the spent balance resolved against the *pre-batch snapshot*
`UTxOOf Γ`.  The latter needs two facts the per-step premises do not provide,
freshness of the sub-transaction's id in the running UTxO and agreement of the
running UTxO with the snapshot on its spend inputs; both are read off the
invariant.

```agda
module _ {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx} where

  subutxow-batch-step : {ids : List TxId}
    → IsTopLevelValidFlagOf Γ ≡ true
    → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXOW⦈ s₁
    → FreshTxIds (UTxOOf Γ) (TxIdOf stx ∷ ids)
    → BatchUTxO (UTxOOf Γ) (TxIdOf stx ∷ ids) (UTxOOf s₀)
    → BatchUTxO (UTxOOf Γ) ids (UTxOOf s₁)
  subutxow-batch-step isV = subutxo-batch-step isV ∘ SUBUTXOW⇒SUBUTXO

  subutxow-step-coin : {ids : List TxId}
    → IsTopLevelValidFlagOf Γ ≡ true
    → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXOW⦈ s₁
    → BatchUTxO (UTxOOf Γ) (TxIdOf stx ∷ ids) (UTxOOf s₀)
    →  getCoin s₀ + cbalance (outs stx) + DonationsOf stx
       ≡ getCoin s₁ + cbalance (UTxOOf Γ ∣ SpendInputsOf stx)
  subutxow-step-coin isV utxowStep inv =
    trans  (subutxo-step-coin isV utxoStep (BatchUTxO-fresh inv))
           (cong (getCoin s₁ +_) (subutxo-spend-agree utxoStep (BatchUTxO.agrees inv)))
    where utxoStep = SUBUTXOW⇒SUBUTXO utxowStep
```
