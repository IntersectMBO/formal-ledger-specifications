{-# OPTIONS --safe --without-K #-}
--------------------------------------------------------------------------------
-- genError: returns the type of the most recently bound variable as a string
--------------------------------------------------------------------------------

module Tactic.GenError where

open import MetaPrelude
open import Meta

open import Class.Functor
open import Class.Monad
open import Class.MonadError.Instances
open import Class.MonadReader.Instances
open import Class.MonadTC.Instances
open import Class.Show

open import Reflection.Tactic
open import Reflection.Utils
open import Reflection.Utils.TCI
import Reflection as R
import Agda.Builtin.Reflection as R

instance
  _ = Functor-M

private
  liftTC : {A : Set} → R.TC A → TC A
  liftTC x = λ r → applyExtContext (r .TCEnv.localContext) x

genError' : ITactic
genError' = inDebugPath "genError" do
  t ← inferType (♯ 0)
  s ← liftTC (R.formatErrorParts [ R.termErr t ])
  unifyWithGoal (lit (Literal.string s))

module _ ⦃ _ : TCOptions ⦄ where
  macro
    genError = initTac genError'

private
  open import Tactic.Defaults
  module Test where
    test₁ : {A B : Set} → A → B → String
    test₁ a b = genError

    test₂ : {A : Set} → (a : A) → a ≡ a → String
    test₂ _ eq = genError
