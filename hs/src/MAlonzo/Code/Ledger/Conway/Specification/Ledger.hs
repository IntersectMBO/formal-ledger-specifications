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

module MAlonzo.Code.Ledger.Conway.Specification.Ledger where

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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxow
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Credential
d_Credential_60 a0 = ()
-- _.DRepsOf
d_DRepsOf_70 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1266 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_70 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1274
      (coe v0)
-- _.DecEq-Credential
d_DecEq'45'Credential_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_100 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_264
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1360
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1360
            (coe v0)))
-- _.GovActionState
d_GovActionState_184 a0 = ()
-- _.GovProposal
d_GovProposal_196 a0 = ()
-- _.GovVote
d_GovVote_206 a0 = ()
-- _.HasDReps
d_HasDReps_256 a0 a1 a2 = ()
-- _.HasPParams
d_HasPParams_310 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_336 a0 a1 a2 = ()
-- _.HasVoteDelegs
d_HasVoteDelegs_346 a0 a1 a2 = ()
-- _.PParams
d_PParams_436 a0 = ()
-- _.PParamsOf
d_PParamsOf_444 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_PParamsOf_444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_438
      (coe v0)
-- _.ScriptHash
d_ScriptHash_502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_502 = erased
-- _.Slot
d_Slot_556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_556 = erased
-- _.Tx
d_Tx_584 a0 = ()
-- _.TxBody
d_TxBody_588 a0 = ()
-- _.UTxOOf
d_UTxOOf_610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3322 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3330
      (coe v0)
-- _.VoteDelegsOf
d_VoteDelegsOf_634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_978 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_986
      (coe v0)
-- _.epoch
d_epoch_672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_672 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1716
         (coe v0))
-- _.GovActionState.action
d_action_908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1036 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_860
d_action_908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1054
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1036 ->
  AgdaAny
d_expiresIn_910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1052
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1036 ->
  AgdaAny
d_prevAction_912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1056
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1036 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1050
      (coe v0)
-- _.GovActionState.votes
d_votes_916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1036 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_948
d_votes_916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1048
      (coe v0)
-- _.GovActions.GovActionState
d_GovActionState_970 a0 = ()
-- _.GovActions.GovProposal
d_GovProposal_978 a0 = ()
-- _.GovActions.GovVote
d_GovVote_986 a0 = ()
-- _.GovActions.HasDReps
d_HasDReps_1008 a0 a1 a2 = ()
-- _.GovActions.HasVoteDelegs
d_HasVoteDelegs_1048 a0 a1 a2 = ()
-- _.GovActions.GovProposal.action
d_action_1120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_860
d_action_1120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1022
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_1122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_916
d_anchor_1122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1032
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_1124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  Integer
d_deposit_1124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1028
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_1126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  Maybe AgdaAny
d_policy_1126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1026
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  AgdaAny
d_prevAction_1128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1024
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_1130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1030
      (coe v0)
-- _.GovActions.GovVote.anchor
d_anchor_1142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_916
d_anchor_1142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_944
      (coe v0)
-- _.GovActions.GovVote.gid
d_gid_1144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_938
      (coe v0)
-- _.GovActions.GovVote.vote
d_vote_1146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_896
d_vote_1146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_942
      (coe v0)
-- _.GovActions.GovVote.voter
d_voter_1148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_904
d_voter_1148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_940
      (coe v0)
-- _.GovActions.HasDReps.DRepsOf
d_DRepsOf_1166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1266 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1274
      (coe v0)
-- _.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_978 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_986
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_PParamsOf_1254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_438
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3322 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3330
      (coe v0)
-- _.PParams.Emax
d_Emax_1358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_Emax_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_396
      (coe v0)
