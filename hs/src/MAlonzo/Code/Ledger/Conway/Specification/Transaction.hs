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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
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
d_GovProposal_188 a0 = ()
-- _.GovVote
d_GovVote_196 a0 = ()
-- _.HasWithdrawals
d_HasWithdrawals_296 a0 a1 a2 = ()
-- _.THash
d_THash_326 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_326 = erased
-- _.Network
d_Network_342 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Network_342 = erased
-- _.Script
d_Script_428 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_428 = erased
-- _.ScriptHash
d_ScriptHash_436 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_436 = erased
-- _.Slot
d_Slot_486 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_486 = erased
-- _.TxIn
d_TxIn_516 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_516 = erased
-- _.TxOut
d_TxOut_518 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_518 = erased
-- _.TxWitnesses
d_TxWitnesses_522 a0 = ()
-- _.UTxO
d_UTxO_526 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_526 = erased
-- _.Value
d_Value_546 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_546 = erased
-- _.Withdrawals
d_Withdrawals_556 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_556 = erased
-- _.WithdrawalsOf
d_WithdrawalsOf_558 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_558 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- _.GovActions.GovProposal
d_GovProposal_882 a0 = ()
-- _.GovActions.GovVote
d_GovVote_890 a0 = ()
-- _.GovActions.GovProposal.action
d_action_1016 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830
d_action_1016 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_992
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_1018 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886
d_anchor_1018 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_1002
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_1020 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  Integer
d_deposit_1020 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_deposit_998
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_1022 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  Maybe AgdaAny
d_policy_1022 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_policy_996
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_1024 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  AgdaAny
d_prevAction_1024 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_prevAction_994
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_1026 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1026 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_returnAddr_1000
      (coe v0)
-- _.GovActions.GovVote.anchor
d_anchor_1038 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886
d_anchor_1038 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_914
      (coe v0)
-- _.GovActions.GovVote.gid
d_gid_1040 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1040 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gid_908
      (coe v0)
-- _.GovActions.GovVote.vote
d_vote_1042 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_866
d_vote_1042 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_vote_912
      (coe v0)
-- _.GovActions.GovVote.voter
d_voter_1044 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874
d_voter_1044 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_voter_910
      (coe v0)
-- _.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1138 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1138 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- _.TxWitnesses.scripts
d_scripts_1716 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_1716 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scripts_3274
      (coe v0)
-- _.TxWitnesses.txdats
d_txdats_1720 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262 ->
  [AgdaAny]
d_txdats_1720 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txdats_3276
      (coe v0)
-- _.TxWitnesses.txrdmrs
d_txrdmrs_1722 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_1722 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txrdmrs_3278
      (coe v0)
-- _.TxWitnesses.vkSigs
d_vkSigs_1724 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_1724 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_vkSigs_3272
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.DCert
d_DCert_1788 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TxBody
d_TxBody_2174 a0 a1 = ()
data T_TxBody_2174
  = C_constructor_2248 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                       [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
                       Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (Maybe AgdaAny) Integer
                       [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898]
                       [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978]
                       (Maybe AgdaAny) (Maybe Integer) AgdaAny [AgdaAny] (Maybe AgdaAny)
-- Ledger.Conway.Specification.Transaction.TxBody.txIns
d_txIns_2212 ::
  T_TxBody_2174 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2212 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.refInputs
d_refInputs_2214 ::
  T_TxBody_2174 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2214 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.collateralInputs
d_collateralInputs_2216 ::
  T_TxBody_2174 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2216 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txOuts
d_txOuts_2218 ::
  T_TxBody_2174 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2218 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txId
d_txId_2220 :: T_TxBody_2174 -> AgdaAny
d_txId_2220 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txCerts
d_txCerts_2222 ::
  T_TxBody_2174 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
d_txCerts_2222 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txFee
d_txFee_2224 :: T_TxBody_2174 -> Integer
d_txFee_2224 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txWithdrawals
d_txWithdrawals_2226 ::
  T_TxBody_2174 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2226 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txVldt
d_txVldt_2228 ::
  T_TxBody_2174 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2228 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txADhash
d_txADhash_2230 :: T_TxBody_2174 -> Maybe AgdaAny
d_txADhash_2230 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txDonation
d_txDonation_2232 :: T_TxBody_2174 -> Integer
d_txDonation_2232 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txGovVotes
d_txGovVotes_2234 ::
  T_TxBody_2174 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898]
