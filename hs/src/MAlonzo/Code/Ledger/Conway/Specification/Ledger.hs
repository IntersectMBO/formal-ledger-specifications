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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxow
import qualified MAlonzo.Code.Ledger.Core.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Certs
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Credential
d_Credential_58 a0 = ()
-- _.DRepsOf
d_DRepsOf_68 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasDReps_1232 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_68 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DRepsOf_1240
      (coe v0)
-- _.DecEq-Credential
d_DecEq'45'Credential_98 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_98 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
            (coe v0)))
-- _.GovActionState
d_GovActionState_182 a0 = ()
-- _.GovProposal
d_GovProposal_194 a0 = ()
-- _.GovVote
d_GovVote_204 a0 = ()
-- _.HasDReps
d_HasDReps_248 a0 a1 a2 = ()
-- _.HasPParams
d_HasPParams_298 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_324 a0 a1 a2 = ()
-- _.HasVoteDelegs
d_HasVoteDelegs_334 a0 a1 a2 = ()
-- _.PParams
d_PParams_416 a0 = ()
-- _.PParamsOf
d_PParamsOf_424 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_PParamsOf_424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_430
      (coe v0)
-- _.ScriptHash
d_ScriptHash_482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_482 = erased
-- _.Slot
d_Slot_532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_532 = erased
-- _.Tx
d_Tx_560 a0 = ()
-- _.TxBody
d_TxBody_564 a0 = ()
-- _.UTxOOf
d_UTxOOf_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3238 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3246
      (coe v0)
-- _.VoteDelegsOf
d_VoteDelegsOf_610 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_946 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_610 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteDelegsOf_954
      (coe v0)
-- _.epoch
d_epoch_648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_648 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
         (coe v0))
-- _.GovActionState.action
d_action_882 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_828
d_action_882 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_1022
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_884 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny
d_expiresIn_884 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_expiresIn_1020
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_886 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny
d_prevAction_886 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_prevAction_1024
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_888 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_888 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_returnAddr_1018
      (coe v0)
-- _.GovActionState.votes
d_votes_890 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVotes_916
d_votes_890 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_votes_1016
      (coe v0)
-- _.GovActions.GovActionState
d_GovActionState_944 a0 = ()
-- _.GovActions.GovProposal
d_GovProposal_952 a0 = ()
-- _.GovActions.GovVote
d_GovVote_960 a0 = ()
-- _.GovActions.HasDReps
d_HasDReps_982 a0 a1 a2 = ()
-- _.GovActions.HasVoteDelegs
d_HasVoteDelegs_1022 a0 a1 a2 = ()
-- _.GovActions.GovProposal.action
d_action_1094 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_828
d_action_1094 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_990
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_1096 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_884
d_anchor_1096 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_1000
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_1098 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  Integer
d_deposit_1098 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_deposit_996
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_1100 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  Maybe AgdaAny
d_policy_1100 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_policy_994
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_1102 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  AgdaAny
d_prevAction_1102 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_prevAction_992
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_1104 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1104 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_returnAddr_998
      (coe v0)
-- _.GovActions.GovVote.anchor
d_anchor_1116 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_884
d_anchor_1116 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_912
      (coe v0)
-- _.GovActions.GovVote.gid
d_gid_1118 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1118 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gid_906
      (coe v0)
-- _.GovActions.GovVote.vote
d_vote_1120 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_864
d_vote_1120 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_vote_910
      (coe v0)
-- _.GovActions.GovVote.voter
d_voter_1122 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_872
d_voter_1122 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_voter_908
      (coe v0)
-- _.GovActions.HasDReps.DRepsOf
d_DRepsOf_1140 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasDReps_1232 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1140 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DRepsOf_1240
      (coe v0)
-- _.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1164 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_946 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1164 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteDelegsOf_954
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1220 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_PParamsOf_1220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_430
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3238 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3246
      (coe v0)
-- _.PParams.Emax
d_Emax_1324 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_Emax_1324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_390
      (coe v0)
