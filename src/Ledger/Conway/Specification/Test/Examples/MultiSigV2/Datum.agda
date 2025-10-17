{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (fromList; ε); open Computational

module Ledger.Conway.Specification.Test.Examples.MultiSigV2.Datum where

open import Tactic.Derive.DecEq

data Label : Set where
  Holding : Label
  Collecting : ℕ -> ℕ -> ℕ -> List ℕ -> Label
instance
  unquoteDecl DecEq-Label = derive-DecEq
    ((quote Label , DecEq-Label) ∷ [])

data Input : Set where
  Propose : ℕ -> ℕ -> ℕ -> Input
  Add     : ℕ -> Input
  Pay     : Input
  Cancel  : Input
  Cleanup : Input
instance
  unquoteDecl DecEq-Input = derive-DecEq
    ((quote Input , DecEq-Input) ∷ [])

MultiSigData = Label ⊎ Input
