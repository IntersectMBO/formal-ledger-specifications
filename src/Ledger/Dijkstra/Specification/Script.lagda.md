```
{-# OPTIONS --safe #-}
open import Ledger.Dijkstra.Specification.Crypto
  using (CryptoStructure)
open import Ledger.Dijkstra.Specification.Epoch
  using (EpochStructure)
module Ledger.Dijkstra.Specification.Script
  (crypto : CryptoStructure)
  (es     : EpochStructure) where

open import Ledger.Conway.Specification.Script crypto es public
```
