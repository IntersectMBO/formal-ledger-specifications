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
d_CostModel_38 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CostModel_38 = erased
-- Ledger.Abstract._.T
d_T_44 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_T_44 = erased
-- Ledger.Abstract._.ExUnits
d_ExUnits_142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_142 = erased
-- Ledger.Abstract._.GovProposal
d_GovProposal_156 a0 = ()
-- Ledger.Abstract._.MemoryEstimate
d_MemoryEstimate_196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_196 = erased
-- Ledger.Abstract._.PlutusScript
d_PlutusScript_218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_218 = erased
-- Ledger.Abstract._.Prices
d_Prices_238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Prices_238 = erased
-- Ledger.Abstract._.RwdAddr
d_RwdAddr_262 a0 = ()
-- Ledger.Abstract._.Script
d_Script_270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_270 = erased
-- Ledger.Abstract._.ScriptHash
d_ScriptHash_278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_278 = erased
-- Ledger.Abstract._.TxIn
d_TxIn_360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_360 = erased
-- Ledger.Abstract._.Value
d_Value_386 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_386 = erased
-- Ledger.Abstract._.Voter
d_Voter_390 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_390 = erased
-- Ledger.Abstract._.Wdrl
d_Wdrl_392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_392 = erased
-- Ledger.Abstract._.GovProposal.action
d_action_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_714
d_action_698 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_772 (coe v0)
-- Ledger.Abstract._.GovProposal.anchor
d_anchor_700 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_686
d_anchor_700 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_782 (coe v0)
-- Ledger.Abstract._.GovProposal.deposit
d_deposit_702 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 -> Integer
d_deposit_702 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_778 (coe v0)
-- Ledger.Abstract._.GovProposal.policy
d_policy_704 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  Maybe AgdaAny
d_policy_704 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_776 (coe v0)
-- Ledger.Abstract._.GovProposal.prevAction
d_prevAction_706 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 -> AgdaAny
d_prevAction_706 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_774 (coe v0)
-- Ledger.Abstract._.GovProposal.returnAddr
d_returnAddr_708 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_708 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_780 (coe v0)
-- Ledger.Abstract._.GovernanceActions.GovProposal
d_GovProposal_756 a0 = ()
-- Ledger.Abstract._.RwdAddr.net
d_net_1178 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1178 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Abstract._.RwdAddr.stake
d_stake_1180 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1180 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Abstract._.DCert
d_DCert_1512 a0 = ()
-- Ledger.Abstract.indexOf
d_indexOf_1710 a0 = ()
data T_indexOf_1710
  = C_indexOf'46'constructor_3109 (MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
                                   [MAlonzo.Code.Ledger.Certs.T_DCert_856] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
                                   [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758] ->
                                   Maybe AgdaAny)
-- Ledger.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1724 ::
  T_indexOf_1710 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] -> Maybe AgdaAny
d_indexOfDCert_1724 v0
  = case coe v0 of
      C_indexOf'46'constructor_3109 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1726 ::
  T_indexOf_1710 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1726 v0
  = case coe v0 of
      C_indexOf'46'constructor_3109 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1728 ::
  T_indexOf_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1728 v0
  = case coe v0 of
      C_indexOf'46'constructor_3109 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1730 ::
  T_indexOf_1710 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1730 v0
  = case coe v0 of
      C_indexOf'46'constructor_3109 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfVote
d_indexOfVote_1732 ::
  T_indexOf_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1732 v0
  = case coe v0 of
      C_indexOf'46'constructor_3109 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1734 ::
  T_indexOf_1710 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758] ->
  Maybe AgdaAny
d_indexOfProposal_1734 v0
  = case coe v0 of
      C_indexOf'46'constructor_3109 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions
d_AbstractFunctions_1736 a0 = ()
data T_AbstractFunctions_1736
  = C_AbstractFunctions'46'constructor_3401 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1710
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1748 ::
  T_AbstractFunctions_1736 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1748 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3401 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.serSize
d_serSize_1750 :: T_AbstractFunctions_1736 -> AgdaAny -> Integer
d_serSize_1750 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3401 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1752 :: T_AbstractFunctions_1736 -> T_indexOf_1710
d_indexOfImp_1752 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3401 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_1754 ::
  T_AbstractFunctions_1736 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_1754 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3401 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.scriptSize
d_scriptSize_1756 ::
  T_AbstractFunctions_1736 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_1756 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3401 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
