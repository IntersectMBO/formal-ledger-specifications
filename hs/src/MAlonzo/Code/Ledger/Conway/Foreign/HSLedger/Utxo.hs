{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Either
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Util
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Script.Validation
import qualified MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Types.Numeric.PositiveNat
import qualified MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval
import qualified MAlonzo.Code.Ledger.Conway.Utxo
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

import GHC.Generics (Generic)
data UTxOEnv = MkUTxOEnv {ueSlot :: Integer, uePparams :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.PParams, ueTreasury :: Integer}
  deriving (Show, Eq, Generic)
data UTxOState = MkUTxOState {utxo :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap (Integer, Integer) ((Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BaseAddr MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript)))))), fees :: Integer, deposits :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.DepositPurpose Integer), donations :: Integer}
  deriving (Show, Eq, Generic)
type UTxO = (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap (Integer, Integer) ((Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BaseAddr MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript))))))
type Redeemer = Integer
-- Ledger.Conway.Foreign.HSLedger.Utxo._.ScriptPurpose
d_ScriptPurpose_20 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo
d_TxInfo_24 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_28 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_28
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.d_collectP2ScriptsWithContext_2368
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2730)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.credsNeeded
d_credsNeeded_30 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_30
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.du_credsNeeded_2276
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.evalP2Scripts
d_evalP2Scripts_32 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_32
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.du_evalP2Scripts_2408
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2730)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.getDatum
d_getDatum_34 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Script.Validation.T_ScriptPurpose_1960 ->
  Maybe Integer
d_getDatum_34
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.du_getDatum_2084
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.indexedRdmrs
d_indexedRdmrs_36 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Script.Validation.T_ScriptPurpose_1960 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_36
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.d_indexedRdmrs_2048
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2730)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.rdptr
d_rdptr_38 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Ledger.Conway.Script.Validation.T_ScriptPurpose_1960 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_38
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.d_rdptr_1974
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2730)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.txInfo
d_txInfo_40 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Script.Validation.T_TxInfo_2112
d_txInfo_40 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.du_txInfo_2154
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
      v2 v3
-- Ledger.Conway.Foreign.HSLedger.Utxo._.txOutToDataHash
d_txOutToDataHash_42 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_txOutToDataHash_42
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.du_txOutToDataHash_2352
-- Ledger.Conway.Foreign.HSLedger.Utxo._.txOutToP2Script
d_txOutToP2Script_44 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_368
d_txOutToP2Script_44
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.du_txOutToP2Script_2356
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.valContext
d_valContext_46 ::
  MAlonzo.Code.Ledger.Conway.Script.Validation.T_TxInfo_2112 ->
  MAlonzo.Code.Ledger.Conway.Script.Validation.T_ScriptPurpose_1960 ->
  Integer
d_valContext_46
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.du_valContext_2346
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.fee
d_fee_64 ::
  MAlonzo.Code.Ledger.Conway.Script.Validation.T_TxInfo_2112 ->
  Integer
d_fee_64 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.d_fee_2138 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.mint
d_mint_66 ::
  MAlonzo.Code.Ledger.Conway.Script.Validation.T_TxInfo_2112 ->
  Integer
d_mint_66 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.d_mint_2140 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.realizedInputs
d_realizedInputs_68 ::
  MAlonzo.Code.Ledger.Conway.Script.Validation.T_TxInfo_2112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_68 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.d_realizedInputs_2134
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.txcerts
d_txcerts_70 ::
  MAlonzo.Code.Ledger.Conway.Script.Validation.T_TxInfo_2112 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcerts_70 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.d_txcerts_2142
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.txdats
d_txdats_72 ::
  MAlonzo.Code.Ledger.Conway.Script.Validation.T_TxInfo_2112 ->
  [Integer]
d_txdats_72 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.d_txdats_2150 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.txid
d_txid_74 ::
  MAlonzo.Code.Ledger.Conway.Script.Validation.T_TxInfo_2112 ->
  Integer
d_txid_74 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.d_txid_2152 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.txouts
d_txouts_76 ::
  MAlonzo.Code.Ledger.Conway.Script.Validation.T_TxInfo_2112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.d_txouts_2136 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.txvldt
d_txvldt_78 ::
  MAlonzo.Code.Ledger.Conway.Script.Validation.T_TxInfo_2112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_78 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.d_txvldt_2146 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.txwdrls
d_txwdrls_80 ::
  MAlonzo.Code.Ledger.Conway.Script.Validation.T_TxInfo_2112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_80 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.d_txwdrls_2144
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.vkKey
d_vkKey_82 ::
  MAlonzo.Code.Ledger.Conway.Script.Validation.T_TxInfo_2112 ->
  [Integer]
