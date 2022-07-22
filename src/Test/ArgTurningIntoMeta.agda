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

test : TC ⊤
test = let t = def (quote f) (vArg (var 1 []) ∷ []) in do
  T ← unquoteTC {A = Set} (var 1 [])
  t' ← unquoteTC {A = T} t >>= quoteTC
  debugPrint "test" 10 [ strErr (showTerm t') ]

module _ {A : Set} ⦃ _ : Test A ⦄ where
  unquoteDecl = test