d_txGovVotes_2234 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txGovProposals
d_txGovProposals_2236 ::
  T_TxBody_2174 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978]
d_txGovProposals_2236 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.txNetworkId
d_txNetworkId_2238 :: T_TxBody_2174 -> Maybe AgdaAny
d_txNetworkId_2238 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.currentTreasury
d_currentTreasury_2240 :: T_TxBody_2174 -> Maybe Integer
d_currentTreasury_2240 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.mint
d_mint_2242 :: T_TxBody_2174 -> AgdaAny
d_mint_2242 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.reqSignerHashes
d_reqSignerHashes_2244 :: T_TxBody_2174 -> [AgdaAny]
d_reqSignerHashes_2244 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2246 :: T_TxBody_2174 -> Maybe AgdaAny
d_scriptIntegrityHash_2246 v0
  = case coe v0 of
      C_constructor_2248 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.HasTxBody
d_HasTxBody_2254 a0 a1 a2 a3 = ()
newtype T_HasTxBody_2254
  = C_constructor_2264 (AgdaAny -> T_TxBody_2174)
-- Ledger.Conway.Specification.Transaction.HasTxBody.TxBodyOf
d_TxBodyOf_2262 :: T_HasTxBody_2254 -> AgdaAny -> T_TxBody_2174
d_TxBodyOf_2262 v0
  = case coe v0 of
      C_constructor_2264 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction._.TxBodyOf
d_TxBodyOf_2268 :: T_HasTxBody_2254 -> AgdaAny -> T_TxBody_2174
d_TxBodyOf_2268 v0 = coe d_TxBodyOf_2262 (coe v0)
-- Ledger.Conway.Specification.Transaction.HasDCerts
d_HasDCerts_2274 a0 a1 a2 a3 = ()
newtype T_HasDCerts_2274
  = C_constructor_2284 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290])
-- Ledger.Conway.Specification.Transaction.HasDCerts.DCertsOf
d_DCertsOf_2282 ::
  T_HasDCerts_2274 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
d_DCertsOf_2282 v0
  = case coe v0 of
      C_constructor_2284 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction._.DCertsOf
d_DCertsOf_2288 ::
  T_HasDCerts_2274 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
d_DCertsOf_2288 v0 = coe d_DCertsOf_2282 (coe v0)
-- Ledger.Conway.Specification.Transaction.HasGovProposals
d_HasGovProposals_2294 a0 a1 a2 a3 = ()
newtype T_HasGovProposals_2294
  = C_constructor_2304 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978])
-- Ledger.Conway.Specification.Transaction.HasGovProposals.GovProposalsOf
d_GovProposalsOf_2302 ::
  T_HasGovProposals_2294 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978]
d_GovProposalsOf_2302 v0
  = case coe v0 of
      C_constructor_2304 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction._.GovProposalsOf
d_GovProposalsOf_2308 ::
  T_HasGovProposals_2294 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978]
d_GovProposalsOf_2308 v0 = coe d_GovProposalsOf_2302 (coe v0)
-- Ledger.Conway.Specification.Transaction.HasTxId
d_HasTxId_2314 a0 a1 a2 a3 = ()
newtype T_HasTxId_2314 = C_constructor_2324 (AgdaAny -> AgdaAny)
-- Ledger.Conway.Specification.Transaction.HasTxId.TxIdOf
d_TxIdOf_2322 :: T_HasTxId_2314 -> AgdaAny -> AgdaAny
d_TxIdOf_2322 v0
  = case coe v0 of
      C_constructor_2324 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction._.TxIdOf
