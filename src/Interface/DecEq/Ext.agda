{-# OPTIONS --safe #-}

open import Prelude

open import Relation.Binary
open import Relation.Binary.PropositionalEquality.WithK
open import Relation.Nullary
open import Relation.Nullary.Decidable

open import Interface.DecRel
open import Interface.Decidable.Instance

module Interface.DecEq.Ext where

open import Interface.DecEq public

open import Data.Rational using (ℚ)

instance
  DecEq-Bool = DecEq Bool ∋ record {M} where import Data.Bool.Properties as M
  DecEq-ℚ    = DecEq ℚ    ∋ record {M} where import Data.Rational.Properties as M
  DecEq-Vis  = DecEq M.Visibility ∋ record {M}
    where import Reflection.AST.Argument.Visibility as M

private variable
  ℓ : Level
  A B : Set ℓ

module _ ⦃ DecEq-A : DecEq A ⦄ where

  open DecRel record { _∼?_ = _≟_ ⦃ DecEq-A ⦄ } renaming (_∼ᵇ_ to _≡ᵇ_) public

  ≡ᵇ-refl : {a : A} → a ≡ᵇ a ≡ true
  ≡ᵇ-refl {a = a} with a ≟ a
  ... | no ¬p = ⊥-elim (¬p refl)
  ... | yes p = refl

  open import Data.List.Membership.DecPropositional (_≟_ {A = A}) public
    using () renaming (_∈?_ to _∈ˡ?_; _∉?_ to _∉ˡ?_)

  instance Dec-∈ˡ = Decidable²⇒Dec _∈ˡ?_

  _∈ˡᵇ_ : A → List A → Bool
  _∈ˡᵇ_ = ⌊_⌋ ∘₂ _∈ˡ?_

↔-DecEq : A ↔ B → DecEq A → DecEq B
↔-DecEq A↔B record { _≟_ = _≟_ } ._≟_ b₁ b₂ =
  Relation.Nullary.Decidable.map record
    { to = λ fb₁≡fb₂ → trans (sym $ inverseˡ refl) (inverseˡ fb₁≡fb₂)
    ; from = from-cong
    ; to-cong = λ _ → ≡-irrelevant _ _
    ; from-cong = λ _ → ≡-irrelevant _ _ }
    (from b₁ ≟ from b₂)
    where open Inverse A↔B
