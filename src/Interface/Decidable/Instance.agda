{-# OPTIONS --safe #-}
module Interface.Decidable.Instance where

open import Interface.DecEq
open import Level

open import Data.Bool
open import Data.Empty
open import Data.Product
open import Data.Unit
open import Data.List
open import Data.List.Properties

open import Relation.Binary renaming (Decidable to Decidable²)
open import Relation.Binary.PropositionalEquality
open import Relation.Nullary
open import Relation.Nullary.Decidable
open import Relation.Nullary.Implication
open import Relation.Nullary.Product

private variable a : Level
                 A P X Y : Set a

¿_¿ : (P : Set a) → ⦃ Dec P ⦄ → Dec P
¿ _ ¿ ⦃ P? ⦄ = P?

infix 0 ifᵈ_then_else_
ifᵈ_then_else_ : (P : Set a) → ⦃ Dec P ⦄ → A → A → A
ifᵈ P then t else f = if ⌊ ¿ P ¿ ⌋ then t else f

Decidable²⇒Dec : {_~_ : A → A → Set a} → Decidable² _~_ → {x y : A} → Dec (x ~ y)
Decidable²⇒Dec _~?_ {x} {y} = x ~? y

instance
  Dec-⊥ : Dec ⊥
  Dec-⊥ = no (λ z → z)

  Dec-⊤ : Dec ⊤
  Dec-⊤ = yes tt

  Dec-→ : ⦃ Dec X ⦄ → ⦃ Dec Y ⦄ → Dec (X → Y)
  Dec-→ ⦃ X? ⦄ ⦃ Y? ⦄ = X? →-dec Y?

  Dec-× : ⦃ Dec X ⦄ → ⦃ Dec Y ⦄ → Dec (X × Y)
  Dec-× ⦃ X? ⦄ ⦃ Y? ⦄ = X? ×-dec Y?

  DecEq⇒Dec : ⦃ DecEq X ⦄ → {x y : X} → Dec (x ≡ y)
  DecEq⇒Dec ⦃ record { _≟_ = _≟_ } ⦄ {x} {y} = x ≟ y