d_TxIdOf_2328 :: T_HasTxId_2314 -> AgdaAny -> AgdaAny
d_TxIdOf_2328 v0 = coe d_TxIdOf_2322 (coe v0)
-- Ledger.Conway.Specification.Transaction.HasDonations-TxBody
d_HasDonations'45'TxBody_2330 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_2330 ~v0 ~v1
  = du_HasDonations'45'TxBody_2330
du_HasDonations'45'TxBody_2330 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'TxBody_2330
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe (\ v0 -> d_txDonation_2232 (coe v0)))
-- Ledger.Conway.Specification.Transaction.Tx
d_Tx_2332 a0 a1 = ()
data T_Tx_2332
  = C_constructor_2354 T_TxBody_2174
                       MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262
                       Integer Bool (Maybe AgdaAny)
-- Ledger.Conway.Specification.Transaction.Tx.body
d_body_2344 :: T_Tx_2332 -> T_TxBody_2174
d_body_2344 v0
  = case coe v0 of
      C_constructor_2354 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.Tx.wits
d_wits_2346 ::
  T_Tx_2332 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262
d_wits_2346 v0
  = case coe v0 of
      C_constructor_2354 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.Tx.txsize
d_txsize_2348 :: T_Tx_2332 -> Integer
d_txsize_2348 v0
  = case coe v0 of
      C_constructor_2354 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.Tx.isValid
d_isValid_2350 :: T_Tx_2332 -> Bool
d_isValid_2350 v0
  = case coe v0 of
      C_constructor_2354 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.Tx.txAD
d_txAD_2352 :: T_Tx_2332 -> Maybe AgdaAny
d_txAD_2352 v0
  = case coe v0 of
      C_constructor_2354 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.HasTxBody-Tx
d_HasTxBody'45'Tx_2356 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_HasTxBody_2254
d_HasTxBody'45'Tx_2356 ~v0 ~v1 = du_HasTxBody'45'Tx_2356
du_HasTxBody'45'Tx_2356 :: T_HasTxBody_2254
du_HasTxBody'45'Tx_2356
  = coe C_constructor_2264 (coe (\ v0 -> d_body_2344 (coe v0)))
-- Ledger.Conway.Specification.Transaction.HasFees-Tx
d_HasFees'45'Tx_2358 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Tx_2358 ~v0 ~v1 = du_HasFees'45'Tx_2358
du_HasFees'45'Tx_2358 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Tx_2358
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe (\ v0 -> d_txFee_2224 (coe d_body_2344 (coe v0))))
-- Ledger.Conway.Specification.Transaction.HasDCerts-Tx
d_HasDCerts'45'Tx_2360 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_HasDCerts_2274
d_HasDCerts'45'Tx_2360 ~v0 ~v1 = du_HasDCerts'45'Tx_2360
du_HasDCerts'45'Tx_2360 :: T_HasDCerts_2274
du_HasDCerts'45'Tx_2360
  = coe
      C_constructor_2284
      (coe (\ v0 -> d_txCerts_2222 (coe d_body_2344 (coe v0))))
-- Ledger.Conway.Specification.Transaction.HasGovProposals-Tx
d_HasGovProposals'45'Tx_2362 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_HasGovProposals_2294
d_HasGovProposals'45'Tx_2362 ~v0 ~v1
  = du_HasGovProposals'45'Tx_2362
du_HasGovProposals'45'Tx_2362 :: T_HasGovProposals_2294
du_HasGovProposals'45'Tx_2362
  = coe
      C_constructor_2304
      (coe (\ v0 -> d_txGovProposals_2236 (coe d_body_2344 (coe v0))))
-- Ledger.Conway.Specification.Transaction.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_2364 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'TxBody_2364 ~v0 ~v1
  = du_HasWithdrawals'45'TxBody_2364
du_HasWithdrawals'45'TxBody_2364 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
du_HasWithdrawals'45'TxBody_2364
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_152
      (coe (\ v0 -> d_txWithdrawals_2226 (coe v0)))
