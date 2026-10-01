---
source_branch: master
source_path: src/Test/Examples/MultiSigV2/Datum.lagda.md
---
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (fromList; ε); open Computational

module Test.Examples.MultiSigV2.Datum where

open import Tactic.Derive.DecEq

data Datum : Set where
  Holding : Datum
  Collecting : ℕ -> ℕ -> ℕ -> List ℕ -> Datum
instance
  unquoteDecl DecEq-Datum = derive-DecEq
    ((quote Datum , DecEq-Datum) ∷ [])

data Redeemer : Set where
  Propose : ℕ -> ℕ -> ℕ -> Redeemer
  Add     : ℕ -> Redeemer
  Pay     : Redeemer
  Cancel  : Redeemer
  Stop    : Redeemer
instance
  unquoteDecl DecEq-Redeemer = derive-DecEq
    ((quote Redeemer , DecEq-Redeemer) ∷ [])

MultiSigData = Datum ⊎ Redeemer
```
