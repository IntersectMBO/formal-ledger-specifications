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
d_Dec'45'isVKey_78 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_78 ~v0 = du_Dec'45'isVKey_78
du_Dec'45'isVKey_78 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_78
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
-- _.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'RwdAddr_280 ~v0 = du_HasNetworkId'45'RwdAddr_280
du_HasNetworkId'45'RwdAddr_280 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'RwdAddr_280
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RwdAddr_162
-- _.NetworkId
d_NetworkId_362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_NetworkId_362 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
         (coe v0))
-- _.Tx
d_Tx_518 a0 = ()
-- _.coin
d_coin_588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
         (coe v0))
-- _.getValueʰ
d_getValue'688'_612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_612 ~v0 = du_getValue'688'_612
du_getValue'688'_612 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_612
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3420
-- _.inject
d_inject_622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
         (coe v0))
-- _.netId
d_netId_674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_674 ~v0 = du_netId_674
du_netId_674 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_674
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
-- _.txOutHash
d_txOutHash_736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3410
      (coe v0)
-- _.Tx.body
d_body_1706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184
d_body_1706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
      (coe v0)
-- _.Tx.isValid
d_isValid_1708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  Bool
d_isValid_1708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3382
      (coe v0)
-- _.Tx.txAD
d_txAD_1710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  Maybe AgdaAny
d_txAD_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3384
      (coe v0)
-- _.Tx.txsize
d_txsize_1712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  Integer
d_txsize_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3380
      (coe v0)
-- _.Tx.wits
d_wits_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3342
d_wits_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3378
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_1818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_1818 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2630
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalP2Scripts
d_evalP2Scripts_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_1822 ~v0 v1 = du_evalP2Scripts_1822 v1
du_evalP2Scripts_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2670
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2338 v0 ~v1 = du_Dec'45'inInterval_2338 v0
du_Dec'45'inInterval_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_2928
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCast-UTxOState
d_HasCast'45'UTxOState_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2342 ~v0 ~v1 = du_HasCast'45'UTxOState_2342
du_HasCast'45'UTxOState_2342 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2342
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOState_2378
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_2374 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_2378 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2388 v0 ~v1 = du_balance_2388 v0
du_balance_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2396
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2392 v0 ~v1 = du_cbalance_2392 v0
du_cbalance_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2402
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.collateralCheck
d_collateralCheck_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_2402 = erased
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  AgdaAny
d_consumed_2404 v0 ~v1 = du_consumed_2404 v0
du_consumed_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  AgdaAny
du_consumed_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3132
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  Integer
d_depositRefunds_2408 v0 ~v1 = du_depositRefunds_2408 v0
du_depositRefunds_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  Integer
du_depositRefunds_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_depositRefunds_3116
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_2416 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.minfee
d_minfee_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  Integer
d_minfee_2422 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2412
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  Integer
d_newDeposits_2424 v0 ~v1 = du_newDeposits_2424 v0
du_newDeposits_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  Integer
du_newDeposits_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_newDeposits_3124
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2428 ~v0 ~v1 = du_outs_2428
du_outs_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2428
  = coe MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2390
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  AgdaAny
d_produced_2430 v0 ~v1 = du_produced_2430 v0
du_produced_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  AgdaAny
du_produced_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3140
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  Integer
d_refScriptsSize_2434 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2406
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2448 v0 ~v1 = du_updateDeposits_2448 v0
du_updateDeposits_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2800
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2454 v0 ~v1 = du_utxoEntrySize_2454 v0
du_utxoEntrySize_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2306
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2310 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2320
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2310 ->
  AgdaAny
d_slot_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2318 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2310 ->
  Integer
d_treasury_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2322
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2340
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  Integer
d_donations_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2342
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  Integer
d_fees_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2338 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2532 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2532
  = C_Scripts'45'Yes_2610 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2688 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2580 ~v0 ~v1 ~v2 v3 = du_txIns_2580 v3
