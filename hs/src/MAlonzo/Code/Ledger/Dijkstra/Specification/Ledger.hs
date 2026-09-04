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
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.List.Base
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4428
d_HasIsValidFlag'45'Tx_434 ~v0 = du_HasIsValidFlag'45'Tx_434
du_HasIsValidFlag'45'Tx_434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4428
du_HasIsValidFlag'45'Tx_434
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4450
-- _.HasPParams
d_HasPParams_478 a0 a1 a2 = ()
-- _.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3986
d_HasSubTransactions'45'TopLevelTx_556 ~v0
  = du_HasSubTransactions'45'TopLevelTx_556
du_HasSubTransactions'45'TopLevelTx_556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3986
du_HasSubTransactions'45'TopLevelTx_556
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4460
-- _.HasTxId-Tx
d_HasTxId'45'Tx_584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4008
d_HasTxId'45'Tx_584 ~v0 = du_HasTxId'45'Tx_584
du_HasTxId'45'Tx_584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4008
du_HasTxId'45'Tx_584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4526
-- _.HasUTxO
d_HasUTxO_602 a0 a1 a2 = ()
-- _.HasVoteDelegs
d_HasVoteDelegs_620 a0 a1 a2 = ()
-- _.PParams
d_PParams_732 a0 = ()
-- _.PParamsOf
d_PParamsOf_740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- _.Script
d_Script_814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_814 = erased
-- _.ScriptHash
d_ScriptHash_822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptHash_822 = erased
-- _.Slot
d_Slot_878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_878 = erased
-- _.SubLevelTx
d_SubLevelTx_892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_892 = erased
-- _.TopLevelTx
d_TopLevelTx_912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_912 = erased
-- _.Tx
d_Tx_918 a0 a1 = ()
-- _.TxBody
d_TxBody_922 a0 a1 = ()
-- _.UTxO
d_UTxO_946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_946 = erased
-- _.UTxOOf
d_UTxOOf_948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3702
      (coe v0)
-- _.VoteDelegsOf
d_VoteDelegsOf_984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1086
      (coe v0)
-- _.epoch
d_epoch_1036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_epoch_1036 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1370
         (coe v0))
-- _.getAllScripts
d_getAllScripts_1064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_1064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_getAllScripts_4646
      (coe v0)
-- _.GovActionState.action
d_action_1344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884
d_action_1344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1032
      (coe v0)
-- _.GovActionState.deposit
d_deposit_1346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  Integer
d_deposit_1346 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1036
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_1348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  AgdaAny
d_expiresIn_1348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1030
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_1350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  AgdaAny
d_prevAction_1350 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1034
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_1352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1028
      (coe v0)
-- _.GovActionState.votes
d_votes_1354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_950
d_votes_1354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1026
      (coe v0)
-- _.GovProposal.action
d_action_1390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884
d_action_1390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_998
      (coe v0)
-- _.GovProposal.anchor
d_anchor_1392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_918
d_anchor_1392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1008
      (coe v0)
-- _.GovProposal.deposit
d_deposit_1394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  Integer
d_deposit_1394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1004
      (coe v0)
-- _.GovProposal.policy
d_policy_1396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  Maybe AgdaAny
d_policy_1396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1002
      (coe v0)
-- _.GovProposal.prevAction
d_prevAction_1398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  AgdaAny
d_prevAction_1398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1000
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_1400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1006
      (coe v0)
-- _.GovVote.anchor
d_anchor_1412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_918
d_anchor_1412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_946
      (coe v0)
-- _.GovVote.gid
d_gid_1414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_940
      (coe v0)
-- _.GovVote.vote
d_vote_1416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_898
d_vote_1416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_944
      (coe v0)
