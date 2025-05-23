{-# OPTIONS -v allTactics:100 #-}
{-# OPTIONS --safe #-}
--------------------------------------------------------------------------------
-- genError: returns the type of the most recently bound variable as a string
-- genErrors: match on a negated conjunction and return the string of that type
--------------------------------------------------------------------------------

module stdlib-meta.Tactic.GenError where

open import Meta.Prelude
open import Meta.Init

open import Class.Decidable
open import Class.Functor
open import Class.Monad
open import Class.MonadError.Instances
open import Class.MonadReader.Instances
open import Class.MonadTC.Instances
open import Class.Show
open import Relation.Nullary using (¬_)

open import Reflection.Tactic
open import Reflection.Utils
open import Reflection.Utils.TCI
import Reflection as R
import Agda.Builtin.Reflection as R
open import Tactic.ClauseBuilder

private
  dec-de-morgan : ∀{P Q : Set} → ⦃ P ⁇ ⦄ → ¬ (P × Q) → ¬ P ⊎ ¬ Q
  dec-de-morgan ⦃ ⁇ no ¬p ⦄ ¬pq = inj₁ ¬p
  dec-de-morgan ⦃ ⁇ yes p ⦄ ¬pq = inj₂ λ q → ¬pq (p , q)

instance
  _ = MonadTC-TCI
  _ = Functor-M
  _ = ContextMonad-MonadTC

open ClauseExprM

genError' : ITactic
genError' = inDebugPath "genError" do
  t ← inferType (♯ 0)
  s ← liftTC (R.formatErrorParts [ R.termErr t ])
  unifyWithGoal (lit (Literal.string s))

module _ ⦃ _ : TCOptions ⦄ where
  macro
    genError = initTac genError'

genErrors' : ℕ → Term → ITactic
genErrors' 0 _ = error1 "genErrors: out of fuel"
genErrors' (suc fuel) t = inDebugPath "genErrors" $ flip catch
  (λ _ → genError') $ do
    m1 ← newMeta unknown
    m2 ← extendContext ("" , vArg m1) $ newMeta unknown
    unifyWithGoal =<< caseMatch (quote dec-de-morgan ∙⟦ t ⟧) (matchExprM $
        (([ ("" , vArg unknown) ] , vArg (quote inj₁ ◇⟦ ` 0 ⟧)) , finishMatch (withGoalHole genError'))
      ∷ (([ ("" , vArg m1) ]      , vArg (quote inj₂ ◇⟦ ` 0 ⟧)) , finishMatch (return m2)) ∷ [])
    extendContext ("" , vArg m1) $ runWithHole m2 (genErrors' fuel (♯ 0))

module _ ⦃ _ : TCOptions ⦄ where
  macro
    genErrors = initTac ∘ (genErrors' 100)

private
  open import Tactic.Defaults
  instance
    defaultDebugOptionsI : DebugOptions
    defaultDebugOptionsI = record defaultDebugOptions
      { selection = All
      ; filter = Filter.⊥ }

  module Test where
    test₁ : {A B : Set} → A → B → String
    test₁ a b = genError

    test₂ : {A : Set} → (a : A) → a ≡ a → String
    test₂ _ eq = genError

    test₃ : {A B C : Set} → ⦃ A ⁇ ⦄ → ⦃ B ⁇ ⦄ → ¬ (A × B × C) → String
    test₃ x = genErrors x

    _ : test₃ {A = ⊤} {⊥} {⊤} (λ where (_ , () , _)) ≡ "¬ B"
    _ = refl
