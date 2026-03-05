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
d_Credential_68 a0 = ()
-- _.DRepsOf
d_DRepsOf_78 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_78 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1472
      (coe v0)
-- _.DecEq-Credential
d_DecEq'45'Credential_114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_114 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
            (coe v0)))
-- _.GovActionState
d_GovActionState_200 a0 = ()
-- _.GovProposal
d_GovProposal_212 a0 = ()
-- _.GovVote
d_GovVote_222 a0 = ()
-- _.HasDReps
d_HasDReps_272 a0 a1 a2 = ()
-- _.HasPParams
d_HasPParams_326 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_356 a0 a1 a2 = ()
-- _.HasVoteDelegs
d_HasVoteDelegs_366 a0 a1 a2 = ()
-- _.PParams
d_PParams_456 a0 = ()
-- _.PParamsOf
d_PParamsOf_464 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_PParamsOf_464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_452
      (coe v0)
-- _.ScriptHash
d_ScriptHash_524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_524 = erased
-- _.Slot
d_Slot_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_578 = erased
-- _.Tx
d_Tx_606 a0 = ()
-- _.TxBody
d_TxBody_610 a0 = ()
-- _.UTxOOf
d_UTxOOf_632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3406 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3414
      (coe v0)
-- _.VoteDelegsOf
d_VoteDelegsOf_656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1076 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1084
      (coe v0)
-- _.epoch
d_epoch_694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_694 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
         (coe v0))
-- _.GovActionState.action
d_action_944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892
d_action_944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1152
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  AgdaAny
d_expiresIn_946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1150
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  AgdaAny
d_prevAction_948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1154
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1148
      (coe v0)
-- _.GovActionState.votes
d_votes_952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1046
d_votes_952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1146
      (coe v0)
-- _.GovActions.GovActionState
d_GovActionState_1018 a0 = ()
-- _.GovActions.GovProposal
d_GovProposal_1026 a0 = ()
-- _.GovActions.GovVote
d_GovVote_1034 a0 = ()
-- _.GovActions.HasDReps
d_HasDReps_1056 a0 a1 a2 = ()
-- _.GovActions.HasVoteDelegs
d_HasVoteDelegs_1096 a0 a1 a2 = ()
-- _.GovActions.GovProposal.action
d_action_1168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892
d_action_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1120
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_1170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1014
d_anchor_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1130
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_1172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  Integer
d_deposit_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1126
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_1174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  Maybe AgdaAny
d_policy_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1124
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_1176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  AgdaAny
d_prevAction_1176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1122
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_1178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1128
      (coe v0)
-- _.GovActions.GovVote.anchor
d_anchor_1190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1014
d_anchor_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1042
      (coe v0)
-- _.GovActions.GovVote.gid
d_gid_1192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_1036
      (coe v0)
-- _.GovActions.GovVote.vote
d_vote_1194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_994
d_vote_1194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_1040
      (coe v0)
-- _.GovActions.GovVote.voter
d_voter_1196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1002
d_voter_1196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_1038
      (coe v0)
-- _.GovActions.HasDReps.DRepsOf
d_DRepsOf_1214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1472
      (coe v0)
-- _.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1076 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1084
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1302 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_PParamsOf_1302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_452
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3406 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3414
      (coe v0)
-- _.PParams.Emax
d_Emax_1410 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_Emax_1410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_410
      (coe v0)
