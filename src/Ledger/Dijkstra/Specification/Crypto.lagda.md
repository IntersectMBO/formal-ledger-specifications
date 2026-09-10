---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Crypto.lagda.md
---

# Dijkstra Cryptographic Primitives

<!--
```agda

{-# OPTIONS --safe #-}
module Ledger.Dijkstra.Specification.Crypto where

open import Ledger.Prelude
open import Relation.Binary using (IsStrictTotalOrder)
open import Ledger.Core.Specification.Crypto hiding (CryptoStructure)
```
-->

## Leios Voting Crypto

```agda
record CryptoStructure : Type₁ where
  field pkk : PKKScheme

  open PKKScheme pkk public

  field
    ⦃ khs ⦄    : isHashableSet VKey

  open isHashableSet khs renaming (THash to KeyHash) hiding (DecEq-T) public

  field
    ScriptHash  : Type
    VRF         : Type
```

Leios ([CIP-164]) adds a second signature scheme beside the payment scheme
above: an epoch's voting committee signs endorser-block announcements with
registered voting keys, and a certificate compresses a quorum of votes into
one aggregate signature.  The scheme enters the specification abstractly and
verification-only, like `isSigned`{.AgdaField} above; the implementation
instantiates it with BLS12-381 MinSig, 96-byte verification keys with 48-byte
signatures and proofs of possession.  It lives here, beside the payment
scheme, so other protocol extensions that aggregate votes (Peras) can share
it.

```agda
  field
    BlsVKey               : Type
    BlsPoP                : Type
    BlsSig                : Type
    isValidPoP            : BlsVKey → BlsPoP → Type
    isSignedBy            : BlsVKey → Ser → BlsSig → Type
    isSignedByAggregate   : List BlsVKey → Ser → BlsSig → Type
```

`isValidPoP`{.AgdaField} checks a key's *proof of possession*, required with
every registration because aggregation is otherwise open to rogue-key attacks
(a key crafted relative to others' keys, making an aggregate appear to include
voters who never signed).  `isSignedBy`{.AgdaField} verifies a single vote,
the meaning by which consensus filters votes before aggregation;
`isSignedByAggregate`{.AgdaField} verifies a certificate's aggregate signature
against its signers' keys.  Only verification enters the rules: the ledger
never creates votes or certificates, so the scheme has no signing side and no
correctness law relating one.

In Leios the committee consists of a certain number of pools with the largest
stake, with ties broken by pool id.  Therefore the `KeyHash`{AgdaDatatype} type
carries a strict total order, `_<ᵏʰ_`{.AgdaField}, analogous to the
implementation's byte-wise comparison.
(See the [Epoch Boundary section] of [CIP-0164].)

```agda
  -- Byte-wise ascending order on key hashes; the Leios committee tie-break.
  field
    _<ᵏʰ_ : KeyHash → KeyHash → Type
    <ᵏʰ-isSTO : IsStrictTotalOrder _≡_ _<ᵏʰ_
```

## Leios Hashes

Leios also names its objects by hash: `EBHash`{.AgdaField} identifies an
endorser block, `TxRefHash`{.AgdaField} a referenced transaction (the hash of
the complete transaction bytes per [CIP-164] Appendix B, not the body-only
transaction id), and `RBHeaderHash`{.AgdaField} the announcing ranking-block
header; the last is the message a committee vote signs.
`hashEBRefs`{.AgdaField} computes an endorser block's identifier from its
reference list; all four stay abstract, and
`Ledger.Dijkstra.Specification.Leios.Types`{.AgdaModule} records why the
identifier's byte-exact preimage is deliberately unpinned.

```agda
  field
    EBHash        : Type
    TxRefHash     : Type
    RBHeaderHash  : Type
    hashEBRefs    : List (TxRefHash × ℕ) → EBHash
```

<!--
```agda
  field
    ⦃ Dec-<ᵏʰ ⦄                  : _<ᵏʰ_ ⁇²
    ⦃ Dec-isSignedBy ⦄           : isSignedBy ⁇³
    ⦃ Dec-isSignedByAggregate ⦄  : isSignedByAggregate ⁇³
    ⦃ Dec-isValidPoP ⦄           : isValidPoP ⁇²
    ⦃ DecEq-BlsPoP ⦄             : DecEq BlsPoP
    ⦃ DecEq-BlsSig ⦄             : DecEq BlsSig
    ⦃ DecEq-BlsVKey ⦄            : DecEq BlsVKey
    ⦃ DecEq-EBHash ⦄             : DecEq EBHash
    ⦃ DecEq-RBHeaderHash ⦄       : DecEq RBHeaderHash
    ⦃ DecEq-ScriptHash ⦄         : DecEq ScriptHash
    ⦃ DecEq-TxRefHash ⦄          : DecEq TxRefHash
    ⦃ DecEq-VRF ⦄                : DecEq VRF
    ⦃ Show-ScriptHash ⦄          : Show ScriptHash
```
-->


[CIP-164]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md
[Epoch Boundary section]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#epoch-boundary
