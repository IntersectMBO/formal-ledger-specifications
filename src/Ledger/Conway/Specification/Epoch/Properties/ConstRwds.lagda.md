---
source_branch: master
source_path: src/Ledger/Conway/Specification/Epoch/Properties/ConstRwds.lagda.md
---

## Claim: The <span class="AgdaDatatype">NEWEPOCH</span> rule leaves rewards unchanged {#clm:NEWEPOCH-const-rwds}


<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Epoch.Properties.ConstRwds
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Prelude
```
-->

*Informally*.

Rewards are left unchanged by the `NEWEPOCH`{.AgdaOperator} rule.  That is, if
`es`{.AgdaBound} and `es'`{.AgdaBound} are two `NewEpochStates`{.AgdaRecord} such that
`es`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `e`{.AgdaBound} `,NEWEPOCH⦈`{.AgdaDatatype} `es'`{.AgdaBound},
then the rewards of `es`{.AgdaBound} and `es'`{.AgdaBound} are equal.

*Formally*.

```agda
dom-rwds-const : {e : Epoch} (es es' : NewEpochState)
  → _ ⊢ es ⇀⦇ e ,NEWEPOCH⦈ es' → Type

dom-rwds-const es es' step = dom (RewardsOf es) ≡ dom (RewardsOf es')
```

*Proof*. (coming soon)
