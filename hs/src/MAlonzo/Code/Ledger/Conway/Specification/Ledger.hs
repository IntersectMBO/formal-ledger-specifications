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
d_Credential_58 a0 = ()
-- _.DRepsOf
d_DRepsOf_68 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1234 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_68 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1242
      (coe v0)
-- _.DecEq-Credential
d_DecEq'45'Credential_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_100 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1322
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1322
            (coe v0)))
-- _.GovActionState
d_GovActionState_184 a0 = ()
-- _.GovProposal
d_GovProposal_196 a0 = ()
-- _.GovVote
d_GovVote_206 a0 = ()
-- _.HasDReps
d_HasDReps_250 a0 a1 a2 = ()
-- _.HasPParams
d_HasPParams_300 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_326 a0 a1 a2 = ()
-- _.HasVoteDelegs
d_HasVoteDelegs_336 a0 a1 a2 = ()
-- _.PParams
d_PParams_418 a0 = ()
-- _.PParamsOf
d_PParamsOf_426 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_PParamsOf_426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_432
      (coe v0)
-- _.ScriptHash
d_ScriptHash_484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_484 = erased
-- _.Slot
d_Slot_534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_534 = erased
-- _.Tx
d_Tx_562 a0 = ()
-- _.TxBody
d_TxBody_566 a0 = ()
-- _.UTxOOf
d_UTxOOf_588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3248 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3256
      (coe v0)
-- _.VoteDelegsOf
d_VoteDelegsOf_612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_956
      (coe v0)
-- _.epoch
d_epoch_646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_646 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1656
         (coe v0))
-- _.GovActionState.action
d_action_882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830
d_action_882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1024
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny
d_expiresIn_884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1022
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny
d_prevAction_886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1026
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1020
      (coe v0)
-- _.GovActionState.votes
d_votes_890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_918
d_votes_890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1018
      (coe v0)
-- _.GovActions.GovActionState
d_GovActionState_946 a0 = ()
-- _.GovActions.GovProposal
d_GovProposal_954 a0 = ()
-- _.GovActions.GovVote
d_GovVote_962 a0 = ()
-- _.GovActions.HasDReps
d_HasDReps_984 a0 a1 a2 = ()
-- _.GovActions.HasVoteDelegs
d_HasVoteDelegs_1024 a0 a1 a2 = ()
-- _.GovActions.GovProposal.action
d_action_1092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830
d_action_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_992
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_886
d_anchor_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1002
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  Integer
d_deposit_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_998
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  Maybe AgdaAny
d_policy_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_996
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  AgdaAny
d_prevAction_1100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_994
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1000
      (coe v0)
-- _.GovActions.GovVote.anchor
d_anchor_1114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_886
d_anchor_1114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_914
      (coe v0)
-- _.GovActions.GovVote.gid
d_gid_1116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_908
      (coe v0)
-- _.GovActions.GovVote.vote
d_vote_1118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_866
d_vote_1118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_912
      (coe v0)
-- _.GovActions.GovVote.voter
d_voter_1120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_874
d_voter_1120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_910
      (coe v0)
-- _.GovActions.HasDReps.DRepsOf
d_DRepsOf_1138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1234 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1242
      (coe v0)
-- _.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_956
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1218 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_PParamsOf_1218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_432
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3248 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3256
      (coe v0)
-- _.PParams.Emax
d_Emax_1322 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_Emax_1322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_392
      (coe v0)