-- _.PParams.a
d_a_1412 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_a_1412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_382 (coe v0)
-- _.PParams.a0
d_a0_1414 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_414 (coe v0)
-- _.PParams.b
d_b_1416 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_b_1416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_384 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1418 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_ccMaxTermLength_1418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_426
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1420 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_ccMinSize_1420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_424
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1422 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_coinsPerUTxOByte_1422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_394
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_collateralPercentage_1424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_416
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_1428 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_1428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_418
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1430 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_drepActivity_1430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_434
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1432 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_drepDeposit_1432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_432
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1434 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224
d_drepThresholds_1434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1436 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_govActionDeposit_1436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_430
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1438 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_govActionLifetime_1438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_428
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1440 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_keyDeposit_1440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_386
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1442 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_maxBlockExUnits_1442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_374
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1444 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxBlockSize_1444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_366
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1446 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxCollateralInputs_1446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_378
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1448 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxHeaderSize_1448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_370
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1450 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxRefScriptSizePerBlock_1450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_402
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1452 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxRefScriptSizePerTx_1452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_400
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1454 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_maxTxExUnits_1454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_372
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1456 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxTxSize_1456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_368
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1458 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxValSize_1458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_376
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1460 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_398
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1462 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_minUTxOValue_1462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_408
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1464 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_390
      (coe v0)
-- _.PParams.nopt
d_nopt_1466 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_nopt_1466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_412
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1468 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_poolDeposit_1468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_388
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1470 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268
d_poolThresholds_1470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_420
      (coe v0)
-- _.PParams.prices
d_prices_1472 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_prices_1472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_396
      (coe v0)
-- _.PParams.pv
d_pv_1474 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_380 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1476 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_406
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1478 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_404
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1480 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_392
      (coe v0)
-- _.Tx.body
d_body_1908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422
d_body_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
      (coe v0)
-- _.Tx.isValid
d_isValid_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Bool
d_isValid_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3620
      (coe v0)
-- _.Tx.txAD
d_txAD_1912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Maybe AgdaAny
d_txAD_1912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3622
      (coe v0)
-- _.Tx.txsize
d_txsize_1914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Integer
d_txsize_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3618
      (coe v0)
-- _.Tx.wits
d_wits_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3580
d_wits_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3616
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_1920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_1920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3464
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_1922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Maybe Integer
d_currentTreasury_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3488
      (coe v0)
-- _.TxBody.mint
d_mint_1924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  AgdaAny
d_mint_1924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3490
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3462
      (coe v0)
-- _.TxBody.reqSignerHashes
d_reqSignerHashes_1928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [AgdaAny]
d_reqSignerHashes_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3492
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_1930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Maybe AgdaAny
d_scriptIntegrityHash_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3494
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Maybe AgdaAny
d_txADhash_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3478
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_1934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358]
d_txCerts_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3470
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_1936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Integer
d_txDonation_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3480
      (coe v0)
-- _.TxBody.txFee
d_txFee_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Integer
d_txFee_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3472
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106]
d_txGovProposals_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3484
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026]
d_txGovVotes_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3482
      (coe v0)
-- _.TxBody.txId
d_txId_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  AgdaAny
d_txId_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3468
      (coe v0)