-- _.PParams.a
d_a_1360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_a_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_368 (coe v0)
-- _.PParams.a0
d_a0_1362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_400 (coe v0)
-- _.PParams.b
d_b_1364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_b_1364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_370 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMaxTermLength_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_412
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1368 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMinSize_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_410
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_coinsPerUTxOByte_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_380
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_collateralPercentage_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_402
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_404
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_drepActivity_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_420
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_drepDeposit_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_418
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210
d_drepThresholds_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_408
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionDeposit_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_416
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionLifetime_1386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_414
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_keyDeposit_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxBlockExUnits_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_360
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1392 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxBlockSize_1392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_352
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1394 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxCollateralInputs_1394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_364
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1396 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxHeaderSize_1396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_356
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1398 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerBlock_1398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_388
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1400 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerTx_1400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_386
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1402 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxTxExUnits_1402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_358
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1404 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxTxSize_1404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_354
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1406 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxValSize_1406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_362
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1408 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_384
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1410 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_minUTxOValue_1410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_394
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1412 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_376
      (coe v0)
-- _.PParams.nopt
d_nopt_1414 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_nopt_1414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_398
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1416 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_poolDeposit_1416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1418 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254
d_poolThresholds_1418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_406
      (coe v0)
-- _.PParams.prices
d_prices_1420 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_prices_1420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_382
      (coe v0)
-- _.PParams.pv
d_pv_1422 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_366 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_392
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1426 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_390
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1428 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_378
      (coe v0)
-- _.Tx.body
d_body_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338
d_body_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
      (coe v0)
-- _.Tx.isValid
d_isValid_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  Bool
d_isValid_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3536
      (coe v0)
-- _.Tx.txAD
d_txAD_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  Maybe AgdaAny
d_txAD_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3538
      (coe v0)
-- _.Tx.txsize
d_txsize_1858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  Integer
d_txsize_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3534
      (coe v0)
-- _.Tx.wits
d_wits_1860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3496
d_wits_1860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_1864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3380
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_1866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  Maybe Integer
d_currentTreasury_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3404
      (coe v0)
-- _.TxBody.mint
d_mint_1868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  AgdaAny
d_mint_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3406
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3378
      (coe v0)
-- _.TxBody.reqSignerHashes
d_reqSignerHashes_1872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [AgdaAny]
d_reqSignerHashes_1872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3408
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_1874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  Maybe AgdaAny
d_scriptIntegrityHash_1874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3410
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  Maybe AgdaAny
d_txADhash_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3394
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_1878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
d_txCerts_1878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3386
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_1880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  Integer
d_txDonation_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3396
      (coe v0)
-- _.TxBody.txFee
d_txFee_1882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  Integer
d_txFee_1882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3388
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_1884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008]
d_txGovProposals_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3400
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
d_txGovVotes_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3398
      (coe v0)
-- _.TxBody.txId
d_txId_1888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  AgdaAny
d_txId_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3384
      (coe v0)