-- _.PParams.a
d_a_1324 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_a_1324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_364 (coe v0)
-- _.PParams.a0
d_a0_1326 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_396 (coe v0)
-- _.PParams.b
d_b_1328 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_b_1328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_366 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1330 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMaxTermLength_1330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_408
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1332 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMinSize_1332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1334 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_coinsPerUTxOByte_1334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_376
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1336 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_collateralPercentage_1336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_398
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1338 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_costmdls_1338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_400
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1340 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_drepActivity_1340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_416
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1342 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_drepDeposit_1342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_414
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1344 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208
d_drepThresholds_1344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1346 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionDeposit_1346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_412
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1348 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionLifetime_1348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_410
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_keyDeposit_1350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_368
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1352 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_maxBlockExUnits_1352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_356
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1354 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxBlockSize_1354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_348
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1356 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxCollateralInputs_1356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_360
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxHeaderSize_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_352
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerBlock_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_384
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerTx_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_382
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_maxTxExUnits_1364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_354
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxTxSize_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_350
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1368 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxValSize_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_358
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_380
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_minUTxOValue_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_390
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1374 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_372
      (coe v0)
-- _.PParams.nopt
d_nopt_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_nopt_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_394
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_poolDeposit_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_370
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252
d_poolThresholds_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
      (coe v0)
-- _.PParams.prices
d_prices_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_prices_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_378
      (coe v0)
-- _.PParams.pv
d_pv_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_362 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_388
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_386
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_374
      (coe v0)
-- _.Tx.body
d_body_1812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264
d_body_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
      (coe v0)
-- _.Tx.isValid
d_isValid_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  Bool
d_isValid_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3462
      (coe v0)
-- _.Tx.txAD
d_txAD_1816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  Maybe AgdaAny
d_txAD_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3464
      (coe v0)
-- _.Tx.txsize
d_txsize_1818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  Integer
d_txsize_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3460
      (coe v0)
-- _.Tx.wits
d_wits_1820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3422
d_wits_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3458
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_1824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3306
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  Maybe Integer
d_currentTreasury_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3330
      (coe v0)
-- _.TxBody.mint
d_mint_1828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  AgdaAny
d_mint_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3332
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3304
      (coe v0)
-- _.TxBody.reqSignerHashes
d_reqSignerHashes_1832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [AgdaAny]
d_reqSignerHashes_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3334
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_1834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  Maybe AgdaAny
d_scriptIntegrityHash_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3336
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  Maybe AgdaAny
d_txADhash_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3320
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282]
d_txCerts_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3312
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_1840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  Integer
d_txDonation_1840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3322
      (coe v0)
-- _.TxBody.txFee
d_txFee_1842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  Integer
d_txFee_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3314
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_1844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_978]
d_txGovProposals_1844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3326
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_1846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898]
d_txGovVotes_1846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3324
      (coe v0)
-- _.TxBody.txId
d_txId_1848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  AgdaAny
d_txId_1848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3310
      (coe v0)
