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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties
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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.Util
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.PositiveNat
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

import GHC.Generics (Generic)
data UTxOEnv = MkUTxOEnv {ueSlot :: Integer, uePparams :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.PParams, ueTreasury :: Integer}
  deriving (Show, Eq, Generic)
data UTxOState = MkUTxOState {utxo :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap (Integer, Integer) ((Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BaseAddr MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript)))))), fees :: Integer, deposits :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.DepositPurpose Integer), donations :: Integer}
  deriving (Show, Eq, Generic)
type UTxO = (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap (Integer, Integer) ((Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BaseAddr MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript))))))
type Redeemer = Integer
-- Ledger.Conway.Foreign.HSLedger.Utxo._.ScriptPurpose
d_ScriptPurpose_20 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo
d_TxInfo_24 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_30 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_30
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2500
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2894)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.credsNeeded
d_credsNeeded_32 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3104 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_32
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2408
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.evalP2Scripts
d_evalP2Scripts_34 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_34
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2540
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2894)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.getDatum
d_getDatum_36 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.T_ScriptPurpose_2090 ->
  Maybe Integer
d_getDatum_36
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_getDatum_2214
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.indexedRdmrs
d_indexedRdmrs_38 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.T_ScriptPurpose_2090 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_38
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_indexedRdmrs_2178
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2894)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.rdptr
d_rdptr_40 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.T_ScriptPurpose_2090 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_40
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2104
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2894)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.txInfo
d_txInfo_42 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.T_TxInfo_2242
d_txInfo_42 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txInfo_2286
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v2 v3
-- Ledger.Conway.Foreign.HSLedger.Utxo._.txOutToDataHash
d_txOutToDataHash_44 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_txOutToDataHash_44
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2484
-- Ledger.Conway.Foreign.HSLedger.Utxo._.txOutToP2Script
d_txOutToP2Script_46 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_376
d_txOutToP2Script_46
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2488
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.valContext
d_valContext_48 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.T_TxInfo_2242 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.T_ScriptPurpose_2090 ->
  Integer
d_valContext_48
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_valContext_2478
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.fee
d_fee_66 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.T_TxInfo_2242 ->
  Integer
d_fee_66 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_fee_2268
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.mint
d_mint_68 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.T_TxInfo_2242 ->
  Integer
d_mint_68 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_mint_2270
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.realizedInputs
d_realizedInputs_70 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.T_TxInfo_2242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_70 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_realizedInputs_2264
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.txcerts
d_txcerts_72 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.T_TxInfo_2242 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1080]
d_txcerts_72 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_txcerts_2272
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.txdats
d_txdats_74 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.T_TxInfo_2242 ->
  [Integer]
d_txdats_74 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_txdats_2280
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.txid
d_txid_76 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.T_TxInfo_2242 ->
  Integer
d_txid_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_txid_2282
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.txouts
d_txouts_78 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.T_TxInfo_2242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_78 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_txouts_2266
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.txvldt
d_txvldt_80 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.T_TxInfo_2242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_80 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_txvldt_2276
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.txwdrls
d_txwdrls_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.T_TxInfo_2242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_txwdrls_2274
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.TxInfo.vkKey
d_vkKey_84 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.T_TxInfo_2242 ->
  [Integer]
d_vkKey_84 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_vkKey_2278
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__88 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__90 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo.UTxOEnv
d_UTxOEnv_91 = ()
type T_UTxOEnv_91 = UTxOEnv
pattern C_MkUTxOEnv_93 a0 a1 a2 = MkUTxOEnv a0 a1 a2
check_MkUTxOEnv_93 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.T_PParams_11223 ->
  Integer -> T_UTxOEnv_91
check_MkUTxOEnv_93 = MkUTxOEnv
cover_UTxOEnv_91 :: UTxOEnv -> ()
cover_UTxOEnv_91 x
  = case x of
      MkUTxOEnv _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.HasCast-UTxOState
