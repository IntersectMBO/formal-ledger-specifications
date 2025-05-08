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
d_Dec'45'isVKey_68 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_68 ~v0 = du_Dec'45'isVKey_68
du_Dec'45'isVKey_68 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_68
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_188
-- _.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
d_HasNetworkId'45'RwdAddr_198 ~v0 = du_HasNetworkId'45'RwdAddr_198
du_HasNetworkId'45'RwdAddr_198 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
du_HasNetworkId'45'RwdAddr_198
  = coe MAlonzo.Code.Ledger.Address.du_HasNetworkId'45'RwdAddr_126
-- _.NetworkId
d_NetworkId_274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_274 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_296
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260 (coe v0))
-- _.Tx
d_Tx_426 a0 = ()
-- _.coin
d_coin_488 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_488 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v0))
-- _.getValueʰ
d_getValue'688'_530 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_530 ~v0 = du_getValue'688'_530
du_getValue'688'_530 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_530
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_3228
-- _.inject
d_inject_542 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_542 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v0))
-- _.netId
d_netId_584 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_584 ~v0 = du_netId_584
du_netId_584 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_584 = coe MAlonzo.Code.Ledger.Address.du_netId_156
-- _.txOutHash
d_txOutHash_644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_644 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_3218 (coe v0)
-- _.Tx.body
d_body_1538 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988
d_body_1538 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v0)
-- _.Tx.isValid
d_isValid_1540 :: MAlonzo.Code.Ledger.Transaction.T_Tx_3180 -> Bool
d_isValid_1540 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_3194 (coe v0)
-- _.Tx.txAD
d_txAD_1542 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 -> Maybe AgdaAny
d_txAD_1542 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_3196 (coe v0)
-- _.Tx.wits
d_wits_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3160
d_wits_1544 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_3192 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1672 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1672 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2624
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1682 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2642 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2136 v0 ~v1 = du_Dec'45'inInterval_2136 v0
du_Dec'45'inInterval_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2136 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2888 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCast-UTxOState
d_HasCast'45'UTxOState_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'UTxOState_2140 ~v0 ~v1 = du_HasCast'45'UTxOState_2140
du_HasCast'45'UTxOState_2140 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'UTxOState_2140
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCast'45'UTxOState_2330
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_2168 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_2170 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_2178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2178 v0 ~v1 = du_balance_2178 v0
du_balance_2178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2178 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_2348 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2182 v0 ~v1 = du_cbalance_2182 v0
du_cbalance_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2182 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_2354 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> AgdaAny
d_consumed_2192 v0 ~v1 = du_consumed_2192 v0
du_consumed_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> AgdaAny
du_consumed_2192 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_3180 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Integer
d_depositRefunds_2196 v0 ~v1 = du_depositRefunds_2196 v0
du_depositRefunds_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Integer
du_depositRefunds_2196 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_3164 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.feesOK
d_feesOK_2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_2204 = erased
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_2210 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_2226 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Integer
d_newDeposits_2226 v0 ~v1 = du_newDeposits_2226 v0
du_newDeposits_2226 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Integer
du_newDeposits_2226 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_3172 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_2230 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2230 ~v0 ~v1 = du_outs_2230
du_outs_2230 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2230 = coe MAlonzo.Code.Ledger.Utxo.du_outs_2342
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_2232 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> AgdaAny
d_produced_2232 v0 ~v1 = du_produced_2232 v0
du_produced_2232 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> AgdaAny
du_produced_2232 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_3188 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_2236 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 -> Integer
d_refScriptsSize_2236 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2358 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_2250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2250 v0 ~v1 = du_updateDeposits_2250 v0
du_updateDeposits_2250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2250 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2752 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_2256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2256 v0 ~v1 = du_utxoEntrySize_2256 v0
du_utxoEntrySize_2256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2256 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_2264 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2280 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2268 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2280 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2278 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2282 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2268 -> AgdaAny
d_slot_2282 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_2276 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2284 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2268 -> Integer
d_treasury_2284 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_2280 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2288 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2288 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2300 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2290 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 -> Integer
d_donations_2290 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2302 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2292 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 -> Integer
d_fees_2292 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2298 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2294 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2294 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2296 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2340 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2340
  = C_Scripts'45'Yes_2420 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2500 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2384 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2268 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2384 ~v0 ~v1 ~v2 v3 = du_txins_2384 v3
