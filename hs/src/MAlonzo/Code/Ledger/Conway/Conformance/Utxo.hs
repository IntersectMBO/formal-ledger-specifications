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
d_NetworkId_274 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny
d_NetworkId_274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1264
         (coe v0))
-- _.Tx
d_Tx_428 a0 = ()
-- _.coin
d_coin_490 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> Integer
d_coin_490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2346
         (coe v0))
-- _.getValueʰ
d_getValue'688'_532 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_532 ~v0 = du_getValue'688'_532
du_getValue'688'_532 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_532
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3234
-- _.inject
d_inject_544 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  Integer -> AgdaAny
d_inject_544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2346
         (coe v0))
-- _.netId
d_netId_586 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_586 ~v0 = du_netId_586
du_netId_586 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_586 = coe MAlonzo.Code.Ledger.Conway.Address.du_netId_158
-- _.txOutHash
d_txOutHash_646 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3224 (coe v0)
-- _.Tx.body
d_body_1540 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994
d_body_1540 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196 (coe v0)
-- _.Tx.isValid
d_isValid_1542 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 -> Bool
d_isValid_1542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3200 (coe v0)
-- _.Tx.txAD
d_txAD_1544 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 -> Maybe AgdaAny
d_txAD_1544 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3202 (coe v0)
-- _.Tx.wits
d_wits_1546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3166
d_wits_1546 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3198 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1674 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1674 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.ScriptValidation.d_collectPhaseTwoScriptInputs_2628
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1684 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1684 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.ScriptValidation.d_evalScripts_2646
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.Dec-inInterval
d_Dec'45'inInterval_2138 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2138 v0 ~v1 = du_Dec'45'inInterval_2138 v0
du_Dec'45'inInterval_2138 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_Dec'45'inInterval_2892 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.HasCast-UTxOState
d_HasCast'45'UTxOState_2142 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2142 ~v0 ~v1 = du_HasCast'45'UTxOState_2142
du_HasCast'45'UTxOState_2142 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2142
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_HasCast'45'UTxOState_2334
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv
d_UTxOEnv_2170 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState
d_UTxOState_2172 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.L._.balance
d_balance_2180 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2180 v0 ~v1 = du_balance_2180 v0
du_balance_2180 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2180 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_balance_2352 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.cbalance
d_cbalance_2184 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2184 v0 ~v1 = du_cbalance_2184 v0
du_cbalance_2184 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2184 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_cbalance_2358 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.consumed
d_consumed_2194 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 -> AgdaAny
d_consumed_2194 v0 ~v1 = du_consumed_2194 v0
du_consumed_2194 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 -> AgdaAny
du_consumed_2194 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_consumed_3184 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.depositRefunds
d_depositRefunds_2198 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 -> Integer
d_depositRefunds_2198 v0 ~v1 = du_depositRefunds_2198 v0
du_depositRefunds_2198 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 -> Integer
du_depositRefunds_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_depositRefunds_3168 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.feesOK
d_feesOK_2206 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_feesOK_2206 = erased
-- Ledger.Conway.Conformance.Utxo.L._.inInterval
d_inInterval_2212 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxo.L._.newDeposits
d_newDeposits_2228 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 -> Integer
d_newDeposits_2228 v0 ~v1 = du_newDeposits_2228 v0
du_newDeposits_2228 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 -> Integer
du_newDeposits_2228 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_newDeposits_3176 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.outs
d_outs_2232 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2232 ~v0 ~v1 = du_outs_2232
du_outs_2232 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2232 = coe MAlonzo.Code.Ledger.Conway.Utxo.du_outs_2346
-- Ledger.Conway.Conformance.Utxo.L._.produced
d_produced_2234 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 -> AgdaAny
d_produced_2234 v0 ~v1 = du_produced_2234 v0
du_produced_2234 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 -> AgdaAny
du_produced_2234 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_produced_3192 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.refScriptsSize
d_refScriptsSize_2238 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 -> Integer
d_refScriptsSize_2238 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_refScriptsSize_2362 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxo.L._.updateDeposits
d_updateDeposits_2252 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2252 v0 ~v1 = du_updateDeposits_2252 v0
du_updateDeposits_2252 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_updateDeposits_2756 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.utxoEntrySize
d_utxoEntrySize_2258 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2258 v0 ~v1 = du_utxoEntrySize_2258 v0
du_utxoEntrySize_2258 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_utxoEntrySize_2268 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.pparams
d_pparams_2282 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2272 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_pparams_2282 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2282 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.slot
d_slot_2284 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2272 -> AgdaAny
d_slot_2284 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_slot_2280 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOEnv.treasury
d_treasury_2286 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2272 -> Integer
d_treasury_2286 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_treasury_2284 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.deposits
d_deposits_2290 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2290 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_deposits_2304 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.donations
d_donations_2292 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 -> Integer
d_donations_2292 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_donations_2306 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.fees
d_fees_2294 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 -> Integer
d_fees_2294 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2302 (coe v0)
-- Ledger.Conway.Conformance.Utxo.L._.UTxOState.utxo
d_utxo_2296 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2296 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2300 (coe v0)
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2342 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2342
  = C_Scripts'45'Yes_2422 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2502 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2386 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2272 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2386 ~v0 ~v1 ~v2 v3 = du_txins_2386 v3
