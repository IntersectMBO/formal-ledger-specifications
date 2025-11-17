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
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
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
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose
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
-- Ledger.Conway.Foreign.HSLedger.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_12 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_12
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2770
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_3104)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.credsNeeded
d_credsNeeded_14 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_14
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2684
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.evalP2Scripts
d_evalP2Scripts_16 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_16
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2810
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_3104)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.getDatum
d_getDatum_18 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2306 ->
  Maybe Integer
d_getDatum_18
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_getDatum_2538
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.indexedRdmrs
d_indexedRdmrs_20 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2306 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_20
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_indexedRdmrs_2502
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_3104)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.rdptr
d_rdptr_22 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2306 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_22
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2430
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_3104)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.txInfo
d_txInfo_24 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2320
d_txInfo_24 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txInfo_2566
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v2 v3
-- Ledger.Conway.Foreign.HSLedger.Utxo._.txOutToDataHash
d_txOutToDataHash_26 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_txOutToDataHash_26
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2754
-- Ledger.Conway.Foreign.HSLedger.Utxo._.txOutToP2Script
d_txOutToP2Script_28 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_378
d_txOutToP2Script_28
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2758
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Utxo._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__32 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__34 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.HasCast-UTxOState
d_HasCast'45'UTxOState_36 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_36
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOState_2432
-- Ledger.Conway.Foreign.HSLedger.Utxo._.Scripts-No-premises
d_Scripts'45'No'45'premises_40 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_40
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_Scripts'45'No'45'premises_2744
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_3104)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_44 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_44
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_Scripts'45'Yes'45'premises_2742
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_3104)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTXO-premises
d_UTXO'45'premises_48 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_48
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_UTXO'45'premises_2898
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_3104)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOEnv
d_UTxOEnv_50 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState
d_UTxOState_54 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.balance
d_balance_58 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_balance_58
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2450
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.cbalance
d_cbalance_60 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_60
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2456
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.consumed
d_consumed_62 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
d_consumed_62
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3186
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.depositRefunds
d_depositRefunds_64 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
d_depositRefunds_64
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_depositRefunds_3170
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.newDeposits
d_newDeposits_66 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
d_newDeposits_66
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_newDeposits_3178
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.outs
d_outs_68 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_68
  = coe MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2444