d_vkKey_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.d_vkKey_2148 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__86 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__88 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.HasCast-UTxOState
d_HasCast'45'UTxOState_90 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_90
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_HasCast'45'UTxOState_2104
-- Ledger.Conway.Foreign.HSLedger.Utxo._.Scripts-No-premises
d_Scripts'45'No'45'premises_94 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2042 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_94
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_Scripts'45'No'45'premises_2422
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2730)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_98 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2042 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_98
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_Scripts'45'Yes'45'premises_2420
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2730)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTXO-premises
d_UTXO'45'premises_102 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2042 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_102
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_UTXO'45'premises_2578
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2730)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOEnv
d_UTxOEnv_104 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState
d_UTxOState_106 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.balance
d_balance_108 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_balance_108
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe (coe MAlonzo.Code.Ledger.Conway.Utxo.du_balance_2122 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.cbalance
d_cbalance_110 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_110
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe (coe MAlonzo.Code.Ledger.Conway.Utxo.du_cbalance_2128 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.consumed
d_consumed_112 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_consumed_112
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe (coe MAlonzo.Code.Ledger.Conway.Utxo.du_consumed_2864 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.depositRefunds
d_depositRefunds_114 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_depositRefunds_114
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Utxo.du_depositRefunds_2848 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo.UTxOEnv
d_UTxOEnv_115 = ()
type T_UTxOEnv_115 = UTxOEnv
pattern C_MkUTxOEnv_117 a0 a1 a2 = MkUTxOEnv a0 a1 a2
check_MkUTxOEnv_117 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.T_PParams_10199 ->
  Integer -> T_UTxOEnv_115
check_MkUTxOEnv_117 = MkUTxOEnv
cover_UTxOEnv_115 :: UTxOEnv -> ()
cover_UTxOEnv_115 x
  = case x of
      MkUTxOEnv _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.newDeposits
d_newDeposits_116 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_newDeposits_116
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe
      (coe MAlonzo.Code.Ledger.Conway.Utxo.du_newDeposits_2856 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.outs
d_outs_118 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_118 = coe MAlonzo.Code.Ledger.Conway.Utxo.du_outs_2116
-- Ledger.Conway.Foreign.HSLedger.Utxo._.produced
d_produced_120 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_produced_120
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe (coe MAlonzo.Code.Ledger.Conway.Utxo.du_produced_2872 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.refScriptsSize
d_refScriptsSize_122 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Integer
d_refScriptsSize_122
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2730 in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Utxo.d_refScriptsSize_2132 (coe v0)
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.updateDeposits
d_updateDeposits_124 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_124
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Utxo.du_updateDeposits_2526 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOEnv.pparams
d_pparams_140 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2042 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pparams_140 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2052 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOEnv.slot
d_slot_142 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2042 -> Integer
d_slot_142 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_slot_2050 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOEnv.treasury
d_treasury_144 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2042 -> Integer
d_treasury_144 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_treasury_2054 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState.deposits
d_deposits_148 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_148 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_deposits_2074 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState.donations
d_donations_150 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 -> Integer
d_donations_150 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_donations_2076 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState.fees
d_fees_152 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 -> Integer
d_fees_152 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2072 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState.utxo
d_utxo_154 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_154 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__158 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_162 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_162
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxow.du_UTXOW'45'inductive'45'premises_2468
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Utxo.HsTy-UTxOEnv
d_HsTy'45'UTxOEnv_168 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'UTxOEnv_168 = erased
-- Ledger.Conway.Foreign.HSLedger.Utxo.Conv-UTxOEnv
d_Conv'45'UTxOEnv_170 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'UTxOEnv_170
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Utxo.C_UTxOEnv'46'constructor_5729 v1 v2 v3
                -> coe
                     C_MkUTxOEnv_117 (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPParams_10201
                        (coe
                           MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_368 (coe v2))
                        (coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_370 (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_372 (coe v2))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_374 (coe v2))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_376
                                 (coe v2))))
                        (coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_378 (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_380
                           (coe v2))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_382 (coe v2))))
                        (coe MAlonzo.Code.Ledger.Conway.PParams.d_a_384 (coe v2))
                        (coe MAlonzo.Code.Ledger.Conway.PParams.d_b_386 (coe v2))
                        (coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_388 (coe v2))
                        (coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_390 (coe v2))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                        -> case coe v6 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v5) (coe v6)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval.d_fromUnitInterval_74
                              (coe
                                 MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_392
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                        -> case coe v6 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v5) (coe v6)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval.d_fromUnitInterval_74
                              (coe
                                 MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_394 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_396 (coe v2))
                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                        -> case coe v6 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v5) (coe v6)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_400
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_402
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_404
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Types.Numeric.PositiveNat.d_fromPosNat_18
                           (coe
                              MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_406
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                        -> case coe v6 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v5) (coe v6)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_408
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_410 (coe v2))
                        (coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_412 (coe v2))
                        (coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_414 (coe v2))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                        -> case coe v6 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v5) (coe v6)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_a0_416 (coe v2)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_418
                           (coe v2))
                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPoolThresholds_7433
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.PParams.d_Q1_286
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.PParams.d_Q2a_288
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.PParams.d_Q2b_290
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.PParams.d_Q4_292
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.PParams.d_Q5_294
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkDrepThresholds_29
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.PParams.d_P1_254
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.PParams.d_P2a_256
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.PParams.d_P2b_258
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.PParams.d_P3_260
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.PParams.d_P4_262
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.PParams.d_P5a_264
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.PParams.d_P5b_266
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.PParams.d_P5c_268
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.PParams.d_P5d_270
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.PParams.d_P6_272
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424
                                    (coe v2)))))
                        (coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_426 (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_428 (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_430
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_432 (coe v2))
                        (coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_434 (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_436 (coe v2)))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkUTxOEnv_117 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Utxo.C_UTxOEnv'46'constructor_5729
                     (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.PParams.C_PParams'46'constructor_5025 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPParams_10201
                                          (coe v5) (coe v6) (coe v7)
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                (coe
                                                   (\ v40 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (coe v8)))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                (coe
                                                   (\ v40 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (coe v9)))
                                          (coe v10) (coe v11)
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                (coe
                                                   (\ v40 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (coe v12)))
                                          (coe v13) (coe v14) (coe v15) (coe v16)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v41)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v42))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                          -> case coe v42 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v41) (coe v42)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             (MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval.d_fromUnitInterval_74
                                                (coe v17)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v41)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v42))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                          -> case coe v42 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v41) (coe v42)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             (MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval.d_fromUnitInterval_74
                                                (coe v18)))
                                          (coe v19) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v41)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v42))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                          -> case coe v42 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v41) (coe v42)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v21)
                                          (coe v22) (coe v23)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Types.Numeric.PositiveNat.d_fromPosNat_18
                                             (coe v24))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v41)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v42))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                          -> case coe v42 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v41) (coe v42)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v25)
                                          (coe v26) (coe v27) (coe v28)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v41)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v42))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                          -> case coe v42 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v41) (coe v42)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v29)
                                          (coe v30) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPoolThresholds_7433
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.PParams.d_Q1_286
                                                   (coe v32)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.PParams.d_Q2a_288
                                                   (coe v32)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.PParams.d_Q2b_290
                                                   (coe v32)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.PParams.d_Q4_292
                                                   (coe v32)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.PParams.d_Q5_294
                                                   (coe v32))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkDrepThresholds_29
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.PParams.d_P1_254
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.PParams.d_P2a_256
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.PParams.d_P2b_258
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.PParams.d_P3_260
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.PParams.d_P4_262
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.PParams.d_P5a_264
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.PParams.d_P5b_266
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.PParams.d_P5c_268
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.PParams.d_P5d_270
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.PParams.d_P6_272
                                                   (coe v33))))
                                          (coe v34) (coe v35) (coe v36) (coe v37) (coe v38)
                                          (coe v39)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPParams_10201 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.PParams.C_PParams'46'constructor_5025
                                          (coe v5) (coe v6) (coe v7)
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (coe
                                                (\ v40 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v8))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (coe
                                                (\ v40 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v9))
                                          (coe v10) (coe v11)
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (coe
                                                (\ v40 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v12))
                                          (coe v13) (coe v14) (coe v15) (coe v16)
                                          (let v40
                                                 = MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval.d_toUnitInterval_76
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                           (coe
                                                              (\ v40 ->
                                                                 case coe v40 of
                                                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                          (coe v41)
                                                                          (coe
                                                                             addInt
                                                                             (coe (1 :: Integer))
                                                                             (coe v42))
                                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                                           (coe
                                                              (\ v40 ->
                                                                 case coe v40 of
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                                     -> case coe v42 of
                                                                          0 -> coe
                                                                                 MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                          _ -> coe
                                                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                 (coe v41) (coe v42)
                                                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                                                        v17) in
                                           coe
                                             (case coe v40 of
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v41
                                                  -> coe v41
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                  -> coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.Util.d_error_10
                                                       erased
                                                       ("Formal Spec: rational outside of unit interval"
                                                        ::
                                                        Data.Text.Text)
                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                          (let v40
                                                 = MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval.d_toUnitInterval_76
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                           (coe
                                                              (\ v40 ->
                                                                 case coe v40 of
                                                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                          (coe v41)
                                                                          (coe
                                                                             addInt
                                                                             (coe (1 :: Integer))
                                                                             (coe v42))
                                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                                           (coe
                                                              (\ v40 ->
                                                                 case coe v40 of
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                                     -> case coe v42 of
                                                                          0 -> coe
                                                                                 MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                          _ -> coe
                                                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                 (coe v41) (coe v42)
                                                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                                                        v18) in
                                           coe
                                             (case coe v40 of
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v41
                                                  -> coe v41
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                  -> coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.Util.d_error_10
                                                       erased
                                                       ("Formal Spec: rational outside of unit interval"
                                                        ::
                                                        Data.Text.Text)
                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                          (coe v19) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v41)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v42))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                          -> case coe v42 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v41) (coe v42)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v21)
                                          (coe v22) (coe v23)
                                          (let v40
                                                 = MAlonzo.Code.Ledger.Conway.Types.Numeric.PositiveNat.d_toPosNat_20
                                                     (coe v24) in
                                           coe
                                             (case coe v40 of
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v41
                                                  -> coe v41
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                  -> coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.Util.d_error_10
                                                       erased
                                                       ("Formal Spec: natural number is zero (not nonZero)"
                                                        ::
                                                        Data.Text.Text)
                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v41)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v42))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                          -> case coe v42 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v41) (coe v42)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v25)
                                          (coe v26) (coe v27) (coe v28)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v41)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v42))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v41 v42
                                                          -> case coe v42 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v41) (coe v42)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v29)
                                          (coe v30) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Conway.PParams.C_PoolThresholds'46'constructor_3431 v41 v42 v43 v44 v45
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPoolThresholds_7433
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v47)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v48))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v47 v48
                                                                               -> case coe v48 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v47)
                                                                                           (coe v48)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v41)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v47)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v48))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v47 v48
                                                                               -> case coe v48 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v47)
                                                                                           (coe v48)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v42)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v47)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v48))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v47 v48
                                                                               -> case coe v48 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v47)
                                                                                           (coe v48)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v43)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v47)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v48))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v47 v48
                                                                               -> case coe v48 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v47)
                                                                                           (coe v48)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v44)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v47)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v48))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v47 v48
                                                                               -> case coe v48 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v47)
                                                                                           (coe v48)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v45)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPoolThresholds_7433 v41 v42 v43 v44 v45
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.PParams.C_PoolThresholds'46'constructor_3431
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v47)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v48))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v47 v48
                                                                               -> case coe v48 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v47)
                                                                                           (coe v48)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v41)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v47)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v48))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v47 v48
                                                                               -> case coe v48 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v47)
                                                                                           (coe v48)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v42)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v47)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v48))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v47 v48
                                                                               -> case coe v48 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v47)
                                                                                           (coe v48)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v43)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v47)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v48))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v47 v48
                                                                               -> case coe v48 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v47)
                                                                                           (coe v48)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v44)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v47)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v48))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v47 v48
                                                                               -> case coe v48 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v47)
                                                                                           (coe v48)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v45)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v32)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Conway.PParams.C_DrepThresholds'46'constructor_2867 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkDrepThresholds_29
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v41)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v42)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v43)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v44)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v45)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v46)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v47)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v48)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v49)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v50)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkDrepThresholds_29 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.PParams.C_DrepThresholds'46'constructor_2867
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v41)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v42)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v43)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v44)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v45)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v46)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v47)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v48)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v49)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                                                    (coe v52)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v53))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v52 v53
                                                                               -> case coe v53 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v52)
                                                                                           (coe v53)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v50)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v33)
                                          (coe v34) (coe v35) (coe v36) (coe v37) (coe v38)
                                          (coe v39)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Utxo.HsTy-UTxOState