-- _.TxBody.txIns
d_txIns_1890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_1890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3376
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  Maybe AgdaAny
d_txNetworkId_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3402
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3382
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3392
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3390
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState
d_EnactState_1978 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.EnactState.cc
d_cc_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1154 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.constitution
d_constitution_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1156
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pparams
d_pparams_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1160
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pv
d_pv_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1158 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.withdrawals
d_withdrawals_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1162
      (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_GovEnv_1832 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2046 = erased
-- Ledger.Conway.Specification.Ledger._.GovState
d_GovState_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  ()
d_GovState_2060 = erased
-- Ledger.Conway.Specification.Ledger._.GovStateOf
d_GovStateOf_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1816 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_1824
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2064 ~v0 ~v1 = du_HasCast'45'GovEnv_2064
du_HasCast'45'GovEnv_2064 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2064
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.du_HasCast'45'GovEnv_1870
-- Ledger.Conway.Specification.Ledger._.HasGovState
d_HasGovState_2070 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGovState.GovStateOf
d_GovStateOf_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1816 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_1824
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2194 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2194
du_HasCast'45'UTxOEnv_2194 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2194
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOEnv_2480
-- Ledger.Conway.Specification.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1162
d_HasDeposits'45'UTxOState_2202 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2202
du_HasDeposits'45'UTxOState_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1162
du_HasDeposits'45'UTxOState_2202
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2476
-- Ledger.Conway.Specification.Ledger._.HasDonations-UTxOState
d_HasDonations'45'UTxOState_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_2204 ~v0 ~v1
  = du_HasDonations'45'UTxOState_2204
du_HasDonations'45'UTxOState_2204 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_2204
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2478
-- Ledger.Conway.Specification.Ledger._.HasFee-UTxOState
d_HasFee'45'UTxOState_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFee'45'UTxOState_2206 ~v0 ~v1 = du_HasFee'45'UTxOState_2206
du_HasFee'45'UTxOState_2206 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFee'45'UTxOState_2206
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasFee'45'UTxOState_2474
-- Ledger.Conway.Specification.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3322
d_HasUTxO'45'UTxOState_2210 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2210
du_HasUTxO'45'UTxOState_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3322
du_HasUTxO'45'UTxOState_2210
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2472
-- Ledger.Conway.Specification.Ledger._.HasUTxOState
d_HasUTxOState_2212 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOState
d_UTxOState_2232 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOStateOf
d_UTxOStateOf_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2454 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
d_UTxOStateOf_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2462
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2454 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
d_UTxOStateOf_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2462
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.deposits
d_deposits_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2444
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.donations
d_donations_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  Integer
d_donations_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2446
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.fees
d_fees_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  Integer
d_fees_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2442 (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.utxo
d_utxo_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440 (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2378 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1350 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2430 = erased
-- Ledger.Conway.Specification.Ledger._.CCHotKeysOf
d_CCHotKeysOf_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1198 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1206
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState
d_CertState_2462 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.CertStateOf
d_CertStateOf_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1514 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418
d_CertStateOf_2466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1522
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DStateOf
d_DStateOf_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1454 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1374
d_DStateOf_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1462
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DepositsOf
d_DepositsOf_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1162 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1170
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.GStateOf
d_GStateOf_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1494 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1406
d_GStateOf_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1502
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys
d_HasCCHotKeys_2512 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1198
d_HasCCHotKeys'45'GState_2518 ~v0 ~v1
  = du_HasCCHotKeys'45'GState_2518
du_HasCCHotKeys'45'GState_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1198
du_HasCCHotKeys'45'GState_2518
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1546
-- Ledger.Conway.Specification.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2520 ~v0 ~v1 = du_HasCast'45'CertEnv_2520
du_HasCast'45'CertEnv_2520 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2520
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1574
-- Ledger.Conway.Specification.Ledger._.HasCertState
d_HasCertState_2532 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDReps-CertState
d_HasDReps'45'CertState_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1266
d_HasDReps'45'CertState_2538 ~v0 ~v1
  = du_HasDReps'45'CertState_2538
du_HasDReps'45'CertState_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1266
du_HasDReps'45'CertState_2538
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1556
-- Ledger.Conway.Specification.Ledger._.HasDState
d_HasDState_2542 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDState-CertState
d_HasDState'45'CertState_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1454
d_HasDState'45'CertState_2546 ~v0 ~v1
  = du_HasDState'45'CertState_2546
du_HasDState'45'CertState_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1454
du_HasDState'45'CertState_2546
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1548
-- Ledger.Conway.Specification.Ledger._.HasDeposits
d_HasDeposits_2548 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGState
d_HasGState_2552 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGState-CertState
d_HasGState'45'CertState_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1494
d_HasGState'45'CertState_2556 ~v0 ~v1
  = du_HasGState'45'CertState_2556
du_HasGState'45'CertState_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1494
du_HasGState'45'CertState_2556
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1552
-- Ledger.Conway.Specification.Ledger._.HasPState
d_HasPState_2560 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasPState-CertState
d_HasPState'45'CertState_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1474
d_HasPState'45'CertState_2564 ~v0 ~v1
  = du_HasPState'45'CertState_2564
du_HasPState'45'CertState_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1474
du_HasPState'45'CertState_2564
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1550
-- Ledger.Conway.Specification.Ledger._.HasPools
d_HasPools_2566 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasPools-CertState
d_HasPools'45'CertState_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1214
d_HasPools'45'CertState_2570 ~v0 ~v1
  = du_HasPools'45'CertState_2570
du_HasPools'45'CertState_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1214
du_HasPools'45'CertState_2570
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1560
-- Ledger.Conway.Specification.Ledger._.HasRewards-CertState
d_HasRewards'45'CertState_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1246
d_HasRewards'45'CertState_2584 ~v0 ~v1
  = du_HasRewards'45'CertState_2584
du_HasRewards'45'CertState_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1246
du_HasRewards'45'CertState_2584
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1554
-- Ledger.Conway.Specification.Ledger._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_978
d_HasVoteDelegs'45'DState_2602 ~v0 ~v1
  = du_HasVoteDelegs'45'DState_2602
du_HasVoteDelegs'45'DState_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_978
du_HasVoteDelegs'45'DState_2602
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1534
-- Ledger.Conway.Specification.Ledger._.PStateOf
d_PStateOf_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1474 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390
d_PStateOf_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1482
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.PoolsOf
d_PoolsOf_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1214 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1222
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.dState
d_dState_2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1374
d_dState_2724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1426
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.gState
d_gState_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1406
d_gState_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1430
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.pState
d_pState_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390
d_pState_2728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1428
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1198 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1206
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1514 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418
d_CertStateOf_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1522
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDState.DStateOf
d_DStateOf_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1454 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1374
d_DStateOf_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1462
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1162 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1170
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasGState.GStateOf
d_GStateOf_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1494 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1406
d_GStateOf_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1502
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasPState.PStateOf
d_PStateOf_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1474 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390
d_PStateOf_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1482
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasPools.PoolsOf
d_PoolsOf_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1214 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1222
      (coe v0)
-- Ledger.Conway.Specification.Ledger.LEnv
d_LEnv_2844 a0 a1 = ()
data T_LEnv_2844
  = C_constructor_2866 AgdaAny (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142
                       Integer
-- Ledger.Conway.Specification.Ledger.LEnv.slot
d_slot_2856 :: T_LEnv_2844 -> AgdaAny
d_slot_2856 v0
  = case coe v0 of
      C_constructor_2866 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.ppolicy
d_ppolicy_2858 :: T_LEnv_2844 -> Maybe AgdaAny
d_ppolicy_2858 v0
  = case coe v0 of
      C_constructor_2866 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.pparams
d_pparams_2860 ::
  T_LEnv_2844 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2860 v0
  = case coe v0 of
      C_constructor_2866 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.enactState
d_enactState_2862 ::
  T_LEnv_2844 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142
d_enactState_2862 v0
  = case coe v0 of
      C_constructor_2866 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.treasury
d_treasury_2864 :: T_LEnv_2844 -> Integer
d_treasury_2864 v0
  = case coe v0 of
      C_constructor_2866 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430
d_HasPParams'45'LEnv_2868 ~v0 ~v1 = du_HasPParams'45'LEnv_2868
du_HasPParams'45'LEnv_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430
du_HasPParams'45'LEnv_2868
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_440
      (coe (\ v0 -> d_pparams_2860 (coe v0)))
-- Ledger.Conway.Specification.Ledger.LState
d_LState_2870 a0 a1 = ()
data T_LState_2870
  = C_'10214'_'44'_'44'_'10215''737'_2884 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418
-- Ledger.Conway.Specification.Ledger.LState.utxoSt
d_utxoSt_2878 ::
  T_LState_2870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
d_utxoSt_2878 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2884 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.govSt
d_govSt_2880 ::
  T_LState_2870 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2880 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2884 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.certState
d_certState_2882 ::
  T_LState_2870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418
d_certState_2882 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2884 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasLState
d_HasLState_2890 a0 a1 a2 a3 = ()
newtype T_HasLState_2890
  = C_constructor_2900 (AgdaAny -> T_LState_2870)
-- Ledger.Conway.Specification.Ledger.HasLState.LStateOf
d_LStateOf_2898 :: T_HasLState_2890 -> AgdaAny -> T_LState_2870
d_LStateOf_2898 v0
  = case coe v0 of
      C_constructor_2900 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger._.LStateOf
d_LStateOf_2904 :: T_HasLState_2890 -> AgdaAny -> T_LState_2870
d_LStateOf_2904 v0 = coe d_LStateOf_2898 (coe v0)
-- Ledger.Conway.Specification.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2454
d_HasUTxOState'45'LState_2906 ~v0 ~v1
  = du_HasUTxOState'45'LState_2906
du_HasUTxOState'45'LState_2906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2454
du_HasUTxOState'45'LState_2906
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2464
      (coe (\ v0 -> d_utxoSt_2878 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3322
d_HasUTxO'45'LState_2908 ~v0 ~v1 = du_HasUTxO'45'LState_2908
du_HasUTxO'45'LState_2908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3322
du_HasUTxO'45'LState_2908
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3332
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3330
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2472)
              (d_utxoSt_2878 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGovState-LState
d_HasGovState'45'LState_2910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1816
d_HasGovState'45'LState_2910 ~v0 ~v1
  = du_HasGovState'45'LState_2910
du_HasGovState'45'LState_2910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1816
du_HasGovState'45'LState_2910
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.C_constructor_1826
      (coe (\ v0 -> d_govSt_2880 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasCertState-LState
d_HasCertState'45'LState_2912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1514
d_HasCertState'45'LState_2912 ~v0 ~v1
  = du_HasCertState'45'LState_2912
du_HasCertState'45'LState_2912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1514
du_HasCertState'45'LState_2912
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1524
      (coe (\ v0 -> d_certState_2882 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1162
d_HasDeposits'45'LState_2914 ~v0 ~v1
  = du_HasDeposits'45'LState_2914
du_HasDeposits'45'LState_2914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1162
du_HasDeposits'45'LState_2914
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1172
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1170
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2476)
              (d_utxoSt_2878 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasPools-LState
d_HasPools'45'LState_2916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1214
d_HasPools'45'LState_2916 ~v0 ~v1 = du_HasPools'45'LState_2916
du_HasPools'45'LState_2916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1214
du_HasPools'45'LState_2916
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1224
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1222
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1560)
              (d_certState_2882 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGState-LState
d_HasGState'45'LState_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1494
d_HasGState'45'LState_2918 ~v0 ~v1 = du_HasGState'45'LState_2918
du_HasGState'45'LState_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1494
du_HasGState'45'LState_2918
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1504
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1502
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1552)
              (d_certState_2882 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasDState-LState
d_HasDState'45'LState_2920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1454
d_HasDState'45'LState_2920 ~v0 ~v1 = du_HasDState'45'LState_2920
du_HasDState'45'LState_2920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1454
du_HasDState'45'LState_2920
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1464
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1462
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1548)
              (d_certState_2882 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasPState-LState
d_HasPState'45'LState_2922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1474
d_HasPState'45'LState_2922 ~v0 ~v1 = du_HasPState'45'LState_2922
du_HasPState'45'LState_2922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1474
du_HasPState'45'LState_2922
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1484
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1482
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1550)
              (d_certState_2882 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasVoteDelegs-LState
d_HasVoteDelegs'45'LState_2924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_978
d_HasVoteDelegs'45'LState_2924 ~v0 ~v1
  = du_HasVoteDelegs'45'LState_2924
du_HasVoteDelegs'45'LState_2924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_978
du_HasVoteDelegs'45'LState_2924
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_988
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_986
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1534)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1462
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1548)
                 (d_certState_2882 (coe v0)))))
-- Ledger.Conway.Specification.Ledger.HasDonations-LState
d_HasDonations'45'LState_2926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'LState_2926 ~v0 ~v1
  = du_HasDonations'45'LState_2926
du_HasDonations'45'LState_2926 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'LState_2926
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2478)
              (d_utxoSt_2878 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasFees-LState
d_HasFees'45'LState_2928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'LState_2928 ~v0 ~v1 = du_HasFees'45'LState_2928
du_HasFees'45'LState_2928 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'LState_2928
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_48
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasFee'45'UTxOState_2474)
              (d_utxoSt_2878 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasCCHotKeys-LState
d_HasCCHotKeys'45'LState_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1198
d_HasCCHotKeys'45'LState_2930 ~v0 ~v1
  = du_HasCCHotKeys'45'LState_2930
du_HasCCHotKeys'45'LState_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1198
du_HasCCHotKeys'45'LState_2930
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1208
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1206
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1546)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1502
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1552)
                 (d_certState_2882 (coe v0)))))