-- _.TxBody.txIns
d_txIns_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3460
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Maybe AgdaAny
d_txNetworkId_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3486
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3466
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3476
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3474
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState
d_EnactState_2036 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.EnactState.cc
d_cc_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1198 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.constitution
d_constitution_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1200
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pparams
d_pparams_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pv
d_pv_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1202 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.withdrawals
d_withdrawals_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1206
      (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_GovEnv_1880 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2104 = erased
-- Ledger.Conway.Specification.Ledger._.GovState
d_GovState_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  ()
d_GovState_2118 = erased
-- Ledger.Conway.Specification.Ledger._.GovStateOf
d_GovStateOf_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1864 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_1872
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2122 ~v0 ~v1 = du_HasCast'45'GovEnv_2122
du_HasCast'45'GovEnv_2122 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2122
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.du_HasCast'45'GovEnv_1918
-- Ledger.Conway.Specification.Ledger._.HasGovState
d_HasGovState_2128 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGovState.GovStateOf
d_GovStateOf_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1864 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_1872
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2252 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2252
du_HasCast'45'UTxOEnv_2252 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2252
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOEnv_2542
-- Ledger.Conway.Specification.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206
d_HasDeposits'45'UTxOState_2260 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2260
du_HasDeposits'45'UTxOState_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206
du_HasDeposits'45'UTxOState_2260
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2538
-- Ledger.Conway.Specification.Ledger._.HasDonations-UTxOState
d_HasDonations'45'UTxOState_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_2262 ~v0 ~v1
  = du_HasDonations'45'UTxOState_2262
du_HasDonations'45'UTxOState_2262 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_2262
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2540
-- Ledger.Conway.Specification.Ledger._.HasFee-UTxOState
d_HasFee'45'UTxOState_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFee'45'UTxOState_2264 ~v0 ~v1 = du_HasFee'45'UTxOState_2264
du_HasFee'45'UTxOState_2264 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFee'45'UTxOState_2264
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasFee'45'UTxOState_2536
-- Ledger.Conway.Specification.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3406
d_HasUTxO'45'UTxOState_2268 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2268
du_HasUTxO'45'UTxOState_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3406
du_HasUTxO'45'UTxOState_2268
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2534
-- Ledger.Conway.Specification.Ledger._.HasUTxOState
d_HasUTxOState_2270 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOState
d_UTxOState_2290 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOStateOf
d_UTxOStateOf_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2516 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_UTxOStateOf_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2524
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2516 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_UTxOStateOf_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2524
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.deposits
d_deposits_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2506
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.donations
d_donations_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  Integer
d_donations_2398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2508
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.fees
d_fees_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  Integer
d_fees_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2504 (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.utxo
d_utxo_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502 (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2436 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1398 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2488 = erased
-- Ledger.Conway.Specification.Ledger._.CCHotKeysOf
d_CCHotKeysOf_2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1242 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1250
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState
d_CertState_2520 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.CertStateOf
d_CertStateOf_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
d_CertStateOf_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1570
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DStateOf
d_DStateOf_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1502 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422
d_DStateOf_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1510
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DepositsOf
d_DepositsOf_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1214
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.GStateOf
d_GStateOf_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1454
d_GStateOf_2570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1550
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys
d_HasCCHotKeys_2574 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1242
d_HasCCHotKeys'45'GState_2580 ~v0 ~v1
  = du_HasCCHotKeys'45'GState_2580
du_HasCCHotKeys'45'GState_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1242
du_HasCCHotKeys'45'GState_2580
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1594
-- Ledger.Conway.Specification.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2582 ~v0 ~v1 = du_HasCast'45'CertEnv_2582
du_HasCast'45'CertEnv_2582 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2582
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1622
-- Ledger.Conway.Specification.Ledger._.HasCertState
d_HasCertState_2594 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDReps-CertState
d_HasDReps'45'CertState_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464
d_HasDReps'45'CertState_2600 ~v0 ~v1
  = du_HasDReps'45'CertState_2600
du_HasDReps'45'CertState_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464
du_HasDReps'45'CertState_2600
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1604
-- Ledger.Conway.Specification.Ledger._.HasDState
d_HasDState_2604 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDState-CertState
d_HasDState'45'CertState_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1502
d_HasDState'45'CertState_2608 ~v0 ~v1
  = du_HasDState'45'CertState_2608
du_HasDState'45'CertState_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1502
du_HasDState'45'CertState_2608
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1596
-- Ledger.Conway.Specification.Ledger._.HasDeposits
d_HasDeposits_2610 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGState
d_HasGState_2614 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGState-CertState
d_HasGState'45'CertState_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1542
d_HasGState'45'CertState_2618 ~v0 ~v1
  = du_HasGState'45'CertState_2618
du_HasGState'45'CertState_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1542
du_HasGState'45'CertState_2618
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1600
-- Ledger.Conway.Specification.Ledger._.HasPState
d_HasPState_2622 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasPState-CertState
d_HasPState'45'CertState_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1522
d_HasPState'45'CertState_2626 ~v0 ~v1
  = du_HasPState'45'CertState_2626
du_HasPState'45'CertState_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1522
du_HasPState'45'CertState_2626
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1598
-- Ledger.Conway.Specification.Ledger._.HasPools
d_HasPools_2628 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasPools-CertState
d_HasPools'45'CertState_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1258
d_HasPools'45'CertState_2632 ~v0 ~v1
  = du_HasPools'45'CertState_2632
du_HasPools'45'CertState_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1258
du_HasPools'45'CertState_2632
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1608
-- Ledger.Conway.Specification.Ledger._.HasRewards-CertState
d_HasRewards'45'CertState_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
d_HasRewards'45'CertState_2646 ~v0 ~v1
  = du_HasRewards'45'CertState_2646
du_HasRewards'45'CertState_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
du_HasRewards'45'CertState_2646
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1602
-- Ledger.Conway.Specification.Ledger._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1076
d_HasVoteDelegs'45'DState_2664 ~v0 ~v1
  = du_HasVoteDelegs'45'DState_2664
du_HasVoteDelegs'45'DState_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1076
du_HasVoteDelegs'45'DState_2664
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1582
-- Ledger.Conway.Specification.Ledger._.PStateOf
d_PStateOf_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1522 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438
d_PStateOf_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1530
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.PoolsOf
d_PoolsOf_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1258 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1266
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.dState
d_dState_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422
d_dState_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1474
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.gState
d_gState_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1454
d_gState_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1478
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.pState
d_pState_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438
d_pState_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1476
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1242 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1250
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
d_CertStateOf_2848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1570
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDState.DStateOf
d_DStateOf_2852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1502 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422
d_DStateOf_2852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1510
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1214
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasGState.GStateOf
d_GStateOf_2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1454
d_GStateOf_2860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1550
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasPState.PStateOf
d_PStateOf_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1522 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438
d_PStateOf_2864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1530
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasPools.PoolsOf
d_PoolsOf_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1258 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1266
      (coe v0)
-- Ledger.Conway.Specification.Ledger.LEnv
d_LEnv_2906 a0 a1 = ()
data T_LEnv_2906
  = C_constructor_2928 AgdaAny (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
                       Integer
-- Ledger.Conway.Specification.Ledger.LEnv.slot
d_slot_2918 :: T_LEnv_2906 -> AgdaAny
d_slot_2918 v0
  = case coe v0 of
      C_constructor_2928 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.ppolicy
d_ppolicy_2920 :: T_LEnv_2906 -> Maybe AgdaAny
d_ppolicy_2920 v0
  = case coe v0 of
      C_constructor_2928 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.pparams
d_pparams_2922 ::
  T_LEnv_2906 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_pparams_2922 v0
  = case coe v0 of
      C_constructor_2928 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.enactState
d_enactState_2924 ::
  T_LEnv_2906 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_enactState_2924 v0
  = case coe v0 of
      C_constructor_2928 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.treasury
d_treasury_2926 :: T_LEnv_2906 -> Integer
d_treasury_2926 v0
  = case coe v0 of
      C_constructor_2928 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444
d_HasPParams'45'LEnv_2930 ~v0 ~v1 = du_HasPParams'45'LEnv_2930
du_HasPParams'45'LEnv_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444
du_HasPParams'45'LEnv_2930
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_454
      (coe (\ v0 -> d_pparams_2922 (coe v0)))
-- Ledger.Conway.Specification.Ledger.LState
d_LState_2932 a0 a1 = ()
data T_LState_2932
  = C_'10214'_'44'_'44'_'10215''737'_2946 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
-- Ledger.Conway.Specification.Ledger.LState.utxoSt
d_utxoSt_2940 ::
  T_LState_2932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_utxoSt_2940 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2946 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.govSt
d_govSt_2942 ::
  T_LState_2932 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2942 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2946 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.certState
d_certState_2944 ::
  T_LState_2932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
d_certState_2944 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2946 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasLState
d_HasLState_2952 a0 a1 a2 a3 = ()
newtype T_HasLState_2952
  = C_constructor_2962 (AgdaAny -> T_LState_2932)
-- Ledger.Conway.Specification.Ledger.HasLState.LStateOf
d_LStateOf_2960 :: T_HasLState_2952 -> AgdaAny -> T_LState_2932
d_LStateOf_2960 v0
  = case coe v0 of
      C_constructor_2962 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger._.LStateOf
d_LStateOf_2966 :: T_HasLState_2952 -> AgdaAny -> T_LState_2932
d_LStateOf_2966 v0 = coe d_LStateOf_2960 (coe v0)
-- Ledger.Conway.Specification.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2516
d_HasUTxOState'45'LState_2968 ~v0 ~v1
  = du_HasUTxOState'45'LState_2968
du_HasUTxOState'45'LState_2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2516
du_HasUTxOState'45'LState_2968
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2526
      (coe (\ v0 -> d_utxoSt_2940 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3406
d_HasUTxO'45'LState_2970 ~v0 ~v1 = du_HasUTxO'45'LState_2970
du_HasUTxO'45'LState_2970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3406
du_HasUTxO'45'LState_2970
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3416
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3414
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2534)
              (d_utxoSt_2940 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGovState-LState
d_HasGovState'45'LState_2972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1864
d_HasGovState'45'LState_2972 ~v0 ~v1
  = du_HasGovState'45'LState_2972
du_HasGovState'45'LState_2972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1864
du_HasGovState'45'LState_2972
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.C_constructor_1874
      (coe (\ v0 -> d_govSt_2942 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasCertState-LState
d_HasCertState'45'LState_2974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562
d_HasCertState'45'LState_2974 ~v0 ~v1
  = du_HasCertState'45'LState_2974
du_HasCertState'45'LState_2974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562
du_HasCertState'45'LState_2974
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1572
      (coe (\ v0 -> d_certState_2944 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206
d_HasDeposits'45'LState_2976 ~v0 ~v1
  = du_HasDeposits'45'LState_2976
du_HasDeposits'45'LState_2976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206
du_HasDeposits'45'LState_2976
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1216
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1214
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2538)
              (d_utxoSt_2940 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasPools-LState
d_HasPools'45'LState_2978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1258
d_HasPools'45'LState_2978 ~v0 ~v1 = du_HasPools'45'LState_2978
du_HasPools'45'LState_2978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1258
du_HasPools'45'LState_2978
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1268
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1266
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1608)
              (d_certState_2944 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGState-LState
d_HasGState'45'LState_2980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1542
d_HasGState'45'LState_2980 ~v0 ~v1 = du_HasGState'45'LState_2980
du_HasGState'45'LState_2980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1542
du_HasGState'45'LState_2980
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1552
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1550
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1600)
              (d_certState_2944 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasDState-LState
d_HasDState'45'LState_2982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1502
d_HasDState'45'LState_2982 ~v0 ~v1 = du_HasDState'45'LState_2982
du_HasDState'45'LState_2982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1502
du_HasDState'45'LState_2982
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1512
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1510
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1596)
              (d_certState_2944 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasPState-LState
d_HasPState'45'LState_2984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1522
d_HasPState'45'LState_2984 ~v0 ~v1 = du_HasPState'45'LState_2984
du_HasPState'45'LState_2984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1522
du_HasPState'45'LState_2984
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1532
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1530
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1598)
              (d_certState_2944 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasVoteDelegs-LState
d_HasVoteDelegs'45'LState_2986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1076
d_HasVoteDelegs'45'LState_2986 ~v0 ~v1
  = du_HasVoteDelegs'45'LState_2986
du_HasVoteDelegs'45'LState_2986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1076
du_HasVoteDelegs'45'LState_2986
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1086
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1084
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1582)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1510
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1596)
                 (d_certState_2944 (coe v0)))))
-- Ledger.Conway.Specification.Ledger.HasDonations-LState
d_HasDonations'45'LState_2988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'LState_2988 ~v0 ~v1
  = du_HasDonations'45'LState_2988
du_HasDonations'45'LState_2988 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'LState_2988
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2540)
              (d_utxoSt_2940 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasFees-LState
d_HasFees'45'LState_2990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'LState_2990 ~v0 ~v1 = du_HasFees'45'LState_2990
du_HasFees'45'LState_2990 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'LState_2990
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_48
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasFee'45'UTxOState_2536)
              (d_utxoSt_2940 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasCCHotKeys-LState
d_HasCCHotKeys'45'LState_2992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1242
d_HasCCHotKeys'45'LState_2992 ~v0 ~v1
  = du_HasCCHotKeys'45'LState_2992
du_HasCCHotKeys'45'LState_2992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1242
du_HasCCHotKeys'45'LState_2992
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1252
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1250
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1594)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1550
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1600)
                 (d_certState_2944 (coe v0)))))
