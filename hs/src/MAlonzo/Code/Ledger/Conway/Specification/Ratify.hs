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

module MAlonzo.Code.Ledger.Conway.Specification.Ratify where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.All
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- Ledger.Conway.Specification.Ratify._.Pools
d_Pools_202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Pools_202 = erased
-- Ledger.Conway.Specification.Ratify._.StakePoolParams
d_StakePoolParams_222 a0 = ()
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.cost
d_cost_416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1092 ->
  Integer
d_cost_416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1106 (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.margin
d_margin_418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1092 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1108
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.owners
d_owners_420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1092 ->
  [AgdaAny]
d_owners_420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1104
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.pledge
d_pledge_422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1092 ->
  Integer
d_pledge_422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1110
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.rewardAccount
d_rewardAccount_424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1092 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1112
      (coe v0)
-- Ledger.Conway.Specification.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__428 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Ratify._.EnactState
d_EnactState_448 a0 = ()
-- Ledger.Conway.Specification.Ratify._.EnactStateOf
d_EnactStateOf_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1140 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112
d_EnactStateOf_452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1148
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_454 ~v0 = du_HasCast'45'EnactEnv_454
du_HasCast'45'EnactEnv_454 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EnactEnv_454
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasCast'45'EnactEnv_1162
-- Ledger.Conway.Specification.Ratify._.HasEnactState
d_HasEnactState_456 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Ratify._.EnactState.cc
d_cc_498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1124 (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.constitution
d_constitution_500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1126
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.pparams
d_pparams_502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1130
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.pv
d_pv_504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1128 (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.withdrawals
d_withdrawals_506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1132
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.HasEnactState.EnactStateOf
d_EnactStateOf_510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1140 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112
d_EnactStateOf_510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1148
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.DRepsOf
d_DRepsOf_526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1236 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1244
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.GovAction
d_GovAction_538 a0 = ()
-- Ledger.Conway.Specification.Ratify._.GovActionID
d_GovActionID_544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovActionID_544 = erased
-- Ledger.Conway.Specification.Ratify._.GovActionState
d_GovActionState_548 a0 = ()
-- Ledger.Conway.Specification.Ratify._.GovActionType
d_GovActionType_552 a0 = ()
-- Ledger.Conway.Specification.Ratify._.GovRole
d_GovRole_560 a0 = ()
-- Ledger.Conway.Specification.Ratify._.HasDReps
d_HasDReps_586 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Ratify._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_844
d_HasGovAction'45'GovActionState_594 ~v0
  = du_HasGovAction'45'GovActionState_594
du_HasGovAction'45'GovActionState_594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_844
du_HasGovAction'45'GovActionState_594
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1098
-- Ledger.Conway.Specification.Ratify._.NeedsHash
d_NeedsHash_634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_796 ->
  ()
d_NeedsHash_634 = erased
-- Ledger.Conway.Specification.Ratify._.VDeleg
d_VDeleg_656 a0 = ()
-- Ledger.Conway.Specification.Ratify._.Vote
d_Vote_658 a0 = ()
-- Ledger.Conway.Specification.Ratify._.VoteDelegs
d_VoteDelegs_660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_660 = erased
-- Ledger.Conway.Specification.Ratify._.GovAction.gaData
d_gaData_700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  AgdaAny
d_gaData_700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_838
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.GovAction.gaType
d_gaType_702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_796
d_gaType_702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_836
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.GovActionState.action
d_action_706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830
d_action_706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1024
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.GovActionState.expiresIn
d_expiresIn_708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny
d_expiresIn_708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1022
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.GovActionState.prevAction
d_prevAction_710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny
d_prevAction_710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1026
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.GovActionState.returnAddr
d_returnAddr_712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1020
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.GovActionState.votes
d_votes_714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_918
d_votes_714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1018
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.HasDReps.DRepsOf
d_DRepsOf_780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1236 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1244
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.Credential
d_Credential_852 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ratify._.DecEq-Credential
d_DecEq'45'Credential_882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_882 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_882 v2 v3
du_DecEq'45'Credential_882 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_882 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Ratify._.Epoch
d_Epoch_934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_934 = erased
-- Ledger.Conway.Specification.Ratify._.THash
d_THash_988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_THash_988 = erased
-- Ledger.Conway.Specification.Ratify._.PParamGroup
d_PParamGroup_1018 a0 = ()
-- Ledger.Conway.Specification.Ratify._.PParams
d_PParams_1020 a0 = ()
-- Ledger.Conway.Specification.Ratify._.UpdateT
d_UpdateT_1030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_UpdateT_1030 = erased
-- Ledger.Conway.Specification.Ratify._.PParams.Emax
d_Emax_1374 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_Emax_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_392
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.a
d_a_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_a_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_364 (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.a0
d_a0_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_396 (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.b
d_b_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_b_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_366 (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.ccMaxTermLength
d_ccMaxTermLength_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMaxTermLength_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_408
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.ccMinSize
d_ccMinSize_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMinSize_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_coinsPerUTxOByte_1386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_376
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.collateralPercentage
d_collateralPercentage_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_collateralPercentage_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_398
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.costmdls
d_costmdls_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_costmdls_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_400
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.drepActivity
d_drepActivity_1392 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_drepActivity_1392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_416
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.drepDeposit
d_drepDeposit_1394 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_drepDeposit_1394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_414
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.drepThresholds
d_drepThresholds_1396 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208
d_drepThresholds_1396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.govActionDeposit
d_govActionDeposit_1398 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionDeposit_1398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_412
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.govActionLifetime
d_govActionLifetime_1400 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionLifetime_1400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_410
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.keyDeposit
d_keyDeposit_1402 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_keyDeposit_1402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_368
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxBlockExUnits
d_maxBlockExUnits_1404 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_maxBlockExUnits_1404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_356
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxBlockSize
d_maxBlockSize_1406 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxBlockSize_1406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_348
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxCollateralInputs
d_maxCollateralInputs_1408 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxCollateralInputs_1408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_360
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxHeaderSize
d_maxHeaderSize_1410 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxHeaderSize_1410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_352
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1412 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerBlock_1412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_384
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1414 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerTx_1414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_382
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxTxExUnits
d_maxTxExUnits_1416 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_maxTxExUnits_1416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_354
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxTxSize
d_maxTxSize_1418 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxTxSize_1418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_350
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxValSize
d_maxValSize_1420 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxValSize_1420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_358
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1422 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_380
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.minUTxOValue
d_minUTxOValue_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_minUTxOValue_1424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_390
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.monetaryExpansion
d_monetaryExpansion_1426 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_372
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.nopt
d_nopt_1428 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_nopt_1428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_394
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.poolDeposit
d_poolDeposit_1430 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_poolDeposit_1430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_370
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.poolThresholds
d_poolThresholds_1432 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252
d_poolThresholds_1432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.prices
d_prices_1434 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_prices_1434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_378
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.pv
d_pv_1436 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_362 (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1438 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_388
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.refScriptCostStride
d_refScriptCostStride_1440 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_386
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.treasuryCut
d_treasuryCut_1442 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_374
      (coe v0)
-- Ledger.Conway.Specification.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_1596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_784 ->
  AgdaAny
d_'8739'_'8739'_'8739'_'8739'_1596 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_1596 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_1596 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_784 ->
  AgdaAny
du_'8739'_'8739'_'8739'_'8739'_1596 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_786
        -> coe v0
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_788
        -> coe v1
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_790
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_1608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_784 ->
  AgdaAny
d_'8739'_'8741'_'8739'_1608 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_1608 v2 v3
du_'8739'_'8741'_'8739'_1608 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_784 ->
  AgdaAny
du_'8739'_'8741'_'8739'_1608 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_786
                    -> coe v0
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_788
                    -> coe v2
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_790
                    -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.threshold
d_threshold_1618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_784 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_1618 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_860)
              v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_798
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1596 (coe du_'9472'_1758)
                       (coe
                          du_vote_1736
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_230
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                                (coe v1))))
                       (coe
                          du_vote_1736
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_264
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
                                (coe v1))))
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_800
                  -> coe
                       du_'8739'_'8741'_'8739'_1608 (coe du_'9472'_1758)
                       (coe du_P'47'Q2a'47'b_1764 (coe v1) (coe v2))
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_802
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1596 (coe du_'10003'_1760 (coe v2))
                       (coe
                          du_vote_1736
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_236
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                                (coe v1))))
                       (coe du_'9472'_1758)
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_804
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1596 (coe du_'10003'_1760 (coe v2))
                       (coe
                          du_vote_1736
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_238
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                                (coe v1))))
                       (coe
                          du_vote_1736
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_270
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
                                (coe v1))))
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_806
                  -> coe
                       du_'8739'_'8741'_'8739'_1608 (coe du_'10003'_1760 (coe v2))
                       (coe du_P'47'Q5_1770 (coe v0) (coe v1) (coe v6))
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_808
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1596 (coe du_'10003'_1760 (coe v2))
                       (coe
                          du_vote_1736
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_248
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                                (coe v1))))
                       (coe du_'9472'_1758)
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_810
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1596 (coe du_'10003''8224'_1762)
                       (coe du_'10003''8224'_1762) (coe du_'10003''8224'_1762)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Ratify._.vote
