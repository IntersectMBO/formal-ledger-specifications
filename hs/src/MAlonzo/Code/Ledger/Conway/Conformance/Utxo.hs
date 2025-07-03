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
import qualified MAlonzo.Code.Ledger.Conway.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Script.Validation
import qualified MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances

-- _._≤ᵗ_
d__'8804''7511'__20 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__20 = erased
-- _.Dec-isVKey
d_Dec'45'isVKey_66 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_66 ~v0 = du_Dec'45'isVKey_66
du_Dec'45'isVKey_66 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_66
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isVKey_190
-- _.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_194 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'RwdAddr_194 ~v0 = du_HasNetworkId'45'RwdAddr_194
du_HasNetworkId'45'RwdAddr_194 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'RwdAddr_194
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'RwdAddr_128
-- _.NetworkId
d_NetworkId_272 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny
d_NetworkId_272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
         (coe v0))
-- _.Tx
d_Tx_412 a0 = ()
-- _.coin
d_coin_474 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> Integer
d_coin_474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coin_200
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
         (coe v0))
-- _.getValueʰ
d_getValue'688'_502 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_502 ~v0 = du_getValue'688'_502
du_getValue'688'_502 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_502
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3182
-- _.inject
d_inject_514 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  Integer -> AgdaAny
d_inject_514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
         (coe v0))
-- _.netId
d_netId_562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_562 ~v0 = du_netId_562
du_netId_562 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_562 = coe MAlonzo.Code.Ledger.Conway.Address.du_netId_158
-- _.txOutHash
d_txOutHash_626 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3172 (coe v0)
-- _.Tx.body
d_body_1524 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_1524 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v0)
-- _.Tx.isValid
d_isValid_1526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 -> Bool
d_isValid_1526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v0)
-- _.Tx.txAD
d_txAD_1528 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 -> Maybe AgdaAny
d_txAD_1528 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3150 (coe v0)
-- _.Tx.wits
d_wits_1530 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3114
d_wits_1530 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectP2Scripts
d_collectP2Scripts_1636 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2Scripts_1636 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.d_collectP2Scripts_2394
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalP2Scripts
d_evalP2Scripts_1640 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_1640 ~v0 v1 = du_evalP2Scripts_1640 v1
du_evalP2Scripts_1640 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Validation.du_evalP2Scripts_2426
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_2076 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2076 v0 ~v1 = du_Dec'45'inInterval_2076 v0
du_Dec'45'inInterval_2076 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_Dec'45'inInterval_2666 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCast-UTxOState
d_HasCast'45'UTxOState_2080 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2080 ~v0 ~v1 = du_HasCast'45'UTxOState_2080
du_HasCast'45'UTxOState_2080 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2080
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_HasCast'45'UTxOState_2108
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_2108 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_2110 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_2118 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2118 v0 ~v1 = du_balance_2118 v0
du_balance_2118 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2118 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_balance_2126 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_2122 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2122 v0 ~v1 = du_cbalance_2122 v0
du_cbalance_2122 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2122 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_cbalance_2132 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_2132 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
d_consumed_2132 v0 ~v1 = du_consumed_2132 v0
du_consumed_2132 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
du_consumed_2132 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_consumed_2958 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_2136 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_depositRefunds_2136 v0 ~v1 = du_depositRefunds_2136 v0
du_depositRefunds_2136 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
du_depositRefunds_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_depositRefunds_2942 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.feesOK
d_feesOK_2144 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_2144 = erased
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_2146 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_2154 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_newDeposits_2154 v0 ~v1 = du_newDeposits_2154 v0
du_newDeposits_2154 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
du_newDeposits_2154 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_newDeposits_2950 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_2158 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2158 ~v0 ~v1 = du_outs_2158
du_outs_2158 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2158 = coe MAlonzo.Code.Ledger.Conway.Utxo.du_outs_2120
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_2160 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
d_produced_2160 v0 ~v1 = du_produced_2160 v0
du_produced_2160 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
du_produced_2160 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_produced_2966 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_2164 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 -> Integer
d_refScriptsSize_2164 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_refScriptsSize_2136 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_2178 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2178 v0 ~v1 = du_updateDeposits_2178 v0
du_updateDeposits_2178 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_updateDeposits_2530 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_2184 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2184 v0 ~v1 = du_utxoEntrySize_2184 v0
du_utxoEntrySize_2184 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_utxoEntrySize_2042 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2206 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2046 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pparams_2206 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2056 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2208 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2046 -> AgdaAny
d_slot_2208 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_slot_2054 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2210 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2046 -> Integer
d_treasury_2210 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_treasury_2058 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2214 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2214 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_deposits_2078 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2216 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 -> Integer
d_donations_2216 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_donations_2080 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2218 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 -> Integer
d_fees_2218 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2076 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2220 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2220 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2074 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2262 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2262
  = C_Scripts'45'Yes_2342 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2422 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2306 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2046 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2306 ~v0 ~v1 ~v2 v3 = du_txins_2306 v3
