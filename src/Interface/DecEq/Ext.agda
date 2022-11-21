{-# OPTIONS --safe #-}

open import Prelude

open import Relation.Binary
open import Relation.Binary.PropositionalEquality.WithK
open import Relation.Nullary
open import Relation.Nullary.Decidable

open import Interface.DecRel

module Interface.DecEq.Ext where

open import Interface.DecEq public

private variable ℓ : Level
                 A B : Set ℓ

module _ ⦃ DecEq-A : DecEq A ⦄ where

  open DecRel record { _∼?_ = _≟_ ⦃ DecEq-A ⦄ } renaming (_∼ᵇ_ to _≡ᵇ_) public

  ≡ᵇ-refl : {a : A} → a ≡ᵇ a ≡ true
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
