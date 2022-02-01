module Tactic.Assumption where

open import Reflection hiding (_≟_; name; _>>=_; _>>_; return)
open import Prelude.Generics
open import Prelude.Monad
open import Prelude.Show
open import Prelude.Functor

open import Function

open import Data.List
open import Data.Product
open import Data.String using (String; _<+>_)
open import Data.Bool
open import Data.Unit

open import Tactic.Helpers

solve : Term → Tactic
solve t goal = runSpeculative $ do
  metas ← findMetas <$> checkType t goal
  if null metas
    then (_, true)  <$> unify goal t
    else (_, false) <$> error "Unsolved metavariables remaining!"

assumption' : Tactic
assumption' goal = do
  print "***** assumption *****"
  c ← getContext
  goalTy ← inferType goal
  print $ "Looking for an assumption of type" <+> show goalTy
  printCurrentContext
  foldl (λ x k →
    catchTC (unify goal (♯ k) >> print ("Success with:" <+> show k)) x)
    (error "No valid assumption!") (downFrom $ length c)
  where open Debug ("assumption" , 100)

macro
  assumption : Tactic
  assumption goal = do
    c ← getContext
    foldl (λ x k →
      catchTC (unify goal (♯ k) >> print ("Success with:" <+> show k)) x)
      (error "No valid assumption!") (downFrom $ length c)
    where open Debug ("assumption" , 100)
