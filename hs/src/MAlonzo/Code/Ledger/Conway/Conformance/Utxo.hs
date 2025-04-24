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
d_NetworkId_254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_254 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246 (coe v0))
-- _.Tx
d_Tx_404 a0 = ()
-- _.coin
d_coin_466 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_466 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))
-- _.getValueʰ
d_getValue'688'_508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_508 ~v0 = du_getValue'688'_508
du_getValue'688'_508 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_508
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2880
-- _.inject
d_inject_518 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_518 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))
-- _.netId
d_netId_560 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_560 ~v0 = du_netId_560
du_netId_560 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_560 = coe MAlonzo.Code.Ledger.Address.du_netId_156
-- _.txOutHash
d_txOutHash_620 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_620 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2870 (coe v0)
-- _.Tx.body
d_body_1508 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652
d_body_1508 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v0)
-- _.Tx.isValid
d_isValid_1510 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2844 -> Bool
d_isValid_1510 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2858 (coe v0)
-- _.Tx.txAD
d_txAD_1512 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 -> Maybe AgdaAny
d_txAD_1512 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2860 (coe v0)
-- _.Tx.wits
d_wits_1514 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2824
d_wits_1514 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2856 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1642 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2574
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1652 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2592 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2086 v0 ~v1 = du_Dec'45'inInterval_2086 v0
du_Dec'45'inInterval_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2086 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2836 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCast-UTxOState
d_HasCast'45'UTxOState_2090 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'UTxOState_2090 ~v0 ~v1 = du_HasCast'45'UTxOState_2090
du_HasCast'45'UTxOState_2090 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'UTxOState_2090
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCast'45'UTxOState_2278
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_2116 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_2118 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_2126 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2126 v0 ~v1 = du_balance_2126 v0
du_balance_2126 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2126 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_2296 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_2130 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2130 v0 ~v1 = du_cbalance_2130 v0
du_cbalance_2130 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2130 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_2302 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> AgdaAny
d_consumed_2140 v0 ~v1 = du_consumed_2140 v0
du_consumed_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> AgdaAny
du_consumed_2140 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_3128 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Integer
d_depositRefunds_2144 v0 ~v1 = du_depositRefunds_2144 v0
du_depositRefunds_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Integer
du_depositRefunds_2144 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_3112 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.feesOK
d_feesOK_2152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_2152 = erased
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_2158 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Integer
d_newDeposits_2174 v0 ~v1 = du_newDeposits_2174 v0
du_newDeposits_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Integer
du_newDeposits_2174 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_3120 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_2178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2178 ~v0 ~v1 = du_outs_2178
du_outs_2178 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2178 = coe MAlonzo.Code.Ledger.Utxo.du_outs_2290
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> AgdaAny
d_produced_2180 v0 ~v1 = du_produced_2180 v0
du_produced_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> AgdaAny
du_produced_2180 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_3136 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 -> Integer
d_refScriptsSize_2184 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2306 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2198 v0 ~v1 = du_updateDeposits_2198 v0
du_updateDeposits_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2198 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2700 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2204 v0 ~v1 = du_utxoEntrySize_2204 v0
du_utxoEntrySize_2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2204 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_2214 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2228 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2228 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2228 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2230 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 -> AgdaAny
d_slot_2230 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_2226 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2232 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 -> Integer
d_treasury_2232 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_2230 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2236 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2236 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2248 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2238 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 -> Integer
d_donations_2238 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2250 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2240 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 -> Integer
d_fees_2240 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2246 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2242 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2242 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2288 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2288
  = C_Scripts'45'Yes_2368 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2448 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2332 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2332 ~v0 ~v1 ~v2 v3 = du_txins_2332 v3
du_txins_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2332 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2694
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2350 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2350 ~v0 v1 ~v2 ~v3 = du_pparams_2350 v1
du_pparams_2350 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2350 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2228 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2364 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2364 ~v0 ~v1 v2 ~v3 = du_utxo_2364 v2
du_utxo_2364 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2364 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2388 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2388 ~v0 ~v1 ~v2 v3 = du_collateral_2388 v3
du_collateral_2388 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2388 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2728
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2430 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2430 ~v0 v1 ~v2 ~v3 = du_pparams_2430 v1
du_pparams_2430 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2430 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2228 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2444 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2444 ~v0 ~v1 v2 ~v3 = du_utxo_2444 v2
du_utxo_2444 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2444 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2450 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2592 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2574
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2228 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2858 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2858 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2452 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2592 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2574
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2228 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2858 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2858 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2454 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2454
  = C_UTXO'45'inductive_2550 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2462 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_29897 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652
d_body_2462 ~v0 ~v1 v2 = du_body_2462 v2
du_body_2462 ::
  T_GeneralizeTel_29897 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652
