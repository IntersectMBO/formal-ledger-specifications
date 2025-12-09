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

module MAlonzo.Code.Ledger.Conway.Specification.Transaction where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Core.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Certs
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Core.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.THash
d_THash_26 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_26 = erased
-- _.GovProposal
d_GovProposal_192 a0 = ()
-- _.GovVote
d_GovVote_200 a0 = ()
-- _.HasWithdrawals
d_HasWithdrawals_304 a0 a1 a2 = ()
-- _.THash
d_THash_334 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_334 = erased
-- _.Network
d_Network_350 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Network_350 = erased
-- _.Script
d_Script_436 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_436 = erased
-- _.ScriptHash
d_ScriptHash_444 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_444 = erased
-- _.Slot
d_Slot_494 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_494 = erased
-- _.TxIn
d_TxIn_524 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_524 = erased
-- _.TxOut
d_TxOut_526 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_526 = erased
-- _.TxWitnesses
d_TxWitnesses_530 a0 = ()
-- _.UTxO
d_UTxO_534 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_534 = erased
-- _.Value
d_Value_554 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_554 = erased
-- _.Withdrawals
d_Withdrawals_564 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_564 = erased
-- _.WithdrawalsOf
d_WithdrawalsOf_566 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_566 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- _.GovActions.GovProposal
d_GovProposal_896 a0 = ()
-- _.GovActions.GovVote
d_GovVote_904 a0 = ()
-- _.GovActions.GovProposal.action
d_action_1038 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_828
d_action_1038 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_990
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_1040 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_884
d_anchor_1040 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_1000
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_1042 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  Integer
d_deposit_1042 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_deposit_996
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_1044 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  Maybe AgdaAny
d_policy_1044 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_policy_994
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_1046 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  AgdaAny
d_prevAction_1046 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_prevAction_992
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_1048 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1048 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_returnAddr_998
      (coe v0)
-- _.GovActions.GovVote.anchor
d_anchor_1060 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_884
d_anchor_1060 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_912
      (coe v0)
-- _.GovActions.GovVote.gid
d_gid_1062 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1062 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gid_906
      (coe v0)
-- _.GovActions.GovVote.vote
d_vote_1064 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_864
d_vote_1064 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_vote_910
      (coe v0)
-- _.GovActions.GovVote.voter
d_voter_1066 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_872
d_voter_1066 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_voter_908
      (coe v0)
-- _.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1164 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1164 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- _.TxWitnesses.scripts
d_scripts_1738 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3254 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_1738 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scripts_3266
      (coe v0)
-- _.TxWitnesses.txdats
d_txdats_1742 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3254 ->
  [AgdaAny]
d_txdats_1742 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txdats_3268
      (coe v0)
-- _.TxWitnesses.txrdmrs
d_txrdmrs_1744 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_1744 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txrdmrs_3270
      (coe v0)
-- _.TxWitnesses.vkSigs
d_vkSigs_1746 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_1746 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_vkSigs_3264
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.DCert
d_DCert_1810 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TxBody
d_TxBody_2184 a0 a1 = ()
data T_TxBody_2184
  = C_constructor_2258 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                       [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] Integer
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (Maybe AgdaAny) Integer
                       [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896]
                       [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976]
                       (Maybe AgdaAny) (Maybe Integer) AgdaAny [AgdaAny] (Maybe AgdaAny)
-- Ledger.Conway.Specification.Transaction.TxBody.txIns
d_txIns_2222 ::
  T_TxBody_2184 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2222 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.refInputs
d_refInputs_2224 ::
  T_TxBody_2184 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2224 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.collateralInputs
d_collateralInputs_2226 ::
  T_TxBody_2184 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2226 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txOuts
d_txOuts_2228 ::
  T_TxBody_2184 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2228 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txId
d_txId_2230 :: T_TxBody_2184 -> AgdaAny
d_txId_2230 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txCerts
d_txCerts_2232 ::
  T_TxBody_2184 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
d_txCerts_2232 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txFee
d_txFee_2234 :: T_TxBody_2184 -> Integer
d_txFee_2234 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txWithdrawals
d_txWithdrawals_2236 ::
  T_TxBody_2184 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2236 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txVldt
