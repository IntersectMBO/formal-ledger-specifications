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

module MAlonzo.Code.Ledger.Conway.Specification.Abstract where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address

-- Ledger.Conway.Specification.Abstract._.CostModel
d_CostModel_56 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_CostModel_56 = erased
-- Ledger.Conway.Specification.Abstract._.T
d_T_66 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_T_66 = erased
-- Ledger.Conway.Specification.Abstract._.ExUnits
d_ExUnits_164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_164 = erased
-- Ledger.Conway.Specification.Abstract._.GovProposal
d_GovProposal_188 a0 = ()
-- Ledger.Conway.Specification.Abstract._.MemoryEstimate
d_MemoryEstimate_342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_342 = erased
-- Ledger.Conway.Specification.Abstract._.PlutusScript
d_PlutusScript_370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_370 = erased
-- Ledger.Conway.Specification.Abstract._.Prices
d_Prices_402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Prices_402 = erased
-- Ledger.Conway.Specification.Abstract._.RwdAddr
d_RwdAddr_414 a0 = ()
-- Ledger.Conway.Specification.Abstract._.Script
d_Script_424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_424 = erased
-- Ledger.Conway.Specification.Abstract._.ScriptHash
d_ScriptHash_432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_432 = erased
-- Ledger.Conway.Specification.Abstract._.TxIn
d_TxIn_520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_520 = erased
-- Ledger.Conway.Specification.Abstract._.Value
d_Value_550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_550 = erased
-- Ledger.Conway.Specification.Abstract._.Voter
d_Voter_558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Voter_558 = erased
-- Ledger.Conway.Specification.Abstract._.Withdrawals
d_Withdrawals_560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_560 = erased
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal
d_GovProposal_882 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.action
d_action_974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_936 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_862
d_action_974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_950
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.anchor
d_anchor_976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_936 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_796
d_anchor_976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_960
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.deposit
d_deposit_978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_936 ->
  Integer
d_deposit_978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_956
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.policy
d_policy_980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_936 ->
  Maybe AgdaAny
d_policy_980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_954
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.prevAction
d_prevAction_982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_936 ->
  AgdaAny
d_prevAction_982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_952
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.returnAddr
d_returnAddr_984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_936 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_958
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.RwdAddr.net
d_net_1442 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  AgdaAny
d_net_1442 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Specification.Abstract._.RwdAddr.stake
d_stake_1444 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1444 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Abstract._.DCert
d_DCert_1780 a0 = ()
-- Ledger.Conway.Specification.Abstract.indexOf
d_indexOf_2142 a0 = ()
data T_indexOf_2142
  = C_constructor_2168 (MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1192 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1192] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                       (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                       (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                       (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_936 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_936] ->
                        Maybe AgdaAny)
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfDCert
d_indexOfDCert_2156 ::
  T_indexOf_2142 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1192 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1192] ->
  Maybe AgdaAny
d_indexOfDCert_2156 v0
  = case coe v0 of
      C_constructor_2168 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_2158 ::
  T_indexOf_2142 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_2158 v0
  = case coe v0 of
      C_constructor_2168 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_2160 ::
  T_indexOf_2142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_2160 v0
  = case coe v0 of
      C_constructor_2168 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_2162 ::
  T_indexOf_2142 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_2162 v0
  = case coe v0 of
      C_constructor_2168 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfVote
d_indexOfVote_2164 ::
  T_indexOf_2142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_2164 v0
  = case coe v0 of
      C_constructor_2168 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfProposal
d_indexOfProposal_2166 ::
  T_indexOf_2142 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_936 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_936] ->
  Maybe AgdaAny
d_indexOfProposal_2166 v0
  = case coe v0 of
      C_constructor_2168 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions
d_AbstractFunctions_2170 a0 = ()
data T_AbstractFunctions_2170
  = C_constructor_2192 (AgdaAny -> AgdaAny -> Integer)
                       (AgdaAny -> Integer) T_indexOf_2142
                       (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                       (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_2182 ::
  T_AbstractFunctions_2170 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_2182 v0
  = case coe v0 of
      C_constructor_2192 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.serSize
d_serSize_2184 :: T_AbstractFunctions_2170 -> AgdaAny -> Integer
d_serSize_2184 v0
  = case coe v0 of
      C_constructor_2192 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_2186 :: T_AbstractFunctions_2170 -> T_indexOf_2142
d_indexOfImp_2186 v0
  = case coe v0 of
      C_constructor_2192 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_2188 ::
  T_AbstractFunctions_2170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_2188 v0
  = case coe v0 of
      C_constructor_2192 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.scriptSize
d_scriptSize_2190 ::
  T_AbstractFunctions_2170 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2190 v0
  = case coe v0 of
      C_constructor_2192 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
