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
d_RewardAddress_466 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose._.ScriptHash
d_ScriptHash_484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_484 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.Slot
d_Slot_534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_534 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.TxIn
d_TxIn_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_576 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.TxOut
d_TxOut_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_578 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.UTxO
d_UTxO_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_586 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.Value
d_Value_606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_606 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.Withdrawals
d_Withdrawals_616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_616 = erased
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal
d_GovProposal_956 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovVoter
d_GovVoter_968 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.action
d_action_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830
d_action_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_992
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.anchor
d_anchor_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_886
d_anchor_1100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1002
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.deposit
d_deposit_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  Integer
d_deposit_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_998
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.policy
d_policy_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  Maybe AgdaAny
d_policy_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_996
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.prevAction
d_prevAction_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  AgdaAny
d_prevAction_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_994
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovProposal.returnAddr
d_returnAddr_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1000
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovVoter.gvCredential
d_gvCredential_1130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874 ->
  AgdaAny
d_gvCredential_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_882
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.GovActions.GovVoter.gvRole
d_gvRole_1132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_784
d_gvRole_1132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_880
      (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.RewardAddress.net
d_net_1594 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_1594 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.RewardAddress.stake
d_stake_1596 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1596 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Script.ScriptPurpose._.DCert
d_DCert_1936 a0 = ()
-- Ledger.Conway.Specification.Script.ScriptPurpose.ScriptPurpose
d_ScriptPurpose_2310 a0 = ()
data T_ScriptPurpose_2310
  = C_Cert_2312 MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1284 |
    C_Rwrd_2314 MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 |
    C_Mint_2316 AgdaAny |
    C_Spend_2318 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_2320 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874 |
    C_Propose_2322 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo
d_TxInfo_2324 a0 = ()
data T_TxInfo_2324
  = C_constructor_2366 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                       [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1284]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny] [AgdaAny] AgdaAny
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.realizedInputs
d_realizedInputs_2346 ::
  T_TxInfo_2324 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_2346 v0
  = case coe v0 of
      C_constructor_2366 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txOuts
d_txOuts_2348 ::
  T_TxInfo_2324 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2348 v0
  = case coe v0 of
      C_constructor_2366 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.fee
d_fee_2350 :: T_TxInfo_2324 -> AgdaAny
d_fee_2350 v0
  = case coe v0 of
      C_constructor_2366 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.mint
d_mint_2352 :: T_TxInfo_2324 -> AgdaAny
d_mint_2352 v0
  = case coe v0 of
      C_constructor_2366 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txCerts
d_txCerts_2354 ::
  T_TxInfo_2324 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1284]
d_txCerts_2354 v0
  = case coe v0 of
      C_constructor_2366 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txWithdrawals
d_txWithdrawals_2356 ::
  T_TxInfo_2324 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2356 v0
  = case coe v0 of
      C_constructor_2366 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txVldt
d_txVldt_2358 ::
  T_TxInfo_2324 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2358 v0
  = case coe v0 of
      C_constructor_2366 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.vkKey
d_vkKey_2360 :: T_TxInfo_2324 -> [AgdaAny]
d_vkKey_2360 v0
  = case coe v0 of
      C_constructor_2366 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txdats
d_txdats_2362 :: T_TxInfo_2324 -> [AgdaAny]
d_txdats_2362 v0
  = case coe v0 of
      C_constructor_2366 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.ScriptPurpose.TxInfo.txId
d_txId_2364 :: T_TxInfo_2324 -> AgdaAny
d_txId_2364 v0
  = case coe v0 of
      C_constructor_2366 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
