---
source_branch: leios-main
source_path: src/Ledger/Dijkstra/Specification/Leios/Validity.lagda.md
---

# Endorser-Block Validity {#sec:endorser-block-validity}

An endorser block is valid for a ledger state when its closure, the referenced
transactions resolved and taken in reference order, is exactly what its
references describe and applies to that state as a block's transactions would.
This module defines that property, `ValidEB`{.AgdaRecord}.  It is what an
honest committee member checks before voting and what a certificate therefore
attests, and it is the property certified application relies on; it is a
definition, not a transition rule.  The block rules name it as a premise, and
the quorum-safety argument names it as what a voter checked.

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

*The references match the closure*
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

*The bounds*
```agda
record WithinEBBounds (pp : PParams) (ls : LedgerState)
                      (eb : EndorserBlock) (closure : List TopLevelTx) : Type where
  field
    ebSizeOK      : ebSize eb ≤ PParams.leiosMaxEBSize pp
    txsSizeOK     : (∑ˡ[ tx ← closure ] SizeOf tx) ≤ PParams.leiosMaxEBTxsSize pp
    exUnitsOK     : PParams.leiosMaxEBExUnits pp ≥ᵉ (∑ˡ[ tx ← closure ] totExUnits tx)
    refScriptsOK  : (∑ˡ[ tx ← closure ] refScriptsSize tx (UTxOOf ls)) ≤ PParams.leiosMaxRefScriptSizePerEB pp
```

The four fields cover the five bounds of CIP-164's Table 3, the endorser-block
analogues of a block's: the block's own size (`S_EB`), the total size of the
transactions it lists (`S_EB-tx`), their Plutus steps and memory (the two budget
rows, one `ExUnits` field), and the reference scripts they load from the UTxO
(`S_EB-ref`).  The last needs the ledger state, since reference scripts live in
outputs.

*Validity*
```agda
record ValidEB (Γ : LedgerEnv) (ls : LedgerState)
               (eb : EndorserBlock) (closure : List TopLevelTx) : Type where
  field
    nonempty        : closure ≢ []
    uniqueRefs      : Unique (map proj₁ (EndorserBlock.ebTxRefs eb))
    matchesRefs     : MatchesRefs eb closure
    withinBounds    : WithinEBBounds (LedgerEnv.pparams Γ) ls eb closure
    validExtension  : ∃[ ls' ] Γ ⊢ ls ⇀⦇ closure ,LEDGERS⦈ ls'
```

The environment and state are the announcing block's: the closure is judged
against the ledger state the announcing block left and under the parameters in
force there, which is also where certified application later runs.  Of
CIP-164's six vote-casting conditions, the two that are ledger-checkable land
here: the closure is a valid extension, through the same `LEDGERS`{.AgdaDatatype}
relation the block rules use, and the block is nonempty.  The others are
node-local (header arrival, equivocation, deadlines, chain position) and stay
with the protocol-level specification.  Duplicate-freedom of the reference
hashes is the validity condition the endorser-block type deliberately leaves
to this predicate.

<!--
```agda
instance
  Dec-Unique : ∀ {A : Type} ⦃ _ : DecEq A ⦄ {xs : List A} → Unique xs ⁇
  Dec-Unique {xs = xs} = ⁇ unique? _≟_ xs
```
-->

The first four conjuncts are decidable, `Unique`{.AgdaDatatype} through the
standard library's decision procedure and the rest through decidable equality
and order; the last is computed, not decided, by the `LEDGERS`{.AgdaDatatype}
computational instance, which the block rules will use.
