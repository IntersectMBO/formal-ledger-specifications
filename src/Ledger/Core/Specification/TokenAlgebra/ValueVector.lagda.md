---
source_branch: master
source_path: src/Ledger/Core/Specification/TokenAlgebra/ValueVector.lagda.md
---

```agda
{-# OPTIONS --safe #-}
open import Ledger.Prelude hiding (_∙_; ε)

module Ledger.Core.Specification.TokenAlgebra.ValueVector (PolicyId : Type) (n : ℕ) where

import Algebra as Alg
open import Algebra.Construct.DirectProduct
open import stdlib.Algebra.Morphism.Construct.DirectProduct
open import Data.Nat.Properties using (+-0-commutativeMonoid)
import Data.Product.Relation.Binary.Pointwise.NonDependent as Product
open import Data.Vec as Vec
  hiding (fromList)
import stdlib.Data.Vec.Instances as Vec
import Data.Vec.Relation.Binary.Pointwise.Inductive as Vec

open import Ledger.Core.Specification.TokenAlgebra.Base PolicyId

Quantity = ℕ

Vec-commutativeMonoid = Vec.commutativeMonoid n +-0-commutativeMonoid

module +-0-commutativeMonoid = Alg.CommutativeMonoid +-0-commutativeMonoid
module Vec-commutativeMonoid = Alg.CommutativeMonoid Vec-commutativeMonoid

module _ (Policies : Vec PolicyId n) where
  Value-TokenAlgebra : TokenAlgebra
  Value-TokenAlgebra = record {go}
    where
      module go where
        Value : Type
        Value = Coin × Vec Quantity n

        Value-CommutativeMonoid : CommutativeMonoid 0ℓ 0ℓ Value
        Value-CommutativeMonoid = Conversion.fromBundle (commutativeMonoid +-0-commutativeMonoid Vec-commutativeMonoid)

        coin : Value → Coin
        coin = proj₁

        inject : Coin → Value
        inject c = c , Vec.replicate n 0

        policies                   = λ _ → fromList (toList Policies)
        size                       = λ _ → 1 + n
        _≤ᵗ_                       = Product.Pointwise _≤_ (Vec.Pointwise _≤_)

        coin∘inject≗id             = λ _ → refl
        coinIsMonoidHomomorphism   = Monoid-Export.proj₁ {refl = refl}

        Dec-≤ᵗ : _≤ᵗ_ ⁇²
        Dec-≤ᵗ {(c₁ , v₁)} {(c₂ , v₂)} = Dec-× ⦃ ℕ-Dec-≤ ⦄ ⦃ ⁇ Vec.decidable dec² v₁ v₂ ⦄
```
