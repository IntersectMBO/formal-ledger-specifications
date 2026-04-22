---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxow/Properties/PoV.lagda.md
---

# UTXOW: Preservation of Value {#sec:utxow-pov}

This module states the preservation-of-value (PoV) property for the Dijkstra
`UTXOW`{.AgdaDatatype} rule.  The `UTXOW`{.AgdaDatatype} rule performs all
witness checks (signatures, scripts, datums) and then delegates the actual
state change to the `UTXO`{.AgdaDatatype} rule.  In Dijkstra there are two
flavours of `UTXOW`{.AgdaDatatype}.

1.  `UTXOW-normal`{.AgdaInductiveConstructor}: only Plutus V4 scripts are used.
2.  `UTXOW-legacy`{.AgdaInductiveConstructor}: at least one Plutus V1/V2/V3
    script is used; guards must be empty; direct deposits and balance intervals
    must be empty.

Both constructors have the *same* final premise, `(Γ , ?) ⊢ s ⇀⦇ tx ,UTXO⦈ s'`,
so the state change is identical.  Consequently, every PoV statement about
`UTXOW`{.AgdaDatatype} reduces directly to the corresponding statement about
`UTXO`{.AgdaDatatype}.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction using (TransactionStructure)
open import Ledger.Dijkstra.Specification.Abstract   using (AbstractFunctions)

module Ledger.Dijkstra.Specification.Utxow.Properties.PoV
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude

open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxow txs abs
open import Ledger.Dijkstra.Specification.Utxo.Properties.PoV txs abs
```
-->

## Extracting the `UTXO`{.AgdaDatatype} step

The key observation is that both `UTXOW-normal`{.AgdaInductiveConstructor}
and `UTXOW-legacy`{.AgdaInductiveConstructor} embed a `UTXO`{.AgdaDatatype}
derivation as their final premise.  We factor out an extractor:

```agda
UTXOW⇒UTXO : ∀ {Γ : UTxOEnv} {s s' : UTxOState} {tx : TopLevelTx}
  → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s' → ∃[ legacyMode ] ((Γ , legacyMode) ⊢ s ⇀⦇ tx ,UTXO⦈ s')

UTXOW⇒UTXO (UTXOW-normal-⋯ _ _ _ _ _ _ _ _ _ _ utxo) = false , utxo
UTXOW⇒UTXO (UTXOW-legacy-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ utxo) = true , utxo
```

## `UTXOW-I-getCoin`: collateral collection preserves `getCoin`

In the invalid case, the `UTXOW`{.AgdaDatatype} rule preserves `getCoin`{.AgdaField}
exactly (collateral is moved from the UTxO to the fees, both of which are
counted in `getCoin`{.AgdaField}):

```agda
module UTXOW-PoV (tx : TopLevelTx) (let open Tx tx; open TxBody txBody)

  -- Same assumptions as the UTXO-pov module.
  ( balance-∪ : ∀ {u u' : UTxO} → disjoint (dom u) (dom u') → cbalance (u ∪ˡ u') ≡ cbalance u + cbalance u' )

  ( split-balance : ∀ (u : UTxO) (keys : ℙ TxIn) → cbalance u ≡ cbalance (u ∣ keys ᶜ) + cbalance (u ∣ keys) )

  ( noMintTx : coin (MintedValueOf tx) ≡ 0 )

  ( noMintSubTx : noMintingSubTxs tx )

  ( outs-disjoint : ∀ {u : UTxO} → TxIdOf tx ∉ mapˢ proj₁ (dom u) → disjoint (dom (u ∣ SpendInputsOf tx ᶜ)) (dom (outs tx)) )
  where
  open UTxO-PoV tx (λ {u} {u'} → balance-∪ {u} {u'}) split-balance noMintTx noMintSubTx
  -- The `λ {u}{u'} → balance-∪ {u}{u'}` η-expansion is needed because passing
  -- `balance-∪` directly triggers Agda to eta-expand the `{u u' : UTxO}` implicits
  -- through UTxO's `Σ _ left-unique` record structure, leaving the `left-unique`
  -- field as an unresolved meta. Binding `{u}{u'}` as pattern variables in the outer
  -- lambda makes them concrete bound values and sidesteps the eta-expansion.

  UTXOW-I-getCoin : ∀ {Γ : UTxOEnv} {s s' : UTxOState}
    → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s' → IsValidFlagOf tx ≡ false → getCoin s ≡ getCoin s'
  UTXOW-I-getCoin {Γ} utxow invalid = UTXO-I-getCoin (proj₂ (UTXOW⇒UTXO utxow)) invalid
```

## `UTXOW-V-mechanical`: mechanical rearrangement

The valid case simply reuses the UTXO-level mechanical rearrangement:

```agda
  UTXOW-V-mechanical : ∀ {Γ : UTxOEnv} {s s' : UTxOState}
    → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s' → IsValidFlagOf tx ≡ true → TxIdOf tx ∉ mapˢ proj₁ (dom (UTxOOf s))
    → getCoin s + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
      ≡ getCoin s' + cbalance (UTxOOf s ∣ SpendInputsOf tx)

  UTXOW-V-mechanical utxow valid fresh = UTXO-V-mechanical (proj₂ (UTXOW⇒UTXO utxow)) valid fresh
```

## `UTXOW-batch-balance-coin`

```agda
  UTXOW-batch-balance-coin : ∀ {Γ : UTxOEnv} {s s' : UTxOState}
    → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
    → cbalance (UTxOOf Γ ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx)
      + negPart (DepositsChangeTopOf Γ)
      + sum (map (λ stx → cbalance (UTxOOf Γ ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx)) (SubTransactionsOf tx))
      + negPart (DepositsChangeSubOf Γ)
      ≡ cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + getCoin (DirectDepositsOf tx)
        + posPart (DepositsChangeTopOf Γ)
        + sum ( map (λ (stx : SubLevelTx) → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx)) (SubTransactionsOf tx) )
        + posPart (DepositsChangeSubOf Γ)
  UTXOW-batch-balance-coin utxow = batch-balance-coin (proj₂ (UTXOW⇒UTXO utxow))
```

## `utxow-pov-invalid` for use in `LEDGER-pov`

The following is the *specific* form needed by `Ledger.Properties.PoV`
(the `BatchUtxoAccounting` use site takes it as a module parameter).  It is
identical to `UTXOW-I-getCoin`{.AgdaFunction} above, retagged for clarity:

```agda
  utxow-pov-invalid : ∀ {Γ : UTxOEnv} {s s' : UTxOState}
    → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s' → IsValidFlagOf tx ≡ false → getCoin s ≡ getCoin s'
  utxow-pov-invalid = UTXOW-I-getCoin
```

With this, the `utxow-pov-invalid` postulated module parameter in
`Ledger.Properties.PoV` can be discharged by calling this function.

## Summary of proof obligations

+   Same ported arithmetic lemmas as `Utxo.Properties.PoV` (`balance-∪`,
    `split-balance`, `outs-disjoint`, and the two batch-coin-projection
    lemmas).

+   Once those are ported, the entire `UTXOW-pov` module is mechanical
    pattern-matching on the two `UTXOW`{.AgdaDatatype} constructors, with
    delegation to `Utxo.Properties.PoV`.