d_vote_1736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_1736 ~v0 ~v1 ~v2 ~v3 = du_vote_1736
du_vote_1736 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_1736 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Conway.Specification.Ratify._.defer
d_defer_1738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_1738 ~v0 ~v1 ~v2 ~v3 = du_defer_1738
du_defer_1738 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_1738
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Conway.Specification.Ratify._.maxThreshold
d_maxThreshold_1740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_1740 ~v0 ~v1 ~v2 ~v3 v4 = du_maxThreshold_1740 v4
du_maxThreshold_1740 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_1740 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230 (coe du__'8744'__1748)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1210
            v0))
-- Ledger.Conway.Specification.Ratify._._._∨_
d__'8744'__1748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'8744'__1748 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du__'8744'__1748 v5 v6
du__'8744'__1748 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'8744'__1748 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Data.Rational.Base.d__'8852'__322 (coe v2) (coe v3))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v0
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.─
d_'9472'_1758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_1758 ~v0 ~v1 ~v2 ~v3 = du_'9472'_1758
du_'9472'_1758 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_1758 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Conway.Specification.Ratify._.✓
d_'10003'_1760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_1760 ~v0 ~v1 v2 ~v3 = du_'10003'_1760 v2
du_'10003'_1760 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_1760 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
      (coe du_'10003''8224'_1762) (coe v0)
-- Ledger.Conway.Specification.Ratify._.✓†
d_'10003''8224'_1762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_1762 ~v0 ~v1 ~v2 ~v3 = du_'10003''8224'_1762
du_'10003''8224'_1762 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_1762 = coe du_vote_1736 (coe du_defer_1738)
-- Ledger.Conway.Specification.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_1764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_1764 ~v0 v1 v2 ~v3 = du_P'47'Q2a'47'b_1764 v1 v2
du_P'47'Q2a'47'b_1764 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_1764 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1736
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_232
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                      (coe v0))))
             (coe
                du_vote_1736
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_266
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
                      (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1736
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_234
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                      (coe v0))))
             (coe
                du_vote_1736
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_268
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
                      (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.pparamThreshold
d_pparamThreshold_1768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_1768 ~v0 v1 ~v2 ~v3 v4
  = du_pparamThreshold_1768 v1 v4
du_pparamThreshold_1768 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_1768 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_NetworkGroup_198
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1736
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_240
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                      (coe v0))))
             (coe du_'9472'_1758)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_EconomicGroup_200
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1736
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_242
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                      (coe v0))))
             (coe du_'9472'_1758)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_TechnicalGroup_202
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1736
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_244
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                      (coe v0))))
             (coe du_'9472'_1758)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_GovernanceGroup_204
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1736
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_246
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                      (coe v0))))
             (coe du_'9472'_1758)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_SecurityGroup_206
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_1758)
             (coe
                du_vote_1736
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_272
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
                      (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.P/Q5
d_P'47'Q5_1770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_1770 v0 v1 ~v2 ~v3 v4 = du_P'47'Q5_1770 v0 v1 v4
du_P'47'Q5_1770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_1770 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_1740
         (coe
            MAlonzo.Code.Axiom.Set.du_map_426
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_1768 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1484
               (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_govParams_1160
                     (coe v0)))
               v2)))
      (coe
         du_maxThreshold_1740
         (coe
            MAlonzo.Code.Axiom.Set.du_map_426
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_1768 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1484
               (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_govParams_1160
                     (coe v0)))
               v2)))
-- Ledger.Conway.Specification.Ratify.canVote
d_canVote_1778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_784 ->
  ()
d_canVote_1778 = erased
-- Ledger.Conway.Specification.Ratify.StakeDistrs
d_StakeDistrs_1786 a0 = ()
data T_StakeDistrs_1786
  = C_constructor_1796 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ratify.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_1792 ::
  T_StakeDistrs_1786 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_1792 v0
  = case coe v0 of
      C_constructor_1796 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.StakeDistrs.stakeDistrPools
d_stakeDistrPools_1794 ::
  T_StakeDistrs_1786 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_1794 v0
  = case coe v0 of
      C_constructor_1796 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv
d_RatifyEnv_1798 a0 = ()
data T_RatifyEnv_1798
  = C_constructor_1828 T_StakeDistrs_1786 AgdaAny
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_1814 :: T_RatifyEnv_1798 -> T_StakeDistrs_1786
d_stakeDistrs_1814 v0
  = case coe v0 of
      C_constructor_1828 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_1816 :: T_RatifyEnv_1798 -> AgdaAny
d_currentEpoch_1816 v0
  = case coe v0 of
      C_constructor_1828 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.dreps
d_dreps_1818 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1818 v0
  = case coe v0 of
      C_constructor_1828 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_1820 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1820 v0
  = case coe v0 of
      C_constructor_1828 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.treasury
d_treasury_1822 :: T_RatifyEnv_1798 -> Integer
d_treasury_1822 v0
  = case coe v0 of
      C_constructor_1828 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.pools
d_pools_1824 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1824 v0
  = case coe v0 of
      C_constructor_1828 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.delegatees
d_delegatees_1826 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_1826 v0
  = case coe v0 of
      C_constructor_1828 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyState
d_RatifyState_1830 a0 = ()
data T_RatifyState_1830
  = C_constructor_1844 MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Conway.Specification.Ratify.RatifyState.es
d_es_1838 ::
  T_RatifyState_1830 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112
d_es_1838 v0
  = case coe v0 of
      C_constructor_1844 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyState.removed
d_removed_1840 ::
  T_RatifyState_1830 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1840 v0
  = case coe v0 of
      C_constructor_1844 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyState.delay