d_HasCast'45'UTxOState_92 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_92
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOState_2240
-- Ledger.Conway.Foreign.HSLedger.Utxo._.Scripts-No-premises
d_Scripts'45'No'45'premises_96 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2174 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_96
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_Scripts'45'No'45'premises_2558
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2894)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2174 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_100
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_Scripts'45'Yes'45'premises_2556
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2894)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTXO-premises
d_UTXO'45'premises_104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2174 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_104
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_UTXO'45'premises_2714
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2894)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOEnv
d_UTxOEnv_106 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState
d_UTxOState_110 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.balance
d_balance_114 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_balance_114
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2258
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.cbalance
d_cbalance_116 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_116
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2264
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.consumed
d_consumed_118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3104 ->
  Integer
d_consumed_118
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3000
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.depositRefunds
d_depositRefunds_120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3104 ->
  Integer
d_depositRefunds_120
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_depositRefunds_2984
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.newDeposits
d_newDeposits_122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3104 ->
  Integer
d_newDeposits_122
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_newDeposits_2992
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.outs
d_outs_124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_124
  = coe MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2252
-- Ledger.Conway.Foreign.HSLedger.Utxo._.produced
d_produced_126 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3104 ->
  Integer
d_produced_126
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3008
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.refScriptsSize
d_refScriptsSize_128 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306 ->
  Integer
