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
import qualified MAlonzo.Code.Class.To
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
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
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
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Util
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.Numeric.UnitInterval
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxow
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

import GHC.Generics (Generic)
data UTxOEnv = MkUTxOEnv {ueSlot :: Integer, uePparams :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.PParams, ueTreasury :: Integer}
  deriving (Show, Eq, Generic)
data UTxOState = MkUTxOState {utxo :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap (Integer, Integer) ((Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BaseAddr MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript)))))), fees :: Integer, deposits :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.DepositPurpose Integer), donations :: Integer}
  deriving (Show, Eq, Generic)
type UTxO = (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap (Integer, Integer) ((Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BaseAddr MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript))))))
type Redeemer = Integer
-- Ledger.Conway.Foreign.HSLedger.Utxo._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__12 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__14 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.Scripts-No-premises
d_Scripts'45'No'45'premises_18 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2030 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2636 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_18
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_Scripts'45'No'45'premises_2250
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2404)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_22 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2030 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2636 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_22
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_Scripts'45'Yes'45'premises_2248
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2404)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.To-UTxOState
d_To'45'UTxOState_24 :: MAlonzo.Code.Class.To.T_To_8
d_To'45'UTxOState_24
  = coe MAlonzo.Code.Ledger.Utxo.du_To'45'UTxOState_2066
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTXO-premises
d_UTXO'45'premises_28 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2636 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2030 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_28
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_UTXO'45'premises_2392
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2404)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOEnv
d_UTxOEnv_30 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState
d_UTxOState_32 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.balance
d_balance_34 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_balance_34
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe (coe MAlonzo.Code.Ledger.Utxo.du_balance_2084 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.cbalance
d_cbalance_36 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_36
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe (coe MAlonzo.Code.Ledger.Utxo.du_cbalance_2090 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.consumed
d_consumed_38 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534 -> Integer
d_consumed_38
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe (coe MAlonzo.Code.Ledger.Utxo.du_consumed_2916 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.depositRefunds
d_depositRefunds_40 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534 -> Integer
d_depositRefunds_40
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe (coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2900 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.newDeposits
d_newDeposits_42 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534 -> Integer
d_newDeposits_42
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe (coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2908 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.outs
d_outs_44 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_44 = coe MAlonzo.Code.Ledger.Utxo.du_outs_2078
-- Ledger.Conway.Foreign.HSLedger.Utxo._.produced
d_produced_46 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534 -> Integer
d_produced_46
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe (coe MAlonzo.Code.Ledger.Utxo.du_produced_2924 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.refScriptsSize
d_refScriptsSize_48 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2636 -> Integer
d_refScriptsSize_48
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2404 in
       coe
         (coe
            MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2094 (coe v0) (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.updateDeposits
d_updateDeposits_50 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_50
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe (coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2488 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOEnv.pparams
d_pparams_66 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2030 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_66 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2040 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOEnv.slot
d_slot_68 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2030 -> Integer
d_slot_68 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_2038 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOEnv.treasury
d_treasury_70 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2030 -> Integer
d_treasury_70 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_2042 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState.deposits
d_deposits_74 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_74 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2058 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState.donations
d_donations_76 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044 -> Integer
d_donations_76 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2060 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState.fees
d_fees_78 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044 -> Integer
d_fees_78 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2056 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTxOState.utxo
d_utxo_80 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_80 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2054 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Utxo._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__84 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_88 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2636 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_88
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxow.du_UTXOW'45'inductive'45'premises_2300
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.scriptsNeeded
d_scriptsNeeded_90 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534 -> [Integer]
d_scriptsNeeded_90
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe (coe MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2300 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.witsVKeyNeeded
d_witsVKeyNeeded_92 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534 -> [Integer]
d_witsVKeyNeeded_92
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
    coe (coe MAlonzo.Code.Ledger.Utxow.du_witsVKeyNeeded_2298 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Utxo.HsTy-UTxOEnv
d_HsTy'45'UTxOEnv_98 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'UTxOEnv_98 = erased
-- Ledger.Conway.Foreign.HSLedger.Utxo.Conv-UTxOEnv
d_Conv'45'UTxOEnv_100 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'UTxOEnv_100
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Utxo.C_UTxOEnv'46'constructor_16375 v1 v2 v3
                -> coe
                     C_MkUTxOEnv_109 (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPParams_10201
                        (coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_316 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_318 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_320 (coe v2))
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
                              (coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_322 (coe v2))))
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
                              (coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_324 (coe v2))))
                        (coe MAlonzo.Code.Ledger.PParams.d_maxValSize_326 (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_328 (coe v2))
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
                              (coe MAlonzo.Code.Ledger.PParams.d_pv_330 (coe v2))))
                        (coe MAlonzo.Code.Ledger.PParams.d_a_332 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_b_334 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_336 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_338 (coe v2))
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
                           (MAlonzo.Code.Ledger.Types.Numeric.UnitInterval.d_fromUnitInterval_90
                              (coe
                                 MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_340 (coe v2))))
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
                           (MAlonzo.Code.Ledger.Types.Numeric.UnitInterval.d_fromUnitInterval_90
                              (coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_342 (coe v2))))
                        (coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_344 (coe v2))
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
                           (MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_348
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_350 (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_352
                           (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_354 (coe v2))
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
                           (MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_356
                              (coe v2)))
                        (coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_358 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_Emax_360 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_nopt_362 (coe v2))
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
                           (MAlonzo.Code.Ledger.PParams.d_a0_364 (coe v2)))
                        (coe
                           MAlonzo.Code.Ledger.PParams.d_collateralPercentage_366 (coe v2))
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
                              (MAlonzo.Code.Ledger.PParams.d_Q1_234
                                 (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_370 (coe v2))))
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
                              (MAlonzo.Code.Ledger.PParams.d_Q2a_236
                                 (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_370 (coe v2))))
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
                              (MAlonzo.Code.Ledger.PParams.d_Q2b_238
                                 (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_370 (coe v2))))
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
                              (MAlonzo.Code.Ledger.PParams.d_Q4_240
                                 (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_370 (coe v2))))
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
                              (MAlonzo.Code.Ledger.PParams.d_Q5_242
                                 (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_370 (coe v2)))))
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
                              (MAlonzo.Code.Ledger.PParams.d_P1_202
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_372 (coe v2))))
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
                              (MAlonzo.Code.Ledger.PParams.d_P2a_204
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_372 (coe v2))))
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
                              (MAlonzo.Code.Ledger.PParams.d_P2b_206
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_372 (coe v2))))
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
                              (MAlonzo.Code.Ledger.PParams.d_P3_208
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_372 (coe v2))))
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
                              (MAlonzo.Code.Ledger.PParams.d_P4_210
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_372 (coe v2))))
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
                              (MAlonzo.Code.Ledger.PParams.d_P5a_212
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_372 (coe v2))))
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
                              (MAlonzo.Code.Ledger.PParams.d_P5b_214
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_372 (coe v2))))
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
                              (MAlonzo.Code.Ledger.PParams.d_P5c_216
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_372 (coe v2))))
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
                              (MAlonzo.Code.Ledger.PParams.d_P5d_218
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_372 (coe v2))))
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
                              (MAlonzo.Code.Ledger.PParams.d_P6_220
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_372 (coe v2)))))
                        (coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_374 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_376 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_378 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_380 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_382 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_drepActivity_384 (coe v2)))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkUTxOEnv_109 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Utxo.C_UTxOEnv'46'constructor_16375 (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.PParams.C_PParams'46'constructor_4619 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39
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
                                             (MAlonzo.Code.Ledger.Types.Numeric.UnitInterval.d_fromUnitInterval_90
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
                                             (MAlonzo.Code.Ledger.Types.Numeric.UnitInterval.d_fromUnitInterval_90
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
                                          (coe v22) (coe v23) (coe v24)
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
                                                (MAlonzo.Code.Ledger.PParams.d_Q1_234 (coe v32)))
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
                                                (MAlonzo.Code.Ledger.PParams.d_Q2a_236 (coe v32)))
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
                                                (MAlonzo.Code.Ledger.PParams.d_Q2b_238 (coe v32)))
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
                                                (MAlonzo.Code.Ledger.PParams.d_Q4_240 (coe v32)))
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
                                                (MAlonzo.Code.Ledger.PParams.d_Q5_242 (coe v32))))
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
                                                (MAlonzo.Code.Ledger.PParams.d_P1_202 (coe v33)))
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
                                                (MAlonzo.Code.Ledger.PParams.d_P2a_204 (coe v33)))
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
                                                (MAlonzo.Code.Ledger.PParams.d_P2b_206 (coe v33)))
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
                                                (MAlonzo.Code.Ledger.PParams.d_P3_208 (coe v33)))
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
                                                (MAlonzo.Code.Ledger.PParams.d_P4_210 (coe v33)))
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
                                                (MAlonzo.Code.Ledger.PParams.d_P5a_212 (coe v33)))
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
                                                (MAlonzo.Code.Ledger.PParams.d_P5b_214 (coe v33)))
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
                                                (MAlonzo.Code.Ledger.PParams.d_P5c_216 (coe v33)))
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
                                                (MAlonzo.Code.Ledger.PParams.d_P5d_218 (coe v33)))
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
                                                (MAlonzo.Code.Ledger.PParams.d_P6_220 (coe v33))))
                                          (coe v34) (coe v35) (coe v36) (coe v37) (coe v38)
                                          (coe v39)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkPParams_10201 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39
                                     -> coe
                                          MAlonzo.Code.Ledger.PParams.C_PParams'46'constructor_4619
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
                                                 = MAlonzo.Code.Ledger.Types.Numeric.UnitInterval.d_toUnitInterval_92
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
                                                 = MAlonzo.Code.Ledger.Types.Numeric.UnitInterval.d_toUnitInterval_92
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
                                          (coe v22) (coe v23) (coe v24)
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
                                                        MAlonzo.Code.Ledger.PParams.C_PoolThresholds'46'constructor_3025 v41 v42 v43 v44 v45
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
                                                               MAlonzo.Code.Ledger.PParams.C_PoolThresholds'46'constructor_3025
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
                                                        MAlonzo.Code.Ledger.PParams.C_DrepThresholds'46'constructor_2461 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50
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
                                                               MAlonzo.Code.Ledger.PParams.C_DrepThresholds'46'constructor_2461
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
d_HsTy'45'UTxOState_102 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'UTxOState_102 = erased
-- Ledger.Conway.Foreign.HSLedger.Utxo.Conv-UTxOState
d_Conv'45'UTxOState_104 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'UTxOState_104
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2062 v1 v2 v3 v4
                -> coe
                     C_MkUTxOState_1099
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
              C_MkUTxOState_1099 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2062
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
                                 MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2326
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                       (coe v5)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v3)))
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Utxo.UTxOEnv
d_UTxOEnv_107 = ()
type T_UTxOEnv_107 = UTxOEnv
pattern C_MkUTxOEnv_109 a0 a1 a2 = MkUTxOEnv a0 a1 a2
check_MkUTxOEnv_109 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.T_PParams_10199 ->
  Integer -> T_UTxOEnv_107