-- _.PParams.a
d_a_1326 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_a_1326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_362 (coe v0)
-- _.PParams.a0
d_a0_1328 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_394 (coe v0)
-- _.PParams.b
d_b_1330 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_b_1330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_364 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1332 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_ccMaxTermLength_1332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_406
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1334 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_ccMinSize_1334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_404
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1336 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_coinsPerUTxOByte_1336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_374
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1338 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_collateralPercentage_1338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_396
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1340 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_costmdls_1340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_398
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1342 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_drepActivity_1342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_414
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1344 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_drepDeposit_1344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_412
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1346 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_206
d_drepThresholds_1346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_402
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1348 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_govActionDeposit_1348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_410
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_govActionLifetime_1350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_408
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1352 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_keyDeposit_1352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1354 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_maxBlockExUnits_1354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_354
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1356 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxBlockSize_1356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_346
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxCollateralInputs_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_358
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxHeaderSize_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_350
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxRefScriptSizePerBlock_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_382
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxRefScriptSizePerTx_1364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_380
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_maxTxExUnits_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_352
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1368 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxTxSize_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_348
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxValSize_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_356
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_378
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1374 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_minUTxOValue_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_388
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_370
      (coe v0)
-- _.PParams.nopt
d_nopt_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_nopt_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_392
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_poolDeposit_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_250
d_poolThresholds_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_400
      (coe v0)
-- _.PParams.prices
d_prices_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny
d_prices_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_376
      (coe v0)
-- _.PParams.pv
d_pv_1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_360 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_386
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_384
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1392 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_372
      (coe v0)
-- _.Tx.body
d_body_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254
d_body_1810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
      (coe v0)
-- _.Tx.isValid
d_isValid_1812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Bool
d_isValid_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3452
      (coe v0)
-- _.Tx.txAD
d_txAD_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Maybe AgdaAny
d_txAD_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3454
      (coe v0)
-- _.Tx.txsize
d_txsize_1816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Integer
d_txsize_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3450
      (coe v0)
-- _.Tx.wits
d_wits_1818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3412
d_wits_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3448
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3296
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_1824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Maybe Integer
d_currentTreasury_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3320
      (coe v0)
-- _.TxBody.mint
d_mint_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  AgdaAny
d_mint_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3322
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3294
      (coe v0)
-- _.TxBody.reqSignerHashes
d_reqSignerHashes_1830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [AgdaAny]
d_reqSignerHashes_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3324
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_1832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Maybe AgdaAny
d_scriptIntegrityHash_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3326
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Maybe AgdaAny
d_txADhash_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3310
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_1836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
d_txCerts_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3302
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
d_txDonation_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3312
      (coe v0)
-- _.TxBody.txFee
d_txFee_1840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
d_txFee_1840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3304
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_1842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_976]
d_txGovProposals_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3316
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_1844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896]
d_txGovVotes_1844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3314
      (coe v0)
-- _.TxBody.txId
d_txId_1846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  AgdaAny
d_txId_1846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3300
      (coe v0)
