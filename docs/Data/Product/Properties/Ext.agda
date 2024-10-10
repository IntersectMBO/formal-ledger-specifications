{-# OPTIONS --safe #-}

module Data.Product.Properties.Ext where

open import Data.Product
open import Data.Product.Function.Dependent.Propositional renaming (cong to ∃-cong)
open import Function
open import Function.Related.Propositional
open import Level
open import Relation.Binary.PropositionalEquality hiding (cong; [_])
open import Data.Product.Base as Prod
open import Data.Sum.Base
open import Relation.Binary.PropositionalEquality.Core as P using (_≡_)

private variable
  ℓ ℓ′ : Level
  A B C : Set ℓ
  a a₁ a₂ b₁ b₂ : Level
  k : Kind

∃-cong′ : {A : Set a} {B₁ : A → Set b₁} {B₂ : A → Set b₂}
        → (∀ {x} → B₁ x ∼[ k ] B₂ x)
        → Σ A B₁ ∼[ k ] Σ A B₂
∃-cong′ = ∃-cong (mk↔ (id , id))

∃-≡ : ∀ {A : Set a₁} (P : A → Set a₂) {x} → P x ⇔ (∃[ y ] y ≡ x × P y)
∃-≡ P {x} = mk⇔ (λ Px → x , refl , Px) (λ where (y , (refl , Py)) → Py)

∃-distrib-⊎ : {P : A → Set ℓ} {Q : A → Set ℓ′} → (∃[ a ] (P a ⊎ Q a)) ↔ (∃[ a ] P a ⊎ ∃[ a ] Q a)
∃-distrib-⊎ = mk↔ₛ′
  (uncurry λ x → [ inj₁ ∘′ (x ,_) , inj₂ ∘′ (x ,_) ]′)
  [ Prod.map₂ inj₁ , Prod.map₂ inj₂ ]′
  [ (λ _ → P.refl) , (λ _ → P.refl) ]
  (uncurry λ _ → [ (λ _ → P.refl) , (λ _ → P.refl) ])

-- the version in Function.Related.TypeIsomorphisms isn't level-polymorphic enough
×-distribˡ-⊎' : (A × (B ⊎ C)) ↔ (A × B ⊎ A × C)
×-distribˡ-⊎' = ∃-distrib-⊎

×-⇔-swap : (A × B × C) ⇔ (B × A × C)
×-⇔-swap {A = A}{B = B}{C = C} = let open EquationalReasoning in
  (A × B × C) ∼⟨ mk⇔ (λ x → (proj₁ ∘ proj₂) x , proj₁ x , (proj₂ ∘ proj₂) x)
                     (λ x → (proj₁ ∘ proj₂) x , proj₁ x , (proj₂ ∘ proj₂) x) ⟩
  (B × A × C) ∎
