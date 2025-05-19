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
d_Prices_312 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Prices_312 = erased
-- Ledger.Conway.Abstract._.RwdAddr
d_RwdAddr_336 a0 = ()
-- Ledger.Conway.Abstract._.Script
d_Script_344 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Script_344 = erased
-- Ledger.Conway.Abstract._.ScriptHash
d_ScriptHash_352 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ScriptHash_352 = erased
-- Ledger.Conway.Abstract._.TxIn
d_TxIn_432 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_TxIn_432 = erased
-- Ledger.Conway.Abstract._.Value
d_Value_460 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Value_460 = erased
-- Ledger.Conway.Abstract._.Voter
d_Voter_464 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Voter_464 = erased
-- Ledger.Conway.Abstract._.Wdrl
d_Wdrl_466 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Wdrl_466 = erased
-- Ledger.Conway.Abstract._.GovProposal.action
d_action_786 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778
d_action_786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_846 (coe v0)
-- Ledger.Conway.Abstract._.GovProposal.anchor
d_anchor_788 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_750
d_anchor_788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_856 (coe v0)
-- Ledger.Conway.Abstract._.GovProposal.deposit
d_deposit_790 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  Integer
d_deposit_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_852 (coe v0)
-- Ledger.Conway.Abstract._.GovProposal.policy
d_policy_792 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  Maybe AgdaAny
d_policy_792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_850 (coe v0)
-- Ledger.Conway.Abstract._.GovProposal.prevAction
d_prevAction_794 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  AgdaAny
d_prevAction_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_848
      (coe v0)
-- Ledger.Conway.Abstract._.GovProposal.returnAddr
d_returnAddr_796 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_854
      (coe v0)
-- Ledger.Conway.Abstract._.GovernanceActions.GovProposal
d_GovProposal_844 a0 = ()
-- Ledger.Conway.Abstract._.RwdAddr.net
d_net_1320 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_1320 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- Ledger.Conway.Abstract._.RwdAddr.stake
d_stake_1322 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1322 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
-- Ledger.Conway.Abstract._.DCert
d_DCert_1660 a0 = ()
-- Ledger.Conway.Abstract.indexOf
d_indexOf_1958 a0 = ()
data T_indexOf_1958
  = C_indexOf'46'constructor_4297 (MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000 ->
                                   [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
                                   [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832] ->
                                   Maybe AgdaAny)
-- Ledger.Conway.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1972 ::
  T_indexOf_1958 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000] -> Maybe AgdaAny
d_indexOfDCert_1972 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1974 ::
  T_indexOf_1958 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1974 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1976 ::
  T_indexOf_1958 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1976 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1978 ::
  T_indexOf_1958 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1978 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfVote
d_indexOfVote_1980 ::
  T_indexOf_1958 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1980 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1982 ::
  T_indexOf_1958 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832] ->
  Maybe AgdaAny
d_indexOfProposal_1982 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions
d_AbstractFunctions_1984 a0 = ()
data T_AbstractFunctions_1984
  = C_AbstractFunctions'46'constructor_4589 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1958
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Conway.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1996 ::
  T_AbstractFunctions_1984 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1996 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4589 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions.serSize
d_serSize_1998 :: T_AbstractFunctions_1984 -> AgdaAny -> Integer
d_serSize_1998 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4589 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_2000 :: T_AbstractFunctions_1984 -> T_indexOf_1958
d_indexOfImp_2000 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4589 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_2002 ::
  T_AbstractFunctions_1984 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_2002 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4589 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions.scriptSize
d_scriptSize_2004 ::
  T_AbstractFunctions_1984 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2004 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4589 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
