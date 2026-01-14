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

module MAlonzo.Code.Ledger.Conway.Conformance.Utxo where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Decidable.WithoutK
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances

-- _._≤ᵗ_
d__'8804''7511'__20 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__20 = erased
-- _.Dec-isVKey
d_Dec'45'isVKey_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_82 ~v0 = du_Dec'45'isVKey_82
du_Dec'45'isVKey_82 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_82
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
-- _.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'RewardAddress_296 ~v0
  = du_HasNetworkId'45'RewardAddress_296
du_HasNetworkId'45'RewardAddress_296 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'RewardAddress_296
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_162
-- _.NetworkId
d_NetworkId_392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_NetworkId_392 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
         (coe v0))
-- _.Tx
d_Tx_560 a0 = ()
-- _.coin
d_coin_636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
         (coe v0))
-- _.getValueʰ
d_getValue'688'_662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_662 ~v0 = du_getValue'688'_662
du_getValue'688'_662 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_662
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3490
-- _.inject
d_inject_674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
         (coe v0))
-- _.netId
d_netId_724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_724 ~v0 = du_netId_724
du_netId_724 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_724
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
-- _.txOutHash
d_txOutHash_784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3480
      (coe v0)
-- _.Tx.body
d_body_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254
d_body_1810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
      (coe v0)
-- _.Tx.isValid
d_isValid_1812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Bool
d_isValid_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3452
      (coe v0)
-- _.Tx.txAD
d_txAD_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Maybe AgdaAny
d_txAD_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3454
      (coe v0)
-- _.Tx.txsize
d_txsize_1816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Integer
d_txsize_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3450
      (coe v0)
-- _.Tx.wits
d_wits_1818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3412
d_wits_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3448
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_1906 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2768
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalP2Scripts
d_evalP2Scripts_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_1910 ~v0 v1 = du_evalP2Scripts_1910 v1
du_evalP2Scripts_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2808
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2390 v0 ~v1 = du_Dec'45'inInterval_2390 v0
du_Dec'45'inInterval_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_2982
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCast-UTxOState
d_HasCast'45'UTxOState_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2394 ~v0 ~v1 = du_HasCast'45'UTxOState_2394
du_HasCast'45'UTxOState_2394 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2394
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOState_2432
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_2426 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_2430 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2440 v0 ~v1 = du_balance_2440 v0
du_balance_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2450
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2444 v0 ~v1 = du_cbalance_2444 v0
du_cbalance_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2456
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.collateralCheck
d_collateralCheck_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_2454 = erased
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  AgdaAny
d_consumed_2456 v0 ~v1 = du_consumed_2456 v0
du_consumed_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  AgdaAny
du_consumed_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3186
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
d_depositRefunds_2460 v0 ~v1 = du_depositRefunds_2460 v0
du_depositRefunds_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
du_depositRefunds_2460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_depositRefunds_3170
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_2468 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.minfee
d_minfee_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Integer
d_minfee_2474 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2466
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
d_newDeposits_2476 v0 ~v1 = du_newDeposits_2476 v0
du_newDeposits_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
du_newDeposits_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_newDeposits_3178
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2480 ~v0 ~v1 = du_outs_2480
du_outs_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2480
  = coe MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2444
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  AgdaAny
d_produced_2482 v0 ~v1 = du_produced_2482 v0
du_produced_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  AgdaAny
du_produced_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3194
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Integer
d_refScriptsSize_2486 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2460
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2500 v0 ~v1 = du_updateDeposits_2500 v0
du_updateDeposits_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2854
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2506 v0 ~v1 = du_utxoEntrySize_2506 v0
du_utxoEntrySize_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2360
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  AgdaAny
d_slot_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2372 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  Integer
d_treasury_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2376
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2394
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  Integer
d_donations_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2396
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  Integer
d_fees_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2392 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2584 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2584
  = C_Scripts'45'Yes_2662 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2740 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2632 ~v0 ~v1 ~v2 v3 = du_txIns_2632 v3
