---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/Account.lagda.md
---
```agda
module Ledger.Dijkstra.Foreign.Account where

open import Class.Convertible
open import Class.Convertible.Foreign
open import Tactic.Derive.Convertible
open import Class.HasHsType
open import Class.HasHsType.Foreign
open import Tactic.Derive.HsType
import Data.String as S

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Foreign.Address
open import Ledger.Core.Foreign.Crypto.Base
open import Ledger.Dijkstra.Foreign.HSStructures

private
  toHaskellConstr : String → String
  toHaskellConstr s =
    if      s ≟ "⟦_,_⦆" then "Both"
    else if s ≟ "⟦_,∞⦆" then "Lower"
    else if s ≟ "⟦0,_⦆" then "Upper"
    else s

instance
  HsTy-BalanceInterval = autoHsType BalanceInterval ⊣ onConstructors toHaskellConstr
  Conv-BalanceInterval = autoConvert BalanceInterval