-- Ledger.Conway.Specification.Ledger.HasDReps-LState
d_HasDReps'45'LState_2994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464
d_HasDReps'45'LState_2994 ~v0 ~v1 = du_HasDReps'45'LState_2994
du_HasDReps'45'LState_2994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464
du_HasDReps'45'LState_2994
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1474
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1472
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1604)
              (d_certState_2944 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2996 ~v0 ~v1 = du_HasCast'45'LEnv_2996
du_HasCast'45'LEnv_2996 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2996
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
                                 (2906 :: Integer) (11007941034284287304 :: Integer)
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
                                 (578 :: Integer) (11007941034284287304 :: Integer) "_.Slot"
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
                                    (2906 :: Integer) (11007941034284287304 :: Integer)
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
                                                (524 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2906 :: Integer) (11007941034284287304 :: Integer)
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
                                       (456 :: Integer) (11007941034284287304 :: Integer)
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
                                          (2906 :: Integer) (11007941034284287304 :: Integer)
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
                                          (2036 :: Integer) (11007941034284287304 :: Integer)
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
                                             (2906 :: Integer) (11007941034284287304 :: Integer)
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
         (coe C_constructor_2928))
-- Ledger.Conway.Specification.Ledger.HasCast-LState
d_HasCast'45'LState_2998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2998 ~v0 ~v1 = du_HasCast'45'LState_2998
du_HasCast'45'LState_2998 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2998
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
                                 (2932 :: Integer) (11007941034284287304 :: Integer)
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
                                 (2290 :: Integer) (11007941034284287304 :: Integer)
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
                                    (2932 :: Integer) (11007941034284287304 :: Integer)
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
                                    (2118 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2932 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2520 :: Integer) (11007941034284287304 :: Integer)
                                       "Ledger.Conway.Specification.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2946))
