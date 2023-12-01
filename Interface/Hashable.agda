{-# OPTIONS --safe #-}
module Interface.Hashable where

open import Agda.Builtin.Equality
open import Function.Definitions using (Injective)

record Hashable (T THash : Set) : Set where
  field hash    : T → THash
        hashInj : Injective _≡_ _≡_ hash

open Hashable ⦃...⦄ public

Hashable₁ : (Set → Set) → Set → Set₁
Hashable₁ F THash = {A : Set} → ⦃ Hashable A THash ⦄ → Hashable (F A) THash

Hashable₂ : (Set → Set → Set) → Set → Set₁
Hashable₂ F THash = {A B : Set} → ⦃ Hashable A THash ⦄ → ⦃ Hashable B THash ⦄ → Hashable (F A B) THash