-- _.TxBody.txIns
d_txIns_1848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_1848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Maybe AgdaAny
d_txNetworkId_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3318
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3298
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3308
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3306
      (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertEnv_1318 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1892 = erased
-- Ledger.Conway.Specification.Ledger._.CCHotKeysOf
d_CCHotKeysOf_1908 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1166 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1908 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_CCHotKeysOf_1174
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState
d_CertState_1924 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.CertStateOf
d_CertStateOf_1928 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCertState_1482 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386
d_CertStateOf_1928 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_CertStateOf_1490
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DStateOf
d_DStateOf_1946 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1342
d_DStateOf_1946 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DStateOf_1430
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DepositsOf
d_DepositsOf_1958 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDeposits_1130 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1958 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DepositsOf_1138
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.GStateOf
d_GStateOf_1970 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1462 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_GState_1374
d_GStateOf_1970 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_GStateOf_1470
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys
d_HasCCHotKeys_1974 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1166
d_HasCCHotKeys'45'GState_1980 ~v0 ~v1
  = du_HasCCHotKeys'45'GState_1980
du_HasCCHotKeys'45'GState_1980 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1166
du_HasCCHotKeys'45'GState_1980
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCCHotKeys'45'GState_1514
-- Ledger.Conway.Specification.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_1982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1982 ~v0 ~v1 = du_HasCast'45'CertEnv_1982
du_HasCast'45'CertEnv_1982 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1982
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCast'45'CertEnv_1542
-- Ledger.Conway.Specification.Ledger._.HasCertState
d_HasCertState_1994 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDReps-CertState
d_HasDReps'45'CertState_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasDReps_1232
d_HasDReps'45'CertState_2000 ~v0 ~v1
  = du_HasDReps'45'CertState_2000
du_HasDReps'45'CertState_2000 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasDReps_1232
du_HasDReps'45'CertState_2000
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasDReps'45'CertState_1524
-- Ledger.Conway.Specification.Ledger._.HasDState
d_HasDState_2004 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDState-CertState
d_HasDState'45'CertState_2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1422
d_HasDState'45'CertState_2008 ~v0 ~v1
  = du_HasDState'45'CertState_2008
du_HasDState'45'CertState_2008 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1422
du_HasDState'45'CertState_2008
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasDState'45'CertState_1516
-- Ledger.Conway.Specification.Ledger._.HasDeposits
d_HasDeposits_2010 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGState
d_HasGState_2014 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGState-CertState
d_HasGState'45'CertState_2018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1462
d_HasGState'45'CertState_2018 ~v0 ~v1
  = du_HasGState'45'CertState_2018
du_HasGState'45'CertState_2018 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1462
du_HasGState'45'CertState_2018
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasGState'45'CertState_1520
-- Ledger.Conway.Specification.Ledger._.HasPState
d_HasPState_2022 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasPState-CertState
d_HasPState'45'CertState_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1442
d_HasPState'45'CertState_2026 ~v0 ~v1
  = du_HasPState'45'CertState_2026
du_HasPState'45'CertState_2026 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1442
du_HasPState'45'CertState_2026
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasPState'45'CertState_1518
-- Ledger.Conway.Specification.Ledger._.HasPools
d_HasPools_2028 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasPools-CertState
d_HasPools'45'CertState_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1182
d_HasPools'45'CertState_2032 ~v0 ~v1
  = du_HasPools'45'CertState_2032
du_HasPools'45'CertState_2032 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1182
du_HasPools'45'CertState_2032
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasPools'45'CertState_1528
-- Ledger.Conway.Specification.Ledger._.HasRewards-CertState
d_HasRewards'45'CertState_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRewards_1214
d_HasRewards'45'CertState_2046 ~v0 ~v1
  = du_HasRewards'45'CertState_2046
du_HasRewards'45'CertState_2046 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRewards_1214
du_HasRewards'45'CertState_2046
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasRewards'45'CertState_1522
-- Ledger.Conway.Specification.Ledger._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_946
d_HasVoteDelegs'45'DState_2064 ~v0 ~v1
  = du_HasVoteDelegs'45'DState_2064
du_HasVoteDelegs'45'DState_2064 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_946
du_HasVoteDelegs'45'DState_2064
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasVoteDelegs'45'DState_1502
-- Ledger.Conway.Specification.Ledger._.PStateOf
d_PStateOf_2076 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1442 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1358
d_PStateOf_2076 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_PStateOf_1450
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.PoolsOf
d_PoolsOf_2084 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2084 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_PoolsOf_1190
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.dState
d_dState_2186 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1342
d_dState_2186 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_dState_1394 (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.gState
d_gState_2188 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_GState_1374
d_gState_2188 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_gState_1398 (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.pState
d_pState_2190 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1358
d_pState_2190 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_pState_1396 (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_2244 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1166 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2244 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_CCHotKeysOf_1174
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2248 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCertState_1482 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386
d_CertStateOf_2248 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_CertStateOf_1490
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDState.DStateOf
d_DStateOf_2252 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1342
d_DStateOf_2252 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DStateOf_1430
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2256 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDeposits_1130 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2256 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DepositsOf_1138
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasGState.GStateOf
d_GStateOf_2260 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1462 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_GState_1374
d_GStateOf_2260 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_GStateOf_1470
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasPState.PStateOf
d_PStateOf_2264 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1442 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1358
d_PStateOf_2264 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_PStateOf_1450
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasPools.PoolsOf
d_PoolsOf_2268 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2268 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_PoolsOf_1190
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState
d_EnactState_2328 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.EnactState.cc
d_cc_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1122 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.constitution
d_constitution_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1124
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pparams
d_pparams_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1128
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pv
d_pv_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1126 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.withdrawals
d_withdrawals_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1130
      (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_GovEnv_2608 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2396 = erased
-- Ledger.Conway.Specification.Ledger._.GovState
d_GovState_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  ()
d_GovState_2410 = erased
-- Ledger.Conway.Specification.Ledger._.GovStateOf
d_GovStateOf_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2592 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2600
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2414 ~v0 ~v1 = du_HasCast'45'GovEnv_2414
du_HasCast'45'GovEnv_2414 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2414
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.du_HasCast'45'GovEnv_2646
-- Ledger.Conway.Specification.Ledger._.HasGovState
d_HasGovState_2420 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGovState.GovStateOf
d_GovStateOf_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2592 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2600
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2544 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2544
du_HasCast'45'UTxOEnv_2544 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOEnv_2430
-- Ledger.Conway.Specification.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDeposits_1130
d_HasDeposits'45'UTxOState_2552 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2552
du_HasDeposits'45'UTxOState_2552 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDeposits_1130
du_HasDeposits'45'UTxOState_2552
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2426
-- Ledger.Conway.Specification.Ledger._.HasDonations-UTxOState
d_HasDonations'45'UTxOState_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_2554 ~v0 ~v1
  = du_HasDonations'45'UTxOState_2554
du_HasDonations'45'UTxOState_2554 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_2554
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2428
-- Ledger.Conway.Specification.Ledger._.HasFee-UTxOState
d_HasFee'45'UTxOState_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFee'45'UTxOState_2556 ~v0 ~v1 = du_HasFee'45'UTxOState_2556
du_HasFee'45'UTxOState_2556 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFee'45'UTxOState_2556
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasFee'45'UTxOState_2424
-- Ledger.Conway.Specification.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3238
d_HasUTxO'45'UTxOState_2560 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2560
du_HasUTxO'45'UTxOState_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3238
du_HasUTxO'45'UTxOState_2560
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2422
-- Ledger.Conway.Specification.Ledger._.HasUTxOState
d_HasUTxOState_2562 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOState
d_UTxOState_2582 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOStateOf
d_UTxOStateOf_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2404 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
d_UTxOStateOf_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2412
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2404 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
d_UTxOStateOf_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2412
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.deposits
d_deposits_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2394
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.donations
d_donations_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  Integer
d_donations_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2396
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.fees
d_fees_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  Integer
d_fees_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2392 (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.utxo
d_utxo_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390 (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2728 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Ledger.LEnv
d_LEnv_2776 a0 a1 = ()
data T_LEnv_2776
  = C_constructor_2798 AgdaAny (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110
                       Integer
-- Ledger.Conway.Specification.Ledger.LEnv.slot
d_slot_2788 :: T_LEnv_2776 -> AgdaAny
d_slot_2788 v0
  = case coe v0 of
      C_constructor_2798 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.ppolicy
d_ppolicy_2790 :: T_LEnv_2776 -> Maybe AgdaAny
d_ppolicy_2790 v0
  = case coe v0 of
      C_constructor_2798 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.pparams
d_pparams_2792 ::
  T_LEnv_2776 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2792 v0
  = case coe v0 of
      C_constructor_2798 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.enactState
d_enactState_2794 ::
  T_LEnv_2776 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110
d_enactState_2794 v0
  = case coe v0 of
      C_constructor_2798 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.treasury
d_treasury_2796 :: T_LEnv_2776 -> Integer
d_treasury_2796 v0
  = case coe v0 of
      C_constructor_2798 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
d_HasPParams'45'LEnv_2800 ~v0 ~v1 = du_HasPParams'45'LEnv_2800
du_HasPParams'45'LEnv_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
du_HasPParams'45'LEnv_2800
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_432
      (coe (\ v0 -> d_pparams_2792 (coe v0)))
-- Ledger.Conway.Specification.Ledger.LState
d_LState_2802 a0 a1 = ()
data T_LState_2802
  = C_'10214'_'44'_'44'_'10215''737'_2816 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386
-- Ledger.Conway.Specification.Ledger.LState.utxoSt
d_utxoSt_2810 ::
  T_LState_2802 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
d_utxoSt_2810 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2816 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.govSt
d_govSt_2812 ::
  T_LState_2802 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2812 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2816 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.certState
d_certState_2814 ::
  T_LState_2802 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386
d_certState_2814 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2816 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasLState
d_HasLState_2822 a0 a1 a2 a3 = ()
newtype T_HasLState_2822
  = C_constructor_2832 (AgdaAny -> T_LState_2802)
-- Ledger.Conway.Specification.Ledger.HasLState.LStateOf
d_LStateOf_2830 :: T_HasLState_2822 -> AgdaAny -> T_LState_2802
d_LStateOf_2830 v0
  = case coe v0 of
      C_constructor_2832 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger._.LStateOf
d_LStateOf_2836 :: T_HasLState_2822 -> AgdaAny -> T_LState_2802
d_LStateOf_2836 v0 = coe d_LStateOf_2830 (coe v0)
-- Ledger.Conway.Specification.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2404
d_HasUTxOState'45'LState_2838 ~v0 ~v1
  = du_HasUTxOState'45'LState_2838
du_HasUTxOState'45'LState_2838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2404
du_HasUTxOState'45'LState_2838
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2414
      (coe (\ v0 -> d_utxoSt_2810 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3238
d_HasUTxO'45'LState_2840 ~v0 ~v1 = du_HasUTxO'45'LState_2840
du_HasUTxO'45'LState_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3238
du_HasUTxO'45'LState_2840
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3248
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3246
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2422)
              (d_utxoSt_2810 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGovState-LState
d_HasGovState'45'LState_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2592
d_HasGovState'45'LState_2842 ~v0 ~v1
  = du_HasGovState'45'LState_2842
du_HasGovState'45'LState_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2592
du_HasGovState'45'LState_2842
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.C_constructor_2602
      (coe (\ v0 -> d_govSt_2812 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasCertState-LState
d_HasCertState'45'LState_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCertState_1482
d_HasCertState'45'LState_2844 ~v0 ~v1
  = du_HasCertState'45'LState_2844
du_HasCertState'45'LState_2844 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCertState_1482
du_HasCertState'45'LState_2844
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_constructor_1492
      (coe (\ v0 -> d_certState_2814 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDeposits_1130
d_HasDeposits'45'LState_2846 ~v0 ~v1
  = du_HasDeposits'45'LState_2846
du_HasDeposits'45'LState_2846 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDeposits_1130
du_HasDeposits'45'LState_2846
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_constructor_1140
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Certs.d_DepositsOf_1138
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2426)
              (d_utxoSt_2810 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasPools-LState
d_HasPools'45'LState_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1182
d_HasPools'45'LState_2848 ~v0 ~v1 = du_HasPools'45'LState_2848
du_HasPools'45'LState_2848 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1182
du_HasPools'45'LState_2848
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_constructor_1192
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Certs.d_PoolsOf_1190
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasPools'45'CertState_1528)
              (d_certState_2814 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGState-LState
d_HasGState'45'LState_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1462
d_HasGState'45'LState_2850 ~v0 ~v1 = du_HasGState'45'LState_2850
du_HasGState'45'LState_2850 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1462
du_HasGState'45'LState_2850
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_constructor_1472
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Certs.d_GStateOf_1470
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasGState'45'CertState_1520)
              (d_certState_2814 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasDState-LState
d_HasDState'45'LState_2852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1422
d_HasDState'45'LState_2852 ~v0 ~v1 = du_HasDState'45'LState_2852
du_HasDState'45'LState_2852 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1422
du_HasDState'45'LState_2852
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_constructor_1432
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Certs.d_DStateOf_1430
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasDState'45'CertState_1516)
              (d_certState_2814 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasPState-LState
d_HasPState'45'LState_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1442
d_HasPState'45'LState_2854 ~v0 ~v1 = du_HasPState'45'LState_2854
du_HasPState'45'LState_2854 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1442
du_HasPState'45'LState_2854
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_constructor_1452
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Certs.d_PStateOf_1450
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasPState'45'CertState_1518)
              (d_certState_2814 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasVoteDelegs-LState
d_HasVoteDelegs'45'LState_2856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_946
d_HasVoteDelegs'45'LState_2856 ~v0 ~v1
  = du_HasVoteDelegs'45'LState_2856
du_HasVoteDelegs'45'LState_2856 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_946
du_HasVoteDelegs'45'LState_2856
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_constructor_956
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteDelegsOf_954
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasVoteDelegs'45'DState_1502)
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.d_DStateOf_1430
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasDState'45'CertState_1516)
                 (d_certState_2814 (coe v0)))))
-- Ledger.Conway.Specification.Ledger.HasDonations-LState
d_HasDonations'45'LState_2858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'LState_2858 ~v0 ~v1
  = du_HasDonations'45'LState_2858
du_HasDonations'45'LState_2858 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'LState_2858
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2428)
              (d_utxoSt_2810 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasFees-LState
d_HasFees'45'LState_2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'LState_2860 ~v0 ~v1 = du_HasFees'45'LState_2860
du_HasFees'45'LState_2860 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'LState_2860
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_48
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasFee'45'UTxOState_2424)
              (d_utxoSt_2810 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasCCHotKeys-LState
d_HasCCHotKeys'45'LState_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1166
d_HasCCHotKeys'45'LState_2862 ~v0 ~v1
  = du_HasCCHotKeys'45'LState_2862
du_HasCCHotKeys'45'LState_2862 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1166
du_HasCCHotKeys'45'LState_2862
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_constructor_1176
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Certs.d_CCHotKeysOf_1174
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCCHotKeys'45'GState_1514)
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.d_GStateOf_1470
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasGState'45'CertState_1520)
                 (d_certState_2814 (coe v0)))))
-- Ledger.Conway.Specification.Ledger.HasDReps-LState
d_HasDReps'45'LState_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasDReps_1232
d_HasDReps'45'LState_2864 ~v0 ~v1 = du_HasDReps'45'LState_2864
du_HasDReps'45'LState_2864 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasDReps_1232
du_HasDReps'45'LState_2864
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_constructor_1242
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DRepsOf_1240
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasDReps'45'CertState_1524)
              (d_certState_2814 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2866 ~v0 ~v1 = du_HasCast'45'LEnv_2866
du_HasCast'45'LEnv_2866 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2866
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
                                 (2776 :: Integer) (11007941034284287304 :: Integer)
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
                                 (532 :: Integer) (11007941034284287304 :: Integer) "_.Slot"
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
                                    (2776 :: Integer) (11007941034284287304 :: Integer)
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
                                                (482 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2776 :: Integer) (11007941034284287304 :: Integer)
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
                                       (416 :: Integer) (11007941034284287304 :: Integer)
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
                                          (2776 :: Integer) (11007941034284287304 :: Integer)
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
                                          (2328 :: Integer) (11007941034284287304 :: Integer)
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
                                             (2776 :: Integer) (11007941034284287304 :: Integer)
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
         (coe C_constructor_2798))
-- Ledger.Conway.Specification.Ledger.HasCast-LState
d_HasCast'45'LState_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2868 ~v0 ~v1 = du_HasCast'45'LState_2868
du_HasCast'45'LState_2868 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2868
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
                                 (2802 :: Integer) (11007941034284287304 :: Integer)
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
                                 (2582 :: Integer) (11007941034284287304 :: Integer)
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
                                    (2802 :: Integer) (11007941034284287304 :: Integer)
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
                                    (2410 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2802 :: Integer) (11007941034284287304 :: Integer)
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
                                       (1924 :: Integer) (11007941034284287304 :: Integer)
                                       "Ledger.Conway.Specification.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2816))
-- Ledger.Conway.Specification.Ledger.txgov
d_txgov_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2870 ~v0 ~v1 v2 = du_txgov_2870 v2
du_txgov_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2870 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3316
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3314
            (coe v0)))
-- Ledger.Conway.Specification.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2916 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2916 v0 v2 v3
du_rmOrphanDRepVotes_2916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2916 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_124
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
         (coe du_go_2930 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Conway.Specification.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_ifDRepRegistered_2926 = erased
-- Ledger.Conway.Specification.Ledger._.go
d_go_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1004
d_go_2930 v0 ~v1 v2 ~v3 v4 = du_go_2930 v0 v2 v4
du_go_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1004
du_go_2930 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_constructor_1026
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_constructor_930
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvCC_924
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_votes_1016
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
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                       MAlonzo.Code.Ledger.Core.Specification.Certs.d_dreps_1380
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Certs.d_gState_1398
                          (coe v1)))))
            (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvDRep_926
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_votes_1016
                  (coe v2))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvSPO_928
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_votes_1016
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_returnAddr_1018
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_expiresIn_1020
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_1022
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_prevAction_1024
         (coe v2))