d_txVldt_2238 ::
  T_TxBody_2184 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2238 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txADhash
d_txADhash_2240 :: T_TxBody_2184 -> Maybe AgdaAny
d_txADhash_2240 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txDonation
d_txDonation_2242 :: T_TxBody_2184 -> Integer
d_txDonation_2242 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txGovVotes
d_txGovVotes_2244 ::
  T_TxBody_2184 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896]
d_txGovVotes_2244 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txGovProposals
d_txGovProposals_2246 ::
  T_TxBody_2184 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976]
d_txGovProposals_2246 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txNetworkId
d_txNetworkId_2248 :: T_TxBody_2184 -> Maybe AgdaAny
d_txNetworkId_2248 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.currentTreasury
d_currentTreasury_2250 :: T_TxBody_2184 -> Maybe Integer
d_currentTreasury_2250 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.mint
d_mint_2252 :: T_TxBody_2184 -> AgdaAny
d_mint_2252 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.reqSignerHashes
d_reqSignerHashes_2254 :: T_TxBody_2184 -> [AgdaAny]
d_reqSignerHashes_2254 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2256 :: T_TxBody_2184 -> Maybe AgdaAny
d_scriptIntegrityHash_2256 v0
  = case coe v0 of
      C_constructor_2258 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.HasTxBody
d_HasTxBody_2264 a0 a1 a2 a3 = ()
newtype T_HasTxBody_2264
  = C_constructor_2274 (AgdaAny -> T_TxBody_2184)
-- Ledger.Conway.Specification.Transaction.HasTxBody.TxBodyOf
d_TxBodyOf_2272 :: T_HasTxBody_2264 -> AgdaAny -> T_TxBody_2184
d_TxBodyOf_2272 v0
  = case coe v0 of
      C_constructor_2274 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction._.TxBodyOf
d_TxBodyOf_2278 :: T_HasTxBody_2264 -> AgdaAny -> T_TxBody_2184
d_TxBodyOf_2278 v0 = coe d_TxBodyOf_2272 (coe v0)
-- Ledger.Conway.Specification.Transaction.HasDCerts
d_HasDCerts_2284 a0 a1 a2 a3 = ()
newtype T_HasDCerts_2284
  = C_constructor_2294 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282])
-- Ledger.Conway.Specification.Transaction.HasDCerts.DCertsOf
d_DCertsOf_2292 ::
  T_HasDCerts_2284 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
d_DCertsOf_2292 v0
  = case coe v0 of
      C_constructor_2294 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction._.DCertsOf
d_DCertsOf_2298 ::
  T_HasDCerts_2284 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
d_DCertsOf_2298 v0 = coe d_DCertsOf_2292 (coe v0)
-- Ledger.Conway.Specification.Transaction.HasGovProposals
d_HasGovProposals_2304 a0 a1 a2 a3 = ()
newtype T_HasGovProposals_2304
  = C_constructor_2314 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976])
-- Ledger.Conway.Specification.Transaction.HasGovProposals.GovProposalsOf
d_GovProposalsOf_2312 ::
  T_HasGovProposals_2304 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976]
d_GovProposalsOf_2312 v0
  = case coe v0 of
      C_constructor_2314 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction._.GovProposalsOf
d_GovProposalsOf_2318 ::
  T_HasGovProposals_2304 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976]
d_GovProposalsOf_2318 v0 = coe d_GovProposalsOf_2312 (coe v0)
-- Ledger.Conway.Specification.Transaction.HasTxId
d_HasTxId_2324 a0 a1 a2 a3 = ()
newtype T_HasTxId_2324 = C_constructor_2334 (AgdaAny -> AgdaAny)
-- Ledger.Conway.Specification.Transaction.HasTxId.TxIdOf
d_TxIdOf_2332 :: T_HasTxId_2324 -> AgdaAny -> AgdaAny
d_TxIdOf_2332 v0
  = case coe v0 of
      C_constructor_2334 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction._.TxIdOf