du_txins_2386 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3036
      (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2404 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2272 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_pparams_2404 ~v0 v1 ~v2 ~v3 = du_pparams_2404 v1
du_pparams_2404 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2272 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
du_pparams_2404 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2282 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2418 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2272 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2418 ~v0 ~v1 v2 ~v3 = du_utxo_2418 v2
du_utxo_2418 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2418 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2300 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2442 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2272 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2442 ~v0 ~v1 ~v2 v3 = du_collateral_2442 v3
du_collateral_2442 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3070
      (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2484 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2272 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_pparams_2484 ~v0 v1 ~v2 ~v3 = du_pparams_2484 v1
du_pparams_2484 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2272 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
du_pparams_2484 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2282 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2498 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2272 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2498 ~v0 ~v1 v2 ~v3 = du_utxo_2498 v2
du_utxo_2498 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2498 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2300 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2504 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2272 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2504 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.ScriptValidation.d_evalScripts_2646
               (coe v0) (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.Conway.ScriptValidation.d_collectPhaseTwoScriptInputs_2628
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2282 (coe v2))
                  (coe v4)
                  (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2300 (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3200 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3200 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2506 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2272 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2506 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.ScriptValidation.d_evalScripts_2646
               (coe v0) (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.Conway.ScriptValidation.d_collectPhaseTwoScriptInputs_2628
                  (coe v0) (coe v1)
                  (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2282 (coe v2))
                  (coe v4)
                  (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2300 (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3200 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3200 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2508 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2508
  = C_UTXO'45'inductive_2604 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2516 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30553 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994
d_body_2516 ~v0 ~v1 v2 = du_body_2516 v2
du_body_2516 ::
  T_GeneralizeTel_30553 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994
du_body_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
      (coe d_'46'generalizedField'45'tx_30545 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2524 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30553 -> Maybe Integer
d_curTreasury_2524 ~v0 ~v1 v2 = du_curTreasury_2524 v2
du_curTreasury_2524 :: T_GeneralizeTel_30553 -> Maybe Integer
du_curTreasury_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3064
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
         (coe d_'46'generalizedField'45'tx_30545 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30553 -> AgdaAny
d_mint_2526 ~v0 ~v1 v2 = du_mint_2526 v2
du_mint_2526 :: T_GeneralizeTel_30553 -> AgdaAny
du_mint_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3044
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
         (coe d_'46'generalizedField'45'tx_30545 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2528 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30553 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2528 ~v0 ~v1 v2 = du_refInputs_2528 v2
du_refInputs_2528 ::
  T_GeneralizeTel_30553 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3038
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
         (coe d_'46'generalizedField'45'tx_30545 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2536 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30553 -> Maybe AgdaAny
d_txNetworkId_2536 ~v0 ~v1 v2 = du_txNetworkId_2536 v2
du_txNetworkId_2536 :: T_GeneralizeTel_30553 -> Maybe AgdaAny
du_txNetworkId_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3062
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
         (coe d_'46'generalizedField'45'tx_30545 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30553 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2546 ~v0 ~v1 v2 = du_txins_2546 v2
du_txins_2546 ::
  T_GeneralizeTel_30553 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3036
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
         (coe d_'46'generalizedField'45'tx_30545 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30553 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2548 ~v0 ~v1 v2 = du_txouts_2548 v2
du_txouts_2548 ::
  T_GeneralizeTel_30553 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3040
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
         (coe d_'46'generalizedField'45'tx_30545 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2552 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30553 -> Integer
d_txsize_2552 ~v0 ~v1 v2 = du_txsize_2552 v2
du_txsize_2552 :: T_GeneralizeTel_30553 -> Integer
du_txsize_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3066
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
         (coe d_'46'generalizedField'45'tx_30545 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2556 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30553 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2556 ~v0 ~v1 v2 = du_txvldt_2556 v2
du_txvldt_2556 ::
  T_GeneralizeTel_30553 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3046
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
         (coe d_'46'generalizedField'45'tx_30545 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2560 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30553 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2560 ~v0 ~v1 v2 = du_txwdrls_2560 v2
du_txwdrls_2560 ::
  T_GeneralizeTel_30553 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3050
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
         (coe d_'46'generalizedField'45'tx_30545 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2564 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30553 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_pparams_2564 ~v0 ~v1 v2 = du_pparams_2564 v2
du_pparams_2564 ::
  T_GeneralizeTel_30553 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
du_pparams_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2282
      (coe d_'46'generalizedField'45'Γ_30547 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2566 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30553 -> AgdaAny
d_slot_2566 ~v0 ~v1 v2 = du_slot_2566 v2
du_slot_2566 :: T_GeneralizeTel_30553 -> AgdaAny
du_slot_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_slot_2280
      (coe d_'46'generalizedField'45'Γ_30547 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2568 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30553 -> Integer
d_treasury_2568 ~v0 ~v1 v2 = du_treasury_2568 v2
du_treasury_2568 :: T_GeneralizeTel_30553 -> Integer
du_treasury_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_treasury_2284
      (coe d_'46'generalizedField'45'Γ_30547 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2578 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30553 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2578 ~v0 ~v1 v2 = du_utxo_2578 v2
du_utxo_2578 ::
  T_GeneralizeTel_30553 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2300
      (coe d_'46'generalizedField'45's_30549 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2648 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2272 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2648 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1248
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1246
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3036
                  (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196 (coe v2)))
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
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1248
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1246
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2300 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3036
                     (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3038
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1248
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1246
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
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1248
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1246
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3036
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3038
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Ledger.Conway.Utxo.du_Dec'45'inInterval_2892 (coe v0)
                     (coe MAlonzo.Code.Ledger.Conway.Utxo.d_slot_2280 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3046
                        (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                           (MAlonzo.Code.Ledger.Conway.Utxo.d_minfee_2368
                              (coe v0) (coe v1)
                              (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2282 (coe v3))
                              (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2300 (coe v4))
                              (coe v2))
                           (MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3042
                              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196 (coe v2))))
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
                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1246
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
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1880
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1880
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3182
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3198
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
                                    MAlonzo.Code.Ledger.Conway.Utxo.du_collateralRange_3152 (coe v0)
                                    (coe v2)
                                    (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2300 (coe v4))))
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
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Utxo.du_coinPolicies_2998
                                                  (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
                                          (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2346
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Utxo.du_bal_3154 (coe v0)
                                             (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2300
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
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
                                                  (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2346
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Utxo.du_bal_3154
                                                     (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2300
                                                        (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Utxo.du_coinPolicies_2998
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3042
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_386
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2282
                                                (coe v3))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
                                             (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2346
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Utxo.du_bal_3154 (coe v0)
                                                (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2300
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
                                                (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1248
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1246
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3070
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
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
                                 MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2346
                                 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Utxo.du_consumed_3184 (coe v0)
                              (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2282 (coe v3))
                              (coe v4)
                              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Utxo.du_produced_3192 (coe v0)
                              (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2282 (coe v3))
                              (coe v4)
                              (coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2346
                                    (coe v0))
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3044
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
                                       (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3066
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196 (coe v2)))
                                 (MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_338
                                    (coe MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2282 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (MAlonzo.Code.Ledger.Conway.Utxo.d_refScriptsSize_2362
                                       (coe v0) (coe v1)
                                       (coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2300 (coe v4))
                                       (coe v2))
                                    (MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_370
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2282 (coe v3))))
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
                                               (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2346
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
                                                  (MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2346
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Utxo.du_utxoEntrySize_2268
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_364
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2282
                                                           (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3234
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
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3224
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3040
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
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
                                                     MAlonzo.Code.Ledger.Conway.Abstract.d_serSize_2000
                                                     v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3234
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_346
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Utxo.d_pparams_2282
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
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3224
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3040
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
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
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3224
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3040
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
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
                                                              MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1264
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Address.du_netId_158
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1264
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
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3224
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3040
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
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
                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1264
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Address.d_net_102
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1264
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
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3050
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3062
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1264
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1264
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3064
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Utxo.d_treasury_2284
                                                            (coe v3)))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_30545 ::
  T_GeneralizeTel_30553 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186
d_'46'generalizedField'45'tx_30545 v0
  = case coe v0 of
      C_mkGeneralizeTel_30555 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_30547 ::
  T_GeneralizeTel_30553 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2272
d_'46'generalizedField'45'Γ_30547 v0
  = case coe v0 of
      C_mkGeneralizeTel_30555 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_30549 ::
  T_GeneralizeTel_30553 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
d_'46'generalizedField'45's_30549 v0
  = case coe v0 of
      C_mkGeneralizeTel_30555 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_30551 ::
  T_GeneralizeTel_30553 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
d_'46'generalizedField'45's''_30551 v0
  = case coe v0 of
      C_mkGeneralizeTel_30555 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_30553 a0 a1 = ()
data T_GeneralizeTel_30553
  = C_mkGeneralizeTel_30555 MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOEnv_2272
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
