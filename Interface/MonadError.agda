{-# OPTIONS --safe #-}

open import Level

open import Reflection
open import Data.String
open import Data.List

module Interface.MonadError where

private
  variable
    e f : Level
    A : Set f

record MonadError (E : Set e) (M : ∀ {f} → Set f → Set f) : Setω where
  field
    error : E → M A
    catch : M A → (E → M A) → M A

open MonadError

MonadError-TC : MonadError String TC
MonadError-TC .error s = typeError [ strErr s ]
MonadError-TC .catch x h = catchTC x (h "TC doesn't provide which error to catch")