-- _.TxBody.txIns
d_txIns_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3302
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  Maybe AgdaAny
d_txNetworkId_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3328
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3308
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3318
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_1858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3316
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState
d_EnactState_1926 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.EnactState.cc
d_cc_1976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1122 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.constitution
d_constitution_1978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1124
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pparams
d_pparams_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1128
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pv
d_pv_1982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1126 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.withdrawals
d_withdrawals_1984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1130
      (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_GovEnv_2602 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1994 = erased
-- Ledger.Conway.Specification.Ledger._.GovState
d_GovState_2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  ()
d_GovState_2008 = erased
-- Ledger.Conway.Specification.Ledger._.GovStateOf
d_GovStateOf_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2586 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2594
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2012 ~v0 ~v1 = du_HasCast'45'GovEnv_2012
du_HasCast'45'GovEnv_2012 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2012
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.du_HasCast'45'GovEnv_2640
-- Ledger.Conway.Specification.Ledger._.HasGovState
d_HasGovState_2018 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGovState.GovStateOf
d_GovStateOf_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2586 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2594
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2142 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2142
du_HasCast'45'UTxOEnv_2142 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2142
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOEnv_2486
-- Ledger.Conway.Specification.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1130
d_HasDeposits'45'UTxOState_2150 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2150
du_HasDeposits'45'UTxOState_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1130
du_HasDeposits'45'UTxOState_2150
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2482
-- Ledger.Conway.Specification.Ledger._.HasDonations-UTxOState
d_HasDonations'45'UTxOState_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_2152 ~v0 ~v1
  = du_HasDonations'45'UTxOState_2152
du_HasDonations'45'UTxOState_2152 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_2152
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2484
-- Ledger.Conway.Specification.Ledger._.HasFee-UTxOState
d_HasFee'45'UTxOState_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFee'45'UTxOState_2154 ~v0 ~v1 = du_HasFee'45'UTxOState_2154
du_HasFee'45'UTxOState_2154 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFee'45'UTxOState_2154
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasFee'45'UTxOState_2480
-- Ledger.Conway.Specification.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3248
d_HasUTxO'45'UTxOState_2158 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2158
du_HasUTxO'45'UTxOState_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3248
du_HasUTxO'45'UTxOState_2158
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2478
-- Ledger.Conway.Specification.Ledger._.HasUTxOState
d_HasUTxOState_2160 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOState
d_UTxOState_2180 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOStateOf
d_UTxOStateOf_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2460 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436
d_UTxOStateOf_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2468
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2460 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436
d_UTxOStateOf_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2468
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.deposits
d_deposits_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2450
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.donations
d_donations_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436 ->
  Integer
d_donations_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2452
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.fees
d_fees_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436 ->
  Integer
d_fees_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2448 (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.utxo
d_utxo_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2446 (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2326 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2376 = erased
-- Ledger.Conway.Specification.Ledger._.CCHotKeysOf
d_CCHotKeysOf_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1166 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1174
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState
d_CertState_2408 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.CertStateOf
d_CertStateOf_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1482 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386
d_CertStateOf_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1490
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DStateOf
d_DStateOf_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342
d_DStateOf_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1430
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DepositsOf
d_DepositsOf_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1130 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1138
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.GStateOf
d_GStateOf_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1462 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374
d_GStateOf_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1470
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys
d_HasCCHotKeys_2458 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1166
d_HasCCHotKeys'45'GState_2464 ~v0 ~v1
  = du_HasCCHotKeys'45'GState_2464
du_HasCCHotKeys'45'GState_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1166
du_HasCCHotKeys'45'GState_2464
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1514
-- Ledger.Conway.Specification.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2466 ~v0 ~v1 = du_HasCast'45'CertEnv_2466
du_HasCast'45'CertEnv_2466 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2466
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1542
-- Ledger.Conway.Specification.Ledger._.HasCertState
d_HasCertState_2478 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDReps-CertState
d_HasDReps'45'CertState_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1234
d_HasDReps'45'CertState_2484 ~v0 ~v1
  = du_HasDReps'45'CertState_2484
du_HasDReps'45'CertState_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1234
du_HasDReps'45'CertState_2484
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1524
-- Ledger.Conway.Specification.Ledger._.HasDState
d_HasDState_2488 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDState-CertState
d_HasDState'45'CertState_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1422
d_HasDState'45'CertState_2492 ~v0 ~v1
  = du_HasDState'45'CertState_2492
du_HasDState'45'CertState_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1422
du_HasDState'45'CertState_2492
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1516
-- Ledger.Conway.Specification.Ledger._.HasDeposits
d_HasDeposits_2494 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGState
d_HasGState_2498 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGState-CertState
d_HasGState'45'CertState_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1462
d_HasGState'45'CertState_2502 ~v0 ~v1
  = du_HasGState'45'CertState_2502
du_HasGState'45'CertState_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1462
du_HasGState'45'CertState_2502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1520
-- Ledger.Conway.Specification.Ledger._.HasPState
d_HasPState_2506 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasPState-CertState
d_HasPState'45'CertState_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1442
d_HasPState'45'CertState_2510 ~v0 ~v1
  = du_HasPState'45'CertState_2510
du_HasPState'45'CertState_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1442
du_HasPState'45'CertState_2510
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1518
-- Ledger.Conway.Specification.Ledger._.HasPools
d_HasPools_2512 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasPools-CertState
d_HasPools'45'CertState_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182
d_HasPools'45'CertState_2516 ~v0 ~v1
  = du_HasPools'45'CertState_2516
du_HasPools'45'CertState_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182
du_HasPools'45'CertState_2516
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1528
-- Ledger.Conway.Specification.Ledger._.HasRewards-CertState
d_HasRewards'45'CertState_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1214
d_HasRewards'45'CertState_2530 ~v0 ~v1
  = du_HasRewards'45'CertState_2530
du_HasRewards'45'CertState_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1214
du_HasRewards'45'CertState_2530
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1522
-- Ledger.Conway.Specification.Ledger._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_948
d_HasVoteDelegs'45'DState_2548 ~v0 ~v1
  = du_HasVoteDelegs'45'DState_2548
du_HasVoteDelegs'45'DState_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_948
du_HasVoteDelegs'45'DState_2548
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1502
-- Ledger.Conway.Specification.Ledger._.PStateOf
d_PStateOf_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1442 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1358
d_PStateOf_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1450
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.PoolsOf
d_PoolsOf_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1190
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.dState
d_dState_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342
d_dState_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1394
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.gState
d_gState_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374
d_gState_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1398
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.pState
d_pState_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1358
d_pState_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1396
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1166 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1174
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1482 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386
d_CertStateOf_2732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1490
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDState.DStateOf
d_DStateOf_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342
d_DStateOf_2736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1430
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1130 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1138
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasGState.GStateOf
d_GStateOf_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1462 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374
d_GStateOf_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1470
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasPState.PStateOf
d_PStateOf_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1442 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1358
d_PStateOf_2748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1450
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasPools.PoolsOf
d_PoolsOf_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1190
      (coe v0)
-- Ledger.Conway.Specification.Ledger.LEnv
d_LEnv_2790 a0 a1 = ()
data T_LEnv_2790
  = C_constructor_2812 AgdaAny (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110
                       Integer
-- Ledger.Conway.Specification.Ledger.LEnv.slot
d_slot_2802 :: T_LEnv_2790 -> AgdaAny
d_slot_2802 v0
  = case coe v0 of
      C_constructor_2812 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.ppolicy
d_ppolicy_2804 :: T_LEnv_2790 -> Maybe AgdaAny
d_ppolicy_2804 v0
  = case coe v0 of
      C_constructor_2812 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.pparams
d_pparams_2806 ::
  T_LEnv_2790 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2806 v0
  = case coe v0 of
      C_constructor_2812 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.enactState
d_enactState_2808 ::
  T_LEnv_2790 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110
d_enactState_2808 v0
  = case coe v0 of
      C_constructor_2812 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.treasury
d_treasury_2810 :: T_LEnv_2790 -> Integer
d_treasury_2810 v0
  = case coe v0 of
      C_constructor_2812 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424
d_HasPParams'45'LEnv_2814 ~v0 ~v1 = du_HasPParams'45'LEnv_2814
du_HasPParams'45'LEnv_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424
du_HasPParams'45'LEnv_2814
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_434
      (coe (\ v0 -> d_pparams_2806 (coe v0)))
-- Ledger.Conway.Specification.Ledger.LState
d_LState_2816 a0 a1 = ()
data T_LState_2816
  = C_'10214'_'44'_'44'_'10215''737'_2830 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386
-- Ledger.Conway.Specification.Ledger.LState.utxoSt
d_utxoSt_2824 ::
  T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436
d_utxoSt_2824 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2830 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.govSt
d_govSt_2826 ::
  T_LState_2816 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2826 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2830 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.certState
d_certState_2828 ::
  T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386
d_certState_2828 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2830 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasLState
d_HasLState_2836 a0 a1 a2 a3 = ()
newtype T_HasLState_2836
  = C_constructor_2846 (AgdaAny -> T_LState_2816)
-- Ledger.Conway.Specification.Ledger.HasLState.LStateOf
d_LStateOf_2844 :: T_HasLState_2836 -> AgdaAny -> T_LState_2816
d_LStateOf_2844 v0
  = case coe v0 of
      C_constructor_2846 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger._.LStateOf
d_LStateOf_2850 :: T_HasLState_2836 -> AgdaAny -> T_LState_2816
d_LStateOf_2850 v0 = coe d_LStateOf_2844 (coe v0)
-- Ledger.Conway.Specification.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2460
d_HasUTxOState'45'LState_2852 ~v0 ~v1
  = du_HasUTxOState'45'LState_2852
du_HasUTxOState'45'LState_2852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2460
du_HasUTxOState'45'LState_2852
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2470
      (coe (\ v0 -> d_utxoSt_2824 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3248
d_HasUTxO'45'LState_2854 ~v0 ~v1 = du_HasUTxO'45'LState_2854
du_HasUTxO'45'LState_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3248
du_HasUTxO'45'LState_2854
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3258
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3256
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2478)
              (d_utxoSt_2824 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGovState-LState
d_HasGovState'45'LState_2856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2586
d_HasGovState'45'LState_2856 ~v0 ~v1
  = du_HasGovState'45'LState_2856
du_HasGovState'45'LState_2856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2586
du_HasGovState'45'LState_2856
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.C_constructor_2596
      (coe (\ v0 -> d_govSt_2826 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasCertState-LState
d_HasCertState'45'LState_2858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1482
d_HasCertState'45'LState_2858 ~v0 ~v1
  = du_HasCertState'45'LState_2858
du_HasCertState'45'LState_2858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1482
du_HasCertState'45'LState_2858
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1492
      (coe (\ v0 -> d_certState_2828 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1130
d_HasDeposits'45'LState_2860 ~v0 ~v1
  = du_HasDeposits'45'LState_2860
du_HasDeposits'45'LState_2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1130
du_HasDeposits'45'LState_2860
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1140
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1138
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2482)
              (d_utxoSt_2824 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasPools-LState
d_HasPools'45'LState_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182
d_HasPools'45'LState_2862 ~v0 ~v1 = du_HasPools'45'LState_2862
du_HasPools'45'LState_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182
du_HasPools'45'LState_2862
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1192
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1190
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1528)
              (d_certState_2828 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGState-LState
d_HasGState'45'LState_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1462
d_HasGState'45'LState_2864 ~v0 ~v1 = du_HasGState'45'LState_2864
du_HasGState'45'LState_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1462
du_HasGState'45'LState_2864
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1472
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1470
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1520)
              (d_certState_2828 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasDState-LState
d_HasDState'45'LState_2866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1422
d_HasDState'45'LState_2866 ~v0 ~v1 = du_HasDState'45'LState_2866
du_HasDState'45'LState_2866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1422
du_HasDState'45'LState_2866
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1432
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1430
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1516)
              (d_certState_2828 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasPState-LState
d_HasPState'45'LState_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1442
d_HasPState'45'LState_2868 ~v0 ~v1 = du_HasPState'45'LState_2868
du_HasPState'45'LState_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1442
du_HasPState'45'LState_2868
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1452
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1450
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1518)
              (d_certState_2828 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasVoteDelegs-LState
d_HasVoteDelegs'45'LState_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_948
d_HasVoteDelegs'45'LState_2870 ~v0 ~v1
  = du_HasVoteDelegs'45'LState_2870
du_HasVoteDelegs'45'LState_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_948
du_HasVoteDelegs'45'LState_2870
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_958
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_956
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1502)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1430
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1516)
                 (d_certState_2828 (coe v0)))))
-- Ledger.Conway.Specification.Ledger.HasDonations-LState
d_HasDonations'45'LState_2872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'LState_2872 ~v0 ~v1
  = du_HasDonations'45'LState_2872
du_HasDonations'45'LState_2872 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'LState_2872
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2484)
              (d_utxoSt_2824 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasFees-LState
d_HasFees'45'LState_2874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'LState_2874 ~v0 ~v1 = du_HasFees'45'LState_2874
du_HasFees'45'LState_2874 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'LState_2874
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_48
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasFee'45'UTxOState_2480)
              (d_utxoSt_2824 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasCCHotKeys-LState
d_HasCCHotKeys'45'LState_2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1166
d_HasCCHotKeys'45'LState_2876 ~v0 ~v1
  = du_HasCCHotKeys'45'LState_2876
du_HasCCHotKeys'45'LState_2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1166
du_HasCCHotKeys'45'LState_2876
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1176
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1174
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1514)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1470
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1520)
                 (d_certState_2828 (coe v0)))))
