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
import qualified MAlonzo.Code.Ledger.Certs
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
d_ExUnits_178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_178 = erased
-- Ledger.Abstract._.GovProposal
d_GovProposal_198 a0 = ()
-- Ledger.Abstract._.MemoryEstimate
d_MemoryEstimate_238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_238 = erased
-- Ledger.Abstract._.PlutusScript
d_PlutusScript_264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_264 = erased
-- Ledger.Abstract._.Prices
d_Prices_290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Prices_290 = erased
-- Ledger.Abstract._.RwdAddr
d_RwdAddr_314 a0 = ()
-- Ledger.Abstract._.Script
d_Script_322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_322 = erased
-- Ledger.Abstract._.ScriptHash
d_ScriptHash_330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_330 = erased
-- Ledger.Abstract._.TxIn
d_TxIn_378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_378 = erased
-- Ledger.Abstract._.Value
d_Value_402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_402 = erased
-- Ledger.Abstract._.Voter
d_Voter_408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_408 = erased
-- Ledger.Abstract._.Wdrl
d_Wdrl_410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_410 = erased
-- Ledger.Abstract.indexOf
d_indexOf_1474 a0 = ()
data T_indexOf_1474
  = C_indexOf'46'constructor_2147 (MAlonzo.Code.Ledger.Certs.T_DCert_754 ->
                                   [MAlonzo.Code.Ledger.Certs.T_DCert_754] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Address.T_RwdAddr_70 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688 ->
                                   [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688] ->
                                   Maybe AgdaAny)
-- Ledger.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1488 ::
  T_indexOf_1474 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_754 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_754] -> Maybe AgdaAny
d_indexOfDCert_1488 v0
  = case coe v0 of
      C_indexOf'46'constructor_2147 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1490 ::
  T_indexOf_1474 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1490 v0
  = case coe v0 of
      C_indexOf'46'constructor_2147 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1492 ::
  T_indexOf_1474 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1492 v0
  = case coe v0 of
      C_indexOf'46'constructor_2147 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1494 ::
  T_indexOf_1474 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1494 v0
  = case coe v0 of
      C_indexOf'46'constructor_2147 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfVote
d_indexOfVote_1496 ::
  T_indexOf_1474 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1496 v0
  = case coe v0 of
      C_indexOf'46'constructor_2147 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1498 ::
  T_indexOf_1474 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688] ->
  Maybe AgdaAny
d_indexOfProposal_1498 v0
  = case coe v0 of
      C_indexOf'46'constructor_2147 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions
d_AbstractFunctions_1500 a0 = ()
data T_AbstractFunctions_1500
  = C_AbstractFunctions'46'constructor_2409 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1474
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1512 ::
  T_AbstractFunctions_1500 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1512 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2409 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.serSize
d_serSize_1514 :: T_AbstractFunctions_1500 -> AgdaAny -> Integer
d_serSize_1514 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2409 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1516 :: T_AbstractFunctions_1500 -> T_indexOf_1474
d_indexOfImp_1516 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2409 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_1518 ::
  T_AbstractFunctions_1500 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_1518 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2409 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.scriptSize
d_scriptSize_1520 ::
  T_AbstractFunctions_1500 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_1520 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2409 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
