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
d_Dec'45'isVKey_92 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_92 ~v0 = du_Dec'45'isVKey_92
du_Dec'45'isVKey_92 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_92
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_286
-- _.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'RewardAddress_324 ~v0
  = du_HasNetworkId'45'RewardAddress_324
du_HasNetworkId'45'RewardAddress_324 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
du_HasNetworkId'45'RewardAddress_324
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_222
-- _.NetworkId
d_NetworkId_430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_NetworkId_430 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
         (coe v0))
-- _.Tx
d_Tx_606 a0 = ()
-- _.coin
d_coin_682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
         (coe v0))
-- _.getValueʰ
d_getValue'688'_710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_710 ~v0 = du_getValue'688'_710
du_getValue'688'_710 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_710
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3658
-- _.inject
d_inject_722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
         (coe v0))
-- _.netId
d_netId_772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_772 ~v0 = du_netId_772
du_netId_772 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_772
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_254
-- _.txOutHash
d_txOutHash_844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3648
      (coe v0)
-- _.Tx.body
d_body_1908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422
d_body_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
      (coe v0)
-- _.Tx.isValid
d_isValid_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Bool
d_isValid_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3620
      (coe v0)
-- _.Tx.txAD
d_txAD_1912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Maybe AgdaAny
d_txAD_1912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3622
      (coe v0)
-- _.Tx.txsize
d_txsize_1914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Integer
d_txsize_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3618
      (coe v0)
-- _.Tx.wits
d_wits_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3580
d_wits_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3616
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_2016 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2902
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalP2Scripts
d_evalP2Scripts_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_2022 ~v0 v1 = du_evalP2Scripts_2022 v1
du_evalP2Scripts_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2932
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2502 v0 ~v1 = du_Dec'45'inInterval_2502 v0
du_Dec'45'inInterval_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_3094
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCast-UTxOState
d_HasCast'45'UTxOState_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2506 ~v0 ~v1 = du_HasCast'45'UTxOState_2506
du_HasCast'45'UTxOState_2506 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOState_2544
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_2538 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_2542 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2552 v0 ~v1 = du_balance_2552 v0
du_balance_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2562
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2556 v0 ~v1 = du_cbalance_2556 v0
du_cbalance_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2568
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.collateralCheck
d_collateralCheck_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_2566 = erased
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  AgdaAny
d_consumed_2568 v0 ~v1 = du_consumed_2568 v0
du_consumed_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  AgdaAny
du_consumed_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3298
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Integer
d_depositRefunds_2572 v0 ~v1 = du_depositRefunds_2572 v0
du_depositRefunds_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Integer
du_depositRefunds_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_depositRefunds_3282
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_2580 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.minfee
d_minfee_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Integer
d_minfee_2586 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2578
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Integer
d_newDeposits_2588 v0 ~v1 = du_newDeposits_2588 v0
du_newDeposits_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Integer
du_newDeposits_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_newDeposits_3290
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2592 ~v0 ~v1 = du_outs_2592
du_outs_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2592
  = coe MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2556
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  AgdaAny
d_produced_2594 v0 ~v1 = du_produced_2594 v0
du_produced_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  AgdaAny
du_produced_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3306
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Integer
d_refScriptsSize_2598 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2572
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2612 v0 ~v1 = du_updateDeposits_2612 v0
du_updateDeposits_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2966
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2618 v0 ~v1 = du_utxoEntrySize_2618 v0
du_utxoEntrySize_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2472
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_pparams_2640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2486
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2476 ->
  AgdaAny
d_slot_2642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2484 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2476 ->
  Integer
d_treasury_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2488
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2506
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  Integer
d_donations_2650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2508
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  Integer
d_fees_2652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2504 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2696 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2696
  = C_Scripts'45'Yes_2774 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2852 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2744 ~v0 ~v1 ~v2 v3 = du_txIns_2744 v3
du_txIns_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3460
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_pparams_2756 ~v0 v1 ~v2 ~v3 = du_pparams_2756 v1
du_pparams_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
du_pparams_2756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2486
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2770 ~v0 ~v1 v2 ~v3 = du_utxo_2770 v2
du_utxo_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateralInputs
d_collateralInputs_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2796 ~v0 ~v1 ~v2 v3
  = du_collateralInputs_2796 v3
