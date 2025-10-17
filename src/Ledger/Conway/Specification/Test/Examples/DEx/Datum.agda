{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (fromList; ε); open Computational

module Ledger.Conway.Specification.Test.Examples.DEx.Datum where

open import Tactic.Derive.DecEq
open import Data.Vec as Vec
  hiding (fromList)
import stdlib.Data.Vec.Instances as Vec
import Data.Vec.Relation.Binary.Pointwise.Inductive as Vec

open import Data.Rational.Base

data Label : Set where
 -- Holding : Label
  Always : ℚ -> ℕ -> Label 
instance
  unquoteDecl DecEq-Label = derive-DecEq
    ((quote Label , DecEq-Label) ∷ [])

data Input : Set where
  Update   : ℕ -> ℚ -> Input
  Exchange : ℕ -> ℕ -> Input
  Close    : Input
instance
  unquoteDecl DecEq-Input = derive-DecEq
    ((quote Input , DecEq-Input) ∷ [])

DExData = Label ⊎ Input
