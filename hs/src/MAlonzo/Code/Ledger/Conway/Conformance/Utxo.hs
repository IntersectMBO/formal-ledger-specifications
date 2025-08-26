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
d_Dec'45'isVKey_66 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_66 ~v0 = du_Dec'45'isVKey_66
du_Dec'45'isVKey_66 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_66
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_192
-- _.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_112
d_HasNetworkId'45'RwdAddr_194 ~v0 = du_HasNetworkId'45'RwdAddr_194
du_HasNetworkId'45'RwdAddr_194 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_112
du_HasNetworkId'45'RwdAddr_194
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RwdAddr_130
-- _.NetworkId
d_NetworkId_276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_NetworkId_276 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_298
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1244
         (coe v0))
-- _.Tx
d_Tx_416 a0 = ()
-- _.coin
d_coin_478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_202
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2304
         (coe v0))
-- _.getValueʰ
d_getValue'688'_506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_506 ~v0 = du_getValue'688'_506
du_getValue'688'_506 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3192
-- _.inject
d_inject_518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_204
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2304
         (coe v0))
-- _.netId
d_netId_566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_566 ~v0 = du_netId_566
du_netId_566 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_566
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_160
-- _.txOutHash
d_txOutHash_630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3182
      (coe v0)
-- _.Tx.body
d_body_1528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952
d_body_1528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
      (coe v0)
-- _.Tx.isValid
d_isValid_1530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Bool
d_isValid_1530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3158
      (coe v0)
-- _.Tx.txAD
d_txAD_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Maybe AgdaAny
d_txAD_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3160
      (coe v0)
-- _.Tx.txsize
d_txsize_1534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Integer
d_txsize_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3156
      (coe v0)
-- _.Tx.wits
d_wits_1536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3120
d_wits_1536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_1640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_1640 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2374
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalP2Scripts
d_evalP2Scripts_1644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_1644 ~v0 v1 = du_evalP2Scripts_1644 v1
du_evalP2Scripts_1644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2414
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2076 v0 ~v1 = du_Dec'45'inInterval_2076 v0
du_Dec'45'inInterval_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_2664
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCast-UTxOState
d_HasCast'45'UTxOState_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2080 ~v0 ~v1 = du_HasCast'45'UTxOState_2080
du_HasCast'45'UTxOState_2080 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2080
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOState_2110
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_2108 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_2110 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2118 v0 ~v1 = du_balance_2118 v0
du_balance_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance_2128
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2122 v0 ~v1 = du_cbalance_2122 v0
du_cbalance_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2134
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.collateralCheck
d_collateralCheck_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_2132 = erased
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  AgdaAny
d_consumed_2134 v0 ~v1 = du_consumed_2134 v0
du_consumed_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  AgdaAny
du_consumed_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_2870
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Integer
d_depositRefunds_2138 v0 ~v1 = du_depositRefunds_2138 v0
du_depositRefunds_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Integer
du_depositRefunds_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_depositRefunds_2854
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_2146 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.minfee
d_minfee_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Integer
d_minfee_2152 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2144
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Integer
d_newDeposits_2154 v0 ~v1 = du_newDeposits_2154 v0
du_newDeposits_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Integer
du_newDeposits_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_newDeposits_2862
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2158 ~v0 ~v1 = du_outs_2158
du_outs_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2158
  = coe MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2122
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  AgdaAny
d_produced_2160 v0 ~v1 = du_produced_2160 v0
du_produced_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  AgdaAny
du_produced_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_2878
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Integer
d_refScriptsSize_2164 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2138
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2178 v0 ~v1 = du_updateDeposits_2178 v0
du_updateDeposits_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2532
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2184 v0 ~v1 = du_utxoEntrySize_2184 v0
du_utxoEntrySize_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2044
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2058
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  AgdaAny
d_slot_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2056 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  Integer
d_treasury_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2060
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2080
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  Integer
d_donations_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2082
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  Integer
d_fees_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2078 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2262 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2262
  = C_Scripts'45'Yes_2342 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2422 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2308 ~v0 ~v1 ~v2 v3 = du_txins_2308 v3