-- Ledger.Conway.Foreign.HSLedger.Utxo._.produced
d_produced_70 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
d_produced_70
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3194
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.refScriptsSize
d_refScriptsSize_72 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Integer
d_refScriptsSize_72
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_3104 in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2460
            (coe v0) (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.updateDeposits
d_updateDeposits_74 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_74
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2854
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo.UTxOEnv
d_UTxOEnv_89 = ()
type T_UTxOEnv_89 = UTxOEnv
pattern C_MkUTxOEnv_91 a0 a1 a2 = MkUTxOEnv a0 a1 a2
check_MkUTxOEnv_91 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.T_PParams_11223 ->
  Integer -> T_UTxOEnv_89
check_MkUTxOEnv_91 = MkUTxOEnv
cover_UTxOEnv_89 :: UTxOEnv -> ()
cover_UTxOEnv_89 x
  = case x of
      MkUTxOEnv _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOEnv.pparams
d_pparams_90 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_90 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOEnv.slot
d_slot_92 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  Integer
d_slot_92 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2372 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOEnv.treasury
d_treasury_94 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  Integer
d_treasury_94 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState.deposits
d_deposits_98 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_98 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2394
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState.donations
d_donations_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  Integer
d_donations_100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2396
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState.fees
d_fees_102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  Integer
d_fees_102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2392 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState.utxo
d_utxo_104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__108 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_112
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxow.du_UTXOW'45'inductive'45'premises_2798
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Utxo.HsTy-UTxOEnv
d_HsTy'45'UTxOEnv_118 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'UTxOEnv_118 = erased
-- Ledger.Conway.Foreign.HSLedger.Utxo.Conv-UTxOEnv
d_Conv'45'UTxOEnv_120 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'UTxOEnv_120
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2378 v1 v2 v3
                -> coe
                     C_MkUTxOEnv_91 (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPParams_11225
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_346
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_348
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_350
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
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_352
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
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_354
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_356
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_358
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
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_360
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_362 (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_364 (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
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
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_370
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
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_372
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_374
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
                           (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_378
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_380
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_382
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Numeric.PositiveNat.d_fromPosNat_16
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_384
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
                           (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_386
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_388
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_390
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_392
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
                           (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_394
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_396
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
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_262
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_400
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
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_264
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_400
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
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_266
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_400
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
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_268
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_400
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
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_270
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_400
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
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_228
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_402
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
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_230
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_402
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
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_232
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_402
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
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_234
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_402
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
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_236
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_402
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
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_238
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_402
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
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_240
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_402
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
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_242
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_402
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
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_244
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_402
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
                              (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_246
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_402
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_404
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_406
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_408
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_410
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_412
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_414
                           (coe v2)))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkUTxOEnv_91 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2378
                     (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_416 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_262
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_264
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_266
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_268
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_270
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_228
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_230
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_232
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_234
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_236
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_238
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_240
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_242
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_244
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_246
                                                   (coe v33))))
                                          (coe v34) (coe v35) (coe v36) (coe v37) (coe v38)
                                          (coe v39)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPParams_11225 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_416
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_272 v41 v42 v43 v44 v45
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_272
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_248 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_248
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
d_HsTy'45'UTxOState_122 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'UTxOState_122 = erased
-- Ledger.Conway.Foreign.HSLedger.Utxo.Conv-UTxOState
d_Conv'45'UTxOState_124 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'UTxOState_124
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2398 v1 v2 v3 v4
                -> coe
                     C_MkUTxOState_1171
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
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkUTxOState_1171 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2398
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                       (coe v5)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v3)))
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Utxo.UTxOState
d_UTxOState_1169 = ()
type T_UTxOState_1169 = UTxOState
pattern C_MkUTxOState_1171 a0 a1 a2 a3 = MkUTxOState a0 a1 a2 a3
check_MkUTxOState_1171 ::
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
  Integer -> T_UTxOState_1169
check_MkUTxOState_1171 = MkUTxOState
cover_UTxOState_1169 :: UTxOState -> ()
cover_UTxOState_1169 x
  = case x of
      MkUTxOState _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.utxo-step
utxoStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_89 ->
  T_UTxOState_1169 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_95301 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1169
utxoStep = coe d_utxo'45'step_2484
d_utxo'45'step_2484 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_89 ->
  T_UTxOState_1169 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_95301 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1169
d_utxo'45'step_2484 v0 v1
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'UTxOState_124)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'UTxOState_124))))
      (coe
         MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
         (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.Properties.d_Computational'45'UTXO_2786
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_3104)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOEnv_120
            v1))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.utxow-step
utxowStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_89 ->
  T_UTxOState_1169 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_95301 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1169
utxowStep = coe d_utxow'45'step_2486
d_utxow'45'step_2486 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_89 ->
  T_UTxOState_1169 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_95301 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1169
d_utxow'45'step_2486 v0 v1
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'UTxOState_124)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'UTxOState_124))))
      (coe
         MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
         (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties.d_Computational'45'UTXOW_2004
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_3104)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOEnv_120
            v1))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.utxo-debug
utxoDebug ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_89 ->
  T_UTxOState_1169 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_95301 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
utxoDebug = coe d_utxo'45'debug_2488
d_utxo'45'debug_2488 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_89 ->
  T_UTxOState_1169 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_95301 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_utxo'45'debug_2488 ~v0 v1 v2 v3 = du_utxo'45'debug_2488 v1 v2 v3
