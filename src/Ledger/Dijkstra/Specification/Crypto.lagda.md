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

  isSignedBy : BlsVKey → Ser → BlsSig → Type
  isSignedBy vk = isSignedByAggregate ❴ vk ❵
```

+  `isValidPoP`{.AgdaField} checks a voting key's *proof of possession* (PoP), which
   every registration carries ([Key Registration and Rotation][cip-keyreg]) because
   aggregation is otherwise open to rogue-key attacks.[^1]
+  `isSignedByAggregate`{.AgdaField} verifies a certificate's aggregate signature
   over a message, given in serialized form, against the keys of the seats that
   signed.
+  `isSignedBy`{.AgdaFunction} verifies a single vote, the check by which consensus
   filters votes before aggregation.  It is not a further primitive: for BLS an
   aggregate over one key verifies exactly when the single signature does, so it
   is the singleton case of `isSignedByAggregate`{.AgdaField} by definition.

The keys form a set rather than a list.  A voting key can be registered by at most
one pool, as a VRF key can, a premise of the registration rule; so no two seats
share a key, and an aggregate signature is determined by which keys signed, not by
how often or in what order.

## The Committee Order

The committee consists of the pools with the most active stake, ordered by active
stake in descending order, with ties broken by pool ID in ascending order
([Committee Structure][cip-committee]).  Thus, the key-hash type carries a strict
total order.

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
+  `RBHeaderHash`{.AgdaField} denotes the announcing ranking-block header, which
   is the message a committee vote signs;
+  `hashEBRefs`{.AgdaField} encodes an endorser block's identifier from its
   reference list.

All four hashes are abstract, and
`Ledger.Dijkstra.Specification.Leios.Types`{.AgdaModule} explains why the
identifier's byte-exact preimage is deliberately unpinned.

```agda
  field
    EBHash TxRefHash RBHeaderHash  : Type
    hashEBRefs                     : List (TxRefHash × ℕ) → EBHash
```

<!--
```agda
  field
    ⦃ DecEq-BlsVKey ⦄            : DecEq BlsVKey
    ⦃ DecEq-BlsSig  ⦄            : DecEq BlsSig
    ⦃ DecEq-BlsPoP  ⦄            : DecEq BlsPoP
    ⦃ Dec-isValidPoP ⦄           : isValidPoP ⁇²
    ⦃ Dec-isSignedByAggregate ⦄  : isSignedByAggregate ⁇³
    ⦃ Dec-<ᵏʰ ⦄                  : _<ᵏʰ_ ⁇²
    ⦃ DecEq-EBHash ⦄             : DecEq EBHash
    ⦃ DecEq-TxRefHash ⦄          : DecEq TxRefHash
    ⦃ DecEq-RBHeaderHash ⦄       : DecEq RBHeaderHash

  instance
    Dec-isSignedBy : isSignedBy ⁇³
    Dec-isSignedBy = Dec-isSignedByAggregate
```
-->

---

[^1]: A key crafted relative to someone else's key could make the aggregate appear
      as if it includes a voter who never signed.

[CIP-164]: https://github.com/cardano-scaling/CIPs/blob/leios/CIP-0164/README.md
[cip-committee]: https://github.com/cardano-scaling/CIPs/blob/leios/CIP-0164/README.md#committee-structure
[cip-keyreg]: https://github.com/cardano-scaling/CIPs/blob/leios/CIP-0164/README.md#key-registration
