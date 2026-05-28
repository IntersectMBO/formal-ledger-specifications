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
d_DirectDeposits_208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_DirectDeposits_208 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal
d_GovProposal_250 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovVoter
d_GovVoter_264 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.THash
d_THash_660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_660 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.RewardAddress
d_RewardAddress_790 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.Slot
d_Slot_866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_866 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.TxOut
d_TxOut_922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxOut_922 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.UTxO
d_UTxO_932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_932 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.Value
d_Value_962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Value_962 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.Withdrawals
d_Withdrawals_972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Withdrawals_972 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.action
d_action_1372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876
d_action_1372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_990
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.anchor
d_anchor_1374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_910
d_anchor_1374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1000
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.deposit
d_deposit_1376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  Integer
d_deposit_1376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_996
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.policy
d_policy_1378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  Maybe AgdaAny
d_policy_1378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_994
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.prevAction
d_prevAction_1380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  AgdaAny
d_prevAction_1380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_992
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovProposal.returnAddr
d_returnAddr_1382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_998
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovVoter.gvCredential
d_gvCredential_1404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  AgdaAny
d_gvCredential_1404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_906
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovVoter.gvRole
d_gvRole_1406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848
d_gvRole_1406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_904
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovernanceActions.GovProposal
d_GovProposal_1476 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.GovernanceActions.GovVoter
d_GovVoter_1488 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.RewardAddress.net
d_net_2254 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_2254 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.RewardAddress.stake
d_stake_2256 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2256 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose._.DCert
d_DCert_2608 a0 = ()
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.ScriptPurposeData
d_ScriptPurposeData_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40 ->
  ()
d_ScriptPurposeData_3004 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.ScriptPurpose
d_ScriptPurpose_3006 a0 = ()
data T_ScriptPurpose_3006
  = C_'10214'_'44'_'10215''738''7510'_3016 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40
                                           AgdaAny
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.ScriptPurpose.tag
d_tag_3012 ::
  T_ScriptPurpose_3006 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40
d_tag_3012 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738''7510'_3016 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.ScriptPurpose.data′
d_data'8242'_3014 :: T_ScriptPurpose_3006 -> AgdaAny
d_data'8242'_3014 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738''7510'_3016 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo
d_TxInfo_3018 a0 = ()
data T_TxInfo_3018
  = C_constructor_3078 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (Maybe Integer) AgdaAny
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny]
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                       [AgdaAny] AgdaAny (Maybe [T_TxInfo_3018])
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.SubTxInfo
d_SubTxInfo_3020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubTxInfo_3020 = erased
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.realizedInputs
d_realizedInputs_3050 ::
  T_TxInfo_3018 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_3050 v0
  = case coe v0 of
      C_constructor_3078 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txOuts
d_txOuts_3052 ::
  T_TxInfo_3018 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3052 v0
  = case coe v0 of
      C_constructor_3078 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txFee
d_txFee_3054 :: T_TxInfo_3018 -> Maybe Integer
d_txFee_3054 v0
  = case coe v0 of
      C_constructor_3078 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.mint
d_mint_3056 :: T_TxInfo_3018 -> AgdaAny
d_mint_3056 v0
  = case coe v0 of
      C_constructor_3078 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txCerts
d_txCerts_3058 ::
  T_TxInfo_3018 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288]
d_txCerts_3058 v0
  = case coe v0 of
      C_constructor_3078 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txWithdrawals
d_txWithdrawals_3060 ::
  T_TxInfo_3018 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3060 v0
  = case coe v0 of
      C_constructor_3078 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txVldt
d_txVldt_3062 ::
  T_TxInfo_3018 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3062 v0
  = case coe v0 of
      C_constructor_3078 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.vkKey
d_vkKey_3064 :: T_TxInfo_3018 -> [AgdaAny]
d_vkKey_3064 v0
  = case coe v0 of
      C_constructor_3078 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txGuards
d_txGuards_3066 ::
  T_TxInfo_3018 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3066 v0
  = case coe v0 of
      C_constructor_3078 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txData
d_txData_3068 :: T_TxInfo_3018 -> [AgdaAny]
d_txData_3068 v0
  = case coe v0 of
      C_constructor_3078 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txId
d_txId_3070 :: T_TxInfo_3018 -> AgdaAny
d_txId_3070 v0
  = case coe v0 of
      C_constructor_3078 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txInfoSubTxs
d_txInfoSubTxs_3072 :: T_TxInfo_3018 -> Maybe [T_TxInfo_3018]
d_txInfoSubTxs_3072 v0
  = case coe v0 of
      C_constructor_3078 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txDirectDeposits
d_txDirectDeposits_3074 ::
  T_TxInfo_3018 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3074 v0
  = case coe v0 of
      C_constructor_3078 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.ScriptPurpose.TxInfo.txBalanceIntervals
d_txBalanceIntervals_3076 ::
  T_TxInfo_3018 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3076 v0
  = case coe v0 of
      C_constructor_3078 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
