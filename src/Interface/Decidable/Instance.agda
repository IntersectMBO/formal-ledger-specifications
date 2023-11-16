{-# OPTIONS --safe --without-K #-}
module Interface.Decidable.Instance where

open import Agda.Primitive using (Level; _⊔_; lsuc)

open import Data.Bool using (Bool; if_then_else_)
open import Data.Empty using (⊥)
open import Data.Product using (_×_; Σ)
open import Data.Unit using (⊤; tt)
open import Data.Maybe using (Maybe; just; nothing; Is-just)
open import Data.Maybe.Relation.Unary.Any using (just)
open import Data.Sum using (_⊎_; inj₁; inj₂)
open import Data.Sum.Relation.Unary.All using (inj₁; inj₂) renaming (All to All⊎)
import Data.Rational as ℚ using (_≤_)
import Data.Rational.Properties as ℚ using (_≤?_)

open import Relation.Binary renaming (Decidable to Decidable²)
open import Relation.Binary.PropositionalEquality using (_≡_)
open import Relation.Nullary using (¬_)
open import Relation.Nullary.Decidable
open import Relation.Unary using () renaming (Decidable to Decidable¹)

open import Interface.DecEq

∃Dec : ∀ {ℓ} → Set (lsuc ℓ)
∃Dec {ℓ} = Σ (Set ℓ) Dec

record Dec₁ {a p} {A : Set a} (P : A → Set p) : Set (a ⊔ p) where
  field P? : Decidable¹ P

private variable
  a b p : Level
  X : Set a; P : X → Set p
  Y : Set b; Q : Y → Set p

¿_¿ : (P : Set a) → ⦃ Dec P ⦄ → Dec P
¿ _ ¿ ⦃ P? ⦄ = P?

¿_¿ᵇ : (P : Set a) → ⦃ Dec P ⦄ → Bool
¿ _ ¿ᵇ ⦃ P? ⦄ = ⌊ P? ⌋

infix 0 ifᵈ_then_else_
ifᵈ_then_else_ : (P : Set a) → ⦃ Dec P ⦄ → ({_ : P} → X) → ({_ : ¬ P} → X) → X
ifᵈ P then t else f with ¿ P ¿
... | yes p = t {p}
... | no ¬p = f {¬p}

Dec¹ : (X → Set a) → Set _
Dec¹ P = ∀ {x} → Dec (P x)

Decidable¹⇒Dec : ∀ {P : X → Set a} → Decidable¹ P → Dec¹ P
Decidable¹⇒Dec P = P _

Dec² : (X → Y → Set a) → Set _
Dec² _~_ = ∀ {x y} → Dec (x ~ y)

Decidable²⇒Dec : {_~_ : X → Y → Set a} → Decidable² _~_ → Dec² _~_
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

  Dec-⊎ : ⦃ Dec X ⦄ → ⦃ Dec Y ⦄ → Dec (X ⊎ Y)
  Dec-⊎ ⦃ yes p ⦄ ⦃ _     ⦄ = yes (inj₁ p)
  Dec-⊎ ⦃ no _  ⦄ ⦃ yes q ⦄ = yes (inj₂ q)
  Dec-⊎ ⦃ no ¬p ⦄ ⦃ no ¬q ⦄ = no λ { (inj₁ p) → ¬p p; (inj₂ q) → ¬q q }

  Dec-IsJust : ∀ {a} {A : Set a} {x : Maybe A} → Dec (Is-just x)
  Dec-IsJust {x = just x} = yes (just _)
  Dec-IsJust {x = nothing} = no λ ()

  Dec-SumAll : ∀ {x/y : X ⊎ Y}
    → ⦃ ∀ {x : X} → Dec (P x) ⦄ → ⦃ ∀ {y : Y} → Dec (Q y) ⦄ → Dec (All⊎ P Q x/y)
  Dec-SumAll {P = P} {x/y = inj₁ x}
    with ¿ P x ¿
  ... | yes px = yes (inj₁ px)
  ... | no ¬px = no  λ where (inj₁ px) → ¬px px
  Dec-SumAll {Q = Q} {x/y = inj₂ y}
    with ¿ Q y ¿
  ... | yes qy = yes (inj₂ qy)
  ... | no ¬qy = no  λ where (inj₂ qy) → ¬qy qy

  Dec-ℚ≤ : ∀ {q r} → Dec (q ℚ.≤ r)
  Dec-ℚ≤ = Decidable²⇒Dec ℚ._≤?_
