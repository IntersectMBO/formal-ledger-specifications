---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Crypto.lagda.md
---

# Dijkstra Cryptographic Primitives {#sec:dijkstra-cryptographic-primitives}

Leios ([CIP-164]) adds a second signature scheme beside the payment scheme of
the core `Crypto`{.AgdaModule} module; specifically, an epoch's voting committee
signs endorser-block announcements with registered voting keys, and a certificate
encodes a quorum of votes as one aggregate signature.


This module defines the record `LeiosCrypto`{.AgdaRecord}, an extension of
`CryptoStructure`{.AgdaRecord} that adds what Leios needs.  An inhabitant of
`LeiosCrypto`{.AgdaRecord} is included in a `GovStructure`{.AgdaRecord}.

<!--
```agda
{-# OPTIONS --safe #-}
module Ledger.Dijkstra.Specification.Crypto where

open import Ledger.Prelude
open import Relation.Binary using (IsStrictTotalOrder)
open import Ledger.Core.Specification.Crypto
```
-->

## Leios Voting Crypto

The Leios voting scheme is represented in this specification abstractly; we
instantiate it with BLS12-381 MinSig, 96-byte verification keys with 48-byte
signatures and proofs of possession ([Appendix B][cip-cddl]).

```agda
record LeiosCrypto (cs : CryptoStructure) : Type₁ where
  open CryptoStructure cs

  field
    BlsVKey BlsSig BlsPoP  : Type
    isValidPoP             : BlsVKey → BlsPoP → Type
    isSignedByAggregate    : List BlsVKey → Ser → BlsSig → Type
```

Note that the ledger only verifies votes and certificates; it never creates them.

+  `isValidPoP`{.AgdaField} checks a voting key's *proof of possession* (PoP), which
   every registration carries ([Key Registration and Rotation][cip-keyreg]) because
   aggregation is otherwise open to rogue-key attacks.[^1]
+  `isSignedByAggregate`{.AgdaField} verifies a certificate's aggregate signature
   over a message against the keys of the seats that signed; it does not subsume
   the singleton case, since the specification fixes no relation between the two
   predicates.

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
    ⦃ Dec-isSignedByAggregate ⦄  : isSignedByAggregate ⁇³
    ⦃ Dec-<ᵏʰ ⦄                  : _<ᵏʰ_ ⁇²
```
-->

---

[^1]: A key crafted relative to someone else's key could make the aggregate appear
      as if it includes a voter who never signed.

[CIP-164]: https://github.com/cardano-scaling/CIPs/blob/leios/CIP-0164/README.md
[cip-keyreg]: https://github.com/cardano-scaling/CIPs/blob/leios/CIP-0164/README.md#key-registration
[cip-committee]: https://github.com/cardano-scaling/CIPs/blob/leios/CIP-0164/README.md#committee-structure
