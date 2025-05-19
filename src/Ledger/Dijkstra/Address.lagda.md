```
{-# OPTIONS --safe #-}
open import Prelude using (Type; DecEq)
module Ledger.Dijkstra.Address
  (Network KeyHash ScriptHash : Type)
  ⦃ _ : DecEq Network ⦄ ⦃ _ : DecEq KeyHash ⦄ ⦃ _ : DecEq ScriptHash ⦄ where

open import Ledger.Conway.Address Network KeyHash ScriptHash public 
```
