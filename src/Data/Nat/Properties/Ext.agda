{-# OPTIONS --safe #-}

module Data.Nat.Properties.Ext where

open import Data.Nat                 using (ℕ) renaming (_<_ to _<ℕ_)
open import Data.Nat.Properties      using (<⇒≤ ; ≤-refl) renaming (<-isStrictTotalOrder to <ℕ-isStrictTotalOrder)
open import Ledger.Prelude
open import Relation.Nullary.Decidable
open import Interface.HasStrictTotalOrder
open import Interface.HasPartialOrder.Instance

instance
  stoℕ : HasStrictTotalOrder ℕ _≡_
  stoℕ = record { _<_ = _<ℕ_ ; isStrictTotalOrder = <ℕ-isStrictTotalOrder }


-- if P holds for 0 but not for some N, then there exists a k where the induction step fails
negInduction : {P : ℕ → Set} → Dec₁ P → P 0 → ∃[ N ] ¬ P N → ∃[ k ] P k × ¬ P (suc k)
negInduction {P = P} P? P0 (N , ¬PN) with anyUpTo? (λ x → P? x ×-dec ¬? (P? (suc x))) N
... | yes (k , _ , h) = k , h
... | no ¬p           = contradiction (k≤N⇒Pk ≤-refl) ¬PN
  where
    helper : ∀ {k} → k < N → P k → P k × P (suc k)
    helper {k} k<N Pk = Pk , (decidable-stable (P? (suc k)) $ curry (curry (¬∃⟶∀¬ ¬p k) k<N) Pk)

    k<N⇒P'k : ∀ {k} → k < N → P k × P (suc k)
    k<N⇒P'k {zero}  k<N = helper k<N P0
    k<N⇒P'k {suc k} k<N = helper k<N (proj₂ $ k<N⇒P'k {k} (<⇒≤ k<N))

    k≤N⇒Pk : ∀ {k} → k ≤ N → P k
    k≤N⇒Pk {zero}  k≤N = P0
    k≤N⇒Pk {suc k} k≤N = proj₂ $ k<N⇒P'k k≤N
