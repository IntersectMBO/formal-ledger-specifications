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
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3684
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
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3674
      (coe v0)
-- _.Tx.body
d_body_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426
d_body_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
      (coe v0)
-- _.Tx.isValid
d_isValid_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  Bool
d_isValid_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3644
      (coe v0)
-- _.Tx.txAD
d_txAD_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  Maybe AgdaAny
d_txAD_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3646
      (coe v0)
-- _.Tx.txsize
d_txsize_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  Integer
d_txsize_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3642
      (coe v0)
-- _.Tx.wits
d_wits_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3604
d_wits_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3640
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_2032 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2908
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalP2Scripts
d_evalP2Scripts_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_2038 v0 ~v1 = du_evalP2Scripts_2038 v0
du_evalP2Scripts_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2938
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2508 v0 ~v1 = du_Dec'45'inInterval_2508 v0
du_Dec'45'inInterval_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_3102
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCast-UTxOState
d_HasCast'45'UTxOState_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2512 ~v0 ~v1 = du_HasCast'45'UTxOState_2512
du_HasCast'45'UTxOState_2512 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2512
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOState_2552
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_2544 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_2548 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2558 v0 ~v1 = du_balance_2558 v0
du_balance_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2570
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2562 v0 ~v1 = du_cbalance_2562 v0
du_cbalance_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2576
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.collateralCheck
d_collateralCheck_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_2572 = erased
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426 ->
  AgdaAny
d_consumed_2574 v0 ~v1 = du_consumed_2574 v0
du_consumed_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426 ->
  AgdaAny
du_consumed_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3306
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426 ->
  Integer
d_depositRefunds_2578 v0 ~v1 = du_depositRefunds_2578 v0
du_depositRefunds_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426 ->
  Integer
du_depositRefunds_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_depositRefunds_3290
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_2586 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.minfee
d_minfee_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  Integer
d_minfee_2592 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2586
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426 ->
  Integer
d_newDeposits_2594 v0 ~v1 = du_newDeposits_2594 v0
du_newDeposits_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426 ->
  Integer
du_newDeposits_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_newDeposits_3298
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2598 ~v0 ~v1 = du_outs_2598
du_outs_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2598
  = coe MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2564
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426 ->
  AgdaAny
d_produced_2600 v0 ~v1 = du_produced_2600 v0
du_produced_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426 ->
  AgdaAny
du_produced_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3314
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  Integer
d_refScriptsSize_2604 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2580
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2618 v0 ~v1 = du_updateDeposits_2618 v0
du_updateDeposits_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2974
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2624 v0 ~v1 = du_utxoEntrySize_2624 v0
du_utxoEntrySize_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2480
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2484 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2494
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2484 ->
  AgdaAny
d_slot_2648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2492 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2484 ->
  Integer
d_treasury_2650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2496
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2514
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  Integer
d_donations_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2516
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  Integer
d_fees_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2512 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2510 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2702 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2702
  = C_Scripts'45'Yes_2780 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2858 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2750 ~v0 ~v1 ~v2 v3 = du_txIns_2750 v3
du_txIns_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3464
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2762 ~v0 v1 ~v2 ~v3 = du_pparams_2762 v1
du_pparams_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2484 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2494
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2776 ~v0 ~v1 v2 ~v3 = du_utxo_2776 v2
du_utxo_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2510 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateralInputs
d_collateralInputs_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2802 ~v0 ~v1 ~v2 v3
  = du_collateralInputs_2802 v3
du_collateralInputs_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3468
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2840 ~v0 v1 ~v2 ~v3 = du_pparams_2840 v1
du_pparams_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2484 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2494
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2854 ~v0 ~v1 v2 ~v3 = du_utxo_2854 v2
du_utxo_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2510 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2860 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2938
               v0
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2908
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2494
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2510
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3644
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3644
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2862 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2938
               v0
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2908
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2494
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2510
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3644
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3644
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2864 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2864
  = C_UTXO'45'inductive_2970 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426
