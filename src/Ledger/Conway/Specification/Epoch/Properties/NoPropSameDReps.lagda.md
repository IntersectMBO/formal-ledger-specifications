<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Epoch.Properties.NoPropSameDReps
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Gov txs
open import Ledger.Prelude
open import Ledger.Conway.Specification.Properties txs abs
```
-->

**Claim (DReps unchanged if no gov proposals).**

*Informally*.

If `es`{.AgdaBound} is a `NewEpochState`{.AgdaRecord}, and if the
`GovState`{.AgdaFunction} of `es`{.AgdaBound} contains no governance proposals,
then the set of `activeDReps`{.AgdaField} of `es`{.AgdaBound} in
`Epoch`{.AgdaDatatype} `e`{.AgdaBound} is equal to the set of
`activeDReps`{.AgdaField} of `es` in the next epoch.

*Formally*.

```agda
prop≡∅⇒activeDReps-const : Epoch → NewEpochState → Type
prop≡∅⇒activeDReps-const e es =
  GovStateOf es ≡ [] → dom (DRepsOf es ∣ e ≤Expiry) ≡ᵉ dom (DRepsOf es ∣ (sucᵉ e) ≤Expiry)
```

*Proof*. (coming soon)
