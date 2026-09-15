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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1222 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_96 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1230
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1370
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1370
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4402
d_HasIsValidFlag'45'Tx_434 ~v0 = du_HasIsValidFlag'45'Tx_434
du_HasIsValidFlag'45'Tx_434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4402
du_HasIsValidFlag'45'Tx_434
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4424
-- _.HasPParams
d_HasPParams_478 a0 a1 a2 = ()
-- _.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3980
d_HasSubTransactions'45'TopLevelTx_548 ~v0
  = du_HasSubTransactions'45'TopLevelTx_548
du_HasSubTransactions'45'TopLevelTx_548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3980
du_HasSubTransactions'45'TopLevelTx_548
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4434
-- _.HasTxId-Tx
d_HasTxId'45'Tx_576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4002
d_HasTxId'45'Tx_576 ~v0 = du_HasTxId'45'Tx_576
du_HasTxId'45'Tx_576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4002
du_HasTxId'45'Tx_576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4496
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3692 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3700
      (coe v0)
-- _.VoteDelegsOf
d_VoteDelegsOf_974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1106 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1114
      (coe v0)
-- _.epoch
d_epoch_1026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_epoch_1026 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1374
         (coe v0))
-- _.getAllScripts
d_getAllScripts_1054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_1054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_getAllScripts_4616
      (coe v0)
-- _.GovActionState.action
d_action_1336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_912
d_action_1336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1060
      (coe v0)
-- _.GovActionState.deposit
d_deposit_1338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1040 ->
  Integer
d_deposit_1338 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1064
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_1340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1040 ->
  AgdaAny
d_expiresIn_1340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1058
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_1342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1040 ->
  AgdaAny
d_prevAction_1342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1062
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_1344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1040 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1056
      (coe v0)
-- _.GovActionState.votes
d_votes_1346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_978
d_votes_1346 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1054
      (coe v0)
-- _.GovProposal.action
d_action_1382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_912
d_action_1382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1026
      (coe v0)
-- _.GovProposal.anchor
d_anchor_1384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_946
d_anchor_1384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1036
      (coe v0)
-- _.GovProposal.deposit
d_deposit_1386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1012 ->
  Integer
d_deposit_1386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1032
      (coe v0)
-- _.GovProposal.policy
d_policy_1388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1012 ->
  Maybe AgdaAny
d_policy_1388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1030
      (coe v0)
-- _.GovProposal.prevAction
d_prevAction_1390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1012 ->
  AgdaAny
d_prevAction_1390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1028
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_1392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1012 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1034
      (coe v0)
-- _.GovVote.anchor
d_anchor_1404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_958 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_946
d_anchor_1404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_974
      (coe v0)
-- _.GovVote.gid
d_gid_1406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_958 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_968
      (coe v0)
-- _.GovVote.vote
d_vote_1408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_958 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_926
d_vote_1408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_972
      (coe v0)
-- _.GovVote.voter
d_voter_1410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_958 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_934
d_voter_1410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_970
      (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_1478 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_1486 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_1494 a0 = ()
-- _.GovernanceActions.HasDReps
d_HasDReps_1524 a0 a1 a2 = ()
-- _.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_1580 a0 a1 a2 = ()
-- _.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_1656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1222 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1230
      (coe v0)
-- _.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1106 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1114
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3692 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1844 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3700
      (coe v0)
-- _.PParams.Emax
d_Emax_1978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_432
      (coe v0)
-- _.PParams.a
d_a_1980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_402 (coe v0)
-- _.PParams.a0
d_a0_1982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_436
      (coe v0)
-- _.PParams.b
d_b_1984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_404 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_1986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_448
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_1988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_446
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_1990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_416
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_1992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_438
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_1996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_440
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_456
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_454
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_444
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_452
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_450
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_406
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_394
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_386
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_398
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_390
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_424
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_422
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_392
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_388
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_396
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_420
      (coe v0)
-- _.PParams.minPoolCost
d_minPoolCost_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_410
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_430
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_412
      (coe v0)
-- _.PParams.nopt
d_nopt_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_434
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_408
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_442
      (coe v0)
-- _.PParams.prices
d_prices_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_418
      (coe v0)
-- _.PParams.pv
d_pv_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_400
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_428
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_426
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_414
      (coe v0)
-- _.Tx.isValid
d_isValid_2514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3710 ->
  AgdaAny
d_isValid_2514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3736
      (coe v0)
-- _.Tx.txAuxData
d_txAuxData_2516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3710 ->
  Maybe AgdaAny
d_txAuxData_2516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3738
      (coe v0)
-- _.Tx.txBody
d_txBody_2518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3710 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714
d_txBody_2518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3730
      (coe v0)
-- _.Tx.txSize
d_txSize_2520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3710 ->
  Integer
d_txSize_2520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3734
      (coe v0)
-- _.Tx.txWitnesses
d_txWitnesses_2522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3710 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3716
d_txWitnesses_2522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3732
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_2526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  AgdaAny
d_collateralInputs_2526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3792
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_2528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  Maybe Integer
d_currentTreasury_2528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3816
      (coe v0)
-- _.TxBody.mint
d_mint_2530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  AgdaAny
d_mint_2530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3818
      (coe v0)
-- _.TxBody.referenceInputs
d_referenceInputs_2532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_2532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3790
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  Maybe AgdaAny
d_scriptIntegrityHash_2536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3820
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_2538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  Maybe AgdaAny
d_txADhash_2538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3806
      (coe v0)
-- _.TxBody.txBalanceIntervals
d_txBalanceIntervals_2540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_2540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3830
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_2542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1336]
d_txCerts_2542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3798
      (coe v0)
