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
d_HasNetworkId'45'RewardAddress_334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_334 ~v0
  = du_HasNetworkId'45'RewardAddress_334
du_HasNetworkId'45'RewardAddress_334 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_334
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- _.NetworkId
d_NetworkId_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_NetworkId_452 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- _.Tx
d_Tx_630 a0 = ()
-- _.coin
d_coin_704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
         (coe v0))
-- _.getValueʰ
d_getValue'688'_732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_732 ~v0 = du_getValue'688'_732
du_getValue'688'_732 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_732
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3712
-- _.inject
d_inject_744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
         (coe v0))
-- _.netId
d_netId_796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_796 ~v0 = du_netId_796
du_netId_796 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_796
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- _.txOutHash
d_txOutHash_854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3702
      (coe v0)
-- _.Tx.body
d_body_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454
d_body_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
      (coe v0)
-- _.Tx.isValid
d_isValid_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  Bool
d_isValid_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3672
      (coe v0)
-- _.Tx.txAD
d_txAD_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  Maybe AgdaAny
d_txAD_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3674
      (coe v0)
-- _.Tx.txsize
d_txsize_1958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  Integer
d_txsize_1958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3670
      (coe v0)
-- _.Tx.wits
d_wits_1960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3632
d_wits_1960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3668
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_2046 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2922
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalP2Scripts
d_evalP2Scripts_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_2052 v0 ~v1 = du_evalP2Scripts_2052 v0
du_evalP2Scripts_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2952
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2522 v0 ~v1 = du_Dec'45'inInterval_2522 v0
du_Dec'45'inInterval_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_3116
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCast-UTxOState
d_HasCast'45'UTxOState_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2526 ~v0 ~v1 = du_HasCast'45'UTxOState_2526
du_HasCast'45'UTxOState_2526 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2526
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOState_2566
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_2558 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_2562 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2572 v0 ~v1 = du_balance_2572 v0
du_balance_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2584
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2576 v0 ~v1 = du_cbalance_2576 v0
du_cbalance_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2590
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.collateralCheck
d_collateralCheck_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_2586 = erased
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  AgdaAny
d_consumed_2588 v0 ~v1 = du_consumed_2588 v0
du_consumed_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  AgdaAny
du_consumed_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3320
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Integer
d_depositRefunds_2592 v0 ~v1 = du_depositRefunds_2592 v0
du_depositRefunds_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Integer
du_depositRefunds_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_depositRefunds_3304
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_2600 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.minfee
d_minfee_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  Integer
d_minfee_2606 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2600
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Integer
d_newDeposits_2608 v0 ~v1 = du_newDeposits_2608 v0
du_newDeposits_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Integer
du_newDeposits_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_newDeposits_3312
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2612 ~v0 ~v1 = du_outs_2612
du_outs_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2612
  = coe MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2578
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  AgdaAny
d_produced_2614 v0 ~v1 = du_produced_2614 v0
du_produced_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  AgdaAny
du_produced_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3328
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  Integer
d_refScriptsSize_2618 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2594
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2632 v0 ~v1 = du_updateDeposits_2632 v0
du_updateDeposits_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2988
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2638 v0 ~v1 = du_utxoEntrySize_2638 v0
du_utxoEntrySize_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2494
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2498 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_pparams_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2508
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2498 ->
  AgdaAny
d_slot_2662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2506 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2498 ->
  Integer
d_treasury_2664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2510
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2528
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  Integer
d_donations_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2530
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  Integer
d_fees_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2526 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2524 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2716 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2716
  = C_Scripts'45'Yes_2794 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2872 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2764 ~v0 ~v1 ~v2 v3 = du_txIns_2764 v3
du_txIns_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3492
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_pparams_2776 ~v0 v1 ~v2 ~v3 = du_pparams_2776 v1
du_pparams_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2498 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
du_pparams_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2508
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2790 ~v0 ~v1 v2 ~v3 = du_utxo_2790 v2
du_utxo_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2524 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateralInputs
d_collateralInputs_2816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2816 ~v0 ~v1 ~v2 v3
  = du_collateralInputs_2816 v3
du_collateralInputs_2816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_2816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3496
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_pparams_2854 ~v0 v1 ~v2 ~v3 = du_pparams_2854 v1
du_pparams_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2498 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
du_pparams_2854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2508
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2868 ~v0 ~v1 v2 ~v3 = du_utxo_2868 v2
du_utxo_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2524 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2874 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2952
               v0
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2922
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2508
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2524
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3672
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3672
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2876 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2952
               v0
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2922
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2508
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2524
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3672
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3672
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2878 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2878
  = C_UTXO'45'inductive_2984 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454
