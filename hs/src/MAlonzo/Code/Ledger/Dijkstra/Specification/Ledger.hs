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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Entities
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Credential
d_Credential_84 a0 = ()
-- _.DRepsOf
d_DRepsOf_96 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_96 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1194
      (coe v0)
-- _.DecEq-Credential
d_DecEq'45'Credential_136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_136 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
            (coe v0)))
-- _.GovActionState
d_GovActionState_236 a0 = ()
-- _.GovProposal
d_GovProposal_248 a0 = ()
-- _.GovVote
d_GovVote_258 a0 = ()
-- _.HasDCerts-Tx
d_HasDCerts'45'Tx_342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4110
d_HasDCerts'45'Tx_342 ~v0 = du_HasDCerts'45'Tx_342
du_HasDCerts'45'Tx_342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4110
du_HasDCerts'45'Tx_342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4388
-- _.HasDReps
d_HasDReps_346 a0 a1 a2 = ()
-- _.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4310
d_HasDirectDeposits'45'Tx_368 ~v0 = du_HasDirectDeposits'45'Tx_368
du_HasDirectDeposits'45'Tx_368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4310
du_HasDirectDeposits'45'Tx_368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4396
-- _.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4350
d_HasIsValidFlag'45'Tx_430 ~v0 = du_HasIsValidFlag'45'Tx_430
du_HasIsValidFlag'45'Tx_430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4350
du_HasIsValidFlag'45'Tx_430
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4372
-- _.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4190
d_HasListOfGovVotes'45'Tx_444 ~v0 = du_HasListOfGovVotes'45'Tx_444
du_HasListOfGovVotes'45'Tx_444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4190
du_HasListOfGovVotes'45'Tx_444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'Tx_4420
-- _.HasPParams
d_HasPParams_474 a0 a1 a2 = ()
-- _.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3924
d_HasSubTransactions'45'TopLevelTx_544 ~v0
  = du_HasSubTransactions'45'TopLevelTx_544
du_HasSubTransactions'45'TopLevelTx_544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3924
du_HasSubTransactions'45'TopLevelTx_544
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4382
-- _.HasTxId-Tx
d_HasTxId'45'Tx_570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_3970
d_HasTxId'45'Tx_570 ~v0 = du_HasTxId'45'Tx_570
du_HasTxId'45'Tx_570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_3970
du_HasTxId'45'Tx_570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4442
-- _.HasUTxO
d_HasUTxO_588 a0 a1 a2 = ()
-- _.HasVoteDelegs
d_HasVoteDelegs_606 a0 a1 a2 = ()
-- _.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_614 ~v0 = du_HasWithdrawals'45'Tx_614
du_HasWithdrawals'45'Tx_614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'Tx_614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'Tx_4392
-- _.PParams
d_PParams_718 a0 = ()
-- _.PParamsOf
d_PParamsOf_726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_580
      (coe v0)
-- _.Script
d_Script_800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_800 = erased
-- _.ScriptHash
d_ScriptHash_808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptHash_808 = erased
-- _.Slot
d_Slot_864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_864 = erased
-- _.SubLevelTx
d_SubLevelTx_876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_876 = erased
-- _.TopLevelTx
d_TopLevelTx_896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_896 = erased
-- _.Tx
d_Tx_902 a0 a1 = ()
-- _.TxBody
d_TxBody_906 a0 a1 = ()
-- _.UTxO
d_UTxO_930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_930 = erased
-- _.UTxOOf
d_UTxOOf_932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3636 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3644
      (coe v0)
-- _.VoteDelegsOf
d_VoteDelegsOf_966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_966 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1078
      (coe v0)
-- _.epoch
d_epoch_1022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_epoch_1022 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
         (coe v0))
-- _.getAllScripts
d_getAllScripts_1048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_1048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_getAllScripts_4562
      (coe v0)
-- _.GovActionState.action
d_action_1326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876
d_action_1326 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1024
      (coe v0)
-- _.GovActionState.deposit
d_deposit_1328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_deposit_1328 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1028
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_1330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny
d_expiresIn_1330 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1022
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_1332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny
d_prevAction_1332 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1026
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_1334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1334 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1020
      (coe v0)
-- _.GovActionState.votes
d_votes_1336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_942
d_votes_1336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1018
      (coe v0)
-- _.GovProposal.action
d_action_1372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876
d_action_1372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_990
      (coe v0)
-- _.GovProposal.anchor
d_anchor_1374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_910
d_anchor_1374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1000
      (coe v0)
-- _.GovProposal.deposit
d_deposit_1376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  Integer
d_deposit_1376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_996
      (coe v0)
-- _.GovProposal.policy
d_policy_1378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  Maybe AgdaAny
d_policy_1378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_994
      (coe v0)
-- _.GovProposal.prevAction
d_prevAction_1380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  AgdaAny
d_prevAction_1380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_992
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_1382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_998
      (coe v0)
