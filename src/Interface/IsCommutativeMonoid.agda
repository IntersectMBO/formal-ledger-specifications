{-# OPTIONS --safe #-}

module Interface.IsCommutativeMonoid where

open import Algebra
open import Prelude

record IsCommutativeMonoid' c ℓ Carrier : Set (sucˡ (c ⊔ˡ ℓ)) where
  infixl 7 _∙_
  infix  4 _≈_
  field
    _≈_                 : Carrier → Carrier → Set ℓ
    _∙_                 : Carrier → Carrier → Carrier
    ε                   : Carrier
    isCommutativeMonoid : IsCommutativeMonoid {c} _≈_ _∙_ ε

fromCommMonoid' : ∀ {c ℓ Carrier} → IsCommutativeMonoid' c ℓ Carrier → CommutativeMonoid c ℓ
fromCommMonoid' c = record { IsCommutativeMonoid' c }

toCommMonoid' : ∀ {c ℓ} → (m : CommutativeMonoid c ℓ) → IsCommutativeMonoid' c ℓ (CommutativeMonoid.Carrier m)
toCommMonoid' c = record { CommutativeMonoid c }

open import Data.Nat.Properties using (+-0-commutativeMonoid)

instance
  ℕ-commMonoid' = toCommMonoid' +-0-commutativeMonoid
