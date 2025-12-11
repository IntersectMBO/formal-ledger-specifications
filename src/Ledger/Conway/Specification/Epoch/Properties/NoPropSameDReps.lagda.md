---
source_branch: master
source_path: src/Ledger/Conway/Specification/Epoch/Properties/NoPropSameDReps.lagda.md
---

## Claim: DReps remain unchanged if there are no governance proposals {#clm:NoPropSameDReps}

<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Epoch.Properties.NoPropSameDReps
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Gov txs
open import Ledger.Prelude
open import Ledger.Conway.Specification.Properties txs abs
```
-->

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
  GovStateOf es ≡ [] → dom (activeDRepsOf es e) ≡ᵉ dom (activeDRepsOf es (sucᵉ e))
```

*Proof*. (coming soon)