-- Ledger.Conway.Specification.Ledger.txgov
d_txgov_3000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_3000 ~v0 ~v1 v2 = du_txgov_3000 v2
du_txgov_3000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_3000 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3484
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3482
            (coe v0)))
-- Ledger.Conway.Specification.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_3046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_3046 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_3046 v0 v2 v3
du_rmOrphanDRepVotes_3046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_3046 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_124
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
         (coe du_go_3060 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Conway.Specification.Ledger._.ifDRepRegistered
d_ifDRepRegistered_3056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_ifDRepRegistered_3056 = erased
-- Ledger.Conway.Specification.Ledger._.go
d_go_3060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134
d_go_3060 v0 ~v1 v2 ~v3 v4 = du_go_3060 v0 v2 v4
du_go_3060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134
du_go_3060 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1156
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1060
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_1054
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1146
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
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
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
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1460
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1478
                          (coe v1)))))
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_1056
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1146
                  (coe v2))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_1058
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1146
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1148
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1150
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1152
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1154
         (coe v2))
-- Ledger.Conway.Specification.Ledger.allColdCreds
d_allColdCreds_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_3064 ~v0 ~v1 v2 v3 = du_allColdCreds_3064 v2 v3
du_allColdCreds_3064 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_3064 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1238
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1198 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_536
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1454
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1152
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_456
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__3106 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__3106
  = C_LEDGER'45'V_3148 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_3150 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ledger._.txCerts
