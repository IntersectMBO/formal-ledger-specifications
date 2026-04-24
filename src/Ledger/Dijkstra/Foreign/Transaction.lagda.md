---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/Transaction.lagda.md
---
```agda
module Ledger.Dijkstra.Foreign.Transaction where

open import Foreign.Convertible
open import Foreign.Convertible.Deriving
open import Foreign.HaskellTypes
open import Foreign.HaskellTypes.Deriving
import Data.String as S

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Foreign.Address
open import Ledger.Core.Foreign.Crypto.Base
open import Ledger.Dijkstra.Foreign.HSStructures
open import Ledger.Dijkstra.Foreign.Cert
open import Ledger.Dijkstra.Foreign.Gov.Core
open import Ledger.Dijkstra.Foreign.Gov
open import Ledger.Dijkstra.Foreign.PParams
open import Ledger.Dijkstra.Foreign.Account

instance
  HsTy-Tag = autoHsType Tag ⊣ withName "Tag"
  Conv-Tag = autoConvert Tag

instance
  HsTy-NativeScript = autoHsType NativeScript
  {-# TERMINATING #-}
  Conv-NativeScript = autoConvert NativeScript

  HsTy-HSNativeScript = autoHsType HSNativeScript
  Conv-HSNativeScript = autoConvert HSNativeScript

  HsTy-HSPlutusScript = autoHsType HSPlutusScript
  Conv-HSPlutusScript = autoConvert HSPlutusScript

  HsTy-TxWitnesses = autoHsType TxWitnesses ⊣ withConstructor "MkTxWitnesses"
                                              • fieldPrefix "txw"
  Conv-TxWitnesses = autoConvert TxWitnesses

unquoteDecl = do
  hsTypeAlias Redeemer
  hsTypeAlias RedeemerPtr

record TxBodySub : Type where
  field
    txIns                : ℙ TxIn
    referenceInputs      : ℙ TxIn
    txOuts               : Ix ⇀ TxOut
    txId                 : TxId
    txCerts              : List DCert
    txWithdrawals        : Withdrawals
    txVldt               : Maybe Slot × Maybe Slot
    txADhash             : Maybe ADHash
    txDonation           : Donations
    txGovVotes           : List GovVote
    txGovProposals       : List GovProposal
    txNetworkId          : Maybe Network
    currentTreasury      : Maybe Coin
    mint                 : Value
    scriptIntegrityHash  : Maybe ScriptHash
    txGuards                  : ℙ Credential
    txRequiredTopLevelGuards  : ℙ (Credential × Maybe Datum)
    txDirectDeposits          : DirectDeposits
    txBalanceIntervals        : AccountBalanceIntervals

instance
  convTxBodySub : Convertible (TxBody TxLevelSub) TxBodySub
  convTxBodySub = λ where
    .to   b → record { TxBody b }
    .from b → record { TxBodySub b }

  HsTy-TxBodySub = autoHsType TxBodySub ⊣ withConstructor "MkTxBodySub"
                                        • fieldPrefix "txbsub"
  Conv-TxBodySub' = autoConvert TxBodySub

  HsTy-TxBodySub' : HasHsType (TxBody TxLevelSub)
  HsTy-TxBodySub' = MkHsType (TxBody TxLevelSub) (HsType TxBodySub)
  Conv-TxBodySub'' : Convertible (TxBody TxLevelSub) (HsType TxBodySub)
  Conv-TxBodySub'' = convTxBodySub ⨾ Conv-TxBodySub'

record TxSub : Type where
  field
    txBody       : TxBody TxLevelSub
    txWitnesses  : TxWitnesses
    txSize       : ℕ
    isValid      : ⊤
    txAuxData    : Maybe AuxiliaryData

instance
  convTxSub : Convertible (Tx TxLevelSub) TxSub
  convTxSub = λ where
    .to   t → record { Tx t }
    .from t → record { TxSub t }

  HsTy-TxSub = autoHsType TxSub ⊣ withConstructor "MkTxSub"
                                • fieldPrefix "txsub"
  Conv-TxSub' = autoConvert TxSub

  HsTy-TxSub' : HasHsType (Tx TxLevelSub)
  HsTy-TxSub' = MkHsType (Tx TxLevelSub) (HsType TxSub)
  Conv-TxSub'' : Convertible (Tx TxLevelSub) (HsType TxSub)
  Conv-TxSub'' = convTxSub ⨾ Conv-TxSub'

record TxBodyTop : Type where
  field
    txIns               : ℙ TxIn
    referenceInputs     : ℙ TxIn
    collateralInputs    : ℙ TxIn
    txOuts              : Ix ⇀ TxOut
    txId                : TxId
    txCerts             : List DCert
    txFee               : Fees
    txWithdrawals       : Withdrawals
    txVldt              : Maybe Slot × Maybe Slot
    txADhash            : Maybe ADHash
    txDonation          : Donations
    txGovVotes          : List GovVote
    txGovProposals      : List GovProposal
    txNetworkId         : Maybe Network
    currentTreasury     : Maybe Coin
    mint                : Value
    scriptIntegrityHash : Maybe ScriptHash
    txSubTransactions   : List (Tx TxLevelSub)
    txGuards            : ℙ Credential
    txDirectDeposits    : DirectDeposits
    txBalanceIntervals  : AccountBalanceIntervals

instance
  convTxBodyTop : Convertible (TxBody TxLevelTop) TxBodyTop
  convTxBodyTop = λ where
    .to   b → record { TxBody b }
    .from b → record { TxBodyTop b }

  HsTy-TxBodyTop = autoHsType TxBodyTop ⊣ withConstructor "MkTxBodyTop"
                                        • fieldPrefix "txbtop"
  Conv-TxBodyTop' = autoConvert TxBodyTop

  HsTy-TxBodyTop' : HasHsType (TxBody TxLevelTop)
  HsTy-TxBodyTop' = MkHsType (TxBody TxLevelTop) (HsType TxBodyTop)
  Conv-TxBodyTop'' : Convertible (TxBody TxLevelTop) (HsType TxBodyTop)
  Conv-TxBodyTop'' = convTxBodyTop ⨾ Conv-TxBodyTop'

record TxTop : Type where
  field
    txBody       : TxBody TxLevelTop
    txWitnesses  : TxWitnesses
    txSize       : ℕ
    isValid      : Bool
    txAuxData    : Maybe AuxiliaryData

instance
  convTxTop : Convertible (Tx TxLevelTop) TxTop
  convTxTop = λ where
    .to   t → record { Tx t }
    .from t → record { TxTop t }

  HsTy-TxTop = autoHsType TxTop ⊣ withConstructor "MkTxTop"
                                • fieldPrefix "txtop"
  Conv-TxTop' = autoConvert TxTop

  HsTy-TxTop' : HasHsType (Tx TxLevelTop)
  HsTy-TxTop' = MkHsType (Tx TxLevelTop) (HsType TxTop)
  Conv-TxTop'' : Convertible (Tx TxLevelTop) (HsType TxTop)
  Conv-TxTop'' = convTxTop ⨾ Conv-TxTop'

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
  hsTypeAlias ScriptHash
  hsTypeAlias AuxiliaryData
  hsTypeAlias Withdrawals
```
