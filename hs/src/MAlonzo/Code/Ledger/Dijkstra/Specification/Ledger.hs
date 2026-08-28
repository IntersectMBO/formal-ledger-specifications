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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_96 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1202
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
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
            (coe v0)))
-- _.GovActionState
d_GovActionState_240 a0 = ()
-- _.GovProposal
d_GovProposal_252 a0 = ()
-- _.GovVote
d_GovVote_262 a0 = ()
-- _.HasDReps
d_HasDReps_350 a0 a1 a2 = ()
-- _.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4398
d_HasIsValidFlag'45'Tx_434 ~v0 = du_HasIsValidFlag'45'Tx_434
du_HasIsValidFlag'45'Tx_434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4398
du_HasIsValidFlag'45'Tx_434
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4420
-- _.HasPParams
d_HasPParams_478 a0 a1 a2 = ()
-- _.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3976
d_HasSubTransactions'45'TopLevelTx_548 ~v0
  = du_HasSubTransactions'45'TopLevelTx_548
du_HasSubTransactions'45'TopLevelTx_548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3976
du_HasSubTransactions'45'TopLevelTx_548
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4430
-- _.HasTxId-Tx
d_HasTxId'45'Tx_576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_3998
d_HasTxId'45'Tx_576 ~v0 = du_HasTxId'45'Tx_576
du_HasTxId'45'Tx_576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_3998
du_HasTxId'45'Tx_576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4492
-- _.HasUTxO
d_HasUTxO_594 a0 a1 a2 = ()
-- _.HasVoteDelegs
d_HasVoteDelegs_612 a0 a1 a2 = ()
-- _.PParams
d_PParams_724 a0 = ()
-- _.PParamsOf
d_PParamsOf_732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- _.Script
d_Script_806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_806 = erased
-- _.ScriptHash
d_ScriptHash_814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptHash_814 = erased
-- _.Slot
d_Slot_870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_870 = erased
-- _.SubLevelTx
d_SubLevelTx_882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_882 = erased
-- _.TopLevelTx
d_TopLevelTx_902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_902 = erased
-- _.Tx
d_Tx_908 a0 a1 = ()
-- _.TxBody
d_TxBody_912 a0 a1 = ()
-- _.UTxO
d_UTxO_936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_936 = erased
-- _.UTxOOf
d_UTxOOf_938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3688 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3696
      (coe v0)
-- _.VoteDelegsOf
d_VoteDelegsOf_974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1086
      (coe v0)
-- _.epoch
d_epoch_1026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_epoch_1026 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1370
         (coe v0))
-- _.getAllScripts
d_getAllScripts_1054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_1054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_getAllScripts_4612
      (coe v0)
-- _.GovActionState.action
d_action_1334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884
d_action_1334 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1032
      (coe v0)
-- _.GovActionState.deposit
d_deposit_1336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  Integer
d_deposit_1336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1036
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_1338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  AgdaAny
d_expiresIn_1338 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1030
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_1340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  AgdaAny
d_prevAction_1340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1034
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_1342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1028
      (coe v0)
-- _.GovActionState.votes
d_votes_1344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_950
d_votes_1344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1026
      (coe v0)
-- _.GovProposal.action
d_action_1380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884
d_action_1380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_998
      (coe v0)
-- _.GovProposal.anchor
d_anchor_1382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_918
d_anchor_1382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1008
      (coe v0)
-- _.GovProposal.deposit
d_deposit_1384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  Integer
d_deposit_1384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1004
      (coe v0)
-- _.GovProposal.policy
d_policy_1386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  Maybe AgdaAny
d_policy_1386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1002
      (coe v0)
-- _.GovProposal.prevAction
d_prevAction_1388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  AgdaAny
d_prevAction_1388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1000
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_1390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1006
      (coe v0)
-- _.GovVote.anchor
d_anchor_1402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_918
d_anchor_1402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_946
      (coe v0)
-- _.GovVote.gid
d_gid_1404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_940
      (coe v0)
-- _.GovVote.vote
d_vote_1406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_898
d_vote_1406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_944
      (coe v0)
