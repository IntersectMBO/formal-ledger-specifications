```
{-# OPTIONS --safe #-}
open import Ledger.Dijkstra.Crypto
  using (CryptoStructure)
open import Ledger.Dijkstra.Types.Epoch
  using (EpochStructure)
module Ledger.Dijkstra.Script
  (crypto : CryptoStructure)
  (es     : EpochStructure) where

open import Ledger.Conway.Specification.Script crypto es public
```
