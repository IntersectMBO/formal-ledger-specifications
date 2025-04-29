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
d_MemoryEstimate_258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_258 = erased
-- Ledger.Abstract._.PlutusScript
d_PlutusScript_282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_282 = erased
-- Ledger.Abstract._.Prices
d_Prices_304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Prices_304 = erased
-- Ledger.Abstract._.RwdAddr
d_RwdAddr_328 a0 = ()
-- Ledger.Abstract._.Script
d_Script_336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_336 = erased
-- Ledger.Abstract._.ScriptHash
d_ScriptHash_344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_344 = erased
-- Ledger.Abstract._.TxIn
d_TxIn_424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_424 = erased
-- Ledger.Abstract._.Value
d_Value_452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_452 = erased
-- Ledger.Abstract._.Voter
d_Voter_456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_456 = erased
-- Ledger.Abstract._.Wdrl
d_Wdrl_458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_458 = erased
-- Ledger.Abstract._.GovProposal.action
d_action_778 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_772
d_action_778 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_836 (coe v0)
-- Ledger.Abstract._.GovProposal.anchor
d_anchor_780 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_744
d_anchor_780 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_846 (coe v0)
-- Ledger.Abstract._.GovProposal.deposit
d_deposit_782 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 -> Integer
d_deposit_782 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_842 (coe v0)
-- Ledger.Abstract._.GovProposal.policy
d_policy_784 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 ->
  Maybe AgdaAny
d_policy_784 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_840 (coe v0)
-- Ledger.Abstract._.GovProposal.prevAction
d_prevAction_786 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 -> AgdaAny
d_prevAction_786 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_838 (coe v0)
-- Ledger.Abstract._.GovProposal.returnAddr
d_returnAddr_788 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_788 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_844 (coe v0)
-- Ledger.Abstract._.GovernanceActions.GovProposal
d_GovProposal_836 a0 = ()
-- Ledger.Abstract._.RwdAddr.net
d_net_1310 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_94 -> AgdaAny
d_net_1310 v0 = coe MAlonzo.Code.Ledger.Address.d_net_100 (coe v0)
-- Ledger.Abstract._.RwdAddr.stake
d_stake_1312 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1312 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_102 (coe v0)
-- Ledger.Abstract._.DCert
d_DCert_1650 a0 = ()
-- Ledger.Abstract.indexOf
d_indexOf_1948 a0 = ()
data T_indexOf_1948
  = C_indexOf'46'constructor_4257 (MAlonzo.Code.Ledger.Certs.T_DCert_992 ->
                                   [MAlonzo.Code.Ledger.Certs.T_DCert_992] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 ->
                                   [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822] ->
                                   Maybe AgdaAny)
-- Ledger.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1962 ::
  T_indexOf_1948 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_992 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_992] -> Maybe AgdaAny
d_indexOfDCert_1962 v0
  = case coe v0 of
      C_indexOf'46'constructor_4257 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1964 ::
  T_indexOf_1948 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1964 v0
  = case coe v0 of
      C_indexOf'46'constructor_4257 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1966 ::
  T_indexOf_1948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1966 v0
  = case coe v0 of
      C_indexOf'46'constructor_4257 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1968 ::
  T_indexOf_1948 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1968 v0
  = case coe v0 of
      C_indexOf'46'constructor_4257 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfVote
d_indexOfVote_1970 ::
  T_indexOf_1948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1970 v0
  = case coe v0 of
      C_indexOf'46'constructor_4257 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1972 ::
  T_indexOf_1948 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822] ->
  Maybe AgdaAny
d_indexOfProposal_1972 v0
  = case coe v0 of
      C_indexOf'46'constructor_4257 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions
d_AbstractFunctions_1974 a0 = ()
data T_AbstractFunctions_1974
  = C_AbstractFunctions'46'constructor_4549 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1948
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1986 ::
  T_AbstractFunctions_1974 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1986 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4549 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.serSize
d_serSize_1988 :: T_AbstractFunctions_1974 -> AgdaAny -> Integer
d_serSize_1988 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4549 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1990 :: T_AbstractFunctions_1974 -> T_indexOf_1948
d_indexOfImp_1990 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4549 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_1992 ::
  T_AbstractFunctions_1974 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_1992 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4549 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.scriptSize
d_scriptSize_1994 ::
  T_AbstractFunctions_1974 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_1994 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4549 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
