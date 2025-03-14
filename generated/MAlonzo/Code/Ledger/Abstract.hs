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

module MAlonzo.Code.Ledger.Abstract where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Transaction

-- Ledger.Abstract._.CostModel
d_CostModel_42 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CostModel_42 = erased
-- Ledger.Abstract._.T
d_T_48 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_T_48 = erased
-- Ledger.Abstract._.ExUnits
d_ExUnits_148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_148 = erased
-- Ledger.Abstract._.GovProposal
d_GovProposal_162 a0 = ()
-- Ledger.Abstract._.MemoryEstimate
d_MemoryEstimate_202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_202 = erased
-- Ledger.Abstract._.PlutusScript
d_PlutusScript_224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_224 = erased
-- Ledger.Abstract._.Prices
d_Prices_244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Prices_244 = erased
-- Ledger.Abstract._.RwdAddr
d_RwdAddr_268 a0 = ()
-- Ledger.Abstract._.Script
d_Script_276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_276 = erased
-- Ledger.Abstract._.ScriptHash
d_ScriptHash_284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_284 = erased
-- Ledger.Abstract._.TxIn
d_TxIn_368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_368 = erased
-- Ledger.Abstract._.Value
d_Value_394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_394 = erased
-- Ledger.Abstract._.Voter
d_Voter_398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_398 = erased
-- Ledger.Abstract._.Wdrl
d_Wdrl_400 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_400 = erased
-- Ledger.Abstract._.GovProposal.action
d_action_710 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_712
d_action_710 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_770 (coe v0)
-- Ledger.Abstract._.GovProposal.anchor
d_anchor_712 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_712 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_780 (coe v0)
-- Ledger.Abstract._.GovProposal.deposit
d_deposit_714 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756 -> Integer
d_deposit_714 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_776 (coe v0)
-- Ledger.Abstract._.GovProposal.policy
d_policy_716 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756 ->
  Maybe AgdaAny
d_policy_716 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_774 (coe v0)
-- Ledger.Abstract._.GovProposal.prevAction
d_prevAction_718 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756 -> AgdaAny
d_prevAction_718 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_772 (coe v0)
-- Ledger.Abstract._.GovProposal.returnAddr
d_returnAddr_720 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_720 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_778 (coe v0)
-- Ledger.Abstract._.GovernanceActions.GovProposal
d_GovProposal_768 a0 = ()
-- Ledger.Abstract._.RwdAddr.net
d_net_1184 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1184 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Abstract._.RwdAddr.stake
d_stake_1186 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1186 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Abstract._.DCert
d_DCert_1526 a0 = ()
-- Ledger.Abstract.indexOf
d_indexOf_1724 a0 = ()
data T_indexOf_1724
  = C_indexOf'46'constructor_3109 (MAlonzo.Code.Ledger.Certs.T_DCert_852 ->
                                   [MAlonzo.Code.Ledger.Certs.T_DCert_852] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756 ->
                                   [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756] ->
                                   Maybe AgdaAny)
-- Ledger.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1738 ::
  T_indexOf_1724 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_852 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_852] -> Maybe AgdaAny
d_indexOfDCert_1738 v0
  = case coe v0 of
      C_indexOf'46'constructor_3109 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1740 ::
  T_indexOf_1724 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1740 v0
  = case coe v0 of
      C_indexOf'46'constructor_3109 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1742 ::
  T_indexOf_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1742 v0
  = case coe v0 of
      C_indexOf'46'constructor_3109 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1744 ::
  T_indexOf_1724 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1744 v0
  = case coe v0 of
      C_indexOf'46'constructor_3109 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfVote
d_indexOfVote_1746 ::
  T_indexOf_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1746 v0
  = case coe v0 of
      C_indexOf'46'constructor_3109 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1748 ::
  T_indexOf_1724 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756] ->
  Maybe AgdaAny
d_indexOfProposal_1748 v0
  = case coe v0 of
      C_indexOf'46'constructor_3109 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions
d_AbstractFunctions_1750 a0 = ()
data T_AbstractFunctions_1750
  = C_AbstractFunctions'46'constructor_3401 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1724
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1762 ::
  T_AbstractFunctions_1750 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1762 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3401 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.serSize
d_serSize_1764 :: T_AbstractFunctions_1750 -> AgdaAny -> Integer
d_serSize_1764 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3401 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1766 :: T_AbstractFunctions_1750 -> T_indexOf_1724
d_indexOfImp_1766 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3401 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_1768 ::
  T_AbstractFunctions_1750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_1768 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3401 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.scriptSize
d_scriptSize_1770 ::
  T_AbstractFunctions_1750 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_1770 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3401 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
