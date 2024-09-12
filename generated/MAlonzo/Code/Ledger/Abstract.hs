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
d_CostModel_66 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CostModel_66 = erased
-- Ledger.Abstract._.DCert
d_DCert_72 a0 = ()
-- Ledger.Abstract._.T
d_T_86 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_T_86 = erased
-- Ledger.Abstract._.ExUnits
d_ExUnits_196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_196 = erased
-- Ledger.Abstract._.GovProposal
d_GovProposal_220 a0 = ()
-- Ledger.Abstract._.MemoryEstimate
d_MemoryEstimate_262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_262 = erased
-- Ledger.Abstract._.PlutusScript
d_PlutusScript_286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_286 = erased
-- Ledger.Abstract._.Prices
d_Prices_320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Prices_320 = erased
-- Ledger.Abstract._.RwdAddr
d_RwdAddr_344 a0 = ()
-- Ledger.Abstract._.Script
d_Script_352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_352 = erased
-- Ledger.Abstract._.ScriptHash
d_ScriptHash_360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_360 = erased
-- Ledger.Abstract._.TxIn
d_TxIn_444 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_444 = erased
-- Ledger.Abstract._.Value
d_Value_470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_470 = erased
-- Ledger.Abstract._.Voter
d_Voter_476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_476 = erased
-- Ledger.Abstract._.Wdrl
d_Wdrl_478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_478 = erased
-- Ledger.Abstract._.GovProposal.action
d_action_932 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_694
d_action_932 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_768 (coe v0)
-- Ledger.Abstract._.GovProposal.anchor
d_anchor_934 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_934 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_778 (coe v0)
-- Ledger.Abstract._.GovProposal.deposit
d_deposit_936 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 -> Integer
d_deposit_936 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_774 (coe v0)
-- Ledger.Abstract._.GovProposal.policy
d_policy_938 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  Maybe AgdaAny
d_policy_938 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_772 (coe v0)
-- Ledger.Abstract._.GovProposal.prevAction
d_prevAction_940 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 -> AgdaAny
d_prevAction_940 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_770 (coe v0)
-- Ledger.Abstract._.GovProposal.returnAddr
d_returnAddr_942 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_942 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_776 (coe v0)
-- Ledger.Abstract._.RwdAddr.net
d_net_1298 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1298 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Abstract._.RwdAddr.stake
d_stake_1300 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1300 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Abstract.indexOf
d_indexOf_1624 a0 = ()
data T_indexOf_1624
  = C_indexOf'46'constructor_2649 (MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
                                   [MAlonzo.Code.Ledger.Certs.T_DCert_834] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
                                   [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754] ->
                                   Maybe AgdaAny)
-- Ledger.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1638 ::
  T_indexOf_1624 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] -> Maybe AgdaAny
d_indexOfDCert_1638 v0
  = case coe v0 of
      C_indexOf'46'constructor_2649 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1640 ::
  T_indexOf_1624 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1640 v0
  = case coe v0 of
      C_indexOf'46'constructor_2649 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1642 ::
  T_indexOf_1624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1642 v0
  = case coe v0 of
      C_indexOf'46'constructor_2649 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1644 ::
  T_indexOf_1624 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1644 v0
  = case coe v0 of
      C_indexOf'46'constructor_2649 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfVote
d_indexOfVote_1646 ::
  T_indexOf_1624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1646 v0
  = case coe v0 of
      C_indexOf'46'constructor_2649 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1648 ::
  T_indexOf_1624 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754] ->
  Maybe AgdaAny
d_indexOfProposal_1648 v0
  = case coe v0 of
      C_indexOf'46'constructor_2649 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions
d_AbstractFunctions_1650 a0 = ()
data T_AbstractFunctions_1650
  = C_AbstractFunctions'46'constructor_2941 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1624
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1662 ::
  T_AbstractFunctions_1650 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1662 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2941 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.serSize
d_serSize_1664 :: T_AbstractFunctions_1650 -> AgdaAny -> Integer
d_serSize_1664 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2941 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1666 :: T_AbstractFunctions_1650 -> T_indexOf_1624
d_indexOfImp_1666 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2941 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_1668 ::
  T_AbstractFunctions_1650 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_1668 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2941 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.scriptSize
d_scriptSize_1670 ::
  T_AbstractFunctions_1650 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_1670 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2941 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