d_refScriptsSize_128
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2894 in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2268
            (coe v0) (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.updateDeposits
d_updateDeposits_130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_130
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOEnv.pparams
d_pparams_146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2174 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pparams_146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2184
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOEnv.slot
d_slot_148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2174 ->
  Integer
d_slot_148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2182 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOEnv.treasury
d_treasury_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2174 ->
  Integer
d_treasury_150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2186
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState.deposits
d_deposits_154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2208
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState.donations
d_donations_156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  Integer
d_donations_156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState.fees
d_fees_158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  Integer
d_fees_158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState.utxo
d_utxo_160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__164 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_168
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxow.du_UTXOW'45'inductive'45'premises_2608
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Utxo.HsTy-UTxOEnv
d_HsTy'45'UTxOEnv_174 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'UTxOEnv_174 = erased
-- Ledger.Conway.Foreign.HSLedger.Utxo.Conv-UTxOEnv
d_Conv'45'UTxOEnv_176 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'UTxOEnv_176
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2188 v1 v2 v3
                -> coe
                     C_MkUTxOEnv_93 (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPParams_11225
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_382
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_384
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_386
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
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_388
                                 (coe v2))))
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
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_390
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_392
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_394
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
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_396
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_398 (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_400 (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_402
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_404
                           (coe v2))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_constructor_22
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                        -> coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                             (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                        -> case coe v6 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v5) (coe v6)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_406
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_constructor_22
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                        -> coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                             (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                        -> case coe v6 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v5) (coe v6)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_408
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_410
                           (coe v2))
                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_constructor_22
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                        -> coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                             (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                        -> case coe v6 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v5) (coe v6)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_414
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_416
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_418
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Numeric.PositiveNat.d_fromPosNat_16
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_420
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_constructor_22
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                        -> coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                             (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                        -> case coe v6 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v5) (coe v6)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_422
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_424
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_426
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_428
                           (coe v2))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_constructor_22
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                        -> coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                             (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                        -> case coe v6 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v5) (coe v6)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_430
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_432
                           (coe v2))
                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPoolThresholds_8177
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_298
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_436
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_300
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_436
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_302
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_436
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_304
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_436
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_306
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_436
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkDrepThresholds_29
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_264
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_438
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_266
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_438
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_268
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_438
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_270
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_438
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_272
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_438
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_274
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_438
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_276
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_438
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_278
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_438
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_280
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_438
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_282
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_438
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_440
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_442
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_444
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_446
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_448
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_450
                           (coe v2)))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkUTxOEnv_93 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2188
                     (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_452 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPParams_11225
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
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                               (coe v41)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v42))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                          -> case coe v42 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v41) (coe v42)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                                                (coe v17)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                               (coe v41)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v42))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                          -> case coe v42 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v41) (coe v42)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                                                (coe v18)))
                                          (coe v19) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                               (coe v41)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v42))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
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
                                             MAlonzo.Code.Ledger.Prelude.Numeric.PositiveNat.d_fromPosNat_16
                                             (coe v24))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                               (coe v41)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v42))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
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
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                               (coe v41)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v42))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPoolThresholds_8177
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_298
                                                   (coe v32)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_300
                                                   (coe v32)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_302
                                                   (coe v32)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_304
                                                   (coe v32)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_306
                                                   (coe v32))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkDrepThresholds_29
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_264
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_266
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_268
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_270
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_272
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_274
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_276
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_278
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_280
                                                   (coe v33)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                  (coe v41)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v42))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v40 ->
                                                         case coe v40 of
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
                                                             -> case coe v42 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v41) (coe v42)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_282
                                                   (coe v33))))
                                          (coe v34) (coe v35) (coe v36) (coe v37) (coe v38)
                                          (coe v39)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPParams_11225 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_452
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
                                                 = MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_toUnitInterval_74
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                           (coe
                                                              (\ v40 ->
                                                                 case coe v40 of
                                                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                          (coe v41)
                                                                          (coe
                                                                             addInt
                                                                             (coe (1 :: Integer))
                                                                             (coe v42))
                                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                                           (coe
                                                              (\ v40 ->
                                                                 case coe v40 of
                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
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
                                                       MAlonzo.Code.Ledger.Prelude.Foreign.Util.d_error_10
                                                       erased
                                                       ("Formal Spec: rational outside of unit interval"
                                                        ::
                                                        Data.Text.Text)
                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                          (let v40
                                                 = MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_toUnitInterval_74
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                           (coe
                                                              (\ v40 ->
                                                                 case coe v40 of
                                                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                                          (coe v41)
                                                                          (coe
                                                                             addInt
                                                                             (coe (1 :: Integer))
                                                                             (coe v42))
                                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                                           (coe
                                                              (\ v40 ->
                                                                 case coe v40 of
                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
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
                                                       MAlonzo.Code.Ledger.Prelude.Foreign.Util.d_error_10
                                                       erased
                                                       ("Formal Spec: rational outside of unit interval"
                                                        ::
                                                        Data.Text.Text)
                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                          (coe v19) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                               (coe v41)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v42))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
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
                                                 = MAlonzo.Code.Ledger.Prelude.Numeric.PositiveNat.d_toPosNat_18
                                                     (coe v24) in
                                           coe
                                             (case coe v40 of
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v41
                                                  -> coe v41
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                  -> coe
                                                       MAlonzo.Code.Ledger.Prelude.Foreign.Util.d_error_10
                                                       erased
                                                       ("Formal Spec: natural number is zero (not nonZero)"
                                                        ::
                                                        Data.Text.Text)
                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                               (coe v41)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v42))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
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
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                                               (coe v41)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v42))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v41 v42
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
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_308 v41 v42 v43 v44 v45
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPoolThresholds_8177
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v47 v48
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v47 v48
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v47 v48
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v47 v48
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v47 v48
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
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPoolThresholds_8177 v41 v42 v43 v44 v45
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_308
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v47 v48
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v47 v48
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v47 v48
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v47 v48
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v46 ->
                                                                           case coe v46 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v47 v48
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v47 v48
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
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v40 ->
                                                      case coe v40 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_284 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkDrepThresholds_29
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_284
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v51 ->
                                                                           case coe v51 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v52 v53
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
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
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v52 v53
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
d_HsTy'45'UTxOState_178 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'UTxOState_178 = erased
-- Ledger.Conway.Foreign.HSLedger.Utxo.Conv-UTxOState
d_Conv'45'UTxOState_180 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'UTxOState_180
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2212 v1 v2 v3 v4
                -> coe
                     C_MkUTxOState_1173
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkUTxOState_1173 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2212
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v1)))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v5
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1054
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                       (coe v5)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v3)))
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Utxo.UTxOState
d_UTxOState_1171 = ()
type T_UTxOState_1171 = UTxOState
pattern C_MkUTxOState_1173 a0 a1 a2 a3 = MkUTxOState a0 a1 a2 a3
check_MkUTxOState_1173 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          () ()
          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_BaseAddr_1327
          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_BootstrapAddr_3129)
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
                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_HSTimelock_2187
                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_HSPlutusScript_3281))))) ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DepositPurpose_2871
    Integer ->
  Integer -> T_UTxOState_1171