-- _.GovVote.voter
d_voter_1408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906
d_voter_1408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_942
      (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_1476 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_1484 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_1492 a0 = ()
-- _.GovernanceActions.HasDReps
d_HasDReps_1522 a0 a1 a2 = ()
-- _.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_1578 a0 a1 a2 = ()
-- _.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_1654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1654 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1202
      (coe v0)
-- _.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1086
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3688 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1842 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3696
      (coe v0)
-- _.PParams.Emax
d_Emax_1976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_432
      (coe v0)
-- _.PParams.a
d_a_1978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_402 (coe v0)
-- _.PParams.a0
d_a0_1980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_436
      (coe v0)
-- _.PParams.b
d_b_1982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_404 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_1984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_448
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_1986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_446
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_1988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_416
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_1990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_438
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_440
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_1996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_456
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_454
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_444
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_452
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_450
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_406
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_394
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_386
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_398
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_390
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_424
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_422
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_392
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_388
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_396
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_420
      (coe v0)
-- _.PParams.minPoolCost
d_minPoolCost_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_410
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_430
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_412
      (coe v0)
-- _.PParams.nopt
d_nopt_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_434
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_408
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_442
      (coe v0)
-- _.PParams.prices
d_prices_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_418
      (coe v0)
-- _.PParams.pv
d_pv_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_400
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_428
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_426
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_414
      (coe v0)
-- _.Tx.isValid
d_isValid_2512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706 ->
  AgdaAny
d_isValid_2512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3732
      (coe v0)
-- _.Tx.txAuxData
d_txAuxData_2514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706 ->
  Maybe AgdaAny
d_txAuxData_2514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3734
      (coe v0)
-- _.Tx.txBody
d_txBody_2516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710
d_txBody_2516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3726
      (coe v0)
-- _.Tx.txSize
d_txSize_2518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706 ->
  Integer
d_txSize_2518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3730
      (coe v0)
-- _.Tx.txWitnesses
d_txWitnesses_2520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3712
d_txWitnesses_2520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3728
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_2524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  AgdaAny
d_collateralInputs_2524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3788
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_2526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  Maybe Integer
d_currentTreasury_2526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3812
      (coe v0)
-- _.TxBody.mint
d_mint_2528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  AgdaAny
d_mint_2528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3814
      (coe v0)
-- _.TxBody.referenceInputs
d_referenceInputs_2530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_2530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3786
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  Maybe AgdaAny
d_scriptIntegrityHash_2534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3816
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_2536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  Maybe AgdaAny
d_txADhash_2536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3802
      (coe v0)
-- _.TxBody.txBalanceIntervals
d_txBalanceIntervals_2538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_2538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3826
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_2540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308]
d_txCerts_2540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3794
      (coe v0)
-- _.TxBody.txDirectDeposits
d_txDirectDeposits_2542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_2542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3824
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_2544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  Integer
d_txDonation_2544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3804
      (coe v0)
-- _.TxBody.txFee
d_txFee_2546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  AgdaAny
d_txFee_2546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3796
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_2548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984]
d_txGovProposals_2548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3808
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_2550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930]
d_txGovVotes_2550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3806
      (coe v0)
-- _.TxBody.txGuards
d_txGuards_2552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_2552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3820
      (coe v0)
-- _.TxBody.txId
d_txId_2554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  AgdaAny
d_txId_2554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3792
      (coe v0)
-- _.TxBody.txIns
d_txIns_2556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3784
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_2558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  Maybe AgdaAny
d_txNetworkId_2558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3810
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_2560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3790
      (coe v0)
-- _.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_2562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_2562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3822
      (coe v0)
