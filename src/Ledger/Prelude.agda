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

open import Data.Product.Ext public
open import Interface.ComputationalRelation public
open import Interface.HasAdd public
open import Interface.HasAdd.Instance public
open import Interface.HasOrder public
open import Interface.HasOrder.Instance public
open import Interface.HasSubtract public
open import Interface.HasSubtract.Instance public
open import Interface.Hashable public
open import Interface.IsCommutativeMonoid public
open import Interface.ToBool public
open import Ledger.Interface.HasCoin public
open import MyDebugOptions public
open import Tactic.Premises public

open import Ledger.Set renaming (∅ to ∅ˢ; ❴_❵ to ❴_❵ˢ) public
open import Interface.HasSingleton th public
open import Interface.HasEmptySet public
open import Interface.HasEmptySet.Instances th public

dec-de-morgan : ∀{P Q : Type} → ⦃ P ⁇ ⦄ → ¬ (P × Q) → ¬ P ⊎ ¬ Q
dec-de-morgan ⦃ ⁇ no ¬p ⦄ ¬pq = inj₁ ¬p
dec-de-morgan ⦃ ⁇ yes p ⦄ ¬pq = inj₂ λ q → ¬pq (p , q)

instance
  HasCoin-Map : ∀ {A} → ⦃ DecEq A ⦄ → HasCoin (A ⇀ Coin)
  HasCoin-Map .getCoin s = ∑[ x ← s ] x

  HasCoin-Set : ∀ {A} → ⦃ DecEq A ⦄ → HasCoin (ℙ (A × Coin))
  HasCoin-Set .getCoin s = ∑ˢ[ (a , c) ← s ] c

≡ᵉ-getCoin : ∀ {A} → ⦃ _ : DecEq A ⦄ → (s s' : A ⇀ Coin) → s ˢ ≡ᵉ s' ˢ → getCoin s ≡ getCoin s'
≡ᵉ-getCoin {A} ⦃ decEqA ⦄ s s' s≡s' = indexedSumᵛ'-cong {C = Coin} {x = s} {y = s'} s≡s'