d_delay_1842 :: T_RatifyState_1830 -> Bool
d_delay_1842 v0
  = case coe v0 of
      C_constructor_1844 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.HasRatifyState
d_HasRatifyState_1850 a0 a1 a2 = ()
newtype T_HasRatifyState_1850
  = C_constructor_1860 (AgdaAny -> T_RatifyState_1830)
-- Ledger.Conway.Specification.Ratify.HasRatifyState.RatifyStateOf
d_RatifyStateOf_1858 ::
  T_HasRatifyState_1850 -> AgdaAny -> T_RatifyState_1830
d_RatifyStateOf_1858 v0
  = case coe v0 of
      C_constructor_1860 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.RatifyStateOf
d_RatifyStateOf_1864 ::
  T_HasRatifyState_1850 -> AgdaAny -> T_RatifyState_1830
d_RatifyStateOf_1864 v0 = coe d_RatifyStateOf_1858 (coe v0)
-- Ledger.Conway.Specification.Ratify.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_1866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1140
d_HasEnactState'45'RatifyState_1866 ~v0
  = du_HasEnactState'45'RatifyState_1866
du_HasEnactState'45'RatifyState_1866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1140
du_HasEnactState'45'RatifyState_1866
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1150
      (coe (\ v0 -> d_es_1838 (coe v0)))
-- Ledger.Conway.Specification.Ratify.HasDReps-RatifyEnv
d_HasDReps'45'RatifyEnv_1868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1236
d_HasDReps'45'RatifyEnv_1868 ~v0 = du_HasDReps'45'RatifyEnv_1868
du_HasDReps'45'RatifyEnv_1868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1236
du_HasDReps'45'RatifyEnv_1868
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1246
      (coe (\ v0 -> d_dreps_1818 (coe v0)))
-- Ledger.Conway.Specification.Ratify.HasTreasury-RatifyEnv
d_HasTreasury'45'RatifyEnv_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'RatifyEnv_1870 ~v0
  = du_HasTreasury'45'RatifyEnv_1870
du_HasTreasury'45'RatifyEnv_1870 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'RatifyEnv_1870
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe (\ v0 -> d_treasury_1822 (coe v0)))
-- Ledger.Conway.Specification.Ratify.HasCast-StakeDistrs
d_HasCast'45'StakeDistrs_1872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakeDistrs_1872 ~v0 = du_HasCast'45'StakeDistrs_1872
du_HasCast'45'StakeDistrs_1872 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'StakeDistrs_1872
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
                                 (1786 :: Integer) (11046137501266703203 :: Integer)
                                 "Ledger.Conway.Specification.Ratify.StakeDistrs"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (182 :: Integer) (9254951203007797098 :: Integer)
                                 "abstract-set-theory.FiniteSetTheory._.Map"
                                 (MAlonzo.RTE.Fixity
                                    MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (1.0 :: Double)))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
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
                                          (656 :: Integer) (11046137501266703203 :: Integer)
                                          "Ledger.Conway.Specification.Ratify._.VDeleg"
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
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (6 :: Integer) (14798748958053396954 :: Integer)
                                             "Ledger.Prelude.Base.Coin"
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
                                    (1786 :: Integer) (11046137501266703203 :: Integer)
                                    "Ledger.Conway.Specification.Ratify.StakeDistrs"
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
                                    (182 :: Integer) (9254951203007797098 :: Integer)
                                    "abstract-set-theory.FiniteSetTheory._.Map"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.RightAssoc
                                       (MAlonzo.RTE.Related (1.0 :: Double)))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
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
                                             (988 :: Integer) (11046137501266703203 :: Integer)
                                             "Ledger.Conway.Specification.Ratify._.THash"
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
                                                (6 :: Integer) (14798748958053396954 :: Integer)
                                                "Ledger.Prelude.Base.Coin"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
         (coe C_constructor_1796))