-- Ledger.Conway.Specification.Ledger.HasDReps-LState
d_HasDReps'45'LState_2932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1266
d_HasDReps'45'LState_2932 ~v0 ~v1 = du_HasDReps'45'LState_2932
du_HasDReps'45'LState_2932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1266
du_HasDReps'45'LState_2932
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1276
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1274
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1556)
              (d_certState_2882 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2934 ~v0 ~v1 = du_HasCast'45'LEnv_2934
du_HasCast'45'LEnv_2934 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2934
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
                                 (2844 :: Integer) (11007941034284287304 :: Integer)
                                 "Ledger.Conway.Specification.Ledger.LEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (556 :: Integer) (11007941034284287304 :: Integer) "_.Slot"
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
                                    (2844 :: Integer) (11007941034284287304 :: Integer)
                                    "Ledger.Conway.Specification.Ledger.LEnv"
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
                                                (502 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2844 :: Integer) (11007941034284287304 :: Integer)
                                       "Ledger.Conway.Specification.Ledger.LEnv"
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
                                       (436 :: Integer) (11007941034284287304 :: Integer)
                                       "_.PParams"
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
                                          (2844 :: Integer) (11007941034284287304 :: Integer)
                                          "Ledger.Conway.Specification.Ledger.LEnv"
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
                                          (1978 :: Integer) (11007941034284287304 :: Integer)
                                          "Ledger.Conway.Specification.Ledger._.EnactState"
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
                                             (2844 :: Integer) (11007941034284287304 :: Integer)
                                             "Ledger.Conway.Specification.Ledger.LEnv"
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
         (coe C_constructor_2866))