d_body_2872 ~v0 ~v1 v2 = du_body_2872 v2
du_body_2872 ::
  T_GeneralizeTel_34305 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426
du_body_2872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
      (coe d_'46'generalizedField'45'tx_34297 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 -> Integer
d_txsize_2874 ~v0 ~v1 v2 = du_txsize_2874 v2
du_txsize_2874 :: T_GeneralizeTel_34305 -> Integer
du_txsize_2874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3642
      (coe d_'46'generalizedField'45'tx_34297 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.wits
d_wits_2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3604
d_wits_2876 ~v0 ~v1 v2 = du_wits_2876 v2
du_wits_2876 ::
  T_GeneralizeTel_34305 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3604
du_wits_2876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3640
      (coe d_'46'generalizedField'45'tx_34297 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.collateralInputs
d_collateralInputs_2880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2880 ~v0 ~v1 v2 = du_collateralInputs_2880 v2
du_collateralInputs_2880 ::
  T_GeneralizeTel_34305 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_2880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3468
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
         (coe d_'46'generalizedField'45'tx_34297 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.currentTreasury
d_currentTreasury_2882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 -> Maybe Integer
d_currentTreasury_2882 ~v0 ~v1 v2 = du_currentTreasury_2882 v2
du_currentTreasury_2882 :: T_GeneralizeTel_34305 -> Maybe Integer
du_currentTreasury_2882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3492
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
         (coe d_'46'generalizedField'45'tx_34297 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 -> AgdaAny
d_mint_2884 ~v0 ~v1 v2 = du_mint_2884 v2
du_mint_2884 :: T_GeneralizeTel_34305 -> AgdaAny
du_mint_2884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
         (coe d_'46'generalizedField'45'tx_34297 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2886 ~v0 ~v1 v2 = du_refInputs_2886 v2
du_refInputs_2886 ::
  T_GeneralizeTel_34305 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3466
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
         (coe d_'46'generalizedField'45'tx_34297 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txFee
d_txFee_2898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 -> Integer
d_txFee_2898 ~v0 ~v1 v2 = du_txFee_2898 v2
du_txFee_2898 :: T_GeneralizeTel_34305 -> Integer
du_txFee_2898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3476
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
         (coe d_'46'generalizedField'45'tx_34297 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2906 ~v0 ~v1 v2 = du_txIns_2906 v2
du_txIns_2906 ::
  T_GeneralizeTel_34305 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3464
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
         (coe d_'46'generalizedField'45'tx_34297 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 -> Maybe AgdaAny
d_txNetworkId_2908 ~v0 ~v1 v2 = du_txNetworkId_2908 v2
du_txNetworkId_2908 :: T_GeneralizeTel_34305 -> Maybe AgdaAny
du_txNetworkId_2908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3490
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
         (coe d_'46'generalizedField'45'tx_34297 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txOuts
d_txOuts_2910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2910 ~v0 ~v1 v2 = du_txOuts_2910 v2
du_txOuts_2910 ::
  T_GeneralizeTel_34305 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3470
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
         (coe d_'46'generalizedField'45'tx_34297 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txVldt
d_txVldt_2912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2912 ~v0 ~v1 v2 = du_txVldt_2912 v2
du_txVldt_2912 ::
  T_GeneralizeTel_34305 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3480
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
         (coe d_'46'generalizedField'45'tx_34297 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txWithdrawals
d_txWithdrawals_2914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2914 ~v0 ~v1 v2 = du_txWithdrawals_2914 v2
du_txWithdrawals_2914 ::
  T_GeneralizeTel_34305 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3478
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
         (coe d_'46'generalizedField'45'tx_34297 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txrdmrs
d_txrdmrs_2924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2924 ~v0 ~v1 v2 = du_txrdmrs_2924 v2
du_txrdmrs_2924 ::
  T_GeneralizeTel_34305 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_2924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3620
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3640
         (coe d_'46'generalizedField'45'tx_34297 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2930 ~v0 ~v1 v2 = du_pparams_2930 v2
du_pparams_2930 ::
  T_GeneralizeTel_34305 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2494
      (coe d_'46'generalizedField'45'Γ_34299 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 -> AgdaAny
d_slot_2932 ~v0 ~v1 v2 = du_slot_2932 v2
du_slot_2932 :: T_GeneralizeTel_34305 -> AgdaAny
du_slot_2932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2492
      (coe d_'46'generalizedField'45'Γ_34299 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 -> Integer
d_treasury_2934 ~v0 ~v1 v2 = du_treasury_2934 v2
du_treasury_2934 :: T_GeneralizeTel_34305 -> Integer
du_treasury_2934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2496
      (coe d_'46'generalizedField'45'Γ_34299 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_34305 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2944 ~v0 ~v1 v2 = du_utxo_2944 v2
du_utxo_2944 ::
  T_GeneralizeTel_34305 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2510
      (coe d_'46'generalizedField'45's_34301 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_3016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3016 v0 v1 v2 v3 v4
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
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3464
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
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
                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2510
                             (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3464
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8746'__708
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3466
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3468
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
                           (coe v2))))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_3102
                  (coe v0)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2492 (coe v3))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3480
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
                        (coe v2))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                     (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2586
                        (coe v0) (coe v1)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2494
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2510 (coe v4))
                        (coe v2))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3476
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3620
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3640
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
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2510
                                       (coe v4))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3468
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
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
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3208
                                               (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3276
                                          (coe v0) (coe v2)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2510
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
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3276
                                                  (coe v0) (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2510
                                                     (coe v4))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3208
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                    (mulInt
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3476
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
                                             (coe v2)))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2494
                                             (coe v3))))
                                    (mulInt
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2536
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3276
                                             (coe v0) (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2510
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
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1350
                                                (coe v0))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1348
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3468
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
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
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3306
                              (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2494
                                 (coe v3))
                              (coe v4)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
                                 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3314
                              (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2494
                                 (coe v3))
                              (coe v4)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
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
                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3494
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
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
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3620
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3640
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
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3620
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3640
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
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3480
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
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
                                                MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_DecEq'45'UTCTime_2530
                                                (coe v1))))
                                       (coe
                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                          MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                          MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                          (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_epochInfoSlotToUTCTime_2544
                                             (coe v1))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3480
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
                                                   (coe v2)))))
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                    (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3642
                                       (coe v2))
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2494
                                          (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2580
                                          (coe v0) (coe v1)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2510
                                             (coe v4))
                                          (coe v2))
                                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2494
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
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2480
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v5))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_386
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2494
                                                              (coe v3)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3684
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
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3674
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3470
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_2534
                                                        v1
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3684
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_368
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2494
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3674
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3470
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3674
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3470
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3674
                                                            (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3470
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3478
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
                                                               (coe v2)))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3490
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3492
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2496
                                                               (coe v3)))
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_34297 ::
  T_GeneralizeTel_34305 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626
d_'46'generalizedField'45'tx_34297 v0
  = case coe v0 of
      C_mkGeneralizeTel_34307 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_34299 ::
  T_GeneralizeTel_34305 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2484
d_'46'generalizedField'45'Γ_34299 v0
  = case coe v0 of
      C_mkGeneralizeTel_34307 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_34301 ::
  T_GeneralizeTel_34305 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
d_'46'generalizedField'45's_34301 v0
  = case coe v0 of
      C_mkGeneralizeTel_34307 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_34303 ::
  T_GeneralizeTel_34305 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
d_'46'generalizedField'45's''_34303 v0
  = case coe v0 of
      C_mkGeneralizeTel_34307 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_34305 a0 a1 = ()
data T_GeneralizeTel_34305
  = C_mkGeneralizeTel_34307 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2484
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