-- _.GovVote.anchor
d_anchor_1394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_922 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_910
d_anchor_1394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_938
      (coe v0)
-- _.GovVote.gid
d_gid_1396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_932
      (coe v0)
-- _.GovVote.vote
d_vote_1398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_922 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_890
d_vote_1398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_936
      (coe v0)
-- _.GovVote.voter
d_voter_1400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_922 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898
d_voter_1400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_934
      (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_1468 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_1476 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_1484 a0 = ()
-- _.GovernanceActions.HasDReps
d_HasDReps_1514 a0 a1 a2 = ()
-- _.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_1570 a0 a1 a2 = ()
-- _.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_1646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1194
      (coe v0)
-- _.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1678 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1078
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_580
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3636 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3644
      (coe v0)
-- _.PParams.Emax
d_Emax_1966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1966 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_428
      (coe v0)
-- _.PParams.a
d_a_1968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1968 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_400 (coe v0)
-- _.PParams.a0
d_a0_1970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1970 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_432
      (coe v0)
-- _.PParams.b
d_b_1972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1972 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_402 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_1974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_444
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_1976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_1978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_412
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_1980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_434
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_1984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676
d_costmdlsAssoc_1984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_436
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_1986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_452
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_1988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_450
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_1990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_1992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_448
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_446
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_1996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_404
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_392
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_384
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_396
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_388
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_420
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_418
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_390
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_386
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_394
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_416
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_426
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_408
      (coe v0)
-- _.PParams.nopt
d_nopt_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_430
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_406
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
      (coe v0)
-- _.PParams.prices
d_prices_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_414
      (coe v0)
-- _.PParams.pv
d_pv_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_398
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_424
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_422
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_410
      (coe v0)
-- _.Tx.isValid
d_isValid_2498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  AgdaAny
d_isValid_2498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3680
      (coe v0)
-- _.Tx.txAuxData
d_txAuxData_2500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  Maybe AgdaAny
d_txAuxData_2500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3682
      (coe v0)
-- _.Tx.txBody
d_txBody_2502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658
d_txBody_2502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3674
      (coe v0)
-- _.Tx.txSize
d_txSize_2504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  Integer
d_txSize_2504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3678
      (coe v0)
-- _.Tx.txWitnesses
d_txWitnesses_2506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3660
d_txWitnesses_2506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3676
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_2510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  AgdaAny
d_collateralInputs_2510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3736
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_2512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  Maybe Integer
d_currentTreasury_2512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3760
      (coe v0)
-- _.TxBody.mint
d_mint_2514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  AgdaAny
d_mint_2514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3762
      (coe v0)
-- _.TxBody.referenceInputs
d_referenceInputs_2516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_2516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3734
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  Maybe AgdaAny
d_scriptIntegrityHash_2520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3764
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_2522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  Maybe AgdaAny
d_txADhash_2522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3750
      (coe v0)
-- _.TxBody.txBalanceIntervals
d_txBalanceIntervals_2524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_2524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3774
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_2526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288]
d_txCerts_2526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3742
      (coe v0)
-- _.TxBody.txDirectDeposits
d_txDirectDeposits_2528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_2528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3772
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_2530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  Integer
d_txDonation_2530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3752
      (coe v0)
-- _.TxBody.txFee
d_txFee_2532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  AgdaAny
d_txFee_2532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3744
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_2534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976]
d_txGovProposals_2534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3756
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_2536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_922]
d_txGovVotes_2536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3754
      (coe v0)
-- _.TxBody.txGuards
d_txGuards_2538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_2538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3768
      (coe v0)
-- _.TxBody.txId
d_txId_2540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  AgdaAny
d_txId_2540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3740
      (coe v0)
-- _.TxBody.txIns
d_txIns_2542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3732
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_2544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  Maybe AgdaAny
d_txNetworkId_2544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3758
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_2546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3738
      (coe v0)
-- _.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_2548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  AgdaAny
d_txRequiredTopLevelGuards_2548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3770
      (coe v0)