du_txins_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2992
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2324 ~v0 v1 ~v2 ~v3 = du_pparams_2324 v1
du_pparams_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
du_pparams_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2058
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2338 ~v0 ~v1 v2 ~v3 = du_utxo_2338 v2
du_utxo_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2364 ~v0 ~v1 ~v2 v3 = du_collateral_2364 v3
du_collateral_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3024
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2404 ~v0 v1 ~v2 ~v3 = du_pparams_2404 v1
du_pparams_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
du_pparams_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2058
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2418 ~v0 ~v1 v2 ~v3 = du_utxo_2418 v2
du_utxo_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2424 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2414
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2374
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2058
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3158
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3158
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2426 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2414
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2374
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2058
                     (coe v2))
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                     (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3158
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3158
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2428 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2428
  = C_UTXO'45'inductive_2536 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952
d_body_2436 ~v0 ~v1 v2 = du_body_2436 v2
du_body_2436 ::
  T_GeneralizeTel_30399 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952
du_body_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
      (coe d_'46'generalizedField'45'tx_30391 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 -> Integer
d_txsize_2438 ~v0 ~v1 v2 = du_txsize_2438 v2
du_txsize_2438 :: T_GeneralizeTel_30399 -> Integer
du_txsize_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3156
      (coe d_'46'generalizedField'45'tx_30391 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.wits
d_wits_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3120
d_wits_2440 ~v0 ~v1 v2 = du_wits_2440 v2
du_wits_2440 ::
  T_GeneralizeTel_30399 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3120
du_wits_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
      (coe d_'46'generalizedField'45'tx_30391 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 -> Maybe Integer
d_curTreasury_2446 ~v0 ~v1 v2 = du_curTreasury_2446 v2
du_curTreasury_2446 :: T_GeneralizeTel_30399 -> Maybe Integer
du_curTreasury_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_curTreasury_3020
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_30391 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 -> AgdaAny
d_mint_2448 ~v0 ~v1 v2 = du_mint_2448 v2
du_mint_2448 :: T_GeneralizeTel_30399 -> AgdaAny
du_mint_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3000
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_30391 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2450 ~v0 ~v1 v2 = du_refInputs_2450 v2
du_refInputs_2450 ::
  T_GeneralizeTel_30399 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2994
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_30391 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 -> Maybe AgdaAny
d_txNetworkId_2458 ~v0 ~v1 v2 = du_txNetworkId_2458 v2
du_txNetworkId_2458 :: T_GeneralizeTel_30399 -> Maybe AgdaAny
du_txNetworkId_2458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3018
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_30391 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txfee
d_txfee_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 -> Integer
d_txfee_2464 ~v0 ~v1 v2 = du_txfee_2464 v2
du_txfee_2464 :: T_GeneralizeTel_30399 -> Integer
du_txfee_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txfee_2998
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_30391 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2468 ~v0 ~v1 v2 = du_txins_2468 v2
du_txins_2468 ::
  T_GeneralizeTel_30399 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2992
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_30391 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2470 ~v0 ~v1 v2 = du_txouts_2470 v2
du_txouts_2470 ::
  T_GeneralizeTel_30399 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_2996
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_30391 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2476 ~v0 ~v1 v2 = du_txvldt_2476 v2
du_txvldt_2476 ::
  T_GeneralizeTel_30399 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvldt_3002
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_30391 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2480 ~v0 ~v1 v2 = du_txwdrls_2480 v2
du_txwdrls_2480 ::
  T_GeneralizeTel_30399 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3006
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_30391 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txrdmrs
d_txrdmrs_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2490 ~v0 ~v1 v2 = du_txrdmrs_2490 v2
du_txrdmrs_2490 ::
  T_GeneralizeTel_30399 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3136
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
         (coe d_'46'generalizedField'45'tx_30391 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2496 ~v0 ~v1 v2 = du_pparams_2496 v2
du_pparams_2496 ::
  T_GeneralizeTel_30399 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
du_pparams_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2058
      (coe d_'46'generalizedField'45'Γ_30393 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 -> AgdaAny
d_slot_2498 ~v0 ~v1 v2 = du_slot_2498 v2
du_slot_2498 :: T_GeneralizeTel_30399 -> AgdaAny
du_slot_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2056
      (coe d_'46'generalizedField'45'Γ_30393 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 -> Integer
d_treasury_2500 ~v0 ~v1 v2 = du_treasury_2500 v2
du_treasury_2500 :: T_GeneralizeTel_30399 -> Integer
du_treasury_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2060
      (coe d_'46'generalizedField'45'Γ_30393 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_30399 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2510 ~v0 ~v1 v2 = du_utxo_2510 v2
du_utxo_2510 ::
  T_GeneralizeTel_30399 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
      (coe d_'46'generalizedField'45's_30395 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2582 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1226
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2992
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                     (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_442
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1226
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                             (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2992
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2994
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                        (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1226
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8745'__704
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1226
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2992
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2994
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_2664
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2056 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvldt_3002
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                        (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2144
                           (coe v0) (coe v1)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2058
                              (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076 (coe v4))
                           (coe v2))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txfee_2998
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                       erased
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1226
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_230
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3136
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
                                          (coe v2))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'8709'_442
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                              (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe
                                    (\ v5 ->
                                       coe
                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_192
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_156
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_range_550
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
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
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1226
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                          (coe v4))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3024
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                             (coe v2))))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_2770
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_206
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2304
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_2840
                                             (coe v0) (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                                (coe v4)))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_206
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2304
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_2840
                                                     (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_2770
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txfee_2998
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_424
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2058
                                                (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_202
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2304
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_2840
                                                (coe v0) (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                                   (coe v4))))
                                          (coe (100 :: Integer))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1226
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3024
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_'8709'_442
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_216
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2304
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_2870
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2058
                                    (coe v3))
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_2878
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2058
                                    (coe v3))
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_202
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2304
                                       (coe v0))
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3000
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                          (coe v2))))
                                 (coe (0 :: Integer)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3156
                                       (coe v2))
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_376
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2058
                                          (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2138
                                          (coe v0) (coe v1)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076
                                             (coe v4))
                                          (coe v2))
                                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_408
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2058
                                             (coe v3))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_218
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2304
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_204
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2304
                                                        (coe v0))
                                                     (mulInt
                                                        (coe
                                                           addInt (coe (160 :: Integer))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2044
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v5))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_402
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2058
                                                              (coe v3)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3192
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v5)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                             (coe
                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3182
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_2996
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                                      (coe v2))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_1976
                                                        v1
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3192
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_384
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2058
                                                           (coe v3)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                                (coe
                                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3182
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_2996
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                                         (coe v2))))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v5 ->
                                                      coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'All_28
                                                        (coe
                                                           (\ v6 ->
                                                              MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))
                                                        (coe
                                                           (\ v6 ->
                                                              coe
                                                                MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                                (MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_96
                                                                   (coe v6))
                                                                (64 :: Integer)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v5))))
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_range_550
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3182
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_2996
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                                            (coe v2))))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      (\ v5 ->
                                                         coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_282
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1244
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_160
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v5)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_298
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1244
                                                                 (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_range_550
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3182
                                                            (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_2996
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                                               (coe v2))))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         (\ v5 ->
                                                            coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_282
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1244
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.d_net_104
                                                                 (coe v5))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_298
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1244
                                                                    (coe v0)))))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_548
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3006
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                                               (coe v2)))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3018
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_298
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1244
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_282
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1244
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_curTreasury_3020
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2060
                                                               (coe v3)))
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_30391 ::
  T_GeneralizeTel_30399 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140
d_'46'generalizedField'45'tx_30391 v0
  = case coe v0 of
      C_mkGeneralizeTel_30401 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_30393 ::
  T_GeneralizeTel_30399 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048
d_'46'generalizedField'45'Γ_30393 v0
  = case coe v0 of
      C_mkGeneralizeTel_30401 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_30395 ::
  T_GeneralizeTel_30399 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
d_'46'generalizedField'45's_30395 v0
  = case coe v0 of
      C_mkGeneralizeTel_30401 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_30397 ::
  T_GeneralizeTel_30399 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
d_'46'generalizedField'45's''_30397 v0
  = case coe v0 of
      C_mkGeneralizeTel_30401 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_30399 a0 a1 = ()
data T_GeneralizeTel_30399
  = C_mkGeneralizeTel_30401 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2048
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