-- Ledger.Conway.Specification.Ratify.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_1874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_1874 ~v0 = du_HasCast'45'RatifyEnv_1874
du_HasCast'45'RatifyEnv_1874 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyEnv_1874
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
                                 (1798 :: Integer) (11046137501266703203 :: Integer)
                                 "Ledger.Conway.Specification.Ratify.RatifyEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1786 :: Integer) (11046137501266703203 :: Integer)
                                 "Ledger.Conway.Specification.Ratify.StakeDistrs"
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
                                    (1798 :: Integer) (11046137501266703203 :: Integer)
                                    "Ledger.Conway.Specification.Ratify.RatifyEnv"
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
                                    (934 :: Integer) (11046137501266703203 :: Integer)
                                    "Ledger.Conway.Specification.Ratify._.Epoch"
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
                                       (1798 :: Integer) (11046137501266703203 :: Integer)
                                       "Ledger.Conway.Specification.Ratify.RatifyEnv"
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
                                       (182 :: Integer) (9254951203007797098 :: Integer)
                                       "abstract-set-theory.FiniteSetTheory._.Map"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.RightAssoc
                                          (MAlonzo.RTE.Related (1.0 :: Double)))))
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
                                                (852 :: Integer) (11046137501266703203 :: Integer)
                                                "Ledger.Conway.Specification.Ratify._.Credential"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                         (320 :: Integer)
                                                         (753823221557309123 :: Integer)
                                                         "Ledger.Core.Specification.Epoch.GlobalConstants.DecEq-Netw"
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
                                                                  (1178 :: Integer)
                                                                  (7805089389717466778 :: Integer)
                                                                  "Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants"
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
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                     (coe (1 :: Integer))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                            (26 :: Integer)
                                                            (14321319370142338143 :: Integer)
                                                            "Ledger.Core.Specification.Crypto.isHashableSet.DecEq-THash"
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
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
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
                                                                        (206 :: Integer)
                                                                        (14321319370142338143 ::
                                                                           Integer)
                                                                        "Ledger.Core.Specification.Crypto.CryptoStructure.khs"
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
                                                                                 (602 :: Integer)
                                                                                 (7805089389717466778 ::
                                                                                    Integer)
                                                                                 "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                    (coe
                                                                                       (1 ::
                                                                                          Integer))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                               (210 :: Integer)
                                                               (14321319370142338143 :: Integer)
                                                               "Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-ScriptHash"
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
                                                                        (602 :: Integer)
                                                                        (7805089389717466778 ::
                                                                           Integer)
                                                                        "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                           (coe (1 :: Integer))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                                   (934 :: Integer)
                                                   (11046137501266703203 :: Integer)
                                                   "Ledger.Conway.Specification.Ratify._.Epoch"
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
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (1798 :: Integer) (11046137501266703203 :: Integer)
                                          "Ledger.Conway.Specification.Ratify.RatifyEnv"
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
                                          (182 :: Integer) (9254951203007797098 :: Integer)
                                          "abstract-set-theory.FiniteSetTheory._.Map"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.RightAssoc
                                             (MAlonzo.RTE.Related (1.0 :: Double)))))
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
                                                   (852 :: Integer)
                                                   (11046137501266703203 :: Integer)
                                                   "Ledger.Conway.Specification.Ratify._.Credential"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                            (320 :: Integer)
                                                            (753823221557309123 :: Integer)
                                                            "Ledger.Core.Specification.Epoch.GlobalConstants.DecEq-Netw"
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
                                                                     (1178 :: Integer)
                                                                     (7805089389717466778 ::
                                                                        Integer)
                                                                     "Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants"
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
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                        (coe (1 :: Integer))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                               (26 :: Integer)
                                                               (14321319370142338143 :: Integer)
                                                               "Ledger.Core.Specification.Crypto.isHashableSet.DecEq-THash"
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
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
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
                                                                           (206 :: Integer)
                                                                           (14321319370142338143 ::
                                                                              Integer)
                                                                           "Ledger.Core.Specification.Crypto.CryptoStructure.khs"
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
                                                                                    (602 :: Integer)
                                                                                    (7805089389717466778 ::
                                                                                       Integer)
                                                                                    "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                                  (210 :: Integer)
                                                                  (14321319370142338143 :: Integer)
                                                                  "Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-ScriptHash"
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
                                                                           (602 :: Integer)
                                                                           (7805089389717466778 ::
                                                                              Integer)
                                                                           "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                              (coe (1 :: Integer))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                                      (10 :: Integer)
                                                      (15412666033012224255 :: Integer)
                                                      "Agda.Builtin.Maybe.Maybe"
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
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
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
                                                               (20 :: Integer)
                                                               (10880583612240331187 :: Integer)
                                                               "Agda.Primitive.lzero"
                                                               (MAlonzo.RTE.Fixity
                                                                  MAlonzo.RTE.NonAssoc
                                                                  MAlonzo.RTE.Unrelated)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                                                                  (852 :: Integer)
                                                                  (11046137501266703203 :: Integer)
                                                                  "Ledger.Conway.Specification.Ratify._.Credential"
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
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                                           (320 :: Integer)
                                                                           (753823221557309123 ::
                                                                              Integer)
                                                                           "Ledger.Core.Specification.Epoch.GlobalConstants.DecEq-Netw"
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
                                                                                    (1178 ::
                                                                                       Integer)
                                                                                    (7805089389717466778 ::
                                                                                       Integer)
                                                                                    "Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants"
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
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                                              (26 :: Integer)
                                                                              (14321319370142338143 ::
                                                                                 Integer)
                                                                              "Ledger.Core.Specification.Crypto.isHashableSet.DecEq-THash"
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
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
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
                                                                                          (206 ::
                                                                                             Integer)
                                                                                          (14321319370142338143 ::
                                                                                             Integer)
                                                                                          "Ledger.Core.Specification.Crypto.CryptoStructure.khs"
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
                                                                                                   (602 ::
                                                                                                      Integer)
                                                                                                   (7805089389717466778 ::
                                                                                                      Integer)
                                                                                                   "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                      (coe
                                                                                                         (1 ::
                                                                                                            Integer))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                                                 (210 :: Integer)
                                                                                 (14321319370142338143 ::
                                                                                    Integer)
                                                                                 "Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-ScriptHash"
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
                                                                                          (602 ::
                                                                                             Integer)
                                                                                          (7805089389717466778 ::
                                                                                             Integer)
                                                                                          "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                             (coe
                                                                                                (1 ::
                                                                                                   Integer))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (1798 :: Integer) (11046137501266703203 :: Integer)
                                             "Ledger.Conway.Specification.Ratify.RatifyEnv"
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
                                                (1798 :: Integer) (11046137501266703203 :: Integer)
                                                "Ledger.Conway.Specification.Ratify.RatifyEnv"
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
                                                (182 :: Integer) (9254951203007797098 :: Integer)
                                                "abstract-set-theory.FiniteSetTheory._.Map"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.RightAssoc
                                                   (MAlonzo.RTE.Related (1.0 :: Double)))))
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
                                                         (988 :: Integer)
                                                         (11046137501266703203 :: Integer)
                                                         "Ledger.Conway.Specification.Ratify._.THash"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                                                            (222 :: Integer)
                                                            (11046137501266703203 :: Integer)
                                                            "Ledger.Conway.Specification.Ratify._.StakePoolParams"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
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
                                                   (1798 :: Integer)
                                                   (11046137501266703203 :: Integer)
                                                   "Ledger.Conway.Specification.Ratify.RatifyEnv"
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
                                                   (660 :: Integer)
                                                   (11046137501266703203 :: Integer)
                                                   "Ledger.Conway.Specification.Ratify._.VoteDelegs"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
         (coe C_constructor_1828))
-- Ledger.Conway.Specification.Ratify.HasCast-RatifyState
d_HasCast'45'RatifyState_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_1876 ~v0 = du_HasCast'45'RatifyState_1876
du_HasCast'45'RatifyState_1876 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_1876
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
                                 (1830 :: Integer) (11046137501266703203 :: Integer)
                                 "Ledger.Conway.Specification.Ratify.RatifyState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (448 :: Integer) (11046137501266703203 :: Integer)
                                 "Ledger.Conway.Specification.Ratify._.EnactState"
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
                                    (1830 :: Integer) (11046137501266703203 :: Integer)
                                    "Ledger.Conway.Specification.Ratify.RatifyState"
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
                                    (128 :: Integer) (9254951203007797098 :: Integer)
                                    "abstract-set-theory.FiniteSetTheory._.Set"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
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
                                             (76 :: Integer) (14176793942586333973 :: Integer)
                                             "Data.Product.Base._\215_"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.RightAssoc
                                                (MAlonzo.RTE.Related (2.0 :: Double)))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
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
                                                      (20 :: Integer)
                                                      (10880583612240331187 :: Integer)
                                                      "Agda.Primitive.lzero"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
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
                                                         (20 :: Integer)
                                                         (10880583612240331187 :: Integer)
                                                         "Agda.Primitive.lzero"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                                                            (544 :: Integer)
                                                            (11046137501266703203 :: Integer)
                                                            "Ledger.Conway.Specification.Ratify._.GovActionID"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                                                               (548 :: Integer)
                                                               (11046137501266703203 :: Integer)
                                                               "Ledger.Conway.Specification.Ratify._.GovActionState"
                                                               (MAlonzo.RTE.Fixity
                                                                  MAlonzo.RTE.NonAssoc
                                                                  MAlonzo.RTE.Unrelated)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                       (1830 :: Integer) (11046137501266703203 :: Integer)
                                       "Ledger.Conway.Specification.Ratify.RatifyState"
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
                                       (6 :: Integer) (4305008439024043551 :: Integer)
                                       "Agda.Builtin.Bool.Bool"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_1844))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.castVotes
d_castVotes_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_1980 ~v0 ~v1 ~v2 ~v3 v4 = du_castVotes_1980 v4
du_castVotes_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_1980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_926
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1018
         (coe v0))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.getCCHotCredential
d_getCCHotCredential_1982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCredential_1982 v0 v1 v2 ~v3 ~v4 v5 v6
  = du_getCCHotCredential_1982 v0 v1 v2 v5 v6
du_getCCHotCredential_1982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getCCHotCredential_1982 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__38
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_648
               (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_648
                  (coe v0)))
            (\ v5 v6 -> v5) v4 v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v5 v6 -> v6)
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_648
                  (coe v0)))
            v4 v1))
      (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
      (coe
         (\ v5 ->
            let v6
                  = coe
                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe v2) (coe v3)
                      (coe
                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                         (let v6
                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                          (coe v0))) in
                          coe
                            (let v7
                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                          (coe v0)) in
                             coe
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                  (coe v6) (coe v7))))
                         (coe v3)
                         (let v6
                                = MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v6
                               (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))))) in
            coe
              (case coe v6 of
                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                   -> case coe v7 of
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8 -> coe v7
                        _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                 _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.activeCC
d_activeCC_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeCC_1992 v0 v1 v2 v3 ~v4 = du_activeCC_1992 v0 v1 v2 v3
du_activeCC_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeCC_1992 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1124
                 (coe v3)) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
           -> case coe v5 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                  -> coe
                       MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1532
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe du_getCCHotCredential_1982 (coe v0) (coe v1) (coe v2))
                       (coe v6)
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.sizeActiveCC
d_sizeActiveCC_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_sizeActiveCC_1998 v0 v1 v2 v3 ~v4
  = du_sizeActiveCC_1998 v0 v1 v2 v3
