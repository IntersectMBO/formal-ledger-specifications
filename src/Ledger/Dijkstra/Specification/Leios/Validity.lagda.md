---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Leios/Validity.lagda.md
---

## Endorser-Block Validity {#sec:endorser-block-validity}

An endorser block is valid for a ledger state when its *closure* (that is, its
referenced transactions, resolved and taken in reference order) is exactly what
its references describe, and applies to that state as a block's transactions
would.

The present module defines this property as the rule `EB`{.AgdaDatatype}.
It is what an honest committee member checks before voting and what a certificate
certifies.  The block rules name it as a premise, and the quorum-safety argument
names it as what a voter checked.

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

### The references match the closure

```agda
refOf : TopLevelTx → TxRefHash × ℕ
refOf tx = txRefHash tx , SizeOf tx
```

The rules receive the closure resolved, and `refOf`{.AgdaFunction} is what the
EB's reference to a transaction must be: the hash of its complete bytes paired
with its declared size.  The `EB`{.AgdaDatatype} rule below requires the reference
list to be, entry for entry, `refOf`{.AgdaFunction} of the closure; order is
part of the agreement, since the closure applies in reference order.

### The bounds

The environment and state are those of the announcing block.  The closure of the
EB is judged against the ledger state the announcing block left and the parameters
in force there.

Two premises of the `EB`{.AgdaDatatype} rule below are the endorser-block bounds
of CIP-164's [Table 3][cip-params], as follows:

+  the size of the EB itself is at most `S_EB` (`leiosMaxEBSize`{.AgdaField});
+  the total size of the referenced transactions is at most `S_EB-tx`
   (`leiosMaxEBTxsSize`{.AgdaField}).

The table's remaining rows are enforced by `LEDGERS`{.AgdaDatatype}: the
closure's Plutus steps and memory fit `leiosMaxEBExUnits`{.AgdaField}, one
`ExUnits`{.AgdaFunction} value for the table's two budget rows; and the total
size of the closure's reference scripts is at most `S_EB-ref`
(`leiosMaxRefScriptSizePerEB`{.AgdaField}).

### Validity

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

```agda
data EBWellFormed : EndorserBlock → Type where
  ebWellFormed :
    ∙ ebTxRefs eb ≢ []
    ∙ Unique (map proj₁ (ebTxRefs eb))
    ────────────────────────────────
    EBWellFormed eb
```


```agda
data  _,_⊢_⇀⦇_,EB⦈_ : LedgerEnv → List TopLevelTx → LedgerState → EndorserBlock → LedgerState → Type where
  EB :
    let
      pp = PParamsOf Γ
    in
      ∙ EBWellFormed eb
      ∙ ebTxRefs eb ≡ map refOf txs
      ∙ ebSize eb ≤ pp .leiosMaxEBSize
      ∙ ∑ˡ[ tx ← txs ] SizeOf tx ≤ pp .leiosMaxEBTxsSize
      ∙ ⟦ Γ , pp .leiosMaxRefScriptSizePerEB , pp .leiosMaxEBExUnits ⟧ ⊢ ls ⇀⦇ txs ,LEDGERS⦈ ls'
      ────────────────────────────────
      Γ , txs ⊢ ls ⇀⦇ eb ,EB⦈ ls'
```

Of CIP-164's six vote-casting conditions ([Step 3][cip-step3]), the two that
the ledger can check land here, namely,

+  the closure is a valid extension, through the same `LEDGERS`{.AgdaDatatype}
   relation the block rules use;
+  the block is nonempty.

The other four (header arrival within the header diffusion period, equivocation
detection, the validation deadline, chain position) are node-local checks, so
they stay at the protocol level.

Duplicate-freedom of the references is not a vote condition but an invariant of
the EB structure itself: the CIP's reference list is an insertion-ordered map
that admits no duplicate keys ([Appendix B][cip-cddl]).  The list type here does
not encode that invariant, so `EBWellFormed`{.AgdaDatatype} states it.

[cip-params]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#protocol-parameters
[cip-step3]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#step-3-committee-validation
[cip-cddl]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#appendix-b-cddl

