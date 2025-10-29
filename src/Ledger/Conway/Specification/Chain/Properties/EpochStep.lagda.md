<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Chain.Properties.EpochStep
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Conway.Specification.Chain txs abs
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Prelude
open Block
```
-->

**Claim (New enact state only if new epoch).**

*Informally*.

Let `cs`{.AgdaBound} and `cs'`{.AgdaBound} be `ChainStates`{.AgdaRecord}
and `b`{.AgdaBound} a `Block`{.AgdaRecord}.
If `cs`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `b`{.AgdaBound} `,CHAIN⦈`{.AgdaDatatype} `cs'`{.AgdaBound} and
if the enact states of `cs`{.AgdaBound} and `cs'`{.AgdaBound} differ, then
the epoch of the slot of `b`{.AgdaBound} is the successor of the last epoch of `cs`{.AgdaBound}.

*Formally*.

```agda
enact-change⇒newEpoch : (b : Block) {cs cs'  : ChainState}
  → _ ⊢ cs ⇀⦇ b ,CHAIN⦈ cs' → EnactStateOf cs ≢ EnactStateOf cs'
  → Type

enact-change⇒newEpoch b {cs} h es≢es' =
  epoch (b .bheader .bhbody .slot) ≡ sucᵉ (LastEpochOf cs)
  where
    open Block
    open BHeader
    open BHBody
```

*Proof*. (coming soon)
