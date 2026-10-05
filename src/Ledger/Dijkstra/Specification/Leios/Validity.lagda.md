---
source_branch: master
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
```

The rules receive the closure resolved, and `refOf`{.AgdaFunction} is what the
EB's reference to a transaction must be: the hash of its complete bytes paired
with its declared size.  `ValidEB`{.AgdaRecord} below requires the reference
list to be, entry for entry, `refOf`{.AgdaFunction} of the closure; order is
part of the agreement, since the closure applies in reference order.

### The bounds

The environment and state are those of the announcing block.  The closure of the
EB is judged against the ledger state the announcing block left and the parameters
in force there.

```agda
module _ {Γ : LedgerEnv} {ls : LedgerState} where
  open PParams (PParamsOf Γ)

  record WithinEBBounds (eb : EndorserBlock) (closure : List TopLevelTx) : Type where
    field
      ebSizeOK          : ebSize eb ≤ leiosMaxEBSize
      txsSizeOK         : ∑ˡ[ tx ← closure ] SizeOf tx ≤ leiosMaxEBTxsSize
      totExUnitsOK      : leiosMaxEBExUnits ≥ᵉ ∑ˡ[ tx ← closure ] totExUnits tx
      refScriptsSizeOK  : ∑ˡ[ tx ← closure ] refScriptsSize tx (UTxOOf ls) ≤ leiosMaxRefScriptSizePerEB
```

The fields of `WithinEBBounds`{.AgdaRecord} are the endorser-block bounds of
CIP-164's [Table 3][cip-params], as follows:

+  `ebSizeOK`{.AgdaField}: the size of the EB itself is at most `S_EB`
   (`leiosMaxEBSize`{.AgdaField});
+  `txsSizeOK`{.AgdaField}: the total size of the referenced transactions is at
   most `S_EB-tx` (`leiosMaxEBTxsSize`{.AgdaField});
+  `totExUnitsOK`{.AgdaField}: the closure's Plutus steps and memory fit
   `leiosMaxEBExUnits`{.AgdaField}, one `ExUnits`{.AgdaFunction} value for the
   table's two budget rows;
+  `refScriptsSizeOK`{.AgdaField}: the total size of the closure's reference
   scripts is at most `S_EB-ref` (`leiosMaxRefScriptSizePerEB`{.AgdaField}).

Four fields cover the table's five rows.

### Validity

```agda
  record ValidEB (eb : EndorserBlock) (closure : List TopLevelTx) : Type where
    field
      nonemptyOK    : closure ≢ []
      uniqueRefsOK  : Unique (map proj₁ (EndorserBlock.ebTxRefs eb))
      refsOK        : EndorserBlock.ebTxRefs eb ≡ map refOf closure
      boundsOK      : WithinEBBounds eb closure
      extensionOK   : ∃[ ls' ] Γ ⊢ ls ⇀⦇ closure ,LEDGERS⦈ ls'
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
not encode that invariant, so `ValidEB`{.AgdaRecord} states it as
`uniqueRefsOK`{.AgdaField}.

<!--
```agda
private
  nonempty? : ∀ {A : Type} (xs : List A) → Dec (xs ≢ [])
  nonempty? []       = no λ p → p refl
  nonempty? (_ ∷ _)  = yes λ ()

module _ {Γ : LedgerEnv} {ls : LedgerState} where
  open PParams (PParamsOf Γ)

  instance
    Dec-WithinEBBounds : ∀ {eb closure} → WithinEBBounds {Γ} {ls} eb closure ⁇
    Dec-WithinEBBounds {eb} {closure} = ⁇ map′
      (λ (a , b , c , d) → record { ebSizeOK = a ; txsSizeOK = b ; totExUnitsOK = c ; refScriptsSizeOK = d })
      (λ w → let open WithinEBBounds w in ebSizeOK , txsSizeOK , totExUnitsOK , refScriptsSizeOK)
      ¿ ebSize eb ≤ leiosMaxEBSize
      × ∑ˡ[ tx ← closure ] SizeOf tx ≤ leiosMaxEBTxsSize
      × leiosMaxEBExUnits ≥ᵉ ∑ˡ[ tx ← closure ] totExUnits tx
      × ∑ˡ[ tx ← closure ] refScriptsSize tx (UTxOOf ls) ≤ leiosMaxRefScriptSizePerEB ¿

  -- Given the extension, the remaining conditions decide validity.
  ValidEB? : ∀ eb closure → (∃[ ls' ] Γ ⊢ ls ⇀⦇ closure ,LEDGERS⦈ ls') → Dec (ValidEB {Γ} {ls} eb closure)
  ValidEB? eb closure ext = map′
    (λ (n , u , r , b) → record { nonemptyOK = n ; uniqueRefsOK = u ; refsOK = r ; boundsOK = b ; extensionOK = ext })
    (λ v → let open ValidEB v in nonemptyOK , uniqueRefsOK , refsOK , boundsOK)
    (nonempty? closure ×-dec unique? _≟_ (map proj₁ (EndorserBlock.ebTxRefs eb))
                       ×-dec ¿ EndorserBlock.ebTxRefs eb ≡ map refOf closure × WithinEBBounds {Γ} {ls} eb closure ¿)
```
-->

[cip-params]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#protocol-parameters
[cip-step3]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#step-3-committee-validation
[cip-cddl]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#appendix-b-cddl

