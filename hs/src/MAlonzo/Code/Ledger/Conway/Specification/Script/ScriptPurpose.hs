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

module MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address

-- Ledger.Conway.Specification.Script.ScriptPurpose._.Datum
d_Datum_80 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Datum_80 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovProposal
d_GovProposal_198 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovVoter
d_GovVoter_212 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose._.THash
d_THash_388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_388 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.RewardAddress
d_RewardAddress_484 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose._.ScriptHash
d_ScriptHash_502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_502 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.Slot
d_Slot_556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_556 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.TxIn
d_TxIn_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_598 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.TxOut
d_TxOut_600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_600 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.UTxO
d_UTxO_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_608 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.Value
d_Value_628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_628 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.Withdrawals
d_Withdrawals_638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_638 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal
d_GovProposal_978 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovVoter
d_GovVoter_990 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.action
d_action_1120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_860
d_action_1120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1022
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.anchor
d_anchor_1122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_916
d_anchor_1122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1032
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.deposit
d_deposit_1124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  Integer
d_deposit_1124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1028
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.policy
d_policy_1126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  Maybe AgdaAny
d_policy_1126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1026
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.prevAction
d_prevAction_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  AgdaAny
d_prevAction_1128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1024
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.returnAddr
d_returnAddr_1130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1030
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovVoter.gvCredential
d_gvCredential_1152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_904 ->
  AgdaAny
d_gvCredential_1152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_912
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovVoter.gvRole
d_gvRole_1154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_904 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_814
d_gvRole_1154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_910
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.RewardAddress.net
d_net_1628 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_1628 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.RewardAddress.stake
d_stake_1630 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1630 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.DCert
d_DCert_1972 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose.ScriptPurpose
d_ScriptPurpose_2346 a0 = ()
data T_ScriptPurpose_2346
  = C_Cert_2348 MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314 |
    C_Rwrd_2350 MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 |
    C_Mint_2352 AgdaAny |
    C_Spend_2354 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_2356 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_904 |
    C_Propose_2358 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo
d_TxInfo_2360 a0 = ()
data T_TxInfo_2360
  = C_constructor_2402 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                       [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny] [AgdaAny] AgdaAny
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.realizedInputs
d_realizedInputs_2382 ::
  T_TxInfo_2360 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_2382 v0
  = case coe v0 of
      C_constructor_2402 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txOuts
d_txOuts_2384 ::
  T_TxInfo_2360 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2384 v0
  = case coe v0 of
      C_constructor_2402 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.fee
d_fee_2386 :: T_TxInfo_2360 -> AgdaAny
d_fee_2386 v0
  = case coe v0 of
      C_constructor_2402 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.mint
d_mint_2388 :: T_TxInfo_2360 -> AgdaAny
d_mint_2388 v0
  = case coe v0 of
      C_constructor_2402 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txCerts
d_txCerts_2390 ::
  T_TxInfo_2360 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
d_txCerts_2390 v0
  = case coe v0 of
      C_constructor_2402 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txWithdrawals
d_txWithdrawals_2392 ::
  T_TxInfo_2360 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2392 v0
  = case coe v0 of
      C_constructor_2402 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txVldt
d_txVldt_2394 ::
  T_TxInfo_2360 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2394 v0
  = case coe v0 of
      C_constructor_2402 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.vkKey
d_vkKey_2396 :: T_TxInfo_2360 -> [AgdaAny]
d_vkKey_2396 v0
  = case coe v0 of
      C_constructor_2402 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txdats
d_txdats_2398 :: T_TxInfo_2360 -> [AgdaAny]
d_txdats_2398 v0
  = case coe v0 of
      C_constructor_2402 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txId
d_txId_2400 :: T_TxInfo_2360 -> AgdaAny
d_txId_2400 v0
  = case coe v0 of
      C_constructor_2402 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
