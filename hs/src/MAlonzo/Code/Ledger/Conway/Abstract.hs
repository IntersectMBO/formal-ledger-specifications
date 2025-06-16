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
d_MemoryEstimate_266 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_MemoryEstimate_266 = erased
-- Ledger.Conway.Abstract._.PlutusScript
d_PlutusScript_292 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_PlutusScript_292 = erased
-- Ledger.Conway.Abstract._.Prices
d_Prices_316 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Prices_316 = erased
-- Ledger.Conway.Abstract._.RwdAddr
d_RwdAddr_340 a0 = ()
-- Ledger.Conway.Abstract._.Script
d_Script_348 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Script_348 = erased
-- Ledger.Conway.Abstract._.ScriptHash
d_ScriptHash_356 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ScriptHash_356 = erased
-- Ledger.Conway.Abstract._.TxIn
d_TxIn_436 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_TxIn_436 = erased
-- Ledger.Conway.Abstract._.Value
d_Value_464 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Value_464 = erased
-- Ledger.Conway.Abstract._.Voter
d_Voter_468 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Voter_468 = erased
-- Ledger.Conway.Abstract._.Wdrl
d_Wdrl_470 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Wdrl_470 = erased
-- Ledger.Conway.Abstract._.GovProposal.action
d_action_790 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_786
d_action_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_854 (coe v0)
-- Ledger.Conway.Abstract._.GovProposal.anchor
d_anchor_792 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_758
d_anchor_792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_864 (coe v0)
-- Ledger.Conway.Abstract._.GovProposal.deposit
d_deposit_794 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  Integer
d_deposit_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_860 (coe v0)
-- Ledger.Conway.Abstract._.GovProposal.policy
d_policy_796 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  Maybe AgdaAny
d_policy_796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_858 (coe v0)
-- Ledger.Conway.Abstract._.GovProposal.prevAction
d_prevAction_798 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  AgdaAny
d_prevAction_798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_856
      (coe v0)
-- Ledger.Conway.Abstract._.GovProposal.returnAddr
d_returnAddr_800 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_862
      (coe v0)
-- Ledger.Conway.Abstract._.GovernanceActions.GovProposal
d_GovProposal_848 a0 = ()
-- Ledger.Conway.Abstract._.RwdAddr.net
d_net_1328 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_1328 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- Ledger.Conway.Abstract._.RwdAddr.stake
d_stake_1330 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1330 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
-- Ledger.Conway.Abstract._.DCert
d_DCert_1668 a0 = ()
-- Ledger.Conway.Abstract.indexOf
d_indexOf_1966 a0 = ()
data T_indexOf_1966
  = C_indexOf'46'constructor_4329 (MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008 ->
                                   [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
                                   [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840] ->
                                   Maybe AgdaAny)
-- Ledger.Conway.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1980 ::
  T_indexOf_1966 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008] -> Maybe AgdaAny
d_indexOfDCert_1980 v0
  = case coe v0 of
      C_indexOf'46'constructor_4329 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1982 ::
  T_indexOf_1966 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1982 v0
  = case coe v0 of
      C_indexOf'46'constructor_4329 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1984 ::
  T_indexOf_1966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1984 v0
  = case coe v0 of
      C_indexOf'46'constructor_4329 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1986 ::
  T_indexOf_1966 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1986 v0
  = case coe v0 of
      C_indexOf'46'constructor_4329 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfVote
d_indexOfVote_1988 ::
  T_indexOf_1966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1988 v0
  = case coe v0 of
      C_indexOf'46'constructor_4329 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1990 ::
  T_indexOf_1966 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840] ->
  Maybe AgdaAny
d_indexOfProposal_1990 v0
  = case coe v0 of
      C_indexOf'46'constructor_4329 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions
d_AbstractFunctions_1992 a0 = ()
data T_AbstractFunctions_1992
  = C_AbstractFunctions'46'constructor_4621 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1966
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Conway.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_2004 ::
  T_AbstractFunctions_1992 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_2004 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4621 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions.serSize
d_serSize_2006 :: T_AbstractFunctions_1992 -> AgdaAny -> Integer
d_serSize_2006 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4621 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_2008 :: T_AbstractFunctions_1992 -> T_indexOf_1966
d_indexOfImp_2008 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4621 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_2010 ::
  T_AbstractFunctions_1992 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_2010 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4621 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions.scriptSize
d_scriptSize_2012 ::
  T_AbstractFunctions_1992 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2012 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4621 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
