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

module MAlonzo.Code.Ledger.Conway.Abstract where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Transaction

-- Ledger.Conway.Abstract._.CostModel
d_CostModel_44 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_CostModel_44 = erased
-- Ledger.Conway.Abstract._.T
d_T_52 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_T_52 = erased
-- Ledger.Conway.Abstract._.ExUnits
d_ExUnits_152 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ExUnits_152 = erased
-- Ledger.Conway.Abstract._.GovProposal
d_GovProposal_166 a0 = ()
-- Ledger.Conway.Abstract._.MemoryEstimate
d_MemoryEstimate_264 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_MemoryEstimate_264 = erased
-- Ledger.Conway.Abstract._.PlutusScript
d_PlutusScript_290 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_PlutusScript_290 = erased
-- Ledger.Conway.Abstract._.Prices
d_Prices_314 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Prices_314 = erased
-- Ledger.Conway.Abstract._.RwdAddr
d_RwdAddr_338 a0 = ()
-- Ledger.Conway.Abstract._.Script
d_Script_346 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Script_346 = erased
-- Ledger.Conway.Abstract._.ScriptHash
d_ScriptHash_354 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ScriptHash_354 = erased
-- Ledger.Conway.Abstract._.TxIn
d_TxIn_434 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_TxIn_434 = erased
-- Ledger.Conway.Abstract._.Value
d_Value_462 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Value_462 = erased
-- Ledger.Conway.Abstract._.Voter
d_Voter_466 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Voter_466 = erased
-- Ledger.Conway.Abstract._.Wdrl
d_Wdrl_468 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Wdrl_468 = erased
-- Ledger.Conway.Abstract._.GovProposal.action
d_action_788 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780
d_action_788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_848 (coe v0)
-- Ledger.Conway.Abstract._.GovProposal.anchor
d_anchor_790 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_752
d_anchor_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_858 (coe v0)
-- Ledger.Conway.Abstract._.GovProposal.deposit
d_deposit_792 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  Integer
d_deposit_792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_854 (coe v0)
-- Ledger.Conway.Abstract._.GovProposal.policy
d_policy_794 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  Maybe AgdaAny
d_policy_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_852 (coe v0)
-- Ledger.Conway.Abstract._.GovProposal.prevAction
d_prevAction_796 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  AgdaAny
d_prevAction_796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_850
      (coe v0)
-- Ledger.Conway.Abstract._.GovProposal.returnAddr
d_returnAddr_798 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_856
      (coe v0)
-- Ledger.Conway.Abstract._.GovernanceActions.GovProposal
d_GovProposal_846 a0 = ()
-- Ledger.Conway.Abstract._.RwdAddr.net
d_net_1322 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_1322 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- Ledger.Conway.Abstract._.RwdAddr.stake
d_stake_1324 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1324 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
-- Ledger.Conway.Abstract._.DCert
d_DCert_1662 a0 = ()
-- Ledger.Conway.Abstract.indexOf
d_indexOf_1960 a0 = ()
data T_indexOf_1960
  = C_indexOf'46'constructor_4299 (MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1002 ->
                                   [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1002] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
                                   [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834] ->
                                   Maybe AgdaAny)
-- Ledger.Conway.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1974 ::
  T_indexOf_1960 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1002 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1002] -> Maybe AgdaAny
d_indexOfDCert_1974 v0
  = case coe v0 of
      C_indexOf'46'constructor_4299 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1976 ::
  T_indexOf_1960 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1976 v0
  = case coe v0 of
      C_indexOf'46'constructor_4299 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1978 ::
  T_indexOf_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1978 v0
  = case coe v0 of
      C_indexOf'46'constructor_4299 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1980 ::
  T_indexOf_1960 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1980 v0
  = case coe v0 of
      C_indexOf'46'constructor_4299 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfVote
d_indexOfVote_1982 ::
  T_indexOf_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1982 v0
  = case coe v0 of
      C_indexOf'46'constructor_4299 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1984 ::
  T_indexOf_1960 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834] ->
  Maybe AgdaAny
d_indexOfProposal_1984 v0
  = case coe v0 of
      C_indexOf'46'constructor_4299 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions
d_AbstractFunctions_1986 a0 = ()
data T_AbstractFunctions_1986
  = C_AbstractFunctions'46'constructor_4591 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1960
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Conway.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1998 ::
  T_AbstractFunctions_1986 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1998 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4591 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions.serSize
d_serSize_2000 :: T_AbstractFunctions_1986 -> AgdaAny -> Integer
d_serSize_2000 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4591 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_2002 :: T_AbstractFunctions_1986 -> T_indexOf_1960
d_indexOfImp_2002 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4591 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_2004 ::
  T_AbstractFunctions_1986 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_2004 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4591 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions.scriptSize
d_scriptSize_2006 ::
  T_AbstractFunctions_1986 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2006 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4591 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