-- _.GovVote.voter
d_voter_1418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906
d_voter_1418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_942
      (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_1486 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_1494 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_1502 a0 = ()
-- _.GovernanceActions.HasDReps
d_HasDReps_1532 a0 a1 a2 = ()
-- _.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_1588 a0 a1 a2 = ()
-- _.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_1664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1202
      (coe v0)
-- _.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1696 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1086
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1856 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3702
      (coe v0)
-- _.PParams.Emax
d_Emax_1990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_432
      (coe v0)
-- _.PParams.a
d_a_1992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_402 (coe v0)
-- _.PParams.a0
d_a0_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_436
      (coe v0)
-- _.PParams.b
d_b_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_404 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_448
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_2000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_446
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_416
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_438
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_440
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_456
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_454
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_444
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_452
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_450
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_406
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_394
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_386
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_398
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_390
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_424
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_422
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_392
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_388
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_396
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_420
      (coe v0)
-- _.PParams.minPoolCost
d_minPoolCost_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_410
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_430
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_412
      (coe v0)
-- _.PParams.nopt
d_nopt_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_434
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_408
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_442
      (coe v0)
-- _.PParams.prices
d_prices_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_418
      (coe v0)
-- _.PParams.pv
d_pv_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_400
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_428
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_426
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_414
      (coe v0)
-- _.Tx.isValid
d_isValid_2526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  AgdaAny
d_isValid_2526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3738
      (coe v0)
-- _.Tx.txAuxData
d_txAuxData_2528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  Maybe AgdaAny
d_txAuxData_2528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3740
      (coe v0)
-- _.Tx.txBody
d_txBody_2530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716
d_txBody_2530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
      (coe v0)
-- _.Tx.txSize
d_txSize_2532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  Integer
d_txSize_2532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3736
      (coe v0)
-- _.Tx.txWitnesses
d_txWitnesses_2534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3718
d_txWitnesses_2534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3734
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_2538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  AgdaAny
d_collateralInputs_2538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3796
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_2540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  Maybe Integer
d_currentTreasury_2540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3820
      (coe v0)
-- _.TxBody.mint
d_mint_2542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  AgdaAny
d_mint_2542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3822
      (coe v0)
-- _.TxBody.referenceInputs
d_referenceInputs_2544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_2544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3794
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  Maybe AgdaAny
d_scriptIntegrityHash_2548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3824
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_2550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  Maybe AgdaAny
d_txADhash_2550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3810
      (coe v0)
-- _.TxBody.txBalanceIntervals
d_txBalanceIntervals_2552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_2552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3834
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_2554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308]
d_txCerts_2554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3802
      (coe v0)
-- _.TxBody.txDirectDeposits
d_txDirectDeposits_2556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_2556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3832
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_2558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  Integer
d_txDonation_2558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3812
      (coe v0)
-- _.TxBody.txFee
d_txFee_2560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  AgdaAny
d_txFee_2560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3804
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_2562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984]
d_txGovProposals_2562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3816
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_2564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930]
d_txGovVotes_2564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3814
      (coe v0)
-- _.TxBody.txGuards
d_txGuards_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_2566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3828
      (coe v0)
-- _.TxBody.txId
d_txId_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  AgdaAny
d_txId_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3800
      (coe v0)
-- _.TxBody.txIns
d_txIns_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3792
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  Maybe AgdaAny
d_txNetworkId_2572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3818
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_2574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3798
      (coe v0)
-- _.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_2576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_2576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3830
      (coe v0)
-- _.TxBody.txStartingBalanceIntervals
d_txStartingBalanceIntervals_2578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  AgdaAny
d_txStartingBalanceIntervals_2578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txStartingBalanceIntervals_3836
      (coe v0)
