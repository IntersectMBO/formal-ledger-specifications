<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Chain.Properties.PParamsWellFormed
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Conway.Specification.Chain txs abs
open import Ledger.Prelude
```
-->

<a id="thm:pp-wellFormed-inv"></a>
**Claim (Well-formedness of `PParams`{.AgdaRecord} is a `CHAIN`{.AgdaOperator} invariant).**

*Informally*.

We say the `PParams`{.AgdaRecord} of a chain state are
*well-formed* if each of the following parameters is non-zero:
`maxBlockSize`{.AgdaField}, `maxTxSize`{.AgdaField}, `maxHeaderSize`{.AgdaField}, `maxValSize`{.AgdaField},
`refScriptCostStride`{.AgdaField}, `coinsPerUTxOByte`{.AgdaField}, `poolDeposit`{.AgdaField},
`collateralPercentage`{.AgdaField}, `ccMaxTermLength`{.AgdaField}, `govActionLifetime`{.AgdaField},
`govActionDeposit`{.AgdaField}, `drepDeposit`{.AgdaField}.

We claim that `pp-wellFormed`{.AgdaFunction} is a chain invariant.
That is, if `cs`{.AgdaBound} and `cs'`{.AgdaBound} are chain states such that
`cs`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `tx`{.AgdaBound} `,CHAIN⦈`{.AgdaDatatype} `cs'`{.AgdaBound}, and if the
`PParams`{.AgdaRecord} of `cs`{.AgdaBound} are well-formed, then so are the
`PParams`{.AgdaRecord} of `cs'`{.AgdaBound} .

*Formally*.

```agda
pp-wellFormed : ChainState → Type
pp-wellFormed = paramsWellFormed ∘ PParamsOf

pp-wellFormed-invariant : Type
pp-wellFormed-invariant = LedgerInvariant _⊢_⇀⦇_,CHAIN⦈_ pp-wellFormed
```

*Proof*. (coming soon)