du_sizeActiveCC_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  Integer
du_sizeActiveCC_1998 v0 v1 v2 v3
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_length'738'_1218
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
               (coe v0))))
      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe du_activeCC_1992 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.actualVotes
d_actualVotes_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2000 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v5 ->
            coe
              MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v6 -> v6))
              (coe MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_870)
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe du_castVotes_1980 (coe v4)) (coe v5)
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased
                       (let v6
                              = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                  (coe
                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                        (coe v0))) in
                        coe
                          (let v7
                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                        (coe v0)) in
                           coe
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                (coe v6) (coe v7)))))
                    (coe v5)
                    (let v6
                           = MAlonzo.Code.Axiom.Set.d_th_1516
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v6
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                             (coe du_castVotes_1980 (coe v4)))))))))
      (coe du_activeCC_1992 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.mT
d_mT_2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_2004 v0 ~v1 ~v2 v3 v4 = du_mT_2004 v0 v3 v4
du_mT_2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mT_2004 v0 v1 v2
  = coe
      d_threshold_1618 v0
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1130
            (coe v1)))
      (coe
         MAlonzo.Code.Data.Maybe.Base.du_map_64
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1124
               (coe v1))))
      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1024
         (coe v2))
      (coe MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_786)
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.stakeDistr
d_stakeDistr_2006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2006 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_constMap_1442
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe
            d_actualVotes_2000 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
      (coe (1 :: Integer))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.acceptedStake
d_acceptedStake_2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_acceptedStake_2008 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v5 -> v5))
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
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                     (coe v0)))))
         (coe
            d_stakeDistr_2006 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1108))
            (coe
               d_actualVotes_2000 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_868)))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.totalStake
d_totalStake_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_totalStake_2010 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v5 -> v5))
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
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                     (coe v0)))))
         (coe
            d_stakeDistr_2006 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__2100
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1108))
               (coe
                  d_actualVotes_2000 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_868))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_870))))))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.accepted
d_accepted_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_accepted_2016 = erased
-- Ledger.Conway.Specification.Ratify.acceptedByCC
d_acceptedByCC_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_acceptedByCC_2022 = erased
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2032 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2032 v0 = coe d_ccHotKeys_1820 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_2034 :: T_RatifyEnv_1798 -> AgdaAny
d_currentEpoch_2034 v0 = coe d_currentEpoch_1816 (coe v0)
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep._.currentEpoch
d_currentEpoch_2050 ::
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny
d_currentEpoch_2050 v0 ~v1 ~v2 = du_currentEpoch_2050 v0
du_currentEpoch_2050 :: T_RatifyEnv_1798 -> AgdaAny
du_currentEpoch_2050 v0 = coe d_currentEpoch_1816 (coe v0)
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep._.stakeDistrs
d_stakeDistrs_2052 ::
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  T_StakeDistrs_1786
d_stakeDistrs_2052 v0 ~v1 ~v2 = du_stakeDistrs_2052 v0
du_stakeDistrs_2052 :: T_RatifyEnv_1798 -> T_StakeDistrs_1786
du_stakeDistrs_2052 v0 = coe d_stakeDistrs_1814 (coe v0)
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep._.stakeDistrPools
d_stakeDistrPools_2056 ::
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_2056 v0 ~v1 ~v2 = du_stakeDistrPools_2056 v0
du_stakeDistrPools_2056 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDistrPools_2056 v0
  = coe d_stakeDistrPools_1794 (coe d_stakeDistrs_1814 (coe v0))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep._.stakeDistrVDeleg
d_stakeDistrVDeleg_2058 ::
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_2058 v0 ~v1 ~v2 = du_stakeDistrVDeleg_2058 v0
du_stakeDistrVDeleg_2058 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDistrVDeleg_2058 v0
  = coe d_stakeDistrVDeleg_1792 (coe d_stakeDistrs_1814 (coe v0))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.castVotes
d_castVotes_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2076 ~v0 ~v1 ~v2 v3 = du_castVotes_2076 v3
du_castVotes_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2076 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_966
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_936)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_928
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1018
            (coe v0)))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.activeDReps
d_activeDReps_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_2078 v0 v1 ~v2 ~v3 = du_activeDReps_2078 v0 v1
du_activeDReps_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_activeDReps_2078 v0 v1
  = coe
      MAlonzo.Code.Class.IsSet.du_dom_586
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1262
         (coe v0) (coe du_HasDReps'45'RatifyEnv_1868) (coe v1)
         (coe d_currentEpoch_1816 (coe v1)))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.predeterminedDRepVotes
d_predeterminedDRepVotes_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_predeterminedDRepVotes_2080 v0 ~v1 ~v2 v3
  = du_predeterminedDRepVotes_2080 v0 v3
du_predeterminedDRepVotes_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_predeterminedDRepVotes_2080 v0 v1
  = let v2
          = MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_836
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1024
                 (coe v1)) in
    coe
      (let v3
             = coe
                 MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased
                    (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_938)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_872)))
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_940)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_870))) in
       coe
         (case coe v2 of
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_798
              -> coe
                   MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1516
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                      erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
                         (coe v0)))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_938)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_872)))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_940)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_868)))
            _ -> coe v3))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.defaultDRepCredentialVotes
d_defaultDRepCredentialVotes_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_defaultDRepCredentialVotes_2084 v0 v1 ~v2 ~v3
  = du_defaultDRepCredentialVotes_2084 v0 v1
du_defaultDRepCredentialVotes_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_defaultDRepCredentialVotes_2084 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_constMap_1442
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_426
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_936)
         (coe du_activeDReps_2078 (coe v0) (coe v1)))
      (coe MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_870)
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.actualVotes
d_actualVotes_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2086 v0 v1 ~v2 v3 = du_actualVotes_2086 v0 v1 v3
du_actualVotes_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualVotes_2086 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
            (coe v0)))
      (coe du_castVotes_2076 (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
               (coe v0)))
         (coe du_defaultDRepCredentialVotes_2084 (coe v0) (coe v1))
         (coe du_predeterminedDRepVotes_2080 (coe v0) (coe v2)))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.t
d_t_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_2088 v0 ~v1 v2 v3 = du_t_2088 v0 v2 v3
du_t_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_t_2088 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v3 -> v3))
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         d_threshold_1618 v0
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1130
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_map_64
            (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1124
                  (coe v1))))
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1024
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_788))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.acceptedStake
d_acceptedStake_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_acceptedStake_2090 v0 v1 ~v2 v3 = du_acceptedStake_2090 v0 v1 v3
du_acceptedStake_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
du_acceptedStake_2090 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
         (coe v0))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v3 -> v3))
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
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
               (coe v0)))
         (coe d_stakeDistrVDeleg_1792 (coe d_stakeDistrs_1814 (coe v1)))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1108))
            (coe du_actualVotes_2086 (coe v0) (coe v1) (coe v2))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_868)))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.totalStake
