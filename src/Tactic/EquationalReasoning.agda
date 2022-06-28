{-# OPTIONS --safe --without-K #-}

module Tactic.EquationalReasoning where

open import Prelude

import Relation.Binary.PropositionalEquality as ≡
open import Agda.Builtin.Reflection

module ≡-Reasoning {a} {A : Set a} (tac : Term → TC ⊤) where
  open ≡.≡-Reasoning public

  infixr 2 _≡t⟨⟩_ step-≡tˡ step-≡tʳ

  _≡t⟨⟩_ : ∀ (x {x' y} : A) → x' ≡ y → {@(tactic tac) x≡x' : x ≡ x'} → x ≡ y
  _≡t⟨⟩_ _ x'≡y {x≡x' = x≡x'} = trans x≡x' x'≡y

  step-≡tˡ : ∀ (x {x' y z} : A) → y ≡ z → x' ≡ y → {@(tactic tac) x≡x' : x ≡ x'} → x ≡ z
  step-≡tˡ _ y≡z x'≡y {x≡x' = x≡x'} = trans x≡x' (trans x'≡y y≡z)

  step-≡tʳ : ∀ (x {y y' z} : A) → y ≡ z → x ≡ y' → {@(tactic tac) y'≡y : y' ≡ y} → x ≡ z
  step-≡tʳ _ y≡z x≡y' {y'≡y = y'≡y} = trans (trans x≡y' y'≡y) y≡z

  syntax step-≡tˡ x y≡z y≡x = x ≡tˡ⟨ y≡x ⟩ y≡z
  syntax step-≡tʳ x y≡z y≡x = x ≡tʳ⟨ y≡x ⟩ y≡z

private
  module Test where

    open import Tactic.MonoidSolver
    open import Data.Nat.Properties using (+-0-monoid; +-comm)

    open ≡-Reasoning {A = ℕ} (solve-macro (quoteTerm +-0-monoid))

    test₁ : ∀ {a b c} → (a + b) + c ≡ a + (c + b)
    test₁ {a} {b} {c} = begin
      (a + b) + c ≡t⟨⟩
      a + (b + c) ≡⟨ cong (a +_) (+-comm b c) ⟩
      a + (c + b) ∎

    test₂ : ∀ {a b c} → (a + b) + c ≡ a + (c + b)
    test₂ {a} {b} {c} = begin
      (a + b) + c ≡tˡ⟨ cong (a +_) (+-comm b c) ⟩
      a + (c + b) ∎

    test₃ : ∀ {a b c} → (a + b) + c ≡ b + (a + c)
    test₃ {a} {b} {c} = begin
      (a + b) + c ≡tʳ⟨ cong (_+ c) (+-comm a b) ⟩
      b + (a + c) ∎
