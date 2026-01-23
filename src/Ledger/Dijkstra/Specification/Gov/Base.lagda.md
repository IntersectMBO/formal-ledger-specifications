---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Gov/Base.lagda.md
---

```agda
{-# OPTIONS --safe #-}

module Ledger.Dijkstra.Specification.Gov.Base where

open import Prelude using (Type)
open import Class.DecEq
open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Epoch
open import Ledger.Dijkstra.Specification.Script.Base
import Ledger.Dijkstra.Specification.PParams

record GovStructure : Type₁ where
  field TxId DocHash : Type
        ⦃ DecEq-TxId ⦄ : DecEq TxId

  field cryptoStructure : CryptoStructure
  open CryptoStructure cryptoStructure public

  field epochStructure : EpochStructure
  open EpochStructure epochStructure public

  field scriptStructure : ScriptStructure cryptoStructure epochStructure
  open ScriptStructure scriptStructure public

  open Ledger.Dijkstra.Specification.PParams cryptoStructure epochStructure scriptStructure public

  field govParams : GovParams
  open GovParams govParams public

  field globalConstants : GlobalConstants
  open GlobalConstants globalConstants public

  open import Ledger.Core.Specification.Address Network KeyHash ScriptHash public
```
