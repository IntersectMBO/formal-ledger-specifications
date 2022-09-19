{-# OPTIONS --safe #-}

open import Prelude

open import Relation.Binary hiding (_⇔_)
open import Relation.Binary.PropositionalEquality.WithK
open import Relation.Nullary
open import Relation.Nullary.Decidable

module Interface.DecEq where

private variable a : Level
                 A B : Set a

record DecEq {a} (A : Set a) : Set a where
  infix 4 _≟_
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

import Data.List.Properties
import Data.Maybe.Properties
import Data.Product.Properties
import Data.Sum.Properties
import Data.Nat
import Data.Unit

instance
  DecEq-⊥ : DecEq ⊥
  DecEq-⊥ = record { _≟_ = λ () }

  DecEq-⊤ : DecEq ⊤
  DecEq-⊤ = record { _≟_ = Data.Unit._≟_ }

  DecEq-ℕ : DecEq ℕ
  DecEq-ℕ = record { _≟_ = Data.Nat._≟_ }

  DecEq-Maybe : ∀ {a} {A : Set a} → {{DecEq A}} → DecEq (Maybe A)
  DecEq-Maybe {{h}} = record { _≟_ = Data.Maybe.Properties.≡-dec (DecEq._≟_ h) }

  DecEq-List : ∀ {a} {A : Set a} → {{DecEq A}} → DecEq (List A)
  DecEq-List {{h}} = record { _≟_ = Data.List.Properties.≡-dec (DecEq._≟_ h) }

  DecEq-Product : ∀ {a} {A B : Set a} → {{DecEq A}} → {{DecEq B}} → DecEq (A × B)
  DecEq-Product {{h}} {{h'}} = record { _≟_ = Data.Product.Properties.≡-dec (DecEq._≟_ h) (DecEq._≟_ h') }

  DecEq-Sum : ∀ {a} {A B : Set a} → {{DecEq A}} → {{DecEq B}} → DecEq (A ⊎ B)
  DecEq-Sum {{h}} {{h'}} = record { _≟_ = Data.Sum.Properties.≡-dec (DecEq._≟_ h) (DecEq._≟_ h') }