d_totalStake_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_totalStake_2092 v0 v1 ~v2 v3 = du_totalStake_2092 v0 v1 v3
du_totalStake_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
du_totalStake_2092 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
         (coe v0))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v3 -> v3))
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
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
               (coe v0)))
         (coe d_stakeDistrVDeleg_1792 (coe d_stakeDistrs_1814 (coe v1)))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__2100
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1108))
               (coe du_actualVotes_2086 (coe v0) (coe v1) (coe v2))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_868))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_870))))))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.accepted
d_accepted_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_accepted_2098 = erased
-- Ledger.Conway.Specification.Ratify.acceptedByDRep
d_acceptedByDRep_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_acceptedByDRep_2100 = erased
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.castVotes
d_castVotes_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2134 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_castVotes_2134 v5
du_castVotes_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_930
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1018
         (coe v0))
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.defaultVote
d_defaultVote_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_866
d_defaultVote_2136 v0 v1 v2 ~v3 ~v4 v5 v6
  = du_defaultVote_2136 v0 v1 v2 v5 v6
du_defaultVote_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_866
du_defaultVote_2136 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe v2) (coe v4)
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased
                    (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                             (coe v0)))))
                 (coe v4)
                 (let v5
                        = MAlonzo.Code.Axiom.Set.d_th_1516
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                  coe
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v5
                       (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))))) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> let v7
                    = coe
                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe v1)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1112
                           (coe v6))
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                           (coe
                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              erased
                              (let v7
                                     = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                               (coe v0))) in
                               coe
                                 (let v8
                                        = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                       (coe v7) (coe v8)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1112
                              (coe v6))
                           (let v7
                                  = MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v7
                                 (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1))))) in
              coe
                (let v8
                       = MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_836
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1024
                              (coe v3)) in
                 coe
                   (let v9
                          = let v9
                                  = coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_870 in
                            coe
                              (case coe v7 of
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                                   -> case coe v10 of
                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_938
                                          -> coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_872
                                        _ -> coe v9
                                 _ -> coe v9) in
                    coe
                      (case coe v8 of
                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_798
                           -> case coe v7 of
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                                  -> case coe v10 of
                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_940
                                         -> coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_868
                                       _ -> coe v9
                                _ -> coe v9
                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_804
                           -> coe
                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_870
                         _ -> coe v9)))
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_870
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.actualVotes
d_actualVotes_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2146 v0 v1 v2 v3 ~v4 v5
  = du_actualVotes_2146 v0 v1 v2 v3 v5
du_actualVotes_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualVotes_2146 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                  (coe v0)))))
      (coe du_castVotes_2134 (coe v4))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1274
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_defaultVote_2136 (coe v0) (coe v1) (coe v2) (coe v4))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3)))
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.t
d_t_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_2148 v0 ~v1 ~v2 ~v3 v4 v5 = du_t_2148 v0 v4 v5
du_t_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_t_2148 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v3 -> v3))
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         d_threshold_1618 v0
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1130
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_map_64
            (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1124
                  (coe v1))))
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1024
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_790))
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.acceptedStake
d_acceptedStake_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_acceptedStake_2150 v0 v1 v2 v3 ~v4 v5
  = du_acceptedStake_2150 v0 v1 v2 v3 v5
du_acceptedStake_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
du_acceptedStake_2150 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v5 -> v5))
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
            (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                     (coe v0)))))
         (coe v3)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1108))
            (coe
               du_actualVotes_2146 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_868)))
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.totalStake
d_totalStake_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_totalStake_2152 v0 v1 v2 v3 ~v4 v5
  = du_totalStake_2152 v0 v1 v2 v3 v5
du_totalStake_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
du_totalStake_2152 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v5 -> v5))
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
            (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
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
               MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__2100
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1108))
               (coe
                  du_actualVotes_2146 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_868))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_870))))))
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.accepted
d_accepted_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_accepted_2158 = erased
-- Ledger.Conway.Specification.Ratify.acceptedBySPO
d_acceptedBySPO_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_acceptedBySPO_2160 = erased
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2170 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2170 v0 = coe d_ccHotKeys_1820 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_2172 :: T_RatifyEnv_1798 -> AgdaAny
d_currentEpoch_2172 v0 = coe d_currentEpoch_1816 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delegatees
d_delegatees_2174 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2174 v0 = coe d_delegatees_1826 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.dreps
d_dreps_2176 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2176 v0 = coe d_dreps_1818 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.pools
d_pools_2178 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2178 v0 = coe d_pools_1824 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrs
d_stakeDistrs_2180 :: T_RatifyEnv_1798 -> T_StakeDistrs_1786
d_stakeDistrs_2180 v0 = coe d_stakeDistrs_1814 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.treasury
d_treasury_2182 :: T_RatifyEnv_1798 -> Integer
d_treasury_2182 v0 = coe d_treasury_1822 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrPools
d_stakeDistrPools_2186 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_2186 v0
  = coe d_stakeDistrPools_1794 (coe d_stakeDistrs_1814 (coe v0))
-- Ledger.Conway.Specification.Ratify._._.stakeDistrVDeleg
d_stakeDistrVDeleg_2188 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_2188 v0
  = coe d_stakeDistrVDeleg_1792 (coe d_stakeDistrs_1814 (coe v0))
-- Ledger.Conway.Specification.Ratify.accepted
d_accepted_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_accepted_2190 = erased
-- Ledger.Conway.Specification.Ratify.expired
d_expired_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_expired_2198 = erased
-- Ledger.Conway.Specification.Ratify.verifyPrev
d_verifyPrev_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_796 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  ()
d_verifyPrev_2206 = erased
-- Ledger.Conway.Specification.Ratify.delayingAction
d_delayingAction_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_796 ->
  Bool
d_delayingAction_2228 ~v0 v1 = du_delayingAction_2228 v1
du_delayingAction_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_796 ->
  Bool
du_delayingAction_2228 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_798
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_800
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_802
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_804
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_806
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_808
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_810
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.delayed
d_delayed_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_796 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  Bool -> ()
d_delayed_2232 = erased
-- Ledger.Conway.Specification.Ratify.acceptConds
d_acceptConds_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  T_RatifyState_1830 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2242 = erased
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2258 ::
  T_RatifyEnv_1798 ->
  T_RatifyState_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2258 v0 ~v1 ~v2 ~v3 = du_ccHotKeys_2258 v0
du_ccHotKeys_2258 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2258 v0 = coe d_ccHotKeys_1820 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_2260 ::
  T_RatifyEnv_1798 ->
  T_RatifyState_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny
d_currentEpoch_2260 v0 ~v1 ~v2 ~v3 = du_currentEpoch_2260 v0
du_currentEpoch_2260 :: T_RatifyEnv_1798 -> AgdaAny
du_currentEpoch_2260 v0 = coe d_currentEpoch_1816 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delegatees
d_delegatees_2262 ::
  T_RatifyEnv_1798 ->
  T_RatifyState_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2262 v0 ~v1 ~v2 ~v3 = du_delegatees_2262 v0
du_delegatees_2262 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2262 v0 = coe d_delegatees_1826 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.dreps
d_dreps_2264 ::
  T_RatifyEnv_1798 ->
  T_RatifyState_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2264 v0 ~v1 ~v2 ~v3 = du_dreps_2264 v0
du_dreps_2264 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2264 v0 = coe d_dreps_1818 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.pools
d_pools_2266 ::
  T_RatifyEnv_1798 ->
  T_RatifyState_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2266 v0 ~v1 ~v2 ~v3 = du_pools_2266 v0
