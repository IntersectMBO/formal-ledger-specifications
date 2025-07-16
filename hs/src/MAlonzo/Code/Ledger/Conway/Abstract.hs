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
import qualified MAlonzo.Code.Ledger.Conway.Gov.Actions
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
d_ExUnits_148 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ExUnits_148 = erased
-- Ledger.Conway.Abstract._.GovProposal
d_GovProposal_162 a0 = ()
-- Ledger.Conway.Abstract._.MemoryEstimate
d_MemoryEstimate_262 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_MemoryEstimate_262 = erased
-- Ledger.Conway.Abstract._.PlutusScript
d_PlutusScript_288 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_PlutusScript_288 = erased
-- Ledger.Conway.Abstract._.Prices
d_Prices_312 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Prices_312 = erased
-- Ledger.Conway.Abstract._.RwdAddr
d_RwdAddr_324 a0 = ()
-- Ledger.Conway.Abstract._.Script
d_Script_332 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Script_332 = erased
-- Ledger.Conway.Abstract._.ScriptHash
d_ScriptHash_340 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ScriptHash_340 = erased
-- Ledger.Conway.Abstract._.TxIn
d_TxIn_418 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_TxIn_418 = erased
-- Ledger.Conway.Abstract._.Value
d_Value_446 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Value_446 = erased
-- Ledger.Conway.Abstract._.Voter
d_Voter_450 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Voter_450 = erased
-- Ledger.Conway.Abstract._.Wdrl
d_Wdrl_452 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Wdrl_452 = erased
-- Ledger.Conway.Abstract._.GovActions.GovProposal
d_GovProposal_778 a0 = ()
-- Ledger.Conway.Abstract._.GovActions.GovProposal.action
d_action_840 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovAction_802
d_action_840 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_action_870 (coe v0)
-- Ledger.Conway.Abstract._.GovActions.GovProposal.anchor
d_anchor_842 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_Anchor_774
d_anchor_842 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_anchor_880 (coe v0)
-- Ledger.Conway.Abstract._.GovActions.GovProposal.deposit
d_deposit_844 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856 -> Integer
d_deposit_844 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_deposit_876 (coe v0)
-- Ledger.Conway.Abstract._.GovActions.GovProposal.policy
d_policy_846 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856 ->
  Maybe AgdaAny
d_policy_846 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_policy_874 (coe v0)
-- Ledger.Conway.Abstract._.GovActions.GovProposal.prevAction
d_prevAction_848 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856 -> AgdaAny
d_prevAction_848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.Actions.d_prevAction_872 (coe v0)
-- Ledger.Conway.Abstract._.GovActions.GovProposal.returnAddr
d_returnAddr_850 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.Actions.d_returnAddr_878 (coe v0)
-- Ledger.Conway.Abstract._.RwdAddr.net
d_net_1306 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_1306 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- Ledger.Conway.Abstract._.RwdAddr.stake
d_stake_1308 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1308 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
-- Ledger.Conway.Abstract._.DCert
d_DCert_1632 a0 = ()
-- Ledger.Conway.Abstract.indexOf
d_indexOf_1930 a0 = ()
data T_indexOf_1930
  = C_indexOf'46'constructor_4241 (MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022 ->
                                   [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856 ->
                                   [MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856] ->
                                   Maybe AgdaAny)
-- Ledger.Conway.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1944 ::
  T_indexOf_1930 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022] -> Maybe AgdaAny
d_indexOfDCert_1944 v0
  = case coe v0 of
      C_indexOf'46'constructor_4241 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1946 ::
  T_indexOf_1930 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1946 v0
  = case coe v0 of
      C_indexOf'46'constructor_4241 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1948 ::
  T_indexOf_1930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1948 v0
  = case coe v0 of
      C_indexOf'46'constructor_4241 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1950 ::
  T_indexOf_1930 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1950 v0
  = case coe v0 of
      C_indexOf'46'constructor_4241 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfVote
d_indexOfVote_1952 ::
  T_indexOf_1930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1952 v0
  = case coe v0 of
      C_indexOf'46'constructor_4241 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1954 ::
  T_indexOf_1930 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856 ->
  [MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856] ->
  Maybe AgdaAny
d_indexOfProposal_1954 v0
  = case coe v0 of
      C_indexOf'46'constructor_4241 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions
d_AbstractFunctions_1956 a0 = ()
data T_AbstractFunctions_1956
  = C_AbstractFunctions'46'constructor_4533 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1930
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Conway.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1968 ::
  T_AbstractFunctions_1956 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1968 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4533 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions.serSize
d_serSize_1970 :: T_AbstractFunctions_1956 -> AgdaAny -> Integer
d_serSize_1970 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4533 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1972 :: T_AbstractFunctions_1956 -> T_indexOf_1930
d_indexOfImp_1972 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4533 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_1974 ::
  T_AbstractFunctions_1956 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_1974 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4533 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Abstract.AbstractFunctions.scriptSize
d_scriptSize_1976 ::
  T_AbstractFunctions_1956 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_1976 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4533 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
