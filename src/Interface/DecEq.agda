{-# OPTIONS --safe #-}

open import Prelude

open import Relation.Binary
open import Relation.Binary.PropositionalEquality.WithK
open import Relation.Nullary
open import Relation.Nullary.Decidable

open import Interface.DecRel

module Interface.DecEq where

private variable ℓ : Level
                 A B : Set ℓ

record DecEq (A : Set ℓ) : Set ℓ where
  infix 4 _≟_
  field
    _≟_ : DecidableEquality A

  open DecRel record { _∼?_ = _≟_ } renaming (_∼ᵇ_ to _≡ᵇ_) public

  ≡ᵇ-refl : {a : A} → a ≡ᵇ a ≡ true
  ≡ᵇ-refl {a = a} with a ≟ a
  ... | no ¬p = ⊥-elim (¬p refl)
  ... | yes p = refl

open DecEq ⦃ ... ⦄ public

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
import Data.Integer

instance
  DecEq-⊥ : DecEq ⊥
  DecEq-⊥ ._≟_ = λ ()

  DecEq-⊤ : DecEq ⊤
  DecEq-⊤ ._≟_ = Data.Unit._≟_

  DecEq-ℕ : DecEq ℕ
  DecEq-ℕ ._≟_ = Data.Nat._≟_

  DecEq-ℤ : DecEq Data.Integer.ℤ
  DecEq-ℤ ._≟_ = Data.Integer._≟_

  DecEq-Maybe : ⦃ DecEq A ⦄ → DecEq (Maybe A)
  DecEq-Maybe ._≟_ = Data.Maybe.Properties.≡-dec _≟_

  DecEq-List : ⦃ DecEq A ⦄ → DecEq (List A)
  DecEq-List ._≟_ = Data.List.Properties.≡-dec _≟_

  DecEq-Product : ⦃ DecEq A ⦄ → ⦃ DecEq B ⦄ → DecEq (A × B)
  DecEq-Product ._≟_ = Data.Product.Properties.≡-dec _≟_ _≟_

  DecEq-Sum : ⦃ DecEq A ⦄ → ⦃ DecEq B ⦄ → DecEq (A ⊎ B)
  DecEq-Sum ._≟_ = Data.Sum.Properties.≡-dec _≟_ _≟_
