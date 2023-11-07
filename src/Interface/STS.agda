{-# OPTIONS --safe #-}

module Interface.STS where

open import Prelude

open import Interface.Bifunctor

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

infix -50 ───────────────────────────────────────_
───────────────────────────────────────_ : Set → Set
─────────────────────────────────────── B = B

private
  variable C S Sig : Set
           Γ : C
           s s' s'' : S
           sig : Sig
           sigs : List Sig

-- small-step to big-step transformer

module _ (_⊢_⇀⟦_⟧ᵇ_ : C → S → ⊤ → S → Set) (_⊢_⇀⟦_⟧_ : C → S → Sig → S → Set) where
  data _⊢_⇀⟦_⟧*_ : C → S → List Sig → S → Set where

    BS-base :
      ∙ Γ ⊢ s ⇀⟦ _ ⟧ᵇ s'
      ───────────────────────────────────────
      Γ ⊢ s ⇀⟦ [] ⟧* s'

    BS-ind :
      ∙ Γ ⊢ s  ⇀⟦ sig  ⟧  s'
      ∙ Γ ⊢ s' ⇀⟦ sigs ⟧* s''
      ───────────────────────────────────────
      Γ ⊢ s ⇀⟦ sig ∷ sigs ⟧* s''

module _ (_⊢_⇀⟦_⟧ᵇ_ : C → S → ⊤ → S → Set) (_⊢_⇀⟦_⟧_ : C × ℕ → S → Sig → S → Set) where
  data _⊢_⇀⟦_⟧ᵢ*_ : C → S → List Sig → S → Set where

    BS-base :
      ∙ Γ ⊢ s ⇀⟦ _ ⟧ᵇ s'
      ───────────────────────────────────────
      Γ ⊢ s ⇀⟦ [] ⟧ᵢ* s'

    BS-ind :
      ∙ (Γ , length sigs) ⊢ s  ⇀⟦ sig  ⟧  s'
      ∙  Γ                ⊢ s' ⇀⟦ sigs ⟧ᵢ* s''
      ───────────────────────────────────────
      Γ ⊢ s ⇀⟦ sig ∷ sigs ⟧ᵢ* s''

data IdSTS {C S} : C → S → ⊤ → S → Set where
  Id-nop : IdSTS Γ s _ s

-- with a trivial base case
SS⇒BS : (C → S → Sig → S → Set) → C → S → List Sig → S → Set
SS⇒BS {C} {S} {Sig} = _⊢_⇀⟦_⟧*_ {C} {S} {Sig} IdSTS

SS⇒BS-total : {_⊢_⇀⟦_⟧_ : C → S → Sig → S → Set}
            → (∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⟦ sig ⟧ s')
            → (∀ {Γ s sig} → ∃[ s' ] SS⇒BS _⊢_⇀⟦_⟧_ Γ s sig s')
SS⇒BS-total SS-total {Γ} {s} {[]} = s , BS-base Id-nop
SS⇒BS-total SS-total {Γ} {s} {x ∷ sig} =
  case SS-total {Γ} {s} {x} of λ where
    (s' , Ps') → map₂′ (BS-ind Ps') $ SS⇒BS-total SS-total {Γ} {s'} {sig}

SS⇒BSᵢ : (C × ℕ → S → Sig → S → Set) → C → S → List Sig → S → Set
SS⇒BSᵢ {C} {S} {Sig} = _⊢_⇀⟦_⟧ᵢ*_ {C} {S} {Sig} IdSTS

SS⇒BSᵢ-total : {_⊢_⇀⟦_⟧_ : C × ℕ → S → Sig → S → Set}
             → (∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⟦ sig ⟧ s')
             → (∀ {Γ s sig} → ∃[ s' ] SS⇒BSᵢ _⊢_⇀⟦_⟧_ Γ s sig s')
SS⇒BSᵢ-total SS-total {Γ} {s} {[]} = s , BS-base Id-nop
SS⇒BSᵢ-total SS-total {Γ} {s} {x ∷ sig} =
  case SS-total {Γ , length sig} {s} {x} of λ where
    (s' , Ps') → map₂′ (BS-ind Ps') $ SS⇒BSᵢ-total SS-total {Γ} {s'} {sig}

-- with a given base case
SS⇒BSᵢᵇ = _⊢_⇀⟦_⟧ᵢ*_
SS⇒BSᵇ  = _⊢_⇀⟦_⟧*_
