---
source_branch: master
source_path: src/Ledger/Conway/Specification/TokenAlgebra/Coin.lagda.md
---

```agda
{-# OPTIONS --safe #-}
open import Ledger.Prelude

module Ledger.Conway.Specification.TokenAlgebra.Coin (X : Type) where

open import Algebra.Morphism.Construct.Identity
  using (isMonoidHomomorphism)

open import Ledger.Conway.Specification.TokenAlgebra.Base X

open TokenAlgebra

Coin-TokenAlgebra : TokenAlgebra
Coin-TokenAlgebra = λ where
  .Value                      → Coin
  .Value-CommutativeMonoid    → it
    -- ^ Agda bug? Without this line, `coinIsMonoidHomomorphism` doesn't type check anymore
  .coin                       → id
  .inject                     → id
  .policies                   → λ _ → ∅
  .size                       → λ x → 1 -- there is only ada in this token algebra
  ._≤ᵗ_                       → _≤_
  .coin∘inject≗id             → λ _ → refl
  .coinIsMonoidHomomorphism   → isMonoidHomomorphism _ refl
```
