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
d_CostModel_48 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_CostModel_48 = erased
-- Ledger.Conway.Specification.Abstract._.T
d_T_58 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_T_58 = erased
-- Ledger.Conway.Specification.Abstract._.ExUnits
d_ExUnits_154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_154 = erased
-- Ledger.Conway.Specification.Abstract._.GovProposal
d_GovProposal_168 a0 = ()
-- Ledger.Conway.Specification.Abstract._.MemoryEstimate
d_MemoryEstimate_266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_266 = erased
-- Ledger.Conway.Specification.Abstract._.PlutusScript
d_PlutusScript_292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_292 = erased
-- Ledger.Conway.Specification.Abstract._.Prices
d_Prices_316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Prices_316 = erased
-- Ledger.Conway.Specification.Abstract._.RwdAddr
d_RwdAddr_328 a0 = ()
-- Ledger.Conway.Specification.Abstract._.Script
d_Script_336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_336 = erased
-- Ledger.Conway.Specification.Abstract._.ScriptHash
d_ScriptHash_344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_344 = erased
-- Ledger.Conway.Specification.Abstract._.TxIn
d_TxIn_424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_424 = erased
-- Ledger.Conway.Specification.Abstract._.Value
d_Value_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_452 = erased
-- Ledger.Conway.Specification.Abstract._.Voter
d_Voter_458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Voter_458 = erased
-- Ledger.Conway.Specification.Abstract._.Withdrawals
d_Withdrawals_460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_460 = erased
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal
d_GovProposal_772 a0 = ()
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.action
d_action_836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_848 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_794
d_action_836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_862
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.anchor
d_anchor_838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_848 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_766
d_anchor_838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_872
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.deposit
d_deposit_840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_848 ->
  Integer
d_deposit_840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_868
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.policy
d_policy_842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_848 ->
  Maybe AgdaAny
d_policy_842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_866
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.prevAction
d_prevAction_844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_848 ->
  AgdaAny
d_prevAction_844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_864
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.GovActions.GovProposal.returnAddr
d_returnAddr_846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_848 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98
d_returnAddr_846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_870
      (coe v0)
-- Ledger.Conway.Specification.Abstract._.RwdAddr.net
d_net_1290 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98 ->
  AgdaAny
d_net_1290 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_104 (coe v0)
-- Ledger.Conway.Specification.Abstract._.RwdAddr.stake
d_stake_1292 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1292 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_106 (coe v0)
-- Ledger.Conway.Specification.Abstract._.DCert
d_DCert_1616 a0 = ()
-- Ledger.Conway.Specification.Abstract.indexOf
d_indexOf_1946 a0 = ()
data T_indexOf_1946
  = C_indexOf'46'constructor_4297 (MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1034 ->
                                   [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1034] ->
                                   Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_848 ->
                                   [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_848] ->
                                   Maybe AgdaAny)
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1960 ::
  T_indexOf_1946 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1034 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1034] ->
  Maybe AgdaAny
d_indexOfDCert_1960 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1962 ::
  T_indexOf_1946 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1962 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1964 ::
  T_indexOf_1946 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1964 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1966 ::
  T_indexOf_1946 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1966 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfVote
d_indexOfVote_1968 ::
  T_indexOf_1946 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1968 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1970 ::
  T_indexOf_1946 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_848 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_848] ->
  Maybe AgdaAny
d_indexOfProposal_1970 v0
  = case coe v0 of
      C_indexOf'46'constructor_4297 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions
d_AbstractFunctions_1972 a0 = ()
data T_AbstractFunctions_1972
  = C_AbstractFunctions'46'constructor_4589 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1946
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1984 ::
  T_AbstractFunctions_1972 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1984 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4589 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.serSize
d_serSize_1986 :: T_AbstractFunctions_1972 -> AgdaAny -> Integer
d_serSize_1986 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4589 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1988 :: T_AbstractFunctions_1972 -> T_indexOf_1946
d_indexOfImp_1988 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4589 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_1990 ::
  T_AbstractFunctions_1972 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_1990 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4589 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Abstract.AbstractFunctions.scriptSize
d_scriptSize_1992 ::
  T_AbstractFunctions_1972 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_1992 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_4589 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
