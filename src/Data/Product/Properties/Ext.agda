{-# OPTIONS --safe #-}

module Data.Product.Properties.Ext where

import Function.Inverse as I
import Function.Related.Propositional as R
open import Data.Product
open import Data.Product.Function.Dependent.Propositional using (cong)
open import Function
open import Function.Equality using (_⟶_; _⟨$⟩_)
open import Function.Related
open import Level
open import Relation.Binary.PropositionalEquality hiding (cong)

private
  variable a a₁ a₂ b₁ b₂ : Level
           k : Kind

∃-cong : {A₁ : Set a₁} {A₂ : Set a₂} {B₁ : A₁ → Set b₁} {B₂ : A₂ → Set b₂} (A₁↔A₂ : I._↔_ A₁ A₂)
       → (∀ {x} → B₁ x R.∼[ k ] B₂ (I.Inverse.to A₁↔A₂ ⟨$⟩ x))
       → Σ A₁ B₁ R.∼[ k ] Σ A₂ B₂
∃-cong A₁↔A₂ h = fromRelated (cong A₁↔A₂ (toRelated h))

∃-cong′ : {A : Set a} {B₁ : A → Set b₁} {B₂ : A → Set b₂}
        → (∀ {x} → B₁ x R.∼[ k ] B₂ x)
        → Σ A B₁ R.∼[ k ] Σ A B₂
∃-cong′ h = ∃-cong (I.id) h

∃-≡ : ∀ {A : Set a₁} (P : A → Set a₂) {x} → P x ⇔ (∃[ y ] y ≡ x × P y)
∃-≡ P {x} = mk⇔ (λ Px → x , refl , Px) (λ where (y , (refl , Py)) → Py)