d_body_2886 ~v0 ~v1 v2 = du_body_2886 v2
du_body_2886 ::
  T_GeneralizeTel_34731 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454
du_body_2886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
      (coe d_'46'generalizedField'45'tx_34723 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 -> Integer
d_txsize_2888 ~v0 ~v1 v2 = du_txsize_2888 v2
du_txsize_2888 :: T_GeneralizeTel_34731 -> Integer
du_txsize_2888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3670
      (coe d_'46'generalizedField'45'tx_34723 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.wits
d_wits_2890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3632
d_wits_2890 ~v0 ~v1 v2 = du_wits_2890 v2
du_wits_2890 ::
  T_GeneralizeTel_34731 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3632
du_wits_2890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3668
      (coe d_'46'generalizedField'45'tx_34723 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.collateralInputs
d_collateralInputs_2894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2894 ~v0 ~v1 v2 = du_collateralInputs_2894 v2
du_collateralInputs_2894 ::
  T_GeneralizeTel_34731 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_2894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3496
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
         (coe d_'46'generalizedField'45'tx_34723 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.currentTreasury
d_currentTreasury_2896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 -> Maybe Integer
d_currentTreasury_2896 ~v0 ~v1 v2 = du_currentTreasury_2896 v2
du_currentTreasury_2896 :: T_GeneralizeTel_34731 -> Maybe Integer
du_currentTreasury_2896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3520
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
         (coe d_'46'generalizedField'45'tx_34723 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 -> AgdaAny
d_mint_2898 ~v0 ~v1 v2 = du_mint_2898 v2
du_mint_2898 :: T_GeneralizeTel_34731 -> AgdaAny
du_mint_2898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3522
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
         (coe d_'46'generalizedField'45'tx_34723 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2900 ~v0 ~v1 v2 = du_refInputs_2900 v2
du_refInputs_2900 ::
  T_GeneralizeTel_34731 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
         (coe d_'46'generalizedField'45'tx_34723 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txFee
d_txFee_2912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 -> Integer
d_txFee_2912 ~v0 ~v1 v2 = du_txFee_2912 v2
du_txFee_2912 :: T_GeneralizeTel_34731 -> Integer
du_txFee_2912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3504
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
         (coe d_'46'generalizedField'45'tx_34723 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2920 ~v0 ~v1 v2 = du_txIns_2920 v2
du_txIns_2920 ::
  T_GeneralizeTel_34731 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3492
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
         (coe d_'46'generalizedField'45'tx_34723 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 -> Maybe AgdaAny
d_txNetworkId_2922 ~v0 ~v1 v2 = du_txNetworkId_2922 v2
du_txNetworkId_2922 :: T_GeneralizeTel_34731 -> Maybe AgdaAny
du_txNetworkId_2922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3518
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
         (coe d_'46'generalizedField'45'tx_34723 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txOuts
d_txOuts_2924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2924 ~v0 ~v1 v2 = du_txOuts_2924 v2
du_txOuts_2924 ::
  T_GeneralizeTel_34731 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3498
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
         (coe d_'46'generalizedField'45'tx_34723 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txVldt
d_txVldt_2926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2926 ~v0 ~v1 v2 = du_txVldt_2926 v2
du_txVldt_2926 ::
  T_GeneralizeTel_34731 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3508
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
         (coe d_'46'generalizedField'45'tx_34723 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txWithdrawals
d_txWithdrawals_2928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2928 ~v0 ~v1 v2 = du_txWithdrawals_2928 v2
du_txWithdrawals_2928 ::
  T_GeneralizeTel_34731 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3506
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
         (coe d_'46'generalizedField'45'tx_34723 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txrdmrs
d_txrdmrs_2938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2938 ~v0 ~v1 v2 = du_txrdmrs_2938 v2
du_txrdmrs_2938 ::
  T_GeneralizeTel_34731 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_2938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3648
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3668
         (coe d_'46'generalizedField'45'tx_34723 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_pparams_2944 ~v0 ~v1 v2 = du_pparams_2944 v2
du_pparams_2944 ::
  T_GeneralizeTel_34731 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
du_pparams_2944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2508
      (coe d_'46'generalizedField'45'Γ_34725 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 -> AgdaAny
d_slot_2946 ~v0 ~v1 v2 = du_slot_2946 v2
du_slot_2946 :: T_GeneralizeTel_34731 -> AgdaAny
du_slot_2946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2506
      (coe d_'46'generalizedField'45'Γ_34725 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 -> Integer
d_treasury_2948 ~v0 ~v1 v2 = du_treasury_2948 v2
du_treasury_2948 :: T_GeneralizeTel_34731 -> Integer
du_treasury_2948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2510
      (coe d_'46'generalizedField'45'Γ_34725 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  T_GeneralizeTel_34731 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2958 ~v0 ~v1 v2 = du_utxo_2958 v2
du_utxo_2958 ::
  T_GeneralizeTel_34731 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2524
      (coe d_'46'generalizedField'45's_34727 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3030 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1364
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1362
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3492
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
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
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1364
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1362
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
                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2524
                             (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3492
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8746'__708
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3494
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3496
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
                           (coe v2))))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_3116
                  (coe v0)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2506 (coe v3))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3508
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
                        (coe v2))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                     (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2600
                        (coe v0) (coe v1)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2508
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2524 (coe v4))
                        (coe v2))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3504
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
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
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1362
                                          (coe v0)))
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                       erased
                                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                                                      (coe v0))))))
                                       (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_248
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                                                (coe v0)))))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3648
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3668
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
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
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
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1364
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1362
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2524
                                       (coe v4))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3496
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
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
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
                                                  (coe v0)))
                                            (coe v5)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3222
                                               (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3290
                                          (coe v0) (coe v2)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2524
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
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
                                                  (coe v0)))
                                            (coe v5)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                               (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3290
                                                  (coe v0) (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2524
                                                     (coe v4))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3222
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                    (mulInt
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3504
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
                                             (coe v2)))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_410
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2508
                                             (coe v3))))
                                    (mulInt
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3290
                                             (coe v0) (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2524
                                                (coe v4))))
                                       (coe (100 :: Integer))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                          (coe
                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased
                                             () erased
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1364
                                                (coe v0))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1362
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3496
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
                                 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3320
                              (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2508
                                 (coe v3))
                              (coe v4)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
                                 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3328
                              (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2508
                                 (coe v3))
                              (coe v4)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
                                    (coe v0))
                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3522
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
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
                                                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1362
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                           () erased () erased
                                                           (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                                                                          (coe v0))))))
                                                           (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_248
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                                                                    (coe v0))))))
                                                     (coe v5)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3648
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3668
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
                                                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1362
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                           () erased () erased
                                                           (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                                                                          (coe v0))))))
                                                           (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_248
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
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
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3648
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3668
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
                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_90
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
                                                   (coe v0))))
                                          (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3508
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
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
                                                MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_DecEq'45'UTCTime_2544
                                                (coe v1))))
                                       (coe
                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                          MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                          MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                          (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_epochInfoSlotToUTCTime_2558
                                             (coe v1))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3508
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
                                                   (coe v2)))))
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                    (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3670
                                       (coe v2))
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_362
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2508
                                          (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2594
                                          (coe v0) (coe v1)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2524
                                             (coe v4))
                                          (coe v2))
                                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_394
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2508
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
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
                                                        (coe v0))
                                                     (mulInt
                                                        (coe
                                                           addInt (coe (160 :: Integer))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2494
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v5))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_388
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2508
                                                              (coe v3)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3712
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
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3702
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3498
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_2548
                                                        v1
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3712
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_370
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2508
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3702
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3498
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3702
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3498
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
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
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v5)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3702
                                                            (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3498
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
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
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                 (coe v5))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3506
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
                                                               (coe v2)))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3518
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3520
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2510
                                                               (coe v3)))
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_34723 ::
  T_GeneralizeTel_34731 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654
d_'46'generalizedField'45'tx_34723 v0
  = case coe v0 of
      C_mkGeneralizeTel_34733 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_34725 ::
  T_GeneralizeTel_34731 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2498
d_'46'generalizedField'45'Γ_34725 v0
  = case coe v0 of
      C_mkGeneralizeTel_34733 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_34727 ::
  T_GeneralizeTel_34731 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514
d_'46'generalizedField'45's_34727 v0
  = case coe v0 of
      C_mkGeneralizeTel_34733 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_34729 ::
  T_GeneralizeTel_34731 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514
d_'46'generalizedField'45's''_34729 v0
  = case coe v0 of
      C_mkGeneralizeTel_34733 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_34731 a0 a1 = ()
data T_GeneralizeTel_34731
  = C_mkGeneralizeTel_34733 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2498
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2514
