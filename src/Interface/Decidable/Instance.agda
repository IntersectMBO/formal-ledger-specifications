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
open import Relation.Nullary.Implication
open import Relation.Nullary.Product

private variable a b : Level

¿_¿ : ∀ {p} (P : Set p) → ⦃ _ : Dec P ⦄ → Dec P
¿ _ ¿ ⦃ P? ⦄ = P?

Decidable²⇒Dec : ∀ {a} {A : Set a} {_~_ : A → A → Set a} → Decidable² _~_ → {x y : A} → Dec (x ~ y)
Decidable²⇒Dec _~?_ {x} {y} = x ~? y

instance
  Dec-⊥ : Dec ⊥
  Dec-⊥ = no (λ z → z)

  Dec-⊤ : Dec ⊤
  Dec-⊤ = yes tt

  Dec-→ : {X Y : Set a} → ⦃ Dec X ⦄ → ⦃ Dec Y ⦄ → Dec (X → Y)
  Dec-→ ⦃ X? ⦄ ⦃ Y? ⦄ = X? →-dec Y?

  Dec-× : {X Y : Set a} → ⦃ Dec X ⦄ → ⦃ Dec Y ⦄ → Dec (X × Y)
  Dec-× ⦃ X? ⦄ ⦃ Y? ⦄ = X? ×-dec Y?

  DecEq⇒Dec : {X : Set a} → ⦃ DecEq X ⦄ → {x y : X} → Dec (x ≡ y)
  DecEq⇒Dec ⦃ record { _≟_ = _≟_ } ⦄ {x} {y} = x ≟ y
