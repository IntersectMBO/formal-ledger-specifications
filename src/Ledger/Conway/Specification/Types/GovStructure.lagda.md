---
source_branch: master
source_path: src/Ledger/Conway/Specification/Types/GovStructure.lagda.md
---

```agda
{-# OPTIONS --safe #-}

module Ledger.Conway.Specification.Types.GovStructure where

open import Prelude using (Type)
open import Class.DecEq
open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Script.Base
open import Ledger.Core.Specification.Epoch
import Ledger.Conway.Specification.PParams

record GovStructure : Type₁ where
  field TxId DocHash : Type
        ⦃ DecEq-TxId ⦄ : DecEq TxId

  field cryptoStructure : _
  open CryptoStructure cryptoStructure public

  field epochStructure : _
  open EpochStructure epochStructure public

  field scriptStructure : ScriptStructure cryptoStructure epochStructure
  open ScriptStructure scriptStructure public

  open Ledger.Conway.Specification.PParams cryptoStructure epochStructure scriptStructure public

  field govParams : GovParams
  open GovParams govParams public

  field globalConstants : _
  open GlobalConstants globalConstants public

  open import Ledger.Core.Specification.Address Network KeyHash ScriptHash public
```
