```
{-# OPTIONS --safe #-}
open import Ledger.Dijkstra.Crypto
  using (Crypto)
open import Ledger.Dijkstra.Types.Epoch
  using (EpochStructure)
module Ledger.Dijkstra.Script
  (crypto : Crypto)
  (es     : EpochStructure) where

open import Ledger.Conway.Script crypto es public
```