du_utxo'45'debug_2488 ::
  T_UTxOEnv_89 ->
  T_UTxOState_1169 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_95301 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_utxo'45'debug_2488 v0 v1 v2
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
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2450
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           erased
                           (coe
                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOState_124
                              v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3322
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_110
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_depositRefunds_3170
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOEnv_120
                                    v0))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                    (coe
                                       (\ v3 ->
                                          case coe v3 of
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2398 v4 v5 v6 v7
                                              -> coe
                                                   C_MkUTxOState_1171
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
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v6))))
                                                   (coe v7)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                    (coe
                                       (\ v3 ->
                                          case coe v3 of
                                            C_MkUTxOState_1171 v4 v5 v6 v7
                                              -> coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2398
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                     (coe v8)))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                         (coe v6)))
                                                   (coe v7)
                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                 v1)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_110
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1450
                                 (let v3
                                        = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                  coe
                                    (let v4
                                           = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                               (coe v3) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                (coe v4)))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                   (coe v4))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3306
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3186
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       d_Conv'45'UTxOEnv_120 v0))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                       (coe
                                          (\ v3 ->
                                             case coe v3 of
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2398 v4 v5 v6 v7
                                                 -> coe
                                                      C_MkUTxOState_1171
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
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v6))))
                                                      (coe v7)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                       (coe
                                          (\ v3 ->
                                             case coe v3 of
                                               C_MkUTxOState_1171 v4 v5 v6 v7
                                                 -> coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2398
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
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                        (coe v8)))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                         (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                            (coe v6)))
                                                      (coe v7)
                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                                    v1)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2450
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2444
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_110
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3312
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_110
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_newDeposits_3178
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      d_Conv'45'UTxOEnv_120 v0))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                      (coe
                                                         (\ v3 ->
                                                            case coe v3 of
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2398 v4 v5 v6 v7
                                                                -> coe
                                                                     C_MkUTxOState_1171
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
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v6))))
                                                                     (coe v7)
                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                      (coe
                                                         (\ v3 ->
                                                            case coe v3 of
                                                              C_MkUTxOState_1171 v4 v5 v6 v7
                                                                -> coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2398
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
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                                       (coe v8)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                           (coe v6)))
                                                                     (coe v7)
                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                   v1)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_110
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3304
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3194
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         d_Conv'45'UTxOEnv_120 v0))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                         (coe
                                                            (\ v3 ->
                                                               case coe v3 of
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2398 v4 v5 v6 v7
                                                                   -> coe
                                                                        C_MkUTxOState_1171
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
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v6))))
                                                                        (coe v7)
                                                                 _ -> MAlonzo.RTE.mazUnreachableError))
                                                         (coe
                                                            (\ v3 ->
                                                               case coe v3 of
                                                                 C_MkUTxOState_1171 v4 v5 v6 v7
                                                                   -> coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2398
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
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                                          (coe
                                                                                             v8)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                              (coe v6)))
                                                                        (coe v7)
                                                                 _ -> MAlonzo.RTE.mazUnreachableError)))
                                                      v1)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2460
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_3104)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  d_Conv'45'UTxOState_124 v1))
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                  (coe
                                                                     (\ v3 ->
                                                                        case coe v3 of
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3456 v4 v5 v6 v7 v8
                                                                            -> coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTx_95303
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
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
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
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3294
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
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3296
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
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3298
                                                                                                (coe
                                                                                                   v4)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3300
                                                                                       (coe v4))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_154))
                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3302
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3304
                                                                                       (coe v4))
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
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3306
                                                                                                (coe
                                                                                                   v4)))))
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
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3308
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
                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3310
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3312
                                                                                       (coe v4))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_122))
                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3314
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_902))
                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3316
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3318
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3320
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3322
                                                                                       (coe v4))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3324
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
                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3326
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
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3422
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
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3424
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
                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3426
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
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3428
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
                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTx_95303 v4 v5 v6 v7 v8
                                                                            -> coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3456
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                       (coe
                                                                                          (\ v9 ->
                                                                                             case coe
                                                                                                    v9 of
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3328 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27
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
                                                                                                                  v13))))
                                                                                                      (coe
                                                                                                         v14)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_154))
                                                                                                         v15)
                                                                                                      (coe
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
                                                                                                               (\ v28 ->
                                                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                                            (coe
                                                                                                               v18)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v19)
                                                                                                      (coe
                                                                                                         v20)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_122))
                                                                                                         v21)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_902))
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
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            v26))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v27)
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                       (coe
                                                                                          (\ v9 ->
                                                                                             case coe
                                                                                                    v9 of
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_12017 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3328
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
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
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
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
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
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
                                                                                                                  v12))))
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
                                                                                                               v13)))
                                                                                                      (coe
                                                                                                         v14)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_154))
                                                                                                         v15)
                                                                                                      (coe
                                                                                                         v16)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                            (let v28
                                                                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                             coe
                                                                                                               (let v29
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                                                                          (coe
                                                                                                                             v28) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                                                                                           (coe
                                                                                                                              v29)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                                              (coe
                                                                                                                                 v29))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                                           (coe
                                                                                                                              v29))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                            (coe
                                                                                                               v17)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                         (coe
                                                                                                            (\ v28 ->
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
                                                                                                            v18))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v19)
                                                                                                      (coe
                                                                                                         v20)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_122))
                                                                                                         v21)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_902))
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
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
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
                                                                                                                  v26))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         v27)
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
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3432 v10 v11 v12 v13
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
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3432
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
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
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
                                                                                                         MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
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
  T_UTxOEnv_89 ->
  T_UTxOState_1169 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_95301 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
