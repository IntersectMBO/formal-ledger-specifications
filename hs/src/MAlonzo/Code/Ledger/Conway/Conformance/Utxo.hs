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
import qualified MAlonzo.Code.Ledger.Conway.Script
import qualified MAlonzo.Code.Ledger.Conway.ScriptValidation
import qualified MAlonzo.Code.Ledger.Conway.TokenAlgebra
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
d_Dec'45'isVKey_68 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_68 ~v0 = du_Dec'45'isVKey_68
du_Dec'45'isVKey_68 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_68
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isVKey_190
-- _.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_198 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'RwdAddr_198 ~v0 = du_HasNetworkId'45'RwdAddr_198
du_HasNetworkId'45'RwdAddr_198 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'RwdAddr_198
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'RwdAddr_128
-- _.NetworkId
d_NetworkId_276 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny
d_NetworkId_276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
         (coe v0))
-- _.Tx
d_Tx_430 a0 = ()
-- _.coin
d_coin_492 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> Integer
d_coin_492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
         (coe v0))
-- _.getValueʰ
d_getValue'688'_534 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_534 ~v0 = du_getValue'688'_534
du_getValue'688'_534 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_534
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3246
-- _.inject
d_inject_546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  Integer -> AgdaAny
d_inject_546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
         (coe v0))
-- _.netId
d_netId_588 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_588 ~v0 = du_netId_588
du_netId_588 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_588 = coe MAlonzo.Code.Ledger.Conway.Address.du_netId_158
-- _.txOutHash
d_txOutHash_648 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3236 (coe v0)
-- _.Tx.body
d_body_1546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
d_body_1546 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v0)
-- _.Tx.isValid
d_isValid_1548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> Bool
d_isValid_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3212 (coe v0)
-- _.Tx.txAD
d_txAD_1550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> Maybe AgdaAny
d_txAD_1550 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3214 (coe v0)
-- _.Tx.wits
d_wits_1552 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3178
d_wits_1552 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1680 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1680 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.ScriptValidation.d_collectPhaseTwoScriptInputs_2634
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1690 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1690 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.ScriptValidation.d_evalScripts_2652
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_2144 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2144 v0 ~v1 = du_Dec'45'inInterval_2144 v0
du_Dec'45'inInterval_2144 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_Dec'45'inInterval_2898 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCast-UTxOState
d_HasCast'45'UTxOState_2148 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2148 ~v0 ~v1 = du_HasCast'45'UTxOState_2148
du_HasCast'45'UTxOState_2148 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2148
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_HasCast'45'UTxOState_2340
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_2176 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_2178 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_2186 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2186 v0 ~v1 = du_balance_2186 v0
du_balance_2186 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2186 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_balance_2358 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_2190 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2190 v0 ~v1 = du_cbalance_2190 v0
du_cbalance_2190 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2190 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_cbalance_2364 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_2200 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> AgdaAny
d_consumed_2200 v0 ~v1 = du_consumed_2200 v0
du_consumed_2200 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> AgdaAny
du_consumed_2200 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_consumed_3190 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_2204 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> Integer
d_depositRefunds_2204 v0 ~v1 = du_depositRefunds_2204 v0
du_depositRefunds_2204 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> Integer
du_depositRefunds_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_depositRefunds_3174 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.feesOK
d_feesOK_2212 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_2212 = erased
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_2218 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_2234 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> Integer
d_newDeposits_2234 v0 ~v1 = du_newDeposits_2234 v0
du_newDeposits_2234 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> Integer
du_newDeposits_2234 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_newDeposits_3182 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_2238 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2238 ~v0 ~v1 = du_outs_2238
du_outs_2238 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2238 = coe MAlonzo.Code.Ledger.Conway.Utxo.du_outs_2352
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_2240 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> AgdaAny
d_produced_2240 v0 ~v1 = du_produced_2240 v0
du_produced_2240 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 -> AgdaAny
du_produced_2240 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_produced_3198 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_2244 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> Integer
d_refScriptsSize_2244 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_refScriptsSize_2368 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_2258 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2258 v0 ~v1 = du_updateDeposits_2258 v0
du_updateDeposits_2258 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_updateDeposits_2762 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_2264 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2264 v0 ~v1 = du_utxoEntrySize_2264 v0
du_utxoEntrySize_2264 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_utxoEntrySize_2274 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2288 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pparams_2288 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2288 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2290 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 -> AgdaAny
d_slot_2290 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_slot_2286 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2292 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 -> Integer
d_treasury_2292 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_treasury_2290 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2296 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2296 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_deposits_2310 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2298 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 -> Integer
d_donations_2298 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_donations_2312 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2300 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 -> Integer
d_fees_2300 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2308 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2302 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2302 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2348 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2348
  = C_Scripts'45'Yes_2428 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2508 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2392 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2392 ~v0 ~v1 ~v2 v3 = du_txins_2392 v3
