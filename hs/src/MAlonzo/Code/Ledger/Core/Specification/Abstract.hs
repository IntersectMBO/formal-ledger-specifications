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

module MAlonzo.Code.Ledger.Core.Specification.Abstract where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Certs
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Core.Specification.Transaction

-- Ledger.Core.Specification.Abstract._.CostModel
d_CostModel_56 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_CostModel_56 = erased
-- Ledger.Core.Specification.Abstract._.T
d_T_64 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_T_64 = erased
-- Ledger.Core.Specification.Abstract._.ExUnits
d_ExUnits_164 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_164 = erased
-- Ledger.Core.Specification.Abstract._.GovProposal
d_GovProposal_188 a0 = ()
-- Ledger.Core.Specification.Abstract._.GovVoter
d_GovVoter_200 a0 = ()
-- Ledger.Core.Specification.Abstract._.MemoryEstimate
d_MemoryEstimate_338 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_338 = erased
-- Ledger.Core.Specification.Abstract._.PlutusScript
d_PlutusScript_366 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_366 = erased
-- Ledger.Core.Specification.Abstract._.Prices
d_Prices_402 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Prices_402 = erased
-- Ledger.Core.Specification.Abstract._.RwdAddr
d_RwdAddr_418 a0 = ()
-- Ledger.Core.Specification.Abstract._.Script
d_Script_428 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_428 = erased
-- Ledger.Core.Specification.Abstract._.ScriptHash
d_ScriptHash_436 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_436 = erased
-- Ledger.Core.Specification.Abstract._.TxIn
d_TxIn_516 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_516 = erased
-- Ledger.Core.Specification.Abstract._.Value
d_Value_546 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_546 = erased
-- Ledger.Core.Specification.Abstract._.Withdrawals
d_Withdrawals_556 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_556 = erased
-- Ledger.Core.Specification.Abstract._.GovActions.GovProposal
d_GovProposal_882 a0 = ()
-- Ledger.Core.Specification.Abstract._.GovActions.GovVoter
d_GovVoter_894 a0 = ()
-- Ledger.Core.Specification.Abstract._.GovActions.GovProposal.action
d_action_1016 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830
d_action_1016 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_992
      (coe v0)
-- Ledger.Core.Specification.Abstract._.GovActions.GovProposal.anchor
d_anchor_1018 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886
d_anchor_1018 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_1002
      (coe v0)
-- Ledger.Core.Specification.Abstract._.GovActions.GovProposal.deposit
d_deposit_1020 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  Integer
d_deposit_1020 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_deposit_998
      (coe v0)
-- Ledger.Core.Specification.Abstract._.GovActions.GovProposal.policy
d_policy_1022 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  Maybe AgdaAny
d_policy_1022 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_policy_996
      (coe v0)
-- Ledger.Core.Specification.Abstract._.GovActions.GovProposal.prevAction
d_prevAction_1024 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  AgdaAny
d_prevAction_1024 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_prevAction_994
      (coe v0)
-- Ledger.Core.Specification.Abstract._.GovActions.GovProposal.returnAddr
d_returnAddr_1026 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1026 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_returnAddr_1000
      (coe v0)
-- Ledger.Core.Specification.Abstract._.GovActions.GovVoter.gvCredential
d_gvCredential_1048 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  AgdaAny
d_gvCredential_1048 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvCredential_882
      (coe v0)
-- Ledger.Core.Specification.Abstract._.GovActions.GovVoter.gvRole
d_gvRole_1050 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovRole_784
d_gvRole_1050 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvRole_880
      (coe v0)
-- Ledger.Core.Specification.Abstract._.RwdAddr.net
d_net_1494 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  AgdaAny
d_net_1494 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Core.Specification.Abstract._.RwdAddr.stake
d_stake_1496 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1496 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Core.Specification.Abstract._.DCert
d_DCert_1786 a0 = ()
-- Ledger.Core.Specification.Abstract.indexOf
d_indexOf_2172 a0 = ()
data T_indexOf_2172
  = C_constructor_2198 (MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290 ->
                        [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                       (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                       (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
                        [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
                        [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978] ->
                        Maybe AgdaAny)
-- Ledger.Core.Specification.Abstract.indexOf.indexOfDCert
d_indexOfDCert_2186 ::
  T_indexOf_2172 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290] ->
  Maybe AgdaAny
d_indexOfDCert_2186 v0
  = case coe v0 of
      C_constructor_2198 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_2188 ::
  T_indexOf_2172 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_2188 v0
  = case coe v0 of
      C_constructor_2198 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_2190 ::
  T_indexOf_2172 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_2190 v0
  = case coe v0 of
      C_constructor_2198 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_2192 ::
  T_indexOf_2172 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_2192 v0
  = case coe v0 of
      C_constructor_2198 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.indexOf.indexOfVote
d_indexOfVote_2194 ::
  T_indexOf_2172 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874] ->
  Maybe AgdaAny
d_indexOfVote_2194 v0
  = case coe v0 of
      C_constructor_2198 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.indexOf.indexOfProposal
d_indexOfProposal_2196 ::
  T_indexOf_2172 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978] ->
  Maybe AgdaAny
d_indexOfProposal_2196 v0
  = case coe v0 of
      C_constructor_2198 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.AbstractFunctions
d_AbstractFunctions_2200 a0 = ()
data T_AbstractFunctions_2200
  = C_constructor_2222 (AgdaAny -> AgdaAny -> Integer)
                       (AgdaAny -> Integer) T_indexOf_2172
                       (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                       (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Core.Specification.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_2212 ::
  T_AbstractFunctions_2200 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_2212 v0
  = case coe v0 of
      C_constructor_2222 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.AbstractFunctions.serSize
d_serSize_2214 :: T_AbstractFunctions_2200 -> AgdaAny -> Integer
d_serSize_2214 v0
  = case coe v0 of
      C_constructor_2222 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_2216 :: T_AbstractFunctions_2200 -> T_indexOf_2172
d_indexOfImp_2216 v0
  = case coe v0 of
      C_constructor_2222 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_2218 ::
  T_AbstractFunctions_2200 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_2218 v0
  = case coe v0 of
      C_constructor_2222 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Abstract.AbstractFunctions.scriptSize
d_scriptSize_2220 ::
  T_AbstractFunctions_2200 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2220 v0
  = case coe v0 of
      C_constructor_2222 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
