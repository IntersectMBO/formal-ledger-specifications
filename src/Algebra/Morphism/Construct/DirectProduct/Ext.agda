{-# OPTIONS --safe --cubical-compatible #-}
module Algebra.Morphism.Construct.DirectProduct.Ext where

open import Algebra.Bundles
open import Algebra.Morphism.Bundles
open import Algebra.Morphism.Structures
  using ( module MagmaMorphisms
        ; module MonoidMorphisms
        )
open import Data.Product
open import Level using (Level)
open import Relation.Binary.Morphism.Construct.Identity using (isRelHomomorphism)
open import Relation.Binary.Definitions using (Reflexive)
open import Algebra.Construct.DirectProduct

private
  variable
    c ℓ : Level

------------------------------------------------------------------------
-- Magmas

module _ (M N : RawMagma c ℓ) (open RawMagma M) (refl : Reflexive _≈_) where
  open MagmaMorphisms (rawMagma M N) M

  isMagmaHomomorphism : IsMagmaHomomorphism proj₁
  isMagmaHomomorphism = record
    { isRelHomomorphism = record { cong = λ {x} {y} z → z .proj₁ }
    ; homo              = λ _ _ → refl
    }

------------------------------------------------------------------------
-- Monoids

module _ (M N : RawMonoid c ℓ) (open RawMonoid M) (refl : Reflexive _≈_) where
  open MonoidMorphisms (rawMonoid M N) M

  isMonoidHomomorphism : IsMonoidHomomorphism proj₁
  isMonoidHomomorphism = record
    { isMagmaHomomorphism = isMagmaHomomorphism _ _ refl
    ; ε-homo = refl
    }
