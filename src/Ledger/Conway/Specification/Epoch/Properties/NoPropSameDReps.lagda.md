<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Abstract
open import Ledger.Core.Specification.Transaction

module Ledger.Conway.Specification.Epoch.Properties.NoPropSameDReps
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

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
  GovStateOf es ≡ [] → activeDReps e es ≡ᵉ activeDReps (sucᵉ e) es
```

*Proof*. (coming soon)
