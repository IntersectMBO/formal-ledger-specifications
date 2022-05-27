--------------------------------------------------------------------------------
-- assumption: try to solve the goal with one of the available assumptions
--------------------------------------------------------------------------------

module Tactic.Assumption where

open import Reflection using (Term)

open import Function

open import Data.List
open import Data.Product
open import Data.String using (String; _<+>_)
open import Data.Bool
open import Data.Unit

open import Interface.Monad
open import Interface.MonadError hiding (MonadError-TC)
open import Interface.MonadTC hiding (Monad-TC)
open import Tactic.Defaults
open import Tactic.Helpers
open import Reflection.TCI
open import Interface.MonadReader

open Monad ⦃...⦄
open MonadTC ⦃...⦄
open MonadError ⦃...⦄
open MonadReader ⦃...⦄

instance
  _ = Monad-TC
  _ = MonadTC-TCI
  _ = MonadError-TC
  _ = MonadReader-TC

solve : Term → Tactic
solve t = initTac $ runSpeculative $ do
  goal ← reader TCEnv.goal
  metas ← findMetas <$> checkType t goal
  if null metas
    then (_, true)  <$> unify goal t
    else (_, false) <$> error "Unsolved metavariables remaining!"

assumption' : ITactic
assumption' = inDebugPath "assumption" do
  c ← getContext
  foldl (λ x k → do
    catch (unifyWithGoal (♯ k) >> debugLog ("Success with: " ∷ᵈ ♯ k ∷ᵈ [])) (λ _ → x))
    (logAndError "No valid assumption!") (downFrom $ length c)

macro
  assumption = initTac assumption'
  assumptionOpts = initTacOpts assumption'

private
  module Test where
    test₁ : {A B : Set} → A → B → A
    test₁ a b = assumption
    
    test₂ : {A B : Set} → A → B → B
    test₂ a b = assumption
