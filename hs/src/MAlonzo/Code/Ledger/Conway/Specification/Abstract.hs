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

module MAlonzo.Code.Ledger.Conway.Specification.Abstract where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address

-- Ledger.Conway.Specification.Abstract._.CostModel
d_CostModel_56 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_CostModel_56 = erased
-- Ledger.Conway.Specification.Abstract._.T
d_T_70 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_T_70 = erased
-- Ledger.Conway.Specification.Abstract._.ExUnits
d_ExUnits_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_170 = erased
-- Ledger.Conway.Specification.Abstract._.GovProposal
d_GovProposal_194 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovVoter
d_GovVoter_208 a0 = ()
-- Ledger.Conway.Specification.Abstract._.MemoryEstimate
d_MemoryEstimate_384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_384 = erased
-- Ledger.Conway.Specification.Abstract._.PlutusScript
d_PlutusScript_412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_412 = erased
-- Ledger.Conway.Specification.Abstract._.Prices
d_Prices_448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Prices_448 = erased
-- Ledger.Conway.Specification.Abstract._.RewardAddress
d_RewardAddress_464 a0 = ()
-- Ledger.Conway.Specification.Abstract._.Script
d_Script_474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_474 = erased
-- Ledger.Conway.Specification.Abstract._.ScriptHash
d_ScriptHash_482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_482 = erased
-- Ledger.Conway.Specification.Abstract._.TxIn
d_TxIn_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_574 = erased
-- Ledger.Conway.Specification.Abstract._.Value
d_Value_604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_604 = erased
-- Ledger.Conway.Specification.Abstract._.Withdrawals
d_Withdrawals_614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_614 = erased
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal
d_GovProposal_954 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovActions.GovVoter
d_GovVoter_966 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.action
d_action_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830
d_action_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_992
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.anchor
d_anchor_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_886
d_anchor_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1002
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.deposit
d_deposit_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  Integer
d_deposit_1100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_998
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.policy
d_policy_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  Maybe AgdaAny
d_policy_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_996
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.prevAction
d_prevAction_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  AgdaAny
d_prevAction_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_994
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.returnAddr
d_returnAddr_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1000
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovVoter.gvCredential
d_gvCredential_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874 ->
  AgdaAny
d_gvCredential_1128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_882
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovVoter.gvRole
d_gvRole_1130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_784
d_gvRole_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_880
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.RewardAddress.net
d_net_1592 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_1592 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Specification.Abstract._.RewardAddress.stake
d_stake_1594 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1594 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Abstract._.DCert
d_DCert_1934 a0 = ()
-- Ledger.Conway.Specification.Abstract._.ScriptPurpose
d_ScriptPurpose_2318 a0 = ()
-- Ledger.Conway.Specification.Abstract._.TxInfo
d_TxInfo_2322 a0 = ()
-- Ledger.Conway.Specification.Abstract._.TxInfo.fee
d_fee_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2324 ->
  AgdaAny
d_fee_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_fee_2350
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.mint
d_mint_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2324 ->
  AgdaAny
d_mint_2346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_mint_2352
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.realizedInputs
d_realizedInputs_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2324 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_realizedInputs_2346
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txCerts
d_txCerts_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2324 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1284]
d_txCerts_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txCerts_2354
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txId
d_txId_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2324 ->
  AgdaAny
d_txId_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txId_2364
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txOuts
d_txOuts_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2324 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txOuts_2348
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txVldt
d_txVldt_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2324 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txVldt_2358
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txWithdrawals
d_txWithdrawals_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2324 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txWithdrawals_2356
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.txdats
d_txdats_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2324 ->
  [AgdaAny]
d_txdats_2360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txdats_2362
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.TxInfo.vkKey
d_vkKey_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2324 ->
  [AgdaAny]
d_vkKey_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_vkKey_2360
      (coe v0)
-- Ledger.Conway.Specification.Abstract.indexOf
d_indexOf_2364 a0 = ()
data T_indexOf_2364
  = C_constructor_2390 (MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1284 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1284] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                       (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                       (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978] ->
                        Maybe AgdaAny)
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfDCert
d_indexOfDCert_2378 ::
  T_indexOf_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1284 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1284] ->
  Maybe AgdaAny
d_indexOfDCert_2378 v0
  = case coe v0 of
      C_constructor_2390 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfRewardAddress
d_indexOfRewardAddress_2380 ::
  T_indexOf_2364 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRewardAddress_2380 v0
  = case coe v0 of
      C_constructor_2390 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_2382 ::
  T_indexOf_2364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_2382 v0
  = case coe v0 of
      C_constructor_2390 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_2384 ::
  T_indexOf_2364 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_2384 v0
  = case coe v0 of
      C_constructor_2390 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfVote
d_indexOfVote_2386 ::
  T_indexOf_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874] ->
  Maybe AgdaAny
d_indexOfVote_2386 v0
  = case coe v0 of
      C_constructor_2390 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfProposal
d_indexOfProposal_2388 ::
  T_indexOf_2364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978] ->
  Maybe AgdaAny
d_indexOfProposal_2388 v0
  = case coe v0 of
      C_constructor_2390 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions
d_AbstractFunctions_2392 a0 = ()
data T_AbstractFunctions_2392
  = C_constructor_2418 (AgdaAny -> AgdaAny -> Integer)
                       (AgdaAny -> Integer) T_indexOf_2364
                       (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                       (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
                       (MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2324 ->
                        MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2310 ->
                        AgdaAny)
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_2406 ::
  T_AbstractFunctions_2392 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_2406 v0
  = case coe v0 of
      C_constructor_2418 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.serSize
d_serSize_2408 :: T_AbstractFunctions_2392 -> AgdaAny -> Integer
d_serSize_2408 v0
  = case coe v0 of
      C_constructor_2418 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_2410 :: T_AbstractFunctions_2392 -> T_indexOf_2364
d_indexOfImp_2410 v0
  = case coe v0 of
      C_constructor_2418 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_2412 ::
  T_AbstractFunctions_2392 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_2412 v0
  = case coe v0 of
      C_constructor_2418 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.scriptSize
d_scriptSize_2414 ::
  T_AbstractFunctions_2392 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2414 v0
  = case coe v0 of
      C_constructor_2418 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.valContext
d_valContext_2416 ::
  T_AbstractFunctions_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2324 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2310 ->
  AgdaAny
d_valContext_2416 v0
  = case coe v0 of
      C_constructor_2418 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
