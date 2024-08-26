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
d_DCert_68 a0 = ()
-- Ledger.Abstract._.T
d_T_82 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_T_82 = erased
-- Ledger.Abstract._.ExUnits
d_ExUnits_192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_192 = erased
-- Ledger.Abstract._.GovProposal
d_GovProposal_216 a0 = ()
-- Ledger.Abstract._.MemoryEstimate
d_MemoryEstimate_258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_258 = erased
-- Ledger.Abstract._.PlutusScript
d_PlutusScript_282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_282 = erased
-- Ledger.Abstract._.Prices
d_Prices_316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Prices_316 = erased
-- Ledger.Abstract._.RwdAddr
d_RwdAddr_340 a0 = ()
-- Ledger.Abstract._.Script
d_Script_348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_348 = erased
-- Ledger.Abstract._.ScriptHash
d_ScriptHash_356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_356 = erased
-- Ledger.Abstract._.TxIn
d_TxIn_440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_440 = erased
-- Ledger.Abstract._.Value
d_Value_466 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_466 = erased
-- Ledger.Abstract._.Voter
d_Voter_472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_472 = erased
-- Ledger.Abstract._.Wdrl
d_Wdrl_474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_474 = erased
-- Ledger.Abstract.indexOf
d_indexOf_1618 a0 = ()
data T_indexOf_1618
  = C_indexOf'46'constructor_2271 (MAlonzo.Code.Ledger.Certs.T_DCert_828 ->
                                   [MAlonzo.Code.Ledger.Certs.T_DCert_828] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
                                   [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748] ->
                                   Maybe AgdaAny)
-- Ledger.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1632 ::
  T_indexOf_1618 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_828 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_828] -> Maybe AgdaAny
d_indexOfDCert_1632 v0
  = case coe v0 of
      C_indexOf'46'constructor_2271 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1634 ::
  T_indexOf_1618 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1634 v0
  = case coe v0 of
      C_indexOf'46'constructor_2271 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1636 ::
  T_indexOf_1618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1636 v0
  = case coe v0 of
      C_indexOf'46'constructor_2271 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1638 ::
  T_indexOf_1618 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1638 v0
  = case coe v0 of
      C_indexOf'46'constructor_2271 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfVote
d_indexOfVote_1640 ::
  T_indexOf_1618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1640 v0
  = case coe v0 of
      C_indexOf'46'constructor_2271 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1642 ::
  T_indexOf_1618 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748] ->
  Maybe AgdaAny
d_indexOfProposal_1642 v0
  = case coe v0 of
      C_indexOf'46'constructor_2271 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions
d_AbstractFunctions_1644 a0 = ()
data T_AbstractFunctions_1644
  = C_AbstractFunctions'46'constructor_2533 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1618
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1656 ::
  T_AbstractFunctions_1644 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1656 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2533 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.serSize
d_serSize_1658 :: T_AbstractFunctions_1644 -> AgdaAny -> Integer
d_serSize_1658 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2533 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1660 :: T_AbstractFunctions_1644 -> T_indexOf_1618
d_indexOfImp_1660 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2533 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_1662 ::
  T_AbstractFunctions_1644 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_1662 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2533 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.scriptSize
d_scriptSize_1664 ::
  T_AbstractFunctions_1644 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_1664 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2533 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
