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
d_ExUnits_154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_154 = erased
-- Ledger.Abstract._.GovProposal
d_GovProposal_164 a0 = ()
-- Ledger.Abstract._.MemoryEstimate
d_MemoryEstimate_206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_206 = erased
-- Ledger.Abstract._.PlutusScript
d_PlutusScript_228 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_228 = erased
-- Ledger.Abstract._.Prices
d_Prices_250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Prices_250 = erased
-- Ledger.Abstract._.RwdAddr
d_RwdAddr_274 a0 = ()
-- Ledger.Abstract._.Script
d_Script_282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_282 = erased
-- Ledger.Abstract._.ScriptHash
d_ScriptHash_292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_292 = erased
-- Ledger.Abstract._.TxIn
d_TxIn_376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_376 = erased
-- Ledger.Abstract._.Value
d_Value_404 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_404 = erased
-- Ledger.Abstract._.Voter
d_Voter_408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_408 = erased
-- Ledger.Abstract._.Wdrl
d_Wdrl_410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_410 = erased
-- Ledger.Abstract._.GovProposal.action
d_action_732 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_734
d_action_732 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_808 (coe v0)
-- Ledger.Abstract._.GovProposal.anchor
d_anchor_734 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_724
d_anchor_734 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_818 (coe v0)
-- Ledger.Abstract._.GovProposal.deposit
d_deposit_736 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 -> Integer
d_deposit_736 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_814 (coe v0)
-- Ledger.Abstract._.GovProposal.policy
d_policy_738 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 ->
  Maybe AgdaAny
d_policy_738 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_812 (coe v0)
-- Ledger.Abstract._.GovProposal.prevAction
d_prevAction_740 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 -> AgdaAny
d_prevAction_740 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_810 (coe v0)
-- Ledger.Abstract._.GovProposal.returnAddr
d_returnAddr_742 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_86
d_returnAddr_742 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816 (coe v0)
-- Ledger.Abstract._.GovernanceActions.GovProposal
d_GovProposal_784 a0 = ()
-- Ledger.Abstract._.RwdAddr.net
d_net_1192 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_86 -> AgdaAny
d_net_1192 v0 = coe MAlonzo.Code.Ledger.Address.d_net_92 (coe v0)
-- Ledger.Abstract._.RwdAddr.stake
d_stake_1194 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_86 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1194 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_94 (coe v0)
-- Ledger.Abstract._.DCert
d_DCert_1536 a0 = ()
-- Ledger.Abstract.indexOf
d_indexOf_1718 a0 = ()
data T_indexOf_1718
  = C_indexOf'46'constructor_2743 (MAlonzo.Code.Ledger.Certs.T_DCert_874 ->
                                   [MAlonzo.Code.Ledger.Certs.T_DCert_874] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Address.T_RwdAddr_86 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 ->
                                   [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794] ->
                                   Maybe AgdaAny)
-- Ledger.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1732 ::
  T_indexOf_1718 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_874 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_874] -> Maybe AgdaAny
d_indexOfDCert_1732 v0
  = case coe v0 of
      C_indexOf'46'constructor_2743 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1734 ::
  T_indexOf_1718 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_86 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1734 v0
  = case coe v0 of
      C_indexOf'46'constructor_2743 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1736 ::
  T_indexOf_1718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1736 v0
  = case coe v0 of
      C_indexOf'46'constructor_2743 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1738 ::
  T_indexOf_1718 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1738 v0
  = case coe v0 of
      C_indexOf'46'constructor_2743 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfVote
d_indexOfVote_1740 ::
  T_indexOf_1718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1740 v0
  = case coe v0 of
      C_indexOf'46'constructor_2743 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1742 ::
  T_indexOf_1718 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794] ->
  Maybe AgdaAny
d_indexOfProposal_1742 v0
  = case coe v0 of
      C_indexOf'46'constructor_2743 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions
d_AbstractFunctions_1744 a0 = ()
data T_AbstractFunctions_1744
  = C_AbstractFunctions'46'constructor_3035 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1718
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1756 ::
  T_AbstractFunctions_1744 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1756 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3035 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.serSize
d_serSize_1758 :: T_AbstractFunctions_1744 -> AgdaAny -> Integer
d_serSize_1758 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3035 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1760 :: T_AbstractFunctions_1744 -> T_indexOf_1718
d_indexOfImp_1760 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3035 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_1762 ::
  T_AbstractFunctions_1744 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_1762 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3035 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.scriptSize
d_scriptSize_1764 ::
  T_AbstractFunctions_1744 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_1764 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3035 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
