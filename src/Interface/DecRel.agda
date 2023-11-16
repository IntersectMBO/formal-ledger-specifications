{-# OPTIONS --safe #-}

open import Relation.Binary

module Interface.DecRel {a b ℓ} {A : Set a} {B : Set b} (_∼_ : REL A B ℓ) where

open import Prelude hiding (_⊔_)

open import Level
open import Relation.Nullary.Decidable

record DecRel : Set (a ⊔ b ⊔ ℓ) where
  infix 4 _∼?_
  field
    _∼?_ : Decidable _∼_

  _∼ᵇ_ : A → B → Bool
  a ∼ᵇ b = ⌊ a ∼? b ⌋
