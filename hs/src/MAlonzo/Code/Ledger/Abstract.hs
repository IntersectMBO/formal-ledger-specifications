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
d_T_50 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_T_50 = erased
-- Ledger.Abstract._.ExUnits
d_ExUnits_150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_150 = erased
-- Ledger.Abstract._.GovProposal
d_GovProposal_164 a0 = ()
-- Ledger.Abstract._.MemoryEstimate
d_MemoryEstimate_262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_262 = erased
-- Ledger.Abstract._.PlutusScript
d_PlutusScript_288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_288 = erased
-- Ledger.Abstract._.Prices
d_Prices_310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Prices_310 = erased
-- Ledger.Abstract._.RwdAddr
d_RwdAddr_334 a0 = ()
-- Ledger.Abstract._.Script
d_Script_342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_342 = erased
-- Ledger.Abstract._.ScriptHash
d_ScriptHash_350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_350 = erased
-- Ledger.Abstract._.TxIn
d_TxIn_430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_430 = erased
-- Ledger.Abstract._.Value
d_Value_458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_458 = erased
-- Ledger.Abstract._.Voter
d_Voter_462 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_462 = erased
-- Ledger.Abstract._.Wdrl
d_Wdrl_464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_464 = erased
-- Ledger.Abstract._.GovProposal.action
d_action_784 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776
d_action_784 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_844 (coe v0)
-- Ledger.Abstract._.GovProposal.anchor
d_anchor_786 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_748
d_anchor_786 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_854 (coe v0)
-- Ledger.Abstract._.GovProposal.deposit
d_deposit_788 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 -> Integer
d_deposit_788 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_850 (coe v0)
-- Ledger.Abstract._.GovProposal.policy
d_policy_790 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  Maybe AgdaAny
d_policy_790 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_848 (coe v0)
-- Ledger.Abstract._.GovProposal.prevAction
d_prevAction_792 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 -> AgdaAny
d_prevAction_792 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_846 (coe v0)
-- Ledger.Abstract._.GovProposal.returnAddr
d_returnAddr_794 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_794 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_852 (coe v0)
-- Ledger.Abstract._.GovernanceActions.GovProposal
d_GovProposal_842 a0 = ()
-- Ledger.Abstract._.RwdAddr.net
d_net_1318 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_94 -> AgdaAny
d_net_1318 v0 = coe MAlonzo.Code.Ledger.Address.d_net_100 (coe v0)
-- Ledger.Abstract._.RwdAddr.stake
d_stake_1320 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1320 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_102 (coe v0)
-- Ledger.Abstract._.DCert
d_DCert_1658 a0 = ()
-- Ledger.Abstract.indexOf
d_indexOf_1956 a0 = ()
data T_indexOf_1956
  = C_indexOf'46'constructor_4297 (MAlonzo.Code.Ledger.Certs.T_DCert_998 ->
                                   [MAlonzo.Code.Ledger.Certs.T_DCert_998] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
                                   [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830] ->
                                   Maybe AgdaAny)
-- Ledger.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1970 ::
  T_indexOf_1956 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_998 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_998] -> Maybe AgdaAny
d_indexOfDCert_1970 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1972 ::
  T_indexOf_1956 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1972 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1974 ::
  T_indexOf_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1974 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1976 ::
  T_indexOf_1956 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1976 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfVote
d_indexOfVote_1978 ::
  T_indexOf_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1978 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1980 ::
  T_indexOf_1956 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830] ->
  Maybe AgdaAny
d_indexOfProposal_1980 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions
d_AbstractFunctions_1982 a0 = ()
data T_AbstractFunctions_1982
  = C_AbstractFunctions'46'constructor_4589 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1956
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1994 ::
  T_AbstractFunctions_1982 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1994 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4589 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.serSize
d_serSize_1996 :: T_AbstractFunctions_1982 -> AgdaAny -> Integer
d_serSize_1996 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4589 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1998 :: T_AbstractFunctions_1982 -> T_indexOf_1956
d_indexOfImp_1998 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4589 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_2000 ::
  T_AbstractFunctions_1982 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_2000 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4589 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.scriptSize
d_scriptSize_2002 ::
  T_AbstractFunctions_1982 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2002 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4589 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
