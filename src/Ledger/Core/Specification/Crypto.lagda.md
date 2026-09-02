---
source_branch: master
source_path: src/Ledger/Core/Specification/Crypto.lagda.md
---

# Cryptographic Primitives {#sec:cryptographic-primitives}

We rely on a public key signing scheme for verification of spending.
This section shows some of the types, functions and properties of this scheme.

<!--
```agda

{-# OPTIONS --safe #-}
module Ledger.Core.Specification.Crypto where

open import Ledger.Prelude hiding (T)
open import Ledger.Prelude.Numeric.UnitInterval
open import Relation.Binary using (IsStrictTotalOrder)

record isHashableSet (T : Type) : Type₁ where
  constructor mkIsHashableSet
  field THash : Type
        ⦃ DecEq-THash ⦄ : DecEq      THash
        ⦃ Show-THash  ⦄ : Show       THash
        ⦃ DecEq-T     ⦄ : DecEq    T
        ⦃ T-Hashable  ⦄ : Hashable T THash
open isHashableSet

record HashableSet : Type₁ where
  constructor mkHashableSet
  field T : Type; ⦃ T-isHashable ⦄ : isHashableSet T
  open isHashableSet T-isHashable public
```
-->

## Public Key Signature Scheme Definitions

<!--
```agda
record PKKScheme : Type₁ where
  field
```
-->
*Types & functions*
```agda
    SKey VKey Sig Ser  : Type
    isKeyPair          : SKey → VKey → Type
    isSigned           : VKey → Ser → Sig → Type
    sign               : SKey → Ser → Sig

  KeyPair = Σ[ sk ∈ SKey ] Σ[ vk ∈ VKey ] isKeyPair sk vk
```
<!--
```agda
  field
    ⦃ Dec-isSigned ⦄ : isSigned ⁇³
```
-->
*Property of signatures*
```agda
    isSigned-correct  : ((sk , vk , _) : KeyPair) (d : Ser) (σ : Sig)
                      → sign sk d ≡ σ → isSigned vk d σ
```

<!--
```agda
    ⦃ DecEq-Sig  ⦄ : DecEq Sig
    ⦃ DecEq-Ser  ⦄ : DecEq Ser

record CryptoStructure : Type₁ where
  field pkk : PKKScheme

  open PKKScheme pkk public

  field ⦃ khs ⦄    : isHashableSet VKey
        ScriptHash : Type; ⦃ DecEq-ScriptHash ⦄ : DecEq ScriptHash ; ⦃ Show-ScriptHash ⦄ : Show ScriptHash

  open isHashableSet khs renaming (THash to KeyHash) hiding (DecEq-T) public

  field VRF : Type
        ⦃ DecEq-VRF ⦄ : DecEq VRF
```
-->

## Leios Voting Crypto

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
  field BlsVKey BlsSig BlsPoP : Type
        isValidPoP          : BlsVKey → BlsPoP → Type
        isSignedBy          : BlsVKey → Ser → BlsSig → Type
        isSignedByAggregate : List BlsVKey → Ser → BlsSig → Type
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

The committee orders pools by stake, ties broken by ascending pool id, so the
key-hash type carries a strict total order, the implementation's byte-wise
comparison:

```agda
  field _<ᵏʰ_ : KeyHash → KeyHash → Type
        <ᵏʰ-isSTO : IsStrictTotalOrder _≡_ _<ᵏʰ_
```

<!--
```agda
  field ⦃ Dec-<ᵏʰ ⦄ : _<ᵏʰ_ ⁇²
        ⦃ DecEq-BlsVKey ⦄ : DecEq BlsVKey
        ⦃ DecEq-BlsSig  ⦄ : DecEq BlsSig
        ⦃ DecEq-BlsPoP  ⦄ : DecEq BlsPoP
        ⦃ Dec-isValidPoP ⦄ : isValidPoP ⁇²
        ⦃ Dec-isSignedBy ⦄ : isSignedBy ⁇³
        ⦃ Dec-isSignedByAggregate ⦄ : isSignedByAggregate ⁇³

-- TODO: KES
```
-->

[CIP-164]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md