-- Ledger.Conway.Specification.Ledger.HasCast-LState
d_HasCast'45'LState_2936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2936 ~v0 ~v1 = du_HasCast'45'LState_2936
du_HasCast'45'LState_2936 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2936
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
                                 (2870 :: Integer) (11007941034284287304 :: Integer)
                                 "Ledger.Conway.Specification.Ledger.LState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2232 :: Integer) (11007941034284287304 :: Integer)
                                 "Ledger.Conway.Specification.Ledger._.UTxOState"
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
                                    (2870 :: Integer) (11007941034284287304 :: Integer)
                                    "Ledger.Conway.Specification.Ledger.LState"
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
                                    (2060 :: Integer) (11007941034284287304 :: Integer)
                                    "Ledger.Conway.Specification.Ledger._.GovState"
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
                                       (2870 :: Integer) (11007941034284287304 :: Integer)
                                       "Ledger.Conway.Specification.Ledger.LState"
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
                                       (2462 :: Integer) (11007941034284287304 :: Integer)
                                       "Ledger.Conway.Specification.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2884))
-- Ledger.Conway.Specification.Ledger.txgov
d_txgov_2938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2938 ~v0 ~v1 v2 = du_txgov_2938 v2
du_txgov_2938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2938 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3400
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3398
            (coe v0)))
