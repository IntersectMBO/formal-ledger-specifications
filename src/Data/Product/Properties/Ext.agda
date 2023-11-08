{-# OPTIONS --safe #-}

module Data.Product.Properties.Ext where

open import Data.Product
open import Data.Product.Function.Dependent.Propositional using (cong)
open import Function
open import Function.Related.Propositional
open import Level
open import Relation.Binary.PropositionalEquality hiding (cong)

private
  variable a a₁ a₂ b₁ b₂ : Level
           k : Kind

∃-cong : {A₁ : Set a₁} {A₂ : Set a₂} {B₁ : A₁ → Set b₁} {B₂ : A₂ → Set b₂} (A₁↔A₂ : A₁ ↔ A₂)
       → (∀ {x} → B₁ x ∼[ k ] B₂ (Inverse.to A₁↔A₂ x))
       → Σ A₁ B₁ ∼[ k ] Σ A₂ B₂
∃-cong A₁↔A₂ h = cong A₁↔A₂ h

∃-cong′ : {A : Set a} {B₁ : A → Set b₁} {B₂ : A → Set b₂}
        → (∀ {x} → B₁ x ∼[ k ] B₂ x)
        → Σ A B₁ ∼[ k ] Σ A B₂
∃-cong′ h = ∃-cong (mk↔ (id , id)) h

∃-≡ : ∀ {A : Set a₁} (P : A → Set a₂) {x} → P x ⇔ (∃[ y ] y ≡ x × P y)
∃-≡ P {x} = mk⇔ (λ Px → x , refl , Px) (λ where (y , (refl , Py)) → Py)
