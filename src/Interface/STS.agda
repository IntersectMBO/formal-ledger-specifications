{-# OPTIONS --safe #-}

module Interface.STS where

open import Prelude

infix -150 ∙_
infixr -100 _∙_

∙_ : Set → Set
∙ A = A

_∙_ : Set → Set → Set
A ∙ B = A × B

infix -501 ────────────────────────────────_
────────────────────────────────_ : Set → Set
──────────────────────────────── A = A

infix -500 _────────────────────────────────_
_────────────────────────────────_ : Set → Set → Set
A ──────────────────────────────── B = A → B

infix -501 ───────────────────────────────────────_
───────────────────────────────────────_ : Set → Set
─────────────────────────────────────── A = A

infix -500 _───────────────────────────────────────_
_───────────────────────────────────────_ : Set → Set → Set
A ─────────────────────────────────────── B = A → B

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
      Γ ⊢ s ⇀⟦ _ ⟧ᵇ s'
      ───────────────────────────────────────
      Γ ⊢ s ⇀⟦ [] ⟧* s'

    BS-ind :
        Γ ⊢ s  ⇀⟦ sig  ⟧  s'
      → Γ ⊢ s' ⇀⟦ sigs ⟧* s''
        ───────────────────────────────────────
        Γ ⊢ s ⇀⟦ sig ∷ sigs ⟧* s''

module _ (_⊢_⇀⟦_⟧ᵇ_ : C → S → ⊤ → S → Set) (_⊢_⇀⟦_⟧_ : C × ℕ → S → Sig → S → Set) where
  data _⊢_⇀⟦_⟧ᵢ*_ : C → S → List Sig → S → Set where

    BS-base :
      Γ ⊢ s ⇀⟦ _ ⟧ᵇ s'
      ───────────────────────────────────────
      Γ ⊢ s ⇀⟦ [] ⟧ᵢ* s'

    BS-ind :
        (Γ , length sigs) ⊢ s  ⇀⟦ sig  ⟧  s'
      → Γ                ⊢ s' ⇀⟦ sigs ⟧ᵢ* s''
        ───────────────────────────────────────
        Γ ⊢ s ⇀⟦ sig ∷ sigs ⟧ᵢ* s''

data IdSTS {C S} : C → S → ⊤ → S → Set where
  Id-nop : IdSTS Γ s _ s

-- with a trivial base case
ReflexiveTransitiveClosure : (C → S → Sig → S → Set) → C → S → List Sig → S → Set
ReflexiveTransitiveClosure = _⊢_⇀⟦_⟧*_ IdSTS

ReflexiveTransitiveClosure-total : {_⊢_⇀⟦_⟧_ : C → S → Sig → S → Set}
            → (∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⟦ sig ⟧ s')
            → (∀ {Γ s sig} → ∃[ s' ] ReflexiveTransitiveClosure _⊢_⇀⟦_⟧_ Γ s sig s')
ReflexiveTransitiveClosure-total SS-total {Γ} {s} {[]} = s , BS-base Id-nop
ReflexiveTransitiveClosure-total SS-total {Γ} {s} {x ∷ sig} =
  case SS-total of λ where
    (s' , Ps') → map₂′ (BS-ind Ps') $ ReflexiveTransitiveClosure-total SS-total

ReflexiveTransitiveClosureᵢ : (C × ℕ → S → Sig → S → Set) → C → S → List Sig → S → Set
ReflexiveTransitiveClosureᵢ = _⊢_⇀⟦_⟧ᵢ*_ IdSTS

ReflexiveTransitiveClosureᵢ-total : {_⊢_⇀⟦_⟧_ : C × ℕ → S → Sig → S → Set}
             → (∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⟦ sig ⟧ s')
             → (∀ {Γ s sig} → ∃[ s' ] ReflexiveTransitiveClosureᵢ _⊢_⇀⟦_⟧_ Γ s sig s')
ReflexiveTransitiveClosureᵢ-total SS-total {s = s} {[]} = s , BS-base Id-nop
ReflexiveTransitiveClosureᵢ-total SS-total {s = s} {x ∷ sig} =
  case SS-total of λ where
    (s' , Ps') → map₂′ (BS-ind Ps') $ ReflexiveTransitiveClosureᵢ-total SS-total

-- with a given base case
ReflexiveTransitiveClosureᵢᵇ = _⊢_⇀⟦_⟧ᵢ*_
ReflexiveTransitiveClosureᵇ  = _⊢_⇀⟦_⟧*_

LedgerInvariant : (C → S → Sig → S → Set) → (S → Set) → Set
LedgerInvariant STS P = ∀ {c s sig s'} → STS c s sig s' → P s → P s'

RTC-preserves-inv : ∀ {STS : C → S → Sig → S → Set} {P}
                  → LedgerInvariant STS P → LedgerInvariant (ReflexiveTransitiveClosure STS) P
RTC-preserves-inv inv (BS-base Id-nop) = id
RTC-preserves-inv inv (BS-ind p₁ p₂)   = RTC-preserves-inv inv p₂ ∘ inv p₁

RTCᵢ-preserves-inv : ∀ {STS : C × ℕ → S → Sig → S → Set} {P}
                  → LedgerInvariant STS P → LedgerInvariant (ReflexiveTransitiveClosureᵢ STS) P
RTCᵢ-preserves-inv inv (BS-base Id-nop) = id
RTCᵢ-preserves-inv inv (BS-ind p₁ p₂)   = RTCᵢ-preserves-inv inv p₂ ∘ inv p₁