-- Ledger.Conway.Specification.Ledger.allColdCreds
d_allColdCreds_2934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2934 ~v0 ~v1 v2 v3 = du_allColdCreds_2934 v2 v3
du_allColdCreds_2934 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2934 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1162
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1122 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_536
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_proposedCC_1222
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_1022
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_456
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2976 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2976
  = C_LEDGER'45'V_3018 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_3020 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ledger._.txCerts
d_txCerts_2996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_22653 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
d_txCerts_2996 ~v0 ~v1 v2 = du_txCerts_2996 v2
du_txCerts_2996 ::
  T_GeneralizeTel_22653 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1282]
du_txCerts_2996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3302
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_22629 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txGovVotes
d_txGovVotes_3004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_22653 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896]
d_txGovVotes_3004 ~v0 ~v1 v2 = du_txGovVotes_3004 v2
du_txGovVotes_3004 ::
  T_GeneralizeTel_22653 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_896]
du_txGovVotes_3004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3314
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_22629 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txId
d_txId_3006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_22653 -> AgdaAny
d_txId_3006 ~v0 ~v1 v2 = du_txId_3006 v2
du_txId_3006 :: T_GeneralizeTel_22653 -> AgdaAny
du_txId_3006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3300
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_22629 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txWithdrawals
d_txWithdrawals_3016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_22653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3016 ~v0 ~v1 v2 = du_txWithdrawals_3016 v2
du_txWithdrawals_3016 ::
  T_GeneralizeTel_22653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_3016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3306
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_22629 (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_LEnv_2776 ->
  T_LState_2802 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434] ->
  T_LState_2802 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3038 = erased
