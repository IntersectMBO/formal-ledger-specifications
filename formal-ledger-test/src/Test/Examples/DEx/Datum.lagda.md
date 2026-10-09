---
source_branch: master
source_path: src/Test/Examples/DEx/Datum.lagda.md
---
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (fromList; ε); open Computational

module Test.Examples.DEx.Datum where

open import Tactic.Derive.DecEq
open import Data.Vec as Vec
  hiding (fromList)
import stdlib.Data.Vec.Instances as Vec
import Data.Vec.Relation.Binary.Pointwise.Inductive as Vec

open import Data.Rational.Base

data Datum : Set where
 -- Holding : Datum
  Always : ℚ -> ℕ -> Datum 
instance
  unquoteDecl DecEq-Datum = derive-DecEq
    ((quote Datum , DecEq-Datum) ∷ [])

data Redeemer : Set where
  Update   : ℕ -> ℚ -> Redeemer
  Exchange : ℕ -> ℕ -> Redeemer
  Stop     : Redeemer
instance
  unquoteDecl DecEq-Redeemer = derive-DecEq
    ((quote Redeemer , DecEq-Redeemer) ∷ [])

DExData = Datum ⊎ Redeemer
```
