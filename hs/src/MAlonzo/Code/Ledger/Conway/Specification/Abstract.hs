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
d_CostModel_46 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_CostModel_46 = erased
-- Ledger.Conway.Specification.Abstract._.T
d_T_54 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_T_54 = erased
-- Ledger.Conway.Specification.Abstract._.ExUnits
d_ExUnits_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_150 = erased
-- Ledger.Conway.Specification.Abstract._.GovProposal
d_GovProposal_164 a0 = ()
-- Ledger.Conway.Specification.Abstract._.MemoryEstimate
d_MemoryEstimate_264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_264 = erased
-- Ledger.Conway.Specification.Abstract._.PlutusScript
d_PlutusScript_290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_290 = erased
-- Ledger.Conway.Specification.Abstract._.Prices
d_Prices_314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Prices_314 = erased
-- Ledger.Conway.Specification.Abstract._.RwdAddr
d_RwdAddr_326 a0 = ()
-- Ledger.Conway.Specification.Abstract._.Script
d_Script_334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_334 = erased
-- Ledger.Conway.Specification.Abstract._.ScriptHash
d_ScriptHash_342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_342 = erased
-- Ledger.Conway.Specification.Abstract._.TxIn
d_TxIn_420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_420 = erased
-- Ledger.Conway.Specification.Abstract._.Value
d_Value_448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_448 = erased
-- Ledger.Conway.Specification.Abstract._.Voter
d_Voter_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Voter_452 = erased
-- Ledger.Conway.Specification.Abstract._.Wdrl
d_Wdrl_454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Wdrl_454 = erased
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal
d_GovProposal_780 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.action
d_action_842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_804
d_action_842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_872
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.anchor
d_anchor_844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_776
d_anchor_844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_882
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.deposit
d_deposit_846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858 ->
  Integer
d_deposit_846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_878
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.policy
d_policy_848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858 ->
  Maybe AgdaAny
d_policy_848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_876
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.prevAction
d_prevAction_850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858 ->
  AgdaAny
d_prevAction_850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_874
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.returnAddr
d_returnAddr_852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98
d_returnAddr_852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_880
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.RwdAddr.net
d_net_1308 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98 ->
  AgdaAny
d_net_1308 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_104 (coe v0)
-- Ledger.Conway.Specification.Abstract._.RwdAddr.stake
d_stake_1310 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1310 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_106 (coe v0)
-- Ledger.Conway.Specification.Abstract._.DCert
d_DCert_1634 a0 = ()
-- Ledger.Conway.Specification.Abstract.indexOf
d_indexOf_1932 a0 = ()
data T_indexOf_1932
  = C_indexOf'46'constructor_4241 (MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1024 ->
                                   [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1024] ->
                                   Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858 ->
                                   [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858] ->
                                   Maybe AgdaAny)
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1946 ::
  T_indexOf_1932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1024 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1024] ->
  Maybe AgdaAny
d_indexOfDCert_1946 v0
  = case coe v0 of
      C_indexOf'46'constructor_4241 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1948 ::
  T_indexOf_1932 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1948 v0
  = case coe v0 of
      C_indexOf'46'constructor_4241 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1950 ::
  T_indexOf_1932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1950 v0
  = case coe v0 of
      C_indexOf'46'constructor_4241 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1952 ::
  T_indexOf_1932 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1952 v0
  = case coe v0 of
      C_indexOf'46'constructor_4241 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfVote
d_indexOfVote_1954 ::
  T_indexOf_1932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1954 v0
  = case coe v0 of
      C_indexOf'46'constructor_4241 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1956 ::
  T_indexOf_1932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858] ->
  Maybe AgdaAny
d_indexOfProposal_1956 v0
  = case coe v0 of
      C_indexOf'46'constructor_4241 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions
d_AbstractFunctions_1958 a0 = ()
data T_AbstractFunctions_1958
  = C_AbstractFunctions'46'constructor_4533 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1932
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1970 ::
  T_AbstractFunctions_1958 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1970 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4533 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.serSize
d_serSize_1972 :: T_AbstractFunctions_1958 -> AgdaAny -> Integer
d_serSize_1972 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4533 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1974 :: T_AbstractFunctions_1958 -> T_indexOf_1932
d_indexOfImp_1974 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4533 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_1976 ::
  T_AbstractFunctions_1958 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_1976 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4533 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.scriptSize
d_scriptSize_1978 ::
  T_AbstractFunctions_1958 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_1978 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4533 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