d_txCerts_3126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_23257 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358]
d_txCerts_3126 ~v0 ~v1 v2 = du_txCerts_3126 v2
du_txCerts_3126 ::
  T_GeneralizeTel_23257 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358]
du_txCerts_3126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3470
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_23233 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txGovVotes
d_txGovVotes_3134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_23257 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026]
d_txGovVotes_3134 ~v0 ~v1 v2 = du_txGovVotes_3134 v2
du_txGovVotes_3134 ::
  T_GeneralizeTel_23257 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026]
du_txGovVotes_3134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3482
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_23233 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txId
d_txId_3136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_23257 -> AgdaAny
d_txId_3136 ~v0 ~v1 v2 = du_txId_3136 v2
du_txId_3136 :: T_GeneralizeTel_23257 -> AgdaAny
du_txId_3136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3468
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_23233 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txWithdrawals
d_txWithdrawals_3146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_23257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3146 ~v0 ~v1 v2 = du_txWithdrawals_3146 v2
du_txWithdrawals_3146 ::
  T_GeneralizeTel_23257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_3146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3474
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_23233 (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_LEnv_2906 ->
  T_LState_2932 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602] ->
  T_LState_2932 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3168 = erased
-- Ledger.Conway.Specification.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_23233 ::
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602
d_'46'generalizedField'45'tx_23233 v0
  = case coe v0 of
      C_mkGeneralizeTel_23259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_23235 ::
  T_GeneralizeTel_23257 -> AgdaAny