du_txIns_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2592 ~v0 v1 ~v2 ~v3 = du_pparams_2592 v1
du_pparams_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2310 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2320
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2606 ~v0 ~v1 v2 ~v3 = du_utxo_2606 v2
du_utxo_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateralInputs
d_collateralInputs_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2632 ~v0 ~v1 ~v2 v3
  = du_collateralInputs_2632 v3
du_collateralInputs_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2670 ~v0 v1 ~v2 ~v3 = du_pparams_2670 v1
du_pparams_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2310 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2320
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2684 ~v0 ~v1 v2 ~v3 = du_utxo_2684 v2
du_utxo_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2690 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2670
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2630
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2320
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3382
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3382
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2692 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2670
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2630
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2320
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3382
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3382
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2694 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2694
  = C_UTXO'45'inductive_2800 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184
d_body_2702 ~v0 ~v1 v2 = du_body_2702 v2
du_body_2702 ::
  T_GeneralizeTel_32265 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184
du_body_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
      (coe d_'46'generalizedField'45'tx_32257 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 -> Integer
d_txsize_2704 ~v0 ~v1 v2 = du_txsize_2704 v2
du_txsize_2704 :: T_GeneralizeTel_32265 -> Integer
du_txsize_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3380
      (coe d_'46'generalizedField'45'tx_32257 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.wits
d_wits_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3342
d_wits_2706 ~v0 ~v1 v2 = du_wits_2706 v2
du_wits_2706 ::
  T_GeneralizeTel_32265 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3342
du_wits_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3378
      (coe d_'46'generalizedField'45'tx_32257 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.currentTreasury
d_currentTreasury_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 -> Maybe Integer
d_currentTreasury_2712 ~v0 ~v1 v2 = du_currentTreasury_2712 v2
du_currentTreasury_2712 :: T_GeneralizeTel_32265 -> Maybe Integer
du_currentTreasury_2712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_32257 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 -> AgdaAny
d_mint_2714 ~v0 ~v1 v2 = du_mint_2714 v2
du_mint_2714 :: T_GeneralizeTel_32265 -> AgdaAny
du_mint_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_32257 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2716 ~v0 ~v1 v2 = du_refInputs_2716 v2
du_refInputs_2716 ::
  T_GeneralizeTel_32265 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_32257 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txFee
d_txFee_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 -> Integer
d_txFee_2728 ~v0 ~v1 v2 = du_txFee_2728 v2
du_txFee_2728 :: T_GeneralizeTel_32265 -> Integer
du_txFee_2728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_32257 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txIns
d_txIns_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2736 ~v0 ~v1 v2 = du_txIns_2736 v2
du_txIns_2736 ::
  T_GeneralizeTel_32265 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_32257 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 -> Maybe AgdaAny
d_txNetworkId_2738 ~v0 ~v1 v2 = du_txNetworkId_2738 v2
du_txNetworkId_2738 :: T_GeneralizeTel_32265 -> Maybe AgdaAny
du_txNetworkId_2738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_32257 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txOuts
d_txOuts_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2740 ~v0 ~v1 v2 = du_txOuts_2740 v2
du_txOuts_2740 ::
  T_GeneralizeTel_32265 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_32257 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txVldt
d_txVldt_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2742 ~v0 ~v1 v2 = du_txVldt_2742 v2
du_txVldt_2742 ::
  T_GeneralizeTel_32265 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_32257 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txWithdrawals
d_txWithdrawals_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2744 ~v0 ~v1 v2 = du_txWithdrawals_2744 v2
du_txWithdrawals_2744 ::
  T_GeneralizeTel_32265 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_32257 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txrdmrs
d_txrdmrs_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2754 ~v0 ~v1 v2 = du_txrdmrs_2754 v2
du_txrdmrs_2754 ::
  T_GeneralizeTel_32265 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3358
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3378
         (coe d_'46'generalizedField'45'tx_32257 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2760 ~v0 ~v1 v2 = du_pparams_2760 v2
du_pparams_2760 ::
  T_GeneralizeTel_32265 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2320
      (coe d_'46'generalizedField'45'Γ_32259 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 -> AgdaAny
d_slot_2762 ~v0 ~v1 v2 = du_slot_2762 v2
du_slot_2762 :: T_GeneralizeTel_32265 -> AgdaAny
du_slot_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2318
      (coe d_'46'generalizedField'45'Γ_32259 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 -> Integer
d_treasury_2764 ~v0 ~v1 v2 = du_treasury_2764 v2
du_treasury_2764 :: T_GeneralizeTel_32265 -> Integer
du_treasury_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2322
      (coe d_'46'generalizedField'45'Γ_32259 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_32265 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2774 ~v0 ~v1 v2 = du_utxo_2774 v2
du_utxo_2774 ::
  T_GeneralizeTel_32265 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336
      (coe d_'46'generalizedField'45's_32261 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2846 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1170
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3222
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                     (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_444
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_562
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336
                             (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__682
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3222
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3224
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                        (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1170
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8745'__706
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3222
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3224
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_444
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_2928
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2318 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3238
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                        (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2412
                           (coe v0) (coe v1)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2320
                              (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336 (coe v4))
                           (coe v2))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3234
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
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
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1170
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                       erased
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_232
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3358
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3378
                                          (coe v2))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'8709'_444
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                              (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
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
                                    MAlonzo.Code.Class.IsSet.du_range_564
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
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
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336
                                          (coe v4))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3226
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                             (coe v2))))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3034
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3102
                                             (coe v0) (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336
                                                (coe v4)))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3102
                                                     (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_3034
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3234
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_392
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2320
                                                (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_3102
                                                (coe v0) (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336
                                                   (coe v4))))
                                          (coe (100 :: Integer))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1170
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3226
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_'8709'_444
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1480
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_3132
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2320
                                    (coe v3))
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_3140
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2320
                                    (coe v3))
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                       (coe v0))
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3252
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                          (coe v2))))
                                 (coe (0 :: Integer)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3380
                                       (coe v2))
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_344
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2320
                                          (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2406
                                          (coe v0) (coe v1)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336
                                             (coe v4))
                                          (coe v2))
                                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_376
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2320
                                             (coe v3))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                                        (coe v0))
                                                     (mulInt
                                                        (coe
                                                           addInt (coe (160 :: Integer))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2306
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v5))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_370
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2320
                                                              (coe v3)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3420
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v5)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                             (coe
                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3410
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3228
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                      (coe v2))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_2238
                                                        v1
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3420
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_352
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2320
                                                           (coe v3)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                                (coe
                                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3410
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3228
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                         (coe v2))))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
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
                                                   MAlonzo.Code.Class.IsSet.du_range_564
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3410
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3228
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                            (coe v2))))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      (\ v5 ->
                                                         coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v5)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                                 (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_range_564
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3410
                                                            (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3228
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                               (coe v2))))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         (\ v5 ->
                                                            coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110
                                                                 (coe v5))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                                    (coe v0)))))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3236
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                               (coe v2)))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3248
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3250
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2322
                                                               (coe v3)))
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_32257 ::
  T_GeneralizeTel_32265 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364
d_'46'generalizedField'45'tx_32257 v0
  = case coe v0 of
      C_mkGeneralizeTel_32267 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_32259 ::
  T_GeneralizeTel_32265 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2310
d_'46'generalizedField'45'Γ_32259 v0
  = case coe v0 of
      C_mkGeneralizeTel_32267 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_32261 ::
  T_GeneralizeTel_32265 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_'46'generalizedField'45's_32261 v0
  = case coe v0 of
      C_mkGeneralizeTel_32267 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_32263 ::
  T_GeneralizeTel_32265 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_'46'generalizedField'45's''_32263 v0
  = case coe v0 of
      C_mkGeneralizeTel_32267 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_32265 a0 a1 = ()
data T_GeneralizeTel_32265
  = C_mkGeneralizeTel_32267 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2310
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
