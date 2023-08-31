{-# OPTIONS --safe #-}

module Interface.STS where

open import Prelude

infix -150 ∙_
infixr -100 _∙_

∙_ : Set → Set
∙ A = A

_∙_ : Set → Set → Set
A ∙ B = A → B

infix -50 _────────────────────────────────_
_────────────────────────────────_ : Set → Set → Set
A ──────────────────────────────── B = A → B

infix -50 _───────────────────────────────────────_
_───────────────────────────────────────_ : Set → Set → Set
A ─────────────────────────────────────── B = A → B

private
  variable C S Sig : Set
           Γ : C
           s s' s'' : S
           sig : Sig
           sigs : List Sig

-- small-step to big-step transformer

module _ (_⊢_⇀_ : C → S → S → Set) (_⊢_⇀⟦_⟧_ : C × ℕ → S → Sig → S → Set) where
  data _⊢_⇀⟦_⟧*_ : C → S → List Sig → S → Set where

    BS-base :
      ∙ Γ ⊢ s ⇀ s'
      ───────────────────────────────────────
      Γ ⊢ s ⇀⟦ [] ⟧* s'

    BS-ind :
      ∙ (Γ , length sigs) ⊢ s  ⇀⟦ sig  ⟧  s'
      ∙  Γ                ⊢ s' ⇀⟦ sigs ⟧* s''
      ───────────────────────────────────────
      Γ ⊢ s ⇀⟦ sig ∷ sigs ⟧* s''

-- with a trivial base case
SS⇒BS : (C × ℕ → S → Sig → S → Set) → C → S → List Sig → S → Set
SS⇒BS {C} {S} {Sig} = _⊢_⇀⟦_⟧*_ {C} {S} {Sig} (λ _ → _≡_)

-- with a given base case
SS⇒BSᵇ = _⊢_⇀⟦_⟧*_