du_pools_2266 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2266 v0 = coe d_pools_1824 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrs
d_stakeDistrs_2268 ::
  T_RatifyEnv_1798 ->
  T_RatifyState_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  T_StakeDistrs_1786
d_stakeDistrs_2268 v0 ~v1 ~v2 ~v3 = du_stakeDistrs_2268 v0
du_stakeDistrs_2268 :: T_RatifyEnv_1798 -> T_StakeDistrs_1786
du_stakeDistrs_2268 v0 = coe d_stakeDistrs_1814 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.treasury
d_treasury_2270 ::
  T_RatifyEnv_1798 ->
  T_RatifyState_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_treasury_2270 v0 ~v1 ~v2 ~v3 = du_treasury_2270 v0
du_treasury_2270 :: T_RatifyEnv_1798 -> Integer
du_treasury_2270 v0 = coe d_treasury_1822 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delay
d_delay_2274 ::
  T_RatifyEnv_1798 ->
  T_RatifyState_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Bool
d_delay_2274 ~v0 v1 ~v2 ~v3 = du_delay_2274 v1
du_delay_2274 :: T_RatifyState_1830 -> Bool
du_delay_2274 v0 = coe d_delay_1842 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.es
d_es_2276 ::
  T_RatifyEnv_1798 ->
  T_RatifyState_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112
d_es_2276 ~v0 v1 ~v2 ~v3 = du_es_2276 v1
du_es_2276 ::
  T_RatifyState_1830 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112
du_es_2276 v0 = coe d_es_1838 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.removed
d_removed_2278 ::
  T_RatifyEnv_1798 ->
  T_RatifyState_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2278 ~v0 v1 ~v2 ~v3 = du_removed_2278 v1
du_removed_2278 ::
  T_RatifyState_1830 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_2278 v0 = coe d_removed_1840 (coe v0)
-- Ledger.Conway.Specification.Ratify.verifyPrev?
d_verifyPrev'63'_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_796 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2300 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_798
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_600
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1124
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_800
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_600
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1124
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_802
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_600
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1126
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_804
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_600
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1128
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_806
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_600
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1130
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_808
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_810
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.delayed?
d_delayed'63'_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_796 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2338 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
         (coe d_verifyPrev'63'_2300 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
            (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe v4) (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Specification.Ratify.Is-nothing?
d_Is'45'nothing'63'_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_2354 ~v0 ~v1 v2 = du_Is'45'nothing'63'_2354 v2
du_Is'45'nothing'63'_2354 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_2354 v0
  = coe
      MAlonzo.Code.Data.Maybe.Relation.Unary.All.du_dec_254
      (let v1
             = coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26) in
       coe (coe (\ v2 -> v1)))
      (coe v0)
-- Ledger.Conway.Specification.Ratify.Is-just?
d_Is'45'just'63'_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'just'63'_2366 ~v0 ~v1 v2 = du_Is'45'just'63'_2366 v2
du_Is'45'just'63'_2366 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'just'63'_2366 v0
  = coe
      MAlonzo.Code.Data.Maybe.Relation.Unary.Any.du_dec_136
      (let v1
             = coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                 (coe
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)) in
       coe (coe (\ v2 -> v1)))
      (coe v0)