-- _.TxBody.txSubTransactions
d_txSubTransactions_2550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  AgdaAny
d_txSubTransactions_2550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3766
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_2552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3748
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_2554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3746
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState
d_EnactState_2614 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger._.EnactStateOf
d_EnactStateOf_2618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1258 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
d_EnactStateOf_2618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasEnactState
d_HasEnactState_2622 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.cc
d_cc_2664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1242 (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.constitution
d_constitution_2666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1244
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.pparams
d_pparams_2668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.pv
d_pv_2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1246 (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.withdrawals
d_withdrawals_2672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1250
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasEnactState.EnactStateOf
d_EnactStateOf_2676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1258 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
d_EnactStateOf_2676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1924 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2682 = erased
-- Ledger.Dijkstra.Specification.Ledger._.GovState
d_GovState_2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  ()
d_GovState_2696 = erased
-- Ledger.Dijkstra.Specification.Ledger._.GovStateOf
d_GovStateOf_2698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_1968 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_1976
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2700 ~v0 ~v1 = du_HasCast'45'GovEnv_2700
du_HasCast'45'GovEnv_2700 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2700
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasCast'45'GovEnv_2014
-- Ledger.Dijkstra.Specification.Ledger._.HasGovState
d_HasGovState_2708 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasGovState.GovStateOf
d_GovStateOf_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_1968 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_1976
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-SubUTxOEnv
d_HasCast'45'SubUTxOEnv_2846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'SubUTxOEnv_2846 ~v0 ~v1
  = du_HasCast'45'SubUTxOEnv_2846
du_HasCast'45'SubUTxOEnv_2846 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'SubUTxOEnv_2846
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'SubUTxOEnv_3288
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2848 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2848
du_HasCast'45'UTxOEnv_2848 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2848
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOEnv_3286
-- Ledger.Dijkstra.Specification.Ledger._.HasDonations-UTxOState
d_HasDonations'45'UTxOState_2862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_2862 ~v0 ~v1
  = du_HasDonations'45'UTxOState_2862
du_HasDonations'45'UTxOState_2862 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_2862
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasDonations'45'UTxOState_3282
-- Ledger.Dijkstra.Specification.Ledger._.HasFee-UTxOState
d_HasFee'45'UTxOState_2864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFee'45'UTxOState_2864 ~v0 ~v1 = du_HasFee'45'UTxOState_2864
du_HasFee'45'UTxOState_2864 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFee'45'UTxOState_2864
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasFee'45'UTxOState_3280
-- Ledger.Dijkstra.Specification.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3636
d_HasUTxO'45'UTxOState_2906 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2906
du_HasUTxO'45'UTxOState_2906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3636
du_HasUTxO'45'UTxOState_2906
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3278
-- Ledger.Dijkstra.Specification.Ledger._.HasUTxOState
d_HasUTxOState_2908 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.UTxOState
d_UTxOState_2940 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger._.UTxOStateOf
d_UTxOStateOf_2944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3154 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3134
d_UTxOStateOf_2944 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3162
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3154 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3134
d_UTxOStateOf_3026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3162
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.UTxOState.donations
d_donations_3060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3134 ->
  Integer
d_donations_3060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3146
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.UTxOState.fees
d_fees_3062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3134 ->
  Integer
d_fees_3062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3144
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.UTxOState.utxo
d_utxo_3064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_3064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3142
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,SUBUTXOW⦈_
d__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3078 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__3080 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger._.CCHotKeysOf
d_CCHotKeysOf_3176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1472 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1480
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.CertState
d_CertState_3188 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger._.CertStateOf
d_CertStateOf_3192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1672 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1398
d_CertStateOf_3192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1680
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.DStateOf
d_DStateOf_3206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1612 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1342
d_DStateOf_3206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1620
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.GStateOf
d_GStateOf_3230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1652 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1382
d_GStateOf_3230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1660
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCCHotKeys
d_HasCCHotKeys_3236 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_3242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1472
d_HasCCHotKeys'45'GState_3242 ~v0 ~v1
  = du_HasCCHotKeys'45'GState_3242
du_HasCCHotKeys'45'GState_3242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1472
du_HasCCHotKeys'45'GState_3242
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'GState_1752
-- Ledger.Dijkstra.Specification.Ledger._.HasCertState
d_HasCertState_3258 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasDReps-CertState
d_HasDReps'45'CertState_3272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186
d_HasDReps'45'CertState_3272 ~v0 ~v1
  = du_HasDReps'45'CertState_3272
du_HasDReps'45'CertState_3272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186
du_HasDReps'45'CertState_3272
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_1764
-- Ledger.Dijkstra.Specification.Ledger._.HasDState
d_HasDState_3276 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasDState-CertState
d_HasDState'45'CertState_3280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1612
d_HasDState'45'CertState_3280 ~v0 ~v1
  = du_HasDState'45'CertState_3280
du_HasDState'45'CertState_3280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1612
du_HasDState'45'CertState_3280
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1756
-- Ledger.Dijkstra.Specification.Ledger._.HasGState
d_HasGState_3300 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasGState-CertState
d_HasGState'45'CertState_3304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1652
d_HasGState'45'CertState_3304 ~v0 ~v1
  = du_HasGState'45'CertState_3304
du_HasGState'45'CertState_3304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1652
du_HasGState'45'CertState_3304
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1760
-- Ledger.Dijkstra.Specification.Ledger._.HasPState
d_HasPState_3310 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasPState-CertState
d_HasPState'45'CertState_3314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1632
d_HasPState'45'CertState_3314 ~v0 ~v1
  = du_HasPState'45'CertState_3314
du_HasPState'45'CertState_3314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1632
du_HasPState'45'CertState_3314
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1758
-- Ledger.Dijkstra.Specification.Ledger._.HasPools
d_HasPools_3316 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasPools-CertState
d_HasPools'45'CertState_3320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1512
d_HasPools'45'CertState_3320 ~v0 ~v1
  = du_HasPools'45'CertState_3320
du_HasPools'45'CertState_3320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1512
du_HasPools'45'CertState_3320
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'CertState_1768
-- Ledger.Dijkstra.Specification.Ledger._.HasRewards-CertState
d_HasRewards'45'CertState_3334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1552
d_HasRewards'45'CertState_3334 ~v0 ~v1
  = du_HasRewards'45'CertState_3334
du_HasRewards'45'CertState_3334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1552
du_HasRewards'45'CertState_3334
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1762
-- Ledger.Dijkstra.Specification.Ledger._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_3352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1070
d_HasVoteDelegs'45'DState_3352 ~v0 ~v1
  = du_HasVoteDelegs'45'DState_3352
du_HasVoteDelegs'45'DState_3352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1070
du_HasVoteDelegs'45'DState_3352
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'DState_1736
-- Ledger.Dijkstra.Specification.Ledger._.PStateOf
d_PStateOf_3370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1632 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1362
d_PStateOf_3370 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1640
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.PoolsOf
d_PoolsOf_3376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1512 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1520
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.CertState.dState
d_dState_3468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1398 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1342
d_dState_3468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1406
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.CertState.gState
d_gState_3470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1398 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1382
d_gState_3470 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1410
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.CertState.pState
d_pState_3472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1398 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1362
d_pState_3472 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1408
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1472 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1480
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCertState.CertStateOf
d_CertStateOf_3530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1672 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1398
d_CertStateOf_3530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1680
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasDState.DStateOf
d_DStateOf_3538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1612 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1342
d_DStateOf_3538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1620
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasGState.GStateOf
d_GStateOf_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1652 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1382
d_GStateOf_3550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1660
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasPState.PStateOf
d_PStateOf_3554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1632 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1362
d_PStateOf_3554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1640
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasPools.PoolsOf
d_PoolsOf_3558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1512 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1520
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,ENTITIES⦈_
d__'8866'_'8640''10631'_'44'ENTITIES'10632'__3604 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-EntitiesEnv
d_HasCast'45'EntitiesEnv_3618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EntitiesEnv_3618 ~v0 ~v1
  = du_HasCast'45'EntitiesEnv_3618
du_HasCast'45'EntitiesEnv_3618 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EntitiesEnv_3618
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.du_HasCast'45'EntitiesEnv_1720
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv
d_SubLedgerEnv_3644 a0 a1 = ()
data T_SubLedgerEnv_3644
  = C_constructor_3682 AgdaAny (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
                       Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1398
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] Bool
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.slot
d_slot_3664 :: T_SubLedgerEnv_3644 -> AgdaAny
d_slot_3664 v0
  = case coe v0 of
      C_constructor_3682 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.ppolicy
d_ppolicy_3666 :: T_SubLedgerEnv_3644 -> Maybe AgdaAny
d_ppolicy_3666 v0
  = case coe v0 of
      C_constructor_3682 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.pparams
d_pparams_3668 ::
  T_SubLedgerEnv_3644 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3668 v0
  = case coe v0 of
      C_constructor_3682 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.enactState
d_enactState_3670 ::
  T_SubLedgerEnv_3644 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
d_enactState_3670 v0
  = case coe v0 of
      C_constructor_3682 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.treasury
d_treasury_3672 :: T_SubLedgerEnv_3644 -> Integer
d_treasury_3672 v0
  = case coe v0 of
      C_constructor_3682 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.utxo₀
d_utxo'8320'_3674 ::
  T_SubLedgerEnv_3644 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3674 v0
  = case coe v0 of
      C_constructor_3682 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.certState
d_certState_3676 ::
  T_SubLedgerEnv_3644 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1398
d_certState_3676 v0
  = case coe v0 of
      C_constructor_3682 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.allScripts
d_allScripts_3678 ::
  T_SubLedgerEnv_3644 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3678 v0
  = case coe v0 of
      C_constructor_3682 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.isTopLevelValid
d_isTopLevelValid_3680 :: T_SubLedgerEnv_3644 -> Bool
d_isTopLevelValid_3680 v0
  = case coe v0 of
      C_constructor_3682 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv
d_LedgerEnv_3684 a0 a1 = ()
data T_LedgerEnv_3684
  = C_constructor_3706 AgdaAny (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
                       Integer
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.slot
d_slot_3696 :: T_LedgerEnv_3684 -> AgdaAny
d_slot_3696 v0
  = case coe v0 of
      C_constructor_3706 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.ppolicy
d_ppolicy_3698 :: T_LedgerEnv_3684 -> Maybe AgdaAny
d_ppolicy_3698 v0
  = case coe v0 of
      C_constructor_3706 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.pparams
d_pparams_3700 ::
  T_LedgerEnv_3684 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3700 v0
  = case coe v0 of
      C_constructor_3706 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.enactState
d_enactState_3702 ::
  T_LedgerEnv_3684 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
d_enactState_3702 v0
  = case coe v0 of
      C_constructor_3706 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.treasury
d_treasury_3704 :: T_LedgerEnv_3684 -> Integer
d_treasury_3704 v0
  = case coe v0 of
      C_constructor_3706 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.HasCast-LedgerEnv
d_HasCast'45'LedgerEnv_3708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LedgerEnv_3708 ~v0 ~v1 = du_HasCast'45'LedgerEnv_3708
du_HasCast'45'LedgerEnv_3708 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LedgerEnv_3708
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (3684 :: Integer) (2632180534421049758 :: Integer)
                                 "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (864 :: Integer) (2632180534421049758 :: Integer) "_.Slot"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (3684 :: Integer) (2632180534421049758 :: Integer)
                                    "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (10 :: Integer) (15412666033012224255 :: Integer)
                                    "Agda.Builtin.Maybe.Maybe"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (20 :: Integer) (10880583612240331187 :: Integer)
                                             "Agda.Primitive.lzero"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (808 :: Integer) (2632180534421049758 :: Integer)
                                                "_.ScriptHash"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (3684 :: Integer) (2632180534421049758 :: Integer)
                                       "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (718 :: Integer) (2632180534421049758 :: Integer) "_.PParams"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (3684 :: Integer) (2632180534421049758 :: Integer)
                                          "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (2614 :: Integer) (2632180534421049758 :: Integer)
                                          "Ledger.Dijkstra.Specification.Ledger._.EnactState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (3684 :: Integer) (2632180534421049758 :: Integer)
                                             "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                    (coe ("r" :: Data.Text.Text))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (14 :: Integer) (14798748958053396954 :: Integer)
                                             "Ledger.Prelude.Base.Treasury"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
         (coe C_constructor_3706))
-- Ledger.Dijkstra.Specification.Ledger.HasCast-SubLedgerEnv
d_HasCast'45'SubLedgerEnv_3710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'SubLedgerEnv_3710 ~v0 ~v1
  = du_HasCast'45'SubLedgerEnv_3710
du_HasCast'45'SubLedgerEnv_3710 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'SubLedgerEnv_3710
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (3644 :: Integer) (2632180534421049758 :: Integer)
                                 "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (864 :: Integer) (2632180534421049758 :: Integer) "_.Slot"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (3644 :: Integer) (2632180534421049758 :: Integer)
                                    "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (10 :: Integer) (15412666033012224255 :: Integer)
                                    "Agda.Builtin.Maybe.Maybe"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (20 :: Integer) (10880583612240331187 :: Integer)
                                             "Agda.Primitive.lzero"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (808 :: Integer) (2632180534421049758 :: Integer)
                                                "_.ScriptHash"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (3644 :: Integer) (2632180534421049758 :: Integer)
                                       "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (718 :: Integer) (2632180534421049758 :: Integer) "_.PParams"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (3644 :: Integer) (2632180534421049758 :: Integer)
                                          "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (2614 :: Integer) (2632180534421049758 :: Integer)
                                          "Ledger.Dijkstra.Specification.Ledger._.EnactState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (3644 :: Integer) (2632180534421049758 :: Integer)
                                             "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                    (coe ("r" :: Data.Text.Text))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (14 :: Integer) (14798748958053396954 :: Integer)
                                             "Ledger.Prelude.Base.Treasury"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (3644 :: Integer) (2632180534421049758 :: Integer)
                                                "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                       (coe ("r" :: Data.Text.Text))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (930 :: Integer) (2632180534421049758 :: Integer)
                                                "_.UTxO"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (3644 :: Integer)
                                                   (2632180534421049758 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                          (coe ("r" :: Data.Text.Text))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (3188 :: Integer)
                                                   (2632180534421049758 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Ledger._.CertState"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                (coe
                                                   (MAlonzo.RTE.QName
                                                      (3644 :: Integer)
                                                      (2632180534421049758 :: Integer)
                                                      "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                             (coe ("r" :: Data.Text.Text))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                (coe
                                                   (MAlonzo.RTE.QName
                                                      (128 :: Integer)
                                                      (9254951203007797098 :: Integer)
                                                      "abstract-set-theory.FiniteSetTheory._.Set"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                         (coe
                                                            (MAlonzo.RTE.QName
                                                               (800 :: Integer)
                                                               (2632180534421049758 :: Integer)
                                                               "_.Script"
                                                               (MAlonzo.RTE.Fixity
                                                                  MAlonzo.RTE.NonAssoc
                                                                  MAlonzo.RTE.Unrelated)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                   (coe
                                                      (MAlonzo.RTE.QName
                                                         (3644 :: Integer)
                                                         (2632180534421049758 :: Integer)
                                                         "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                (coe ("r" :: Data.Text.Text))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                   (coe
                                                      (MAlonzo.RTE.QName
                                                         (6 :: Integer)
                                                         (4305008439024043551 :: Integer)
                                                         "Agda.Builtin.Bool.Bool"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
         (coe C_constructor_3682))
-- Ledger.Dijkstra.Specification.Ledger.HasPParams-LedgerEnv
d_HasPParams'45'LedgerEnv_3712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
d_HasPParams'45'LedgerEnv_3712 ~v0 ~v1
  = du_HasPParams'45'LedgerEnv_3712
du_HasPParams'45'LedgerEnv_3712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
du_HasPParams'45'LedgerEnv_3712
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_582
      (coe (\ v0 -> d_pparams_3700 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasEnactState-LedgerEnv
d_HasEnactState'45'LedgerEnv_3714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1258
d_HasEnactState'45'LedgerEnv_3714 ~v0 ~v1
  = du_HasEnactState'45'LedgerEnv_3714
du_HasEnactState'45'LedgerEnv_3714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1258
du_HasEnactState'45'LedgerEnv_3714
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1268
      (coe (\ v0 -> d_enactState_3702 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasPParams-SubLedgerEnv
d_HasPParams'45'SubLedgerEnv_3716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
d_HasPParams'45'SubLedgerEnv_3716 ~v0 ~v1
  = du_HasPParams'45'SubLedgerEnv_3716
du_HasPParams'45'SubLedgerEnv_3716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
du_HasPParams'45'SubLedgerEnv_3716
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_582
      (coe (\ v0 -> d_pparams_3668 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasEnactState-SubLedgerEnv
d_HasEnactState'45'SubLedgerEnv_3718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1258
d_HasEnactState'45'SubLedgerEnv_3718 ~v0 ~v1
  = du_HasEnactState'45'SubLedgerEnv_3718
du_HasEnactState'45'SubLedgerEnv_3718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1258
du_HasEnactState'45'SubLedgerEnv_3718
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1268
      (coe (\ v0 -> d_enactState_3670 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasUTxO-SubLedgerEnv
d_HasUTxO'45'SubLedgerEnv_3720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3636
d_HasUTxO'45'SubLedgerEnv_3720 ~v0 ~v1
  = du_HasUTxO'45'SubLedgerEnv_3720
du_HasUTxO'45'SubLedgerEnv_3720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3636
du_HasUTxO'45'SubLedgerEnv_3720
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3646
      (coe (\ v0 -> d_utxo'8320'_3674 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasTreasury-SubLedgerEnv
d_HasTreasury'45'SubLedgerEnv_3722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'SubLedgerEnv_3722 ~v0 ~v1
  = du_HasTreasury'45'SubLedgerEnv_3722
du_HasTreasury'45'SubLedgerEnv_3722 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'SubLedgerEnv_3722
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe (\ v0 -> d_treasury_3672 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.LedgerState
d_LedgerState_3724 a0 a1 = ()
data T_LedgerState_3724
  = C_'10214'_'44'_'44'_'10215''737'_3738 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3134
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1398
-- Ledger.Dijkstra.Specification.Ledger.LedgerState.utxoSt
d_utxoSt_3732 ::
  T_LedgerState_3724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3134
d_utxoSt_3732 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_3738 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerState.govSt
d_govSt_3734 ::
  T_LedgerState_3724 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3734 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_3738 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerState.certState
d_certState_3736 ::
  T_LedgerState_3724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1398
d_certState_3736 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_3738 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.HasLedgerState
d_HasLedgerState_3744 a0 a1 a2 a3 = ()
newtype T_HasLedgerState_3744
  = C_constructor_3754 (AgdaAny -> T_LedgerState_3724)
-- Ledger.Dijkstra.Specification.Ledger.HasLedgerState.LedgerStateOf
d_LedgerStateOf_3752 ::
  T_HasLedgerState_3744 -> AgdaAny -> T_LedgerState_3724
d_LedgerStateOf_3752 v0
  = case coe v0 of
      C_constructor_3754 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger._.LedgerStateOf
d_LedgerStateOf_3758 ::
  T_HasLedgerState_3744 -> AgdaAny -> T_LedgerState_3724
d_LedgerStateOf_3758 v0 = coe d_LedgerStateOf_3752 (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.HasUTxOState-LedgerState
d_HasUTxOState'45'LedgerState_3760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3154
d_HasUTxOState'45'LedgerState_3760 ~v0 ~v1
  = du_HasUTxOState'45'LedgerState_3760
du_HasUTxOState'45'LedgerState_3760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3154
du_HasUTxOState'45'LedgerState_3760
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_constructor_3164
      (coe (\ v0 -> d_utxoSt_3732 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasUTxO-LedgerState
d_HasUTxO'45'LedgerState_3762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3636
d_HasUTxO'45'LedgerState_3762 ~v0 ~v1
  = du_HasUTxO'45'LedgerState_3762
du_HasUTxO'45'LedgerState_3762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3636
du_HasUTxO'45'LedgerState_3762
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3646
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3644
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3278)
              (d_utxoSt_3732 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasGovState-LedgerState
d_HasGovState'45'LedgerState_3764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_1968
d_HasGovState'45'LedgerState_3764 ~v0 ~v1
  = du_HasGovState'45'LedgerState_3764
du_HasGovState'45'LedgerState_3764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_1968
du_HasGovState'45'LedgerState_3764
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_constructor_1978
      (coe (\ v0 -> d_govSt_3734 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasCertState-LedgerState
d_HasCertState'45'LedgerState_3766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1672
d_HasCertState'45'LedgerState_3766 ~v0 ~v1
  = du_HasCertState'45'LedgerState_3766
du_HasCertState'45'LedgerState_3766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1672
du_HasCertState'45'LedgerState_3766
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1682
      (coe (\ v0 -> d_certState_3736 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasPools-LedgerState
d_HasPools'45'LedgerState_3768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1512
d_HasPools'45'LedgerState_3768 ~v0 ~v1
  = du_HasPools'45'LedgerState_3768
du_HasPools'45'LedgerState_3768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1512
du_HasPools'45'LedgerState_3768
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1522
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1520
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'CertState_1768)
              (d_certState_3736 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasGState-LedgerState
d_HasGState'45'LedgerState_3770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1652
d_HasGState'45'LedgerState_3770 ~v0 ~v1
  = du_HasGState'45'LedgerState_3770
du_HasGState'45'LedgerState_3770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1652
du_HasGState'45'LedgerState_3770
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1662
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1660
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1760)
              (d_certState_3736 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasDState-LedgerState
d_HasDState'45'LedgerState_3772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1612
d_HasDState'45'LedgerState_3772 ~v0 ~v1
  = du_HasDState'45'LedgerState_3772
du_HasDState'45'LedgerState_3772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1612
du_HasDState'45'LedgerState_3772
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1622
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1620
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1756)
              (d_certState_3736 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasPState-LedgerState
d_HasPState'45'LedgerState_3774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1632
d_HasPState'45'LedgerState_3774 ~v0 ~v1
  = du_HasPState'45'LedgerState_3774
du_HasPState'45'LedgerState_3774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1632
du_HasPState'45'LedgerState_3774
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1642
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1640
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1758)
              (d_certState_3736 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasVoteDelegs-LedgerState
d_HasVoteDelegs'45'LedgerState_3776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1070
d_HasVoteDelegs'45'LedgerState_3776 ~v0 ~v1
  = du_HasVoteDelegs'45'LedgerState_3776
du_HasVoteDelegs'45'LedgerState_3776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1070
du_HasVoteDelegs'45'LedgerState_3776
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1080
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1078
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'DState_1736)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1620
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1756)
                 (d_certState_3736 (coe v0)))))
-- Ledger.Dijkstra.Specification.Ledger.HasDonations-LedgerState
d_HasDonations'45'LedgerState_3778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'LedgerState_3778 ~v0 ~v1
  = du_HasDonations'45'LedgerState_3778
du_HasDonations'45'LedgerState_3778 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'LedgerState_3778
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasDonations'45'UTxOState_3282)
              (d_utxoSt_3732 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasFees-LedgerState
d_HasFees'45'LedgerState_3780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'LedgerState_3780 ~v0 ~v1
  = du_HasFees'45'LedgerState_3780
du_HasFees'45'LedgerState_3780 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'LedgerState_3780
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_48
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasFee'45'UTxOState_3280)
              (d_utxoSt_3732 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasCCHotKeys-LedgerState
d_HasCCHotKeys'45'LedgerState_3782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1472
d_HasCCHotKeys'45'LedgerState_3782 ~v0 ~v1
  = du_HasCCHotKeys'45'LedgerState_3782
du_HasCCHotKeys'45'LedgerState_3782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1472
du_HasCCHotKeys'45'LedgerState_3782
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1482
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1480
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'GState_1752)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1660
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1760)
                 (d_certState_3736 (coe v0)))))
-- Ledger.Dijkstra.Specification.Ledger.HasDReps-LedgerState
d_HasDReps'45'LedgerState_3784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186
d_HasDReps'45'LedgerState_3784 ~v0 ~v1
  = du_HasDReps'45'LedgerState_3784
du_HasDReps'45'LedgerState_3784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186
du_HasDReps'45'LedgerState_3784
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1196
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1194
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_1764)
              (d_certState_3736 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasCast-LedgerState
d_HasCast'45'LedgerState_3786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LedgerState_3786 ~v0 ~v1
  = du_HasCast'45'LedgerState_3786
du_HasCast'45'LedgerState_3786 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LedgerState_3786
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (3724 :: Integer) (2632180534421049758 :: Integer)
                                 "Ledger.Dijkstra.Specification.Ledger.LedgerState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2940 :: Integer) (2632180534421049758 :: Integer)
                                 "Ledger.Dijkstra.Specification.Ledger._.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (3724 :: Integer) (2632180534421049758 :: Integer)
                                    "Ledger.Dijkstra.Specification.Ledger.LedgerState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2696 :: Integer) (2632180534421049758 :: Integer)
                                    "Ledger.Dijkstra.Specification.Ledger._.GovState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (3724 :: Integer) (2632180534421049758 :: Integer)
                                       "Ledger.Dijkstra.Specification.Ledger.LedgerState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (3188 :: Integer) (2632180534421049758 :: Integer)
                                       "Ledger.Dijkstra.Specification.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_3738))
-- Ledger.Dijkstra.Specification.Ledger.txgov
d_txgov_3790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_3790 ~v0 ~v1 ~v2 v3 = du_txgov_3790 v3
du_txgov_3790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3658 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_3790 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3756
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3754
            (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.GovProposals+Votes
d_GovProposals'43'Votes_3848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_GovProposals'43'Votes_3848 ~v0 ~v1 ~v2 v3
  = du_GovProposals'43'Votes_3848 v3
du_GovProposals'43'Votes_3848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_GovProposals'43'Votes_3848 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3756
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3674
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3754
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3674
               (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_3852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1398 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_3852 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_3852 v0 v2 v3
du_rmOrphanDRepVotes_3852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1398 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_3852 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_124
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
         (coe du_go_3866 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Dijkstra.Specification.Ledger._.ifDRepRegistered
d_ifDRepRegistered_3862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1398 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_ifDRepRegistered_3862 = erased
-- Ledger.Dijkstra.Specification.Ledger._.go
d_go_3866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1398 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004
d_go_3866 v0 ~v1 v2 ~v3 v4 = du_go_3866 v0 v2 v4
du_go_3866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1398 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004
du_go_3866 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1030
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_956
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_950
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1018
               (coe v2)))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1432
            (\ v3 ->
               coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                             (coe v0)))))
                 (coe v3)
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_586
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1390
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1410
                          (coe v1)))))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_952
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1018
                  (coe v2))))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_954
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1018
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1020
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1022
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1024
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1026
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1028
         (coe v2))
-- Ledger.Dijkstra.Specification.Ledger.allColdCreds
d_allColdCreds_3870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_3870 ~v0 ~v1 v2 v3 = du_allColdCreds_3870 v2 v3
du_allColdCreds_3870 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_3870 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_ccCreds_1282
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1242
            (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_536
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1044
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1024
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_456
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasCoin-LedgerState
d_HasCoin'45'LedgerState_3880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'LedgerState_3880 v0 ~v1
  = du_HasCoin'45'LedgerState_3880 v0
du_HasCoin'45'LedgerState_3880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'LedgerState_3880 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt
                    (coe
                       addInt
                       (coe
                          addInt
                          (coe
                             addInt
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_cbalance_3318
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3142
                                   (coe d_utxoSt_3732 (coe v1))))
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3146
                                (coe d_utxoSt_3732 (coe v1))))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3144
                             (coe d_utxoSt_3732 (coe v1))))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardsBalance_1864
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
                             (coe v0))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1406
                             (coe d_certState_3736 (coe v1)))))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                   (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                          (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                       (coe
                          MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                       (coe (\ v2 -> v2))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1394
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1660
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1760)
                             (d_certState_3736 (coe v1))))))
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                       (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                    (coe
                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                    (coe (\ v2 -> v2))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1358
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1620
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1756)
                          (d_certState_3736 (coe v1))))))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                          (coe v0))))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                 (coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                 (coe (\ v2 -> v2))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1378
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1640
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1758)
                       (d_certState_3736 (coe v1)))))))
-- Ledger.Dijkstra.Specification.Ledger._⊢_⇀⦇_,SUBLEDGER⦈_
d__'8866'_'8640''10631'_'44'SUBLEDGER'10632'__3924 a0 a1 a2 a3 a4
                                                   a5
  = ()
data T__'8866'_'8640''10631'_'44'SUBLEDGER'10632'__3924
  = C_SUBLEDGER'45'V_3926 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_SUBLEDGER'45'I_3928 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Ledger._⊢_⇀⦇_,SUBLEDGERS⦈_
d__'8866'_'8640''10631'_'44'SUBLEDGERS'10632'__3930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  T_SubLedgerEnv_3644 ->
  T_LedgerState_3724 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654] ->
  T_LedgerState_3724 -> ()
d__'8866'_'8640''10631'_'44'SUBLEDGERS'10632'__3930 = erased
-- Ledger.Dijkstra.Specification.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__3932 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__3932
  = C_LEDGER'45'V_3938 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3134
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1398
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_3944 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  T_LedgerEnv_3684 ->
  T_LedgerState_3724 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654] ->
  T_LedgerState_3724 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3946 = erased
