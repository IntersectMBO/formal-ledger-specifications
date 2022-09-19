{-# OPTIONS --safe #-}
module Interface.Hashable where

record Hashable (T THash : Set) : Set where
  field hash : T → THash

open Hashable ⦃...⦄ public

Hashable₁ : (Set → Set) → Set → Set₁
Hashable₁ F THash = {A : Set} → ⦃ Hashable A THash ⦄ → Hashable (F A) THash

Hashable₂ : (Set → Set → Set) → Set → Set₁
Hashable₂ F THash = {A B : Set} → ⦃ Hashable A THash ⦄ → ⦃ Hashable B THash ⦄ → Hashable (F A B) THash