-- Ledger.Conway.Specification.Ratify.acceptedByCC?
d_acceptedByCC'63'_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByCC'63'_2380 v0 v1 v2 v3
  = coe d_d_2420 (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2394 ::
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2394 v0 ~v1 ~v2 = du_ccHotKeys_2394 v0
du_ccHotKeys_2394 ::
  T_RatifyEnv_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2394 v0 = coe d_ccHotKeys_1820 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_2396 ::
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny
d_currentEpoch_2396 v0 ~v1 ~v2 = du_currentEpoch_2396 v0
du_currentEpoch_2396 :: T_RatifyEnv_1798 -> AgdaAny
du_currentEpoch_2396 v0 = coe d_currentEpoch_1816 (coe v0)
-- Ledger.Conway.Specification.Ratify._.acbCC.accepted
d_accepted_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_accepted_2400 = erased
-- Ledger.Conway.Specification.Ratify._.acbCC.acceptedStake
d_acceptedStake_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_acceptedStake_2402 v0 v1 v2 v3
  = coe
      d_acceptedStake_2008 (coe v0) (coe d_currentEpoch_1816 (coe v1))
      (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3)
-- Ledger.Conway.Specification.Ratify._.acbCC.activeCC
d_activeCC_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeCC_2404 v0 v1 v2 ~v3 = du_activeCC_2404 v0 v1 v2
du_activeCC_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeCC_2404 v0 v1 v2
  = coe
      du_activeCC_1992 (coe v0) (coe d_currentEpoch_1816 (coe v1))
      (coe d_ccHotKeys_1820 (coe v1)) (coe v2)
-- Ledger.Conway.Specification.Ratify._.acbCC.actualVotes
d_actualVotes_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2406 v0 v1 v2 v3
  = coe
      d_actualVotes_2000 (coe v0) (coe d_currentEpoch_1816 (coe v1))
      (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3)
-- Ledger.Conway.Specification.Ratify._.acbCC.castVotes
d_castVotes_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2408 ~v0 ~v1 ~v2 v3 = du_castVotes_2408 v3
du_castVotes_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2408 v0 = coe du_castVotes_1980 (coe v0)
-- Ledger.Conway.Specification.Ratify._.acbCC.getCCHotCredential
d_getCCHotCredential_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCredential_2410 v0 v1 ~v2 ~v3
  = du_getCCHotCredential_2410 v0 v1
du_getCCHotCredential_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getCCHotCredential_2410 v0 v1
  = coe
      du_getCCHotCredential_1982 (coe v0)
      (coe d_currentEpoch_1816 (coe v1)) (coe d_ccHotKeys_1820 (coe v1))
-- Ledger.Conway.Specification.Ratify._.acbCC.mT
d_mT_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_2412 v0 ~v1 v2 v3 = du_mT_2412 v0 v2 v3
du_mT_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mT_2412 v0 v1 v2 = coe du_mT_2004 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Ratify._.acbCC.sizeActiveCC
d_sizeActiveCC_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_sizeActiveCC_2414 v0 v1 v2 ~v3 = du_sizeActiveCC_2414 v0 v1 v2
du_sizeActiveCC_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  Integer
du_sizeActiveCC_2414 v0 v1 v2
  = coe
      du_sizeActiveCC_1998 (coe v0) (coe d_currentEpoch_1816 (coe v1))
      (coe d_ccHotKeys_1820 (coe v1)) (coe v2)
-- Ledger.Conway.Specification.Ratify._.acbCC.stakeDistr
d_stakeDistr_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2416 v0 v1 v2 v3
  = coe
      d_stakeDistr_2006 (coe v0) (coe d_currentEpoch_1816 (coe v1))
      (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3)
-- Ledger.Conway.Specification.Ratify._.acbCC.totalStake
d_totalStake_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_totalStake_2418 v0 v1 v2 v3
  = coe
      d_totalStake_2010 (coe v0) (coe d_currentEpoch_1816 (coe v1))
      (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3)
-- Ledger.Conway.Specification.Ratify._.d
d_d_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_d_2420 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1130
                 (coe v2)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Data.Maybe.Base.du_map_64
                 (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1124
                       (coe v2))) in
       coe
         (let v6
                = MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_836
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1024
                       (coe v3)) in
          coe
            (let v7
                   = MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_838
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1024
                          (coe v3)) in
             coe
               (case coe v6 of
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_798
                    -> let v8
                             = coe
                                 du_'8739'_'8739'_'8739'_'8739'_1596 (coe du_'9472'_1758)
                                 (coe
                                    du_vote_1736
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_230
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                                          (coe v4))))
                                 (coe
                                    du_vote_1736
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_264
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
                                          (coe v4))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_786) in
                       coe
                         (case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920
                                              (coe v10) (coe v11)))
                                      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1130
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_1998 (coe v0)
                                         (coe d_currentEpoch_1816 (coe v1))
                                         (coe d_ccHotKeys_1820 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
                                         (coe
                                            d_acceptedStake_2008 (coe v0)
                                            (coe d_currentEpoch_1816 (coe v1))
                                            (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2010 (coe v0)
                                            (coe d_currentEpoch_1816 (coe v1))
                                            (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_800
                    -> let v8
                             = coe
                                 du_'8739'_'8741'_'8739'_1608 (coe du_'9472'_1758)
                                 (coe du_P'47'Q2a'47'b_1764 (coe v4) (coe v5))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_786) in
                       coe
                         (case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920
                                              (coe v10) (coe v11)))
                                      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1130
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_1998 (coe v0)
                                         (coe d_currentEpoch_1816 (coe v1))
                                         (coe d_ccHotKeys_1820 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
                                         (coe
                                            d_acceptedStake_2008 (coe v0)
                                            (coe d_currentEpoch_1816 (coe v1))
                                            (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2010 (coe v0)
                                            (coe d_currentEpoch_1816 (coe v1))
                                            (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_802
                    -> let v8
                             = coe
                                 du_'8739'_'8739'_'8739'_'8739'_1596 (coe du_'10003'_1760 (coe v5))
                                 (coe
                                    du_vote_1736
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_236
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                                          (coe v4))))
                                 (coe du_'9472'_1758)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_786) in
                       coe
                         (case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920
                                              (coe v10) (coe v11)))
                                      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1130
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_1998 (coe v0)
                                         (coe d_currentEpoch_1816 (coe v1))
                                         (coe d_ccHotKeys_1820 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
                                         (coe
                                            d_acceptedStake_2008 (coe v0)
                                            (coe d_currentEpoch_1816 (coe v1))
                                            (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2010 (coe v0)
                                            (coe d_currentEpoch_1816 (coe v1))
                                            (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_804
                    -> let v8
                             = coe
                                 du_'8739'_'8739'_'8739'_'8739'_1596 (coe du_'10003'_1760 (coe v5))
                                 (coe
                                    du_vote_1736
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_238
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                                          (coe v4))))
                                 (coe
                                    du_vote_1736
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_270
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
                                          (coe v4))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_786) in
                       coe
                         (case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920
                                              (coe v10) (coe v11)))
                                      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1130
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_1998 (coe v0)
                                         (coe d_currentEpoch_1816 (coe v1))
                                         (coe d_ccHotKeys_1820 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
                                         (coe
                                            d_acceptedStake_2008 (coe v0)
                                            (coe d_currentEpoch_1816 (coe v1))
                                            (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2010 (coe v0)
                                            (coe d_currentEpoch_1816 (coe v1))
                                            (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_806
                    -> let v8
                             = coe
                                 du_'8739'_'8741'_'8739'_1608 (coe du_'10003'_1760 (coe v5))
                                 (coe du_P'47'Q5_1770 (coe v0) (coe v4) (coe v7))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_786) in
                       coe
                         (case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920
                                              (coe v10) (coe v11)))
                                      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1130
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_1998 (coe v0)
                                         (coe d_currentEpoch_1816 (coe v1))
                                         (coe d_ccHotKeys_1820 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
                                         (coe
                                            d_acceptedStake_2008 (coe v0)
                                            (coe d_currentEpoch_1816 (coe v1))
                                            (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2010 (coe v0)
                                            (coe d_currentEpoch_1816 (coe v1))
                                            (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_808
                    -> let v8
                             = coe
                                 du_'8739'_'8739'_'8739'_'8739'_1596 (coe du_'10003'_1760 (coe v5))
                                 (coe
                                    du_vote_1736
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_248
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                                          (coe v4))))
                                 (coe du_'9472'_1758)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_786) in
                       coe
                         (case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920
                                              (coe v10) (coe v11)))
                                      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1130
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_1998 (coe v0)
                                         (coe d_currentEpoch_1816 (coe v1))
                                         (coe d_ccHotKeys_1820 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
                                         (coe
                                            d_acceptedStake_2008 (coe v0)
                                            (coe d_currentEpoch_1816 (coe v1))
                                            (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2010 (coe v0)
                                            (coe d_currentEpoch_1816 (coe v1))
                                            (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_810
                    -> let v8
                             = coe
                                 du_'8739'_'8739'_'8739'_'8739'_1596 (coe du_'10003''8224'_1762)
                                 (coe du_'10003''8224'_1762) (coe du_'10003''8224'_1762)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_786) in
                       coe
                         (case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920
                                              (coe v10) (coe v11)))
                                      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1130
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_1998 (coe v0)
                                         (coe d_currentEpoch_1816 (coe v1))
                                         (coe d_ccHotKeys_1820 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
                                         (coe
                                            d_acceptedStake_2008 (coe v0)
                                            (coe d_currentEpoch_1816 (coe v1))
                                            (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2010 (coe v0)
                                            (coe d_currentEpoch_1816 (coe v1))
                                            (coe d_ccHotKeys_1820 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  _ -> MAlonzo.RTE.mazUnreachableError))))
-- Ledger.Conway.Specification.Ratify.acceptedByDRep?
d_acceptedByDRep'63'_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByDRep'63'_2434 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
      (coe du_t_2088 (coe v0) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
         (coe du_acceptedStake_2090 (coe v0) (coe v1) (coe v3))
         (coe du_totalStake_2092 (coe v0) (coe v1) (coe v3)))
-- Ledger.Conway.Specification.Ratify.acceptedBySPO?
d_acceptedBySPO'63'_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBySPO'63'_2442 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
      (coe du_t_2148 (coe v0) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
         (coe
            du_acceptedStake_2150 (coe v0) (coe d_delegatees_1826 (coe v1))
            (coe d_pools_1824 (coe v1))
            (coe d_stakeDistrPools_1794 (coe d_stakeDistrs_1814 (coe v1)))
            (coe v3))
         (coe
            du_totalStake_2152 (coe v0) (coe d_delegatees_1826 (coe v1))
            (coe d_pools_1824 (coe v1))
            (coe d_stakeDistrPools_1794 (coe d_stakeDistrs_1814 (coe v1)))
            (coe v3)))
-- Ledger.Conway.Specification.Ratify.accepted?
d_accepted'63'_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2450 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe d_acceptedByCC'63'_2380 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe d_acceptedByDRep'63'_2434 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe d_acceptedBySPO'63'_2442 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Conway.Specification.Ratify.expired?
d_expired'63'_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2462 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.d_dec_16
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_648
               (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_648
                  (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1022
               (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_648
                  (coe v0)))
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1022
               (coe v2))
            v1))
-- Ledger.Conway.Specification.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2480 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'RATIFY'10632'__2480
  = C_RATIFY'45'Accept_2492 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_2500 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_2508 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ratify._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1798 ->
  T_RatifyState_1830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_1830 -> ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2510 = erased
