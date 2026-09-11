---
source_branch: master
source_path: src/Test/Examples/AccountSim/Datum.lagda.md
---
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (fromList; ε); open Computational

module Test.Examples.AccountSim.Datum where

open import Tactic.Derive.DecEq
open import Data.Vec as Vec
  hiding (fromList)
import stdlib.Data.Vec.Instances as Vec
import Data.Vec.Relation.Binary.Pointwise.Inductive as Vec

data Datum : Set where
  Always : List (ℕ × ℕ) -> Datum
instance
  unquoteDecl DecEq-Datum = derive-DecEq
    ((quote Datum , DecEq-Datum) ∷ [])

data Redeemer : Set where
  Open     : ℕ -> Redeemer
  Close    : ℕ -> Redeemer
  Withdraw : ℕ -> ℕ -> Redeemer
  Deposit  : ℕ -> ℕ -> Redeemer
  Transfer : ℕ -> ℕ -> ℕ -> Redeemer
  Stop     : Redeemer
instance
  unquoteDecl DecEq-Redeemer = derive-DecEq
    ((quote Redeemer , DecEq-Redeemer) ∷ [])

AccountSimData = Datum ⊎ Redeemer
```