-- _.TxBody.txSubTransactions
d_txSubTransactions_2580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  AgdaAny
d_txSubTransactions_2580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3826
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_2582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3808
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_2584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3806
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState
d_EnactState_2644 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger._.EnactStateOf
d_EnactStateOf_2648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_EnactStateOf_2648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1274
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasEnactState
d_HasEnactState_2652 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.cc
d_cc_2694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1250 (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.constitution
d_constitution_2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2696 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1252
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.pparams
d_pparams_2698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1256
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.pv
d_pv_2700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1254 (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.EnactState.withdrawals
d_withdrawals_2702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1258
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasEnactState.EnactStateOf
d_EnactStateOf_2706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_EnactStateOf_2706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1274
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2712 = erased
-- Ledger.Dijkstra.Specification.Ledger._.GovState
d_GovState_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  ()
d_GovState_2726 = erased
-- Ledger.Dijkstra.Specification.Ledger._.GovStateOf
d_GovStateOf_2728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2010 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_2018
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2730 ~v0 ~v1 = du_HasCast'45'GovEnv_2730
du_HasCast'45'GovEnv_2730 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2730
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasCast'45'GovEnv_2056
-- Ledger.Dijkstra.Specification.Ledger._.HasGovState
d_HasGovState_2738 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasGovState.GovStateOf
d_GovStateOf_2850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2010 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2850 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_2018
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-SubUTxOEnv
d_HasCast'45'SubUTxOEnv_2876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'SubUTxOEnv_2876 ~v0 ~v1
  = du_HasCast'45'SubUTxOEnv_2876
du_HasCast'45'SubUTxOEnv_2876 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'SubUTxOEnv_2876
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'SubUTxOEnv_3370
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2878 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2878
du_HasCast'45'UTxOEnv_2878 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2878
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOEnv_3368
-- Ledger.Dijkstra.Specification.Ledger._.HasDonations-UTxOState
d_HasDonations'45'UTxOState_2890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_2890 ~v0 ~v1
  = du_HasDonations'45'UTxOState_2890
du_HasDonations'45'UTxOState_2890 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_2890
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasDonations'45'UTxOState_3364
-- Ledger.Dijkstra.Specification.Ledger._.HasFee-UTxOState
d_HasFee'45'UTxOState_2892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFee'45'UTxOState_2892 ~v0 ~v1 = du_HasFee'45'UTxOState_2892
du_HasFee'45'UTxOState_2892 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFee'45'UTxOState_2892
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasFee'45'UTxOState_3362
-- Ledger.Dijkstra.Specification.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694
d_HasUTxO'45'UTxOState_2936 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2936
du_HasUTxO'45'UTxOState_2936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694
du_HasUTxO'45'UTxOState_2936
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3360
-- Ledger.Dijkstra.Specification.Ledger._.HasUTxOState
d_HasUTxOState_2938 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.UTxOState
d_UTxOState_2970 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger._.UTxOStateOf
d_UTxOStateOf_2974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3220 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200
d_UTxOStateOf_2974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3228
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3220 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200
d_UTxOStateOf_3064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3228
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.UTxOState.donations
d_donations_3098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  Integer
d_donations_3098 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3212
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.UTxOState.fees
d_fees_3100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  Integer
d_fees_3100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3210
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.UTxOState.utxo
d_utxo_3102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_3102 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3208
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,SUBUTXOW⦈_
d__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3116 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__3118 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger._.isLegacyMode
d_isLegacyMode_3176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  Bool
d_isLegacyMode_3176 v0 ~v1 = du_isLegacyMode_3176 v0
du_isLegacyMode_3176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  Bool
du_isLegacyMode_3176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.du_isLegacyMode_3664
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.CCHotKeysOf
d_CCHotKeysOf_3226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1528 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1536
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.CertState
d_CertState_3238 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger._.CertStateOf
d_CertStateOf_3242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_CertStateOf_3242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.DStateOf
d_DStateOf_3256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1688 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364
d_DStateOf_3256 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1696
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.GStateOf
d_GStateOf_3282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1728 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404
d_GStateOf_3282 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1736
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCCHotKeys
d_HasCCHotKeys_3288 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_3294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1528
d_HasCCHotKeys'45'GState_3294 ~v0 ~v1
  = du_HasCCHotKeys'45'GState_3294
du_HasCCHotKeys'45'GState_3294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1528
du_HasCCHotKeys'45'GState_3294
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'GState_1830
-- Ledger.Dijkstra.Specification.Ledger._.HasCertState
d_HasCertState_3312 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasDReps-CertState
d_HasDReps'45'CertState_3326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
d_HasDReps'45'CertState_3326 ~v0 ~v1
  = du_HasDReps'45'CertState_3326
du_HasDReps'45'CertState_3326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
du_HasDReps'45'CertState_3326
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_1842
-- Ledger.Dijkstra.Specification.Ledger._.HasDState
d_HasDState_3330 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasDState-CertState
d_HasDState'45'CertState_3334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1688
d_HasDState'45'CertState_3334 ~v0 ~v1
  = du_HasDState'45'CertState_3334
du_HasDState'45'CertState_3334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1688
du_HasDState'45'CertState_3334
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1834
-- Ledger.Dijkstra.Specification.Ledger._.HasGState
d_HasGState_3360 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasGState-CertState
d_HasGState'45'CertState_3364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1728
d_HasGState'45'CertState_3364 ~v0 ~v1
  = du_HasGState'45'CertState_3364
du_HasGState'45'CertState_3364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1728
du_HasGState'45'CertState_3364
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1838
-- Ledger.Dijkstra.Specification.Ledger._.HasPState
d_HasPState_3370 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasPState-CertState
d_HasPState'45'CertState_3374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708
d_HasPState'45'CertState_3374 ~v0 ~v1
  = du_HasPState'45'CertState_3374
du_HasPState'45'CertState_3374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708
du_HasPState'45'CertState_3374
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1836
-- Ledger.Dijkstra.Specification.Ledger._.HasPools
d_HasPools_3376 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasPools-CertState
d_HasPools'45'CertState_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568
d_HasPools'45'CertState_3380 ~v0 ~v1
  = du_HasPools'45'CertState_3380
du_HasPools'45'CertState_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568
du_HasPools'45'CertState_3380
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'CertState_1846
-- Ledger.Dijkstra.Specification.Ledger._.HasRewards-CertState
d_HasRewards'45'CertState_3394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628
d_HasRewards'45'CertState_3394 ~v0 ~v1
  = du_HasRewards'45'CertState_3394
du_HasRewards'45'CertState_3394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1628
du_HasRewards'45'CertState_3394
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1840
-- Ledger.Dijkstra.Specification.Ledger._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_3412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078
d_HasVoteDelegs'45'DState_3412 ~v0 ~v1
  = du_HasVoteDelegs'45'DState_3412
du_HasVoteDelegs'45'DState_3412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078
du_HasVoteDelegs'45'DState_3412
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'DState_1812
-- Ledger.Dijkstra.Specification.Ledger._.PStateOf
d_PStateOf_3434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384
d_PStateOf_3434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1716
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.PoolsOf
d_PoolsOf_3444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1576
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.Rewards
d_Rewards_3450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  ()
d_Rewards_3450 = erased
-- Ledger.Dijkstra.Specification.Ledger._.CertState.dState
d_dState_3540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364
d_dState_3540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1428
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.CertState.gState
d_gState_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404
d_gState_3542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1432
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.CertState.pState
d_pState_3544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384
d_pState_3544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1430
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_3598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1528 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1536
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasCertState.CertStateOf
d_CertStateOf_3602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_CertStateOf_3602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasDState.DStateOf
d_DStateOf_3610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1688 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364
d_DStateOf_3610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1696
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasGState.GStateOf
d_GStateOf_3626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1728 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404
d_GStateOf_3626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1736
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasPState.PStateOf
d_PStateOf_3630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384
d_PStateOf_3630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1716
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._.HasPools.PoolsOf
d_PoolsOf_3634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1576
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,ENTITIES⦈_
d__'8866'_'8640''10631'_'44'ENTITIES'10632'__3688 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger._._⊢_⇀⦇_,SUBENTITIES⦈_
d__'8866'_'8640''10631'_'44'SUBENTITIES'10632'__3690 a0 a1 a2 a3 a4
                                                     a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-EntitiesEnv
d_HasCast'45'EntitiesEnv_3704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EntitiesEnv_3704 ~v0 ~v1
  = du_HasCast'45'EntitiesEnv_3704
du_HasCast'45'EntitiesEnv_3704 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EntitiesEnv_3704
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.du_HasCast'45'EntitiesEnv_3124
-- Ledger.Dijkstra.Specification.Ledger._.HasCast-SubEntitiesEnv
d_HasCast'45'SubEntitiesEnv_3706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'SubEntitiesEnv_3706 ~v0 ~v1
  = du_HasCast'45'SubEntitiesEnv_3706
du_HasCast'45'SubEntitiesEnv_3706 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'SubEntitiesEnv_3706
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.du_HasCast'45'SubEntitiesEnv_3126
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv
d_SubLedgerEnv_3750 a0 a1 = ()
data T_SubLedgerEnv_3750
  = C_constructor_3788 AgdaAny (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
                       Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] Bool
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.slot
d_slot_3770 :: T_SubLedgerEnv_3750 -> AgdaAny
d_slot_3770 v0
  = case coe v0 of
      C_constructor_3788 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.ppolicy
d_ppolicy_3772 :: T_SubLedgerEnv_3750 -> Maybe AgdaAny
d_ppolicy_3772 v0
  = case coe v0 of
      C_constructor_3788 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.pparams
d_pparams_3774 ::
  T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3774 v0
  = case coe v0 of
      C_constructor_3788 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.enactState
d_enactState_3776 ::
  T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_enactState_3776 v0
  = case coe v0 of
      C_constructor_3788 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.treasury
d_treasury_3778 :: T_SubLedgerEnv_3750 -> Integer
d_treasury_3778 v0
  = case coe v0 of
      C_constructor_3788 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.utxo₀
d_utxo'8320'_3780 ::
  T_SubLedgerEnv_3750 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3780 v0
  = case coe v0 of
      C_constructor_3788 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.rewards₀
d_rewards'8320'_3782 ::
  T_SubLedgerEnv_3750 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards'8320'_3782 v0
  = case coe v0 of
      C_constructor_3788 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.allScripts
d_allScripts_3784 ::
  T_SubLedgerEnv_3750 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3784 v0
  = case coe v0 of
      C_constructor_3788 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv.isTopLevelValid
d_isTopLevelValid_3786 :: T_SubLedgerEnv_3750 -> Bool
d_isTopLevelValid_3786 v0
  = case coe v0 of
      C_constructor_3788 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv
d_LedgerEnv_3790 a0 a1 = ()
data T_LedgerEnv_3790
  = C_constructor_3812 AgdaAny (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
                       Integer
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.slot
d_slot_3802 :: T_LedgerEnv_3790 -> AgdaAny
d_slot_3802 v0
  = case coe v0 of
      C_constructor_3812 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.ppolicy
d_ppolicy_3804 :: T_LedgerEnv_3790 -> Maybe AgdaAny
d_ppolicy_3804 v0
  = case coe v0 of
      C_constructor_3812 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.pparams
d_pparams_3806 ::
  T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3806 v0
  = case coe v0 of
      C_constructor_3812 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.enactState
d_enactState_3808 ::
  T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_enactState_3808 v0
  = case coe v0 of
      C_constructor_3812 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerEnv.treasury
d_treasury_3810 :: T_LedgerEnv_3790 -> Integer
d_treasury_3810 v0
  = case coe v0 of
      C_constructor_3812 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.HasCast-LedgerEnv
d_HasCast'45'LedgerEnv_3814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LedgerEnv_3814 ~v0 ~v1 = du_HasCast'45'LedgerEnv_3814
du_HasCast'45'LedgerEnv_3814 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LedgerEnv_3814
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
                                 (3790 :: Integer) (2632180534421049758 :: Integer)
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
                                 (878 :: Integer) (2632180534421049758 :: Integer) "_.Slot"
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
                                    (3790 :: Integer) (2632180534421049758 :: Integer)
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
                                                (822 :: Integer) (2632180534421049758 :: Integer)
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
                                       (3790 :: Integer) (2632180534421049758 :: Integer)
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
                                       (732 :: Integer) (2632180534421049758 :: Integer) "_.PParams"
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
                                          (3790 :: Integer) (2632180534421049758 :: Integer)
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
                                          (2644 :: Integer) (2632180534421049758 :: Integer)
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
                                             (3790 :: Integer) (2632180534421049758 :: Integer)
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
         (coe C_constructor_3812))
-- Ledger.Dijkstra.Specification.Ledger.HasCast-SubLedgerEnv
d_HasCast'45'SubLedgerEnv_3816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'SubLedgerEnv_3816 ~v0 ~v1
  = du_HasCast'45'SubLedgerEnv_3816
du_HasCast'45'SubLedgerEnv_3816 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'SubLedgerEnv_3816
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
                                 (3750 :: Integer) (2632180534421049758 :: Integer)
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
                                 (878 :: Integer) (2632180534421049758 :: Integer) "_.Slot"
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
                                    (3750 :: Integer) (2632180534421049758 :: Integer)
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
                                                (822 :: Integer) (2632180534421049758 :: Integer)
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
                                       (3750 :: Integer) (2632180534421049758 :: Integer)
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
                                       (732 :: Integer) (2632180534421049758 :: Integer) "_.PParams"
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
                                          (3750 :: Integer) (2632180534421049758 :: Integer)
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
                                          (2644 :: Integer) (2632180534421049758 :: Integer)
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
                                             (3750 :: Integer) (2632180534421049758 :: Integer)
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
                                                (3750 :: Integer) (2632180534421049758 :: Integer)
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
                                                (946 :: Integer) (2632180534421049758 :: Integer)
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
                                                   (3750 :: Integer)
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
                                                   (3450 :: Integer)
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
                                                      (3750 :: Integer)
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
                                                               (814 :: Integer)
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
                                                         (3750 :: Integer)
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
         (coe C_constructor_3788))
-- Ledger.Dijkstra.Specification.Ledger.HasPParams-LedgerEnv
d_HasPParams'45'LedgerEnv_3818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'LedgerEnv_3818 ~v0 ~v1
  = du_HasPParams'45'LedgerEnv_3818
du_HasPParams'45'LedgerEnv_3818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'LedgerEnv_3818
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_588
      (coe (\ v0 -> d_pparams_3806 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasEnactState-LedgerEnv
d_HasEnactState'45'LedgerEnv_3820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
d_HasEnactState'45'LedgerEnv_3820 ~v0 ~v1
  = du_HasEnactState'45'LedgerEnv_3820
du_HasEnactState'45'LedgerEnv_3820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
du_HasEnactState'45'LedgerEnv_3820
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1276
      (coe (\ v0 -> d_enactState_3808 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasPParams-SubLedgerEnv
d_HasPParams'45'SubLedgerEnv_3822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'SubLedgerEnv_3822 ~v0 ~v1
  = du_HasPParams'45'SubLedgerEnv_3822
du_HasPParams'45'SubLedgerEnv_3822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'SubLedgerEnv_3822
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_588
      (coe (\ v0 -> d_pparams_3774 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasEnactState-SubLedgerEnv
d_HasEnactState'45'SubLedgerEnv_3824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
d_HasEnactState'45'SubLedgerEnv_3824 ~v0 ~v1
  = du_HasEnactState'45'SubLedgerEnv_3824
du_HasEnactState'45'SubLedgerEnv_3824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1266
du_HasEnactState'45'SubLedgerEnv_3824
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1276
      (coe (\ v0 -> d_enactState_3776 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasUTxO-SubLedgerEnv
d_HasUTxO'45'SubLedgerEnv_3826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694
d_HasUTxO'45'SubLedgerEnv_3826 ~v0 ~v1
  = du_HasUTxO'45'SubLedgerEnv_3826
du_HasUTxO'45'SubLedgerEnv_3826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694
du_HasUTxO'45'SubLedgerEnv_3826
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3704
      (coe (\ v0 -> d_utxo'8320'_3780 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasTreasury-SubLedgerEnv
d_HasTreasury'45'SubLedgerEnv_3828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'SubLedgerEnv_3828 ~v0 ~v1
  = du_HasTreasury'45'SubLedgerEnv_3828
du_HasTreasury'45'SubLedgerEnv_3828 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'SubLedgerEnv_3828
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe (\ v0 -> d_treasury_3778 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.LedgerState
d_LedgerState_3830 a0 a1 = ()
data T_LedgerState_3830
  = C_'10214'_'44'_'44'_'10215''737'_3844 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
-- Ledger.Dijkstra.Specification.Ledger.LedgerState.utxoSt
d_utxoSt_3838 ::
  T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200
d_utxoSt_3838 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_3844 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerState.govSt
d_govSt_3840 ::
  T_LedgerState_3830 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3840 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_3844 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.LedgerState.certState
d_certState_3842 ::
  T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_certState_3842 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_3844 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger.HasLedgerState
d_HasLedgerState_3850 a0 a1 a2 a3 = ()
newtype T_HasLedgerState_3850
  = C_constructor_3860 (AgdaAny -> T_LedgerState_3830)
-- Ledger.Dijkstra.Specification.Ledger.HasLedgerState.LedgerStateOf
d_LedgerStateOf_3858 ::
  T_HasLedgerState_3850 -> AgdaAny -> T_LedgerState_3830
d_LedgerStateOf_3858 v0
  = case coe v0 of
      C_constructor_3860 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledger._.LedgerStateOf
d_LedgerStateOf_3864 ::
  T_HasLedgerState_3850 -> AgdaAny -> T_LedgerState_3830
d_LedgerStateOf_3864 v0 = coe d_LedgerStateOf_3858 (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.HasUTxOState-LedgerState
d_HasUTxOState'45'LedgerState_3866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3220
d_HasUTxOState'45'LedgerState_3866 ~v0 ~v1
  = du_HasUTxOState'45'LedgerState_3866
du_HasUTxOState'45'LedgerState_3866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3220
du_HasUTxOState'45'LedgerState_3866
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_constructor_3230
      (coe (\ v0 -> d_utxoSt_3838 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasUTxO-LedgerState
d_HasUTxO'45'LedgerState_3868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694
d_HasUTxO'45'LedgerState_3868 ~v0 ~v1
  = du_HasUTxO'45'LedgerState_3868
du_HasUTxO'45'LedgerState_3868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3694
du_HasUTxO'45'LedgerState_3868
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3704
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3702
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3360)
              (d_utxoSt_3838 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasGovState-LedgerState
d_HasGovState'45'LedgerState_3870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2010
d_HasGovState'45'LedgerState_3870 ~v0 ~v1
  = du_HasGovState'45'LedgerState_3870
du_HasGovState'45'LedgerState_3870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2010
du_HasGovState'45'LedgerState_3870
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_constructor_2020
      (coe (\ v0 -> d_govSt_3840 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasCertState-LedgerState
d_HasCertState'45'LedgerState_3872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
d_HasCertState'45'LedgerState_3872 ~v0 ~v1
  = du_HasCertState'45'LedgerState_3872
du_HasCertState'45'LedgerState_3872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
du_HasCertState'45'LedgerState_3872
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1758
      (coe (\ v0 -> d_certState_3842 (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.HasPools-LedgerState
d_HasPools'45'LedgerState_3874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568
d_HasPools'45'LedgerState_3874 ~v0 ~v1
  = du_HasPools'45'LedgerState_3874
du_HasPools'45'LedgerState_3874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1568
du_HasPools'45'LedgerState_3874
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1578
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1576
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'CertState_1846)
              (d_certState_3842 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasGState-LedgerState
d_HasGState'45'LedgerState_3876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1728
d_HasGState'45'LedgerState_3876 ~v0 ~v1
  = du_HasGState'45'LedgerState_3876
du_HasGState'45'LedgerState_3876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1728
du_HasGState'45'LedgerState_3876
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1738
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1736
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1838)
              (d_certState_3842 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasDState-LedgerState
d_HasDState'45'LedgerState_3878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1688
d_HasDState'45'LedgerState_3878 ~v0 ~v1
  = du_HasDState'45'LedgerState_3878
du_HasDState'45'LedgerState_3878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1688
du_HasDState'45'LedgerState_3878
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1698
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1696
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1834)
              (d_certState_3842 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasPState-LedgerState
d_HasPState'45'LedgerState_3880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708
d_HasPState'45'LedgerState_3880 ~v0 ~v1
  = du_HasPState'45'LedgerState_3880
du_HasPState'45'LedgerState_3880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1708
du_HasPState'45'LedgerState_3880
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1718
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1716
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1836)
              (d_certState_3842 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasVoteDelegs-LedgerState
d_HasVoteDelegs'45'LedgerState_3882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078
d_HasVoteDelegs'45'LedgerState_3882 ~v0 ~v1
  = du_HasVoteDelegs'45'LedgerState_3882
du_HasVoteDelegs'45'LedgerState_3882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078
du_HasVoteDelegs'45'LedgerState_3882
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
                 (d_certState_3842 (coe v0)))))
-- Ledger.Dijkstra.Specification.Ledger.HasDonations-LedgerState
d_HasDonations'45'LedgerState_3884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'LedgerState_3884 ~v0 ~v1
  = du_HasDonations'45'LedgerState_3884
du_HasDonations'45'LedgerState_3884 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'LedgerState_3884
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasDonations'45'UTxOState_3364)
              (d_utxoSt_3838 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasFees-LedgerState
d_HasFees'45'LedgerState_3886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'LedgerState_3886 ~v0 ~v1
  = du_HasFees'45'LedgerState_3886
du_HasFees'45'LedgerState_3886 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'LedgerState_3886
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_48
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasFee'45'UTxOState_3362)
              (d_utxoSt_3838 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasCCHotKeys-LedgerState
d_HasCCHotKeys'45'LedgerState_3888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1528
d_HasCCHotKeys'45'LedgerState_3888 ~v0 ~v1
  = du_HasCCHotKeys'45'LedgerState_3888
du_HasCCHotKeys'45'LedgerState_3888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1528
du_HasCCHotKeys'45'LedgerState_3888
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
                 (d_certState_3842 (coe v0)))))
-- Ledger.Dijkstra.Specification.Ledger.HasDReps-LedgerState
d_HasDReps'45'LedgerState_3890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
d_HasDReps'45'LedgerState_3890 ~v0 ~v1
  = du_HasDReps'45'LedgerState_3890
du_HasDReps'45'LedgerState_3890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194
du_HasDReps'45'LedgerState_3890
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1204
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1202
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_1842)
              (d_certState_3842 (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.HasCast-LedgerState
d_HasCast'45'LedgerState_3892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LedgerState_3892 ~v0 ~v1
  = du_HasCast'45'LedgerState_3892
du_HasCast'45'LedgerState_3892 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LedgerState_3892
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
                                 (3830 :: Integer) (2632180534421049758 :: Integer)
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
                                 (2970 :: Integer) (2632180534421049758 :: Integer)
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
                                    (3830 :: Integer) (2632180534421049758 :: Integer)
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
                                    (2726 :: Integer) (2632180534421049758 :: Integer)
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
                                       (3830 :: Integer) (2632180534421049758 :: Integer)
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
                                       (3238 :: Integer) (2632180534421049758 :: Integer)
                                       "Ledger.Dijkstra.Specification.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_3844))
-- Ledger.Dijkstra.Specification.Ledger.txgov
d_txgov_3896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_3896 ~v0 ~v1 ~v2 v3 = du_txgov_3896 v3
du_txgov_3896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3716 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_3896 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3816
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3814
            (coe v0)))
-- Ledger.Dijkstra.Specification.Ledger.GovProposals+Votes
d_GovProposals'43'Votes_3956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_GovProposals'43'Votes_3956 ~v0 ~v1 ~v2 v3
  = du_GovProposals'43'Votes_3956 v3
du_GovProposals'43'Votes_3956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_GovProposals'43'Votes_3956 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3816
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3814
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
               (coe v0))))
-- Ledger.Dijkstra.Specification.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_3960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_3960 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_3960 v0 v2 v3
du_rmOrphanDRepVotes_3960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_3960 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_124
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
         (coe du_go_3974 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Dijkstra.Specification.Ledger._.ifDRepRegistered
d_ifDRepRegistered_3970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_ifDRepRegistered_3970 = erased
-- Ledger.Dijkstra.Specification.Ledger._.go
d_go_3974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012
d_go_3974 v0 ~v1 v2 ~v3 v4 = du_go_3974 v0 v2 v4
du_go_3974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012
du_go_3974 v0 v1 v2
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
d_allColdCreds_3978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_3978 ~v0 ~v1 v2 v3 = du_allColdCreds_3978 v2 v3
du_allColdCreds_3978 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_3978 v0 v1
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
-- Ledger.Dijkstra.Specification.Ledger.coinFromGovDeposit
d_coinFromGovDeposit_3988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
d_coinFromGovDeposit_3988 ~v0 ~v1 = du_coinFromGovDeposit_3988
du_coinFromGovDeposit_3988 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
du_coinFromGovDeposit_3988
  = coe
      MAlonzo.Code.Data.List.Base.du_foldr_216
      (coe
         (\ v0 ->
            addInt
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1036
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))))
      (coe (0 :: Integer))
-- Ledger.Dijkstra.Specification.Ledger.HasCoin-LedgerState
d_HasCoin'45'LedgerState_3996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'LedgerState_3996 v0 ~v1
  = du_HasCoin'45'LedgerState_3996 v0
du_HasCoin'45'LedgerState_3996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'LedgerState_3996 v0
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
                          addInt (coe du_coinFromGovDeposit_3988 (d_govSt_3840 (coe v1)))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_cbalance_3398
                             (coe v0)
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3208
                                (coe d_utxoSt_3838 (coe v1)))))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3212
                          (coe d_utxoSt_3838 (coe v1))))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3210
                       (coe d_utxoSt_3838 (coe v1))))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coinFromDeposits_2020
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2784
                       (coe v0))
                    (coe d_certState_3842 (coe v1))))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coinFromRewards_2018
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2784
                    (coe v0))
                 (coe d_certState_3842 (coe v1)))))
-- Ledger.Dijkstra.Specification.Ledger._⊢_⇀⦇_,SUBLEDGER⦈_
d__'8866'_'8640''10631'_'44'SUBLEDGER'10632'__4042 a0 a1 a2 a3 a4
                                                   a5
  = ()
data T__'8866'_'8640''10631'_'44'SUBLEDGER'10632'__4042
  = C_SUBLEDGER'45'V_4044 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_SUBLEDGER'45'I_4046 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Ledger._⊢_⇀⦇_,SUBLEDGERS⦈_
d__'8866'_'8640''10631'_'44'SUBLEDGERS'10632'__4048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_SubLedgerEnv_3750 ->
  T_LedgerState_3830 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712] ->
  T_LedgerState_3830 -> ()
d__'8866'_'8640''10631'_'44'SUBLEDGERS'10632'__4048 = erased
-- Ledger.Dijkstra.Specification.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__4050 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__4050
  = C_LEDGER'45'V_4060 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_4070 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__4072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  T_LedgerEnv_3790 ->
  T_LedgerState_3830 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712] ->
  T_LedgerState_3830 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__4072 = erased
