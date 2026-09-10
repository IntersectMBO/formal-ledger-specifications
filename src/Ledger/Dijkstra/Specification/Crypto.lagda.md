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
import Ledger.Core.Specification.Crypto as Core
```
-->

## Leios Voting Crypto

In Leios the committee consists of a certain number of pools with the largest
stake, with ties broken by pool id.  Therefore the `KeyHash`{AgdaDatatype} type
carries a strict total order, the implementation's byte-wise comparison.
(See the [Epoch Boundary section] of [CIP-0164].)

```agda
record CryptoStructure : Type₁ where
  field cs : Core.CryptoStructure

  open Core.CryptoStructure cs public

  field _<ᵏʰ_ : KeyHash → KeyHash → Type
        <ᵏʰ-isSTO : IsStrictTotalOrder _≡_ _<ᵏʰ_
        ⦃ Dec-<ᵏʰ ⦄ : _<ᵏʰ_ ⁇²

  -- BLS12-381 signature scheme used for Leios voting (CIP-0164).
  field BlsVKey BlsSig BlsPoP : Type
        isValidPoP          : BlsVKey → BlsPoP → Type
        isSignedByAggregate : ℙ BlsVKey → Ser → BlsSig → Type
        ⦃ DecEq-BlsVKey ⦄ : DecEq BlsVKey
        ⦃ DecEq-BlsSig  ⦄ : DecEq BlsSig
        ⦃ DecEq-BlsPoP  ⦄ : DecEq BlsPoP
        ⦃ Dec-isValidPoP ⦄ : isValidPoP ⁇²
        ⦃ Dec-isSignedByAggregate ⦄ : isSignedByAggregate ⁇³

```

[CIP-164]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md
[Epoch Boundary section]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#epoch-boundary
