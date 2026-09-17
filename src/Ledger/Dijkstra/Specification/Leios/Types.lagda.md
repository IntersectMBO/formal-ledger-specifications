---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Leios/Types.lagda.md
---

# Leios Primitive Types {#sec:leios-primitive-types}

Leios adds the following objects to the chain's traffic:

+  the endorser block (EB);
+  the header announcement that names the EB;
+  the committee's votes;
+  the certificate that aggregates a quorum of them.

This module defines types for the first three of these and maps each to its
wire-format counterpart in the CDDL of CIP-164's Appendix B.[^1]

A type for the fourth, `LeiosCert`{.AgdaRecord}, is defined beside the committee
whose quorum it certifies.  The hash and signature carriers are fields of the
era's `LeiosCryptoStructure`{.AgdaRecord} record, which the module takes as a
parameter.

We represent wire-level integer widths (the `uint16` of a reference
size, the `uint32` of an announcement size) as `ℕ`.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Core.Specification.Crypto using (CryptoStructure)
open import Ledger.Dijkstra.Specification.Crypto using (LeiosCryptoStructure)

module Ledger.Dijkstra.Specification.Leios.Types
  (cs : CryptoStructure) (lc : LeiosCryptoStructure cs) (open LeiosCryptoStructure lc)
  where
```
-->

*The endorser block*
```agda
record EndorserBlock : Type where
  field
    ebTxRefs : List (TxRefHash × ℕ)
```

An endorser block is the ordered list of its transaction references, each the pair
of a reference hash and a declared byte size.  A `TxRefHash`{.AgdaField} covers
the complete transaction bytes, witnesses included; the ledger's transaction id
identifies only the transaction body, so it could not pin the exact transactions
the voters validated.  The CDDL counterpart is `endorser_block`, whose single
entry holds the references as an `omap<hash32, uint16>`: insertion-ordered, keys
unique.

Of the `omap`'s two constraints, the list type keeps the ordering and drops key
uniqueness.  Reference hashes may be repeated; this is a validity condition on
the announced block, stated beside the nonemptiness and size conditions of the
same protocol step, not a proof field of the record.

The rules must be able to mention a malformed object in order to reject it: an EB
that references duplicate keys is something a peer can send, and its rejection is
a predicate failure as opposed to a property expressed by the type.

*The endorser-block identifier*
```agda
hashEB : EndorserBlock → EBHash
hashEB eb = hashEBRefs (EndorserBlock.ebTxRefs eb)
```

`hashEB`{.AgdaFunction} fixes the identity to which the CIP assigns the
`announced_eb` header field, "computed from the complete EB structure": the
identifier is the hash of the reference structure itself, so it is checkable
before any referenced transaction data arrives.

What `hashEB`{.AgdaFunction} deliberately does not fix is the preimage, since
`hashEBRefs`{.AgdaField} is abstract and no byte-exact serialization of the
reference list is pinned.  This boundary is a known conformance cliff: an
implementation can agree with the spec on every rule yet disagree on which
endorser block an identifier denotes, so pinning the preimage is a prerequisite
for conformance testing.  (A precedent for this is the block-body hash, whose
segmented preimage exists only in implementation internals.)

*The announcement*
```agda
Announcement : Type
Announcement = EBHash × ℕ
```

An **announcement** is the pair a ranking-block header may carry; it consists of
the announced EB's identifier and declared byte size (the optional header group
`announced_eb`, `announced_eb_size`).

A wrong declared size invalidates nothing (the CIP has honest nodes decline to
vote instead), so size agreement belongs to the voters' checks, not to block
validity.

The header's third Leios field, the `certified_eb` bit, has no spec-level
counterpart at all: it flags that the block's own body carries a certificate, and
the spec reads this off the body itself.

*The vote*
```agda
record Vote : Type where
  field
    vAnn    : RBHeaderHash
    vVoter  : ℕ
    vSig    : BlsSig
```

A vote (CDDL: `leios_vote`) is cast on an EB announcement and names it by the
header that carried it: `vAnn`{.AgdaField} is the hash of the announcing
ranking-block header (the CDDL's `announcing_rb_hash`), and it is exactly the
message `vSig`{.AgdaField} signs.

Binding the vote to the announcing header rather than to the EB alone ensures the
voter validated the EB against the same ledger state it extends when certified on
chain, since several headers could announce the same EB.

`vVoter`{.AgdaField} identifies the vote caster by seat index into the epoch's
committee (the CDDL's `voter_id`); no eligibility proof accompanies it, because
membership is determined once per epoch from the stake distribution and verified
by lookup.

No transition rule consumes a vote.  Votes never reach the chain, and CIP-164
draws the line accordingly: certificate validation is block validity; vote casting
is node behavior.  The `Vote`{.AgdaRecord} type earns its place as a definition
instead;

+  it is what vote validation at the consensus↔ledger interface validates;
+  it is the structure whose wire format the ledger owns;
+  it gives the quorum-safety metatheory its vocabulary, a certificate being a
   compressed set of votes, an aggregate signature over the message that each vote
   signs, under the keys of the seats that its bitfield names.

<!--
```agda
unquoteDecl DecEq-EndorserBlock = derive-DecEq ((quote EndorserBlock , DecEq-EndorserBlock) ∷ [])
unquoteDecl DecEq-Vote          = derive-DecEq ((quote Vote          , DecEq-Vote)          ∷ [])
```
-->

[^1]: [CIP-164, Appendix B: Wire Format Specifications (CDDL)](https://github.com/cardano-scaling/CIPs/blob/leios/CIP-0164/README.md#appendix-b-cddl).
