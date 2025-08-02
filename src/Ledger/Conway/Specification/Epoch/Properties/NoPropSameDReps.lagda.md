<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Epoch.Properties.NoPropSameDReps
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Gov txs
open import Ledger.Prelude
open import Ledger.Conway.Specification.Properties txs abs
```
-->

**Claim (DReps unchanged if no gov proposals).**

*Informally*.

If there are no governance proposals in the
`GovState`{.AgdaFunction} of , then the `activeDReps`{.AgdaField} of
in `Epoch`{.AgdaDatatype} are the same as the
`activeDReps`{.AgdaField} of in the next epoch.

*Formally*.

```agda
prop≡∅⇒activeDReps-const : Epoch → (es es' : NewEpochState) → Type
prop≡∅⇒activeDReps-const e es es' =
  GovStateOf es ≡ [] → activeDReps e es ≡ᵉ activeDReps (sucᵉ e) es'
```

*Proof*. (coming soon)
