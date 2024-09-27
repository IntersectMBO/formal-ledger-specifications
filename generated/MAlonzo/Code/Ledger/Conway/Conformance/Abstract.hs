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

module MAlonzo.Code.Ledger.Conway.Conformance.Abstract where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction

-- Ledger.Conway.Conformance.Abstract._.CostModel
d_CostModel_70 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_CostModel_70 = erased
-- Ledger.Conway.Conformance.Abstract._.DCert
d_DCert_76 a0 = ()
-- Ledger.Conway.Conformance.Abstract._.T
d_T_88 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_T_88 = erased
-- Ledger.Conway.Conformance.Abstract._.ExUnits
d_ExUnits_198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_198 = erased
-- Ledger.Conway.Conformance.Abstract._.GovProposal
d_GovProposal_220 a0 = ()
-- Ledger.Conway.Conformance.Abstract._.MemoryEstimate
d_MemoryEstimate_262 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_262 = erased
-- Ledger.Conway.Conformance.Abstract._.PlutusScript
d_PlutusScript_286 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_286 = erased
-- Ledger.Conway.Conformance.Abstract._.Prices
d_Prices_320 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Prices_320 = erased
-- Ledger.Conway.Conformance.Abstract._.RwdAddr
d_RwdAddr_344 a0 = ()
-- Ledger.Conway.Conformance.Abstract._.Script
d_Script_352 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_352 = erased
-- Ledger.Conway.Conformance.Abstract._.ScriptHash
d_ScriptHash_360 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_360 = erased
-- Ledger.Conway.Conformance.Abstract._.TxIn
d_TxIn_444 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_444 = erased
-- Ledger.Conway.Conformance.Abstract._.Value
d_Value_470 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_470 = erased
-- Ledger.Conway.Conformance.Abstract._.Voter
d_Voter_476 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Voter_476 = erased
-- Ledger.Conway.Conformance.Abstract._.Wdrl
d_Wdrl_478 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Wdrl_478 = erased
-- Ledger.Conway.Conformance.Abstract._.GovProposal.action
d_action_926 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
      (coe v0)
-- Ledger.Conway.Conformance.Abstract._.GovProposal.anchor
d_anchor_928 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_804
      (coe v0)
-- Ledger.Conway.Conformance.Abstract._.GovProposal.deposit
d_deposit_930 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer
d_deposit_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_deposit_800
      (coe v0)
-- Ledger.Conway.Conformance.Abstract._.GovProposal.policy
d_policy_932 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Maybe AgdaAny
d_policy_932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
      (coe v0)
-- Ledger.Conway.Conformance.Abstract._.GovProposal.prevAction
d_prevAction_934 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  AgdaAny
d_prevAction_934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_796
      (coe v0)
-- Ledger.Conway.Conformance.Abstract._.GovProposal.returnAddr
d_returnAddr_936 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
d_returnAddr_936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_802
      (coe v0)
-- Ledger.Conway.Conformance.Abstract._.GovernanceActions.GovProposal
d_GovProposal_978 a0 = ()
-- Ledger.Conway.Conformance.Abstract._.RwdAddr.net
d_net_1396 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  AgdaAny
d_net_1396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_net_86 (coe v0)
-- Ledger.Conway.Conformance.Abstract._.RwdAddr.stake
d_stake_1398 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_stake_1398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_88 (coe v0)
-- Ledger.Conway.Conformance.Abstract.indexOf
d_indexOf_1714 a0 = ()
data T_indexOf_1714
  = C_indexOf'46'constructor_2727 (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
                                   [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
                                   Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
                                   [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780] ->
                                   Maybe AgdaAny)
-- Ledger.Conway.Conformance.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1728 ::
  T_indexOf_1714 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  Maybe AgdaAny
d_indexOfDCert_1728 v0
  = case coe v0 of
      C_indexOf'46'constructor_2727 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1730 ::
  T_indexOf_1714 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1730 v0
  = case coe v0 of
      C_indexOf'46'constructor_2727 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1732 ::
  T_indexOf_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1732 v0
  = case coe v0 of
      C_indexOf'46'constructor_2727 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1734 ::
  T_indexOf_1714 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1734 v0
  = case coe v0 of
      C_indexOf'46'constructor_2727 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Abstract.indexOf.indexOfVote
d_indexOfVote_1736 ::
  T_indexOf_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1736 v0
  = case coe v0 of
      C_indexOf'46'constructor_2727 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1738 ::
  T_indexOf_1714 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780] ->
  Maybe AgdaAny
d_indexOfProposal_1738 v0
  = case coe v0 of
      C_indexOf'46'constructor_2727 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Abstract.AbstractFunctions
d_AbstractFunctions_1740 a0 = ()
data T_AbstractFunctions_1740
  = C_AbstractFunctions'46'constructor_3019 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1714
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Conway.Conformance.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1752 ::
  T_AbstractFunctions_1740 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1752 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3019 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Abstract.AbstractFunctions.serSize
d_serSize_1754 :: T_AbstractFunctions_1740 -> AgdaAny -> Integer
d_serSize_1754 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3019 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1756 :: T_AbstractFunctions_1740 -> T_indexOf_1714
d_indexOfImp_1756 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3019 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_1758 ::
  T_AbstractFunctions_1740 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_1758 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3019 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Abstract.AbstractFunctions.scriptSize
d_scriptSize_1760 ::
  T_AbstractFunctions_1740 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_1760 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_3019 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
