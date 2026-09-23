---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Crypto.lagda.md
---

# Dijkstra Cryptographic Primitives {#sec:dijkstra-cryptographic-primitives}

Leios ([CIP-164]) adds a second signature scheme beside the payment scheme of
the core `Crypto`{.AgdaModule} module; specifically, an epoch's voting committee
signs endorser-block announcements with registered voting keys, and a certificate
encodes a quorum of votes as one aggregate signature.

This module defines the record `LeiosCryptoStructure`{.AgdaRecord}, an extension
of `CryptoStructure`{.AgdaRecord} that adds what Leios needs.  An inhabitant of
`LeiosCryptoStructure`{.AgdaRecord} is added as a new field of
`GovStructure`{.AgdaRecord}.

<!--
```agda
{-# OPTIONS --safe #-}
module Ledger.Dijkstra.Specification.Crypto where

open import Ledger.Prelude
open import Relation.Binary using (IsStrictTotalOrder)
open import Ledger.Core.Specification.Crypto
```
-->

## Abstract Cryptography Types

We represent the cryptographic structures of the Leios voting scheme using
abstract types to encode verification keys, signatures, and proofs of
possession.

```agda
record LeiosCryptoStructure (cs : CryptoStructure) : Type₁ where
  open CryptoStructure cs

  field
    BlsVKey BlsSig BlsPoP  : Type
    isValidPoP             : BlsVKey → BlsPoP → Type
    isSignedByAggregate    : ℙ BlsVKey → Ser → BlsSig → Type
```

+  `isValidPoP`{.AgdaField} checks a voting key's *proof of possession* (PoP), which
   every registration carries ([Key Registration and Rotation][cip-keyreg]) because
   aggregation is otherwise open to rogue-key attacks.[^1]
+  `isSignedByAggregate`{.AgdaField} verifies a certificate's aggregate signature
   over a message, given in serialized form, against the keys of the seats that
   signed.

The keys form a set rather than a list.  A voting key can be registered by at most
one pool, which is a premise of the registration rule; so no two seats share a
key, and an aggregate signature is determined by *which* keys signed, not by
how often or in what order.

<!-- TODO: reference the registration rule's key-uniqueness premise once it exists. -->

## The Tie-Break on Pool Ids

The committee of an epoch consists of a subset of pools, which includes those
pools with the most active stake, with ties broken by pool id in ascending order
([Committee Structure][cip-committee]; the procedure in
[Committee Selection][cip-selection]).

The stake order depends on the epoch's stake distribution, so it is defined in the
committee module.

The field `_<ᵏʰ_` exists exclusively for deciding tie-breaks.
A pool id is a key hash and `KeyHash`{.AgdaField} is abstract with decidable
equality and nothing else, so `_<ᵏʰ_` must be accompanied by the assertion
that it is a strict total order.

```agda
  field
    _<ᵏʰ_      : KeyHash → KeyHash → Type
    <ᵏʰ-isSTO  : IsStrictTotalOrder _≡_ _<ᵏʰ_
```

## Leios Hashes

Leios names its objects by hash.

+  `EBHash`{.AgdaField} identifies an endorser block;
+  `TxRefHash`{.AgdaField} identifies a referenced transaction by the hash of its
   complete bytes, not by its transaction id;
+  `RBHeaderHash`{.AgdaField} identifies the announcing ranking-block header, the
   message a certificate is verified against ([Certificate Validation][cip-certval]);
+  `hashEBRefs`{.AgdaField} encodes an endorser block's identifier from its
   reference list;
+  `rbHeaderHashBytes`{.AgdaField} serializes a header hash into the message the
   aggregate verifier takes, just as `txidBytes`{.AgdaField} does for transaction
   ids.

All of these are abstract, and the `Leios.Types`{.AgdaModule} module explains why
the identifier's byte-exact preimage is deliberately unpinned.

```agda
  field
    EBHash TxRefHash RBHeaderHash  : Type
    hashEBRefs                     : List (TxRefHash × ℕ) → EBHash
    rbHeaderHashBytes              : RBHeaderHash → Ser
```

<!--
```agda
  field
    ⦃ DecEq-BlsVKey ⦄            : DecEq BlsVKey
    ⦃ DecEq-BlsSig  ⦄            : DecEq BlsSig
    ⦃ DecEq-BlsPoP  ⦄            : DecEq BlsPoP
    ⦃ Dec-isValidPoP ⦄           : isValidPoP ⁇²
    ⦃ Dec-isSignedByAggregate ⦄  : isSignedByAggregate ⁇³
    ⦃ DecEq-EBHash ⦄             : DecEq EBHash
    ⦃ DecEq-TxRefHash ⦄          : DecEq TxRefHash
    ⦃ DecEq-RBHeaderHash ⦄       : DecEq RBHeaderHash

  instance
    Dec-<ᵏʰ : _<ᵏʰ_ ⁇²
    Dec-<ᵏʰ = ⁇ (IsStrictTotalOrder._<?_ <ᵏʰ-isSTO _ _)
```
-->

---

[^1]: A key crafted relative to someone else's key could make the aggregate appear
      as if it includes a voter who never signed.

[CIP-164]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md
[cip-certval]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#certificate-validation
[cip-committee]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#committee-structure
[cip-selection]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#committee-selection
[cip-keyreg]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#key-registration