-- Ledger.Conway.Specification.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2984 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2984 v0 v2 v3
du_rmOrphanDRepVotes_2984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2984 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_124
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
         (coe du_go_2998 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Conway.Specification.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_ifDRepRegistered_2994 = erased
-- Ledger.Conway.Specification.Ledger._.go
d_go_2998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1036 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1036
d_go_2998 v0 ~v1 v2 ~v3 v4 = du_go_2998 v0 v2 v4
du_go_2998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1036 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1036
du_go_2998 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1058
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_962
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_956
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1048
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
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_264
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1360
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1360
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
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1412
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1430
                          (coe v1)))))
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_958
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1048
                  (coe v2))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_960
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1048
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1050
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1052
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1054
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1056
         (coe v2))
-- Ledger.Conway.Specification.Ledger.allColdCreds
d_allColdCreds_3002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_3002 ~v0 ~v1 v2 v3 = du_allColdCreds_3002 v2 v3
du_allColdCreds_3002 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_3002 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1194
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1154 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_536
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1256
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1054
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_456
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__3044 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__3044
  = C_LEDGER'45'V_3086 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_3088 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ledger._.txCerts
d_txCerts_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_22869 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
d_txCerts_3064 ~v0 ~v1 v2 = du_txCerts_3064 v2
du_txCerts_3064 ::
  T_GeneralizeTel_22869 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