-- Ledger.Conway.Specification.Transaction.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_2366 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'Tx_2366 ~v0 ~v1 = du_HasWithdrawals'45'Tx_2366
du_HasWithdrawals'45'Tx_2366 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
du_HasWithdrawals'45'Tx_2366
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_152
      (coe (\ v0 -> d_txWithdrawals_2226 (coe d_body_2344 (coe v0))))
-- Ledger.Conway.Specification.Transaction.HasTxId-Tx
d_HasTxId'45'Tx_2368 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_HasTxId_2314
d_HasTxId'45'Tx_2368 ~v0 ~v1 = du_HasTxId'45'Tx_2368
du_HasTxId'45'Tx_2368 :: T_HasTxId_2314
du_HasTxId'45'Tx_2368
  = coe
      C_constructor_2324
      (coe (\ v0 -> d_txId_2220 (coe d_body_2344 (coe v0))))
-- Ledger.Conway.Specification.Transaction.HasDonations-Tx
d_HasDonations'45'Tx_2370 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_2370 ~v0 ~v1 = du_HasDonations'45'Tx_2370
du_HasDonations'45'Tx_2370 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'Tx_2370
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe (\ v0 -> d_txDonation_2232 (coe d_body_2344 (coe v0))))
-- Ledger.Conway.Specification.Transaction.refScripts
d_refScripts_2372 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_2372 v0 ~v1 v2 v3 = du_refScripts_2372 v0 v2 v3
du_refScripts_2372 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_refScripts_2372 v0 v1 v2
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
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1272
                     (coe v0))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1270
                     (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe d_txIns_2212 (coe d_body_2344 (coe v1)))
               (coe d_refInputs_2214 (coe d_body_2344 (coe v1))))))
-- Ledger.Conway.Specification.Transaction._._.collateralInputs
d_collateralInputs_2384 ::
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2384 v0 ~v1 = du_collateralInputs_2384 v0
du_collateralInputs_2384 ::
  T_Tx_2332 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_2384 v0
  = coe d_collateralInputs_2216 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.currentTreasury
d_currentTreasury_2386 ::
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_currentTreasury_2386 v0 ~v1 = du_currentTreasury_2386 v0
du_currentTreasury_2386 :: T_Tx_2332 -> Maybe Integer
du_currentTreasury_2386 v0
  = coe d_currentTreasury_2240 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.mint
d_mint_2388 ::
  T_Tx_2332 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_2388 v0 ~v1 = du_mint_2388 v0
du_mint_2388 :: T_Tx_2332 -> AgdaAny
du_mint_2388 v0 = coe d_mint_2242 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.refInputs
d_refInputs_2390 ::
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2390 v0 ~v1 = du_refInputs_2390 v0
du_refInputs_2390 ::
  T_Tx_2332 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2390 v0
  = coe d_refInputs_2214 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.reqSignerHashes
d_reqSignerHashes_2392 ::
  T_Tx_2332 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSignerHashes_2392 v0 ~v1 = du_reqSignerHashes_2392 v0
du_reqSignerHashes_2392 :: T_Tx_2332 -> [AgdaAny]
du_reqSignerHashes_2392 v0
  = coe d_reqSignerHashes_2244 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.scriptIntegrityHash
d_scriptIntegrityHash_2394 ::
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntegrityHash_2394 v0 ~v1 = du_scriptIntegrityHash_2394 v0
du_scriptIntegrityHash_2394 :: T_Tx_2332 -> Maybe AgdaAny
du_scriptIntegrityHash_2394 v0
  = coe d_scriptIntegrityHash_2246 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txADhash
d_txADhash_2396 ::
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_2396 v0 ~v1 = du_txADhash_2396 v0
du_txADhash_2396 :: T_Tx_2332 -> Maybe AgdaAny
du_txADhash_2396 v0
  = coe d_txADhash_2230 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txCerts
d_txCerts_2398 ::
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
d_txCerts_2398 v0 ~v1 = du_txCerts_2398 v0
du_txCerts_2398 ::
  T_Tx_2332 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
du_txCerts_2398 v0 = coe d_txCerts_2222 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txDonation
d_txDonation_2400 ::
  T_Tx_2332 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txDonation_2400 v0 ~v1 = du_txDonation_2400 v0