check_MkUTxOState_1173 = MkUTxOState
cover_UTxOState_1171 :: UTxOState -> ()
cover_UTxOState_1171 x
  = case x of
      MkUTxOState _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.utxo-step
utxoStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_91 ->
  T_UTxOState_1171 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_107591 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1171
utxoStep = coe d_utxo'45'step_2294
d_utxo'45'step_2294 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_91 ->
  T_UTxOState_1171 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_107591 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1171
d_utxo'45'step_2294 v0 v1
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'UTxOState_180)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'UTxOState_180))))
      (coe
         MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
         (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.Properties.d_Computational'45'UTXO_2598
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2894)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOEnv_176
            v1))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.utxow-step
utxowStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_91 ->
  T_UTxOState_1171 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_107591 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1171
utxowStep = coe d_utxow'45'step_2296
d_utxow'45'step_2296 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_91 ->
  T_UTxOState_1171 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_107591 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1171
d_utxow'45'step_2296 v0 v1
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'UTxOState_180)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'UTxOState_180))))
      (coe
         MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
         (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties.d_Computational'45'UTXOW_1814
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2894)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOEnv_176
            v1))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.utxo-debug
utxoDebug ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_91 ->
  T_UTxOState_1171 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_107591 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
utxoDebug = coe d_utxo'45'debug_2298
d_utxo'45'debug_2298 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_91 ->
  T_UTxOState_1171 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_107591 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_utxo'45'debug_2298 ~v0 v1 v2 v3 = du_utxo'45'debug_2298 v1 v2 v3
