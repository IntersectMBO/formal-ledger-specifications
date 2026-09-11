---
source_branch: master
source_path: src/Test/Examples/MultiSig/Datum.lagda.md
---
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (fromList; ε); open Computational

module Test.Examples.MultiSig.Datum where

open import Tactic.Derive.DecEq

data Datum : Set where
  Holding : Datum
  Collecting : ℕ -> ℕ -> ℕ -> List ℕ -> Datum
instance
  unquoteDecl DecEq-Datum = derive-DecEq
    ((quote Datum , DecEq-Datum) ∷ [])

data Redeemer : Set where
  -- Propose: Ada amount, Target Wallet, Slot Deadline
  Propose : ℕ -> ℕ -> ℕ -> Redeemer
  --  Add: Wallet signature to add
  Add     : ℕ -> Redeemer
  Pay     : Redeemer
  Cancel  : Redeemer
instance
  unquoteDecl DecEq-Redeemer = derive-DecEq
    ((quote Redeemer , DecEq-Redeemer) ∷ [])

MultiSigData = Datum ⊎ Redeemer
```
