{-# OPTIONS --safe #-}

--------------------------------------------------------------------------------
-- Ledger prelude
--
-- Re-exports modules relating to STS, set theory and other
-- miscellaneous things used to write the ledger rules. If something
-- is used in more than two Ledger.* modules, it should probably go
-- here.
--------------------------------------------------------------------------------

module Ledger.Prelude where

open import Prelude public

open import Ledger.Prelude.Base public

open import Class.HasAdd public
open import Class.HasOrder public
open import Class.ToBool public
open import Class.To public
open import Interface.ComputationalRelation public
open import Interface.HasSubtract public
open import Interface.HasSubtract.Instance public
open import Interface.HasSubset public
open import Interface.HasSubset.Instance public
open import Interface.Hashable public
open import Ledger.Interface.HasCoin public
open import MyDebugOptions public
open import Tactic.Premises public

open import abstract-set-theory.FiniteSetTheory public
  renaming (_⊆_ to _⊆ˢ_)

import Data.Integer as ℤ
import Data.Rational as ℚ
open import Data.Rational using (ℚ)

dec-de-morgan : ∀{P Q : Type} → ⦃ P ⁇ ⦄ → ¬ (P × Q) → ¬ P ⊎ ¬ Q
dec-de-morgan ⦃ ⁇ no ¬p ⦄ ¬pq = inj₁ ¬p
dec-de-morgan ⦃ ⁇ yes p ⦄ ¬pq = inj₂ λ q → ¬pq (p , q)

instance
  CommMonoid-ℕ-+ = NonUniqueInstances.CommMonoid-ℕ-+

  HasCoin-Map : ∀ {A} → ⦃ DecEq A ⦄ → HasCoin (A ⇀ Coin)
  HasCoin-Map .getCoin s = ∑[ x ← s ] x

  HasCoin-Set : ∀ {A} → ⦃ DecEq A ⦄ → HasCoin (ℙ (A × Coin))
  HasCoin-Set .getCoin s = ∑ˢ[ (a , c) ← s ] c

  HasSubset-Set : ∀ {A} → HasSubset (ℙ A)
  HasSubset-Set ._⊆_ = _⊆ˢ_

≡ᵉ-getCoin : ∀ {A} → ⦃ _ : DecEq A ⦄ → (s s' : A ⇀ Coin) → s ˢ ≡ᵉ s' ˢ → getCoin s ≡ getCoin s'
≡ᵉ-getCoin {A} ⦃ decEqA ⦄ s s' s≡s' = indexedSumᵛ'-cong {C = Coin} {x = s} {y = s'} s≡s'

setToMap : ∀ {A B : Type} → ⦃ DecEq A ⦄ → ℙ (A × B) → A ⇀ B
setToMap = fromListᵐ ∘ setToList

-- division of natural numbers with completion by 0.
opaque
  _/₀_ : ℕ → ℕ → ℚ
  x /₀ 0 = ℚ.0ℚ
  x /₀ y@(suc _) = ℤ.+ x ℚ./ y

-- Division of rational numbers with completion by 0.
_÷₀_ : ℚ → ℚ → ℚ
_÷₀_ x y = case y ≟ ℚ.0ℚ of λ where
  (yes _) → ℚ.0ℚ
  (no y≢0) → let instance nonZero-y = ℚ.≢-nonZero y≢0 in x ℚ.÷ y