du_collateralInputs_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3464
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_pparams_2834 ~v0 v1 ~v2 ~v3 = du_pparams_2834 v1
du_pparams_2834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
du_pparams_2834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2486
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2848 ~v0 ~v1 v2 ~v3 = du_utxo_2848 v2
du_utxo_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2854 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2932
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2902
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2486
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3620
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3620
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2856 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2932
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2902
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2486
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3620
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3620
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2858 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2858
  = C_UTXO'45'inductive_2964 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422
d_body_2866 ~v0 ~v1 v2 = du_body_2866 v2
du_body_2866 ::
  T_GeneralizeTel_34511 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422
du_body_2866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
      (coe d_'46'generalizedField'45'tx_34503 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 -> Integer
d_txsize_2868 ~v0 ~v1 v2 = du_txsize_2868 v2
du_txsize_2868 :: T_GeneralizeTel_34511 -> Integer
du_txsize_2868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3618
      (coe d_'46'generalizedField'45'tx_34503 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.wits
d_wits_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3580
d_wits_2870 ~v0 ~v1 v2 = du_wits_2870 v2
du_wits_2870 ::
  T_GeneralizeTel_34511 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3580
du_wits_2870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3616
      (coe d_'46'generalizedField'45'tx_34503 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.currentTreasury
d_currentTreasury_2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 -> Maybe Integer
d_currentTreasury_2876 ~v0 ~v1 v2 = du_currentTreasury_2876 v2
du_currentTreasury_2876 :: T_GeneralizeTel_34511 -> Maybe Integer
du_currentTreasury_2876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3488
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_34503 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 -> AgdaAny
d_mint_2878 ~v0 ~v1 v2 = du_mint_2878 v2
du_mint_2878 :: T_GeneralizeTel_34511 -> AgdaAny
du_mint_2878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3490
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_34503 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2880 ~v0 ~v1 v2 = du_refInputs_2880 v2
du_refInputs_2880 ::
  T_GeneralizeTel_34511 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_34503 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txFee
d_txFee_2892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 -> Integer
d_txFee_2892 ~v0 ~v1 v2 = du_txFee_2892 v2
du_txFee_2892 :: T_GeneralizeTel_34511 -> Integer
du_txFee_2892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3472
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_34503 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2900 ~v0 ~v1 v2 = du_txIns_2900 v2
du_txIns_2900 ::
  T_GeneralizeTel_34511 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3460
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_34503 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 -> Maybe AgdaAny
d_txNetworkId_2902 ~v0 ~v1 v2 = du_txNetworkId_2902 v2
du_txNetworkId_2902 :: T_GeneralizeTel_34511 -> Maybe AgdaAny
du_txNetworkId_2902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3486
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_34503 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txOuts
d_txOuts_2904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2904 ~v0 ~v1 v2 = du_txOuts_2904 v2
du_txOuts_2904 ::
  T_GeneralizeTel_34511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3466
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_34503 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txVldt
d_txVldt_2906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2906 ~v0 ~v1 v2 = du_txVldt_2906 v2
du_txVldt_2906 ::
  T_GeneralizeTel_34511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3476
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_34503 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txWithdrawals
d_txWithdrawals_2908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2908 ~v0 ~v1 v2 = du_txWithdrawals_2908 v2
du_txWithdrawals_2908 ::
  T_GeneralizeTel_34511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3474
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_34503 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txrdmrs
d_txrdmrs_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2918 ~v0 ~v1 v2 = du_txrdmrs_2918 v2
du_txrdmrs_2918 ::
  T_GeneralizeTel_34511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_2918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3596
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3616
         (coe d_'46'generalizedField'45'tx_34503 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_pparams_2924 ~v0 ~v1 v2 = du_pparams_2924 v2
du_pparams_2924 ::
  T_GeneralizeTel_34511 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
du_pparams_2924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2486
      (coe d_'46'generalizedField'45'Γ_34505 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 -> AgdaAny
d_slot_2926 ~v0 ~v1 v2 = du_slot_2926 v2
du_slot_2926 :: T_GeneralizeTel_34511 -> AgdaAny
du_slot_2926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2484
      (coe d_'46'generalizedField'45'Γ_34505 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 -> Integer
d_treasury_2928 ~v0 ~v1 v2 = du_treasury_2928 v2
du_treasury_2928 :: T_GeneralizeTel_34511 -> Integer
du_treasury_2928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2488
      (coe d_'46'generalizedField'45'Γ_34505 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_34511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2938 ~v0 ~v1 v2 = du_utxo_2938 v2
du_utxo_2938 ::
  T_GeneralizeTel_34511 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502
      (coe d_'46'generalizedField'45's_34507 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_3012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3012 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1344
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1342
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3460
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
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
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1344
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1342
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
                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502
                             (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3460
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3462
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
                        (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1344
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1342
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
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1344
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1342
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3460
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3462
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
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
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_3094
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2484 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3476
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                        (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2578
                           (coe v0) (coe v1)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2486
                              (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502 (coe v4))
                           (coe v2))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3472
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
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
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1342
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3596
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3616
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
                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_286
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_250
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
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1344
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1342
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502
                                          (coe v4))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3464
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3200
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3268
                                             (coe v0) (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3268
                                                     (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3200
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3472
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_416
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2486
                                                (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3268
                                                (coe v0) (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1344
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1342
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3464
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3298
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2486
                                    (coe v3))
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3306
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2486
                                    (coe v3))
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
                                       (coe v0))
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3490
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
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
                                                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1342
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
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
                                                                             (coe v0))))))
                                                              (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
                                                                       (coe v0))))))
                                                        (coe v5)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3596
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3616
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
                                                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1342
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
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
                                                                             (coe v0))))))
                                                              (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3596
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3616
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
                                                      (coe v0))))
                                             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3476
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
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
                                                   MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_DecEq'45'UTCTime_2522
                                                   (coe v1))))
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                             MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                             MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                             (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_epochInfoSlotToUTCTime_2538
                                                (coe v1))
                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3476
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
                                                      (coe v2)))))
                                          (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3618
                                          (coe v2))
                                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_368
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2486
                                             (coe v3))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                          (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2572
                                             (coe v0) (coe v1)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502
                                                (coe v4))
                                             (coe v2))
                                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_400
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2486
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
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
                                                           (coe v0))
                                                        (mulInt
                                                           (coe
                                                              addInt (coe (160 :: Integer))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2472
                                                                 (coe v0)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v5))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_394
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2486
                                                                 (coe v3)))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3658
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
                                                (coe
                                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3648
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3466
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
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
                                                           MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_2526
                                                           v1
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3658
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v5))))
                                                        (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_376
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2486
                                                              (coe v3)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
                                                   (coe
                                                      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3648
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3466
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3648
                                                            (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3466
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
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
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_254
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v5)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3648
                                                               (coe v0))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3466
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
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
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
                                                                       (coe v0)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110
                                                                    (coe v5))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3474
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
                                                                  (coe v2)))))
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                         (coe
                                                            MAlonzo.Code.Prelude.du_'126''63'_48
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3486
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
                                                                  (coe v2)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Prelude.du_'126''63'_48
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3488
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
                                                                  (coe v2)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2488
                                                                  (coe v3)))
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_34503 ::
  T_GeneralizeTel_34511 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602
d_'46'generalizedField'45'tx_34503 v0
  = case coe v0 of
      C_mkGeneralizeTel_34513 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_34505 ::
  T_GeneralizeTel_34511 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2476
d_'46'generalizedField'45'Γ_34505 v0
  = case coe v0 of
      C_mkGeneralizeTel_34513 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_34507 ::
  T_GeneralizeTel_34511 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_'46'generalizedField'45's_34507 v0
  = case coe v0 of
      C_mkGeneralizeTel_34513 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_34509 ::
  T_GeneralizeTel_34511 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_'46'generalizedField'45's''_34509 v0
  = case coe v0 of
      C_mkGeneralizeTel_34513 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_34511 a0 a1 = ()
data T_GeneralizeTel_34511
  = C_mkGeneralizeTel_34513 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2476
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
