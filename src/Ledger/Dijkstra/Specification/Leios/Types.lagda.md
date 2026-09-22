---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Leios/Types.lagda.md
---

## Leios Primitive Types {#sec:leios-primitive-types}

Leios adds the following objects to the chain's traffic:

+  an endorser block (EB);
+  a header announcement that names the EB;
+  the committee's votes;
+  a certificate that aggregates a quorum of votes.

This module defines types for the first two of these.

The certificate, `LeiosCert`{.AgdaRecord}, is defined beside the committee whose
quorum of votes it certifies.  Votes have no type in the ledger specification:
they never reach the chain, and CIP-164 assigns the job of casting and validating
them to the node.  What reaches the ledger is a certificate of an aggregation of
votes.  The hash carriers (`TxRefHash`{.AgdaField}, `EBHash`{.AgdaField},
`hashEBRefs`{.AgdaField}) are fields of the era's
`LeiosCryptoStructure`{.AgdaRecord} record, which this module takes as a
parameter.

Declared byte sizes are represented as `ℕ`.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Core.Specification.Crypto using (CryptoStructure)
open import Ledger.Dijkstra.Specification.Crypto using (LeiosCryptoStructure)

module Ledger.Dijkstra.Specification.Leios.Types
  (cs : CryptoStructure) (lc : LeiosCryptoStructure cs)
  (open LeiosCryptoStructure lc using (TxRefHash; EBHash; hashEBRefs))
  where
```
-->

### Endorser blocks

```agda
record EndorserBlock : Type where
  field
    ebTxRefs : List (TxRefHash × ℕ)
```

An **endorser block** (EB) is the ordered list of its transaction references, each
the pair of a reference hash and a declared byte size.

??? info "A reference hash is not a transaction id"

    A `TxRefHash`{.AgdaField} covers the complete transaction bytes, witnesses
    included.  The ledger's transaction id identifies only the transaction body;
    this is true of every transaction, not only those an endorser block
    references, and it is why an id could not pin the exact transactions the
    voters validated.

The list type keeps the ordering of the references but does not forbid repeated
reference hashes: duplicate-freedom is a validity condition on the announced
block, stated beside the nonemptiness and size conditions.

<!-- TODO: reference the validity condition once it is enforced (the `ValidEB`
     predicate of `Leios.Validity`). -->

### Endorser block identifiers

```agda
hashEB : EndorserBlock → EBHash
hashEB eb = hashEBRefs (EndorserBlock.ebTxRefs eb)
```

`hashEB`{.AgdaFunction} fixes the identity of an endorser block as the CIP does,
"computed from the complete EB structure": the identifier is the hash of the
reference structure itself, so it is checkable before any referenced transaction
data arrives.

What `hashEB`{.AgdaFunction} deliberately does not fix is the preimage, since
`hashEBRefs`{.AgdaField} is abstract and no byte-exact serialization of the
reference list is pinned.[^1]

### Announcements

```agda
Announcement : Type
Announcement = EBHash × ℕ
```

An **announcement** is the pair a ranking-block (RB) header may carry; it consists
of the announced EB's identifier and declared byte size.

A wrong declared size invalidates nothing (the CIP has honest nodes decline to
vote instead), so size agreement belongs to the voters' checks, not to block
validity.

The header also flags whether its own body carries a certificate; the spec reads
that off the body itself, so the flag has no counterpart here.

<!--
```agda
unquoteDecl DecEq-EndorserBlock = derive-DecEq ((quote EndorserBlock , DecEq-EndorserBlock) ∷ [])
```
-->

---

[^1]: This boundary is a known conformance obstacle: an implementation can agree
      with the spec on every rule yet disagree on which endorser block an
      identifier denotes, so pinning the preimage is a prerequisite for
      conformance testing.  (A precedent for this is the block-body hash, whose
      segmented preimage exists only in implementation internals.)
