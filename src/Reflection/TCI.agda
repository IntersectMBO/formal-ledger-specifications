-- Improved TC
{-# OPTIONS --safe --without-K #-}

open import Data.Product hiding (map)
open import Data.Nat
open import Data.Unit
open import Data.String hiding (_++_)
open import Data.Bool
open import Data.List
open import Data.Maybe using (Maybe; just; nothing)
open import Function
open import Level

open import Agda.Builtin.Reflection using (ErrorPart)
open import Reflection.AST
open import Reflection.AST.Abstraction using (unAbs)
import Reflection as R
import Agda.Builtin.Reflection as R'

open import Interface.Monad
open import Interface.MonadError using (MonadError)
open import Interface.MonadReader
open import Interface.MonadTC hiding (Monad-TC)

-- We need a version of Agda that doesn't fail this test
-- Otherwise, some tactics later will break
open import Test.GetType

open Monad

module Reflection.TCI where

private variable a f : Level
                 A B C D : Set a

TC : ∀ {a} → Set a → Set a
TC = ReaderT TCEnv R.TC

Monad-TC : Monad TC
Monad-TC = Monad-ReaderT ⦃ Interface.MonadTC.Monad-TC ⦄

MonadReader-TC : MonadReader TCEnv TC ⦃ Monad-TC ⦄
MonadReader-TC = MonadReader-ReaderT ⦃ Interface.MonadTC.Monad-TC ⦄

MonadError-TC : MonadError String TC
MonadError-TC = MonadError-ReaderT ⦃ Interface.MonadTC.Monad-TC ⦄ ⦃ Interface.MonadError.MonadError-TC ⦄

applyNormalisation : TC A → TC A
applyNormalisation x r@record { normalisation = n } = R.withNormalisation n (x r)

applyReconstruction : TC A → TC A
applyReconstruction x r@record { reconstruction = false } = x r
applyReconstruction x r@record { reconstruction = true } = R'.withReconstructed (x r)

applyExtContext : List (Arg Term) → R.TC A → R.TC A
applyExtContext [] x       = x
applyExtContext (t ∷ ts) x = applyExtContext ts $ R.extendContext t x

private
  liftTC : R.TC A → TC A
  liftTC x = λ r → applyExtContext (map unAbs $ r .TCEnv.localContext) x

  liftTC1 : (A → R.TC B) → A → TC B
  liftTC1 f a = liftTC (f a)

  liftTC2 : (A → B → R.TC C) → A → B → TC C
  liftTC2 f a b = liftTC (f a b)

  liftTC3 : (A → B → C → R.TC D) → A → B → C → TC D
  liftTC3 f a b c = liftTC (f a b c)

module MonadTCI where
  unify             : Term → Term → TC ⊤
  unify             = liftTC2 R.unify

  typeError         : List ErrorPart → TC A
  typeError         = liftTC1 R.typeError

  inferType         : Term → TC Type
  inferType         = applyReconstruction ∘ applyNormalisation ∘ liftTC1 R.inferType

  checkType         : Term → Type → TC Term
  checkType         = (applyReconstruction ∘ applyNormalisation) ∘₂ liftTC2 R.checkType

  normalise         : Term → TC Term
  normalise         = applyReconstruction ∘ liftTC1 R.normalise

  reduce            : Term → TC Term
  reduce            = applyReconstruction ∘ liftTC1 R.reduce

  quoteTC           : A → TC Term
  quoteTC           = applyNormalisation ∘ liftTC1 R.quoteTC

  unquoteTC         : Term → TC A
  unquoteTC         = liftTC1 R.unquoteTC

  quoteωTC          : ∀ {A : Setω} → A → TC Term
  quoteωTC          = λ a → liftTC (R'.quoteωTC a)

  freshName         : String → TC Name
  freshName         = liftTC1 R.freshName

  declareDef        : Arg Name → Type → TC ⊤
  declareDef        = liftTC2 R.declareDef

  declarePostulate  : Arg Name → Type → TC ⊤
  declarePostulate  = liftTC2 R.declarePostulate

  defineFun         : Name → List Clause → TC ⊤
  defineFun         = liftTC2 R.defineFun

  getType           : Name → TC Type
  getType           = applyReconstruction ∘ liftTC1 R.getType

  getDefinition     : Name → TC Definition
  getDefinition     = applyReconstruction ∘ liftTC1 R.getDefinition

  blockOnMeta       : Meta → TC A
  blockOnMeta       = liftTC1 R.blockOnMeta

  commitTC          : TC ⊤
  commitTC          = liftTC R.commitTC

  isMacro           : Name → TC Bool
  isMacro           = liftTC1 R.isMacro

  debugPrint        : String → ℕ → List ErrorPart → TC ⊤
  debugPrint        = liftTC3 R.debugPrint

  runSpeculative    : TC (A × Bool) → TC A
  runSpeculative    = R.runSpeculative ∘_

MonadTC-TCI : MonadTC TC ⦃ Monad-TC ⦄ ⦃ MonadError-TC ⦄
MonadTC-TCI = record { MonadTCI }
