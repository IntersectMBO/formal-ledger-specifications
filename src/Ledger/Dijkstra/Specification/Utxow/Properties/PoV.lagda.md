---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxow/Properties/PoV.lagda.md
---

# UTXOW Properties: Preservation of Value {#sec:utxow-pov}

This module provides the `UTXOW`{.AgdaDatatype}-level preservation-of-value
facts consumed by `Ledger.Properties.PoV`{.AgdaModule}: it discharges the
`utxow-pov-invalid`, `UTXOW-V-mechanical`, `UTXOW-batch-balance-coin` and
`subutxow-step-coin` module parameters of the `LEDGER-PoV`{.AgdaModule}
consumer, with statements matching those parameters verbatim.

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

## The `UTXOW-PoV` module

Stated for a fixed top-level transaction `tx` and the per-sub-transaction
no-mint fact, mirroring the parameterisation of the
`LEDGER-PoV`{.AgdaModule} consumer (which holds both and can instantiate this
module directly).  Each lemma delegates to `UTXO-PoV`{.AgdaModule} via
`UTXOW⇒UTXO`{.AgdaFunction}.

```agda
module UTXOW-PoV
  (tx : TopLevelTx)
  (noMintSubTx : noMintingSubTxs tx)
  {Γ' : UTxOEnv}
  {s₀ s₁ : UTxOState}
  where

  open UTXO-PoV tx noMintSubTx
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

### `UTXOW-batch-balance-coin`

The coin projection of the spec's batch balance premise
`consumedBatch ≡ producedBatch`, in closed form: cert deposits as
`refundCertDeposits`{.AgdaFunction}/`newCertDeposits`{.AgdaFunction} over
`allDCerts tx` against the environment's pre-batch registered-pool set, and the
batch's governance-action deposits collected in a trailing group.  The minted
terms drop out (premise 7 of the `UTXO`{.AgdaDatatype} rule for the top level;
the `noMintSubTx`{.AgdaBound} module parameter for the sub-transactions).

```agda
  UTXOW-batch-balance-coin : Γ' ⊢ s₀ ⇀⦇ tx ,UTXOW⦈ s₁
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

## The `SUBUTXOW-PoV` module

The per-step `SUBUTXOW`{.AgdaDatatype} coin equation resolves the spent balance
against the *pre-batch snapshot* `UTxOOf Γ`, so, as explained in
`Utxo.Properties.PoV`{.AgdaModule}, it holds only given two batch-threading facts
that the per-step premises do not provide:

1.  freshness of the sub-transaction's TxId in the running UTxO, and
2.  agreement of the running UTxO with the snapshot on the sub-transaction's spend
    inputs.

This module collects both as parameters, in the same batch-threading family as the
`utxo₁-tx-spend-eq` and `fresh-top-tx-id` parameters of
`Ledger.Properties.PoV`{.AgdaModule}.

Both are stated for an arbitrary running state `s₀`, and in that generality they are
*false*.  Indeed, nothing in the `SUBUTXO`{.AgdaDatatype} premises stops `UTxOOf s₀`
from already holding a key with first component `TxIdOf stx`, or from assigning
a spend input a different value than the snapshot does.  What makes them true is the
batch history — the running UTxO is built from the snapshot by removing spent inputs
and adding outputs of fresh TxIds — so whoever discharges them must first restate
them relative to the enclosing batch (quantifying `s₀` over states reachable from
`UTxOOf Γ` by the preceding sub-steps, or carrying the corresponding
`SUBLEDGERS`{.AgdaDatatype}-level invariant).

```agda
module SUBUTXOW-PoV

  ( subtx-fresh-txid : {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
      → IsTopLevelValidFlagOf Γ ≡ true
      → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXOW⦈ s₁
      → TxIdOf stx ∉ mapˢ proj₁ (dom (UTxOOf s₀)) )

  ( subtx-spend-agree : {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
      → IsTopLevelValidFlagOf Γ ≡ true
      → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXOW⦈ s₁
      →  cbalance (UTxOOf s₀ ∣ SpendInputsOf stx)
         ≡ cbalance (UTxOOf Γ ∣ SpendInputsOf stx) )

  where

  subutxow-step-coin :
    {Γ      : SubUTxOEnv}
    {s₀ s₁  : UTxOState}
    {stx    : SubLevelTx}
    → IsTopLevelValidFlagOf Γ ≡ true
    → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXOW⦈ s₁
    →  getCoin s₀ + cbalance (outs stx) + DonationsOf stx
       ≡ getCoin s₁ + cbalance (UTxOOf Γ ∣ SpendInputsOf stx)
  subutxow-step-coin {s₁ = s₁} isV utxowStep =
    trans  (subutxo-step-coin  isV (SUBUTXOW⇒SUBUTXO utxowStep)
                               (subtx-fresh-txid isV utxowStep))
           (cong (getCoin s₁ +_) (subtx-spend-agree isV utxowStep))
```