du_txins_2392 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3048
      (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2410 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pparams_2410 ~v0 v1 ~v2 ~v3 = du_pparams_2410 v1
du_pparams_2410 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
du_pparams_2410 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2288 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2424 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2424 ~v0 ~v1 v2 ~v3 = du_utxo_2424 v2
du_utxo_2424 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2424 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2448 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2448 ~v0 ~v1 ~v2 v3 = du_collateral_2448 v3
du_collateral_2448 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3082
      (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2490 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pparams_2490 ~v0 v1 ~v2 ~v3 = du_pparams_2490 v1
du_pparams_2490 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
du_pparams_2490 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2288 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2504 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2504 ~v0 ~v1 v2 ~v3 = du_utxo_2504 v2
du_utxo_2504 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2504 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2510 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2510 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.ScriptValidation.d_evalScripts_2652
               (coe v0) (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.Conway.ScriptValidation.d_collectPhaseTwoScriptInputs_2634
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2288 (coe v2))
                  (coe v4)
                  (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3212 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3212 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2512 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2512 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.ScriptValidation.d_evalScripts_2652
               (coe v0) (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.Conway.ScriptValidation.d_collectPhaseTwoScriptInputs_2634
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2288 (coe v2))
                  (coe v4)
                  (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3212 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3212 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2514 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2514
  = C_UTXO'45'inductive_2610 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2522 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_30583 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
d_body_2522 ~v0 ~v1 v2 = du_body_2522 v2
du_body_2522 ::
  T_GeneralizeTel_30583 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
du_body_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
      (coe d_'46'generalizedField'45'tx_30575 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2530 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_30583 -> Maybe Integer
d_curTreasury_2530 ~v0 ~v1 v2 = du_curTreasury_2530 v2
du_curTreasury_2530 :: T_GeneralizeTel_30583 -> Maybe Integer
du_curTreasury_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3076
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_30575 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2532 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_30583 -> AgdaAny
d_mint_2532 ~v0 ~v1 v2 = du_mint_2532 v2
du_mint_2532 :: T_GeneralizeTel_30583 -> AgdaAny
du_mint_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3056
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_30575 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2534 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_30583 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2534 ~v0 ~v1 v2 = du_refInputs_2534 v2
du_refInputs_2534 ::
  T_GeneralizeTel_30583 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3050
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_30575 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2542 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_30583 -> Maybe AgdaAny
d_txNetworkId_2542 ~v0 ~v1 v2 = du_txNetworkId_2542 v2
du_txNetworkId_2542 :: T_GeneralizeTel_30583 -> Maybe AgdaAny
du_txNetworkId_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3074
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_30575 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2552 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_30583 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2552 ~v0 ~v1 v2 = du_txins_2552 v2
du_txins_2552 ::
  T_GeneralizeTel_30583 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3048
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_30575 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2554 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_30583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2554 ~v0 ~v1 v2 = du_txouts_2554 v2
du_txouts_2554 ::
  T_GeneralizeTel_30583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_30575 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2558 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_30583 -> Integer
d_txsize_2558 ~v0 ~v1 v2 = du_txsize_2558 v2
du_txsize_2558 :: T_GeneralizeTel_30583 -> Integer
du_txsize_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3078
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_30575 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_30583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2562 ~v0 ~v1 v2 = du_txvldt_2562 v2
du_txvldt_2562 ::
  T_GeneralizeTel_30583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3058
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_30575 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2566 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_30583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2566 ~v0 ~v1 v2 = du_txwdrls_2566 v2
du_txwdrls_2566 ::
  T_GeneralizeTel_30583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3062
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_30575 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2570 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_30583 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pparams_2570 ~v0 ~v1 v2 = du_pparams_2570 v2
du_pparams_2570 ::
  T_GeneralizeTel_30583 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
du_pparams_2570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2288
      (coe d_'46'generalizedField'45'Γ_30577 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2572 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_30583 -> AgdaAny
d_slot_2572 ~v0 ~v1 v2 = du_slot_2572 v2
du_slot_2572 :: T_GeneralizeTel_30583 -> AgdaAny
du_slot_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_slot_2286
      (coe d_'46'generalizedField'45'Γ_30577 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2574 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_30583 -> Integer
d_treasury_2574 ~v0 ~v1 v2 = du_treasury_2574 v2
du_treasury_2574 :: T_GeneralizeTel_30583 -> Integer
du_treasury_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_treasury_2290
      (coe d_'46'generalizedField'45'Γ_30577 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2584 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_30583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2584 ~v0 ~v1 v2 = du_utxo_2584 v2
du_utxo_2584 ::
  T_GeneralizeTel_30583 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306
      (coe d_'46'generalizedField'45's_30579 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2654 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2654 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3048
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2)))
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
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3048
                     (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3050
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
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
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3048
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3050
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Ledger.Conway.Utxo.du_Dec'45'inInterval_2898 (coe v0)
                     (coe MAlonzo.Code.Ledger.Conway.Utxo.d_slot_2286 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3058
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                           (MAlonzo.Code.Ledger.Conway.Utxo.d_minfee_2374
                              (coe v0) (coe v1)
                              (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2288 (coe v3))
                              (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v4))
                              (coe v2))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3054
                              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2))))
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
                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1886
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3194
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210
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
                                    MAlonzo.Code.Ledger.Conway.Utxo.du_collateralRange_3158 (coe v0)
                                    (coe v2)
                                    (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v4))))
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
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Utxo.du_coinPolicies_3004
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Utxo.du_bal_3160 (coe v0)
                                             (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306
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
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
                                                  (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Utxo.du_bal_3160
                                                     (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Utxo.du_coinPolicies_3004
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3054
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_404
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2288
                                                (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
                                             (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Utxo.du_bal_3160 (coe v0)
                                                (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306
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
                                                (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1254
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1252
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3082
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
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
                              MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_DecEq'45'Value_212
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                                 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Utxo.du_consumed_3190 (coe v0)
                              (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2288 (coe v3))
                              (coe v4)
                              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Utxo.du_produced_3198 (coe v0)
                              (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2288 (coe v3))
                              (coe v4)
                              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                                    (coe v0))
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3056
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
                                       (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3078
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v2)))
                                 (MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_356
                                    (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2288 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Conway.Utxo.d_refScriptsSize_2368
                                       (coe v0) (coe v1)
                                       (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v4))
                                       (coe v2))
                                    (MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_388
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2288 (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Dec'45''8804''7511'_214
                                               (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
                                                  (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2358
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Utxo.du_utxoEntrySize_2274
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_382
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2288
                                                           (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3246
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
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3236
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
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
                                                     MAlonzo.Code.Ledger.Conway.Abstract.d_serSize_2006
                                                     v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3246
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_364
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2288
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
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3236
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
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
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3236
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
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
                                                              MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Address.du_netId_158
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
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
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3236
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3052
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
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
                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Address.d_net_102
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
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
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3062
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3074
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1270
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3076
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Utxo.d_treasury_2290
                                                            (coe v3)))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_30575 ::
  T_GeneralizeTel_30583 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198
d_'46'generalizedField'45'tx_30575 v0
  = case coe v0 of
      C_mkGeneralizeTel_30585 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_30577 ::
  T_GeneralizeTel_30583 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278
d_'46'generalizedField'45'Γ_30577 v0
  = case coe v0 of
      C_mkGeneralizeTel_30585 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_30579 ::
  T_GeneralizeTel_30583 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
d_'46'generalizedField'45's_30579 v0
  = case coe v0 of
      C_mkGeneralizeTel_30585 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_30581 ::
  T_GeneralizeTel_30583 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
d_'46'generalizedField'45's''_30581 v0
  = case coe v0 of
      C_mkGeneralizeTel_30585 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_30583 a0 a1 = ()
data T_GeneralizeTel_30583
  = C_mkGeneralizeTel_30585 MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2278
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
