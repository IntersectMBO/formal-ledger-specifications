
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
  ℕ-hasPreorder : HasPreorder
  ℕ-hasPreorder = record
    { Nat
    ; ≤⇔<∨≈ = λ {a b} → mk⇔
              (λ a≤b → case (a ≟ b) of λ where (yes p) → inj₂ p ; (no ¬p) → inj₁ (Nat.≤∧≢⇒< a≤b ¬p))
               λ where (inj₁ a<b) → Nat.<⇒≤ a<b ; (inj₂ a≡b) → Nat.≤-reflexive a≡b
    }

  ℕ-hasPartialOrder : HasPartialOrder
  ℕ-hasPartialOrder = record { hasPreorder = ℕ-hasPreorder ; ≤-antisym = Nat.≤-antisym }

  ℕ-Dec-≤ = Decidable²⇒Dec Nat._≤?_
  ℕ-Dec-< = Decidable²⇒Dec Nat._<?_

  ℕ-hasDecPartialOrder : HasDecPartialOrder {A = ℕ}
  ℕ-hasDecPartialOrder = record {}

  ℤ-hasPreorder : HasPreorder
  ℤ-hasPreorder = record
    { Int
    ; ≤⇔<∨≈ =  λ {a b} → mk⇔
               (λ a≤b → case (a ≟ b) of λ where (yes p) → inj₂ p ; (no ¬p) → inj₁ (Int.≤∧≢⇒< a≤b ¬p))
               λ where (inj₁ a<b) → Int.<⇒≤ a<b ; (inj₂ a≡b) → Int.≤-reflexive a≡b
    }

  ℤ-hasPartialOrder : HasPartialOrder
  ℤ-hasPartialOrder = record { ≤-antisym = Int.≤-antisym }

  ℤ-Dec-≤ = Decidable²⇒Dec Int._≤?_
  ℤ-Dec-< = Decidable²⇒Dec Int._<?_

  ℤ-hasDecPartialOrder : HasDecPartialOrder {A = ℤ}
  ℤ-hasDecPartialOrder = record {}

_ = Dec² Nat._≤_ ∋ it
_ = Dec² Nat._<_ ∋ it
_ = Dec² Int._≤_ ∋ it
_ = Dec² Int._<_ ∋ it

_ = Decidable² Nat._≤_ ∋ _≤?_
_ = Decidable² Nat._<_ ∋ _<?_
_ = Decidable² Int._≤_ ∋ _≤?_
_ = Decidable² Int._<_ ∋ _<?_

