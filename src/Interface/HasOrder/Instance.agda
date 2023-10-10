{-# OPTIONS --safe #-}

module Interface.HasOrder.Instance where

open import Prelude            using (_≡_; mk⇔; id; case_of_; yes; no; inj₁; inj₂; _,_; proj₁; _⊎_; _⇔_)
open import Data.Integer as ℤ  using (ℤ)
open import Data.Nat as ℕ      using (ℕ)
open import Interface.HasOrder

open import Data.Integer.Properties as IntProp renaming (_≟_ to _≟ℤ_)
open import Data.Nat.Properties as NatProp renaming (_≟_ to _≟ℕ_)

instance
  preoInt : HasPreorder ℤ _≡_
  preoInt = record
    { _≤_ = ℤ._≤_
    ; _<_ = ℤ._<_
    ; ≤-isPreorder = IntProp.≤-isPreorder
    ; <-irrefl = IntProp.<-irrefl
    ; ≤⇔<∨≈ =  λ {a b} → mk⇔
               (λ a≤b → case (a ≟ℤ b) of λ where (yes p) → inj₂ p ; (no ¬p) → inj₁ (IntProp.≤∧≢⇒< a≤b ¬p))
               λ where (inj₁ a<b) → IntProp.<⇒≤ a<b ; (inj₂ a≡b) → IntProp.≤-reflexive a≡b
    }

  leqInt : HasPartialOrder ℤ _≡_
  leqInt = record { hasPreorder = preoInt ; ≤-antisym = IntProp.≤-antisym }

  DecLeqInt : HasDecPartialOrder ℤ _≡_
  DecLeqInt = record
    { hasPartialOrder = leqInt
    ; _<?_ = ℤ._<?_
    ; _≤?_ = ℤ._≤?_
    }

  preoNat : HasPreorder ℕ _≡_
  preoNat = record
    { _≤_ = ℕ._≤_
    ; _<_ = ℕ._<_
    ; ≤-isPreorder = NatProp.≤-isPreorder
    ; <-irrefl = NatProp.<-irrefl
    ; ≤⇔<∨≈ =  λ {a b} → mk⇔
               (λ a≤b → case (a ≟ℕ b) of λ where (yes p) → inj₂ p ; (no ¬p) → inj₁ (NatProp.≤∧≢⇒< a≤b ¬p))
               λ where (inj₁ a<b) → NatProp.<⇒≤ a<b ; (inj₂ a≡b) → NatProp.≤-reflexive a≡b
    }

  leqNat : HasPartialOrder ℕ _≡_
  leqNat = record { hasPreorder = preoNat ; ≤-antisym = NatProp.≤-antisym }

  DecLeqNat : HasDecPartialOrder ℕ _≡_
  DecLeqNat = record
    { hasPartialOrder = leqNat
    ; _<?_ = ℕ._<?_
    ; _≤?_ = ℕ._≤?_
    }
