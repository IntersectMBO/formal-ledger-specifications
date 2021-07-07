{-# OPTIONS --without-K --safe #-}

open import Relation.Nullary
open import Relation.Nullary.Decidable
open import Relation.Binary.PropositionalEquality
open import Relation.Binary
open import Data.Bool using (Bool; true; false)
open import Data.Nat using (ℕ)
open import Data.Maybe using (Maybe)
open import Data.Maybe.Properties
open import Data.Product
import Data.Product.Properties
open import Data.Empty

module DecEq where

record DecEq (A : Set) : Set where
  field
    _≟_ : DecidableEquality A

open DecEq {{...}} public

_≡ᵇ_ : ∀ {A} → {{DecEq A}} → A → A → Bool
a ≡ᵇ a' = ⌊ a ≟ a' ⌋

≡ᵇ-refl : ∀ {A} → {{_ : DecEq A}} → {a : A} → a ≡ᵇ a ≡ true
≡ᵇ-refl {_} {a} with a ≟ a
... | no ¬p = ⊥-elim (¬p refl)
... | yes p = refl

instance
  DecEq-Nat : DecEq ℕ
  DecEq-Nat = record { _≟_ = Data.Nat._≟_ }

  DecEq-Maybe : ∀ {A} → {{DecEq A}} → DecEq (Maybe A)
  DecEq-Maybe {{h}} = record { _≟_ = Data.Maybe.Properties.≡-dec (DecEq._≟_ h) }

  DecEq-Product : ∀ {A B} → {{DecEq A}} → {{DecEq B}} → DecEq (A × B)
  DecEq-Product {{h}} {{h'}} = record { _≟_ = Data.Product.Properties.≡-dec (DecEq._≟_ h) (DecEq._≟_ h') }
