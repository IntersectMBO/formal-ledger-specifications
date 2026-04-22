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
UTXOW⇒UTXO :
  ∀ {Γ : UTxOEnv} {s s' : UTxOState} {tx : TopLevelTx}
  → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
  → ∃[ legacyMode ] ((Γ , legacyMode) ⊢ s ⇀⦇ tx ,UTXO⦈ s')
UTXOW⇒UTXO (UTXOW-normal-⋯ _ _ _ _ _ _ _ _ _ _ utxo) = false , utxo
UTXOW⇒UTXO (UTXOW-legacy-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ utxo) = true , utxo
```

## `UTXOW-I-getCoin`: collateral collection preserves `getCoin`

In the invalid case, the `UTXOW`{.AgdaDatatype} rule preserves `getCoin`{.AgdaField}
exactly (collateral is moved from the UTxO to the fees, both of which are
counted in `getCoin`{.AgdaField}):

```agda
module _ (tx : TopLevelTx) (let open Tx tx; open TxBody txBody)

  -- Same assumptions as the UTXO-pov module.
  ( balance-∪ : ∀ {u u' : UTxO} → disjoint (dom u) (dom u')
              → cbalance (u ∪ˡ u') ≡ cbalance u + cbalance u' )

  ( split-balance : ∀ (u : UTxO) (keys : ℙ TxIn)
                  → cbalance u ≡ cbalance (u ∣ keys ᶜ) + cbalance (u ∣ keys) )

  ( outs-disjoint : ∀ {u : UTxO}
                  → TxIdOf tx ∉ mapˢ proj₁ (dom u)
                  → disjoint (dom (u ∣ SpendInputsOf tx ᶜ)) (dom (outs tx)) )

  ( coin-of-consumedBatch :
      ∀ (dc : DepositsChange) (utxo₀ : UTxO)
      → let open DepositsChange dc in
        coin (consumedBatch dc tx utxo₀) ≡ _ )

  ( coin-of-producedBatch :
      ∀ (dc : DepositsChange)
      → let open DepositsChange dc in
        coin (producedBatch dc tx) ≡ _ )

  where

  -- Instantiate the inner `module _` of `Utxo.Properties.PoV`.
  private
    module U =
      Ledger.Dijkstra.Specification.Utxo.Properties.PoV
        txs abs
    -- `utxo-pov-mod` refers to the parameterized inner module of `U`
    -- (the one that takes `tx` and the arithmetic assumptions).
```

```agda
  UTXOW-I-getCoin :
    ∀ {Γ : UTxOEnv} {s s' : UTxOState}
    → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
    → IsValidFlagOf tx ≡ false
    → getCoin s ≡ getCoin s'
  UTXOW-I-getCoin utxow invalid =
    let (_ , utxo) = UTXOW⇒UTXO utxow
    in  U-pov.UTXO-I-getCoin utxo invalid
    where
    -- Re-instantiate the inner module with our assumption lemmas.
    module U-pov =
      U tx balance-∪ split-balance outs-disjoint
        coin-of-consumedBatch coin-of-producedBatch
```

(The inner module instantiation is a bit boilerplate-heavy; in practice this
should be simplified once the final module structure of `Utxo.Properties.PoV`
is settled.)

## `UTXOW-V-mechanical`: mechanical rearrangement

The valid case simply reuses the UTXO-level mechanical rearrangement:

```agda
  UTXOW-V-mechanical :
    ∀ {Γ : UTxOEnv} {s s' : UTxOState}
    → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
    → IsValidFlagOf tx ≡ true
    → TxIdOf tx ∉ mapˢ proj₁ (dom (UTxOOf s))
    → getCoin s + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
      ≡ getCoin s' + cbalance (UTxOOf s ∣ SpendInputsOf tx)
  UTXOW-V-mechanical utxow valid fresh =
    let (_ , utxo) = UTXOW⇒UTXO utxow
    in  U-pov.UTXO-V-mechanical utxo valid fresh
    where
    module U-pov =
      U tx balance-∪ split-balance outs-disjoint
        coin-of-consumedBatch coin-of-producedBatch
```

## `UTXOW-batch-balance-coin`

```agda
  UTXOW-batch-balance-coin :
    ∀ {Γ : UTxOEnv} {s s' : UTxOState}
    → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
    → let dc = DepositsChangeOf Γ
          utxo₀ = UTxOOf Γ
          open DepositsChange dc
      in  cbalance (utxo₀ ∣ SpendInputsOf tx)
        + getCoin (WithdrawalsOf tx)
        + negPart depositsChangeTop
        + sum (map (λ (stx : SubLevelTx) →
                       cbalance (utxo₀ ∣ SpendInputsOf stx)
                       + getCoin (WithdrawalsOf stx))
                    (SubTransactionsOf tx))
        + negPart depositsChangeSub
        ≡ cbalance (outs tx)
        + TxFeesOf tx
        + DonationsOf tx
        + getCoin (DirectDepositsOf tx)
        + posPart depositsChangeTop
        + sum (map (λ (stx : SubLevelTx) →
                       cbalance (outs stx)
                       + DonationsOf stx
                       + getCoin (DirectDepositsOf stx))
                    (SubTransactionsOf tx))
        + posPart depositsChangeSub
  UTXOW-batch-balance-coin utxow =
    let (_ , utxo) = UTXOW⇒UTXO utxow
    in  U-pov.batch-balance-coin utxo
    where
    module U-pov =
      U tx balance-∪ split-balance outs-disjoint
        coin-of-consumedBatch coin-of-producedBatch
```

## `utxow-pov-invalid` for use in `LEDGER-pov`

The following is the *specific* form needed by `Ledger.Properties.PoV`
(the `BatchUtxoAccounting` use site takes it as a module parameter).  It is
identical to `UTXOW-I-getCoin`{.AgdaFunction} above, retagged for clarity:

```agda
  utxow-pov-invalid :
    ∀ {Γ : UTxOEnv} {s s' : UTxOState}
    → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
    → IsValidFlagOf tx ≡ false
    → getCoin s ≡ getCoin s'
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
