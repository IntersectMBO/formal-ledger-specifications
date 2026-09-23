---
source_branch: leios-main
source_path: src/Ledger/Dijkstra/Specification/Leios/Validity.lagda.md
---

## Endorser-Block Validity {#sec:endorser-block-validity}

An endorser block is valid for a ledger state when its *closure* (that is, its
referenced transactions, resolved and taken in reference order) is exactly what
its references describe, and applies to that state as a block's transactions
would.

The present module defines this property and denotes it by `ValidEB`{.AgdaRecord}.
It is what an honest committee member checks before voting and what a certificate
certifies.  The block rules name it as a premise, and the quorum-safety argument
names it as what a voter checked.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Leios.Validity
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.List.Relation.Unary.Unique.DecPropositional using (unique?)
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs using (totExUnits; refScriptsSize)
open import Ledger.Dijkstra.Specification.Leios.Types cryptoStructure leiosCryptoStructure
open import Ledger.Dijkstra.Specification.Crypto using (LeiosCryptoStructure)
open LeiosCryptoStructure leiosCryptoStructure using (TxRefHash)
```
-->

### The references match the closure

```agda
refOf : TopLevelTx → TxRefHash × ℕ
refOf tx = txRefHash tx , SizeOf tx

MatchesRefs : EndorserBlock → List TopLevelTx → Type
MatchesRefs eb closure = EndorserBlock.ebTxRefs eb ≡ map refOf closure
```

The rules receive the closure resolved, and `MatchesRefs`{.AgdaFunction} is
the premise that ties it to the block: the reference list is, entry for entry,
the hash of each transaction's complete bytes paired with its declared size.
Order is part of the agreement, since the closure applies in reference order.

### The bounds

The environment and state are those of the announcing block.  The closure of the
EB is judged against the ledger state the announcing block left and the parameters
in force there.

```agda
module _ {Γ : LedgerEnv} {ls : LedgerState} where
  open PParams (PParamsOf Γ)

  record WithinEBBounds (eb : EndorserBlock) (closure : List TopLevelTx) : Type where
    field
      ebSizeOK      : ebSize eb ≤ leiosMaxEBSize
      txsSizeOK     : ∑ˡ[ tx ← closure ] SizeOf tx ≤ leiosMaxEBTxsSize
      exUnitsOK     : leiosMaxEBExUnits ≥ᵉ ∑ˡ[ tx ← closure ] totExUnits tx
      refScriptsOK  : ∑ˡ[ tx ← closure ] refScriptsSize tx (UTxOOf ls) ≤ leiosMaxRefScriptSizePerEB
```

The four fields of `WithinEBBounds`{.AgdaRecord} cover the five endorser-block
bounds of CIP-164's Table 3: the size of the EB itself, the total size of the
referenced transactions, the total size of their reference scripts, and the
Plutus step and memory limits, the last two bundled into the single
`ExUnits`{.AgdaField} value `leiosMaxEBExUnits`{.AgdaField}.

### Validity

```agda
  record ValidEB (eb : EndorserBlock) (closure : List TopLevelTx) : Type where
    field
      nonempty        : closure ≢ []
      uniqueRefs      : Unique (map proj₁ (EndorserBlock.ebTxRefs eb))
      matchesRefs     : MatchesRefs eb closure
      withinBounds    : WithinEBBounds eb closure
      validExtension  : ∃[ ls' ] Γ ⊢ ls ⇀⦇ closure ,LEDGERS⦈ ls'
```

Of CIP-164's six vote-casting conditions, the two that the ledger can check land
here, namely,

+  the closure is a valid extension, through the same `LEDGERS`{.AgdaDatatype}
   relation the block rules use;
+  the block is nonempty.

The other four (header arrival within the header diffusion period, equivocation
detection, the validation deadline, chain position) are node-local checks, so
they stay at the protocol level.  Duplicate-freedom of the references is not a
vote condition but an invariant of the EB structure itself: the CIP's reference
list is an insertion-ordered map that admits no duplicate keys.  The list type
here does not encode that invariant, so `ValidEB`{.AgdaRecord} states it as
`uniqueRefs`{.AgdaField}.

<!--
```agda
instance
  Dec-Unique : ∀ {A : Type} ⦃ _ : DecEq A ⦄ {xs : List A} → Unique xs ⁇
  Dec-Unique {xs = xs} = ⁇ unique? _≟_ xs
```
-->

