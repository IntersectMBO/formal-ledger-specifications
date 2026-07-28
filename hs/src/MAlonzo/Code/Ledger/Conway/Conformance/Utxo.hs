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
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
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
d_Dec'45'isVKey_94 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_94 ~v0 = du_Dec'45'isVKey_94
du_Dec'45'isVKey_94 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_94
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- _.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_332 ~v0
  = du_HasNetworkId'45'RewardAddress_332
du_HasNetworkId'45'RewardAddress_332 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_332
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- _.NetworkId
d_NetworkId_448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_NetworkId_448 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1366
         (coe v0))
-- _.Tx
d_Tx_620 a0 = ()
-- _.coin
d_coin_692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
         (coe v0))
-- _.getValueʰ
d_getValue'688'_720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_720 ~v0 = du_getValue'688'_720
du_getValue'688'_720 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_720
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3692
-- _.inject
d_inject_732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
         (coe v0))
-- _.netId
d_netId_784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_784 ~v0 = du_netId_784
du_netId_784 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_784
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- _.txOutHash
d_txOutHash_840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3682
      (coe v0)
-- _.Tx.body
d_body_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_body_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
      (coe v0)
-- _.Tx.isValid
d_isValid_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Bool
d_isValid_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3652
      (coe v0)
-- _.Tx.txAD
d_txAD_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Maybe AgdaAny
d_txAD_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3654
      (coe v0)
-- _.Tx.txsize
d_txsize_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Integer
d_txsize_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3650
      (coe v0)
-- _.Tx.wits
d_wits_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612
d_wits_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_2032 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2916
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalP2Scripts
d_evalP2Scripts_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_2038 v0 ~v1 = du_evalP2Scripts_2038 v0
du_evalP2Scripts_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2946
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2518 v0 ~v1 = du_Dec'45'inInterval_2518 v0
du_Dec'45'inInterval_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_3110
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCast-UTxOState
d_HasCast'45'UTxOState_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2522 ~v0 ~v1 = du_HasCast'45'UTxOState_2522
du_HasCast'45'UTxOState_2522 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2522
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOState_2560
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_2554 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_2558 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2568 v0 ~v1 = du_balance_2568 v0
du_balance_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2578
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2572 v0 ~v1 = du_cbalance_2572 v0
du_cbalance_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2584
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.collateralCheck
d_collateralCheck_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_2582 = erased
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  AgdaAny
d_consumed_2584 v0 ~v1 = du_consumed_2584 v0
du_consumed_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  AgdaAny
du_consumed_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3314
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Integer
d_depositRefunds_2588 v0 ~v1 = du_depositRefunds_2588 v0
du_depositRefunds_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Integer
du_depositRefunds_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_depositRefunds_3298
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_2596 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.minfee
d_minfee_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Integer
d_minfee_2602 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2594
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Integer
d_newDeposits_2604 v0 ~v1 = du_newDeposits_2604 v0
du_newDeposits_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Integer
du_newDeposits_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_newDeposits_3306
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2608 ~v0 ~v1 = du_outs_2608
du_outs_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2608
  = coe MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2572
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  AgdaAny
d_produced_2610 v0 ~v1 = du_produced_2610 v0
du_produced_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  AgdaAny
du_produced_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3322
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Integer
d_refScriptsSize_2614 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2588
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2628 v0 ~v1 = du_updateDeposits_2628 v0
du_updateDeposits_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2982
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2634 v0 ~v1 = du_utxoEntrySize_2634 v0
du_utxoEntrySize_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2488
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2502
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2492 ->
  AgdaAny
d_slot_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2500 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2492 ->
  Integer
d_treasury_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2504
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2522
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  Integer
d_donations_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2524
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  Integer
d_fees_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2520 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2712 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2712
  = C_Scripts'45'Yes_2790 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2868 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2760 ~v0 ~v1 ~v2 v3 = du_txIns_2760 v3
du_txIns_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2772 ~v0 v1 ~v2 ~v3 = du_pparams_2772 v1
du_pparams_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2502
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2786 ~v0 ~v1 v2 ~v3 = du_utxo_2786 v2
du_utxo_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateralInputs
d_collateralInputs_2812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2812 ~v0 ~v1 ~v2 v3
  = du_collateralInputs_2812 v3
