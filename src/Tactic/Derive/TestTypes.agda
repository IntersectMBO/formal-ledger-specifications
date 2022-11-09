{-# OPTIONS --safe #-}
{-# OPTIONS -v allTactics:100 #-}
module Tactic.Derive.TestTypes where

open import Prelude
open import Meta

data E1 : Set where
  c1E1 : E1
  c2E1 : E1
  c3E1 : E1
  c4E1 : E1
  c5E1 : E1
  c6E1 : E1
  c7E1 : E1

data E2 {a} (A : Set a) : Set a where
  c1E2 : A → E2 A
  c2E2 : E2 A → E2 A

data E3 {a} (A : Set a) : Set a where
  c1E3 : List (E3 A) → List (E3 A) → E3 A
  c2E3 : E3 A

record R1 : Set where
  field f1R1 : E1
        f2R1 : E2 ℕ

record R2 {a} (A : Set a) : Set a where
  field f1R2 : E1
        f2R2 : E2 ℕ
        f3R2 : R1
        f4R2 : R1
        f5R2 : A
        f6R2 : A

data M₁ : Set
data M₂ : Set
data M₁ where
  m₁ : M₁
  m₂→₁ : M₂ → M₁
data M₂ where
  m₂ : M₂
  m₁→₂ : M₁ → M₂

AllTestTypes : List Name
AllTestTypes = quote E1 ∷ quote E2 ∷ quote E3 ∷ quote R1 ∷ quote R2 ∷ quote M₁ ∷ quote M₂ ∷ []
