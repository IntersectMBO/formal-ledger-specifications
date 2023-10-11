{-# OPTIONS --safe #-}

module Interface.HasOrder.Instance where

open import Prelude

private module Nat where
  open import Data.Nat public
  open import Data.Nat.Properties public

private module Int where
  open import Data.Integer public
  open import Data.Integer.Properties public

open import Interface.DecEq
open import Interface.Decidable.Instance
open import Interface.HasOrder

instance
  HasPreorder-ℕ = HasPreorder ℕ _≡_ ∋ record
    { Nat
    ; ≤⇔<∨≈ = λ {a b} → mk⇔
      (λ a≤b → case a ≟ b of λ where (yes p) → inj₂ p ; (no ¬p) → inj₁ (Nat.≤∧≢⇒< a≤b ¬p))
      (λ where (inj₁ a<b) → Nat.<⇒≤ a<b ; (inj₂ a≡b) → Nat.≤-reflexive a≡b)
    }

  HasPartialOrder-ℕ = HasPartialOrder ℕ _≡_ ∋ record
    { ≤-antisym = Nat.≤-antisym }

  Dec-≤ℕ = Decidable²⇒Dec Nat._≤?_; Dec-<ℕ = Decidable²⇒Dec Nat._<?_
  HasDecPartialOrder-ℕ = HasDecPartialOrder ℕ _≡_ ∋ record {}

  HasPreorder-ℤ = HasPreorder ℤ _≡_ ∋ record
    { Int
    ; ≤⇔<∨≈ = λ {a b} → mk⇔
      (λ a≤b → case a ≟ b of λ where (yes p) → inj₂ p ; (no ¬p) → inj₁ (Int.≤∧≢⇒< a≤b ¬p))
      (λ where (inj₁ a<b) → Int.<⇒≤ a<b ; (inj₂ a≡b) → Int.≤-reflexive a≡b)
    }
  HasPartialOrder-ℤ = HasPartialOrder ℤ _≡_ ∋ record
    { ≤-antisym = Int.≤-antisym }

  Dec-≤ℤ = Decidable²⇒Dec Int._≤?_; Dec-<ℤ = Decidable²⇒Dec Int._<?_
  HasDecPartialOrder-ℤ = HasDecPartialOrder ℤ _≡_ ∋ record {}

_ = Dec² Nat._≤_ ∋ it
_ = Dec² Nat._<_ ∋ it
_ = Dec² Int._≤_ ∋ it
_ = Dec² Int._<_ ∋ it

_ = Decidable² Nat._≤_ ∋ _≤?_
_ = Decidable² Nat._<_ ∋ _<?_
_ = Decidable² Int._≤_ ∋ _≤?_
_ = Decidable² Int._<_ ∋ _<?_
