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
d_T_80 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_T_80 = erased
-- Ledger.Abstract._.ExUnits
d_ExUnits_190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_190 = erased
-- Ledger.Abstract._.GovProposal
d_GovProposal_212 a0 = ()
-- Ledger.Abstract._.MemoryEstimate
d_MemoryEstimate_254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_254 = erased
-- Ledger.Abstract._.PlutusScript
d_PlutusScript_278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_278 = erased
-- Ledger.Abstract._.Prices
d_Prices_312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Prices_312 = erased
-- Ledger.Abstract._.RwdAddr
d_RwdAddr_336 a0 = ()
-- Ledger.Abstract._.Script
d_Script_344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_344 = erased
-- Ledger.Abstract._.ScriptHash
d_ScriptHash_352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_352 = erased
-- Ledger.Abstract._.TxIn
d_TxIn_400 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_400 = erased
-- Ledger.Abstract._.Value
d_Value_426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_426 = erased
-- Ledger.Abstract._.Voter
d_Voter_432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_432 = erased
-- Ledger.Abstract._.Wdrl
d_Wdrl_434 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_434 = erased
-- Ledger.Abstract.indexOf
d_indexOf_1538 a0 = ()
data T_indexOf_1538
  = C_indexOf'46'constructor_2195 (MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
                                   [MAlonzo.Code.Ledger.Certs.T_DCert_788] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Address.T_RwdAddr_70 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 ->
                                   [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708] ->
                                   Maybe AgdaAny)
-- Ledger.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1552 ::
  T_indexOf_1538 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_788] -> Maybe AgdaAny
d_indexOfDCert_1552 v0
  = case coe v0 of
      C_indexOf'46'constructor_2195 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1554 ::
  T_indexOf_1538 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1554 v0
  = case coe v0 of
      C_indexOf'46'constructor_2195 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1556 ::
  T_indexOf_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1556 v0
  = case coe v0 of
      C_indexOf'46'constructor_2195 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1558 ::
  T_indexOf_1538 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1558 v0
  = case coe v0 of
      C_indexOf'46'constructor_2195 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfVote
d_indexOfVote_1560 ::
  T_indexOf_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1560 v0
  = case coe v0 of
      C_indexOf'46'constructor_2195 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1562 ::
  T_indexOf_1538 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708] ->
  Maybe AgdaAny
d_indexOfProposal_1562 v0
  = case coe v0 of
      C_indexOf'46'constructor_2195 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions
d_AbstractFunctions_1564 a0 = ()
data T_AbstractFunctions_1564
  = C_AbstractFunctions'46'constructor_2457 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1538
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1576 ::
  T_AbstractFunctions_1564 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1576 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2457 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.serSize
d_serSize_1578 :: T_AbstractFunctions_1564 -> AgdaAny -> Integer
d_serSize_1578 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2457 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1580 :: T_AbstractFunctions_1564 -> T_indexOf_1538
d_indexOfImp_1580 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2457 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_1582 ::
  T_AbstractFunctions_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_1582 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2457 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.scriptSize
d_scriptSize_1584 ::
  T_AbstractFunctions_1564 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_1584 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2457 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
