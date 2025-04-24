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
d_CostModel_40 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CostModel_40 = erased
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
d_MemoryEstimate_242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_242 = erased
-- Ledger.Abstract._.PlutusScript
d_PlutusScript_266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_266 = erased
-- Ledger.Abstract._.Prices
d_Prices_288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Prices_288 = erased
-- Ledger.Abstract._.RwdAddr
d_RwdAddr_312 a0 = ()
-- Ledger.Abstract._.Script
d_Script_320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_320 = erased
-- Ledger.Abstract._.ScriptHash
d_ScriptHash_328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_328 = erased
-- Ledger.Abstract._.TxIn
d_TxIn_408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_408 = erased
-- Ledger.Abstract._.Value
d_Value_436 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_436 = erased
-- Ledger.Abstract._.Voter
d_Voter_440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_440 = erased
-- Ledger.Abstract._.Wdrl
d_Wdrl_442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_442 = erased
-- Ledger.Abstract._.GovProposal.action
d_action_760 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_762
d_action_760 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_826 (coe v0)
-- Ledger.Abstract._.GovProposal.anchor
d_anchor_762 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_734
d_anchor_762 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_836 (coe v0)
-- Ledger.Abstract._.GovProposal.deposit
d_deposit_764 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 -> Integer
d_deposit_764 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_832 (coe v0)
-- Ledger.Abstract._.GovProposal.policy
d_policy_766 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 ->
  Maybe AgdaAny
d_policy_766 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_830 (coe v0)
-- Ledger.Abstract._.GovProposal.prevAction
d_prevAction_768 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 -> AgdaAny
d_prevAction_768 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_828 (coe v0)
-- Ledger.Abstract._.GovProposal.returnAddr
d_returnAddr_770 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_770 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_834 (coe v0)
-- Ledger.Abstract._.GovernanceActions.GovProposal
d_GovProposal_818 a0 = ()
-- Ledger.Abstract._.RwdAddr.net
d_net_1288 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_94 -> AgdaAny
d_net_1288 v0 = coe MAlonzo.Code.Ledger.Address.d_net_100 (coe v0)
-- Ledger.Abstract._.RwdAddr.stake
d_stake_1290 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1290 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_102 (coe v0)
-- Ledger.Abstract._.DCert
d_DCert_1628 a0 = ()
-- Ledger.Abstract.indexOf
d_indexOf_1906 a0 = ()
data T_indexOf_1906
  = C_indexOf'46'constructor_4079 (MAlonzo.Code.Ledger.Certs.T_DCert_982 ->
                                   [MAlonzo.Code.Ledger.Certs.T_DCert_982] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 ->
                                   [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812] ->
                                   Maybe AgdaAny)
-- Ledger.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1920 ::
  T_indexOf_1906 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_982 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_982] -> Maybe AgdaAny
d_indexOfDCert_1920 v0
  = case coe v0 of
      C_indexOf'46'constructor_4079 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1922 ::
  T_indexOf_1906 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1922 v0
  = case coe v0 of
      C_indexOf'46'constructor_4079 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1924 ::
  T_indexOf_1906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1924 v0
  = case coe v0 of
      C_indexOf'46'constructor_4079 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1926 ::
  T_indexOf_1906 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1926 v0
  = case coe v0 of
      C_indexOf'46'constructor_4079 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfVote
d_indexOfVote_1928 ::
  T_indexOf_1906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1928 v0
  = case coe v0 of
      C_indexOf'46'constructor_4079 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1930 ::
  T_indexOf_1906 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812] ->
  Maybe AgdaAny
d_indexOfProposal_1930 v0
  = case coe v0 of
      C_indexOf'46'constructor_4079 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions
d_AbstractFunctions_1932 a0 = ()
data T_AbstractFunctions_1932
  = C_AbstractFunctions'46'constructor_4371 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1906
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1944 ::
  T_AbstractFunctions_1932 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1944 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4371 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.serSize
d_serSize_1946 :: T_AbstractFunctions_1932 -> AgdaAny -> Integer
d_serSize_1946 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4371 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1948 :: T_AbstractFunctions_1932 -> T_indexOf_1906
d_indexOfImp_1948 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4371 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_1950 ::
  T_AbstractFunctions_1932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_1950 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4371 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.scriptSize
d_scriptSize_1952 ::
  T_AbstractFunctions_1932 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_1952 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4371 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
