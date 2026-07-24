module Ledger.Dijkstra.Foreign.Transaction where

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
  Conv-TxBodySub = autoConvert TxBodySub

  HsTy-TxBody-TxLevelSub : HasHsType (TxBody TxLevelSub)
  HsTy-TxBody-TxLevelSub = mkHsType (TxBody TxLevelSub) (HsType TxBodySub)

  Conv-TxBody-TxLevelSub : Convertible (TxBody TxLevelSub) (HsType TxBodySub)
  Conv-TxBody-TxLevelSub = convTxBodySub ⨾ Conv-TxBodySub

record TxSub : Type where
  field
    txBody       : TxBodySub
    txWitnesses  : TxWitnesses
    txSize       : ℕ
    txAuxData    : Maybe AuxiliaryData

instance
  convTxSub : Convertible (Tx TxLevelSub) TxSub
  convTxSub = λ where
    .to   t → let open Tx t
     in record { txBody = to txBody
               ; txWitnesses = txWitnesses
               ; txSize = txSize
               ; txAuxData = txAuxData }
    .from t → let open TxSub t
     in record { txBody = from txBody
               ; txWitnesses = txWitnesses
               ; txSize = txSize
               ; txAuxData = txAuxData }

  HsTy-TxSub = autoHsType TxSub ⊣ withConstructor "MkTxSub"
                                • fieldPrefix "txsub"
  Conv-TxSub = autoConvert TxSub

  HsTy-Tx-TxLevelSub : HasHsType (Tx TxLevelSub)
  HsTy-Tx-TxLevelSub = mkHsType (Tx TxLevelSub) (HsType TxSub)

  Conv-Tx-TxLevelSub : Convertible (Tx TxLevelSub) (HsType TxSub)
  Conv-Tx-TxLevelSub = convTxSub ⨾ Conv-TxSub

record TxBodyTop : Type where
  field
    txIns                    : ℙ TxIn
    referenceInputs          : ℙ TxIn
    collateralInputs         : ℙ TxIn
    txOuts                   : Ix ⇀ TxOut
    txId                     : TxId
    txCerts                  : List DCert
    txFee                    : Fees
    txWithdrawals            : Withdrawals
    txVldt                   : Maybe Slot × Maybe Slot
    txADhash                 : Maybe ADHash
    txDonation               : Donations
    txGovVotes               : List GovVote
    txGovProposals           : List GovProposal
    txNetworkId              : Maybe Network
    currentTreasury          : Maybe Coin
    mint                     : Value
    scriptIntegrityHash      : Maybe ScriptHash
    txSubTransactions        : List (Tx TxLevelSub)
    txRequiredTopLevelGuards : ℙ (Credential × Maybe Datum)
    txGuards                 : ℙ Credential
    txDirectDeposits         : DirectDeposits
    txBalanceIntervals       : AccountBalanceIntervals

instance
  convTxBodyTop : Convertible (TxBody TxLevelTop) TxBodyTop
  convTxBodyTop = λ where
    .to   b → record { TxBody b }
    .from b → record { TxBodyTop b }

  HsTy-TxBodyTop = autoHsType TxBodyTop ⊣ withConstructor "MkTxBodyTop"
                                        • fieldPrefix "txbtop"
  Conv-TxBodyTop = autoConvert TxBodyTop

  HsTy-TxBody-TxLevelTop : HasHsType (TxBody TxLevelTop)
  HsTy-TxBody-TxLevelTop = mkHsType (TxBody TxLevelTop) (HsType TxBodyTop)
  Conv-TxBody-TxLevelTop : Convertible (TxBody TxLevelTop) (HsType TxBodyTop)
  Conv-TxBody-TxLevelTop = convTxBodyTop ⨾ Conv-TxBodyTop

record TxTop : Type where
  field
    txBody       : TxBodyTop
    txWitnesses  : TxWitnesses
    txSize       : ℕ
    isValid      : Bool
    txAuxData    : Maybe AuxiliaryData

instance
  convTxTop : Convertible (Tx TxLevelTop) TxTop
  convTxTop = λ where
    .to   t → let open Tx t
     in record { txBody = to txBody
               ; txWitnesses = txWitnesses
               ; txSize = txSize
               ; isValid = isValid
               ; txAuxData = txAuxData }
    .from t → let open TxTop t
     in record { txBody = from txBody
               ; txWitnesses = txWitnesses
               ; txSize = txSize
               ; isValid = isValid
               ; txAuxData = txAuxData }

  HsTy-TxTop = autoHsType TxTop ⊣ withConstructor "MkTxTop"
                                • fieldPrefix "txtop"
  Conv-TxTop = autoConvert TxTop

  HsTy-Tx-TxLevelTop : HasHsType (Tx TxLevelTop)
  HsTy-Tx-TxLevelTop = mkHsType (Tx TxLevelTop) (HsType TxTop)
  Conv-Tx-TxLevelTop : Convertible (Tx TxLevelTop) (HsType TxTop)
  Conv-Tx-TxLevelTop = convTxTop ⨾ Conv-TxTop

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
