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
import qualified MAlonzo.Code.Class.HasCast.Base
import qualified MAlonzo.Code.Class.HasCast.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _._≤ᵗ_
d__'8804''7511'__20 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__20 = erased
-- _.Dec-isVKey
d_Dec'45'isVKey_66 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_66 ~v0 = du_Dec'45'isVKey_66
du_Dec'45'isVKey_66 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_66
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_188
-- _.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
d_HasNetworkId'45'RwdAddr_194 ~v0 = du_HasNetworkId'45'RwdAddr_194
du_HasNetworkId'45'RwdAddr_194 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
du_HasNetworkId'45'RwdAddr_194
  = coe MAlonzo.Code.Ledger.Address.du_HasNetworkId'45'RwdAddr_126
-- _.NetworkId
d_NetworkId_270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_270 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256 (coe v0))
-- _.Tx
d_Tx_420 a0 = ()
-- _.coin
d_coin_482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_482 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
-- _.getValueʰ
d_getValue'688'_524 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_524 ~v0 = du_getValue'688'_524
du_getValue'688'_524 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_524
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_3218
-- _.inject
d_inject_536 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_536 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
-- _.netId
d_netId_578 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_578 ~v0 = du_netId_578
du_netId_578 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_578 = coe MAlonzo.Code.Ledger.Address.du_netId_156
-- _.txOutHash
d_txOutHash_638 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_638 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_3208 (coe v0)
-- _.Tx.body
d_body_1530 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978
d_body_1530 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v0)
-- _.Tx.isValid
d_isValid_1532 :: MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> Bool
d_isValid_1532 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_3184 (coe v0)
-- _.Tx.txAD
d_txAD_1534 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> Maybe AgdaAny
d_txAD_1534 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_3186 (coe v0)
-- _.Tx.wits
d_wits_1536 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3150
d_wits_1536 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1664 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1664 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2616
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1674 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1674 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2634 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_2128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2128 v0 ~v1 = du_Dec'45'inInterval_2128 v0
du_Dec'45'inInterval_2128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2128 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2880 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCast-UTxOState
d_HasCast'45'UTxOState_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'UTxOState_2132 ~v0 ~v1 = du_HasCast'45'UTxOState_2132
du_HasCast'45'UTxOState_2132 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'UTxOState_2132
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCast'45'UTxOState_2322
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_2160 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_2162 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2170 v0 ~v1 = du_balance_2170 v0
du_balance_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2170 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_2340 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2174 v0 ~v1 = du_cbalance_2174 v0
du_cbalance_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2174 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_2346 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> AgdaAny
d_consumed_2184 v0 ~v1 = du_consumed_2184 v0
du_consumed_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> AgdaAny
du_consumed_2184 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_3172 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Integer
d_depositRefunds_2188 v0 ~v1 = du_depositRefunds_2188 v0
du_depositRefunds_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Integer
du_depositRefunds_2188 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_3156 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.feesOK
d_feesOK_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_2196 = erased
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_2202 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Integer
d_newDeposits_2218 v0 ~v1 = du_newDeposits_2218 v0
du_newDeposits_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Integer
du_newDeposits_2218 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_3164 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_2222 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2222 ~v0 ~v1 = du_outs_2222
du_outs_2222 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2222 = coe MAlonzo.Code.Ledger.Utxo.du_outs_2334
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_2224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> AgdaAny
d_produced_2224 v0 ~v1 = du_produced_2224 v0
du_produced_2224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> AgdaAny
du_produced_2224 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_3180 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_2228 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> Integer
d_refScriptsSize_2228 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2350 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2242 v0 ~v1 = du_updateDeposits_2242 v0
du_updateDeposits_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2242 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2744 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2248 v0 ~v1 = du_utxoEntrySize_2248 v0
du_utxoEntrySize_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2248 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_2256 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2272 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2272 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2270 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2274 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 -> AgdaAny
d_slot_2274 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_2268 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2276 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 -> Integer
d_treasury_2276 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_2272 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2280 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2280 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2292 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2282 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 -> Integer
d_donations_2282 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2294 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2284 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 -> Integer
d_fees_2284 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2290 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2286 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2286 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2332 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2332
  = C_Scripts'45'Yes_2412 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2492 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2376 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2376 ~v0 ~v1 ~v2 v3 = du_txins_2376 v3
