---
source_branch: master
source_path: src/Ledger/Conway/Foreign/Transaction.lagda.md
---
```agda
module Ledger.Conway.Foreign.Transaction where

open import Foreign.Convertible
open import Foreign.Convertible.Deriving
open import Foreign.HaskellTypes.Deriving

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Foreign.Address
open import Ledger.Core.Foreign.Crypto.Base
open import Ledger.Conway.Foreign.HSStructures
open import Ledger.Conway.Foreign.Certs
open import Ledger.Conway.Foreign.Gov.Core
open import Ledger.Conway.Foreign.Gov
open import Ledger.Conway.Foreign.PParams

instance
  HsTy-Tag = autoHsType Tag
  Conv-Tag = autoConvert Tag

  HsTy-Timelock = autoHsType Timelock
  -- The termination checker doesn't like recursion through lists of recursive structures, or that
  -- we do all the matching in a rhs pattern lambda. Telling the termination checker to go away does
  -- work though.
  {-# TERMINATING #-}
  Conv-Timelock = autoConvert Timelock

  HsTy-HSTimelock = autoHsType HSTimelock
  Conv-HSTimelock = autoConvert HSTimelock

  HsTy-HSPlutusScript = autoHsType HSPlutusScript
  Conv-HSPlutusScript = autoConvert HSPlutusScript

  HsTy-TxWitnessess = autoHsType TxWitnesses ⊣ withConstructor "MkTxWitnesses"
  Conv-TxWitnessess = autoConvert TxWitnesses

  HsTy-TxBody = autoHsType TxBody ⊣ withConstructor "MkTxBody"
  Conv-TxBody = autoConvert TxBody

  HsTy-Tx = autoHsType Tx ⊣ withConstructor "MkTx"
  Conv-Tx = autoConvert Tx

unquoteDecl = do
  hsTypeAlias TxId
  hsTypeAlias Ix
  hsTypeAlias TxIn
  hsTypeAlias ExUnits
  hsTypeAlias P1Script
  hsTypeAlias P2Script ⊣ withName "P2Script"
  hsTypeAlias Script
  hsTypeAlias Datum
  hsTypeAlias DataHash ⊣ withName "DataHash"
  hsTypeAlias Value
  hsTypeAlias TxOut
  hsTypeAlias RdmrPtr
  hsTypeAlias ScriptHash
  hsTypeAlias AuxiliaryData
  hsTypeAlias Withdrawals
```
