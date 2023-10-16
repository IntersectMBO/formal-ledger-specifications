{-# OPTIONS --safe #-}
module Interface.Decidable.Instance where

open import Interface.DecEq
open import Level

open import Data.Bool using (Bool; if_then_else_)
open import Data.Empty
open import Data.Product
open import Data.Unit
open import Data.Sum
open import Data.Maybe
open import Data.Maybe.Relation.Unary.Any

open import Relation.Binary renaming (Decidable to Decidable²)
open import Relation.Binary.PropositionalEquality using (_≡_)
open import Relation.Nullary.Decidable
open import Relation.Unary using () renaming (Decidable to Decidable¹)

private variable
  a b : Level
  A X Y : Set a
  B : Set b

record Dec₁ {a} {A : Set a} (P : A → Set b) : Set (a ⊔ b) where
  field P? : Decidable¹ P

¿_¿ : (P : Set a) → ⦃ Dec P ⦄ → Dec P
¿ _ ¿ ⦃ P? ⦄ = P?

¿_¿ᵇ : (P : Set a) → ⦃ Dec P ⦄ → Bool
¿ _ ¿ᵇ ⦃ P? ⦄ = ⌊ P? ⌋

infix 0 ifᵈ_then_else_
ifᵈ_then_else_ : (P : Set a) → ⦃ Dec P ⦄ → A → A → A
ifᵈ P then t else f = if ⌊ ¿ P ¿ ⌋ then t else f

Dec¹ : (A → Set a) → Set _
Dec¹ P = ∀ {x} → Dec (P x)

Decidable¹⇒Dec : ∀ {P : A → Set a} → Decidable¹ P → Dec¹ P
Decidable¹⇒Dec P = P _

Dec² : (A → A → Set a) → Set _
Dec² _~_ = ∀ {x y} → Dec (x ~ y)

Decidable²⇒Dec : {_~_ : A → A → Set a} → Decidable² _~_ → Dec² _~_
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

  DecEq⇒Dec : ⦃ DecEq X ⦄ → Dec² _≡_
  DecEq⇒Dec ⦃ record { _≟_ = _≟_ } ⦄ {x} {y} = x ≟ y

  Dec-⊎ : ⦃ Dec A ⦄ → ⦃ Dec B ⦄ → Dec (A ⊎ B)
  Dec-⊎ ⦃ yes p ⦄ ⦃ _     ⦄ = yes (inj₁ p)
  Dec-⊎ ⦃ no _  ⦄ ⦃ yes q ⦄ = yes (inj₂ q)
  Dec-⊎ ⦃ no ¬p ⦄ ⦃ no ¬q ⦄ = no λ { (inj₁ p) → ¬p p; (inj₂ q) → ¬q q }

  Dec-IsJust : ∀ {a} {A : Set a} {x : Maybe A} → Dec (Is-just x)
  Dec-IsJust {x = just x} = yes (just _)
  Dec-IsJust {x = nothing} = no λ ()
