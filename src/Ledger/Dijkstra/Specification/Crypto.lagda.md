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
possession.[^1]

```agda
record LeiosCryptoStructure (cs : CryptoStructure) : Type₁ where
  open CryptoStructure cs

  field
    BlsVKey BlsSig BlsPoP  : Type
    isValidPoP             : BlsVKey → BlsPoP → Type
    isSignedBy             : BlsVKey → Ser → BlsSig → Type
    isSignedByAggregate    : List BlsVKey → Ser → BlsSig → Type
```

+  `isValidPoP`{.AgdaField} checks a voting key's *proof of possession* (PoP), which
   every registration carries ([Key Registration and Rotation][cip-keyreg]) because
   aggregation is otherwise open to rogue-key attacks.[^2]
+  `isSignedBy`{.AgdaField} verifies a single vote, and consensus uses this to
   filter votes before aggregation;
+  `isSignedByAggregate`{.AgdaField} verifies a certificate's aggregate signature,
   in serialized form, against the keys of the seats that signed.

Aggregation of keys does not depend on their order.  Nonetheless, we keep the keys
in a list rather than a set because their multiplicity *does* matter; indeed, two
seats holding the same key both contribute to the aggregate.

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

<!--
```agda
  field
    ⦃ DecEq-BlsVKey ⦄            : DecEq BlsVKey
    ⦃ DecEq-BlsSig  ⦄            : DecEq BlsSig
    ⦃ DecEq-BlsPoP  ⦄            : DecEq BlsPoP
    ⦃ Dec-isValidPoP ⦄           : isValidPoP ⁇²
    ⦃ Dec-isSignedBy ⦄           : isSignedBy ⁇³
    ⦃ Dec-isSignedByAggregate ⦄  : isSignedByAggregate ⁇³
    ⦃ Dec-<ᵏʰ ⦄                  : _<ᵏʰ_ ⁇²
```
-->

---

[^1]: [Appendix B][cip-cddl] of [CIP-164][] describes the cryptographic objects
      that these types model.

[^2]: A key crafted relative to someone else's key could make the aggregate appear
      as if it includes a voter who never signed.

[CIP-164]: https://github.com/cardano-scaling/CIPs/blob/leios/CIP-0164/README.md
[cip-cddl]: https://github.com/cardano-scaling/CIPs/blob/leios/CIP-0164/README.md#appendix-b-cddl
[cip-committee]: https://github.com/cardano-scaling/CIPs/blob/leios/CIP-0164/README.md#committee-structure
[cip-keyreg]: https://github.com/cardano-scaling/CIPs/blob/leios/CIP-0164/README.md#key-registration
