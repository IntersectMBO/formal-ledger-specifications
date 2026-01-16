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
d_GovProposal_960 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovVoter
d_GovVoter_972 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.action
d_action_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_836
d_action_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_998
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.anchor
d_anchor_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_892
d_anchor_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1008
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.deposit
d_deposit_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984 ->
  Integer
d_deposit_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1004
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.policy
d_policy_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984 ->
  Maybe AgdaAny
d_policy_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1002
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.prevAction
d_prevAction_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984 ->
  AgdaAny
d_prevAction_1110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1000
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.returnAddr
d_returnAddr_1112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1006
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovVoter.gvCredential
d_gvCredential_1134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_880 ->
  AgdaAny
d_gvCredential_1134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_888
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovVoter.gvRole
d_gvRole_1136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_880 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_790
d_gvRole_1136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_886
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.RewardAddress.net
d_net_1602 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_1602 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.RewardAddress.stake
d_stake_1604 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1604 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.DCert
d_DCert_1944 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose.ScriptPurpose
d_ScriptPurpose_2318 a0 = ()
data T_ScriptPurpose_2318
  = C_Cert_2320 MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290 |
    C_Rwrd_2322 MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 |
    C_Mint_2324 AgdaAny |
    C_Spend_2326 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_2328 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_880 |
    C_Propose_2330 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo
d_TxInfo_2332 a0 = ()
data T_TxInfo_2332
  = C_constructor_2374 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                       [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny] [AgdaAny] AgdaAny
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.realizedInputs
d_realizedInputs_2354 ::
  T_TxInfo_2332 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_2354 v0
  = case coe v0 of
      C_constructor_2374 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txOuts
d_txOuts_2356 ::
  T_TxInfo_2332 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2356 v0
  = case coe v0 of
      C_constructor_2374 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.fee
d_fee_2358 :: T_TxInfo_2332 -> AgdaAny
d_fee_2358 v0
  = case coe v0 of
      C_constructor_2374 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.mint
d_mint_2360 :: T_TxInfo_2332 -> AgdaAny
d_mint_2360 v0
  = case coe v0 of
      C_constructor_2374 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txCerts
d_txCerts_2362 ::
  T_TxInfo_2332 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
d_txCerts_2362 v0
  = case coe v0 of
      C_constructor_2374 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txWithdrawals
d_txWithdrawals_2364 ::
  T_TxInfo_2332 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2364 v0
  = case coe v0 of
      C_constructor_2374 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txVldt
d_txVldt_2366 ::
  T_TxInfo_2332 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2366 v0
  = case coe v0 of
      C_constructor_2374 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.vkKey
d_vkKey_2368 :: T_TxInfo_2332 -> [AgdaAny]
d_vkKey_2368 v0
  = case coe v0 of
      C_constructor_2374 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txdats
d_txdats_2370 :: T_TxInfo_2332 -> [AgdaAny]
d_txdats_2370 v0
  = case coe v0 of
      C_constructor_2374 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txId
d_txId_2372 :: T_TxInfo_2332 -> AgdaAny
d_txId_2372 v0
  = case coe v0 of
      C_constructor_2374 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