du_utxo'45'debug_2298 ::
  T_UTxOEnv_91 ->
  T_UTxOState_1171 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_107591 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_utxo'45'debug_2298 v0 v1 v2
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
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2258
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           erased
                           (coe
                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2204
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOState_180
                              v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_3144
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
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
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3152
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
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
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_106
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_depositRefunds_2984
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2184
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOEnv_176
                                    v0))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                    (coe
                                       (\ v3 ->
                                          case coe v3 of
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2212 v4 v5 v6 v7
                                              -> coe
                                                   C_MkUTxOState_1173
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v4))))
                                                   (coe v5)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v6))))
                                                   (coe v7)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                    (coe
                                       (\ v3 ->
                                          case coe v3 of
                                            C_MkUTxOState_1173 v4 v5 v6 v7
                                              -> coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2212
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                         (coe
                                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                            () erased () erased
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                         (coe v4)))
                                                   (coe v5)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                         (let v8
                                                                = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1054
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                     (coe v8)))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                         (coe v6)))
                                                   (coe v7)
                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                 v1)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                    v2))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.String.Base.d__'43''43'__20
                        ("\tWithdrawals: \t" :: Data.Text.Text)
                        (coe
                           MAlonzo.Code.Data.Nat.Show.d_show_56
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_106
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                                 (let v3
                                        = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                  coe
                                    (let v4
                                           = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                               (coe v3) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                                                (coe v4)))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                   (coe v4))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                (coe v4))))))
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe (\ v3 -> v3))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3158
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3000
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2184
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       d_Conv'45'UTxOEnv_176 v0))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                       (coe
                                          (\ v3 ->
                                             case coe v3 of
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2212 v4 v5 v6 v7
                                                 -> coe
                                                      C_MkUTxOState_1173
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v4))))
                                                      (coe v5)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v6))))
                                                      (coe v7)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                       (coe
                                          (\ v3 ->
                                             case coe v3 of
                                               C_MkUTxOState_1173 v4 v5 v6 v7
                                                 -> coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2212
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                            (coe
                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                               () erased () erased
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                                                         (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                            (coe v4)))
                                                      (coe v5)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                            (let v8
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1054
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                        (coe v8)))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                         (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                            (coe v6)))
                                                      (coe v7)
                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                                    v1)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2258
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2252
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_106
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdonation_3164
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                                   v2))))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                       ("\tDeposits:    \t" :: Data.Text.Text)
                                       (coe
                                          MAlonzo.Code.Data.Nat.Show.d_show_56
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_106
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_newDeposits_2992
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2184
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      d_Conv'45'UTxOEnv_176 v0))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                      (coe
                                                         (\ v3 ->
                                                            case coe v3 of
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2212 v4 v5 v6 v7
                                                                -> coe
                                                                     C_MkUTxOState_1173
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v4))))
                                                                     (coe v5)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v6))))
                                                                     (coe v7)
                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                      (coe
                                                         (\ v3 ->
                                                            case coe v3 of
                                                              C_MkUTxOState_1173 v4 v5 v6 v7
                                                                -> coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2212
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                           (coe
                                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                              () erased () erased
                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                                                                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                           (coe v4)))
                                                                     (coe v5)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                           (let v8
                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1054
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                       (coe v8)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                           (coe v6)))
                                                                     (coe v7)
                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                   v1)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                                      v2))))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                          ("\tFees:        \t" :: Data.Text.Text)
                                          (coe
                                             MAlonzo.Code.Data.Nat.Show.d_show_56
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_106
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txfee_3150
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                                         v2))))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                             ("\tTotal:       \t" :: Data.Text.Text)
                                             (coe
                                                MAlonzo.Code.Data.Nat.Show.d_show_56
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3008
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2184
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         d_Conv'45'UTxOEnv_176 v0))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                         (coe
                                                            (\ v3 ->
                                                               case coe v3 of
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2212 v4 v5 v6 v7
                                                                   -> coe
                                                                        C_MkUTxOState_1173
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v4))))
                                                                        (coe v5)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v6))))
                                                                        (coe v7)
                                                                 _ -> MAlonzo.RTE.mazUnreachableError))
                                                         (coe
                                                            (\ v3 ->
                                                               case coe v3 of
                                                                 C_MkUTxOState_1173 v4 v5 v6 v7
                                                                   -> coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2212
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                              (coe
                                                                                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                 () erased () erased
                                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                                                                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                              (coe v4)))
                                                                        (coe v5)
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                              (let v8
                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1054
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                          (coe
                                                                                             v8)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                              (coe v6)))
                                                                        (coe v7)
                                                                 _ -> MAlonzo.RTE.mazUnreachableError)))
                                                      v1)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
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
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2268
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2894)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2204
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  d_Conv'45'UTxOState_180 v1))
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                  (coe
                                                                     (\ v3 ->
                                                                        case coe v3 of
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3328 v4 v5 v6 v7 v8
                                                                            -> coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTx_107593
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_12017
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_3144
                                                                                             (coe
                                                                                                v4))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3146
                                                                                             (coe
                                                                                                v4))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_3148
                                                                                                (coe
                                                                                                   v4)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txfee_3150
                                                                                       (coe v4))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3152
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
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (coe
                                                                                             (\ v9 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvldt_3154
                                                                                             (coe
                                                                                                v4))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_92))
                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3156
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3158
                                                                                                (coe
                                                                                                   v4)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_42))
                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3160
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_840))
                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txprop_3162
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdonation_3164
                                                                                       (coe v4))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txup_3166
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3168
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3170
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_curTreasury_3172
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3174
                                                                                       (coe v4))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3176
                                                                                             (coe
                                                                                                v4))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSigHash_3178
                                                                                             (coe
                                                                                                v4))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntHash_3180
                                                                                          (coe
                                                                                             v4))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxWitnesses_3907
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3294
                                                                                                (coe
                                                                                                   v5)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3296
                                                                                             (coe
                                                                                                v5))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3298
                                                                                             (coe
                                                                                                v5))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tag_12)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3300
                                                                                                (coe
                                                                                                   v5))))))
                                                                                 (coe v6) (coe v7)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    v8)
                                                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                                                  (coe
                                                                     (\ v3 ->
                                                                        case coe v3 of
                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTx_107593 v4 v5 v6 v7 v8
                                                                            -> coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3328
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                       (coe
                                                                                          (\ v9 ->
                                                                                             case coe
                                                                                                    v9 of
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3182 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_12017
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            v10))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            v11))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
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
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            (coe
                                                                                                               (\ v29 ->
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                                            (coe
                                                                                                               v15)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_92))
                                                                                                         v16)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                               (coe
                                                                                                                  v17))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
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
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_840))
                                                                                                         v19)
                                                                                                      (coe
                                                                                                         v20)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v22)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v23)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v24)
                                                                                                      (coe
                                                                                                         v25)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            v26))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            v27))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
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
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_12017 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3182
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                                                                               (coe
                                                                                                                  v10))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                                                                               (coe
                                                                                                                  v11))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                                                                                                         (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
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
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                         (coe
                                                                                                            (\ v29 ->
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
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
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_92))
                                                                                                         v16)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                            (let v29
                                                                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                             coe
                                                                                                               (let v30
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                          (coe
                                                                                                                             v29) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                                                                                                                           (coe
                                                                                                                              v30)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                                              (coe
                                                                                                                                 v30))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                                           (coe
                                                                                                                              v30))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                            (coe
                                                                                                               v17)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
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
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_840))
                                                                                                         v19)
                                                                                                      (coe
                                                                                                         v20)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v22)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v23)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v24)
                                                                                                      (coe
                                                                                                         v25)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                                                                               (coe
                                                                                                                  v26))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                                                                               (coe
                                                                                                                  v27))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
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
                                                                                       MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                       (coe
                                                                                          (\ v9 ->
                                                                                             case coe
                                                                                                    v9 of
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3304 v10 v11 v12 v13
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxWitnesses_3907
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                               (coe
                                                                                                                  v10))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))
                                                                                                            v11))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            v12))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tag_12)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxWitnesses_3907 v10 v11 v12 v13
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3304
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_DecEq'45'HSVKey_26)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                            (coe
                                                                                                               v10)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                                                                               (coe
                                                                                                                  v11))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                                                                               (coe
                                                                                                                  v12))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tag_12)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                                         (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                            (coe
                                                                                                               v13)))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                    v5)
                                                                                 (coe v6) (coe v7)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
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
  T_UTxOEnv_91 ->
  T_UTxOState_1171 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_107591 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