du_txins_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2384 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_3030
      (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2402 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2268 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2402 ~v0 v1 ~v2 ~v3 = du_pparams_2402 v1
du_pparams_2402 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2268 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2402 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2278 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2416 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2268 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2416 ~v0 ~v1 v2 ~v3 = du_utxo_2416 v2
du_utxo_2416 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2416 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2296 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2440 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2268 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2440 ~v0 ~v1 ~v2 v3 = du_collateral_2440 v3
du_collateral_2440 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2440 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_3064
      (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2482 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2268 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2482 ~v0 v1 ~v2 ~v3 = du_pparams_2482 v1
du_pparams_2482 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2268 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2482 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2278 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2496 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2268 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2496 ~v0 ~v1 v2 ~v3 = du_utxo_2496 v2
du_utxo_2496 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2496 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2296 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2268 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2502 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2642 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2624
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2278 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2296 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_3194 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_3194 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2268 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2504 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2642 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2624
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2278 (coe v2)) (coe v4)
                  (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2296 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_3194 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_3194 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2506 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2506
  = C_UTXO'45'inductive_2602 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_30317 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988
d_body_2514 ~v0 ~v1 v2 = du_body_2514 v2
du_body_2514 ::
  T_GeneralizeTel_30317 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988
du_body_2514 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_3190
      (coe d_'46'generalizedField'45'tx_30309 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_30317 -> Maybe Integer
d_curTreasury_2522 ~v0 ~v1 v2 = du_curTreasury_2522 v2
du_curTreasury_2522 :: T_GeneralizeTel_30317 -> Maybe Integer
du_curTreasury_2522 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_3058
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3190
         (coe d_'46'generalizedField'45'tx_30309 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2524 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_30317 -> AgdaAny
d_mint_2524 ~v0 ~v1 v2 = du_mint_2524 v2
du_mint_2524 :: T_GeneralizeTel_30317 -> AgdaAny
du_mint_2524 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_3038
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3190
         (coe d_'46'generalizedField'45'tx_30309 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2526 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_30317 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2526 ~v0 ~v1 v2 = du_refInputs_2526 v2
du_refInputs_2526 ::
  T_GeneralizeTel_30317 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2526 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_3032
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3190
         (coe d_'46'generalizedField'45'tx_30309 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2534 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_30317 -> Maybe AgdaAny
d_txNetworkId_2534 ~v0 ~v1 v2 = du_txNetworkId_2534 v2
du_txNetworkId_2534 :: T_GeneralizeTel_30317 -> Maybe AgdaAny
du_txNetworkId_2534 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_3056
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3190
         (coe d_'46'generalizedField'45'tx_30309 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2544 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_30317 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2544 ~v0 ~v1 v2 = du_txins_2544 v2
du_txins_2544 ::
  T_GeneralizeTel_30317 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2544 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_3030
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3190
         (coe d_'46'generalizedField'45'tx_30309 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2546 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_30317 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2546 ~v0 ~v1 v2 = du_txouts_2546 v2
du_txouts_2546 ::
  T_GeneralizeTel_30317 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2546 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_3034
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3190
         (coe d_'46'generalizedField'45'tx_30309 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2550 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_30317 -> Integer
d_txsize_2550 ~v0 ~v1 v2 = du_txsize_2550 v2
du_txsize_2550 :: T_GeneralizeTel_30317 -> Integer
du_txsize_2550 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_3060
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3190
         (coe d_'46'generalizedField'45'tx_30309 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_30317 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2554 ~v0 ~v1 v2 = du_txvldt_2554 v2
du_txvldt_2554 ::
  T_GeneralizeTel_30317 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2554 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_3040
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3190
         (coe d_'46'generalizedField'45'tx_30309 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_30317 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2558 ~v0 ~v1 v2 = du_txwdrls_2558 v2
du_txwdrls_2558 ::
  T_GeneralizeTel_30317 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2558 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_3044
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3190
         (coe d_'46'generalizedField'45'tx_30309 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2562 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_30317 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2562 ~v0 ~v1 v2 = du_pparams_2562 v2
du_pparams_2562 ::
  T_GeneralizeTel_30317 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2562 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_pparams_2278
      (coe d_'46'generalizedField'45'Γ_30311 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2564 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_30317 -> AgdaAny
d_slot_2564 ~v0 ~v1 v2 = du_slot_2564 v2
du_slot_2564 :: T_GeneralizeTel_30317 -> AgdaAny
du_slot_2564 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_slot_2276
      (coe d_'46'generalizedField'45'Γ_30311 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_30317 -> Integer
d_treasury_2566 ~v0 ~v1 v2 = du_treasury_2566 v2
du_treasury_2566 :: T_GeneralizeTel_30317 -> Integer
du_treasury_2566 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_treasury_2280
      (coe d_'46'generalizedField'45'Γ_30311 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2576 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_30317 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2576 ~v0 ~v1 v2 = du_utxo_2576 v2
du_utxo_2576 ::
  T_GeneralizeTel_30317 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2576 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_2296
      (coe d_'46'generalizedField'45's_30313 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2646 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2268 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2646 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1244 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1242 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_3030
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2)))
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
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1244 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1242 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2296 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_3030
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_3032
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1244 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1242 (coe v0))))
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
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1244 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1242 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_3030
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_3032
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2888 (coe v0)
                     (coe MAlonzo.Code.Ledger.Utxo.d_slot_2276 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_3040
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                           (MAlonzo.Code.Ledger.Utxo.d_minfee_2364
                              (coe v0) (coe v1)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2278 (coe v3))
                              (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2296 (coe v4)) (coe v2))
                           (MAlonzo.Code.Ledger.Transaction.d_txfee_3036
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2))))
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
                                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1242
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
                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_448
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3176
                                       (coe MAlonzo.Code.Ledger.Transaction.d_wits_3192 (coe v2))))
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
                                    MAlonzo.Code.Ledger.Utxo.du_collateralRange_3148 (coe v0)
                                    (coe v2) (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2296 (coe v4))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1288
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2994
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Utxo.du_bal_3150 (coe v0) (coe v2)
                                             (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2296 (coe v4)))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1288
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Utxo.du_bal_3150 (coe v0)
                                                     (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_utxo_2296
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2994 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txfee_3036
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_3190
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.d_pparams_2278 (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.du_bal_3150 (coe v0)
                                                (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Utxo.d_utxo_2296 (coe v4))))
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
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1244
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1242
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_collateral_3064
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_3190
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
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_consumed_3180 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2278 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_produced_3188 (coe v0)
                              (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2278 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_3038
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_3060
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v2)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_336
                                    (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2278 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2358
                                       (coe v0) (coe v1)
                                       (coe MAlonzo.Code.Ledger.Utxo.d_utxo_2296 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368
                                       (coe MAlonzo.Code.Ledger.Utxo.d_pparams_2278 (coe v3))))
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
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_2264
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362
                                                        (coe
                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_2278
                                                           (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_getValue'688'_3228
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
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_3218
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_3034
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_3190
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
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1996 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_3228
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_344
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_2278
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
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_3218
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_3034
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_3190
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
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_3218
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_3034
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_3190
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
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_280
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_156
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_296
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_3218
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_3034
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_3190
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
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_280
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_100
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_296
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_3044
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_3190
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_3056
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_3190
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_296
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_280
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_3058
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_3190
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Utxo.d_treasury_2280
                                                            (coe v3)))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_30309 ::
  T_GeneralizeTel_30317 -> MAlonzo.Code.Ledger.Transaction.T_Tx_3180
d_'46'generalizedField'45'tx_30309 v0
  = case coe v0 of
      C_mkGeneralizeTel_30319 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_30311 ::
  T_GeneralizeTel_30317 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2268
d_'46'generalizedField'45'Γ_30311 v0
  = case coe v0 of
      C_mkGeneralizeTel_30319 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_30313 ::
  T_GeneralizeTel_30317 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286
d_'46'generalizedField'45's_30313 v0
  = case coe v0 of
      C_mkGeneralizeTel_30319 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_30315 ::
  T_GeneralizeTel_30317 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286
d_'46'generalizedField'45's''_30315 v0
  = case coe v0 of
      C_mkGeneralizeTel_30319 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_30317 a0 a1 = ()
data T_GeneralizeTel_30317
  = C_mkGeneralizeTel_30319 MAlonzo.Code.Ledger.Transaction.T_Tx_3180
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2268
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286
