{-# OPTIONS -v test:10 #-}
-- Demonstrating https://github.com/agda/agda/issues/5982

module Test.ArgTurningIntoMeta where

open import Data.List
open import Data.Unit
open import Level
open import Reflection

-- The level polymorphisms ensures that the argument to f isn't removed by reduce

variable l : Level

record Test (A : Set l) : Set l where
  field a : A

f : (A : Set) ⦃ _ : Test A ⦄ → A
f _ ⦃ t ⦄ = Test.a t

abstract
  g : {A : Set l} → A → A
  g x = x

pattern def₁ n a = def n (vArg a ∷ [])

test : TC ⊤
test = let t = def₁ (quote g) (def₁ (quote f) (var 1 [])) in
  reduce t >>= λ t → debugPrint "test" 10 [ termErr t ]

module _ {A : Set} ⦃ _ : Test A ⦄ where
  unquoteDecl = test
