---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Leios/Validity.lagda.md
---

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Leios.Validity
  (transactionStructure : _) (open TransactionStructure transactionStructure)
  (abs : AbstractFunctions transactionStructure) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.List.Relation.Unary.Unique.DecPropositional using (unique?)
open import Ledger.Dijkstra.Specification.Ledger transactionStructure abs
open import Ledger.Dijkstra.Specification.Ledgers transactionStructure abs
open import Ledger.Dijkstra.Specification.Utxo transactionStructure abs using (totalExUnits; totalRefScriptsSize)
open import Ledger.Dijkstra.Specification.Leios.Types cryptoStructure leiosCryptoStructure
open import Ledger.Dijkstra.Specification.Crypto using (LeiosCryptoStructure)
open LeiosCryptoStructure leiosCryptoStructure using (TxRefHash)
```
-->

# Endorser-Block Validity {#sec:endorser-block-validity}

An Endorser Block is valid for a ledger state when:

1. the referenced transactions (resolved and taken in reference order)
are exactly what it describes,

2. it satisfies the size limits given by Leios-specific protocol
parameters, and

3. the list of transactions forms a valid extension of the ledger state.

The present module defines the `EB`{.AgdaDatatype} transition system to validate
endorser blocks.

<!--
```agda
private
  variable
    Γ : LedgerEnv
    ls ls' : LedgerState
    eb : EndorserBlock
    txs : List TopLevelTx

  open PParams
  open EndorserBlock
```
-->

## Auxiliary Types and Functions

The predicate `EBWellFormed`{.AgdaFunction} ensures the
`EndorserBlock`{.AgdaRecord} is well-formed:

- the list of transaction references is non-empty (6th vote condition
  on [cip-step3]), and
- the list of reference hashes admits no duplicate keys ([Appendix
B][cip-cddl]).

```agda
EBWellFormed : EndorserBlock → Type
EBWellFormed eb = ebTxRefs eb ≢ [] × Unique (map proj₁ (ebTxRefs eb))
```

## `EB`{.AgdaDatatype} Transition System

```agda
data  _⊢_⇀⦇_,EB⦈_ : LedgerEnv × List TopLevelTx → LedgerState → EndorserBlock → LedgerState → Type where
  EB :
    let
      pp = PParamsOf Γ
    in
      ∙ EBWellFormed eb
      ∙ ebTxRefs eb ≡ map (λ tx → txRefHash tx , SizeOf tx) txs
      ∙ ebSize eb ≤ pp .leiosMaxEBSize
      ∙ ∑ˡ[ tx ← txs ] SizeOf tx ≤ pp .leiosMaxEBTxsSize
      ∙ ⟦ Γ , pp .leiosMaxRefScriptSizePerEB , pp .leiosMaxEBExUnits ⟧ ⊢ ls ⇀⦇ txs ,LEDGERS⦈ ls'
      ────────────────────────────────
      (Γ , txs) ⊢ ls ⇀⦇ eb ,EB⦈ ls'
```

The `EB`{.AgdaDatatype} enforces the size bounds of CIP-164's [Table
3][cip-params] on endorser blocks:

- the size of the EB itself is at most `S_EB` (`leiosMaxEBSize`{.AgdaField});
- the total size of the referenced transactions is at most `S_EB-tx`
   (`leiosMaxEBTxsSize`{.AgdaField}).

The table's remaining rows are enforced by `LEDGERS`{.AgdaDatatype}:

- the execution units of Plutus scripts fit `leiosMaxEBExUnits`{.AgdaField}, and
- the total size of the referenced transactions' reference scripts is
  at most `S_EB-ref` (`leiosMaxRefScriptSizePerEB`{.AgdaField}).

[cip-params]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#protocol-parameters
[cip-step3]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#step-3-committee-validation
[cip-cddl]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#appendix-b-cddl
