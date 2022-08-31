{-# OPTIONS --safe #-}

open import Relation.Nullary
open import Relation.Nullary.Decidable
open import Relation.Binary.PropositionalEquality
open import Relation.Binary.PropositionalEquality.WithK
open import Relation.Binary hiding (_⇔_)
open import Data.Bool using (Bool; true; false)
open import Data.Nat using (ℕ)
open import Data.Maybe using (Maybe)
open import Data.Maybe.Properties
open import Data.Product
import Data.Product.Properties
open import Data.Empty
open import Data.Sum
import Data.Sum.Properties
open import Function
open import Level

module DecEq where

private variable a : Level
                 A B : Set a

record DecEq {a} (A : Set a) : Set a where
  field
    _≟_ : DecidableEquality A

open DecEq {{...}} public

_≡ᵇ_ : ∀ {a} {A : Set a} → {{DecEq A}} → A → A → Bool
a ≡ᵇ a' = ⌊ a ≟ a' ⌋

≡ᵇ-refl : ∀ {ℓ} {A : Set ℓ} → {{_ : DecEq A}} → {a : A} → a ≡ᵇ a ≡ true
≡ᵇ-refl {a = a} with a ≟ a
... | no ¬p = ⊥-elim (¬p refl)
... | yes p = refl

↔-DecEq : A ↔ B → DecEq A → DecEq B
↔-DecEq A↔B record { _≟_ = _≟_ } ._≟_ b₁ b₂ =
  Relation.Nullary.Decidable.map record
    { to = λ fb₁≡fb₂ → trans (sym $ inverseˡ b₁) (trans (cong to fb₁≡fb₂) (inverseˡ b₂))
    ; from = from-cong
    ; to-cong = λ _ → ≡-irrelevant _ _
    ; from-cong = λ _ → ≡-irrelevant _ _ }
    (from b₁ ≟ from b₂)
    where open Inverse A↔B

instance
  DecEq-Nat : DecEq ℕ
  DecEq-Nat = record { _≟_ = Data.Nat._≟_ }

  DecEq-Maybe : ∀ {a} {A : Set a} → {{DecEq A}} → DecEq (Maybe A)
  DecEq-Maybe {{h}} = record { _≟_ = Data.Maybe.Properties.≡-dec (DecEq._≟_ h) }

  DecEq-Product : ∀ {a} {A B : Set a} → {{DecEq A}} → {{DecEq B}} → DecEq (A × B)
  DecEq-Product {{h}} {{h'}} = record { _≟_ = Data.Product.Properties.≡-dec (DecEq._≟_ h) (DecEq._≟_ h') }

  DecEq-Sum : ∀ {a} {A B : Set a} → {{DecEq A}} → {{DecEq B}} → DecEq (A ⊎ B)
  DecEq-Sum {{h}} {{h'}} = record { _≟_ = Data.Sum.Properties.≡-dec (DecEq._≟_ h) (DecEq._≟_ h') }