d_'46'generalizedField'45'slot_23235 v0
  = case coe v0 of
      C_mkGeneralizeTel_23259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_23237 ::
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_'46'generalizedField'45'pp_23237 v0
  = case coe v0 of
      C_mkGeneralizeTel_23259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_23239 ::
  T_GeneralizeTel_23257 -> Integer
d_'46'generalizedField'45'treasury_23239 v0
  = case coe v0 of
      C_mkGeneralizeTel_23259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_23241 ::
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_'46'generalizedField'45'utxoSt_23241 v0
  = case coe v0 of
      C_mkGeneralizeTel_23259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_23243 ::
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_'46'generalizedField'45'utxoSt''_23243 v0
  = case coe v0 of
      C_mkGeneralizeTel_23259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_23245 ::
  T_GeneralizeTel_23257 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_23245 v0
  = case coe v0 of
      C_mkGeneralizeTel_23259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_23247 ::
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_'46'generalizedField'45'enactState_23247 v0
  = case coe v0 of
      C_mkGeneralizeTel_23259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_23249 ::
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
d_'46'generalizedField'45'certState_23249 v0
  = case coe v0 of
      C_mkGeneralizeTel_23259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_23251 ::
  T_GeneralizeTel_23257 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
d_'46'generalizedField'45'certState''_23251 v0
  = case coe v0 of
      C_mkGeneralizeTel_23259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_23253 ::
  T_GeneralizeTel_23257 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_23253 v0
  = case coe v0 of
      C_mkGeneralizeTel_23259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_23255 ::
  T_GeneralizeTel_23257 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_23255 v0
  = case coe v0 of
      C_mkGeneralizeTel_23259 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.GeneralizeTel
d_GeneralizeTel_23257 a0 a1 = ()
data T_GeneralizeTel_23257
  = C_mkGeneralizeTel_23259 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602
                            AgdaAny
                            MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
                            Integer
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
                            (Maybe AgdaAny) [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
