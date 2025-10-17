{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (fromList; ε); open Computational

module Ledger.Conway.Specification.Test.Examples.AccountSim.Datum where

open import Tactic.Derive.DecEq
open import Data.Vec as Vec
  hiding (fromList)
import stdlib.Data.Vec.Instances as Vec
import Data.Vec.Relation.Binary.Pointwise.Inductive as Vec

data Label : Set where
  Always : List (ℕ × ℕ) -> Label 
instance
  unquoteDecl DecEq-Label = derive-DecEq
    ((quote Label , DecEq-Label) ∷ [])

data Input : Set where
  Open     : ℕ -> Input
  Close    : ℕ -> Input
  Withdraw : ℕ -> ℕ -> Input
  Deposit  : ℕ -> ℕ -> Input
  Transfer : ℕ -> ℕ -> ℕ -> Input
  Cleanup  : Input
instance
  unquoteDecl DecEq-Input = derive-DecEq
    ((quote Input , DecEq-Input) ∷ [])

AccountSimData = Label ⊎ Input
