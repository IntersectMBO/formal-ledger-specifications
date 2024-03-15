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
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.GovStructure

-- Ledger.Abstract._.CostModel
d_CostModel_62 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CostModel_62 = erased
-- Ledger.Abstract._.DCert
d_DCert_66 a0 = ()
-- Ledger.Abstract._.T
d_T_76 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_T_76 = erased
-- Ledger.Abstract._.ExUnits
d_ExUnits_176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_176 = erased
-- Ledger.Abstract._.GovProposal
d_GovProposal_196 a0 = ()
-- Ledger.Abstract._.MemoryEstimate
d_MemoryEstimate_234 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_234 = erased
-- Ledger.Abstract._.PlutusScript
d_PlutusScript_258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_258 = erased
-- Ledger.Abstract._.Prices
d_Prices_284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Prices_284 = erased
-- Ledger.Abstract._.RwdAddr
d_RwdAddr_308 a0 a1 a2 a3 = ()
-- Ledger.Abstract._.Script
d_Script_316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_316 = erased
-- Ledger.Abstract._.ScriptHash
d_ScriptHash_324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_324 = erased
-- Ledger.Abstract._.TxIn
d_TxIn_370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_370 = erased
-- Ledger.Abstract._.Value
d_Value_392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_392 = erased
-- Ledger.Abstract._.Voter
d_Voter_398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_398 = erased
-- Ledger.Abstract._.Wdrl
d_Wdrl_400 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_400 = erased
-- Ledger.Abstract.indexOf
d_indexOf_1358 a0 = ()
data T_indexOf_1358
  = C_indexOf'46'constructor_2365 (MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
                                   [MAlonzo.Code.Ledger.Deleg.T_DCert_634] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564 ->
                                   [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564] ->
                                   Maybe AgdaAny)
-- Ledger.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1372 ::
  T_indexOf_1358 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] -> Maybe AgdaAny
d_indexOfDCert_1372 v0
  = case coe v0 of
      C_indexOf'46'constructor_2365 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1374 ::
  T_indexOf_1358 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1374 v0
  = case coe v0 of
      C_indexOf'46'constructor_2365 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1376 ::
  T_indexOf_1358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1376 v0
  = case coe v0 of
      C_indexOf'46'constructor_2365 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1378 ::
  T_indexOf_1358 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1378 v0
  = case coe v0 of
      C_indexOf'46'constructor_2365 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfVote
d_indexOfVote_1380 ::
  T_indexOf_1358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1380 v0
  = case coe v0 of
      C_indexOf'46'constructor_2365 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1382 ::
  T_indexOf_1358 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564] ->
  Maybe AgdaAny
d_indexOfProposal_1382 v0
  = case coe v0 of
      C_indexOf'46'constructor_2365 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions
d_AbstractFunctions_1384 a0 = ()
data T_AbstractFunctions_1384
  = C_AbstractFunctions'46'constructor_2653 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1358
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1396 ::
  T_AbstractFunctions_1384 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1396 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2653 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.serSize
d_serSize_1398 :: T_AbstractFunctions_1384 -> AgdaAny -> Integer
d_serSize_1398 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2653 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1400 :: T_AbstractFunctions_1384 -> T_indexOf_1358
d_indexOfImp_1400 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2653 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_1402 ::
  T_AbstractFunctions_1384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_1402 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2653 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.scriptSize
d_scriptSize_1404 ::
  T_AbstractFunctions_1384 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_1404 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2653 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