check_MkUTxOEnv_109 = MkUTxOEnv
cover_UTxOEnv_107 :: UTxOEnv -> ()
cover_UTxOEnv_107 x
  = case x of
      MkUTxOEnv _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Utxo.UTxOState
d_UTxOState_1097 = ()
type T_UTxOState_1097 = UTxOState
pattern C_MkUTxOState_1099 a0 a1 a2 a3 = MkUTxOState a0 a1 a2 a3
check_MkUTxOState_1099 ::
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
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DepositPurpose_441
    Integer ->
  Integer -> T_UTxOState_1097
check_MkUTxOState_1099 = MkUTxOState
cover_UTxOState_1097 :: UTxOState -> ()
cover_UTxOState_1097 x
  = case x of
      MkUTxOState _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Utxo._.utxo-step
utxoStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_107 ->
  T_UTxOState_1097 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_109479 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1097
utxoStep = coe d_utxo'45'step_1820
d_utxo'45'step_1820 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_107 ->
  T_UTxOState_1097 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_109479 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1097
d_utxo'45'step_1820 v0 v1
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'UTxOState_104)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'UTxOState_104))))
      (coe
         MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
         (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.Properties.d_Computational'45'UTXO_2286
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2404)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOEnv_100
            v1))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.utxow-step
utxowStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_107 ->
  T_UTxOState_1097 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_109479 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1097
utxowStep = coe d_utxow'45'step_1822
d_utxow'45'step_1822 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_107 ->
  T_UTxOState_1097 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_109479 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1097
d_utxow'45'step_1822 v0 v1
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'UTxOState_104)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'UTxOState_104))))
      (coe
         MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
         (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties.d_Computational'45'UTXOW_1610
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2404)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOEnv_100
            v1))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.utxo-debug
utxoDebug ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_107 ->
  T_UTxOState_1097 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_109479 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
utxoDebug = coe d_utxo'45'debug_1824
d_utxo'45'debug_1824 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_107 ->
  T_UTxOState_1097 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_109479 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_utxo'45'debug_1824 ~v0 v1 v2 v3 = du_utxo'45'debug_1824 v1 v2 v3
du_utxo'45'debug_1824 ::
  T_UTxOEnv_107 ->
  T_UTxOState_1097 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_109479 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_utxo'45'debug_1824 v0 v1 v2
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
                     MAlonzo.Code.Ledger.Utxo.du_balance_2084
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
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
                           MAlonzo.Code.Ledger.Utxo.d_utxo_2054
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOState_104
                              v1))
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_txins_2576
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_body_2646
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
                     (MAlonzo.Code.Ledger.Transaction.d_mint_2584
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_body_2646
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
                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v3))
                              (coe
                                 MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2900
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.d_pparams_2040
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       d_Conv'45'UTxOEnv_100 v0))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                       (coe
                                          (\ v4 ->
                                             case coe v4 of
                                               MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2062 v5 v6 v7 v8
                                                 -> coe
                                                      C_MkUTxOState_1099
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
                                               C_MkUTxOState_1099 v5 v6 v7 v8
                                                 -> coe
                                                      MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2062
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
                                                                  MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2326
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
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
                                    MAlonzo.Code.Ledger.Transaction.d_body_2646
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
                                  = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v3))
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                                    (let v4
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                     coe
                                       (let v5
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                                  (coe v4) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                             (coe
                                                MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                                   (coe v5)))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                      (coe v5))))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1222
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
                                       MAlonzo.Code.Ledger.Transaction.d_txwdrls_2590
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_body_2646
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
                                 MAlonzo.Code.Ledger.Utxo.du_consumed_2916
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.d_pparams_2040
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       d_Conv'45'UTxOEnv_100 v0))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                       (coe
                                          (\ v3 ->
                                             case coe v3 of
                                               MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2062 v4 v5 v6 v7
                                                 -> coe
                                                      C_MkUTxOState_1099
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
                                               C_MkUTxOState_1099 v4 v5 v6 v7
                                                 -> coe
                                                      MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2062
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
                                                                  MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2326
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
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
                                    MAlonzo.Code.Ledger.Transaction.d_body_2646
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
                                       MAlonzo.Code.Ledger.Utxo.du_balance_2084
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                       (coe
                                          MAlonzo.Code.Ledger.Utxo.du_outs_2078
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_body_2646
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
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216
                                                (coe v3))
                                             (MAlonzo.Code.Ledger.Transaction.d_txdonation_2596
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2646
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
                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Ledger.Utxo.du_newDeposits_2908
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.d_pparams_2040
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         d_Conv'45'UTxOEnv_100 v0))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                         (coe
                                                            (\ v4 ->
                                                               case coe v4 of
                                                                 MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2062 v5 v6 v7 v8
                                                                   -> coe
                                                                        C_MkUTxOState_1099
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
                                                                 C_MkUTxOState_1099 v5 v6 v7 v8
                                                                   -> coe
                                                                        MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2062
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
                                                                                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2326
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
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
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2646
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
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216
                                                      (coe v3))
                                                   (MAlonzo.Code.Ledger.Transaction.d_txfee_2582
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2646
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
                                                   MAlonzo.Code.Ledger.Utxo.du_produced_2924
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Utxo.d_pparams_2040
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                         d_Conv'45'UTxOEnv_100 v0))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                         (coe
                                                            (\ v3 ->
                                                               case coe v3 of
                                                                 MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2062 v4 v5 v6 v7
                                                                   -> coe
                                                                        C_MkUTxOState_1099
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
                                                                 C_MkUTxOState_1099 v4 v5 v6 v7
                                                                   -> coe
                                                                        MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2062
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
                                                                                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2326
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
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
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2646
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
                                                         (MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2404)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.d_utxo_2054
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  d_Conv'45'UTxOState_104 v1))
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                  (coe
                                                                     (\ v3 ->
                                                                        case coe v3 of
                                                                          MAlonzo.Code.Ledger.Transaction.C_Tx'46'constructor_18457 v4 v5 v6 v7
                                                                            -> coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTx_109481
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_11479
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
                                                                                          (MAlonzo.Code.Ledger.Transaction.d_txins_2576
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
                                                                                          (MAlonzo.Code.Ledger.Transaction.d_refInputs_2578
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
                                                                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2580
                                                                                                (coe
                                                                                                   v4)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_txfee_2582
                                                                                       (coe v4))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_mint_2584
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
                                                                                             (\ v8 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_txvldt_2586
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
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_txcerts_2588
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
                                                                                                MAlonzo.Code.Ledger.Transaction.d_txwdrls_2590
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
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_txvote_2592
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_670))
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_txprop_2594
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_txdonation_2596
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
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_txup_2598
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_txADhash_2600
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2602
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_curTreasury_2604
                                                                                          (coe v4)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_txsize_2606
                                                                                       (coe v4))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_txid_2608
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
                                                                                          (MAlonzo.Code.Ledger.Transaction.d_collateral_2610
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
                                                                                          (MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2612
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
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2614
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
                                                                                                MAlonzo.Code.Ledger.Transaction.d_vkSigs_2626
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
                                                                                          (MAlonzo.Code.Ledger.Transaction.d_scripts_2628
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_txdats_2630
                                                                                                (coe
                                                                                                   v5)))))
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
                                                                                                MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2632
                                                                                                (coe
                                                                                                   v5))))))
                                                                                 (coe v6)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    v7)
                                                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                                                  (coe
                                                                     (\ v3 ->
                                                                        case coe v3 of
                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTx_109481 v4 v5 v6 v7
                                                                            -> coe
                                                                                 MAlonzo.Code.Ledger.Transaction.C_Tx'46'constructor_18457
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                       (coe
                                                                                          (\ v8 ->
                                                                                             case coe
                                                                                                    v8 of
                                                                                               MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_17713 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_11479
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
                                                                                                            v9))
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
                                                                                                                  v11))))
                                                                                                      (coe
                                                                                                         v12)
                                                                                                      (coe
                                                                                                         v13)
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
                                                                                                               v14)))
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
                                                                                                         v15)
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
                                                                                                                  v16))))
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
                                                                                                         v17)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_670))
                                                                                                         v18)
                                                                                                      (coe
                                                                                                         v19)
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
                                                                                                         v20)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
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
                                                                                          (\ v8 ->
                                                                                             case coe
                                                                                                    v8 of
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_11479 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_17713
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
                                                                                                                  v9))))
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
                                                                                                               v11)))
                                                                                                      (coe
                                                                                                         v12)
                                                                                                      (coe
                                                                                                         v13)
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
                                                                                                            v14))
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
                                                                                                         v15)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                            (let v29
                                                                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                                             coe
                                                                                                               (let v30
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                                                                                                          (coe
                                                                                                                             v29) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                                                                                                           (coe
                                                                                                                              v30)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                                                                              (coe
                                                                                                                                 v30))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                                                                           (coe
                                                                                                                              v30))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                                            (coe
                                                                                                               v16)))
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
                                                                                                         v17)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                                         ()
                                                                                                         erased
                                                                                                         ()
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_670))
                                                                                                         v18)
                                                                                                      (coe
                                                                                                         v19)
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
                                                                                                         v20)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
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
                                                                                          (\ v8 ->
                                                                                             case coe
                                                                                                    v8 of
                                                                                               MAlonzo.Code.Ledger.Transaction.C_TxWitnesses'46'constructor_18265 v9 v10 v11 v12
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
                                                                                                                  v9))))
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
                                                                                                            v10))
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
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                               (coe
                                                                                                                  v11))))
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
                                                                                                                  v12))))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                       (coe
                                                                                          (\ v8 ->
                                                                                             case coe
                                                                                                    v8 of
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxWitnesses_3605 v9 v10 v11 v12
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.C_TxWitnesses'46'constructor_18265
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
                                                                                                               v9)))
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
                                                                                                                  v10))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                         (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                                            (coe
                                                                                                               v11)))
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
                                                                                                               MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
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
                                                                                                               v12)))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                    v5)
                                                                                 (coe v6)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    v7)
                                                                          _ -> MAlonzo.RTE.mazUnreachableError)))
                                                               v2))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))))