-- _.TxBody.txSubTransactions
d_txSubTransactions_2564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  AgdaAny
d_txSubTransactions_2564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3818
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3800
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3798
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState
d_EnactState_2628 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger._.EnactStateOf
d_EnactStateOf_2632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_EnactStateOf_2632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1274
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasEnactState
d_HasEnactState_2636 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.cc
d_cc_2678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2678 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1250 (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.constitution
d_constitution_2680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2680 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1252
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.pparams
d_pparams_2682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1256
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.pv
d_pv_2684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1254 (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.withdrawals
d_withdrawals_2686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1258
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasEnactState.EnactStateOf
d_EnactStateOf_2690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_EnactStateOf_2690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1274
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1960 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2696 = erased
-- Ledger.Dijkstra.Specification.Ledger._.GovState
d_GovState_2710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  ()
d_GovState_2710 = erased
-- Ledger.Dijkstra.Specification.Ledger._.GovStateOf
d_GovStateOf_2712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2004 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_2012
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2714 ~v0 ~v1 = du_HasCast'45'GovEnv_2714
du_HasCast'45'GovEnv_2714 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2714
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasCast'45'GovEnv_2050
-- Ledger.Dijkstra.Specification.Ledger._.HasGovState
d_HasGovState_2722 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasGovState.GovStateOf
d_GovStateOf_2834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2004 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_2012
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-SubUTxOEnv
d_HasCast'45'SubUTxOEnv_2860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'SubUTxOEnv_2860 ~v0 ~v1
  = du_HasCast'45'SubUTxOEnv_2860
du_HasCast'45'SubUTxOEnv_2860 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'SubUTxOEnv_2860
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'SubUTxOEnv_3348
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2862 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2862
du_HasCast'45'UTxOEnv_2862 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2862
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOEnv_3346
-- Ledger.Dijkstra.Specification.Ledger._.HasDonations-UTxOState
d_HasDonations'45'UTxOState_2874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_2874 ~v0 ~v1
  = du_HasDonations'45'UTxOState_2874
du_HasDonations'45'UTxOState_2874 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_2874
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasDonations'45'UTxOState_3342
-- Ledger.Dijkstra.Specification.Ledger._.HasFee-UTxOState
d_HasFee'45'UTxOState_2876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFee'45'UTxOState_2876 ~v0 ~v1 = du_HasFee'45'UTxOState_2876
du_HasFee'45'UTxOState_2876 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFee'45'UTxOState_2876
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasFee'45'UTxOState_3340
-- Ledger.Dijkstra.Specification.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3688
d_HasUTxO'45'UTxOState_2920 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2920
du_HasUTxO'45'UTxOState_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3688
du_HasUTxO'45'UTxOState_2920
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3338
-- Ledger.Dijkstra.Specification.Ledger._.HasUTxOState
d_HasUTxOState_2922 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.UTxOState
d_UTxOState_2954 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger._.UTxOStateOf
d_UTxOStateOf_2958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3198 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3178
d_UTxOStateOf_2958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3206
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3198 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3178
d_UTxOStateOf_3048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3206
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.UTxOState.donations
d_donations_3082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3178 ->
  Integer
d_donations_3082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3190
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.UTxOState.fees
d_fees_3084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3178 ->
  Integer
d_fees_3084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3188
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.UTxOState.utxo
d_utxo_3086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_3086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3186
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,SUBUTXOW⦈_
d__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3100 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__3102 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger._.isLegacyMode
d_isLegacyMode_3160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706 ->
  Bool
d_isLegacyMode_3160 v0 ~v1 = du_isLegacyMode_3160 v0
du_isLegacyMode_3160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706 ->
  Bool
du_isLegacyMode_3160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.du_isLegacyMode_3640
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.CCHotKeysOf
d_CCHotKeysOf_3210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1528 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3210 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1536
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.CertState
d_CertState_3222 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger._.CertStateOf
d_CertStateOf_3226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_CertStateOf_3226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.DStateOf
d_DStateOf_3240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1688 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364
d_DStateOf_3240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1696
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.GStateOf
d_GStateOf_3266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1728 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404
d_GStateOf_3266 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1736
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCCHotKeys
d_HasCCHotKeys_3272 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_3278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1528
d_HasCCHotKeys'45'GState_3278 ~v0 ~v1
  = du_HasCCHotKeys'45'GState_3278
du_HasCCHotKeys'45'GState_3278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1528
du_HasCCHotKeys'45'GState_3278
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'GState_1830
-- Ledger.Dijkstra.Specification.Ledger._.HasCertState
d_HasCertState_3296 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasDReps-CertState
d_HasDReps'45'CertState_3310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
d_HasDReps'45'CertState_3310 ~v0 ~v1
  = du_HasDReps'45'CertState_3310
du_HasDReps'45'CertState_3310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
du_HasDReps'45'CertState_3310
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_1842
-- Ledger.Dijkstra.Specification.Ledger._.HasDState
d_HasDState_3314 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasDState-CertState
d_HasDState'45'CertState_3318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1688
d_HasDState'45'CertState_3318 ~v0 ~v1
  = du_HasDState'45'CertState_3318
du_HasDState'45'CertState_3318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1688
du_HasDState'45'CertState_3318
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1834
-- Ledger.Dijkstra.Specification.Ledger._.HasGState
d_HasGState_3344 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasGState-CertState
d_HasGState'45'CertState_3348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1728
d_HasGState'45'CertState_3348 ~v0 ~v1
  = du_HasGState'45'CertState_3348
du_HasGState'45'CertState_3348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1728
du_HasGState'45'CertState_3348
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1838
-- Ledger.Dijkstra.Specification.Ledger._.HasPState
d_HasPState_3354 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasPState-CertState
d_HasPState'45'CertState_3358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708
d_HasPState'45'CertState_3358 ~v0 ~v1
  = du_HasPState'45'CertState_3358
du_HasPState'45'CertState_3358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708
du_HasPState'45'CertState_3358
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1836
-- Ledger.Dijkstra.Specification.Ledger._.HasPools
d_HasPools_3360 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasPools-CertState
d_HasPools'45'CertState_3364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568
d_HasPools'45'CertState_3364 ~v0 ~v1
  = du_HasPools'45'CertState_3364
du_HasPools'45'CertState_3364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568
du_HasPools'45'CertState_3364
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'CertState_1846
-- Ledger.Dijkstra.Specification.Ledger._.HasRewards-CertState
d_HasRewards'45'CertState_3378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628
d_HasRewards'45'CertState_3378 ~v0 ~v1
  = du_HasRewards'45'CertState_3378
du_HasRewards'45'CertState_3378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628
du_HasRewards'45'CertState_3378
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1840
-- Ledger.Dijkstra.Specification.Ledger._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_3396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078
d_HasVoteDelegs'45'DState_3396 ~v0 ~v1
  = du_HasVoteDelegs'45'DState_3396
du_HasVoteDelegs'45'DState_3396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078
du_HasVoteDelegs'45'DState_3396
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'DState_1812
-- Ledger.Dijkstra.Specification.Ledger._.PStateOf
d_PStateOf_3418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384
d_PStateOf_3418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1716
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.PoolsOf
d_PoolsOf_3426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1576
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.Rewards
d_Rewards_3432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  ()
d_Rewards_3432 = erased
-- Ledger.Dijkstra.Specification.Ledger._.CertState.dState
d_dState_3518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364
d_dState_3518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1428
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.CertState.gState
d_gState_3520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404
d_gState_3520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1432
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.CertState.pState
d_pState_3522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384
d_pState_3522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1430
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_3576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1528 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1536
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCertState.CertStateOf
d_CertStateOf_3580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_CertStateOf_3580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasDState.DStateOf
d_DStateOf_3588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1688 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364
d_DStateOf_3588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1696
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasGState.GStateOf
d_GStateOf_3604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1728 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404
d_GStateOf_3604 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1736
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasPState.PStateOf
d_PStateOf_3608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384
d_PStateOf_3608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1716
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasPools.PoolsOf
d_PoolsOf_3612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1576
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,ENTITIES⦈_
d__'8866'_'8640''10631'_'44'ENTITIES'10632'__3666 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,SUBENTITIES⦈_
d__'8866'_'8640''10631'_'44'SUBENTITIES'10632'__3668 a0 a1 a2 a3 a4
                                                     a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-EntitiesEnv
d_HasCast'45'EntitiesEnv_3682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EntitiesEnv_3682 ~v0 ~v1
  = du_HasCast'45'EntitiesEnv_3682
du_HasCast'45'EntitiesEnv_3682 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EntitiesEnv_3682
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.du_HasCast'45'EntitiesEnv_3102
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-SubEntitiesEnv
d_HasCast'45'SubEntitiesEnv_3684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'SubEntitiesEnv_3684 ~v0 ~v1
  = du_HasCast'45'SubEntitiesEnv_3684
du_HasCast'45'SubEntitiesEnv_3684 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'SubEntitiesEnv_3684
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.du_HasCast'45'SubEntitiesEnv_3104
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv
d_SubLedgerEnv_3728 a0 a1 = ()
data T_SubLedgerEnv_3728
  = C_constructor_3766 AgdaAny (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
                       Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] Bool
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.slot
d_slot_3748 :: T_SubLedgerEnv_3728 -> AgdaAny
d_slot_3748 v0
  = case coe v0 of
      C_constructor_3766 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.ppolicy
d_ppolicy_3750 :: T_SubLedgerEnv_3728 -> Maybe AgdaAny
d_ppolicy_3750 v0
  = case coe v0 of
      C_constructor_3766 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.pparams
d_pparams_3752 ::
  T_SubLedgerEnv_3728 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3752 v0
  = case coe v0 of
      C_constructor_3766 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.enactState
d_enactState_3754 ::
  T_SubLedgerEnv_3728 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_enactState_3754 v0
  = case coe v0 of
      C_constructor_3766 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.treasury
d_treasury_3756 :: T_SubLedgerEnv_3728 -> Integer
d_treasury_3756 v0
  = case coe v0 of
      C_constructor_3766 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.utxo₀
d_utxo'8320'_3758 ::
  T_SubLedgerEnv_3728 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3758 v0
  = case coe v0 of
      C_constructor_3766 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.rewards₀
d_rewards'8320'_3760 ::
  T_SubLedgerEnv_3728 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards'8320'_3760 v0
  = case coe v0 of
      C_constructor_3766 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.allScripts
d_allScripts_3762 ::
  T_SubLedgerEnv_3728 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3762 v0
  = case coe v0 of
      C_constructor_3766 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.isTopLevelValid
d_isTopLevelValid_3764 :: T_SubLedgerEnv_3728 -> Bool
d_isTopLevelValid_3764 v0
  = case coe v0 of
      C_constructor_3766 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv
d_LedgerEnv_3768 a0 a1 = ()
data T_LedgerEnv_3768
  = C_constructor_3790 AgdaAny (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
                       Integer
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.slot
d_slot_3780 :: T_LedgerEnv_3768 -> AgdaAny
d_slot_3780 v0
  = case coe v0 of
      C_constructor_3790 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.ppolicy
d_ppolicy_3782 :: T_LedgerEnv_3768 -> Maybe AgdaAny
d_ppolicy_3782 v0
  = case coe v0 of
      C_constructor_3790 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.pparams
d_pparams_3784 ::
  T_LedgerEnv_3768 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3784 v0
  = case coe v0 of
      C_constructor_3790 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.enactState
d_enactState_3786 ::
  T_LedgerEnv_3768 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_enactState_3786 v0
  = case coe v0 of
      C_constructor_3790 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.treasury
d_treasury_3788 :: T_LedgerEnv_3768 -> Integer
d_treasury_3788 v0
  = case coe v0 of
      C_constructor_3790 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.HasCast-LedgerEnv
d_HasCast'45'LedgerEnv_3792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LedgerEnv_3792 ~v0 ~v1 = du_HasCast'45'LedgerEnv_3792
du_HasCast'45'LedgerEnv_3792 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LedgerEnv_3792
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
                                 (3768 :: Integer) (2632180534421049758 :: Integer)
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
                                 (870 :: Integer) (2632180534421049758 :: Integer) "_.Slot"
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
                                    (3768 :: Integer) (2632180534421049758 :: Integer)
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
                                                (814 :: Integer) (2632180534421049758 :: Integer)
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
                                       (3768 :: Integer) (2632180534421049758 :: Integer)
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
                                       (724 :: Integer) (2632180534421049758 :: Integer) "_.PParams"
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
                                          (3768 :: Integer) (2632180534421049758 :: Integer)
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
                                          (2628 :: Integer) (2632180534421049758 :: Integer)
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
                                             (3768 :: Integer) (2632180534421049758 :: Integer)
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
         (coe C_constructor_3790))
-- Ledger.Dijkstra.Specification.Ledger.HasCast-SubLedgerEnv
d_HasCast'45'SubLedgerEnv_3794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'SubLedgerEnv_3794 ~v0 ~v1
  = du_HasCast'45'SubLedgerEnv_3794
du_HasCast'45'SubLedgerEnv_3794 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'SubLedgerEnv_3794
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
                                 (3728 :: Integer) (2632180534421049758 :: Integer)
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
                                 (870 :: Integer) (2632180534421049758 :: Integer) "_.Slot"
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
                                    (3728 :: Integer) (2632180534421049758 :: Integer)
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
                                                (814 :: Integer) (2632180534421049758 :: Integer)
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
                                       (3728 :: Integer) (2632180534421049758 :: Integer)
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
                                       (724 :: Integer) (2632180534421049758 :: Integer) "_.PParams"
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
                                          (3728 :: Integer) (2632180534421049758 :: Integer)
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
                                          (2628 :: Integer) (2632180534421049758 :: Integer)
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
                                             (3728 :: Integer) (2632180534421049758 :: Integer)
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
                                                (3728 :: Integer) (2632180534421049758 :: Integer)
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
                                                (936 :: Integer) (2632180534421049758 :: Integer)
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
                                                   (3728 :: Integer)
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
                                                   (3432 :: Integer)
                                                   (2632180534421049758 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Ledger._.Rewards"
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
                                                      (3728 :: Integer)
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
                                                               (806 :: Integer)
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
                                                         (3728 :: Integer)
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
         (coe C_constructor_3766))
-- Ledger.Dijkstra.Specification.Ledger.HasPParams-LedgerEnv
d_HasPParams'45'LedgerEnv_3796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'LedgerEnv_3796 ~v0 ~v1
  = du_HasPParams'45'LedgerEnv_3796
du_HasPParams'45'LedgerEnv_3796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'LedgerEnv_3796
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_588
      (coe (\ v0 -> d_pparams_3784 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasEnactState-LedgerEnv
d_HasEnactState'45'LedgerEnv_3798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
d_HasEnactState'45'LedgerEnv_3798 ~v0 ~v1
  = du_HasEnactState'45'LedgerEnv_3798
du_HasEnactState'45'LedgerEnv_3798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
du_HasEnactState'45'LedgerEnv_3798
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1276
      (coe (\ v0 -> d_enactState_3786 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasPParams-SubLedgerEnv
d_HasPParams'45'SubLedgerEnv_3800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'SubLedgerEnv_3800 ~v0 ~v1
  = du_HasPParams'45'SubLedgerEnv_3800
du_HasPParams'45'SubLedgerEnv_3800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'SubLedgerEnv_3800
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_588
      (coe (\ v0 -> d_pparams_3752 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasEnactState-SubLedgerEnv
d_HasEnactState'45'SubLedgerEnv_3802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
d_HasEnactState'45'SubLedgerEnv_3802 ~v0 ~v1
  = du_HasEnactState'45'SubLedgerEnv_3802
du_HasEnactState'45'SubLedgerEnv_3802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
du_HasEnactState'45'SubLedgerEnv_3802
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1276
      (coe (\ v0 -> d_enactState_3754 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasUTxO-SubLedgerEnv
d_HasUTxO'45'SubLedgerEnv_3804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3688
d_HasUTxO'45'SubLedgerEnv_3804 ~v0 ~v1
  = du_HasUTxO'45'SubLedgerEnv_3804
du_HasUTxO'45'SubLedgerEnv_3804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3688
du_HasUTxO'45'SubLedgerEnv_3804
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3698
      (coe (\ v0 -> d_utxo'8320'_3758 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasTreasury-SubLedgerEnv
d_HasTreasury'45'SubLedgerEnv_3806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'SubLedgerEnv_3806 ~v0 ~v1
  = du_HasTreasury'45'SubLedgerEnv_3806
du_HasTreasury'45'SubLedgerEnv_3806 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'SubLedgerEnv_3806
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe (\ v0 -> d_treasury_3756 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.LedgerState
d_LedgerState_3808 a0 a1 = ()
data T_LedgerState_3808
  = C_'10214'_'44'_'44'_'10215''737'_3822 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3178
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
-- Ledger.Dijkstra.Specification.Ledger.LedgerState.utxoSt
d_utxoSt_3816 ::
  T_LedgerState_3808 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3178
d_utxoSt_3816 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_3822 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerState.govSt
d_govSt_3818 ::
  T_LedgerState_3808 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3818 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_3822 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerState.certState
d_certState_3820 ::
  T_LedgerState_3808 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_certState_3820 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_3822 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.HasLedgerState
d_HasLedgerState_3828 a0 a1 a2 a3 = ()
newtype T_HasLedgerState_3828
  = C_constructor_3838 (AgdaAny -> T_LedgerState_3808)
-- Ledger.Dijkstra.Specification.Ledger.HasLedgerState.LedgerStateOf
d_LedgerStateOf_3836 ::
  T_HasLedgerState_3828 -> AgdaAny -> T_LedgerState_3808
d_LedgerStateOf_3836 v0
  = case coe v0 of
      C_constructor_3838 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger._.LedgerStateOf
d_LedgerStateOf_3842 ::
  T_HasLedgerState_3828 -> AgdaAny -> T_LedgerState_3808
d_LedgerStateOf_3842 v0 = coe d_LedgerStateOf_3836 (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.HasUTxOState-LedgerState
d_HasUTxOState'45'LedgerState_3844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3198
d_HasUTxOState'45'LedgerState_3844 ~v0 ~v1
  = du_HasUTxOState'45'LedgerState_3844
du_HasUTxOState'45'LedgerState_3844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3198
du_HasUTxOState'45'LedgerState_3844
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_constructor_3208
      (coe (\ v0 -> d_utxoSt_3816 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasUTxO-LedgerState
d_HasUTxO'45'LedgerState_3846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3688
d_HasUTxO'45'LedgerState_3846 ~v0 ~v1
  = du_HasUTxO'45'LedgerState_3846
du_HasUTxO'45'LedgerState_3846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3688
du_HasUTxO'45'LedgerState_3846
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3698
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3696
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3338)
              (d_utxoSt_3816 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasGovState-LedgerState
d_HasGovState'45'LedgerState_3848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2004
d_HasGovState'45'LedgerState_3848 ~v0 ~v1
  = du_HasGovState'45'LedgerState_3848
du_HasGovState'45'LedgerState_3848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2004
du_HasGovState'45'LedgerState_3848
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_constructor_2014
      (coe (\ v0 -> d_govSt_3818 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasCertState-LedgerState
d_HasCertState'45'LedgerState_3850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
d_HasCertState'45'LedgerState_3850 ~v0 ~v1
  = du_HasCertState'45'LedgerState_3850
du_HasCertState'45'LedgerState_3850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
du_HasCertState'45'LedgerState_3850
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1758
      (coe (\ v0 -> d_certState_3820 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasPools-LedgerState
d_HasPools'45'LedgerState_3852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568
d_HasPools'45'LedgerState_3852 ~v0 ~v1
  = du_HasPools'45'LedgerState_3852
du_HasPools'45'LedgerState_3852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568
du_HasPools'45'LedgerState_3852
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1578
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1576
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'CertState_1846)
              (d_certState_3820 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasGState-LedgerState
d_HasGState'45'LedgerState_3854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1728
d_HasGState'45'LedgerState_3854 ~v0 ~v1
  = du_HasGState'45'LedgerState_3854
du_HasGState'45'LedgerState_3854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1728
du_HasGState'45'LedgerState_3854
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1738
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1736
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1838)
              (d_certState_3820 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasDState-LedgerState
d_HasDState'45'LedgerState_3856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1688
d_HasDState'45'LedgerState_3856 ~v0 ~v1
  = du_HasDState'45'LedgerState_3856
du_HasDState'45'LedgerState_3856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1688
du_HasDState'45'LedgerState_3856
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1698
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1696
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1834)
              (d_certState_3820 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasPState-LedgerState
d_HasPState'45'LedgerState_3858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708
d_HasPState'45'LedgerState_3858 ~v0 ~v1
  = du_HasPState'45'LedgerState_3858
du_HasPState'45'LedgerState_3858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708
du_HasPState'45'LedgerState_3858
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1718
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1716
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1836)
              (d_certState_3820 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasVoteDelegs-LedgerState
d_HasVoteDelegs'45'LedgerState_3860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078
d_HasVoteDelegs'45'LedgerState_3860 ~v0 ~v1
  = du_HasVoteDelegs'45'LedgerState_3860
du_HasVoteDelegs'45'LedgerState_3860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078
du_HasVoteDelegs'45'LedgerState_3860
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1088
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1086
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'DState_1812)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1696
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1834)
                 (d_certState_3820 (coe v0)))))
-- Ledger.Dijkstra.Specification.Ledger.HasDonations-LedgerState
d_HasDonations'45'LedgerState_3862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'LedgerState_3862 ~v0 ~v1
  = du_HasDonations'45'LedgerState_3862
du_HasDonations'45'LedgerState_3862 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'LedgerState_3862
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasDonations'45'UTxOState_3342)
              (d_utxoSt_3816 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasFees-LedgerState
d_HasFees'45'LedgerState_3864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'LedgerState_3864 ~v0 ~v1
  = du_HasFees'45'LedgerState_3864
du_HasFees'45'LedgerState_3864 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'LedgerState_3864
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_48
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasFee'45'UTxOState_3340)
              (d_utxoSt_3816 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasCCHotKeys-LedgerState
d_HasCCHotKeys'45'LedgerState_3866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1528
d_HasCCHotKeys'45'LedgerState_3866 ~v0 ~v1
  = du_HasCCHotKeys'45'LedgerState_3866
du_HasCCHotKeys'45'LedgerState_3866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1528
du_HasCCHotKeys'45'LedgerState_3866
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1538
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1536
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'GState_1830)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1736
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1838)
                 (d_certState_3820 (coe v0)))))
-- Ledger.Dijkstra.Specification.Ledger.HasDReps-LedgerState
d_HasDReps'45'LedgerState_3868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
d_HasDReps'45'LedgerState_3868 ~v0 ~v1
  = du_HasDReps'45'LedgerState_3868
du_HasDReps'45'LedgerState_3868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
du_HasDReps'45'LedgerState_3868
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1204
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1202
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_1842)
              (d_certState_3820 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasCast-LedgerState
d_HasCast'45'LedgerState_3870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LedgerState_3870 ~v0 ~v1
  = du_HasCast'45'LedgerState_3870
du_HasCast'45'LedgerState_3870 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LedgerState_3870
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
                                 (3808 :: Integer) (2632180534421049758 :: Integer)
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
                                 (2954 :: Integer) (2632180534421049758 :: Integer)
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
                                    (3808 :: Integer) (2632180534421049758 :: Integer)
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
                                    (2710 :: Integer) (2632180534421049758 :: Integer)
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
                                       (3808 :: Integer) (2632180534421049758 :: Integer)
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
                                       (3222 :: Integer) (2632180534421049758 :: Integer)
                                       "Ledger.Dijkstra.Specification.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_3822))
-- Ledger.Dijkstra.Specification.Ledger.txgov
d_txgov_3874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_3874 ~v0 ~v1 ~v2 v3 = du_txgov_3874 v3
du_txgov_3874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3710 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_3874 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3808
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3806
            (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.GovProposals+Votes
d_GovProposals'43'Votes_3932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_GovProposals'43'Votes_3932 ~v0 ~v1 ~v2 v3
  = du_GovProposals'43'Votes_3932 v3
du_GovProposals'43'Votes_3932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_GovProposals'43'Votes_3932 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3808
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3726
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3806
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3726
               (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_3936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_3936 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_3936 v0 v2 v3
du_rmOrphanDRepVotes_3936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_3936 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_124
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
         (coe du_go_3950 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Dijkstra.Specification.Ledger._.ifDRepRegistered
d_ifDRepRegistered_3946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_ifDRepRegistered_3946 = erased
-- Ledger.Dijkstra.Specification.Ledger._.go
d_go_3950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012
d_go_3950 v0 ~v1 v2 ~v3 v4 = du_go_3950 v0 v2 v4
du_go_3950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012
du_go_3950 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1038
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_964
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_958
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1026
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
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
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
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1412
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1432
                          (coe v1)))))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_960
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1026
                  (coe v2))))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_962
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1026
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1028
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1030
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1032
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1034
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1036
         (coe v2))
-- Ledger.Dijkstra.Specification.Ledger.allColdCreds
d_allColdCreds_3954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_3954 ~v0 ~v1 v2 v3 = du_allColdCreds_3954 v2 v3
du_allColdCreds_3954 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_3954 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_ccCreds_1290
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1250
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
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1052
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1032
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_456
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasCoin-LedgerState
d_HasCoin'45'LedgerState_3964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'LedgerState_3964 v0 ~v1
  = du_HasCoin'45'LedgerState_3964 v0
du_HasCoin'45'LedgerState_3964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'LedgerState_3964 v0
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
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_cbalance_3376
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3186
                                   (coe d_utxoSt_3816 (coe v1))))
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3190
                                (coe d_utxoSt_3816 (coe v1))))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3188
                             (coe d_utxoSt_3816 (coe v1))))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardsBalance_1958
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2784
                             (coe v0))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1428
                             (coe d_certState_3820 (coe v1)))))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                   (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
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
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1416
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1736
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1838)
                             (d_certState_3820 (coe v1))))))
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
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
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1380
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1696
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1834)
                          (d_certState_3820 (coe v1))))))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1368
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
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1400
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1716
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1836)
                       (d_certState_3820 (coe v1)))))))
-- Ledger.Dijkstra.Specification.Ledger._⊢_⇀⦇_,SUBLEDGER⦈_
d__'8866'_'8640''10631'_'44'SUBLEDGER'10632'__4010 a0 a1 a2 a3 a4
                                                   a5
  = ()
data T__'8866'_'8640''10631'_'44'SUBLEDGER'10632'__4010
  = C_SUBLEDGER'45'V_4012 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_SUBLEDGER'45'I_4014 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Ledger._⊢_⇀⦇_,SUBLEDGERS⦈_
d__'8866'_'8640''10631'_'44'SUBLEDGERS'10632'__4016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  T_SubLedgerEnv_3728 ->
  T_LedgerState_3808 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706] ->
  T_LedgerState_3808 -> ()
d__'8866'_'8640''10631'_'44'SUBLEDGERS'10632'__4016 = erased
-- Ledger.Dijkstra.Specification.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__4018 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__4018
  = C_LEDGER'45'V_4028 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3178
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_4038 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__4040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3142 ->
  T_LedgerEnv_3768 ->
  T_LedgerState_3808 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3706] ->
  T_LedgerState_3808 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__4040 = erased
