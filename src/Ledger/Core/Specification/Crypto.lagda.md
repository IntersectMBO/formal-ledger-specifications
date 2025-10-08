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

-- TODO: KES and VRF
```
-->
