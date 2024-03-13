{-# OPTIONS --safe #-}

module Data.Nat.Properties.Ext where

open import Data.Nat
open import Data.Nat.Properties
open import Prelude
open import Relation.Nullary.Decidable

-- if P holds for 0 but not for some N, then there exists a k where the induction step fails
negInduction : {P : ℕ → Set} → Decidable¹ P
  → P 0
  → ∃[ N ] ¬ P N
  → ∃[ k ] P k × ¬ P (suc k)
negInduction {P = P} P? P0 (N , ¬PN)
  with anyUpTo? (λ x → P? x ×-dec ¬? (P? $ suc x)) N
... | yes (k , _ , h) = k , h
... | no ¬p           = contradiction (k≤N⇒Pk ≤-refl) ¬PN
  where
    helper : ∀ {k} → k < N → P k → P k × P (suc k)
    helper {k} k<N Pk =
      Pk , decidable-stable (P? _) (curry (curry (¬∃⟶∀¬ ¬p k) k<N) Pk)

    k<N⇒P'k : ∀ {k} → k < N → P k × P (suc k)
    k<N⇒P'k {zero}  k<N = helper k<N P0
    k<N⇒P'k {suc k} k<N = helper k<N (proj₂ $ k<N⇒P'k {k} (<⇒≤ k<N))

    k≤N⇒Pk : ∀ {k} → k ≤ N → P k
    k≤N⇒Pk {zero}  k≤N = P0
    k≤N⇒Pk {suc k} k≤N = proj₂ $ k<N⇒P'k k≤N


≤-+ : ∀{m n : ℕ} → m ≤ m + n
≤-+ {zero} = z≤n
≤-+ {suc m} = s≤s ≤-+

≤-+̆  : ∀{m n : ℕ} → m ≤ n + m
≤-+̆  {zero} = z≤n
≤-+̆  {suc m}{n} =
  ≤-trans (≤-+ {suc m} {n})
          (≤-trans (≤-reflexive (cong suc (+-comm m n)))
                   (≤-reflexive (sym (+-suc n m))))

≤→∸c≤∸c : ∀ {m n : ℕ} (c : ℕ) → n ≤ m → n ∸ c ≤ m ∸ c
≤→∸c≤∸c {_} {.zero} zero z≤n = z≤n
≤→∸c≤∸c {_} {.zero} (suc c) z≤n = z≤n
≤→∸c≤∸c {.(suc _)} {.(suc _)} zero (s≤s n≤m) = s≤s n≤m
≤→∸c≤∸c {.(suc _)} {.(suc _)} (suc c) (s≤s n≤m) = ≤→∸c≤∸c c n≤m

≤→∸-+-comm : ∀ {l m n : ℕ} → n ≤ m → m ∸ n + l ≡ m + l ∸ n
≤→∸-+-comm {l} {m} {.zero} z≤n = refl
≤→∸-+-comm {l} {.(suc _)} {.(suc _)} (s≤s n≤m) = ≤→∸-+-comm n≤m