d_HsTy'45'UTxOState_172 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'UTxOState_172 = erased
-- Ledger.Conway.Foreign.HSLedger.Utxo.Conv-UTxOState
d_Conv'45'UTxOState_174 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'UTxOState_174
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2078 v1 v2 v3 v4
                -> coe
                     C_MkUTxOState_1107
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkUTxOState_1107 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Conway.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2078
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v1)))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v5
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                       (coe v5)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v3)))
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Utxo.UTxOState
d_UTxOState_1105 = ()
type T_UTxOState_1105 = UTxOState
pattern C_MkUTxOState_1107 a0 a1 a2 a3 = MkUTxOState a0 a1 a2 a3
check_MkUTxOState_1107 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          () ()
          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_BaseAddr_1241
          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_BootstrapAddr_3115)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () ()
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () Integer Integer))
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () ()
                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_HSTimelock_2017
                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_HSPlutusScript_3029))))) ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DepositPurpose_2699
    Integer ->
  Integer -> T_UTxOState_1105
check_MkUTxOState_1107 = MkUTxOState
cover_UTxOState_1105 :: UTxOState -> ()
cover_UTxOState_1105 x
  = case x of
      MkUTxOState _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.utxo-step
utxoStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_115 ->
  T_UTxOState_1105 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_103003 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1105