du_txIns_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2644 ~v0 v1 ~v2 ~v3 = du_pparams_2644 v1
du_pparams_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
du_pparams_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2658 ~v0 ~v1 v2 ~v3 = du_utxo_2658 v2
du_utxo_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateralInputs
d_collateralInputs_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2684 ~v0 ~v1 ~v2 v3
  = du_collateralInputs_2684 v3
du_collateralInputs_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3296
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2722 ~v0 v1 ~v2 ~v3 = du_pparams_2722 v1
du_pparams_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
du_pparams_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2736 ~v0 ~v1 v2 ~v3 = du_utxo_2736 v2
du_utxo_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2742 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2808
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2768
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3452
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3452
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2744 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2808
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2768
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3452
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3452
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2746 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2746
  = C_UTXO'45'inductive_2852 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254
d_body_2754 ~v0 ~v1 v2 = du_body_2754 v2
du_body_2754 ::
  T_GeneralizeTel_32395 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254
du_body_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
      (coe d_'46'generalizedField'45'tx_32387 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 -> Integer
d_txsize_2756 ~v0 ~v1 v2 = du_txsize_2756 v2
du_txsize_2756 :: T_GeneralizeTel_32395 -> Integer
du_txsize_2756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3450
      (coe d_'46'generalizedField'45'tx_32387 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.wits
d_wits_2758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3412
d_wits_2758 ~v0 ~v1 v2 = du_wits_2758 v2
du_wits_2758 ::
  T_GeneralizeTel_32395 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3412
du_wits_2758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3448
      (coe d_'46'generalizedField'45'tx_32387 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.currentTreasury
d_currentTreasury_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 -> Maybe Integer
d_currentTreasury_2764 ~v0 ~v1 v2 = du_currentTreasury_2764 v2
du_currentTreasury_2764 :: T_GeneralizeTel_32395 -> Maybe Integer
du_currentTreasury_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3320
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_32387 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 -> AgdaAny
d_mint_2766 ~v0 ~v1 v2 = du_mint_2766 v2
du_mint_2766 :: T_GeneralizeTel_32395 -> AgdaAny
du_mint_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3322
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_32387 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2768 ~v0 ~v1 v2 = du_refInputs_2768 v2
du_refInputs_2768 ::
  T_GeneralizeTel_32395 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3294
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_32387 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txFee
d_txFee_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 -> Integer
d_txFee_2780 ~v0 ~v1 v2 = du_txFee_2780 v2
du_txFee_2780 :: T_GeneralizeTel_32395 -> Integer
du_txFee_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3304
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_32387 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2788 ~v0 ~v1 v2 = du_txIns_2788 v2
du_txIns_2788 ::
  T_GeneralizeTel_32395 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_32387 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 -> Maybe AgdaAny
d_txNetworkId_2790 ~v0 ~v1 v2 = du_txNetworkId_2790 v2
du_txNetworkId_2790 :: T_GeneralizeTel_32395 -> Maybe AgdaAny
du_txNetworkId_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3318
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_32387 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txOuts
d_txOuts_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2792 ~v0 ~v1 v2 = du_txOuts_2792 v2
du_txOuts_2792 ::
  T_GeneralizeTel_32395 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3298
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_32387 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txVldt
d_txVldt_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2794 ~v0 ~v1 v2 = du_txVldt_2794 v2
du_txVldt_2794 ::
  T_GeneralizeTel_32395 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3308
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_32387 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txWithdrawals
d_txWithdrawals_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2796 ~v0 ~v1 v2 = du_txWithdrawals_2796 v2
du_txWithdrawals_2796 ::
  T_GeneralizeTel_32395 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3306
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_32387 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txrdmrs
d_txrdmrs_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2806 ~v0 ~v1 v2 = du_txrdmrs_2806 v2
du_txrdmrs_2806 ::
  T_GeneralizeTel_32395 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3428
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3448
         (coe d_'46'generalizedField'45'tx_32387 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2812 ~v0 ~v1 v2 = du_pparams_2812 v2
du_pparams_2812 ::
  T_GeneralizeTel_32395 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
du_pparams_2812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
      (coe d_'46'generalizedField'45'Γ_32389 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 -> AgdaAny
d_slot_2814 ~v0 ~v1 v2 = du_slot_2814 v2
du_slot_2814 :: T_GeneralizeTel_32395 -> AgdaAny
du_slot_2814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2372
      (coe d_'46'generalizedField'45'Γ_32389 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 -> Integer
d_treasury_2816 ~v0 ~v1 v2 = du_treasury_2816 v2
du_treasury_2816 :: T_GeneralizeTel_32395 -> Integer
du_treasury_2816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2376
      (coe d_'46'generalizedField'45'Γ_32389 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_32395 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2826 ~v0 ~v1 v2 = du_utxo_2826 v2
du_utxo_2826 ::
  T_GeneralizeTel_32395 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
      (coe d_'46'generalizedField'45's_32391 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2898 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1266
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                     (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_470
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1266
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_586
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                             (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3294
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                        (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1266
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8745'__732
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1266
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3294
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_470
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_2982
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2372 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3308
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                        (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2466
                           (coe v0) (coe v1)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
                              (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390 (coe v4))
                           (coe v2))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3304
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                       erased
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_234
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3428
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3448
                                          (coe v2))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'8709'_470
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                              (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe
                                    (\ v5 ->
                                       coe
                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_range_588
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
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
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1266
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                                          (coe v4))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3296
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                             (coe v2))))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3088
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3156
                                             (coe v0) (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                                                (coe v4)))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3156
                                                     (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3088
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3304
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_396
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
                                                (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3156
                                                (coe v0) (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                                                   (coe v4))))
                                          (coe (100 :: Integer))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1266
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3296
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_'8709'_470
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3186
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
                                    (coe v3))
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3194
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
                                    (coe v3))
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                                       (coe v0))
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3322
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                          (coe v2))))
                                 (coe (0 :: Integer)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3450
                                       (coe v2))
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_348
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
                                          (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2460
                                          (coe v0) (coe v1)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                                             (coe v4))
                                          (coe v2))
                                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_380
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
                                             (coe v3))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                                                        (coe v0))
                                                     (mulInt
                                                        (coe
                                                           addInt (coe (160 :: Integer))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2360
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v5))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_374
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
                                                              (coe v3)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3490
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v5)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                             (coe
                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3480
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3298
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                                      (coe v2))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_2404
                                                        v1
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3490
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_356
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2374
                                                           (coe v3)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                                (coe
                                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3480
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3298
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                                         (coe v2))))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v5 ->
                                                      coe
                                                        MAlonzo.Code.Class.Decidable.WithoutK.du_Dec'45''8846'All_42
                                                        (coe
                                                           (\ v6 ->
                                                              MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                        (coe
                                                           (\ v6 ->
                                                              coe
                                                                MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                (MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
                                                                   (coe v6))
                                                                (64 :: Integer)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v5))))
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_range_588
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3480
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3298
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                                            (coe v2))))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      (\ v5 ->
                                                         coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v5)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                                 (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_range_588
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3480
                                                            (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3298
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                                               (coe v2))))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         (\ v5 ->
                                                            coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110
                                                                 (coe v5))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                                    (coe v0)))))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_586
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3306
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                                               (coe v2)))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3318
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2376
                                                               (coe v3)))
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_32387 ::
  T_GeneralizeTel_32395 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434
d_'46'generalizedField'45'tx_32387 v0
  = case coe v0 of
      C_mkGeneralizeTel_32397 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_32389 ::
  T_GeneralizeTel_32395 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364
d_'46'generalizedField'45'Γ_32389 v0
  = case coe v0 of
      C_mkGeneralizeTel_32397 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_32391 ::
  T_GeneralizeTel_32395 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
d_'46'generalizedField'45's_32391 v0
  = case coe v0 of
      C_mkGeneralizeTel_32397 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_32393 ::
  T_GeneralizeTel_32395 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
d_'46'generalizedField'45's''_32393 v0
  = case coe v0 of
      C_mkGeneralizeTel_32397 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_32395 a0 a1 = ()
data T_GeneralizeTel_32395
  = C_mkGeneralizeTel_32397 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2364
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