utxowDebug = coe d_utxow'45'debug_2376
d_utxow'45'debug_2376 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_91 ->
  T_UTxOState_1171 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_107591 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_utxow'45'debug_2376 v0 ~v1 v2 v3
  = du_utxow'45'debug_2376 v0 v2 v3
du_utxow'45'debug_2376 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOState_1171 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_107591 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_utxow'45'debug_2376 v0 v1 v2
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
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1136
                           (coe
                              MAlonzo.Code.Axiom.Set.du_mapPartial_578
                              (MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2408
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2204
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       d_Conv'45'UTxOState_180 v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
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
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1136
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_map_400
                                    (MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (\ v3 ->
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_hvkStoredHash_22
                                         (coe v3))
                                    (coe
                                       MAlonzo.Code.Class.IsSet.du_dom_562
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3294
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3320
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
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1136
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_mapPartial_578
                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (\ v3 ->
                                             coe
                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v3)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2408
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2204
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   d_Conv'45'UTxOState_180 v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
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
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1136
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_map_400
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_hashRespectsUnion_406
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_372)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_388)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3384
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                      () erased () erased
                                                      (coe
                                                         MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                            (coe
                                                               (\ v3 ->
                                                                  case coe v3 of
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3328 v4 v5 v6 v7 v8
                                                                      -> coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTx_107593
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_12017
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_3144
                                                                                       (coe v4))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3146
                                                                                       (coe v4))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_3148
                                                                                          (coe
                                                                                             v4)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txfee_3150
                                                                                 (coe v4))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3152
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
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                    (coe
                                                                                       (\ v9 ->
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                            (coe
                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvldt_3154
                                                                                       (coe v4))))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                 () erased () erased
                                                                                 (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_92))
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3156
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3158
                                                                                          (coe
                                                                                             v4)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                 () erased () erased
                                                                                 (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_42))
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3160
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                 () erased () erased
                                                                                 (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_840))
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txprop_3162
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdonation_3164
                                                                                 (coe v4))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txup_3166
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3168
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3170
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_curTreasury_3172
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3174
                                                                                 (coe v4))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3176
                                                                                       (coe v4))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSigHash_3178
                                                                                       (coe v4))))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntHash_3180
                                                                                    (coe v4))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxWitnesses_3907
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3294
                                                                                          (coe
                                                                                             v5)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))
                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3296
                                                                                       (coe v5))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3298
                                                                                       (coe v5))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tag_12)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))))
                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3300
                                                                                          (coe
                                                                                             v5))))))
                                                                           (coe v6) (coe v7)
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                              v8)
                                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                                            (coe
                                                               (\ v3 ->
                                                                  case coe v3 of
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTx_107593 v4 v5 v6 v7 v8
                                                                      -> coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3328
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                 (coe
                                                                                    (\ v9 ->
                                                                                       case coe
                                                                                              v9 of
                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3182 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
                                                                                           -> coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_12017
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      v10))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      v11))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
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
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      (coe
                                                                                                         (\ v29 ->
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                                      (coe
                                                                                                         v15)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_92))
                                                                                                   v16)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v17))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
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
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_840))
                                                                                                   v19)
                                                                                                (coe
                                                                                                   v20)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v22)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v23)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v24)
                                                                                                (coe
                                                                                                   v25)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      v26))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                      v27))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
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
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_12017 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
                                                                                           -> coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3182
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                                                                         (coe
                                                                                                            v10))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                                                                         (coe
                                                                                                            v11))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                                                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
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
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                   (coe
                                                                                                      (\ v29 ->
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
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
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_92))
                                                                                                   v16)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                      (let v29
                                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                       coe
                                                                                                         (let v30
                                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                    (coe
                                                                                                                       v29) in
                                                                                                          coe
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                                                                                                                     (coe
                                                                                                                        v30)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                                        (coe
                                                                                                                           v30))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                                     (coe
                                                                                                                        v30))))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                      (coe
                                                                                                         v17)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
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
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_840))
                                                                                                   v19)
                                                                                                (coe
                                                                                                   v20)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v22)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v23)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v24)
                                                                                                (coe
                                                                                                   v25)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                                                                         (coe
                                                                                                            v26))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                                                                         (coe
                                                                                                            v27))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
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
                                                                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                 (coe
                                                                                    (\ v9 ->
                                                                                       case coe
                                                                                              v9 of
                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3304 v10 v11 v12 v13
                                                                                           -> coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxWitnesses_3907
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v10))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))
                                                                                                      v11))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                      v12))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tag_12)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxWitnesses_3907 v10 v11 v12 v13
                                                                                           -> coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3304
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_DecEq'45'HSVKey_26)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                      (coe
                                                                                                         v10)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))
                                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                                                                         (coe
                                                                                                            v11))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                                                                         (coe
                                                                                                            v12))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tag_12)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                      (coe
                                                                                                         v13)))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                              v5)
                                                                           (coe v6) (coe v7)
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
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
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2204
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                            d_Conv'45'UTxOState_180 v1))))))))))
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
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1136
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_map_400
                                                      (MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_hashRespectsUnion_406
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_372)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_388)))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3296
                                                         (coe
                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                            () erased () erased
                                                            (coe
                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3320
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                                                  v2))))))))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