-- Ledger.Conway.Specification.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_22629 ::
  T_GeneralizeTel_22653 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434
d_'46'generalizedField'45'tx_22629 v0
  = case coe v0 of
      C_mkGeneralizeTel_22655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_22631 ::
  T_GeneralizeTel_22653 -> AgdaAny
d_'46'generalizedField'45'slot_22631 v0
  = case coe v0 of
      C_mkGeneralizeTel_22655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_22633 ::
  T_GeneralizeTel_22653 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_'46'generalizedField'45'pp_22633 v0
  = case coe v0 of
      C_mkGeneralizeTel_22655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_22635 ::
  T_GeneralizeTel_22653 -> Integer
d_'46'generalizedField'45'treasury_22635 v0
  = case coe v0 of
      C_mkGeneralizeTel_22655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_22637 ::
  T_GeneralizeTel_22653 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
d_'46'generalizedField'45'utxoSt_22637 v0
  = case coe v0 of
      C_mkGeneralizeTel_22655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_22639 ::
  T_GeneralizeTel_22653 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
d_'46'generalizedField'45'utxoSt''_22639 v0
  = case coe v0 of
      C_mkGeneralizeTel_22655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_22641 ::
  T_GeneralizeTel_22653 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_22641 v0
  = case coe v0 of
      C_mkGeneralizeTel_22655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_22643 ::
  T_GeneralizeTel_22653 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110
d_'46'generalizedField'45'enactState_22643 v0
  = case coe v0 of
      C_mkGeneralizeTel_22655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_22645 ::
  T_GeneralizeTel_22653 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386
d_'46'generalizedField'45'certState_22645 v0
  = case coe v0 of
      C_mkGeneralizeTel_22655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_22647 ::
  T_GeneralizeTel_22653 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386
d_'46'generalizedField'45'certState''_22647 v0
  = case coe v0 of
      C_mkGeneralizeTel_22655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_22649 ::
  T_GeneralizeTel_22653 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_22649 v0
  = case coe v0 of
      C_mkGeneralizeTel_22655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_22651 ::
  T_GeneralizeTel_22653 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_22651 v0
  = case coe v0 of
      C_mkGeneralizeTel_22655 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.GeneralizeTel
d_GeneralizeTel_22653 a0 a1 = ()
data T_GeneralizeTel_22653
  = C_mkGeneralizeTel_22655 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434
                            AgdaAny
                            MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
                            Integer
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110
                            MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386
                            MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1386
                            (Maybe AgdaAny) [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
