{-# OPTIONS --safe #-}

module TacticReasoning where

open import Level
open import Category.Monad
open import Data.Nat
open import DecEq
open import FinMap renaming (FinMap to _↦_)
open import FinSet
--open import Relation.Unary
open import Data.Product
open import Data.Unit
open import Function
import Data.List as List
open import Data.List.Categorical
import Relation.Binary.PropositionalEquality as ≡

open import Tactic.MonoidSolver
open import Data.Nat.Properties using (+-0-monoid; +-comm)

open import Agda.Builtin.Reflection

module ≡-Reasoning {a} {A : Set a} (tac : Term → TC ⊤) where
  open ≡
  open ≡.≡-Reasoning public

  infixr 2 _≡t⟨⟩_ step-t≡

  _≡t⟨⟩_ : ∀ (x {x' y} : A) → x' ≡ y → {@(tactic tac) x≡x' : x ≡ x'} → x ≡ y
  _≡t⟨⟩_ _ x'≡y {x≡x' = x≡x'} = trans x≡x' x'≡y

  step-t≡ : ∀ (x' {x y z} : A) → y ≡ z → x' ≡ y → {@(tactic tac) x≡x' : x ≡ x'} → x ≡ z
  step-t≡ _ y≡z x'≡y {x≡x' = x≡x'} = trans x≡x' (trans x'≡y y≡z)

  syntax step-t≡ x y≡z y≡x = x ≡t⟨ y≡x ⟩ y≡z

open ≡ using (_≡_; cong; refl; erefl)


-- test1 : ∀ {a b c} → (a + b) + c ≡ a + (b + c)
-- test1 {a} {b} {c} = step-t≡ (a + (b + c)) {x = (a + b) + c} refl refl

test2 : ∀ {a b c} → (a + b) + c ≡ a + (c + b)
test2 {a} {b} {c} = begin
  (a + b) + c ≡t⟨⟩
  a + (b + c) ≡⟨ cong (a +_) (+-comm b c) ⟩
  a + (c + b) ∎
  where open ≡-Reasoning (solve-macro (quoteTerm +-0-monoid))