du_txins_2306 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2984
      (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2324 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2046 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pparams_2324 ~v0 v1 ~v2 ~v3 = du_pparams_2324 v1
du_pparams_2324 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2046 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
du_pparams_2324 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2056 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2338 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2046 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2338 ~v0 ~v1 v2 ~v3 = du_utxo_2338 v2
du_utxo_2338 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2338 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2074 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2362 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2046 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2362 ~v0 ~v1 ~v2 v3 = du_collateral_2362 v3
du_collateral_2362 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3018
      (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2404 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2046 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pparams_2404 ~v0 v1 ~v2 ~v3 = du_pparams_2404 v1
du_pparams_2404 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2046 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
du_pparams_2404 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2056 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2418 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2046 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2418 ~v0 ~v1 v2 ~v3 = du_utxo_2418 v2
du_utxo_2418 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2418 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2074 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2424 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2046 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
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
               MAlonzo.Code.Ledger.Conway.Script.Validation.du_evalP2Scripts_2426
               v1
               (MAlonzo.Code.Ledger.Conway.Script.Validation.d_collectP2Scripts_2394
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2056 (coe v2))
                  (coe v4)
                  (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2074 (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2426 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2046 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
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
               MAlonzo.Code.Ledger.Conway.Script.Validation.du_evalP2Scripts_2426
               v1
               (MAlonzo.Code.Ledger.Conway.Script.Validation.d_collectP2Scripts_2394
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2056 (coe v2))
                  (coe v4)
                  (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2074 (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2428 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2428
  = C_UTXO'45'inductive_2524 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2436 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30085 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_2436 ~v0 ~v1 v2 = du_body_2436 v2
du_body_2436 ::
  T_GeneralizeTel_30085 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
du_body_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
      (coe d_'46'generalizedField'45'tx_30077 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2444 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30085 -> Maybe Integer
d_curTreasury_2444 ~v0 ~v1 v2 = du_curTreasury_2444 v2
du_curTreasury_2444 :: T_GeneralizeTel_30085 -> Maybe Integer
du_curTreasury_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3012
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_30077 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2446 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30085 -> AgdaAny
d_mint_2446 ~v0 ~v1 v2 = du_mint_2446 v2
du_mint_2446 :: T_GeneralizeTel_30085 -> AgdaAny
du_mint_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2992
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_30077 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2448 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30085 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2448 ~v0 ~v1 v2 = du_refInputs_2448 v2
du_refInputs_2448 ::
  T_GeneralizeTel_30085 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2986
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_30077 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2456 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30085 -> Maybe AgdaAny
d_txNetworkId_2456 ~v0 ~v1 v2 = du_txNetworkId_2456 v2
du_txNetworkId_2456 :: T_GeneralizeTel_30085 -> Maybe AgdaAny
du_txNetworkId_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3010
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_30077 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2466 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30085 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2466 ~v0 ~v1 v2 = du_txins_2466 v2
du_txins_2466 ::
  T_GeneralizeTel_30085 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2984
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_30077 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2468 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30085 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2468 ~v0 ~v1 v2 = du_txouts_2468 v2
du_txouts_2468 ::
  T_GeneralizeTel_30085 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2988
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_30077 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2472 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30085 -> Integer
d_txsize_2472 ~v0 ~v1 v2 = du_txsize_2472 v2
du_txsize_2472 :: T_GeneralizeTel_30085 -> Integer
du_txsize_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3014
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_30077 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2476 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30085 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2476 ~v0 ~v1 v2 = du_txvldt_2476 v2
du_txvldt_2476 ::
  T_GeneralizeTel_30085 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2994
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_30077 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2480 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30085 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2480 ~v0 ~v1 v2 = du_txwdrls_2480 v2
du_txwdrls_2480 ::
  T_GeneralizeTel_30085 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2998
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_30077 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2484 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30085 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pparams_2484 ~v0 ~v1 v2 = du_pparams_2484 v2
du_pparams_2484 ::
  T_GeneralizeTel_30085 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
du_pparams_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2056
      (coe d_'46'generalizedField'45'Γ_30079 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2486 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30085 -> AgdaAny
d_slot_2486 ~v0 ~v1 v2 = du_slot_2486 v2
du_slot_2486 :: T_GeneralizeTel_30085 -> AgdaAny
du_slot_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_slot_2054
      (coe d_'46'generalizedField'45'Γ_30079 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2488 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30085 -> Integer
d_treasury_2488 ~v0 ~v1 v2 = du_treasury_2488 v2
du_treasury_2488 :: T_GeneralizeTel_30085 -> Integer
du_treasury_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_treasury_2058
      (coe d_'46'generalizedField'45'Γ_30079 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2498 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_30085 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2498 ~v0 ~v1 v2 = du_utxo_2498 v2
du_utxo_2498 ::
  T_GeneralizeTel_30085 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2074
      (coe d_'46'generalizedField'45's_30081 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2568 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2046 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2568 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2984
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))
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
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2074 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2984
                     (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2986
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
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
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2984
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2986
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Ledger.Conway.Utxo.du_Dec'45'inInterval_2666 (coe v0)
                     (coe MAlonzo.Code.Ledger.Conway.Utxo.d_slot_2054 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2994
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                           (MAlonzo.Code.Ledger.Conway.Utxo.d_minfee_2142
                              (coe v0) (coe v1)
                              (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2056 (coe v3))
                              (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2074 (coe v4))
                              (coe v2))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2990
                              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2))))
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
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Tag_20
                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'ExUnits_228
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3130
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3146
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
                                         MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isVKey_190
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Address.du_payCred_154
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Utxo.du_collateralRange_2926 (coe v0)
                                    (coe v2)
                                    (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2074 (coe v4))))
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
                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Utxo.du_coinPolicies_2772
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_policies_204
                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Utxo.du_bal_2928 (coe v0)
                                             (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2074
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
                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_policies_204
                                                  (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Utxo.du_bal_2928
                                                     (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2074
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Utxo.du_coinPolicies_2772
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2990
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_418
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2056
                                                (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coin_200
                                             (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Utxo.du_bal_2928 (coe v0)
                                                (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2074
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
                                                (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3018
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_'8709'_442
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_DecEq'45'Value_214
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Utxo.du_consumed_2958 (coe v0)
                              (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2056 (coe v3))
                              (coe v4)
                              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Utxo.du_produced_2966 (coe v0)
                              (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2056 (coe v3))
                              (coe v4)
                              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coin_200
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                    (coe v0))
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2992
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
                                       (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3014
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144 (coe v2)))
                                 (MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_370
                                    (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2056 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Conway.Utxo.d_refScriptsSize_2136
                                       (coe v0) (coe v1)
                                       (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2074 (coe v4))
                                       (coe v2))
                                    (MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_402
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2056 (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Dec'45''8804''7511'_216
                                               (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
                                                  (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Utxo.du_utxoEntrySize_2042
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_396
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2056
                                                           (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3182
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v5)))))
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_116
                                          (coe
                                             MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3172
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2988
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
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
                                                     MAlonzo.Code.Ledger.Conway.Abstract.d_serSize_1970
                                                     v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3182
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_378
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2056
                                                        (coe v3)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_116
                                             (coe
                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3172
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2988
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
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
                                                             (MAlonzo.Code.Ledger.Conway.Address.d_attrsSize_94
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
                                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3172
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2988
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
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
                                                           MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Address.du_netId_158
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
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
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3172
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2988
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
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
                                                              MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Address.d_net_102
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
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
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2998
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3010
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3012
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3144
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Utxo.d_treasury_2058
                                                            (coe v3)))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_30077 ::
  T_GeneralizeTel_30085 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134
d_'46'generalizedField'45'tx_30077 v0
  = case coe v0 of
      C_mkGeneralizeTel_30087 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_30079 ::
  T_GeneralizeTel_30085 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2046
d_'46'generalizedField'45'Γ_30079 v0
  = case coe v0 of
      C_mkGeneralizeTel_30087 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_30081 ::
  T_GeneralizeTel_30085 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064
d_'46'generalizedField'45's_30081 v0
  = case coe v0 of
      C_mkGeneralizeTel_30087 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_30083 ::
  T_GeneralizeTel_30085 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064
d_'46'generalizedField'45's''_30083 v0
  = case coe v0 of
      C_mkGeneralizeTel_30087 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_30085 a0 a1 = ()
data T_GeneralizeTel_30085
  = C_mkGeneralizeTel_30087 MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3134
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2046
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2064