d_TxIdOf_2338 :: T_HasTxId_2324 -> AgdaAny -> AgdaAny
d_TxIdOf_2338 v0 = coe d_TxIdOf_2332 (coe v0)
-- Ledger.Conway.Specification.Transaction.HasDonations-TxBody
d_HasDonations'45'TxBody_2340 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_2340 ~v0 ~v1
  = du_HasDonations'45'TxBody_2340
du_HasDonations'45'TxBody_2340 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'TxBody_2340
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe (\ v0 -> d_txDonation_2242 (coe v0)))
-- Ledger.Conway.Specification.Transaction.Tx
d_Tx_2342 a0 a1 = ()
data T_Tx_2342
  = C_constructor_2364 T_TxBody_2184
                       MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3254
                       Integer Bool (Maybe AgdaAny)
-- Ledger.Conway.Specification.Transaction.Tx.body
d_body_2354 :: T_Tx_2342 -> T_TxBody_2184
d_body_2354 v0
  = case coe v0 of
      C_constructor_2364 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.Tx.wits
d_wits_2356 ::
  T_Tx_2342 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3254
d_wits_2356 v0
  = case coe v0 of
      C_constructor_2364 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.Tx.txsize
d_txsize_2358 :: T_Tx_2342 -> Integer
d_txsize_2358 v0
  = case coe v0 of
      C_constructor_2364 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.Tx.isValid
d_isValid_2360 :: T_Tx_2342 -> Bool
d_isValid_2360 v0
  = case coe v0 of
      C_constructor_2364 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.Tx.txAD
d_txAD_2362 :: T_Tx_2342 -> Maybe AgdaAny
d_txAD_2362 v0
  = case coe v0 of
      C_constructor_2364 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.HasTxBody-Tx
d_HasTxBody'45'Tx_2366 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_HasTxBody_2264
d_HasTxBody'45'Tx_2366 ~v0 ~v1 = du_HasTxBody'45'Tx_2366
du_HasTxBody'45'Tx_2366 :: T_HasTxBody_2264
du_HasTxBody'45'Tx_2366
  = coe C_constructor_2274 (coe (\ v0 -> d_body_2354 (coe v0)))
-- Ledger.Conway.Specification.Transaction.HasFees-Tx
d_HasFees'45'Tx_2368 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Tx_2368 ~v0 ~v1 = du_HasFees'45'Tx_2368
du_HasFees'45'Tx_2368 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Tx_2368
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe (\ v0 -> d_txFee_2234 (coe d_body_2354 (coe v0))))
-- Ledger.Conway.Specification.Transaction.HasDCerts-Tx
d_HasDCerts'45'Tx_2370 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_HasDCerts_2284
d_HasDCerts'45'Tx_2370 ~v0 ~v1 = du_HasDCerts'45'Tx_2370
du_HasDCerts'45'Tx_2370 :: T_HasDCerts_2284
du_HasDCerts'45'Tx_2370
  = coe
      C_constructor_2294
      (coe (\ v0 -> d_txCerts_2232 (coe d_body_2354 (coe v0))))
-- Ledger.Conway.Specification.Transaction.HasGovProposals-Tx
d_HasGovProposals'45'Tx_2372 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_HasGovProposals_2304
d_HasGovProposals'45'Tx_2372 ~v0 ~v1
  = du_HasGovProposals'45'Tx_2372
du_HasGovProposals'45'Tx_2372 :: T_HasGovProposals_2304
du_HasGovProposals'45'Tx_2372
  = coe
      C_constructor_2314
      (coe (\ v0 -> d_txGovProposals_2246 (coe d_body_2354 (coe v0))))
-- Ledger.Conway.Specification.Transaction.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_2374 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'TxBody_2374 ~v0 ~v1
  = du_HasWithdrawals'45'TxBody_2374
du_HasWithdrawals'45'TxBody_2374 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
du_HasWithdrawals'45'TxBody_2374
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_152
      (coe (\ v0 -> d_txWithdrawals_2236 (coe v0)))
-- Ledger.Conway.Specification.Transaction.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_2376 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'Tx_2376 ~v0 ~v1 = du_HasWithdrawals'45'Tx_2376
du_HasWithdrawals'45'Tx_2376 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
du_HasWithdrawals'45'Tx_2376
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_152
      (coe (\ v0 -> d_txWithdrawals_2236 (coe d_body_2354 (coe v0))))
