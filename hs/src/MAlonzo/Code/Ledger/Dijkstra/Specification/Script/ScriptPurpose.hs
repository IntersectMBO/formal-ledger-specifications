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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction

-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.AccountBalanceIntervals
d_AccountBalanceIntervals_38 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_AccountBalanceIntervals_38 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.Credential
d_Credential_86 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.Datum
d_Datum_108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Datum_108 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.DirectDeposits
d_DirectDeposits_210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_DirectDeposits_210 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal
d_GovProposal_254 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovVoter
d_GovVoter_268 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.THash
d_THash_666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_666 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.RewardAddress
d_RewardAddress_796 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.Slot
d_Slot_872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_872 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.TxOut
d_TxOut_928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxOut_928 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.UTxO
d_UTxO_938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_938 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.Value
d_Value_970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Value_970 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.Withdrawals
d_Withdrawals_980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Withdrawals_980 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.action
d_action_1384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_912
d_action_1384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1026
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.anchor
d_anchor_1386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_946
d_anchor_1386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1036
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.deposit
d_deposit_1388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1012 ->
  Integer
d_deposit_1388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1032
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.policy
d_policy_1390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1012 ->
  Maybe AgdaAny
d_policy_1390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1030
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.prevAction
d_prevAction_1392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1012 ->
  AgdaAny
d_prevAction_1392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1028
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.returnAddr
d_returnAddr_1394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1012 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1034
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovVoter.gvCredential
d_gvCredential_1416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_934 ->
  AgdaAny
d_gvCredential_1416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_942
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovVoter.gvRole
d_gvRole_1418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_934 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_884
d_gvRole_1418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_940
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovernanceActions.GovProposal
d_GovProposal_1488 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovernanceActions.GovVoter
d_GovVoter_1500 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.RewardAddress.net
d_net_2272 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_2272 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.RewardAddress.stake
d_stake_2274 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2274 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.DCert
d_DCert_2628 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.ScriptPurposeData
d_ScriptPurposeData_3062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40 ->
  ()
d_ScriptPurposeData_3062 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.ScriptPurpose
d_ScriptPurpose_3064 a0 = ()
data T_ScriptPurpose_3064
  = C_'10214'_'44'_'10215''738''7510'_3074 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40
                                           AgdaAny
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.ScriptPurpose.tag
d_tag_3070 ::
  T_ScriptPurpose_3064 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40
d_tag_3070 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738''7510'_3074 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.ScriptPurpose.data′
d_data'8242'_3072 :: T_ScriptPurpose_3064 -> AgdaAny
d_data'8242'_3072 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738''7510'_3074 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo
d_TxInfo_3076 a0 = ()
data T_TxInfo_3076
  = C_constructor_3136 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (Maybe Integer) AgdaAny
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1336]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny]
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                       [AgdaAny] AgdaAny (Maybe [T_TxInfo_3076])
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.SubTxInfo
d_SubTxInfo_3078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubTxInfo_3078 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.realizedInputs
d_realizedInputs_3108 ::
  T_TxInfo_3076 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_3108 v0
  = case coe v0 of
      C_constructor_3136 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txOuts
d_txOuts_3110 ::
  T_TxInfo_3076 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3110 v0
  = case coe v0 of
      C_constructor_3136 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txFee
d_txFee_3112 :: T_TxInfo_3076 -> Maybe Integer
d_txFee_3112 v0
  = case coe v0 of
      C_constructor_3136 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.mint
d_mint_3114 :: T_TxInfo_3076 -> AgdaAny
d_mint_3114 v0
  = case coe v0 of
      C_constructor_3136 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txCerts
d_txCerts_3116 ::
  T_TxInfo_3076 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1336]
d_txCerts_3116 v0
  = case coe v0 of
      C_constructor_3136 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txWithdrawals
d_txWithdrawals_3118 ::
  T_TxInfo_3076 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3118 v0
  = case coe v0 of
      C_constructor_3136 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txVldt
d_txVldt_3120 ::
  T_TxInfo_3076 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3120 v0
  = case coe v0 of
      C_constructor_3136 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.vkKey
d_vkKey_3122 :: T_TxInfo_3076 -> [AgdaAny]
d_vkKey_3122 v0
  = case coe v0 of
      C_constructor_3136 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txGuards
d_txGuards_3124 ::
  T_TxInfo_3076 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3124 v0
  = case coe v0 of
      C_constructor_3136 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txData
d_txData_3126 :: T_TxInfo_3076 -> [AgdaAny]
d_txData_3126 v0
  = case coe v0 of
      C_constructor_3136 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txId
d_txId_3128 :: T_TxInfo_3076 -> AgdaAny
d_txId_3128 v0
  = case coe v0 of
      C_constructor_3136 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txInfoSubTxs
d_txInfoSubTxs_3130 :: T_TxInfo_3076 -> Maybe [T_TxInfo_3076]
d_txInfoSubTxs_3130 v0
  = case coe v0 of
      C_constructor_3136 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txDirectDeposits
d_txDirectDeposits_3132 ::
  T_TxInfo_3076 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3132 v0
  = case coe v0 of
      C_constructor_3136 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txBalanceIntervals
d_txBalanceIntervals_3134 ::
  T_TxInfo_3076 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3134 v0
  = case coe v0 of
      C_constructor_3136 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