-- Ledger.Conway.Specification.Ledger.HasDReps-LState
d_HasDReps'45'LState_2878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1234
d_HasDReps'45'LState_2878 ~v0 ~v1 = du_HasDReps'45'LState_2878
du_HasDReps'45'LState_2878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1234
du_HasDReps'45'LState_2878
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1244
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1242
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1524)
              (d_certState_2828 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2880 ~v0 ~v1 = du_HasCast'45'LEnv_2880
du_HasCast'45'LEnv_2880 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2880
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
                                 (2790 :: Integer) (11007941034284287304 :: Integer)
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
                                 (534 :: Integer) (11007941034284287304 :: Integer) "_.Slot"
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
                                    (2790 :: Integer) (11007941034284287304 :: Integer)
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
                                                (484 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2790 :: Integer) (11007941034284287304 :: Integer)
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
                                       (418 :: Integer) (11007941034284287304 :: Integer)
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
                                          (2790 :: Integer) (11007941034284287304 :: Integer)
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
                                          (1926 :: Integer) (11007941034284287304 :: Integer)
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
                                             (2790 :: Integer) (11007941034284287304 :: Integer)
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
         (coe C_constructor_2812))
-- Ledger.Conway.Specification.Ledger.HasCast-LState
d_HasCast'45'LState_2882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2882 ~v0 ~v1 = du_HasCast'45'LState_2882
du_HasCast'45'LState_2882 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2882
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
                                 (2816 :: Integer) (11007941034284287304 :: Integer)
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
                                 (2180 :: Integer) (11007941034284287304 :: Integer)
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
                                    (2816 :: Integer) (11007941034284287304 :: Integer)
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
                                    (2008 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2816 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2408 :: Integer) (11007941034284287304 :: Integer)
                                       "Ledger.Conway.Specification.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2830))
