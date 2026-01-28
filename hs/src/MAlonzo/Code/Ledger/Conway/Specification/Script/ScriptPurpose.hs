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
d_Datum_78 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Datum_78 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovProposal
d_GovProposal_196 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovVoter
d_GovVoter_210 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose._.THash
d_THash_374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_374 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.RewardAddress
d_RewardAddress_468 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose._.ScriptHash
d_ScriptHash_486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_486 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.Slot
d_Slot_540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_540 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.TxIn
d_TxIn_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_582 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.TxOut
d_TxOut_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_584 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.UTxO
d_UTxO_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_592 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.Value
d_Value_612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_612 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.Withdrawals
d_Withdrawals_622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_622 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal
d_GovProposal_962 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovVoter
d_GovVoter_974 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.action
d_action_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_838
d_action_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1000
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.anchor
d_anchor_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_894
d_anchor_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1010
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.deposit
d_deposit_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986 ->
  Integer
d_deposit_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1006
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.policy
d_policy_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986 ->
  Maybe AgdaAny
d_policy_1110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1004
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.prevAction
d_prevAction_1112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986 ->
  AgdaAny
d_prevAction_1112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1002
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.returnAddr
d_returnAddr_1114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1008
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovVoter.gvCredential
d_gvCredential_1136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_882 ->
  AgdaAny
d_gvCredential_1136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_890
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovVoter.gvRole
d_gvRole_1138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_882 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_792
d_gvRole_1138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_888
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.RewardAddress.net
d_net_1604 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_1604 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.RewardAddress.stake
d_stake_1606 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1606 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.DCert
d_DCert_1948 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose.ScriptPurpose
d_ScriptPurpose_2322 a0 = ()
data T_ScriptPurpose_2322
  = C_Cert_2324 MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292 |
    C_Rwrd_2326 MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 |
    C_Mint_2328 AgdaAny |
    C_Spend_2330 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_2332 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_882 |
    C_Propose_2334 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo
d_TxInfo_2336 a0 = ()
data T_TxInfo_2336
  = C_constructor_2378 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                       [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny] [AgdaAny] AgdaAny
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.realizedInputs
d_realizedInputs_2358 ::
  T_TxInfo_2336 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_2358 v0
  = case coe v0 of
      C_constructor_2378 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txOuts
d_txOuts_2360 ::
  T_TxInfo_2336 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2360 v0
  = case coe v0 of
      C_constructor_2378 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.fee
d_fee_2362 :: T_TxInfo_2336 -> AgdaAny
d_fee_2362 v0
  = case coe v0 of
      C_constructor_2378 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.mint
d_mint_2364 :: T_TxInfo_2336 -> AgdaAny
d_mint_2364 v0
  = case coe v0 of
      C_constructor_2378 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txCerts
d_txCerts_2366 ::
  T_TxInfo_2336 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
d_txCerts_2366 v0
  = case coe v0 of
      C_constructor_2378 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txWithdrawals
d_txWithdrawals_2368 ::
  T_TxInfo_2336 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2368 v0
  = case coe v0 of
      C_constructor_2378 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txVldt
d_txVldt_2370 ::
  T_TxInfo_2336 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2370 v0
  = case coe v0 of
      C_constructor_2378 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.vkKey
d_vkKey_2372 :: T_TxInfo_2336 -> [AgdaAny]
d_vkKey_2372 v0
  = case coe v0 of
      C_constructor_2378 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txdats
d_txdats_2374 :: T_TxInfo_2336 -> [AgdaAny]
d_txdats_2374 v0
  = case coe v0 of
      C_constructor_2378 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txId
d_txId_2376 :: T_TxInfo_2336 -> AgdaAny
d_txId_2376 v0
  = case coe v0 of
      C_constructor_2378 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
