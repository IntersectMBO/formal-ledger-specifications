```
{-# OPTIONS --safe #-}
open import Ledger.Dijkstra.Crypto
  using (CryptoStructure)
open import Ledger.Dijkstra.Script
  using (ScriptStructure)
open import Ledger.Dijkstra.Types.Epoch
  using (EpochStructure)

module Ledger.Dijkstra.PParams
  (crypto : CryptoStructure )
  (es     : EpochStructure)
  (ss     : ScriptStructure crypto es)
  where

open import Ledger.Conway.Specification.PParams crypto es ss public
```