-- Ledger.Conway.Specification.Transaction.HasTxId-Tx
d_HasTxId'45'Tx_2378 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_HasTxId_2324
d_HasTxId'45'Tx_2378 ~v0 ~v1 = du_HasTxId'45'Tx_2378
du_HasTxId'45'Tx_2378 :: T_HasTxId_2324
du_HasTxId'45'Tx_2378
  = coe
      C_constructor_2334
      (coe (\ v0 -> d_txId_2230 (coe d_body_2354 (coe v0))))
-- Ledger.Conway.Specification.Transaction.HasDonations-Tx
d_HasDonations'45'Tx_2380 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_2380 ~v0 ~v1 = du_HasDonations'45'Tx_2380
du_HasDonations'45'Tx_2380 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'Tx_2380
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe (\ v0 -> d_txDonation_2242 (coe d_body_2354 (coe v0))))
-- Ledger.Conway.Specification.Transaction.refScripts
d_refScripts_2382 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_2382 v0 ~v1 v2 v3 = du_refScripts_2382 v0 v2 v3
du_refScripts_2382 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_refScripts_2382 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (\ v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1266
                     (coe v0))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1264
                     (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe d_txIns_2222 (coe d_body_2354 (coe v1)))
               (coe d_refInputs_2224 (coe d_body_2354 (coe v1))))))
-- Ledger.Conway.Specification.Transaction._._.collateralInputs
d_collateralInputs_2394 ::
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2394 v0 ~v1 = du_collateralInputs_2394 v0
du_collateralInputs_2394 ::
  T_Tx_2342 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_2394 v0
  = coe d_collateralInputs_2226 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.currentTreasury
d_currentTreasury_2396 ::
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_currentTreasury_2396 v0 ~v1 = du_currentTreasury_2396 v0
du_currentTreasury_2396 :: T_Tx_2342 -> Maybe Integer
du_currentTreasury_2396 v0
  = coe d_currentTreasury_2250 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.mint
d_mint_2398 ::
  T_Tx_2342 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_2398 v0 ~v1 = du_mint_2398 v0
du_mint_2398 :: T_Tx_2342 -> AgdaAny
du_mint_2398 v0 = coe d_mint_2252 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.refInputs
d_refInputs_2400 ::
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2400 v0 ~v1 = du_refInputs_2400 v0
du_refInputs_2400 ::
  T_Tx_2342 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2400 v0
  = coe d_refInputs_2224 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.reqSignerHashes
d_reqSignerHashes_2402 ::
  T_Tx_2342 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSignerHashes_2402 v0 ~v1 = du_reqSignerHashes_2402 v0
du_reqSignerHashes_2402 :: T_Tx_2342 -> [AgdaAny]
du_reqSignerHashes_2402 v0
  = coe d_reqSignerHashes_2254 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.scriptIntegrityHash
d_scriptIntegrityHash_2404 ::
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntegrityHash_2404 v0 ~v1 = du_scriptIntegrityHash_2404 v0
du_scriptIntegrityHash_2404 :: T_Tx_2342 -> Maybe AgdaAny
du_scriptIntegrityHash_2404 v0
  = coe d_scriptIntegrityHash_2256 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txADhash
d_txADhash_2406 ::
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_2406 v0 ~v1 = du_txADhash_2406 v0
du_txADhash_2406 :: T_Tx_2342 -> Maybe AgdaAny
du_txADhash_2406 v0
  = coe d_txADhash_2240 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txCerts
d_txCerts_2408 ::
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
d_txCerts_2408 v0 ~v1 = du_txCerts_2408 v0
du_txCerts_2408 ::
  T_Tx_2342 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
du_txCerts_2408 v0 = coe d_txCerts_2232 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txDonation
d_txDonation_2410 ::
  T_Tx_2342 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txDonation_2410 v0 ~v1 = du_txDonation_2410 v0
du_txDonation_2410 :: T_Tx_2342 -> Integer
du_txDonation_2410 v0
  = coe d_txDonation_2242 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txFee