-- _.TxBody.txDirectDeposits
d_txDirectDeposits_2544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_2544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3828
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_2546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  Integer
d_txDonation_2546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3808
      (coe v0)
-- _.TxBody.txFee
d_txFee_2548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  AgdaAny
d_txFee_2548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3800
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_2550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1012]
d_txGovProposals_2550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3812
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_2552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_958]
d_txGovVotes_2552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3810
      (coe v0)
-- _.TxBody.txGuards
d_txGuards_2554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_2554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3824
      (coe v0)
-- _.TxBody.txId
d_txId_2556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  AgdaAny
d_txId_2556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3796
      (coe v0)
-- _.TxBody.txIns
d_txIns_2558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3788
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_2560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  Maybe AgdaAny
d_txNetworkId_2560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3814
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_2562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3794
      (coe v0)
-- _.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_2564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_2564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3826
      (coe v0)
-- _.TxBody.txSubTransactions
d_txSubTransactions_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  AgdaAny
d_txSubTransactions_2566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3822
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3804
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3802
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState
d_EnactState_2630 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger._.EnactStateOf
d_EnactStateOf_2634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266
d_EnactStateOf_2634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasEnactState
d_HasEnactState_2638 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.cc
d_cc_2680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2680 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1278 (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.constitution
d_constitution_2682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1280
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.pparams
d_pparams_2684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1284
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.pv
d_pv_2686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1282 (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.withdrawals
d_withdrawals_2688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1286
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasEnactState.EnactStateOf
d_EnactStateOf_2692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266
d_EnactStateOf_2692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1988 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2698 = erased
-- Ledger.Dijkstra.Specification.Ledger._.GovState
d_GovState_2712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  ()
d_GovState_2712 = erased
-- Ledger.Dijkstra.Specification.Ledger._.GovStateOf
d_GovStateOf_2714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2032 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_2040
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2716 ~v0 ~v1 = du_HasCast'45'GovEnv_2716
du_HasCast'45'GovEnv_2716 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2716
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasCast'45'GovEnv_2078
-- Ledger.Dijkstra.Specification.Ledger._.HasGovState
d_HasGovState_2724 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasGovState.GovStateOf
d_GovStateOf_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2032 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_2040
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-SubUTxOEnv
d_HasCast'45'SubUTxOEnv_2862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'SubUTxOEnv_2862 ~v0 ~v1
  = du_HasCast'45'SubUTxOEnv_2862
du_HasCast'45'SubUTxOEnv_2862 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'SubUTxOEnv_2862
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'SubUTxOEnv_3350
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2864 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2864
du_HasCast'45'UTxOEnv_2864 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2864
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOEnv_3348
-- Ledger.Dijkstra.Specification.Ledger._.HasDonations-UTxOState
d_HasDonations'45'UTxOState_2876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_2876 ~v0 ~v1
  = du_HasDonations'45'UTxOState_2876
du_HasDonations'45'UTxOState_2876 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_2876
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasDonations'45'UTxOState_3344
-- Ledger.Dijkstra.Specification.Ledger._.HasFee-UTxOState
d_HasFee'45'UTxOState_2878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFee'45'UTxOState_2878 ~v0 ~v1 = du_HasFee'45'UTxOState_2878
du_HasFee'45'UTxOState_2878 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFee'45'UTxOState_2878
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasFee'45'UTxOState_3342
-- Ledger.Dijkstra.Specification.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3692
d_HasUTxO'45'UTxOState_2922 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2922
du_HasUTxO'45'UTxOState_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3692
du_HasUTxO'45'UTxOState_2922
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3340
-- Ledger.Dijkstra.Specification.Ledger._.HasUTxOState
d_HasUTxOState_2924 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.UTxOState
d_UTxOState_2956 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger._.UTxOStateOf
d_UTxOStateOf_2960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3200 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3180
d_UTxOStateOf_2960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3208
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3200 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3180
d_UTxOStateOf_3050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3208
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.UTxOState.donations
d_donations_3084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3180 ->
  Integer
d_donations_3084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3192
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.UTxOState.fees
d_fees_3086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3180 ->
  Integer
d_fees_3086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3190
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.UTxOState.utxo
d_utxo_3088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_3088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3188
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,SUBUTXOW⦈_
d__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3102 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__3104 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger._.isLegacyMode
d_isLegacyMode_3162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3710 ->
  Bool
d_isLegacyMode_3162 v0 ~v1 = du_isLegacyMode_3162 v0
du_isLegacyMode_3162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3710 ->
  Bool
du_isLegacyMode_3162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.du_isLegacyMode_3642
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.CCHotKeysOf
d_CCHotKeysOf_3212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1556 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1564
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.CertState
d_CertState_3224 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger._.CertStateOf
d_CertStateOf_3228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1776 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1448
d_CertStateOf_3228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1784
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.DStateOf
d_DStateOf_3242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1716 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392
d_DStateOf_3242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.GStateOf
d_GStateOf_3268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1756 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1432
d_GStateOf_3268 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1764
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCCHotKeys
d_HasCCHotKeys_3274 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_3280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1556
d_HasCCHotKeys'45'GState_3280 ~v0 ~v1
  = du_HasCCHotKeys'45'GState_3280
du_HasCCHotKeys'45'GState_3280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1556
du_HasCCHotKeys'45'GState_3280
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'GState_1858
-- Ledger.Dijkstra.Specification.Ledger._.HasCertState
d_HasCertState_3298 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasDReps-CertState
d_HasDReps'45'CertState_3312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1222
d_HasDReps'45'CertState_3312 ~v0 ~v1
  = du_HasDReps'45'CertState_3312
du_HasDReps'45'CertState_3312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1222
du_HasDReps'45'CertState_3312
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_1870
-- Ledger.Dijkstra.Specification.Ledger._.HasDState
d_HasDState_3316 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasDState-CertState
d_HasDState'45'CertState_3320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1716
d_HasDState'45'CertState_3320 ~v0 ~v1
  = du_HasDState'45'CertState_3320
du_HasDState'45'CertState_3320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1716
du_HasDState'45'CertState_3320
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1862
-- Ledger.Dijkstra.Specification.Ledger._.HasGState
d_HasGState_3346 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasGState-CertState
d_HasGState'45'CertState_3350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1756
d_HasGState'45'CertState_3350 ~v0 ~v1
  = du_HasGState'45'CertState_3350
du_HasGState'45'CertState_3350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1756
du_HasGState'45'CertState_3350
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1866
-- Ledger.Dijkstra.Specification.Ledger._.HasPState
d_HasPState_3356 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasPState-CertState
d_HasPState'45'CertState_3360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1736
d_HasPState'45'CertState_3360 ~v0 ~v1
  = du_HasPState'45'CertState_3360
du_HasPState'45'CertState_3360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1736
du_HasPState'45'CertState_3360
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1864
-- Ledger.Dijkstra.Specification.Ledger._.HasPools
d_HasPools_3362 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasPools-CertState
d_HasPools'45'CertState_3366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1596
d_HasPools'45'CertState_3366 ~v0 ~v1
  = du_HasPools'45'CertState_3366
du_HasPools'45'CertState_3366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1596
du_HasPools'45'CertState_3366
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'CertState_1874
-- Ledger.Dijkstra.Specification.Ledger._.HasRewards-CertState
d_HasRewards'45'CertState_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1656
d_HasRewards'45'CertState_3380 ~v0 ~v1
  = du_HasRewards'45'CertState_3380
du_HasRewards'45'CertState_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1656
du_HasRewards'45'CertState_3380
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1868
-- Ledger.Dijkstra.Specification.Ledger._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_3398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1106
d_HasVoteDelegs'45'DState_3398 ~v0 ~v1
  = du_HasVoteDelegs'45'DState_3398
du_HasVoteDelegs'45'DState_3398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1106
du_HasVoteDelegs'45'DState_3398
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'DState_1840
-- Ledger.Dijkstra.Specification.Ledger._.PStateOf
d_PStateOf_3420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1736 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412
d_PStateOf_3420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1744
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.PoolsOf
d_PoolsOf_3428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1596 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1604
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.Rewards
d_Rewards_3434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  ()
d_Rewards_3434 = erased
-- Ledger.Dijkstra.Specification.Ledger._.CertState.dState
d_dState_3520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1448 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392
d_dState_3520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1456
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.CertState.gState
d_gState_3522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1448 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1432
d_gState_3522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1460
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.CertState.pState
d_pState_3524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1448 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412
d_pState_3524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1458
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_3578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1556 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1564
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCertState.CertStateOf
d_CertStateOf_3582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1776 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1448
d_CertStateOf_3582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1784
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasDState.DStateOf
d_DStateOf_3590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1716 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392
d_DStateOf_3590 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasGState.GStateOf
d_GStateOf_3606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1756 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1432
d_GStateOf_3606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1764
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasPState.PStateOf
d_PStateOf_3610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1736 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412
d_PStateOf_3610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1744
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasPools.PoolsOf
d_PoolsOf_3614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1596 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1604
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,ENTITIES⦈_
d__'8866'_'8640''10631'_'44'ENTITIES'10632'__3668 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,SUBENTITIES⦈_
d__'8866'_'8640''10631'_'44'SUBENTITIES'10632'__3670 a0 a1 a2 a3 a4
                                                     a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-EntitiesEnv
d_HasCast'45'EntitiesEnv_3684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EntitiesEnv_3684 ~v0 ~v1
  = du_HasCast'45'EntitiesEnv_3684
du_HasCast'45'EntitiesEnv_3684 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EntitiesEnv_3684
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.du_HasCast'45'EntitiesEnv_3104
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-SubEntitiesEnv
d_HasCast'45'SubEntitiesEnv_3686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'SubEntitiesEnv_3686 ~v0 ~v1
  = du_HasCast'45'SubEntitiesEnv_3686
du_HasCast'45'SubEntitiesEnv_3686 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'SubEntitiesEnv_3686
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.du_HasCast'45'SubEntitiesEnv_3106
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv
d_SubLedgerEnv_3730 a0 a1 = ()
data T_SubLedgerEnv_3730
  = C_constructor_3768 AgdaAny (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266
                       Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] Bool
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.slot
d_slot_3750 :: T_SubLedgerEnv_3730 -> AgdaAny
d_slot_3750 v0
  = case coe v0 of
      C_constructor_3768 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.ppolicy
d_ppolicy_3752 :: T_SubLedgerEnv_3730 -> Maybe AgdaAny
d_ppolicy_3752 v0
  = case coe v0 of
      C_constructor_3768 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.pparams
d_pparams_3754 ::
  T_SubLedgerEnv_3730 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3754 v0
  = case coe v0 of
      C_constructor_3768 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.enactState
d_enactState_3756 ::
  T_SubLedgerEnv_3730 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266
d_enactState_3756 v0
  = case coe v0 of
      C_constructor_3768 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.treasury
d_treasury_3758 :: T_SubLedgerEnv_3730 -> Integer
d_treasury_3758 v0
  = case coe v0 of
      C_constructor_3768 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.utxo₀
d_utxo'8320'_3760 ::
  T_SubLedgerEnv_3730 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3760 v0
  = case coe v0 of
      C_constructor_3768 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.rewards₀
d_rewards'8320'_3762 ::
  T_SubLedgerEnv_3730 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards'8320'_3762 v0
  = case coe v0 of
      C_constructor_3768 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.allScripts
d_allScripts_3764 ::
  T_SubLedgerEnv_3730 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3764 v0
  = case coe v0 of
      C_constructor_3768 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.isTopLevelValid
d_isTopLevelValid_3766 :: T_SubLedgerEnv_3730 -> Bool
d_isTopLevelValid_3766 v0
  = case coe v0 of
      C_constructor_3768 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv
d_LedgerEnv_3770 a0 a1 = ()
data T_LedgerEnv_3770
  = C_constructor_3792 AgdaAny (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266
                       Integer
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.slot
d_slot_3782 :: T_LedgerEnv_3770 -> AgdaAny
d_slot_3782 v0
  = case coe v0 of
      C_constructor_3792 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.ppolicy
d_ppolicy_3784 :: T_LedgerEnv_3770 -> Maybe AgdaAny
d_ppolicy_3784 v0
  = case coe v0 of
      C_constructor_3792 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.pparams
d_pparams_3786 ::
  T_LedgerEnv_3770 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3786 v0
  = case coe v0 of
      C_constructor_3792 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.enactState
d_enactState_3788 ::
  T_LedgerEnv_3770 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266
d_enactState_3788 v0
  = case coe v0 of
      C_constructor_3792 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.treasury
d_treasury_3790 :: T_LedgerEnv_3770 -> Integer
d_treasury_3790 v0
  = case coe v0 of
      C_constructor_3792 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.HasCast-LedgerEnv
d_HasCast'45'LedgerEnv_3794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LedgerEnv_3794 ~v0 ~v1 = du_HasCast'45'LedgerEnv_3794
du_HasCast'45'LedgerEnv_3794 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LedgerEnv_3794
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
                                 (3770 :: Integer) (2632180534421049758 :: Integer)
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
                                    (3770 :: Integer) (2632180534421049758 :: Integer)
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
                                       (3770 :: Integer) (2632180534421049758 :: Integer)
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
                                          (3770 :: Integer) (2632180534421049758 :: Integer)
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
                                          (2630 :: Integer) (2632180534421049758 :: Integer)
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
                                             (3770 :: Integer) (2632180534421049758 :: Integer)
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
         (coe C_constructor_3792))
-- Ledger.Dijkstra.Specification.Ledger.HasCast-SubLedgerEnv
d_HasCast'45'SubLedgerEnv_3796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'SubLedgerEnv_3796 ~v0 ~v1
  = du_HasCast'45'SubLedgerEnv_3796
du_HasCast'45'SubLedgerEnv_3796 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'SubLedgerEnv_3796
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
                                 (3730 :: Integer) (2632180534421049758 :: Integer)
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
                                    (3730 :: Integer) (2632180534421049758 :: Integer)
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
                                       (3730 :: Integer) (2632180534421049758 :: Integer)
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
                                          (3730 :: Integer) (2632180534421049758 :: Integer)
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
                                          (2630 :: Integer) (2632180534421049758 :: Integer)
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
                                             (3730 :: Integer) (2632180534421049758 :: Integer)
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
                                                (3730 :: Integer) (2632180534421049758 :: Integer)
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
                                                   (3730 :: Integer)
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
                                                   (3434 :: Integer)
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
                                                      (3730 :: Integer)
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
                                                         (3730 :: Integer)
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
         (coe C_constructor_3768))
-- Ledger.Dijkstra.Specification.Ledger.HasPParams-LedgerEnv
d_HasPParams'45'LedgerEnv_3798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'LedgerEnv_3798 ~v0 ~v1
  = du_HasPParams'45'LedgerEnv_3798
du_HasPParams'45'LedgerEnv_3798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'LedgerEnv_3798
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_588
      (coe (\ v0 -> d_pparams_3786 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasEnactState-LedgerEnv
d_HasEnactState'45'LedgerEnv_3800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1294
d_HasEnactState'45'LedgerEnv_3800 ~v0 ~v1
  = du_HasEnactState'45'LedgerEnv_3800
du_HasEnactState'45'LedgerEnv_3800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1294
du_HasEnactState'45'LedgerEnv_3800
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1304
      (coe (\ v0 -> d_enactState_3788 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasPParams-SubLedgerEnv
d_HasPParams'45'SubLedgerEnv_3802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'SubLedgerEnv_3802 ~v0 ~v1
  = du_HasPParams'45'SubLedgerEnv_3802
du_HasPParams'45'SubLedgerEnv_3802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'SubLedgerEnv_3802
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_588
      (coe (\ v0 -> d_pparams_3754 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasEnactState-SubLedgerEnv
d_HasEnactState'45'SubLedgerEnv_3804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1294
d_HasEnactState'45'SubLedgerEnv_3804 ~v0 ~v1
  = du_HasEnactState'45'SubLedgerEnv_3804
du_HasEnactState'45'SubLedgerEnv_3804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1294
du_HasEnactState'45'SubLedgerEnv_3804
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1304
      (coe (\ v0 -> d_enactState_3756 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasUTxO-SubLedgerEnv
d_HasUTxO'45'SubLedgerEnv_3806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3692
d_HasUTxO'45'SubLedgerEnv_3806 ~v0 ~v1
  = du_HasUTxO'45'SubLedgerEnv_3806
du_HasUTxO'45'SubLedgerEnv_3806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3692
du_HasUTxO'45'SubLedgerEnv_3806
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3702
      (coe (\ v0 -> d_utxo'8320'_3760 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasTreasury-SubLedgerEnv
d_HasTreasury'45'SubLedgerEnv_3808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'SubLedgerEnv_3808 ~v0 ~v1
  = du_HasTreasury'45'SubLedgerEnv_3808
du_HasTreasury'45'SubLedgerEnv_3808 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'SubLedgerEnv_3808
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe (\ v0 -> d_treasury_3758 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.LedgerState
d_LedgerState_3810 a0 a1 = ()
data T_LedgerState_3810
  = C_'10214'_'44'_'44'_'10215''737'_3824 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3180
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1448
-- Ledger.Dijkstra.Specification.Ledger.LedgerState.utxoSt
d_utxoSt_3818 ::
  T_LedgerState_3810 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3180
d_utxoSt_3818 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_3824 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerState.govSt
d_govSt_3820 ::
  T_LedgerState_3810 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3820 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_3824 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerState.certState
d_certState_3822 ::
  T_LedgerState_3810 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1448
d_certState_3822 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_3824 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.HasLedgerState
d_HasLedgerState_3830 a0 a1 a2 a3 = ()
newtype T_HasLedgerState_3830
  = C_constructor_3840 (AgdaAny -> T_LedgerState_3810)
-- Ledger.Dijkstra.Specification.Ledger.HasLedgerState.LedgerStateOf
d_LedgerStateOf_3838 ::
  T_HasLedgerState_3830 -> AgdaAny -> T_LedgerState_3810
d_LedgerStateOf_3838 v0
  = case coe v0 of
      C_constructor_3840 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger._.LedgerStateOf
d_LedgerStateOf_3844 ::
  T_HasLedgerState_3830 -> AgdaAny -> T_LedgerState_3810
d_LedgerStateOf_3844 v0 = coe d_LedgerStateOf_3838 (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.HasUTxOState-LedgerState
d_HasUTxOState'45'LedgerState_3846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3200
d_HasUTxOState'45'LedgerState_3846 ~v0 ~v1
  = du_HasUTxOState'45'LedgerState_3846
du_HasUTxOState'45'LedgerState_3846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3200
du_HasUTxOState'45'LedgerState_3846
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_constructor_3210
      (coe (\ v0 -> d_utxoSt_3818 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasUTxO-LedgerState
d_HasUTxO'45'LedgerState_3848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3692
d_HasUTxO'45'LedgerState_3848 ~v0 ~v1
  = du_HasUTxO'45'LedgerState_3848
du_HasUTxO'45'LedgerState_3848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3692
du_HasUTxO'45'LedgerState_3848
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3702
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3700
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3340)
              (d_utxoSt_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasGovState-LedgerState
d_HasGovState'45'LedgerState_3850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2032
d_HasGovState'45'LedgerState_3850 ~v0 ~v1
  = du_HasGovState'45'LedgerState_3850
du_HasGovState'45'LedgerState_3850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2032
du_HasGovState'45'LedgerState_3850
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_constructor_2042
      (coe (\ v0 -> d_govSt_3820 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasCertState-LedgerState
d_HasCertState'45'LedgerState_3852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1776
d_HasCertState'45'LedgerState_3852 ~v0 ~v1
  = du_HasCertState'45'LedgerState_3852
du_HasCertState'45'LedgerState_3852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1776
du_HasCertState'45'LedgerState_3852
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1786
      (coe (\ v0 -> d_certState_3822 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasPools-LedgerState
d_HasPools'45'LedgerState_3854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1596
d_HasPools'45'LedgerState_3854 ~v0 ~v1
  = du_HasPools'45'LedgerState_3854
du_HasPools'45'LedgerState_3854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1596
du_HasPools'45'LedgerState_3854
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1606
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1604
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'CertState_1874)
              (d_certState_3822 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasGState-LedgerState
d_HasGState'45'LedgerState_3856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1756
d_HasGState'45'LedgerState_3856 ~v0 ~v1
  = du_HasGState'45'LedgerState_3856
du_HasGState'45'LedgerState_3856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1756
du_HasGState'45'LedgerState_3856
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1766
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1764
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1866)
              (d_certState_3822 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasDState-LedgerState
d_HasDState'45'LedgerState_3858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1716
d_HasDState'45'LedgerState_3858 ~v0 ~v1
  = du_HasDState'45'LedgerState_3858
du_HasDState'45'LedgerState_3858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1716
du_HasDState'45'LedgerState_3858
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1726
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1862)
              (d_certState_3822 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasPState-LedgerState
d_HasPState'45'LedgerState_3860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1736
d_HasPState'45'LedgerState_3860 ~v0 ~v1
  = du_HasPState'45'LedgerState_3860
du_HasPState'45'LedgerState_3860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1736
du_HasPState'45'LedgerState_3860
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1746
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1744
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1864)
              (d_certState_3822 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasVoteDelegs-LedgerState
d_HasVoteDelegs'45'LedgerState_3862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1106
d_HasVoteDelegs'45'LedgerState_3862 ~v0 ~v1
  = du_HasVoteDelegs'45'LedgerState_3862
du_HasVoteDelegs'45'LedgerState_3862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1106
du_HasVoteDelegs'45'LedgerState_3862
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1116
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1114
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'DState_1840)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1862)
                 (d_certState_3822 (coe v0)))))
-- Ledger.Dijkstra.Specification.Ledger.HasDonations-LedgerState
d_HasDonations'45'LedgerState_3864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'LedgerState_3864 ~v0 ~v1
  = du_HasDonations'45'LedgerState_3864
du_HasDonations'45'LedgerState_3864 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'LedgerState_3864
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasDonations'45'UTxOState_3344)
              (d_utxoSt_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasFees-LedgerState
d_HasFees'45'LedgerState_3866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'LedgerState_3866 ~v0 ~v1
  = du_HasFees'45'LedgerState_3866
du_HasFees'45'LedgerState_3866 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'LedgerState_3866
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_48
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasFee'45'UTxOState_3342)
              (d_utxoSt_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasCCHotKeys-LedgerState
d_HasCCHotKeys'45'LedgerState_3868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1556
d_HasCCHotKeys'45'LedgerState_3868 ~v0 ~v1
  = du_HasCCHotKeys'45'LedgerState_3868
du_HasCCHotKeys'45'LedgerState_3868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1556
du_HasCCHotKeys'45'LedgerState_3868
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1566
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1564
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'GState_1858)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1764
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1866)
                 (d_certState_3822 (coe v0)))))
-- Ledger.Dijkstra.Specification.Ledger.HasDReps-LedgerState
d_HasDReps'45'LedgerState_3870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1222
d_HasDReps'45'LedgerState_3870 ~v0 ~v1
  = du_HasDReps'45'LedgerState_3870
du_HasDReps'45'LedgerState_3870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1222
du_HasDReps'45'LedgerState_3870
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1232
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1230
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_1870)
              (d_certState_3822 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasCast-LedgerState
d_HasCast'45'LedgerState_3872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LedgerState_3872 ~v0 ~v1
  = du_HasCast'45'LedgerState_3872
du_HasCast'45'LedgerState_3872 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LedgerState_3872
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
                                 (3810 :: Integer) (2632180534421049758 :: Integer)
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
                                 (2956 :: Integer) (2632180534421049758 :: Integer)
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
                                    (3810 :: Integer) (2632180534421049758 :: Integer)
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
                                    (2712 :: Integer) (2632180534421049758 :: Integer)
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
                                       (3810 :: Integer) (2632180534421049758 :: Integer)
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
                                       (3224 :: Integer) (2632180534421049758 :: Integer)
                                       "Ledger.Dijkstra.Specification.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_3824))
-- Ledger.Dijkstra.Specification.Ledger.txgov
d_txgov_3876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_3876 ~v0 ~v1 ~v2 v3 = du_txgov_3876 v3
du_txgov_3876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3714 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_3876 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3812
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3810
            (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.GovProposals+Votes
d_GovProposals'43'Votes_3934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3710 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_GovProposals'43'Votes_3934 ~v0 ~v1 ~v2 v3
  = du_GovProposals'43'Votes_3934 v3
du_GovProposals'43'Votes_3934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3710 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_GovProposals'43'Votes_3934 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3812
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3730
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3810
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3730
               (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_3938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1448 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_3938 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_3938 v0 v2 v3
du_rmOrphanDRepVotes_3938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1448 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_3938 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_124
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
         (coe du_go_3952 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Dijkstra.Specification.Ledger._.ifDRepRegistered
d_ifDRepRegistered_3948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1448 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_ifDRepRegistered_3948 = erased
-- Ledger.Dijkstra.Specification.Ledger._.go
d_go_3952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1448 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1040
d_go_3952 v0 ~v1 v2 ~v3 v4 = du_go_3952 v0 v2 v4
du_go_3952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1448 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1040
du_go_3952 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1066
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_992
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_986
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1054
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
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1370
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1370
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
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1440
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1460
                          (coe v1)))))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_988
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1054
                  (coe v2))))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_990
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1054
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1056
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1058
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1060
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1062
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1064
         (coe v2))
-- Ledger.Dijkstra.Specification.Ledger.allColdCreds
d_allColdCreds_3956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_3956 ~v0 ~v1 v2 v3 = du_allColdCreds_3956 v2 v3
du_allColdCreds_3956 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_3956 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_ccCreds_1318
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1278
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
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1080
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1060
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_456
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasCoin-LedgerState
d_HasCoin'45'LedgerState_3966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'LedgerState_3966 v0 ~v1
  = du_HasCoin'45'LedgerState_3966 v0
du_HasCoin'45'LedgerState_3966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'LedgerState_3966 v0
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
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_cbalance_3378
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3188
                                   (coe d_utxoSt_3818 (coe v1))))
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3192
                                (coe d_utxoSt_3818 (coe v1))))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3190
                             (coe d_utxoSt_3818 (coe v1))))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardsBalance_1986
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2788
                             (coe v0))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1456
                             (coe d_certState_3822 (coe v1)))))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1370
                                   (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1370
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
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1444
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1764
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1866)
                             (d_certState_3822 (coe v1))))))
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1370
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1370
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
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1408
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1862)
                          (d_certState_3822 (coe v1))))))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1370
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
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1428
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1744
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1864)
                       (d_certState_3822 (coe v1)))))))
-- Ledger.Dijkstra.Specification.Ledger._⊢_⇀⦇_,SUBLEDGER⦈_
d__'8866'_'8640''10631'_'44'SUBLEDGER'10632'__4012 a0 a1 a2 a3 a4
                                                   a5
  = ()
data T__'8866'_'8640''10631'_'44'SUBLEDGER'10632'__4012
  = C_SUBLEDGER'45'V_4014 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_SUBLEDGER'45'I_4016 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Ledger._⊢_⇀⦇_,SUBLEDGERS⦈_
d__'8866'_'8640''10631'_'44'SUBLEDGERS'10632'__4018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  T_SubLedgerEnv_3730 ->
  T_LedgerState_3810 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3710] ->
  T_LedgerState_3810 -> ()
d__'8866'_'8640''10631'_'44'SUBLEDGERS'10632'__4018 = erased
-- Ledger.Dijkstra.Specification.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__4020 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__4020
  = C_LEDGER'45'V_4030 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3180
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1448
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_4040 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__4042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3144 ->
  T_LedgerEnv_3770 ->
  T_LedgerState_3810 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3710] ->
  T_LedgerState_3810 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__4042 = erased
