---
source_branch: master
source_path: src/Ledger/Conway/Specification/TokenAlgebra/Base.lagda
---

# Token Algebras {#sec:token-algebra}

Token algebras are used for multiple assets.

<!--
```agda
{-# OPTIONS --safe #-}
open import Prelude using (Type)
module Ledger.Conway.Specification.TokenAlgebra.Base (
```
-->
 *Abstract types*
```agda
  PolicyId
```
<!--
```agda
  : Type) where
open import Ledger.Prelude

open import Algebra              using (Monoid)
open import Algebra.Morphism     using (module MonoidMorphisms )
open import Data.Nat.Properties  using (+-0-monoid)
open import Relation.Binary      using (Rel)
open import Relation.Unary       using (Pred)

MemoryEstimate : Set
MemoryEstimate = ℕ
```
-->

*Derived types*
```agda
record TokenAlgebra : Type₁ where
  field
    Value : Set
    ⦃ Value-CommutativeMonoid ⦄ : CommutativeMonoid 0ℓ 0ℓ Value
```

<!--
```agda
  open Algebra.CommutativeMonoid (Conversion.toBundle Value-CommutativeMonoid) public
    using (_≈_ ; ε ; monoid ; rawMonoid)
    renaming (_∙_ to _+ᵛ_)

  open MonoidMorphisms (rawMonoid) (Monoid.rawMonoid +-0-monoid) public
  field
```
-->

```agda

    coin                      : Value → Coin
    inject                    : Coin → Value
    policies                  : Value → ℙ PolicyId
    size                      : Value → MemoryEstimate
    _≤ᵗ_                      : Value → Value → Type
    coin∘inject≗id            : coin ∘ inject ≗ id
    coinIsMonoidHomomorphism  : IsMonoidHomomorphism coin
```

<!--
```agda

    ⦃ DecEq-Value ⦄ : DecEq Value
    ⦃ Dec-≤ᵗ ⦄      : _≤ᵗ_ ⁇²

  instance
    addValue : HasAdd Value
    addValue = record { _+_ = _+ᵛ_ }

  coin-inject-lemma : ∀ {val} {c} → coin (val + inject c) ≡ coin val + c
  coin-inject-lemma {val} {c} = begin
    coin (val + inject c)         ≡⟨ homo coinIsMonoidHomomorphism val (inject c) ⟩
    coin val + (coin ∘ inject) c  ≡⟨ cong (coin val +_) (coin∘inject≗id c) ⟩
    coin val + c                  ∎
    where
    open ≡-Reasoning
    open MonoidMorphisms.IsMonoidHomomorphism
```
-->


*Helper functions*
```agda
  sumᵛ : List Value → Value
  sumᵛ [] = inject 0
  sumᵛ (x ∷ l) = x + sumᵛ l
```