-- Ledger.Conway.Foreign.HSLedger.Utxo._.utxow-debug
utxowDebug ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_107 ->
  T_UTxOState_1097 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_109479 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
utxowDebug = coe d_utxow'45'debug_1902
d_utxow'45'debug_1902 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOEnv_107 ->
  T_UTxOState_1097 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_109479 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_utxow'45'debug_1902 v0 ~v1 v2 v3
  = du_utxow'45'debug_1902 v0 v2 v3
du_utxow'45'debug_1902 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  T_UTxOState_1097 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.T_Tx_109479 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_utxow'45'debug_1902 v0 v1 v2
  = coe
      MAlonzo.Code.Data.String.Base.d_unlines_36
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe ("witsVKeyNeeded utxo txb = " :: Data.Text.Text))
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
                              MAlonzo.Code.Ledger.Utxow.du_witsVKeyNeeded_2298
                              (MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                              (MAlonzo.Code.Ledger.Utxo.d_utxo_2054
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    d_Conv'45'UTxOState_104 v1))
                              (MAlonzo.Code.Ledger.Transaction.d_body_2646
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                    v2))))))))
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
                                          MAlonzo.Code.Ledger.Transaction.d_vkSigs_2626
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (MAlonzo.Code.Ledger.Transaction.d_wits_2648
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                                   v2)))))))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe ("\nneededHashes = " :: Data.Text.Text))
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
                                          MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2300
                                          (MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                          (MAlonzo.Code.Ledger.Utxo.d_utxo_2054
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                d_Conv'45'UTxOState_104 v1))
                                          (MAlonzo.Code.Ledger.Transaction.d_body_2646
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                                v2))))))))
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
                                                MAlonzo.Code.Axiom.Set.du_fromList_428
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                   () erased () erased
                                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_hashRespectsUnion_320
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_350)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_366)))
                                                   (MAlonzo.Code.Ledger.Transaction.d_refScripts_2694
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
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
                                                                       MAlonzo.Code.Ledger.Transaction.C_Tx'46'constructor_18457 v4 v5 v6 v7
                                                                         -> coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTx_109481
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_11479
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
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_txins_2576
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
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_refInputs_2578
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
                                                                                             MAlonzo.Code.Ledger.Transaction.d_txouts_2580
                                                                                             (coe
                                                                                                v4)))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_txfee_2582
                                                                                    (coe v4))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_mint_2584
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
                                                                                          (\ v8 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_txvldt_2586
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
                                                                                    (MAlonzo.Code.Ledger.Transaction.d_txcerts_2588
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
                                                                                             MAlonzo.Code.Ledger.Transaction.d_txwdrls_2590
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
                                                                                    (MAlonzo.Code.Ledger.Transaction.d_txvote_2592
                                                                                       (coe v4)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                    () erased ()
                                                                                    erased
                                                                                    (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_670))
                                                                                    (MAlonzo.Code.Ledger.Transaction.d_txprop_2594
                                                                                       (coe v4)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_txdonation_2596
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
                                                                                    (MAlonzo.Code.Ledger.Transaction.d_txup_2598
                                                                                       (coe v4)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    (MAlonzo.Code.Ledger.Transaction.d_txADhash_2600
                                                                                       (coe v4)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    (MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2602
                                                                                       (coe v4)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                    (MAlonzo.Code.Ledger.Transaction.d_curTreasury_2604
                                                                                       (coe v4)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_txsize_2606
                                                                                    (coe v4))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_txid_2608
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
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_collateral_2610
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
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2612
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
                                                                                    (MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2614
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
                                                                                             MAlonzo.Code.Ledger.Transaction.d_vkSigs_2626
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
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_scripts_2628
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
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_txdats_2630
                                                                                             (coe
                                                                                                v5)))))
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
                                                                                             MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2632
                                                                                             (coe
                                                                                                v5))))))
                                                                              (coe v6)
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 v7)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                               (coe
                                                                  (\ v3 ->
                                                                     case coe v3 of
                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTx_109481 v4 v5 v6 v7
                                                                         -> coe
                                                                              MAlonzo.Code.Ledger.Transaction.C_Tx'46'constructor_18457
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                    (coe
                                                                                       (\ v8 ->
                                                                                          case coe
                                                                                                 v8 of
                                                                                            MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_17713 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
                                                                                              -> coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_11479
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
                                                                                                         v9))
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
                                                                                                               v11))))
                                                                                                   (coe
                                                                                                      v12)
                                                                                                   (coe
                                                                                                      v13)
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
                                                                                                            v14)))
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
                                                                                                      v15)
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
                                                                                                               v16))))
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
                                                                                                      v17)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                                      ()
                                                                                                      erased
                                                                                                      ()
                                                                                                      erased
                                                                                                      (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_670))
                                                                                                      v18)
                                                                                                   (coe
                                                                                                      v19)
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
                                                                                                      v20)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
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
                                                                                       (\ v8 ->
                                                                                          case coe
                                                                                                 v8 of
                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxBody_11479 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
                                                                                              -> coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_17713
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
                                                                                                               v9))))
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
                                                                                                            v11)))
                                                                                                   (coe
                                                                                                      v12)
                                                                                                   (coe
                                                                                                      v13)
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
                                                                                                         v14))
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
                                                                                                      v15)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                         (let v29
                                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                                          coe
                                                                                                            (let v30
                                                                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_658
                                                                                                                       (coe
                                                                                                                          v29) in
                                                                                                             coe
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                                                                                                        (coe
                                                                                                                           v30)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                                                                           (coe
                                                                                                                              v30))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                                                                        (coe
                                                                                                                           v30))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                      (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                                         (coe
                                                                                                            v16)))
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
                                                                                                      v17)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                                                      ()
                                                                                                      erased
                                                                                                      ()
                                                                                                      erased
                                                                                                      (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_670))
                                                                                                      v18)
                                                                                                   (coe
                                                                                                      v19)
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
                                                                                                      v20)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
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
                                                                                       (\ v8 ->
                                                                                          case coe
                                                                                                 v8 of
                                                                                            MAlonzo.Code.Ledger.Transaction.C_TxWitnesses'46'constructor_18265 v9 v10 v11 v12
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
                                                                                                               v9))))
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
                                                                                                         v10))
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
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                            (coe
                                                                                                               v11))))
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
                                                                                                               v12))))
                                                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                    (coe
                                                                                       (\ v8 ->
                                                                                          case coe
                                                                                                 v8 of
                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.C_MkTxWitnesses_3605 v9 v10 v11 v12
                                                                                              -> coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.C_TxWitnesses'46'constructor_18265
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
                                                                                                            v9)))
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
                                                                                                               v10))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                      (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                                         (coe
                                                                                                            v11)))
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
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
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
                                                                                                            v12)))
                                                                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                 v5)
                                                                              (coe v6)
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 v7)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                            v2))
                                                      (coe
                                                         MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                         () erased () erased
                                                         (coe
                                                            MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                         (MAlonzo.Code.Ledger.Utxo.d_utxo_2054
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                               d_Conv'45'UTxOState_104 v1)))))))))))
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
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_hashRespectsUnion_320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_350)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_366)))
                                                      (MAlonzo.Code.Ledger.Transaction.d_scripts_2628
                                                         (coe
                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                            () erased () erased
                                                            (coe
                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                            (MAlonzo.Code.Ledger.Transaction.d_wits_2648
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'Tx_36
                                                                  v2))))))))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
