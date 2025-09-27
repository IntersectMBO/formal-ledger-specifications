{-# OPTIONS --safe #-}

module Interface.STS where

open import Prelude

open import Prelude.InferenceRules public

private
  variable C S Sig : Type
           Γ : C
           s s' s'' : S
           sig : Sig
           sigs : List Sig
           n : ℕ

-- small-step to big-step transformer

module _ {_⊢_⇀⟦_⟧ᵇ_ : C → S → ⊤ → S → Type} {_⊢_⇀⟦_⟧_ : C → S → Sig → S → Type} where
  data _⊢_⇀⟦_⟧*_ : C → S → List Sig → S → Type where

    BS-base :
      Γ ⊢ s ⇀⟦ _ ⟧ᵇ s'
      ───────────────────────────────────────
      Γ ⊢ s ⇀⟦ [] ⟧* s'

    BS-ind :
        Γ ⊢ s  ⇀⟦ sig  ⟧  s'
      → Γ ⊢ s' ⇀⟦ sigs ⟧* s''
        ───────────────────────────────────────
        Γ ⊢ s  ⇀⟦ sig ∷ sigs ⟧* s''

module _ {_⊢_⇀⟦_⟧ᵇ_ : C → S → ⊤ → S → Type} {_⊢_⇀⟦_⟧_ : C × ℕ → S → Sig → S → Type} where
  data _⊢_⇀⟦_⟧ᵢ*'_ : C × ℕ → S → List Sig → S → Type where

    BS-base :
      Γ ⊢ s ⇀⟦ _ ⟧ᵇ s'
      ───────────────────────────────────────
      (Γ , n) ⊢ s ⇀⟦ [] ⟧ᵢ*' s'

    BS-ind :
        (Γ , n)     ⊢ s  ⇀⟦ sig  ⟧  s'
      → (Γ , suc n) ⊢ s' ⇀⟦ sigs ⟧ᵢ*' s''
        ───────────────────────────────────────
        (Γ , n)     ⊢ s  ⇀⟦ sig ∷ sigs ⟧ᵢ*' s''

  _⊢_⇀⟦_⟧ᵢ*_ : C → S → List Sig → S → Type
  _⊢_⇀⟦_⟧ᵢ*_ Γ = _⊢_⇀⟦_⟧ᵢ*'_ (Γ , 0)

data IdSTS {C S} : C → S → ⊤ → S → Type where
  Id-nop : IdSTS Γ s _ s

module _ {_⊢_⇀⟦_⟧ᵇ_ : C → S → ⊤ → S → Type} {_⊢_⇀⟦_⟧_ : C → S → Sig → S → Type} where
  data _⊢_⇀⟦_⟧*'_ : C → S → List Sig → S → Type where
      RTC :
          ∙ Γ ⊢ s ⇀⟦ _ ⟧ᵇ s'
          ∙ _⊢_⇀⟦_⟧*_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS}{_⊢_⇀⟦_⟧_} Γ s' sigs s''
          ───────────────────────────────────────
          Γ ⊢ s ⇀⟦ sigs ⟧*' s''


data RunTraceAndThen (Step : C → S → Sig → S → Type) (Last : C → S → ⊤ → S → Type) :
  C → S → List Sig → S → Type where

    run-[] : Last Γ s tt s' → RunTraceAndThen Step Last Γ s [] s'

    run-∷ :  Step Γ s sig s'
             → RunTraceAndThen Step Last Γ s' sigs s''
             → RunTraceAndThen Step Last Γ s (sig ∷ sigs) s''

data RunTraceAfterAndThen (Init : C → S → ⊤ → S → Type)
                          (Step : C → S → Sig → S → Type)
                          (Last : C → S → ⊤ → S → Type) :
  C → S → List Sig → S → Type where

    RTAAT :
        ∙ Init Γ s tt s'
        ∙ RunTraceAndThen Step Last Γ s' sigs s''
        ─────────────────────────────────────────────
        RunTraceAfterAndThen Init Step Last Γ s sigs s''


-- with a trivial base case
ReflexiveTransitiveClosure : {sts : C → S → Sig → S → Type} → C → S → List Sig → S → Type
ReflexiveTransitiveClosure {sts = sts} = _⊢_⇀⟦_⟧*_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS}{sts}

STS-total : (C → S → Sig → S → Type) → Type
STS-total _⊢_⇀⟦_⟧_ = ∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⟦ sig ⟧ s'

ReflexiveTransitiveClosure-total : {_⊢_⇀⟦_⟧_ : C → S → Sig → S → Type}
  → STS-total _⊢_⇀⟦_⟧_ → STS-total (ReflexiveTransitiveClosure {sts = _⊢_⇀⟦_⟧_})
ReflexiveTransitiveClosure-total SS-total {Γ} {s} {[]} = s , BS-base Id-nop
ReflexiveTransitiveClosure-total SS-total {Γ} {s} {x ∷ sig} =
  case SS-total of λ where
    (s' , Ps') → map₂′ (BS-ind Ps') $ ReflexiveTransitiveClosure-total SS-total

ReflexiveTransitiveClosureᵢ : {sts : C × ℕ → S → Sig → S → Type} → C → S → List Sig → S → Type
ReflexiveTransitiveClosureᵢ {sts = sts} = _⊢_⇀⟦_⟧ᵢ*_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS}{sts}

ReflexiveTransitiveClosureᵢ-total : {_⊢_⇀⟦_⟧_ : C × ℕ → S → Sig → S → Type}
  → STS-total _⊢_⇀⟦_⟧_ → STS-total (ReflexiveTransitiveClosureᵢ {sts = _⊢_⇀⟦_⟧_})
ReflexiveTransitiveClosureᵢ-total SS-total = helper SS-total
  where
    helper : {_⊢_⇀⟦_⟧_ : C × ℕ → S → Sig → S → Type}
      → STS-total _⊢_⇀⟦_⟧_ → STS-total (_⊢_⇀⟦_⟧ᵢ*'_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS}{_⊢_⇀⟦_⟧_})
    helper SS-total {s = s} {[]} = s , BS-base Id-nop
    helper SS-total {s = s} {x ∷ sig} =
      case SS-total of λ where
        (s' , Ps') → map₂′ (BS-ind Ps') $ helper SS-total

-- with a given base case
ReflexiveTransitiveClosureᵢᵇ = _⊢_⇀⟦_⟧ᵢ*_
ReflexiveTransitiveClosureᵇ  = _⊢_⇀⟦_⟧*_
ReflexiveTransitiveClosureᵇ'  = _⊢_⇀⟦_⟧*'_

LedgerInvariant : (C → S → Sig → S → Type) → (S → Type) → Type
LedgerInvariant STS P = ∀ {c s sig s'} → STS c s sig s' → P s → P s'

RTC-preserves-inv : ∀ {STS : C → S → Sig → S → Type} {P}
                  → LedgerInvariant STS P → LedgerInvariant (ReflexiveTransitiveClosure {sts = STS}) P
RTC-preserves-inv inv (BS-base Id-nop) = id
RTC-preserves-inv inv (BS-ind p₁ p₂)   = RTC-preserves-inv inv p₂ ∘ inv p₁