-- Ledger.Conway.Specification.Ledger.txgov
d_txgov_2884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2884 ~v0 ~v1 v2 = du_txgov_2884 v2
du_txgov_2884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3264 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2884 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3326
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3324
            (coe v0)))
-- Ledger.Conway.Specification.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2930 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2930 v0 v2 v3
du_rmOrphanDRepVotes_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2930 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_124
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
         (coe du_go_2944 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Conway.Specification.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_ifDRepRegistered_2940 = erased
-- Ledger.Conway.Specification.Ledger._.go
d_go_2944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006
d_go_2944 v0 ~v1 v2 ~v3 v4 = du_go_2944 v0 v2 v4
du_go_2944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006
du_go_2944 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1028
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_932
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_926
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1018
               (coe v2)))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1400
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
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1322
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1322
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
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1380
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1398
                          (coe v1)))))
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_928
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1018
                  (coe v2))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_930
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1018
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1020
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1022
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1024
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1026
         (coe v2))
-- Ledger.Conway.Specification.Ledger.allColdCreds
d_allColdCreds_2948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2948 ~v0 ~v1 v2 v3 = du_allColdCreds_2948 v2 v3
du_allColdCreds_2948 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2948 v0 v1
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
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1224
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1024
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_456
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2990 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2990
  = C_LEDGER'45'V_3032 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_3034 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ledger._.txCerts
