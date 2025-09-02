{-# OPTIONS --safe --cubical-compatible #-}
module stdlib.Algebra.Morphism.Construct.DirectProduct where

open import Algebra.Bundles using (RawMonoid)
open import Level using (Level)
open import Relation.Binary.Definitions using (Reflexive)

open import Algebra.Morphism.Construct.DirectProduct hiding (module Monoid-Export) public

private
  variable
    a b c ℓ₁ ℓ₂ ℓ₃ : Level

module Monoid-Export {M : RawMonoid a ℓ₁} {N : RawMonoid b ℓ₂} where
  open Monoid

  private
    module M = RawMonoid M
    module N = RawMonoid N

  module _ {refl : Reflexive M._≈_} where
    proj₁ = Proj₁.isMonoidHomomorphism M N refl
