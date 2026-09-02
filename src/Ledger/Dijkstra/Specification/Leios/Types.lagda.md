---
source_branch: leios-main
source_path: src/Ledger/Dijkstra/Specification/Leios/Types.lagda.md
---

# Leios Primitive Types {#sec:leios-primitive-types}

Leios adds four objects to the chain's traffic: the endorser block, the
header announcement that names it, the committee's votes, and the certificate
that aggregates a quorum of them.  This module gives the first three their
spec-level types and maps each to its wire-format counterpart in the CDDL of
CIP-164's Appendix B[^1]; the fourth, `LeiosCert`{.AgdaRecord}, is defined
beside the committee whose quorum it attests, in
`Ledger.Dijkstra.Specification.Leios`{.AgdaModule}.  The hash and signature
carriers are fields of the core `CryptoStructure`{.AgdaRecord} (see
`Ledger.Core.Specification.Crypto`{.AgdaModule}), the module's one parameter.
Wire-level integer widths (the `uint16` of a reference size, the `uint32` of
an announcement size) relax to `ℕ`.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Core.Specification.Crypto using (CryptoStructure)

module Ledger.Dijkstra.Specification.Leios.Types
  (cs : CryptoStructure) (open CryptoStructure cs)
  where
```
-->

*The endorser block*
```agda
record EndorserBlock : Type where
  field
    ebTxRefs : List (TxRefHash × ℕ)
```

An endorser block is the ordered list of its transaction references, each the
pair of a reference hash and a declared byte size.  A `TxRefHash`{.AgdaField}
covers the complete transaction bytes, witnesses included; the ledger's
transaction id identifies only the transaction body, so it could not pin the
exact transactions the voters validated.  The CDDL counterpart is
`endorser_block`, whose single entry holds the references as an
`omap<hash32, uint16>`: insertion-ordered, keys unique.

Of the `omap`'s two constraints, the list type keeps the ordering and drops
key uniqueness: duplicate-freedom of the reference hashes is a validity
condition on the announced block, stated beside the nonemptiness and size
conditions of the same protocol step, not a proof field of the record.  The
rules must be able to mention a malformed object in order to reject it: a
duplicate-referencing EB is a thing a peer can send, and its rejection is a
predicate that fails, not a type with no inhabitant.  A proof field would
also forfeit the derived equality below: uniqueness proofs contain negations,
and equality of functions is not decidable.

*The endorser-block identifier*
```agda
hashEB : EndorserBlock → EBHash
hashEB eb = hashEBRefs (EndorserBlock.ebTxRefs eb)
```

`hashEB`{.AgdaFunction} fixes the identity the CIP assigns the `announced_eb`
header field, "computed from the complete EB structure": the identifier is
the hash of the reference structure itself, so it is checkable before any
referenced transaction data arrives.  What it deliberately does not fix is
the preimage, since `hashEBRefs`{.AgdaField} is abstract and no byte-exact
serialization of the reference list is pinned.  This boundary is a known
conformance cliff: an implementation can agree with the spec on every rule
yet disagree on which endorser block an identifier denotes, so pinning the
preimage is a named prerequisite for conformance testing.  Cardano has
precedent in the block-body hash, whose segmented preimage exists only in
implementation internals.

*The announcement*
```agda
Announcement : Type
Announcement = EBHash × ℕ
```

An announcement is the pair a ranking-block header may carry, the announced
EB's identifier and declared byte size (the optional header group
`announced_eb`, `announced_eb_size`).  A wrong declared size invalidates
nothing (the CIP has honest nodes decline to vote instead), so size agreement
belongs to the voters' checks, not to block validity.  The header's third
Leios field, the `certified_eb` bit, has no spec-level counterpart at all: it
flags that the block's own body carries a certificate, which the spec reads
off the body itself, leaving the bit a syncing optimization of the wire
format.

*The vote*
```agda
record Vote : Type where
  field
    vAnn   : RBHeaderHash
    vVoter : ℕ
    vSig   : BlsSig
```

A vote (CDDL: `leios_vote`) is cast on an EB announcement and names it by
the header that carried it: `vAnn`{.AgdaField} is the hash of the announcing
ranking-block header (the CDDL's `announcing_rb_hash`), and it is exactly
the message `vSig`{.AgdaField} signs.  Binding the vote to the announcing
header rather than to the EB alone ensures the voter validated the EB
against the same ledger state it extends when certified on chain, since
several headers could announce the same EB; it also leaves the slot and the
EB hash redundant, so the vote carries neither.  `vVoter`{.AgdaField} identifies the caster by seat
index into the epoch's committee (the CDDL's `voter_id`); no eligibility
proof accompanies it, because membership is determined once per epoch from
the stake distribution and verified by lookup.

No transition rule consumes a vote.  Votes never reach the chain, and
CIP-164 draws the line accordingly: certificate validation is block
validity; vote casting is node behavior.  The type earns its place as a definition
instead: it is what vote validation at the consensus↔ledger interface
validates, it is the structure whose wire format the ledger owns, and it
gives the quorum-safety metatheory its vocabulary, a certificate being a
compressed set of votes — an aggregate signature over precisely the message
each vote signs, under the keys of the seats its bitfield names.

<!--
```agda
unquoteDecl DecEq-EndorserBlock = derive-DecEq ((quote EndorserBlock , DecEq-EndorserBlock) ∷ [])
unquoteDecl DecEq-Vote          = derive-DecEq ((quote Vote          , DecEq-Vote)          ∷ [])
```
-->

All three types have decidable equality: the records by derivation and
`Announcement`{.AgdaFunction} from its components.

[^1]: [CIP-164, Appendix B: Wire Format Specifications (CDDL)](https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#appendix-b-cddl).