utxoStep = coe d_utxo'45'step_2160
d_utxo'45'step_2160 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_115 ->
  T_UTxOState_1105 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_103003 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1105
d_utxo'45'step_2160 v0 v1
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'UTxOState_174)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'UTxOState_174))))
      (coe
         MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
         (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.Properties.d_Computational'45'UTXO_2458
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2730)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOEnv_170
            v1))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.utxow-step
utxowStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_115 ->
  T_UTxOState_1105 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_103003 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1105
utxowStep = coe d_utxow'45'step_2162
d_utxow'45'step_2162 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_115 ->
  T_UTxOState_1105 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_103003 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1105
d_utxow'45'step_2162 v0 v1
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'UTxOState_174)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'UTxOState_174))))
      (coe
         MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
         (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties.d_Computational'45'UTXOW_1714
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2730)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOEnv_170
            v1))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.utxo-debug
utxoDebug ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_115 ->
  T_UTxOState_1105 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_103003 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
utxoDebug = coe d_utxo'45'debug_2164
d_utxo'45'debug_2164 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_115 ->
  T_UTxOState_1105 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_103003 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_utxo'45'debug_2164 ~v0 v1 v2 v3 = du_utxo'45'debug_2164 v1 v2 v3
du_utxo'45'debug_2164 ::
  T_UTxOEnv_115 ->
  T_UTxOState_1105 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_103003 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_utxo'45'debug_2164 v0 v1 v2
  = coe
      MAlonzo.Code.Data.String.Base.d_unlines_36
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe ("Consumed:" :: Data.Text.Text))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.String.Base.d__'43''43'__20
               ("\tInputs:      \t" :: Data.Text.Text)
               (coe
                  MAlonzo.Code.Data.Nat.Show.d_show_56
                  (coe
                     MAlonzo.Code.Ledger.Conway.Utxo.du_balance_2122
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           erased
                           (coe
                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOState_174
                              v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982
                           (coe
                              MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                 v2)))))))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                  ("\tMint:        \t" :: Data.Text.Text)
                  (coe
                     MAlonzo.Code.Data.Nat.Show.d_show_56
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2990
                        (coe
                           MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                              v2)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                     ("\tRefunds:     \t" :: Data.Text.Text)
                     (coe
                        MAlonzo.Code.Data.Nat.Show.d_show_56
                        (let v3
                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
                              (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                 (coe v3))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Utxo.du_depositRefunds_2848
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2052
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       d_Conv'45'UTxOEnv_170 v0))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                       (coe
                                          (\ v4 ->
                                             case coe v4 of
                                               MAlonzo.Code.Ledger.Conway.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2078 v5 v6 v7 v8
                                                 -> coe
                                                      C_MkUTxOState_1107
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v5))))
                                                      (coe v6)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v7))))
                                                      (coe v8)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                       (coe
                                          (\ v4 ->
                                             case coe v4 of
                                               C_MkUTxOState_1107 v5 v6 v7 v8
                                                 -> coe
                                                      MAlonzo.Code.Ledger.Conway.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2078
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                            (coe
                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                               () erased () erased
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                                                         (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                            (coe v5)))
                                                      (coe v6)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                            (let v9
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                        (coe v9)))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                         (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                            (coe v7)))
                                                      (coe v8)
                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                                    v1)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                       v2)))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.String.Base.d__'43''43'__20
                        ("\tWithdrawals: \t" :: Data.Text.Text)
                        (coe
                           MAlonzo.Code.Data.Nat.Show.d_show_56
                           (let v3
                                  = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                    (coe v3))
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                                    (let v4
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                     coe
                                       (let v5
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                  (coe v4) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                                                   (coe v5)))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                      (coe v5))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                   (coe v5))))))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                       (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
                                    (coe
                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                                    (coe (\ v4 -> v4))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2996
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                             v2))))))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.String.Base.d__'43''43'__20
                           ("\tTotal:       \t" :: Data.Text.Text)
                           (coe
                              MAlonzo.Code.Data.Nat.Show.d_show_56
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Utxo.du_consumed_2864
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2052
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       d_Conv'45'UTxOEnv_170 v0))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                       (coe
                                          (\ v3 ->
                                             case coe v3 of
                                               MAlonzo.Code.Ledger.Conway.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2078 v4 v5 v6 v7
                                                 -> coe
                                                      C_MkUTxOState_1107
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v4))))
                                                      (coe v5)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v6))))
                                                      (coe v7)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                       (coe
                                          (\ v3 ->
                                             case coe v3 of
                                               C_MkUTxOState_1107 v4 v5 v6 v7
                                                 -> coe
                                                      MAlonzo.Code.Ledger.Conway.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2078
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                            (coe
                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                               () erased () erased
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                                                         (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                            (coe v4)))
                                                      (coe v5)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                            (let v8
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                        (coe v8)))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                         (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                            (coe v6)))
                                                      (coe v7)
                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                                    v1)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                       v2)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe ("Produced:" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                 ("\tOutputs:     \t" :: Data.Text.Text)
                                 (coe
                                    MAlonzo.Code.Data.Nat.Show.d_show_56
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Utxo.du_balance_2122
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Utxo.du_outs_2116
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                                v2))))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                    ("\tDonations:   \t" :: Data.Text.Text)
                                    (coe
                                       MAlonzo.Code.Data.Nat.Show.d_show_56
                                       (let v3
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
                                             (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                                (coe v3))
                                             (MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3002
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                                      v2)))))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                       ("\tDeposits:    \t" :: Data.Text.Text)
                                       (coe
                                          MAlonzo.Code.Data.Nat.Show.d_show_56
                                          (let v3
                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
                                                (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Utxo.du_newDeposits_2856
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2052
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         d_Conv'45'UTxOEnv_170 v0))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                         (coe
                                                            (\ v4 ->
                                                               case coe v4 of
                                                                 MAlonzo.Code.Ledger.Conway.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2078 v5 v6 v7 v8
                                                                   -> coe
                                                                        C_MkUTxOState_1107
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v5))))
                                                                        (coe v6)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v7))))
                                                                        (coe v8)
                                                                 _ -> MAlonzo.RTE.mazUnreachableError))
                                                         (coe
                                                            (\ v4 ->
                                                               case coe v4 of
                                                                 C_MkUTxOState_1107 v5 v6 v7 v8
                                                                   -> coe
                                                                        MAlonzo.Code.Ledger.Conway.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2078
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                              (coe
                                                                                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                 () erased () erased
                                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                                                                           (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                              (coe v5)))
                                                                        (coe v6)
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                              (let v9
                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                          (coe
                                                                                             v9)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                           (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                              (coe v7)))
                                                                        (coe v8)
                                                                 _ -> MAlonzo.RTE.mazUnreachableError)))
                                                      v1)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                                         v2)))))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                          ("\tFees:        \t" :: Data.Text.Text)
                                          (coe
                                             MAlonzo.Code.Data.Nat.Show.d_show_56
                                             (let v3
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
                                                   (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                                      (coe v3))
                                                   (MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2988
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                                            v2)))))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                             ("\tTotal:       \t" :: Data.Text.Text)
                                             (coe
                                                MAlonzo.Code.Data.Nat.Show.d_show_56
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Utxo.du_produced_2872
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2052
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         d_Conv'45'UTxOEnv_170 v0))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                         (coe
                                                            (\ v3 ->
                                                               case coe v3 of
                                                                 MAlonzo.Code.Ledger.Conway.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2078 v4 v5 v6 v7
                                                                   -> coe
                                                                        C_MkUTxOState_1107
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v4))))
                                                                        (coe v5)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v6))))
                                                                        (coe v7)
                                                                 _ -> MAlonzo.RTE.mazUnreachableError))
                                                         (coe
                                                            (\ v3 ->
                                                               case coe v3 of
                                                                 C_MkUTxOState_1107 v4 v5 v6 v7
                                                                   -> coe
                                                                        MAlonzo.Code.Ledger.Conway.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2078
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                              (coe
                                                                                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                 () erased () erased
                                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                                                                           (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                              (coe v4)))
                                                                        (coe v5)
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                              (let v8
                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                          (coe
                                                                                             v8)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                           (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                              (coe v6)))
                                                                        (coe v7)
                                                                 _ -> MAlonzo.RTE.mazUnreachableError)))
                                                      v1)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                                         v2)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe ("" :: Data.Text.Text))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe ("Reference Scripts Info:" :: Data.Text.Text))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                      ("\tTotal size: \t" :: Data.Text.Text)
                                                      (coe
                                                         MAlonzo.Code.Data.Nat.Show.d_show_56
                                                         (MAlonzo.Code.Ledger.Conway.Utxo.d_refScriptsSize_2132
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2730)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  d_Conv'45'UTxOState_174 v1))
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                  (coe
                                                                     (\ v3 ->
                                                                        case coe v3 of
                                                                          MAlonzo.Code.Ledger.Conway.Transaction.C_Tx'46'constructor_20409 v4 v5 v6 v7 v8
                                                                            -> coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTx_103005
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_11049
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982
                                                                                             (coe
                                                                                                v4))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2984
                                                                                             (coe
                                                                                                v4))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2986
                                                                                                (coe
                                                                                                   v4)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2988
                                                                                       (coe v4))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2990
                                                                                       (coe v4))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (coe
                                                                                             (\ v9 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2992
                                                                                             (coe
                                                                                                v4))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_86))
                                                                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2994
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2996
                                                                                                (coe
                                                                                                   v4)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_42))
                                                                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_2998
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_792))
                                                                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3000
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3002
                                                                                       (coe v4))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParamsUpdate_28))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txup_3004
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3006
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3008
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3010
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3012
                                                                                       (coe v4))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3014
                                                                                             (coe
                                                                                                v4))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3016
                                                                                             (coe
                                                                                                v4))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Conway.Transaction.d_scriptIntHash_3018
                                                                                          (coe
                                                                                             v4))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxWitnesses_3605
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3120
                                                                                                (coe
                                                                                                   v5)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))
                                                                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3122
                                                                                             (coe
                                                                                                v5))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3124
                                                                                             (coe
                                                                                                v5))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tag_12)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3126
                                                                                                (coe
                                                                                                   v5))))))
                                                                                 (coe v6) (coe v7)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    v8)
                                                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                                                  (coe
                                                                     (\ v3 ->
                                                                        case coe v3 of
                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTx_103005 v4 v5 v6 v7 v8
                                                                            -> coe
                                                                                 MAlonzo.Code.Ledger.Conway.Transaction.C_Tx'46'constructor_20409
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                       (coe
                                                                                          (\ v9 ->
                                                                                             case coe
                                                                                                    v9 of
                                                                                               MAlonzo.Code.Ledger.Conway.Transaction.C_TxBody'46'constructor_19471 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_11049
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            v10))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            v11))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                               (coe
                                                                                                                  v12))))
                                                                                                      (coe
                                                                                                         v13)
                                                                                                      (coe
                                                                                                         v14)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            (coe
                                                                                                               (\ v29 ->
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                                            (coe
                                                                                                               v15)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_86))
                                                                                                         v16)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                               (coe
                                                                                                                  v17))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_42))
                                                                                                         v18)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_792))
                                                                                                         v19)
                                                                                                      (coe
                                                                                                         v20)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParamsUpdate_28))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                         v21)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v22)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v23)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v24)
                                                                                                      (coe
                                                                                                         v25)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            v26))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            v27))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v28)
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                       (coe
                                                                                          (\ v9 ->
                                                                                             case coe
                                                                                                    v9 of
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_11049 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Transaction.C_TxBody'46'constructor_19471
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                                                                               (coe
                                                                                                                  v10))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                                                                               (coe
                                                                                                                  v11))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                                                                                                         (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                                            (coe
                                                                                                               v12)))
                                                                                                      (coe
                                                                                                         v13)
                                                                                                      (coe
                                                                                                         v14)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                         (coe
                                                                                                            (\ v29 ->
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                            ()
                                                                                                            erased
                                                                                                            ()
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                            v15))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_86))
                                                                                                         v16)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                            (let v29
                                                                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                                             coe
                                                                                                               (let v30
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                                                          (coe
                                                                                                                             v29) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                                                                                                                           (coe
                                                                                                                              v30)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                                                                                              (coe
                                                                                                                                 v30))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                                                                                           (coe
                                                                                                                              v30))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                                            (coe
                                                                                                               v17)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_42))
                                                                                                         v18)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_792))
                                                                                                         v19)
                                                                                                      (coe
                                                                                                         v20)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParamsUpdate_28))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                         v21)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v22)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v23)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v24)
                                                                                                      (coe
                                                                                                         v25)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                                                                               (coe
                                                                                                                  v26))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                                                                               (coe
                                                                                                                  v27))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v28)
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                    v4)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                       (coe
                                                                                          (\ v9 ->
                                                                                             case coe
                                                                                                    v9 of
                                                                                               MAlonzo.Code.Ledger.Conway.Transaction.C_TxWitnesses'46'constructor_20249 v10 v11 v12 v13
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxWitnesses_3605
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                               (coe
                                                                                                                  v10))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))
                                                                                                            v11))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            v12))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tag_12)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))))
                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                               (coe
                                                                                                                  v13))))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                       (coe
                                                                                          (\ v9 ->
                                                                                             case coe
                                                                                                    v9 of
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxWitnesses_3605 v10 v11 v12 v13
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Transaction.C_TxWitnesses'46'constructor_20249
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_DecEq'45'HSVKey_26)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                                            (coe
                                                                                                               v10)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                                                                               (coe
                                                                                                                  v11))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                                                                               (coe
                                                                                                                  v12))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Tag_20
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tag_12)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                                         (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                                            (coe
                                                                                                               v13)))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                    v5)
                                                                                 (coe v6) (coe v7)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    v8)
                                                                          _ -> MAlonzo.RTE.mazUnreachableError)))
                                                               v2))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.utxow-debug
