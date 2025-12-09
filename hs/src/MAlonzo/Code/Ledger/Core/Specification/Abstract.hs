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

module MAlonzo.Code.Ledger.Core.Specification.Abstract where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Certs
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Core.Specification.Transaction

-- Ledger.Core.Specification.Abstract._.CostModel
d_CostModel_56 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_CostModel_56 = erased
-- Ledger.Core.Specification.Abstract._.T
d_T_68 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_T_68 = erased
-- Ledger.Core.Specification.Abstract._.ExUnits
d_ExUnits_168 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_168 = erased
-- Ledger.Core.Specification.Abstract._.GovProposal
d_GovProposal_192 a0 = ()
-- Ledger.Core.Specification.Abstract._.GovVoter
d_GovVoter_204 a0 = ()
-- Ledger.Core.Specification.Abstract._.MemoryEstimate
d_MemoryEstimate_346 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_346 = erased
-- Ledger.Core.Specification.Abstract._.PlutusScript
d_PlutusScript_374 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_374 = erased
-- Ledger.Core.Specification.Abstract._.Prices
d_Prices_410 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Prices_410 = erased
-- Ledger.Core.Specification.Abstract._.RewardAddress
d_RewardAddress_426 a0 = ()
-- Ledger.Core.Specification.Abstract._.Script
d_Script_436 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_436 = erased
-- Ledger.Core.Specification.Abstract._.ScriptHash
d_ScriptHash_444 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_444 = erased
-- Ledger.Core.Specification.Abstract._.TxIn
d_TxIn_524 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_524 = erased
-- Ledger.Core.Specification.Abstract._.Value
d_Value_554 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_554 = erased
-- Ledger.Core.Specification.Abstract._.Withdrawals
d_Withdrawals_564 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_564 = erased
-- Ledger.Core.Specification.Abstract._.GovActions.GovProposal
d_GovProposal_896 a0 = ()
-- Ledger.Core.Specification.Abstract._.GovActions.GovVoter
d_GovVoter_908 a0 = ()
-- Ledger.Core.Specification.Abstract._.GovActions.GovProposal.action
d_action_1038 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_828
d_action_1038 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_990
      (coe v0)
-- Ledger.Core.Specification.Abstract._.GovActions.GovProposal.anchor
d_anchor_1040 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_884
d_anchor_1040 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_1000
      (coe v0)
-- Ledger.Core.Specification.Abstract._.GovActions.GovProposal.deposit
d_deposit_1042 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  Integer
d_deposit_1042 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_deposit_996
      (coe v0)
-- Ledger.Core.Specification.Abstract._.GovActions.GovProposal.policy
d_policy_1044 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  Maybe AgdaAny
d_policy_1044 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_policy_994
      (coe v0)
-- Ledger.Core.Specification.Abstract._.GovActions.GovProposal.prevAction
d_prevAction_1046 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  AgdaAny
d_prevAction_1046 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_prevAction_992
      (coe v0)
-- Ledger.Core.Specification.Abstract._.GovActions.GovProposal.returnAddr
d_returnAddr_1048 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1048 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_returnAddr_998
      (coe v0)
-- Ledger.Core.Specification.Abstract._.GovActions.GovVoter.gvCredential
d_gvCredential_1070 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_872 ->
  AgdaAny
d_gvCredential_1070 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvCredential_880
      (coe v0)
-- Ledger.Core.Specification.Abstract._.GovActions.GovVoter.gvRole
d_gvRole_1072 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_872 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovRole_782
d_gvRole_1072 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvRole_878
      (coe v0)
-- Ledger.Core.Specification.Abstract._.RewardAddress.net
d_net_1518 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_1518 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Core.Specification.Abstract._.RewardAddress.stake
d_stake_1520 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1520 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Core.Specification.Abstract._.DCert
d_DCert_1808 a0 = ()
-- Ledger.Core.Specification.Abstract._.ScriptPurpose
d_ScriptPurpose_2192 a0 = ()
-- Ledger.Core.Specification.Abstract._.TxInfo
d_TxInfo_2196 a0 = ()
-- Ledger.Core.Specification.Abstract._.TxInfo.fee
d_fee_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2198 ->
  AgdaAny
d_fee_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_fee_2224
      (coe v0)
-- Ledger.Core.Specification.Abstract._.TxInfo.mint
d_mint_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2198 ->
  AgdaAny
