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
d_ExUnits_146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_146 = erased
-- Ledger.Abstract._.GovProposal
d_GovProposal_160 a0 = ()
-- Ledger.Abstract._.MemoryEstimate
d_MemoryEstimate_200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_200 = erased
-- Ledger.Abstract._.PlutusScript
d_PlutusScript_222 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_222 = erased
-- Ledger.Abstract._.Prices
d_Prices_242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Prices_242 = erased
-- Ledger.Abstract._.RwdAddr
d_RwdAddr_266 a0 = ()
-- Ledger.Abstract._.Script
d_Script_274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_274 = erased
-- Ledger.Abstract._.ScriptHash
d_ScriptHash_282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_282 = erased
-- Ledger.Abstract._.TxIn
d_TxIn_364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_364 = erased
-- Ledger.Abstract._.Value
d_Value_390 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_390 = erased
-- Ledger.Abstract._.Voter
d_Voter_394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_394 = erased
-- Ledger.Abstract._.Wdrl
d_Wdrl_396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_396 = erased
-- Ledger.Abstract._.GovProposal.action
d_action_694 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_action_694 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_762 (coe v0)
-- Ledger.Abstract._.GovProposal.anchor
d_anchor_696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_696 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_772 (coe v0)
-- Ledger.Abstract._.GovProposal.deposit
d_deposit_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 -> Integer
d_deposit_698 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_768 (coe v0)
-- Ledger.Abstract._.GovProposal.policy
d_policy_700 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  Maybe AgdaAny
d_policy_700 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_766 (coe v0)
-- Ledger.Abstract._.GovProposal.prevAction
d_prevAction_702 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 -> AgdaAny
d_prevAction_702 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_764 (coe v0)
-- Ledger.Abstract._.GovProposal.returnAddr
d_returnAddr_704 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_704 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_770 (coe v0)
-- Ledger.Abstract._.GovernanceActions.GovProposal
d_GovProposal_750 a0 = ()
-- Ledger.Abstract._.RwdAddr.net
d_net_1158 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1158 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Abstract._.RwdAddr.stake
d_stake_1160 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1160 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Abstract._.DCert
d_DCert_1500 a0 = ()
-- Ledger.Abstract.indexOf
d_indexOf_1698 a0 = ()
data T_indexOf_1698
  = C_indexOf'46'constructor_2943 (MAlonzo.Code.Ledger.Certs.T_DCert_836 ->
                                   [MAlonzo.Code.Ledger.Certs.T_DCert_836] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
                                   [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748] ->
                                   Maybe AgdaAny)
-- Ledger.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1712 ::
  T_indexOf_1698 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_836 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_836] -> Maybe AgdaAny
d_indexOfDCert_1712 v0
  = case coe v0 of
      C_indexOf'46'constructor_2943 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1714 ::
  T_indexOf_1698 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1714 v0
  = case coe v0 of
      C_indexOf'46'constructor_2943 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1716 ::
  T_indexOf_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1716 v0
  = case coe v0 of
      C_indexOf'46'constructor_2943 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1718 ::
  T_indexOf_1698 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1718 v0
  = case coe v0 of
      C_indexOf'46'constructor_2943 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfVote
d_indexOfVote_1720 ::
  T_indexOf_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1720 v0
  = case coe v0 of
      C_indexOf'46'constructor_2943 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1722 ::
  T_indexOf_1698 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748] ->
  Maybe AgdaAny
d_indexOfProposal_1722 v0
  = case coe v0 of
      C_indexOf'46'constructor_2943 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions
d_AbstractFunctions_1724 a0 = ()
data T_AbstractFunctions_1724
  = C_AbstractFunctions'46'constructor_3235 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1698
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1736 ::
  T_AbstractFunctions_1724 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1736 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3235 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.serSize
d_serSize_1738 :: T_AbstractFunctions_1724 -> AgdaAny -> Integer
d_serSize_1738 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3235 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1740 :: T_AbstractFunctions_1724 -> T_indexOf_1698
d_indexOfImp_1740 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3235 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_1742 ::
  T_AbstractFunctions_1724 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_1742 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3235 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.scriptSize
d_scriptSize_1744 ::
  T_AbstractFunctions_1724 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_1744 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3235 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