du_txDonation_2400 :: T_Tx_2332 -> Integer
du_txDonation_2400 v0
  = coe d_txDonation_2232 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txFee
d_txFee_2402 ::
  T_Tx_2332 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txFee_2402 v0 ~v1 = du_txFee_2402 v0
du_txFee_2402 :: T_Tx_2332 -> Integer
du_txFee_2402 v0 = coe d_txFee_2224 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txGovProposals
d_txGovProposals_2404 ::
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978]
d_txGovProposals_2404 v0 ~v1 = du_txGovProposals_2404 v0
du_txGovProposals_2404 ::
  T_Tx_2332 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978]
du_txGovProposals_2404 v0
  = coe d_txGovProposals_2236 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txGovVotes
d_txGovVotes_2406 ::
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898]
d_txGovVotes_2406 v0 ~v1 = du_txGovVotes_2406 v0
du_txGovVotes_2406 ::
  T_Tx_2332 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898]
du_txGovVotes_2406 v0
  = coe d_txGovVotes_2234 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txId
d_txId_2408 ::
  T_Tx_2332 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txId_2408 v0 ~v1 = du_txId_2408 v0
du_txId_2408 :: T_Tx_2332 -> AgdaAny
du_txId_2408 v0 = coe d_txId_2220 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txIns
d_txIns_2410 ::
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2410 v0 ~v1 = du_txIns_2410 v0
du_txIns_2410 ::
  T_Tx_2332 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2410 v0 = coe d_txIns_2212 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txNetworkId
d_txNetworkId_2412 ::
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_2412 v0 ~v1 = du_txNetworkId_2412 v0
du_txNetworkId_2412 :: T_Tx_2332 -> Maybe AgdaAny
du_txNetworkId_2412 v0
  = coe d_txNetworkId_2238 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txOuts
d_txOuts_2414 ::
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2414 v0 ~v1 = du_txOuts_2414 v0
du_txOuts_2414 ::
  T_Tx_2332 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2414 v0 = coe d_txOuts_2218 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txVldt
d_txVldt_2416 ::
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2416 v0 ~v1 = du_txVldt_2416 v0
du_txVldt_2416 ::
  T_Tx_2332 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2416 v0 = coe d_txVldt_2228 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction._._.txWithdrawals
d_txWithdrawals_2418 ::
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2418 v0 ~v1 = du_txWithdrawals_2418 v0
du_txWithdrawals_2418 ::
  T_Tx_2332 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2418 v0
  = coe d_txWithdrawals_2226 (coe d_body_2344 (coe v0))
-- Ledger.Conway.Specification.Transaction.txscripts
d_txscripts_2420 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_2420 v0 ~v1 v2 v3 = du_txscripts_2420 v0 v2 v3
du_txscripts_2420 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txscripts_2420 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scripts_3274
         (coe d_wits_2346 (coe v1)))
      (coe du_refScripts_2372 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Transaction.lookupScriptHash
d_lookupScriptHash_2430 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  AgdaAny ->
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_2430 v0 ~v1 v2 v3 v4
  = du_lookupScriptHash_2430 v0 v2 v3 v4
du_lookupScriptHash_2430 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_lookupScriptHash_2430 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_m_2442 (coe v0) (coe v2) (coe v3)) (coe v1)
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
         (coe
            MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
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
                  (coe du_m_2442 (coe v0) (coe v2) (coe v3))))))
-- Ledger.Conway.Specification.Transaction._.m
d_m_2442 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  AgdaAny ->
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_2442 v0 ~v1 ~v2 v3 v4 = du_m_2442 v0 v3 v4
du_m_2442 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_Tx_2332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_2442 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_setToMap_44
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
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
                  MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_hashRespectsUnion_326
                  (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                     (coe v0))
                  erased erased erased
                  (MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'P1Script_122
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                           (coe v0))))
                  (MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'PlutusScript_226
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                           (coe v0))))))
            (coe (\ v3 -> v3)))
         (coe du_txscripts_2420 (coe v0) (coe v1) (coe v2)))
