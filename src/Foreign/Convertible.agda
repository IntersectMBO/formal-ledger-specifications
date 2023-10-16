module Foreign.Convertible where

open import Ledger.Prelude

record Convertible (A B : Set) : Set where
  field to   : A → B
        from : B → A
open Convertible ⦃...⦄ public

Convertible-Refl : ∀ {A} → Convertible A A
Convertible-Refl = λ where .to → id; .from → id

Convertible₁ : (Set → Set) → (Set → Set) → Set₁
Convertible₁ T U = ∀ {A B} → ⦃ Convertible A B ⦄ → Convertible (T A) (U B)

Convertible₂ : (Set → Set → Set) → (Set → Set → Set) → Set₁
Convertible₂ T U = ∀ {A B} → ⦃ Convertible A B ⦄ → Convertible₁ (T A) (U B)

-- ** instances

Functor⇒Convertible : ∀ {F : Type↑} → ⦃ Functor F ⦄ → Convertible₁ F F
Functor⇒Convertible = λ where
  .to   → map to
  .from → map from

Bifunctor⇒Convertible : ∀ {F} → ⦃ Bifunctor F ⦄ → Convertible₂ F F
Bifunctor⇒Convertible = λ where
  .to   → bimap to to
  .from → bimap from from

open import Foreign.Haskell
open import Foreign.Haskell.Coerce using (coerce)

instance
  Convertible-Maybe : Convertible₁ Maybe Maybe
  Convertible-Maybe = Functor⇒Convertible

  Convertible-× : Convertible₂ _×_ _×_
  Convertible-× = Bifunctor⇒Convertible

  Convertible-Pair : Convertible₂ _×_ Pair
  Convertible-Pair = λ where
    .to   → coerce ∘ bimap to to
    .from → bimap from from ∘ coerce

  Convertible-⊎ : Convertible₂ _⊎_ _⊎_
  Convertible-⊎ = Bifunctor⇒Convertible

  Convertible-Either : Convertible₂ _⊎_ Either
  Convertible-Either = λ where
    .to   → coerce ∘ bimap to to
    .from → bimap from from ∘ coerce

  Convertible-FinSet : Convertible₁ ℙ_ List
  Convertible-FinSet = λ where
    .to   → map to   ∘ setToList
    .from → fromList ∘ map from

  Convertible-Map : ∀ {K K' V V'} → ⦃ DecEq K ⦄
    → ⦃ Convertible K K' ⦄ → ⦃ Convertible V V' ⦄
    → Convertible (K ⇀ V) (List $ Pair K' V')
  Convertible-Map = λ where
    .to   → to        ∘ proj₁
    .from → fromListᵐ ∘ map from