utxowDebug ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_115 ->
  T_UTxOState_1105 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_103003 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
utxowDebug = coe d_utxow'45'debug_2242
d_utxow'45'debug_2242 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_115 ->
  T_UTxOState_1105 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_103003 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_utxow'45'debug_2242 v0 ~v1 v2 v3
  = du_utxow'45'debug_2242 v0 v2 v3
du_utxow'45'debug_2242 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOState_1105 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_103003 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_utxow'45'debug_2242 v0 v1 v2
  = coe
      MAlonzo.Code.Data.String.Base.d_unlines_36
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe ("neededVKeyHashes utxo txb = " :: Data.Text.Text))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.String.Base.d_braces_48
               (coe
                  MAlonzo.Code.Data.String.Base.d_intersperse_30
                  (", " :: Data.Text.Text)
                  (coe
                     MAlonzo.Code.Data.List.Base.du_map_22
                     (coe
                        MAlonzo.Code.Class.Show.Core.d_show_16
                        (coe MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
                           (coe
                              MAlonzo.Code.Axiom.Set.du_mapPartial_576
                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj_42
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Script.Validation.du_credsNeeded_2276
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       d_Conv'45'UTxOState_174 v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                       v2)))))))))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe ("\nwitsKeyHashes = " :: Data.Text.Text))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.String.Base.d_braces_48
                     (coe
                        MAlonzo.Code.Data.String.Base.d_intersperse_30
                        (", " :: Data.Text.Text)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_map_22
                           (coe
                              MAlonzo.Code.Class.Show.Core.d_show_16
                              (coe MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_map_398
                                    (MAlonzo.Code.Axiom.Set.d_th_1470
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (\ v3 ->
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_hvkStoredHash_22
                                         (coe v3))
                                    (coe
                                       MAlonzo.Code.Class.IsSet.du_dom_548
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3120
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                                   v2)))))))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe ("\nneededScriptHashes = " :: Data.Text.Text))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.String.Base.d_braces_48
                           (coe
                              MAlonzo.Code.Data.String.Base.d_intersperse_30
                              (", " :: Data.Text.Text)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe
                                    MAlonzo.Code.Class.Show.Core.d_show_16
                                    (coe MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_mapPartial_576
                                          (MAlonzo.Code.Axiom.Set.d_th_1470
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (\ v3 ->
                                             coe
                                               MAlonzo.Code.Ledger.Conway.Address.du_isScriptObj_52
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v3)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Script.Validation.du_credsNeeded_2276
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   d_Conv'45'UTxOState_174 v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                                   v2)))))))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe ("\nrefScriptHashes = " :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.String.Base.d_braces_48
                                 (coe
                                    MAlonzo.Code.Data.String.Base.d_intersperse_30
                                    (", " :: Data.Text.Text)
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_map_22
                                       (coe
                                          MAlonzo.Code.Class.Show.Core.d_show_16
                                          (coe MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_map_398
                                                (MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_hashRespectsUnion_396
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_364)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_380)))
                                                (MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                      () erased () erased
                                                      (coe
                                                         MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                            (coe
                                                               (\ v3 ->
                                                                  case coe v3 of
                                                                    MAlonzo.Code.Ledger.Conway.Transaction.C_Tx'46'constructor_20409 v4 v5 v6 v7 v8
                                                                      -> coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTx_103005
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_11049
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                    (MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982
                                                                                       (coe v4))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                    (MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2984
                                                                                       (coe v4))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2986
                                                                                          (coe
                                                                                             v4)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2988
                                                                                 (coe v4))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2990
                                                                                 (coe v4))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                 () erased () erased
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                    (coe
                                                                                       (\ v9 ->
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                            (coe
                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2992
                                                                                       (coe v4))))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                 () erased () erased
                                                                                 (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_86))
                                                                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2994
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2996
                                                                                          (coe
                                                                                             v4)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                 () erased () erased
                                                                                 (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_42))
                                                                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_2998
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                 () erased () erased
                                                                                 (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_792))
                                                                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3000
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3002
                                                                                 (coe v4))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParamsUpdate_28))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_txup_3004
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3006
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3008
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3010
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3012
                                                                                 (coe v4))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                    (MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3014
                                                                                       (coe v4))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    (MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3016
                                                                                       (coe v4))))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_scriptIntHash_3018
                                                                                    (coe v4))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxWitnesses_3605
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3120
                                                                                          (coe
                                                                                             v5)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))
                                                                                    (MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3122
                                                                                       (coe v5))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    (MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3124
                                                                                       (coe v5))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tag_12)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))))
                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3126
                                                                                          (coe
                                                                                             v5))))))
                                                                           (coe v6) (coe v7)
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                              v8)
                                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                                            (coe
                                                               (\ v3 ->
                                                                  case coe v3 of
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTx_103005 v4 v5 v6 v7 v8
                                                                      -> coe
                                                                           MAlonzo.Code.Ledger.Conway.Transaction.C_Tx'46'constructor_20409
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                 (coe
                                                                                    (\ v9 ->
                                                                                       case coe
                                                                                              v9 of
                                                                                         MAlonzo.Code.Ledger.Conway.Transaction.C_TxBody'46'constructor_19471 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
                                                                                           -> coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_11049
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      v10))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      v11))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v12))))
                                                                                                (coe
                                                                                                   v13)
                                                                                                (coe
                                                                                                   v14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      (coe
                                                                                                         (\ v29 ->
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                                      (coe
                                                                                                         v15)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_86))
                                                                                                   v16)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v17))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_42))
                                                                                                   v18)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_792))
                                                                                                   v19)
                                                                                                (coe
                                                                                                   v20)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParamsUpdate_28))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                   v21)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v22)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v23)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v24)
                                                                                                (coe
                                                                                                   v25)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      v26))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                      v27))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v28)
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                 (coe
                                                                                    (\ v9 ->
                                                                                       case coe
                                                                                              v9 of
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_11049 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
                                                                                           -> coe
                                                                                                MAlonzo.Code.Ledger.Conway.Transaction.C_TxBody'46'constructor_19471
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                                                                         (coe
                                                                                                            v10))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                                                                         (coe
                                                                                                            v11))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                                                                                                   (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                                      (coe
                                                                                                         v12)))
                                                                                                (coe
                                                                                                   v13)
                                                                                                (coe
                                                                                                   v14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                   (coe
                                                                                                      (\ v29 ->
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                      ()
                                                                                                      erased
                                                                                                      ()
                                                                                                      erased
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                      v15))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_86))
                                                                                                   v16)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                      (let v29
                                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                                       coe
                                                                                                         (let v30
                                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                                                    (coe
                                                                                                                       v29) in
                                                                                                          coe
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                                                                                                                     (coe
                                                                                                                        v30)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                                                                                        (coe
                                                                                                                           v30))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                                                                                     (coe
                                                                                                                        v30))))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                                      (coe
                                                                                                         v17)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_42))
                                                                                                   v18)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_792))
                                                                                                   v19)
                                                                                                (coe
                                                                                                   v20)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParamsUpdate_28))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                   v21)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v22)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v23)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v24)
                                                                                                (coe
                                                                                                   v25)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                                                                         (coe
                                                                                                            v26))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                      (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                                                                         (coe
                                                                                                            v27))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v28)
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                              v4)
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                 (coe
                                                                                    (\ v9 ->
                                                                                       case coe
                                                                                              v9 of
                                                                                         MAlonzo.Code.Ledger.Conway.Transaction.C_TxWitnesses'46'constructor_20249 v10 v11 v12 v13
                                                                                           -> coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxWitnesses_3605
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v10))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))
                                                                                                      v11))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                      v12))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tag_12)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))))
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v13))))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                 (coe
                                                                                    (\ v9 ->
                                                                                       case coe
                                                                                              v9 of
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxWitnesses_3605 v10 v11 v12 v13
                                                                                           -> coe
                                                                                                MAlonzo.Code.Ledger.Conway.Transaction.C_TxWitnesses'46'constructor_20249
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_DecEq'45'HSVKey_26)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                                      (coe
                                                                                                         v10)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))
                                                                                                      (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                                                                         (coe
                                                                                                            v11))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_428
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                      (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                                                                         (coe
                                                                                                            v12))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Tag_20
                                                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tag_12)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                                   (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                                      (coe
                                                                                                         v13)))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                              v5)
                                                                           (coe v6) (coe v7)
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                              v8)
                                                                    _ -> MAlonzo.RTE.mazUnreachableError)))
                                                         v2))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                      () erased () erased
                                                      (coe
                                                         MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                      (MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                            d_Conv'45'UTxOState_174 v1))))))))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe ("\nwitsScriptHashes = " :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.String.Base.d_braces_48
                                       (coe
                                          MAlonzo.Code.Data.String.Base.d_intersperse_30
                                          (", " :: Data.Text.Text)
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_map_22
                                             (coe
                                                MAlonzo.Code.Class.Show.Core.d_show_16
                                                (coe
                                                   MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_map_398
                                                      (MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_hashRespectsUnion_396
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_364)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_380)))
                                                      (MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3122
                                                         (coe
                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                            () erased () erased
                                                            (coe
                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                            (MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                                                  v2))))))))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
