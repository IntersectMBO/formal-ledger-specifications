<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Chain.Properties.CredDepsEqualDomRwds
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Chain txs abs
open import Ledger.Prelude hiding (map) renaming (mapˢ to map; filterˢ to filter)
open import Ledger.Conway.Specification.Properties txs abs
```
-->

**Claim (Equality of credential depsoits is a `CHAIN`{.AgdaOperator} invariant).**

*Informally*.

This property concerns two quantities associated with a given
`ChainState`{.AgdaRecord} `cs`{.AgdaBound},

+ the credential deposits of the `UTxOState`{.AgdaRecord} of `cs`{.AgdaBound} and

+ the credential deposits of the rewards in the ledger state of `cs`{.AgdaBound}.

The predicate `credDeposits≡dom-rwds`{.AgdaFunction} `cs`{.AgdaBound} asserts that
these quantities are equal for `cs`{.AgdaBound}.

The property `credDeposits≡dom-rwds-inv`{.AgdaFunction} asserts that
`credDeposits≡dom-rwds`{.AgdaFunction} is a chain invariant. That is,
if `cs`{.AgdaBound} and `cs'`{.AgdaBound} are two `ChainStates`{.AgdaRecord} such
that `cs`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `tx`{.AgdaBound} `,CHAIN⦈`{.AgdaDatatype} `cs'`{.AgdaBound}, then
`credDeposits≡dom-rwds`{.AgdaFunction} `cs`{.AgdaBound} only if
`credDeposits≡dom-rwds`{.AgdaFunction} `cs'`{.AgdaBound}.

*Formally*.

```agda
credDeposits≡dom-rwds : ChainState → Type
credDeposits≡dom-rwds cs =  filter isCredDeposit (dom (DepositsOf cs))
                            ≡ map CredentialDeposit (dom (RewardsOf cs))

credDeposits≡dom-rwds-inv : Type
credDeposits≡dom-rwds-inv = LedgerInvariant _⊢_⇀⦇_,CHAIN⦈_ credDeposits≡dom-rwds
```

*Proof*. (coming soon)