d_txCerts_3010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_22691 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282]
d_txCerts_3010 ~v0 ~v1 v2 = du_txCerts_3010 v2
du_txCerts_3010 ::
  T_GeneralizeTel_22691 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282]
du_txCerts_3010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3312
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
         (coe d_'46'generalizedField'45'tx_22667 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txGovVotes
d_txGovVotes_3018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_22691 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898]
d_txGovVotes_3018 ~v0 ~v1 v2 = du_txGovVotes_3018 v2
du_txGovVotes_3018 ::
  T_GeneralizeTel_22691 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898]
du_txGovVotes_3018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
         (coe d_'46'generalizedField'45'tx_22667 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txId
d_txId_3020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_22691 -> AgdaAny
d_txId_3020 ~v0 ~v1 v2 = du_txId_3020 v2
du_txId_3020 :: T_GeneralizeTel_22691 -> AgdaAny
du_txId_3020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3310
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
         (coe d_'46'generalizedField'45'tx_22667 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txWithdrawals
d_txWithdrawals_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_GeneralizeTel_22691 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3030 ~v0 ~v1 v2 = du_txWithdrawals_3030 v2
du_txWithdrawals_3030 ::
  T_GeneralizeTel_22691 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_3030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3316
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3456
         (coe d_'46'generalizedField'45'tx_22667 (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2334 ->
  T_LEnv_2790 ->
  T_LState_2816 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444] ->
  T_LState_2816 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3052 = erased
-- Ledger.Conway.Specification.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_22667 ::
  T_GeneralizeTel_22691 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444
d_'46'generalizedField'45'tx_22667 v0
  = case coe v0 of
      C_mkGeneralizeTel_22693 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_22669 ::
  T_GeneralizeTel_22691 -> AgdaAny
d_'46'generalizedField'45'slot_22669 v0
  = case coe v0 of
      C_mkGeneralizeTel_22693 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_22671 ::
  T_GeneralizeTel_22691 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_'46'generalizedField'45'pp_22671 v0
  = case coe v0 of
      C_mkGeneralizeTel_22693 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_22673 ::
  T_GeneralizeTel_22691 -> Integer
d_'46'generalizedField'45'treasury_22673 v0
  = case coe v0 of
      C_mkGeneralizeTel_22693 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_22675 ::
  T_GeneralizeTel_22691 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436
d_'46'generalizedField'45'utxoSt_22675 v0
  = case coe v0 of
      C_mkGeneralizeTel_22693 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_22677 ::
  T_GeneralizeTel_22691 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436
d_'46'generalizedField'45'utxoSt''_22677 v0
  = case coe v0 of
      C_mkGeneralizeTel_22693 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_22679 ::
  T_GeneralizeTel_22691 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_22679 v0
  = case coe v0 of
      C_mkGeneralizeTel_22693 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_22681 ::
  T_GeneralizeTel_22691 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110
d_'46'generalizedField'45'enactState_22681 v0
  = case coe v0 of
      C_mkGeneralizeTel_22693 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_22683 ::
  T_GeneralizeTel_22691 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386
d_'46'generalizedField'45'certState_22683 v0
  = case coe v0 of
      C_mkGeneralizeTel_22693 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_22685 ::
  T_GeneralizeTel_22691 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386
d_'46'generalizedField'45'certState''_22685 v0
  = case coe v0 of
      C_mkGeneralizeTel_22693 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_22687 ::
  T_GeneralizeTel_22691 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_22687 v0
  = case coe v0 of
      C_mkGeneralizeTel_22693 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_22689 ::
  T_GeneralizeTel_22691 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_22689 v0
  = case coe v0 of
      C_mkGeneralizeTel_22693 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.GeneralizeTel
d_GeneralizeTel_22691 a0 a1 = ()
data T_GeneralizeTel_22691
  = C_mkGeneralizeTel_22693 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3444
                            AgdaAny
                            MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
                            Integer
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2436
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386
                            (Maybe AgdaAny) [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