utxowDebug = coe d_utxow'45'debug_2564
d_utxow'45'debug_2564 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_89 ->
  T_UTxOState_1169 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_95301 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_utxow'45'debug_2564 v0 ~v1 v2 v3
  = du_utxow'45'debug_2564 v0 v2 v3
du_utxow'45'debug_2564 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOState_1169 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_95301 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_utxow'45'debug_2564 v0 v1 v2
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
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1214
                           (coe
                              MAlonzo.Code.Axiom.Set.du_mapPartial_604
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2684
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       d_Conv'45'UTxOState_124 v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1214
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_map_426
                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (\ v3 ->
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_hvkStoredHash_22
                                         (coe v3))
                                    (coe
                                       MAlonzo.Code.Class.IsSet.du_dom_586
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3422
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3448
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
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1214
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (\ v3 ->
                                             coe
                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v3)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2684
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   d_Conv'45'UTxOState_124 v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
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
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1214
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_map_426
                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_hashRespectsUnion_402
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_374)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_390)))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3514
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3456 v4 v5 v6 v7 v8
                                                                      -> coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTx_95303
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
                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
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
                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3294
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
                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3296
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
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3298
                                                                                          (coe
                                                                                             v4)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3300
                                                                                 (coe v4))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                 () erased () erased
                                                                                 (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_154))
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3302
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3304
                                                                                 (coe v4))
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
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3306
                                                                                          (coe
                                                                                             v4)))))
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
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3308
                                                                                       (coe v4))))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3310
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3312
                                                                                 (coe v4))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                 () erased () erased
                                                                                 (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_122))
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3314
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                 () erased () erased
                                                                                 (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_902))
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3316
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3318
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3320
                                                                                    (coe v4)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3322
                                                                                 (coe v4))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3324
                                                                                       (coe v4))))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3326
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
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3422
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
                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3424
                                                                                       (coe v5))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3426
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
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3428
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
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTx_95303 v4 v5 v6 v7 v8
                                                                      -> coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3456
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                 (coe
                                                                                    (\ v9 ->
                                                                                       case coe
                                                                                              v9 of
                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3328 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27
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
                                                                                                            v13))))
                                                                                                (coe
                                                                                                   v14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_154))
                                                                                                   v15)
                                                                                                (coe
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
                                                                                                         (\ v28 ->
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                                      (coe
                                                                                                         v18)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v19)
                                                                                                (coe
                                                                                                   v20)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_122))
                                                                                                   v21)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_902))
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
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                      v26))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v27)
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                 (coe
                                                                                    (\ v9 ->
                                                                                       case coe
                                                                                              v9 of
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_12017 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27
                                                                                           -> coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3328
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
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
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
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
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
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
                                                                                                            v12))))
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
                                                                                                         v13)))
                                                                                                (coe
                                                                                                   v14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_154))
                                                                                                   v15)
                                                                                                (coe
                                                                                                   v16)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                      (let v28
                                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                       coe
                                                                                                         (let v29
                                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                                                                    (coe
                                                                                                                       v28) in
                                                                                                          coe
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                                                                                     (coe
                                                                                                                        v29)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                                        (coe
                                                                                                                           v29))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                                     (coe
                                                                                                                        v29))))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                      (coe
                                                                                                         v17)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                   (coe
                                                                                                      (\ v28 ->
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
                                                                                                      v18))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v19)
                                                                                                (coe
                                                                                                   v20)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_122))
                                                                                                   v21)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_902))
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
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
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
                                                                                                            v26))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   v27)
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
                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3432 v10 v11 v12 v13
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
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3432
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
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
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
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
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
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                            d_Conv'45'UTxOState_124 v1))))))))))
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
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1214
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_map_426
                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_hashRespectsUnion_402
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_374)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_390)))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3424
                                                         (coe
                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                            () erased () erased
                                                            (coe
                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3448
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                                                  v2))))))))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