du_txCerts_3064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3386
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
         (coe d_'46'generalizedField'45'tx_22845 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txGovVotes
d_txGovVotes_3072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_22869 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
d_txGovVotes_3072 ~v0 ~v1 v2 = du_txGovVotes_3072 v2
du_txGovVotes_3072 ::
  T_GeneralizeTel_22869 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
du_txGovVotes_3072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3398
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
         (coe d_'46'generalizedField'45'tx_22845 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txId
d_txId_3074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_22869 -> AgdaAny
d_txId_3074 ~v0 ~v1 v2 = du_txId_3074 v2
du_txId_3074 :: T_GeneralizeTel_22869 -> AgdaAny
du_txId_3074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3384
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
         (coe d_'46'generalizedField'45'tx_22845 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txWithdrawals
d_txWithdrawals_3084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_22869 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3084 ~v0 ~v1 v2 = du_txWithdrawals_3084 v2
du_txWithdrawals_3084 ::
  T_GeneralizeTel_22869 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_3084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3390
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
         (coe d_'46'generalizedField'45'tx_22845 (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_LEnv_2844 ->
  T_LState_2870 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518] ->
  T_LState_2870 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3106 = erased
-- Ledger.Conway.Specification.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_22845 ::
  T_GeneralizeTel_22869 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518
d_'46'generalizedField'45'tx_22845 v0
  = case coe v0 of
      C_mkGeneralizeTel_22871 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_22847 ::
  T_GeneralizeTel_22869 -> AgdaAny
d_'46'generalizedField'45'slot_22847 v0
  = case coe v0 of
      C_mkGeneralizeTel_22871 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_22849 ::
  T_GeneralizeTel_22869 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_'46'generalizedField'45'pp_22849 v0
  = case coe v0 of
      C_mkGeneralizeTel_22871 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_22851 ::
  T_GeneralizeTel_22869 -> Integer
d_'46'generalizedField'45'treasury_22851 v0
  = case coe v0 of
      C_mkGeneralizeTel_22871 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_22853 ::
  T_GeneralizeTel_22869 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
d_'46'generalizedField'45'utxoSt_22853 v0
  = case coe v0 of
      C_mkGeneralizeTel_22871 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_22855 ::
  T_GeneralizeTel_22869 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
d_'46'generalizedField'45'utxoSt''_22855 v0
  = case coe v0 of
      C_mkGeneralizeTel_22871 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_22857 ::
  T_GeneralizeTel_22869 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_22857 v0
  = case coe v0 of
      C_mkGeneralizeTel_22871 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_22859 ::
  T_GeneralizeTel_22869 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142
d_'46'generalizedField'45'enactState_22859 v0
  = case coe v0 of
      C_mkGeneralizeTel_22871 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_22861 ::
  T_GeneralizeTel_22869 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418
d_'46'generalizedField'45'certState_22861 v0
  = case coe v0 of
      C_mkGeneralizeTel_22871 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_22863 ::
  T_GeneralizeTel_22869 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418
d_'46'generalizedField'45'certState''_22863 v0
  = case coe v0 of
      C_mkGeneralizeTel_22871 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_22865 ::
  T_GeneralizeTel_22869 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_22865 v0
  = case coe v0 of
      C_mkGeneralizeTel_22871 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_22867 ::
  T_GeneralizeTel_22869 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_22867 v0
  = case coe v0 of
      C_mkGeneralizeTel_22871 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.GeneralizeTel
d_GeneralizeTel_22869 a0 a1 = ()
data T_GeneralizeTel_22869
  = C_mkGeneralizeTel_22871 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518
                            AgdaAny
                            MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
                            Integer
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418
                            (Maybe AgdaAny) [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