du_collateralInputs_2812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_2812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3476
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2850 ~v0 v1 ~v2 ~v3 = du_pparams_2850 v1
du_pparams_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2502
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2864 ~v0 ~v1 v2 ~v3 = du_utxo_2864 v2
du_utxo_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2870 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2946
               v0
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2916
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2502
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3652
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3652
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2872 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2946
               v0
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2916
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2502
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3652
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3652
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2874 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2874
  = C_UTXO'45'inductive_2980 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_body_2882 ~v0 ~v1 v2 = du_body_2882 v2
du_body_2882 ::
  T_GeneralizeTel_34481 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
du_body_2882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
      (coe d_'46'generalizedField'45'tx_34473 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 -> Integer
d_txsize_2884 ~v0 ~v1 v2 = du_txsize_2884 v2
du_txsize_2884 :: T_GeneralizeTel_34481 -> Integer
du_txsize_2884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3650
      (coe d_'46'generalizedField'45'tx_34473 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.wits
d_wits_2886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612
d_wits_2886 ~v0 ~v1 v2 = du_wits_2886 v2
du_wits_2886 ::
  T_GeneralizeTel_34481 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612
du_wits_2886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
      (coe d_'46'generalizedField'45'tx_34473 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.currentTreasury
d_currentTreasury_2892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 -> Maybe Integer
d_currentTreasury_2892 ~v0 ~v1 v2 = du_currentTreasury_2892 v2
du_currentTreasury_2892 :: T_GeneralizeTel_34481 -> Maybe Integer
du_currentTreasury_2892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3500
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_34473 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 -> AgdaAny
d_mint_2894 ~v0 ~v1 v2 = du_mint_2894 v2
du_mint_2894 :: T_GeneralizeTel_34481 -> AgdaAny
du_mint_2894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3502
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_34473 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2896 ~v0 ~v1 v2 = du_refInputs_2896 v2
du_refInputs_2896 ::
  T_GeneralizeTel_34481 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3474
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_34473 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txFee
d_txFee_2908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 -> Integer
d_txFee_2908 ~v0 ~v1 v2 = du_txFee_2908 v2
du_txFee_2908 :: T_GeneralizeTel_34481 -> Integer
du_txFee_2908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3484
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_34473 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2916 ~v0 ~v1 v2 = du_txIns_2916 v2
du_txIns_2916 ::
  T_GeneralizeTel_34481 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_34473 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 -> Maybe AgdaAny
d_txNetworkId_2918 ~v0 ~v1 v2 = du_txNetworkId_2918 v2
du_txNetworkId_2918 :: T_GeneralizeTel_34481 -> Maybe AgdaAny
du_txNetworkId_2918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3498
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_34473 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txOuts
d_txOuts_2920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2920 ~v0 ~v1 v2 = du_txOuts_2920 v2
du_txOuts_2920 ::
  T_GeneralizeTel_34481 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3478
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_34473 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txVldt
d_txVldt_2922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2922 ~v0 ~v1 v2 = du_txVldt_2922 v2
du_txVldt_2922 ::
  T_GeneralizeTel_34481 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3488
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_34473 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txWithdrawals
d_txWithdrawals_2924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2924 ~v0 ~v1 v2 = du_txWithdrawals_2924 v2
du_txWithdrawals_2924 ::
  T_GeneralizeTel_34481 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3486
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_34473 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txrdmrs
d_txrdmrs_2934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2934 ~v0 ~v1 v2 = du_txrdmrs_2934 v2
du_txrdmrs_2934 ::
  T_GeneralizeTel_34481 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_2934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3628
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
         (coe d_'46'generalizedField'45'tx_34473 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2940 ~v0 ~v1 v2 = du_pparams_2940 v2
du_pparams_2940 ::
  T_GeneralizeTel_34481 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2502
      (coe d_'46'generalizedField'45'Γ_34475 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 -> AgdaAny
d_slot_2942 ~v0 ~v1 v2 = du_slot_2942 v2
du_slot_2942 :: T_GeneralizeTel_34481 -> AgdaAny
du_slot_2942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2500
      (coe d_'46'generalizedField'45'Γ_34475 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 -> Integer
d_treasury_2944 ~v0 ~v1 v2 = du_treasury_2944 v2
du_treasury_2944 :: T_GeneralizeTel_34481 -> Integer
du_treasury_2944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2504
      (coe d_'46'generalizedField'45'Γ_34475 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_34481 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2954 ~v0 ~v1 v2 = du_utxo_2954 v2
du_utxo_2954 ::
  T_GeneralizeTel_34481 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518
      (coe d_'46'generalizedField'45's_34477 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_3028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3028 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
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
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
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
                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518
                             (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3474
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                        (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
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
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3474
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
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
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_3110
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2500 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3488
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                        (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2594
                           (coe v0) (coe v1)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2502
                              (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518 (coe v4))
                           (coe v2))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3484
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
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
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3628
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
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
                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
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
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518
                                          (coe v4))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3476
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3216
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3284
                                             (coe v0) (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3284
                                                     (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3216
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3484
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2502
                                                (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3284
                                                (coe v0) (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3476
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3314
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2502
                                    (coe v3))
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3322
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2502
                                    (coe v3))
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                       (coe v0))
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3502
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                          (coe v2))))
                                 (coe (0 :: Integer)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
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
                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                           () erased () erased
                                                           (coe
                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                              () erased () erased
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                              () erased () erased
                                                              (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                                             (coe v0))))))
                                                              (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                                       (coe v0))))))
                                                        (coe v5)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3628
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
                                                                 (coe v2))))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
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
                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                           () erased () erased
                                                           (coe
                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                              () erased () erased
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                              () erased () erased
                                                              (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                                             (coe v0))))))
                                                              (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2048
                                                                       (coe v0))))))
                                                        (coe v5)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3628
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
                                                         (coe v2))))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1778
                                                      (coe v0))))
                                             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3488
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                      (coe v2)))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_DecEq'45'UTCTime_2538
                                                   (coe v1))))
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                             MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                             MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                             (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_epochInfoSlotToUTCTime_2552
                                                (coe v1))
                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3488
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                      (coe v2)))))
                                          (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3650
                                          (coe v2))
                                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2502
                                             (coe v3))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                          (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2588
                                             (coe v0) (coe v1)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518
                                                (coe v4))
                                             (coe v2))
                                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2502
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
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                                           (coe v0))
                                                        (mulInt
                                                           (coe
                                                              addInt (coe (160 :: Integer))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2488
                                                                 (coe v0)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v5))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_386
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2502
                                                                 (coe v3)))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3692
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                (coe
                                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3682
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3478
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
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
                                                           MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_2542
                                                           v1
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3692
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v5))))
                                                        (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_368
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2502
                                                              (coe v3)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                   (coe
                                                      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3682
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3478
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
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
                                                                   (MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3682
                                                            (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3478
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
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
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1366
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v5)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1366
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3682
                                                               (coe v0))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3478
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
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
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1366
                                                                       (coe v0)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                    (coe v5))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1366
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3486
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                                  (coe v2)))))
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                         (coe
                                                            MAlonzo.Code.Prelude.du_'126''63'_48
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3498
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                                  (coe v2)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1366
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1366
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Prelude.du_'126''63'_48
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3500
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                                  (coe v2)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2504
                                                                  (coe v3)))
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_34473 ::
  T_GeneralizeTel_34481 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634
d_'46'generalizedField'45'tx_34473 v0
  = case coe v0 of
      C_mkGeneralizeTel_34483 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_34475 ::
  T_GeneralizeTel_34481 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2492
d_'46'generalizedField'45'Γ_34475 v0
  = case coe v0 of
      C_mkGeneralizeTel_34483 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_34477 ::
  T_GeneralizeTel_34481 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508
d_'46'generalizedField'45's_34477 v0
  = case coe v0 of
      C_mkGeneralizeTel_34483 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_34479 ::
  T_GeneralizeTel_34481 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508
d_'46'generalizedField'45's''_34479 v0
  = case coe v0 of
      C_mkGeneralizeTel_34483 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_34481 a0 a1 = ()
data T_GeneralizeTel_34481
  = C_mkGeneralizeTel_34483 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2492
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508