du_txins_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2376 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_3020
      (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2394 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2394 ~v0 v1 ~v2 ~v3 = du_pparams_2394 v1
du_pparams_2394 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2394 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2270 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2408 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2408 ~v0 ~v1 v2 ~v3 = du_utxo_2408 v2
du_utxo_2408 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2408 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2432 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2432 ~v0 ~v1 ~v2 v3 = du_collateral_2432 v3
du_collateral_2432 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2432 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_3054
      (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2474 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2474 ~v0 v1 ~v2 ~v3 = du_pparams_2474 v1
du_pparams_2474 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2474 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2270 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2488 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2488 ~v0 ~v1 v2 ~v3 = du_utxo_2488 v2
du_utxo_2488 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2488 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2494 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2634 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2616
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2270 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_3184 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_3184 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2496 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2496 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2634 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2616
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2270 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_3184 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_3184 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2498 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2498
  = C_UTXO'45'inductive_2594 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_30117 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978
d_body_2506 ~v0 ~v1 v2 = du_body_2506 v2
du_body_2506 ::
  T_GeneralizeTel_30117 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978
du_body_2506 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_3180
      (coe d_'46'generalizedField'45'tx_30109 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_30117 -> Maybe Integer
d_curTreasury_2514 ~v0 ~v1 v2 = du_curTreasury_2514 v2
du_curTreasury_2514 :: T_GeneralizeTel_30117 -> Maybe Integer
du_curTreasury_2514 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_3048
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_30109 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2516 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_30117 -> AgdaAny
d_mint_2516 ~v0 ~v1 v2 = du_mint_2516 v2
du_mint_2516 :: T_GeneralizeTel_30117 -> AgdaAny
du_mint_2516 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_3028
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_30109 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2518 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_30117 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2518 ~v0 ~v1 v2 = du_refInputs_2518 v2
du_refInputs_2518 ::
  T_GeneralizeTel_30117 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2518 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_3022
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_30109 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2526 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_30117 -> Maybe AgdaAny
d_txNetworkId_2526 ~v0 ~v1 v2 = du_txNetworkId_2526 v2
du_txNetworkId_2526 :: T_GeneralizeTel_30117 -> Maybe AgdaAny
du_txNetworkId_2526 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_3046
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_30109 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2536 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_30117 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2536 ~v0 ~v1 v2 = du_txins_2536 v2
du_txins_2536 ::
  T_GeneralizeTel_30117 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2536 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_3020
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_30109 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2538 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_30117 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2538 ~v0 ~v1 v2 = du_txouts_2538 v2
du_txouts_2538 ::
  T_GeneralizeTel_30117 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2538 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_3024
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_30109 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2542 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_30117 -> Integer
d_txsize_2542 ~v0 ~v1 v2 = du_txsize_2542 v2
du_txsize_2542 :: T_GeneralizeTel_30117 -> Integer
du_txsize_2542 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_3050
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_30109 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2546 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_30117 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2546 ~v0 ~v1 v2 = du_txvldt_2546 v2
du_txvldt_2546 ::
  T_GeneralizeTel_30117 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2546 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_3030
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_30109 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2550 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_30117 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2550 ~v0 ~v1 v2 = du_txwdrls_2550 v2
du_txwdrls_2550 ::
  T_GeneralizeTel_30117 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2550 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_3034
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_30109 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_30117 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2554 ~v0 ~v1 v2 = du_pparams_2554 v2
du_pparams_2554 ::
  T_GeneralizeTel_30117 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2554 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_2270
      (coe d_'46'generalizedField'45'Γ_30111 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_30117 -> AgdaAny
d_slot_2556 ~v0 ~v1 v2 = du_slot_2556 v2
du_slot_2556 :: T_GeneralizeTel_30117 -> AgdaAny
du_slot_2556 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_2268
      (coe d_'46'generalizedField'45'Γ_30111 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_30117 -> Integer
d_treasury_2558 ~v0 ~v1 v2 = du_treasury_2558 v2
du_treasury_2558 :: T_GeneralizeTel_30117 -> Integer
du_treasury_2558 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_2272
      (coe d_'46'generalizedField'45'Γ_30111 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2568 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_30117 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2568 ~v0 ~v1 v2 = du_utxo_2568 v2
du_utxo_2568 ::
  T_GeneralizeTel_30117 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2568 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_2288
      (coe d_'46'generalizedField'45's_30113 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2638 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2638 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_3020
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2)))
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
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_3020
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_3022
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238 (coe v0))))
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
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_3020
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_3022
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2880 (coe v0)
                     (coe MAlonzo.Code.Ledger.Utxo.d_slot_2268 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_3030
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                           (MAlonzo.Code.Ledger.Utxo.d_minfee_2356
                              (coe v0) (coe v1)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2270 (coe v3))
                              (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v4)) (coe v2))
                           (MAlonzo.Code.Ledger.Transaction.d_txfee_3026
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2))))
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
                                          erased MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
                                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                                (coe
                                                   MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                                   (coe
                                                      MAlonzo.Code.Ledger.Script.d_ps_448
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_448
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1866
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3166
                                       (coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v2))))
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
                                         MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_188
                                         (coe
                                            MAlonzo.Code.Ledger.Address.du_payCred_152
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.du_collateralRange_3140 (coe v0)
                                    (coe v2) (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v4))))
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
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1280
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2986
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Utxo.du_bal_3142 (coe v0) (coe v2)
                                             (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v4)))))
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
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1280
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Utxo.du_bal_3142 (coe v0)
                                                     (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_utxo_2288
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2986 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txfee_3026
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_3180
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.d_pparams_2270 (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.du_bal_3142 (coe v0)
                                                (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v4))))
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
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1240
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1238
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_collateral_3054
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_3180
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
                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_210
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_consumed_3172 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2270 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_produced_3180 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2270 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_3028
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_3050
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v2)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_336
                                    (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2270 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2350
                                       (coe v0) (coe v1)
                                       (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368
                                       (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2270 (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_212
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2332
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_2256
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_2270
                                                           (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_getValue'688'_3218
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v5)))))
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_116
                                          (coe
                                             MAlonzo.Code.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_10)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_3208
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_3024
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_3180
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
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1988 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_3218
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_344
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_2270
                                                        (coe v3)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_116
                                             (coe
                                                MAlonzo.Code.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_10)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_3208
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_3024
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_3180
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
                                                             (MAlonzo.Code.Ledger.Address.d_attrsSize_92
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
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_3208
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_3024
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_3180
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
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_156
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_3208
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_3024
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_3180
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
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_100
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_3034
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_3180
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_3046
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_3180
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1256
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_3048
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_3180
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Utxo.d_treasury_2272
                                                            (coe v3)))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_30109 ::
  T_GeneralizeTel_30117 -> MAlonzo.Code.Ledger.Transaction.T_Tx_3170
d_'46'generalizedField'45'tx_30109 v0
  = case coe v0 of
      C_mkGeneralizeTel_30119 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_30111 ::
  T_GeneralizeTel_30117 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260
d_'46'generalizedField'45'Γ_30111 v0
  = case coe v0 of
      C_mkGeneralizeTel_30119 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_30113 ::
  T_GeneralizeTel_30117 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
d_'46'generalizedField'45's_30113 v0
  = case coe v0 of
      C_mkGeneralizeTel_30119 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_30115 ::
  T_GeneralizeTel_30117 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
d_'46'generalizedField'45's''_30115 v0
  = case coe v0 of
      C_mkGeneralizeTel_30119 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_30117 a0 a1 = ()
data T_GeneralizeTel_30117
  = C_mkGeneralizeTel_30119 MAlonzo.Code.Ledger.Transaction.T_Tx_3170
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2260
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