d_txFee_2412 ::
  T_Tx_2342 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txFee_2412 v0 ~v1 = du_txFee_2412 v0
du_txFee_2412 :: T_Tx_2342 -> Integer
du_txFee_2412 v0 = coe d_txFee_2234 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txGovProposals
d_txGovProposals_2414 ::
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976]
d_txGovProposals_2414 v0 ~v1 = du_txGovProposals_2414 v0
du_txGovProposals_2414 ::
  T_Tx_2342 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976]
du_txGovProposals_2414 v0
  = coe d_txGovProposals_2246 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txGovVotes
d_txGovVotes_2416 ::
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896]
d_txGovVotes_2416 v0 ~v1 = du_txGovVotes_2416 v0
du_txGovVotes_2416 ::
  T_Tx_2342 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896]
du_txGovVotes_2416 v0
  = coe d_txGovVotes_2244 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txId
d_txId_2418 ::
  T_Tx_2342 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txId_2418 v0 ~v1 = du_txId_2418 v0
du_txId_2418 :: T_Tx_2342 -> AgdaAny
du_txId_2418 v0 = coe d_txId_2230 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txIns
d_txIns_2420 ::
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2420 v0 ~v1 = du_txIns_2420 v0
du_txIns_2420 ::
  T_Tx_2342 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2420 v0 = coe d_txIns_2222 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txNetworkId
d_txNetworkId_2422 ::
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_2422 v0 ~v1 = du_txNetworkId_2422 v0
du_txNetworkId_2422 :: T_Tx_2342 -> Maybe AgdaAny
du_txNetworkId_2422 v0
  = coe d_txNetworkId_2248 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txOuts
d_txOuts_2424 ::
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2424 v0 ~v1 = du_txOuts_2424 v0
du_txOuts_2424 ::
  T_Tx_2342 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2424 v0 = coe d_txOuts_2228 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txVldt
d_txVldt_2426 ::
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2426 v0 ~v1 = du_txVldt_2426 v0
du_txVldt_2426 ::
  T_Tx_2342 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2426 v0 = coe d_txVldt_2238 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txWithdrawals
d_txWithdrawals_2428 ::
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2428 v0 ~v1 = du_txWithdrawals_2428 v0
du_txWithdrawals_2428 ::
  T_Tx_2342 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2428 v0
  = coe d_txWithdrawals_2236 (coe d_body_2354 (coe v0))
-- Ledger.Conway.Specification.Transaction.txscripts
d_txscripts_2430 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_2430 v0 ~v1 v2 v3 = du_txscripts_2430 v0 v2 v3
du_txscripts_2430 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txscripts_2430 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scripts_3266
         (coe d_wits_2356 (coe v1)))
      (coe du_refScripts_2382 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Transaction.lookupScriptHash
d_lookupScriptHash_2440 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  AgdaAny ->
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_2440 v0 ~v1 v2 v3 v4
  = du_lookupScriptHash_2440 v0 v2 v3 v4
du_lookupScriptHash_2440 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_lookupScriptHash_2440 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_m_2452 (coe v0) (coe v2) (coe v3)) (coe v1)
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
         (coe
            MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1316
                  (coe v0))))
         (coe v1)
         (let v4
                = MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
          coe
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v4
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                  (coe du_m_2452 (coe v0) (coe v2) (coe v3))))))
-- Ledger.Conway.Specification.Transaction._.m
d_m_2452 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2266 ->
  AgdaAny ->
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_2452 v0 ~v1 ~v2 v3 v4 = du_m_2452 v0 v3 v4
du_m_2452 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_Tx_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_2452 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_setToMap_44
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1316
            (coe v0)))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_426
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
            (coe
               MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_hashRespectsUnion_318
                  (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1894
                     (coe v0))
                  erased erased erased
                  (MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'P1Script_122
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_298
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1894
                           (coe v0))))
                  (MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'PlutusScript_222
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_320
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1894
                           (coe v0))))))
            (coe (\ v3 -> v3)))
         (coe du_txscripts_2430 (coe v0) (coe v1) (coe v2)))
