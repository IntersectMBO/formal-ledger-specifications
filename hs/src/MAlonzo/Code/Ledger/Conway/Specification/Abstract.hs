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
d_T_72 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_T_72 = erased
-- Ledger.Conway.Specification.Abstract._.ExUnits
d_ExUnits_172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_172 = erased
-- Ledger.Conway.Specification.Abstract._.GovProposal
d_GovProposal_196 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovVoter
d_GovVoter_210 a0 = ()
-- Ledger.Conway.Specification.Abstract._.MemoryEstimate
d_MemoryEstimate_386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_386 = erased
-- Ledger.Conway.Specification.Abstract._.PlutusScript
d_PlutusScript_414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_414 = erased
-- Ledger.Conway.Specification.Abstract._.Prices
d_Prices_450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Prices_450 = erased
-- Ledger.Conway.Specification.Abstract._.RwdAddr
d_RwdAddr_466 a0 = ()
-- Ledger.Conway.Specification.Abstract._.Script
d_Script_476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_476 = erased
-- Ledger.Conway.Specification.Abstract._.ScriptHash
d_ScriptHash_484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_484 = erased
-- Ledger.Conway.Specification.Abstract._.TxIn
d_TxIn_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_576 = erased
-- Ledger.Conway.Specification.Abstract._.Value
d_Value_606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_606 = erased
-- Ledger.Conway.Specification.Abstract._.Withdrawals
d_Withdrawals_616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_616 = erased
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal
d_GovProposal_954 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovActions.GovVoter
d_GovVoter_966 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.action
d_action_1092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830
d_action_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_992
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.anchor
d_anchor_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_886
d_anchor_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1002
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.deposit
d_deposit_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  Integer
d_deposit_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_998
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.policy
d_policy_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  Maybe AgdaAny
d_policy_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_996
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.prevAction
d_prevAction_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  AgdaAny
d_prevAction_1100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_994
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.returnAddr
d_returnAddr_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1000
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovVoter.gvCredential
d_gvCredential_1124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874 ->
  AgdaAny
d_gvCredential_1124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_882
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovVoter.gvRole
d_gvRole_1126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_784
d_gvRole_1126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_880
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.RwdAddr.net
d_net_1590 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  AgdaAny
d_net_1590 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Specification.Abstract._.RwdAddr.stake
d_stake_1592 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1592 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Abstract._.DCert
d_DCert_1932 a0 = ()
-- Ledger.Conway.Specification.Abstract.indexOf
d_indexOf_2306 a0 = ()
data T_indexOf_2306
  = C_constructor_2332 (MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                       (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                       (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874] ->
                        Maybe AgdaAny)
                       (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978] ->
                        Maybe AgdaAny)
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfDCert
d_indexOfDCert_2320 ::
  T_indexOf_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282] ->
  Maybe AgdaAny
d_indexOfDCert_2320 v0
  = case coe v0 of
      C_constructor_2332 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_2322 ::
  T_indexOf_2306 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_2322 v0
  = case coe v0 of
      C_constructor_2332 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_2324 ::
  T_indexOf_2306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_2324 v0
  = case coe v0 of
      C_constructor_2332 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_2326 ::
  T_indexOf_2306 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_2326 v0
  = case coe v0 of
      C_constructor_2332 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfVote
d_indexOfVote_2328 ::
  T_indexOf_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874] ->
  Maybe AgdaAny
d_indexOfVote_2328 v0
  = case coe v0 of
      C_constructor_2332 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfProposal
d_indexOfProposal_2330 ::
  T_indexOf_2306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978] ->
  Maybe AgdaAny
d_indexOfProposal_2330 v0
  = case coe v0 of
      C_constructor_2332 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions
d_AbstractFunctions_2334 a0 = ()
data T_AbstractFunctions_2334
  = C_constructor_2356 (AgdaAny -> AgdaAny -> Integer)
                       (AgdaAny -> Integer) T_indexOf_2306
                       (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                       (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_2346 ::
  T_AbstractFunctions_2334 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_2346 v0
  = case coe v0 of
      C_constructor_2356 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.serSize
d_serSize_2348 :: T_AbstractFunctions_2334 -> AgdaAny -> Integer
d_serSize_2348 v0
  = case coe v0 of
      C_constructor_2356 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_2350 :: T_AbstractFunctions_2334 -> T_indexOf_2306
d_indexOfImp_2350 v0
  = case coe v0 of
      C_constructor_2356 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_2352 ::
  T_AbstractFunctions_2334 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_2352 v0
  = case coe v0 of
      C_constructor_2356 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.scriptSize
d_scriptSize_2354 ::
  T_AbstractFunctions_2334 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2354 v0
  = case coe v0 of
      C_constructor_2356 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
