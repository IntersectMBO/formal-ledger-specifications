{-# OPTIONS --safe --without-K #-}

module Data.List.Ext where

open import Data.List
open import Data.Maybe
open import Data.Nat

lookupMaybe : ∀ {a} {A : Set a} → List A → ℕ → Maybe A
lookupMaybe []      n       = nothing
lookupMaybe (x ∷ l) zero    = just x
lookupMaybe (x ∷ l) (suc n) = lookupMaybe l n
