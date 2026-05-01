---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Gov/Base.lagda.md
---

```agda
{-# OPTIONS --safe #-}

module Ledger.Dijkstra.Specification.Gov.Base where

open import Prelude using (Type; it)
open import Class.DecEq
open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Epoch
open import Ledger.Dijkstra.Specification.Script.Base
import Ledger.Dijkstra.Specification.PParams

record GovStructure : Type₁ where
  field TxId DocHash : Type
        ⦃ DecEq-TxId ⦄ : DecEq TxId
        ⦃ DecEq-DocHash ⦄ : DecEq DocHash

  field cryptoStructure : CryptoStructure
  open CryptoStructure cryptoStructure public

  field epochStructure : EpochStructure
  open EpochStructure epochStructure public

  field globalConstants : GlobalConstants
  open GlobalConstants globalConstants public

  field scriptStructure : ScriptStructure cryptoStructure epochStructure Network it
  open ScriptStructure scriptStructure public

  open Ledger.Dijkstra.Specification.PParams cryptoStructure epochStructure Network it scriptStructure public

  field govParams : GovParams
  open GovParams govParams public

  open import Ledger.Core.Specification.Address Network KeyHash ScriptHash public
```