du_body_2462 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2854
      (coe d_'46'generalizedField'45'tx_29889 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_29897 -> Maybe Integer
d_curTreasury_2470 ~v0 ~v1 v2 = du_curTreasury_2470 v2
du_curTreasury_2470 :: T_GeneralizeTel_29897 -> Maybe Integer
du_curTreasury_2470 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2722
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_29889 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_29897 -> AgdaAny
d_mint_2472 ~v0 ~v1 v2 = du_mint_2472 v2
du_mint_2472 :: T_GeneralizeTel_29897 -> AgdaAny
du_mint_2472 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2702
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_29889 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_29897 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2474 ~v0 ~v1 v2 = du_refInputs_2474 v2
du_refInputs_2474 ::
  T_GeneralizeTel_29897 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2474 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2696
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_29889 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_29897 -> Maybe AgdaAny
d_txNetworkId_2482 ~v0 ~v1 v2 = du_txNetworkId_2482 v2
du_txNetworkId_2482 :: T_GeneralizeTel_29897 -> Maybe AgdaAny
du_txNetworkId_2482 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2720
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_29889 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2492 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_29897 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2492 ~v0 ~v1 v2 = du_txins_2492 v2
du_txins_2492 ::
  T_GeneralizeTel_29897 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2492 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2694
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_29889 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_29897 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2494 ~v0 ~v1 v2 = du_txouts_2494 v2
du_txouts_2494 ::
  T_GeneralizeTel_29897 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2494 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2698
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_29889 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2498 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_29897 -> Integer
d_txsize_2498 ~v0 ~v1 v2 = du_txsize_2498 v2
du_txsize_2498 :: T_GeneralizeTel_29897 -> Integer
du_txsize_2498 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2724
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_29889 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_29897 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2502 ~v0 ~v1 v2 = du_txvldt_2502 v2
du_txvldt_2502 ::
  T_GeneralizeTel_29897 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2502 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2704
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_29889 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_29897 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2506 ~v0 ~v1 v2 = du_txwdrls_2506 v2
du_txwdrls_2506 ::
  T_GeneralizeTel_29897 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2506 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2708
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_29889 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2510 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_29897 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2510 ~v0 ~v1 v2 = du_pparams_2510 v2
du_pparams_2510 ::
  T_GeneralizeTel_29897 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2510 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_2228
      (coe d_'46'generalizedField'45'Γ_29891 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_29897 -> AgdaAny
d_slot_2512 ~v0 ~v1 v2 = du_slot_2512 v2
du_slot_2512 :: T_GeneralizeTel_29897 -> AgdaAny
du_slot_2512 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_2226
      (coe d_'46'generalizedField'45'Γ_29891 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_29897 -> Integer
d_treasury_2514 ~v0 ~v1 v2 = du_treasury_2514 v2
du_treasury_2514 :: T_GeneralizeTel_29897 -> Integer
du_treasury_2514 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_2230
      (coe d_'46'generalizedField'45'Γ_29891 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2524 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_29897 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2524 ~v0 ~v1 v2 = du_utxo_2524 v2
du_utxo_2524 ::
  T_GeneralizeTel_29897 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2524 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_2244
      (coe d_'46'generalizedField'45's_29893 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2594 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2594 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1230 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2694
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v2)))
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
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1230 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2694
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2696
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1230 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228 (coe v0))))
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
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1230 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2694
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2696
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2836 (coe v0)
                     (coe MAlonzo.Code.Ledger.Utxo.d_slot_2226 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2704
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                           (MAlonzo.Code.Ledger.Utxo.d_minfee_2312
                              (coe v0) (coe v1)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2228 (coe v3))
                              (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v4)) (coe v2))
                           (MAlonzo.Code.Ledger.Transaction.d_txfee_2700
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v2))))
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
                                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228
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
                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_448
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1856
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2840
                                       (coe MAlonzo.Code.Ledger.Transaction.d_wits_2856 (coe v2))))
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
                                    MAlonzo.Code.Ledger.Utxo.du_collateralRange_3096 (coe v0)
                                    (coe v2) (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v4))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2942
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Utxo.du_bal_3098 (coe v0) (coe v2)
                                             (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v4)))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Utxo.du_bal_3098 (coe v0)
                                                     (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_utxo_2244
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2942 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txfee_2700
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2854
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.d_pparams_2228 (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.du_bal_3098 (coe v0)
                                                (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v4))))
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
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1230
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1228
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_collateral_2728
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2854
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
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_consumed_3128 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2228 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_produced_3136 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2228 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2702
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_2724
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v2)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_336
                                    (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2228 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2306
                                       (coe v0) (coe v1)
                                       (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368
                                       (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2228 (coe v3))))
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
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2312
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_2214
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_2228
                                                           (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2880
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
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2870
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2698
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2854
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
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1946 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2880
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_344
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_2228
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
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2870
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2698
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2854
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
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2870
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2698
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2854
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
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_156
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_2870
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_2698
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2854
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
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_100
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2708
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2854
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2720
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2854
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_2722
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2854
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Utxo.d_treasury_2230
                                                            (coe v3)))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_29889 ::
  T_GeneralizeTel_29897 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2844
d_'46'generalizedField'45'tx_29889 v0
  = case coe v0 of
      C_mkGeneralizeTel_29899 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_29891 ::
  T_GeneralizeTel_29897 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218
d_'46'generalizedField'45'Γ_29891 v0
  = case coe v0 of
      C_mkGeneralizeTel_29899 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_29893 ::
  T_GeneralizeTel_29897 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
d_'46'generalizedField'45's_29893 v0
  = case coe v0 of
      C_mkGeneralizeTel_29899 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_29895 ::
  T_GeneralizeTel_29897 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
d_'46'generalizedField'45's''_29895 v0
  = case coe v0 of
      C_mkGeneralizeTel_29899 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_29897 a0 a1 = ()
data T_GeneralizeTel_29897
  = C_mkGeneralizeTel_29899 MAlonzo.Code.Ledger.Transaction.T_Tx_2844
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2218
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