d_mint_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_mint_2226
      (coe v0)
-- Ledger.Core.Specification.Abstract._.TxInfo.realizedInputs
d_realizedInputs_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_realizedInputs_2220
      (coe v0)
-- Ledger.Core.Specification.Abstract._.TxInfo.txCerts
d_txCerts_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2198 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
d_txCerts_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txCerts_2228
      (coe v0)
-- Ledger.Core.Specification.Abstract._.TxInfo.txId
d_txId_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2198 ->
  AgdaAny
d_txId_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txId_2238
      (coe v0)
-- Ledger.Core.Specification.Abstract._.TxInfo.txOuts
d_txOuts_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txOuts_2222
      (coe v0)
-- Ledger.Core.Specification.Abstract._.TxInfo.txVldt
d_txVldt_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txVldt_2232
      (coe v0)
-- Ledger.Core.Specification.Abstract._.TxInfo.txWithdrawals
d_txWithdrawals_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txWithdrawals_2230
      (coe v0)
-- Ledger.Core.Specification.Abstract._.TxInfo.txdats
d_txdats_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2198 ->
  [AgdaAny]
d_txdats_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txdats_2236
      (coe v0)
-- Ledger.Core.Specification.Abstract._.TxInfo.vkKey
d_vkKey_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2198 ->
  [AgdaAny]
d_vkKey_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_vkKey_2234
      (coe v0)
-- Ledger.Core.Specification.Abstract.indexOf
d_indexOf_2238 a0 = ()
data T_indexOf_2238
  = C_constructor_2264 (MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
                        [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                       (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                       (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_872 ->
                        [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_872] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
                        [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976] ->
                        Maybe AgdaAny)
-- Ledger.Core.Specification.Abstract.indexOf.indexOfDCert
d_indexOfDCert_2252 ::
  T_indexOf_2238 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  Maybe AgdaAny
d_indexOfDCert_2252 v0
  = case coe v0 of
      C_constructor_2264 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.indexOf.indexOfRewardAddress
d_indexOfRewardAddress_2254 ::
  T_indexOf_2238 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRewardAddress_2254 v0
  = case coe v0 of
      C_constructor_2264 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_2256 ::
  T_indexOf_2238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_2256 v0
  = case coe v0 of
      C_constructor_2264 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_2258 ::
  T_indexOf_2238 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_2258 v0
  = case coe v0 of
      C_constructor_2264 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.indexOf.indexOfVote
d_indexOfVote_2260 ::
  T_indexOf_2238 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_872 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_872] ->
  Maybe AgdaAny
d_indexOfVote_2260 v0
  = case coe v0 of
      C_constructor_2264 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.indexOf.indexOfProposal
d_indexOfProposal_2262 ::
  T_indexOf_2238 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976] ->
  Maybe AgdaAny
d_indexOfProposal_2262 v0
  = case coe v0 of
      C_constructor_2264 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.AbstractFunctions
d_AbstractFunctions_2266 a0 = ()
data T_AbstractFunctions_2266
  = C_constructor_2292 (AgdaAny -> AgdaAny -> Integer)
                       (AgdaAny -> Integer) T_indexOf_2238
                       (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                       (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
                       (MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2198 ->
                        MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2184 ->
                        AgdaAny)
-- Ledger.Core.Specification.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_2280 ::
  T_AbstractFunctions_2266 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_2280 v0
  = case coe v0 of
      C_constructor_2292 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.AbstractFunctions.serSize
d_serSize_2282 :: T_AbstractFunctions_2266 -> AgdaAny -> Integer
d_serSize_2282 v0
  = case coe v0 of
      C_constructor_2292 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_2284 :: T_AbstractFunctions_2266 -> T_indexOf_2238
d_indexOfImp_2284 v0
  = case coe v0 of
      C_constructor_2292 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_2286 ::
  T_AbstractFunctions_2266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_2286 v0
  = case coe v0 of
      C_constructor_2292 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.AbstractFunctions.scriptSize
d_scriptSize_2288 ::
  T_AbstractFunctions_2266 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2288 v0
  = case coe v0 of
      C_constructor_2292 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.AbstractFunctions.valContext
d_valContext_2290 ::
  T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2198 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2184 ->
  AgdaAny
d_valContext_2290 v0
  = case coe v0 of
      C_constructor_2292 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
