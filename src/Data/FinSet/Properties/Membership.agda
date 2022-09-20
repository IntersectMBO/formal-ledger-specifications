{-# OPTIONS --safe #-}

import Function.Related.Propositional as P
open import Data.Bool hiding (_≟_)
open import Data.FinSet
open import Data.FinSet.Core
open import Data.List hiding (filter)
open import Data.List.Properties
open import Data.Product
open import Data.Sum
open import FiniteSubset hiding (_∪_; _∩_; fromList)
open import Function
open import Interface.DecEq
open import Relation.Binary.PropositionalEquality using (subst; sym; refl; _≡_; inspect; [_]; cong; trans)
open import Relation.Nullary
open import Relation.Nullary.Decidable
open import Utilities.ListProperties renaming (_∈_ to _∈l_)
open import Utilities.ListsAddition hiding (filter)

module Data.FinSet.Properties.Membership {A : Set} {{h : DecEq A}} where

private variable
  a : A
  l : List A
  s s' s'' : FinSet A

∈⇒∈l : a ∈ s → a ∈l (elements s)
∈⇒∈l = id

∈l⇒∈ : a ∈l (elements s) → a ∈ s
∈l⇒∈ = id

∈l⇒∈fromList : a ∈l l → a ∈ fromList l
∈l⇒∈fromList h = ∈l→∈fromList _ _ false h

∈fromList⇒∈l : a ∈ fromList l → a ∈l l
∈fromList⇒∈l h = ∈fromList→∈l _ _ false h

∈∪⇒∈⊎ : a ∈ s ∪ s' → a ∈ s ⊎ a ∈ s'
∈∪⇒∈⊎ h = ∈-split (remDupComplete _ _ _ h)

∈⊎⇒∈∪ : a ∈ s ⊎ a ∈ s' → a ∈ s ∪ s'
∈⊎⇒∈∪ h = remDupSound (eq2in _≟_) _ _ (∈-join h)

∈⊎⇔∈∪ : (a ∈ s ⊎ a ∈ s') ⇔ a ∈ s ∪ s'
∈⊎⇔∈∪ {s = s} {s'} = mk⇔ (∈⊎⇒∈∪ {s = s} {s' = s'}) (∈∪⇒∈⊎ {s = s} {s' = s'})

∈×⇒∈∩ : (a ∈ s × a ∈ s') → a ∈ s ∩ s'
∈×⇒∈∩ {a} {s} {s'} (h₁ , h₂) =
  set-monad-ht a s (λ x → for y ∈ s' as true , if ⌊ x ≟ y ⌋ then return {b = true} x) a false h₁ $
    set-monad-ht a s' (λ y → if ⌊ a ≟ y ⌋ then return {b = true} a) a true h₂ $
      subst (λ b → a ∈l listOf (if b then return a)) (sym $ ≡ᵇ-refl {a = a}) (here refl)

∈∩⇒∈× : a ∈ s ∩ s' → a ∈ s × a ∈ s'
∈∩⇒∈× {a} {s} {s'} h with set-monad-th a s (λ x → for y ∈ s' as true , if ⌊ x ≟ y ⌋ then return {b = true} x) false h
... | a₁ , h₁ , h₂ with set-monad-th a s' (λ y → if ⌊ a₁ ≟ y ⌋ then return {b = true} a₁) true h₂
... | a₂ , h'₁ , h'₂ with a₁ ≟ a₂
... | no ¬p = case h'₂ of λ ()
... | yes p with h'₂
... | (here refl) = (h₁ , subst (λ x → x ∈l listOf s') (sym p) h'₁)

∈×⇔∈∩ : (a ∈ s × a ∈ s') ⇔ a ∈ s ∩ s'
∈×⇔∈∩ {s = s} {s'} = mk⇔ (∈×⇒∈∩ {s = s} {s' = s'}) (∈∩⇒∈× {s = s} {s' = s'})

∈-⊎↔∪≡ : (∀ a → (a ∈ s ⊎ a ∈ s') ⇔ a ∈ s'') → s ∪ s' ≡ᵉ s''
∈-⊎↔∪≡ {s} {s'} {s''} h a =
  a ∈ s ∪ s'       ∼⟨ P.SK-sym (∈⊎⇔∈∪ {s = s} {s' = s'}) ⟩
  (a ∈ s ⊎ a ∈ s') ∼⟨ h a ⟩
  a ∈ s''          ∎
  where open P.EquationalReasoning
  
∈-×↔∩≡ : (∀ a → (a ∈ s × a ∈ s') ⇔ a ∈ s'') → s ∩ s' ≡ᵉ s''
∈-×↔∩≡ {s} {s'} {s''} h a =
  a ∈ s ∩ s'       ∼⟨ P.SK-sym (∈×⇔∈∩ {s = s} {s' = s'}) ⟩
  (a ∈ s × a ∈ s') ∼⟨ h a ⟩
  a ∈ s''          ∎
  where open P.EquationalReasoning
  
∈→filter' : {P : A → Set} → (P? : ∀ a → Dec (P a)) → (a : A) → a ∈l l → P a → a ∈l Data.List.filter P? l
∈→filter' {x ∷ l} P? .x (here refl) h' rewrite filter-accept P? {xs = l} h' = here refl
∈→filter' {x ∷ l} P? a (there h) h' with P? x
... | no ¬p = ∈→filter' P? a h h'
... | yes p = there $ ∈→filter' P? a h h'

∈→filter : {P : A → Set} → (P? : ∀ a → Dec (P a)) → (a : A) → a ∈ s → P a → a ∈ filter P? s
∈→filter P? a h h' = ∈l⇒∈fromList $ ∈→filter' P? a h h'

filter→∈' : {P : A → Set} → (P? : ∀ a → Dec (P a)) → (a : A) → a ∈l Data.List.filter P? l → a ∈l l × P a
filter→∈' {x ∷ l} P? a h with P? x
... | no ¬p = Data.Product.map₁ there (filter→∈' P? a h)
filter→∈' {x ∷ l} P? .x (here refl) | yes p = here refl , p
filter→∈' {x ∷ l} P? a (there h) | yes p = Data.Product.map₁ there (filter→∈' P? a h)

filter→∈ : {P : A → Set} → (P? : ∀ a → Dec (P a)) → (a : A) → a ∈ filter P? s → a ∈ s × P a
filter→∈ P? a h = filter→∈' P? a (∈fromList⇒∈l h)

∈filter : {P : A → Set} → (P? : ∀ a → Dec (P a)) → (a : A) → (a ∈ s × P a) ⇔ a ∈ filter P? s
∈filter {s} P? a = mk⇔ (λ { (h , h') → ∈→filter {s = s} P? a h h' }) (filter→∈ {s = s} P? a)

∈-∅ : ∀ {x} → ¬ x ∈ (∅ {{h}})
∈-∅ ()
