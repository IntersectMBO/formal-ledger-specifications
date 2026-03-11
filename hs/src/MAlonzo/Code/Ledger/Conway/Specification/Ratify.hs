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
d_Pools_206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Pools_206 = erased
-- Ledger.Conway.Specification.Ratify._.StakePoolParams
d_StakePoolParams_226 a0 = ()
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.cost
d_cost_420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1166 ->
  Integer
d_cost_420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1180 (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.margin
d_margin_422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1166 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1182
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.owners
d_owners_424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1166 ->
  [AgdaAny]
d_owners_424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1178
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.pledge
d_pledge_426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1166 ->
  Integer
d_pledge_426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1184
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.rewardAccount
d_rewardAccount_428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1166 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1186
      (coe v0)
-- Ledger.Conway.Specification.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__432 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Ratify._.EnactState
d_EnactState_452 a0 = ()
-- Ledger.Conway.Specification.Ratify._.EnactStateOf
d_EnactStateOf_456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_EnactStateOf_456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1222
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_458 ~v0 = du_HasCast'45'EnactEnv_458
du_HasCast'45'EnactEnv_458 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EnactEnv_458
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasCast'45'EnactEnv_1236
-- Ledger.Conway.Specification.Ratify._.HasEnactState
d_HasEnactState_460 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Ratify._.EnactState.cc
d_cc_502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1198 (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.constitution
d_constitution_504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1200
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.pparams
d_pparams_506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.pv
d_pv_508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1202 (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.withdrawals
d_withdrawals_510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1206
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.HasEnactState.EnactStateOf
d_EnactStateOf_514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_EnactStateOf_514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1222
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.DRepsOf
d_DRepsOf_538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1472
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.GovAction
d_GovAction_554 a0 = ()
-- Ledger.Conway.Specification.Ratify._.GovActionID
d_GovActionID_560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovActionID_560 = erased
-- Ledger.Conway.Specification.Ratify._.GovActionState
d_GovActionState_564 a0 = ()
-- Ledger.Conway.Specification.Ratify._.GovActionType
d_GovActionType_568 a0 = ()
-- Ledger.Conway.Specification.Ratify._.GovRole
d_GovRole_576 a0 = ()
-- Ledger.Conway.Specification.Ratify._.HasDReps
d_HasDReps_602 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Ratify._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_906
d_HasGovAction'45'GovActionState_610 ~v0
  = du_HasGovAction'45'GovActionState_610
du_HasGovAction'45'GovActionState_610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_906
du_HasGovAction'45'GovActionState_610
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1226
-- Ledger.Conway.Specification.Ratify._.NeedsHash
d_NeedsHash_650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  ()
d_NeedsHash_650 = erased
-- Ledger.Conway.Specification.Ratify._.VDeleg
d_VDeleg_672 a0 = ()
-- Ledger.Conway.Specification.Ratify._.Vote
d_Vote_674 a0 = ()
-- Ledger.Conway.Specification.Ratify._.VoteDelegs
d_VoteDelegs_676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_676 = erased
-- Ledger.Conway.Specification.Ratify._.GovAction.gaData
d_gaData_716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  AgdaAny
d_gaData_716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_900
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.GovAction.gaType
d_gaType_718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858
d_gaType_718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_898
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.GovActionState.action
d_action_722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892
d_action_722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1152
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.GovActionState.expiresIn
d_expiresIn_724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  AgdaAny
d_expiresIn_724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1150
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.GovActionState.prevAction
d_prevAction_726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  AgdaAny
d_prevAction_726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1154
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.GovActionState.returnAddr
d_returnAddr_728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1148
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.GovActionState.votes
d_votes_730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1046
d_votes_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1146
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.HasDReps.DRepsOf
d_DRepsOf_796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1472
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.Credential
d_Credential_870 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ratify._.DecEq-Credential
d_DecEq'45'Credential_904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_904 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_904 v2 v3
du_DecEq'45'Credential_904 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_904 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Ratify._.Epoch
d_Epoch_958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_958 = erased
-- Ledger.Conway.Specification.Ratify._.THash
d_THash_1026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_THash_1026 = erased
-- Ledger.Conway.Specification.Ratify._.PParamGroup
d_PParamGroup_1060 a0 = ()
-- Ledger.Conway.Specification.Ratify._.PParams
d_PParams_1062 a0 = ()
-- Ledger.Conway.Specification.Ratify._.UpdateT
d_UpdateT_1072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_UpdateT_1072 = erased
-- Ledger.Conway.Specification.Ratify._.PParams.Emax
d_Emax_1448 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_Emax_1448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_410
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.a
d_a_1450 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_a_1450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_382 (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.a0
d_a0_1452 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_414 (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.b
d_b_1454 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_b_1454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_384 (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.ccMaxTermLength
d_ccMaxTermLength_1456 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_ccMaxTermLength_1456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_426
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.ccMinSize
d_ccMinSize_1458 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_ccMinSize_1458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_424
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1460 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_coinsPerUTxOByte_1460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_394
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.collateralPercentage
d_collateralPercentage_1462 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_collateralPercentage_1462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_416
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.costmdlsAssoc
d_costmdlsAssoc_1466 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_1466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_418
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.drepActivity
d_drepActivity_1468 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_drepActivity_1468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_434
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.drepDeposit
d_drepDeposit_1470 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_drepDeposit_1470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_432
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.drepThresholds
d_drepThresholds_1472 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224
d_drepThresholds_1472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.govActionDeposit
d_govActionDeposit_1474 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_govActionDeposit_1474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_430
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.govActionLifetime
d_govActionLifetime_1476 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_govActionLifetime_1476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_428
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.keyDeposit
d_keyDeposit_1478 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_keyDeposit_1478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_386
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxBlockExUnits
d_maxBlockExUnits_1480 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_maxBlockExUnits_1480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_374
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxBlockSize
d_maxBlockSize_1482 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxBlockSize_1482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_366
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxCollateralInputs
d_maxCollateralInputs_1484 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxCollateralInputs_1484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_378
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxHeaderSize
d_maxHeaderSize_1486 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxHeaderSize_1486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_370
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1488 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxRefScriptSizePerBlock_1488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_402
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1490 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxRefScriptSizePerTx_1490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_400
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxTxExUnits
d_maxTxExUnits_1492 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_maxTxExUnits_1492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_372
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxTxSize
d_maxTxSize_1494 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxTxSize_1494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_368
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.maxValSize
d_maxValSize_1496 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxValSize_1496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_376
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1498 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_398
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.minUTxOValue
d_minUTxOValue_1500 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_minUTxOValue_1500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_408
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.monetaryExpansion
d_monetaryExpansion_1502 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_390
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.nopt
d_nopt_1504 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_nopt_1504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_412
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.poolDeposit
d_poolDeposit_1506 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_poolDeposit_1506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_388
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.poolThresholds
d_poolThresholds_1508 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268
d_poolThresholds_1508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_420
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.prices
d_prices_1510 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_prices_1510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_396
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.pv
d_pv_1512 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_380 (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1514 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_406
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.refScriptCostStride
d_refScriptCostStride_1516 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_404
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.PParams.treasuryCut
d_treasuryCut_1518 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_392
      (coe v0)
-- Ledger.Conway.Specification.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_1674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_846 ->
  AgdaAny
d_'8739'_'8739'_'8739'_'8739'_1674 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_1674 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_1674 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_846 ->
  AgdaAny
du_'8739'_'8739'_'8739'_'8739'_1674 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_848
        -> coe v0
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_850
        -> coe v1
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_852
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_1686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_846 ->
  AgdaAny
d_'8739'_'8741'_'8739'_1686 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_1686 v2 v3
du_'8739'_'8741'_'8739'_1686 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_846 ->
  AgdaAny
du_'8739'_'8741'_'8739'_1686 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_848
                    -> coe v0
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_850
                    -> coe v2
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_852
                    -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.threshold
d_threshold_1696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_846 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_1696 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_922)
              v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_860
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1674 (coe du_'9472'_1838)
                       (coe
                          du_vote_1816
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_246
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
                                (coe v1))))
                       (coe
                          du_vote_1816
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_280
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_420
                                (coe v1))))
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_862
                  -> coe
                       du_'8739'_'8741'_'8739'_1686 (coe du_'9472'_1838)
                       (coe du_P'47'Q2a'47'b_1844 (coe v1) (coe v2))
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_864
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1674 (coe du_'10003'_1840 (coe v2))
                       (coe
                          du_vote_1816
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_252
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
                                (coe v1))))
                       (coe du_'9472'_1838)
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_866
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1674 (coe du_'10003'_1840 (coe v2))
                       (coe
                          du_vote_1816
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_254
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
                                (coe v1))))
                       (coe
                          du_vote_1816
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_286
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_420
                                (coe v1))))
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_868
                  -> coe
                       du_'8739'_'8741'_'8739'_1686 (coe du_'10003'_1840 (coe v2))
                       (coe du_P'47'Q5_1850 (coe v0) (coe v1) (coe v6))
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_870
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1674 (coe du_'10003'_1840 (coe v2))
                       (coe
                          du_vote_1816
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_264
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
                                (coe v1))))
                       (coe du_'9472'_1838)
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_872
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1674 (coe du_'10003''8224'_1842)
                       (coe du_'10003''8224'_1842) (coe du_'10003''8224'_1842)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Ratify._.vote
d_vote_1816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_1816 ~v0 ~v1 ~v2 ~v3 = du_vote_1816
du_vote_1816 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_1816 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Conway.Specification.Ratify._.defer
d_defer_1818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_1818 ~v0 ~v1 ~v2 ~v3 = du_defer_1818
du_defer_1818 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_1818
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Conway.Specification.Ratify._.maxThreshold
d_maxThreshold_1820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_1820 ~v0 ~v1 ~v2 ~v3 v4 = du_maxThreshold_1820 v4
du_maxThreshold_1820 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_1820 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230 (coe du__'8744'__1828)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1210
            v0))
-- Ledger.Conway.Specification.Ratify._._._∨_
d__'8744'__1828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'8744'__1828 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du__'8744'__1828 v5 v6
du__'8744'__1828 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'8744'__1828 v0 v1
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
d_'9472'_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_1838 ~v0 ~v1 ~v2 ~v3 = du_'9472'_1838
du_'9472'_1838 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_1838 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Conway.Specification.Ratify._.✓
d_'10003'_1840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_1840 ~v0 ~v1 v2 ~v3 = du_'10003'_1840 v2
du_'10003'_1840 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_1840 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
      (coe du_'10003''8224'_1842) (coe v0)
-- Ledger.Conway.Specification.Ratify._.✓†
d_'10003''8224'_1842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_1842 ~v0 ~v1 ~v2 ~v3 = du_'10003''8224'_1842
du_'10003''8224'_1842 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_1842 = coe du_vote_1816 (coe du_defer_1818)
-- Ledger.Conway.Specification.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_1844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_1844 ~v0 v1 v2 ~v3 = du_P'47'Q2a'47'b_1844 v1 v2
du_P'47'Q2a'47'b_1844 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_1844 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1816
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_248
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
                      (coe v0))))
             (coe
                du_vote_1816
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_282
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_420
                      (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1816
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_250
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
                      (coe v0))))
             (coe
                du_vote_1816
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_284
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_420
                      (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.pparamThreshold
d_pparamThreshold_1848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_212 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_1848 ~v0 v1 ~v2 ~v3 v4
  = du_pparamThreshold_1848 v1 v4
du_pparamThreshold_1848 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_212 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_1848 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_NetworkGroup_214
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1816
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_256
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
                      (coe v0))))
             (coe du_'9472'_1838)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_EconomicGroup_216
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1816
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_258
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
                      (coe v0))))
             (coe du_'9472'_1838)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_TechnicalGroup_218
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1816
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_260
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
                      (coe v0))))
             (coe du_'9472'_1838)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_GovernanceGroup_220
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1816
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_262
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
                      (coe v0))))
             (coe du_'9472'_1838)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_SecurityGroup_222
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_1838)
             (coe
                du_vote_1816
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_288
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_420
                      (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.P/Q5
d_P'47'Q5_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_1850 v0 v1 ~v2 ~v3 v4 = du_P'47'Q5_1850 v0 v1 v4
du_P'47'Q5_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_1850 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_1820
         (coe
            MAlonzo.Code.Axiom.Set.du_map_426
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_1848 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1534
               (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1568
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_govParams_1220
                     (coe v0)))
               v2)))
      (coe
         du_maxThreshold_1820
         (coe
            MAlonzo.Code.Axiom.Set.du_map_426
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_1848 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1534
               (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1568
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_govParams_1220
                     (coe v0)))
               v2)))
-- Ledger.Conway.Specification.Ratify.canVote
d_canVote_1858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_846 ->
  ()
d_canVote_1858 = erased
-- Ledger.Conway.Specification.Ratify.StakeDistrs
d_StakeDistrs_1866 a0 = ()
data T_StakeDistrs_1866
  = C_constructor_1876 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ratify.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_1872 ::
  T_StakeDistrs_1866 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_1872 v0
  = case coe v0 of
      C_constructor_1876 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.StakeDistrs.stakeDistrPools
d_stakeDistrPools_1874 ::
  T_StakeDistrs_1866 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_1874 v0
  = case coe v0 of
      C_constructor_1876 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv
d_RatifyEnv_1878 a0 = ()
data T_RatifyEnv_1878
  = C_constructor_1908 T_StakeDistrs_1866 AgdaAny
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_1894 :: T_RatifyEnv_1878 -> T_StakeDistrs_1866
d_stakeDistrs_1894 v0
  = case coe v0 of
      C_constructor_1908 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_1896 :: T_RatifyEnv_1878 -> AgdaAny
d_currentEpoch_1896 v0
  = case coe v0 of
      C_constructor_1908 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.dreps
d_dreps_1898 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1898 v0
  = case coe v0 of
      C_constructor_1908 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_1900 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1900 v0
  = case coe v0 of
      C_constructor_1908 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.treasury
d_treasury_1902 :: T_RatifyEnv_1878 -> Integer
d_treasury_1902 v0
  = case coe v0 of
      C_constructor_1908 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.pools
d_pools_1904 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1904 v0
  = case coe v0 of
      C_constructor_1908 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.delegatees
d_delegatees_1906 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_1906 v0
  = case coe v0 of
      C_constructor_1908 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyState
d_RatifyState_1910 a0 = ()
data T_RatifyState_1910
  = C_constructor_1924 MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Conway.Specification.Ratify.RatifyState.es
d_es_1918 ::
  T_RatifyState_1910 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_es_1918 v0
  = case coe v0 of
      C_constructor_1924 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyState.removed
d_removed_1920 ::
  T_RatifyState_1910 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1920 v0
  = case coe v0 of
      C_constructor_1924 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyState.delay
d_delay_1922 :: T_RatifyState_1910 -> Bool
d_delay_1922 v0
  = case coe v0 of
      C_constructor_1924 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.HasRatifyState
d_HasRatifyState_1930 a0 a1 a2 = ()
newtype T_HasRatifyState_1930
  = C_constructor_1940 (AgdaAny -> T_RatifyState_1910)
-- Ledger.Conway.Specification.Ratify.HasRatifyState.RatifyStateOf
d_RatifyStateOf_1938 ::
  T_HasRatifyState_1930 -> AgdaAny -> T_RatifyState_1910
d_RatifyStateOf_1938 v0
  = case coe v0 of
      C_constructor_1940 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.RatifyStateOf
d_RatifyStateOf_1944 ::
  T_HasRatifyState_1930 -> AgdaAny -> T_RatifyState_1910
d_RatifyStateOf_1944 v0 = coe d_RatifyStateOf_1938 (coe v0)
-- Ledger.Conway.Specification.Ratify.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214
d_HasEnactState'45'RatifyState_1946 ~v0
  = du_HasEnactState'45'RatifyState_1946
du_HasEnactState'45'RatifyState_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214
du_HasEnactState'45'RatifyState_1946
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1224
      (coe (\ v0 -> d_es_1918 (coe v0)))
-- Ledger.Conway.Specification.Ratify.HasDReps-RatifyEnv
d_HasDReps'45'RatifyEnv_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464
d_HasDReps'45'RatifyEnv_1948 ~v0 = du_HasDReps'45'RatifyEnv_1948
du_HasDReps'45'RatifyEnv_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464
du_HasDReps'45'RatifyEnv_1948
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1474
      (coe (\ v0 -> d_dreps_1898 (coe v0)))
-- Ledger.Conway.Specification.Ratify.HasTreasury-RatifyEnv
d_HasTreasury'45'RatifyEnv_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'RatifyEnv_1950 ~v0
  = du_HasTreasury'45'RatifyEnv_1950
du_HasTreasury'45'RatifyEnv_1950 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'RatifyEnv_1950
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe (\ v0 -> d_treasury_1902 (coe v0)))
-- Ledger.Conway.Specification.Ratify.HasCast-StakeDistrs
d_HasCast'45'StakeDistrs_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakeDistrs_1952 ~v0 = du_HasCast'45'StakeDistrs_1952
du_HasCast'45'StakeDistrs_1952 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'StakeDistrs_1952
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
                                 (1866 :: Integer) (11046137501266703203 :: Integer)
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
                                          (672 :: Integer) (11046137501266703203 :: Integer)
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
                                    (1866 :: Integer) (11046137501266703203 :: Integer)
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
                                             (1026 :: Integer) (11046137501266703203 :: Integer)
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
         (coe C_constructor_1876))
-- Ledger.Conway.Specification.Ratify.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_1954 ~v0 = du_HasCast'45'RatifyEnv_1954
du_HasCast'45'RatifyEnv_1954 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyEnv_1954
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
                                 (1878 :: Integer) (11046137501266703203 :: Integer)
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
                                 (1866 :: Integer) (11046137501266703203 :: Integer)
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
                                    (1878 :: Integer) (11046137501266703203 :: Integer)
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
                                    (958 :: Integer) (11046137501266703203 :: Integer)
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
                                       (1878 :: Integer) (11046137501266703203 :: Integer)
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
                                                (870 :: Integer) (11046137501266703203 :: Integer)
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
                                                                  (1238 :: Integer)
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
                                                                                 (634 :: Integer)
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
                                                                        (634 :: Integer)
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
                                                   (958 :: Integer)
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
                                          (1878 :: Integer) (11046137501266703203 :: Integer)
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
                                                   (870 :: Integer)
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
                                                                     (1238 :: Integer)
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
                                                                                    (634 :: Integer)
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
                                                                           (634 :: Integer)
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
                                                                  (870 :: Integer)
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
                                                                                    (1238 ::
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
                                                                                                   (634 ::
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
                                                                                          (634 ::
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
                                             (1878 :: Integer) (11046137501266703203 :: Integer)
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
                                                (1878 :: Integer) (11046137501266703203 :: Integer)
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
                                                         (1026 :: Integer)
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
                                                            (226 :: Integer)
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
                                                   (1878 :: Integer)
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
                                                   (676 :: Integer)
                                                   (11046137501266703203 :: Integer)
                                                   "Ledger.Conway.Specification.Ratify._.VoteDelegs"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
         (coe C_constructor_1908))
-- Ledger.Conway.Specification.Ratify.HasCast-RatifyState
d_HasCast'45'RatifyState_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_1956 ~v0 = du_HasCast'45'RatifyState_1956
du_HasCast'45'RatifyState_1956 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_1956
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
                                 (1910 :: Integer) (11046137501266703203 :: Integer)
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
                                 (452 :: Integer) (11046137501266703203 :: Integer)
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
                                    (1910 :: Integer) (11046137501266703203 :: Integer)
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
                                                            (560 :: Integer)
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
                                                               (564 :: Integer)
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
                                       (1910 :: Integer) (11046137501266703203 :: Integer)
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
         (coe C_constructor_1924))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.castVotes
d_castVotes_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2062 ~v0 ~v1 ~v2 ~v3 v4 = du_castVotes_2062 v4
du_castVotes_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_1054
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1146
         (coe v0))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.getCCHotCredential
d_getCCHotCredential_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCredential_2064 v0 v1 v2 ~v3 ~v4 v5 v6
  = du_getCCHotCredential_2064 v0 v1 v2 v5 v6
du_getCCHotCredential_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getCCHotCredential_2064 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__38
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_680
               (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_680
                  (coe v0)))
            (\ v5 v6 -> v5) v4 v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v5 v6 -> v6)
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_680
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
                                          (coe v0))) in
                          coe
                            (let v7
                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
                                          (coe v0)) in
                             coe
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
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
d_activeCC_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeCC_2074 v0 v1 v2 v3 ~v4 = du_activeCC_2074 v0 v1 v2 v3
du_activeCC_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeCC_2074 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1198
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
                       (coe du_getCCHotCredential_2064 (coe v0) (coe v1) (coe v2))
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
d_sizeActiveCC_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_sizeActiveCC_2080 v0 v1 v2 v3 ~v4
  = du_sizeActiveCC_2080 v0 v1 v2 v3
du_sizeActiveCC_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  Integer
du_sizeActiveCC_2080 v0 v1 v2 v3
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_length'738'_1218
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
               (coe v0))))
      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe du_activeCC_2074 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.actualVotes
d_actualVotes_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2082 v0 v1 v2 v3 v4
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
              (coe MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_998)
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe du_castVotes_2062 (coe v4)) (coe v5)
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
                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
                                        (coe v0))) in
                        coe
                          (let v7
                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
                                        (coe v0)) in
                           coe
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
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
                             (coe du_castVotes_2062 (coe v4)))))))))
      (coe du_activeCC_2074 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.mT
d_mT_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_2086 v0 ~v1 ~v2 v3 v4 = du_mT_2086 v0 v3 v4
du_mT_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mT_2086 v0 v1 v2
  = coe
      d_threshold_1696 v0
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
            (coe v1)))
      (coe
         MAlonzo.Code.Data.Maybe.Base.du_map_64
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1198
               (coe v1))))
      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1152
         (coe v2))
      (coe MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_848)
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.stakeDistr
d_stakeDistr_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2088 v0 v1 v2 v3 v4
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
            d_actualVotes_2082 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
      (coe (1 :: Integer))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.acceptedStake
d_acceptedStake_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_acceptedStake_2090 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
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
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
                     (coe v0)))))
         (coe
            d_stakeDistr_2088 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
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
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1234))
            (coe
               d_actualVotes_2082 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_996)))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.totalStake
d_totalStake_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_totalStake_2092 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
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
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
                     (coe v0)))))
         (coe
            d_stakeDistr_2088 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
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
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1234))
               (coe
                  d_actualVotes_2082 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
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
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_996))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_998))))))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.accepted
d_accepted_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_accepted_2098 = erased
-- Ledger.Conway.Specification.Ratify.acceptedByCC
d_acceptedByCC_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_acceptedByCC_2104 = erased
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2114 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2114 v0 = coe d_ccHotKeys_1900 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_2116 :: T_RatifyEnv_1878 -> AgdaAny
d_currentEpoch_2116 v0 = coe d_currentEpoch_1896 (coe v0)
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep._.currentEpoch
d_currentEpoch_2132 ::
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  AgdaAny
d_currentEpoch_2132 v0 ~v1 ~v2 = du_currentEpoch_2132 v0
du_currentEpoch_2132 :: T_RatifyEnv_1878 -> AgdaAny
du_currentEpoch_2132 v0 = coe d_currentEpoch_1896 (coe v0)
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep._.stakeDistrs
d_stakeDistrs_2134 ::
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  T_StakeDistrs_1866
d_stakeDistrs_2134 v0 ~v1 ~v2 = du_stakeDistrs_2134 v0
du_stakeDistrs_2134 :: T_RatifyEnv_1878 -> T_StakeDistrs_1866
du_stakeDistrs_2134 v0 = coe d_stakeDistrs_1894 (coe v0)
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep._.stakeDistrPools
d_stakeDistrPools_2138 ::
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_2138 v0 ~v1 ~v2 = du_stakeDistrPools_2138 v0
du_stakeDistrPools_2138 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDistrPools_2138 v0
  = coe d_stakeDistrPools_1874 (coe d_stakeDistrs_1894 (coe v0))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep._.stakeDistrVDeleg
d_stakeDistrVDeleg_2140 ::
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_2140 v0 ~v1 ~v2 = du_stakeDistrVDeleg_2140 v0
du_stakeDistrVDeleg_2140 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDistrVDeleg_2140 v0
  = coe d_stakeDistrVDeleg_1872 (coe d_stakeDistrs_1894 (coe v0))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.castVotes
d_castVotes_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2158 ~v0 ~v1 ~v2 v3 = du_castVotes_2158 v3
du_castVotes_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2158 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_966
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_1064)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_1056
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1146
            (coe v0)))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.activeDReps
d_activeDReps_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_2160 v0 v1 ~v2 ~v3 = du_activeDReps_2160 v0 v1
du_activeDReps_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_activeDReps_2160 v0 v1
  = coe
      MAlonzo.Code.Class.IsSet.du_dom_586
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1490
         (coe v0) (coe du_HasDReps'45'RatifyEnv_1948) (coe v1)
         (coe d_currentEpoch_1896 (coe v1)))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.predeterminedDRepVotes
d_predeterminedDRepVotes_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_predeterminedDRepVotes_2162 v0 ~v1 ~v2 v3
  = du_predeterminedDRepVotes_2162 v0 v3
du_predeterminedDRepVotes_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_predeterminedDRepVotes_2162 v0 v1
  = let v2
          = MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_898
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1152
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
                    (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1236
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
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_1066)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_1000)))
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_1068)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_998))) in
       coe
         (case coe v2 of
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_860
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
                      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1236
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
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_1066)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_1000)))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_1068)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_996)))
            _ -> coe v3))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.defaultDRepCredentialVotes
d_defaultDRepCredentialVotes_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_defaultDRepCredentialVotes_2166 v0 v1 ~v2 ~v3
  = du_defaultDRepCredentialVotes_2166 v0 v1
du_defaultDRepCredentialVotes_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_defaultDRepCredentialVotes_2166 v0 v1
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
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_1064)
         (coe du_activeDReps_2160 (coe v0) (coe v1)))
      (coe MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_998)
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.actualVotes
d_actualVotes_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2168 v0 v1 ~v2 v3 = du_actualVotes_2168 v0 v1 v3
du_actualVotes_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualVotes_2168 v0 v1 v2
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
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1236
            (coe v0)))
      (coe du_castVotes_2158 (coe v2))
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
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1236
               (coe v0)))
         (coe du_defaultDRepCredentialVotes_2166 (coe v0) (coe v1))
         (coe du_predeterminedDRepVotes_2162 (coe v0) (coe v2)))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.t
d_t_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_2170 v0 ~v1 v2 v3 = du_t_2170 v0 v2 v3
du_t_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_t_2170 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v3 -> v3))
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         d_threshold_1696 v0
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_map_64
            (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1198
                  (coe v1))))
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1152
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_850))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.acceptedStake
d_acceptedStake_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_acceptedStake_2172 v0 v1 ~v2 v3 = du_acceptedStake_2172 v0 v1 v3
du_acceptedStake_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
du_acceptedStake_2172 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1236
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
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1236
               (coe v0)))
         (coe d_stakeDistrVDeleg_1872 (coe d_stakeDistrs_1894 (coe v1)))
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
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1234))
            (coe du_actualVotes_2168 (coe v0) (coe v1) (coe v2))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_996)))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.totalStake
d_totalStake_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_totalStake_2174 v0 v1 ~v2 v3 = du_totalStake_2174 v0 v1 v3
du_totalStake_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
du_totalStake_2174 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1236
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
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1236
               (coe v0)))
         (coe d_stakeDistrVDeleg_1872 (coe d_stakeDistrs_1894 (coe v1)))
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
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1234))
               (coe du_actualVotes_2168 (coe v0) (coe v1) (coe v2))
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
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_996))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_998))))))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.accepted
d_accepted_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_accepted_2180 = erased
-- Ledger.Conway.Specification.Ratify.acceptedByDRep
d_acceptedByDRep_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_acceptedByDRep_2182 = erased
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.castVotes
d_castVotes_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2216 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_castVotes_2216 v5
du_castVotes_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_1058
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1146
         (coe v0))
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.defaultVote
d_defaultVote_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_994
d_defaultVote_2218 v0 v1 v2 ~v3 ~v4 v5 v6
  = du_defaultVote_2218 v0 v1 v2 v5 v6
du_defaultVote_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_994
du_defaultVote_2218 v0 v1 v2 v3 v4
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
                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
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
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1186
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
                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
                                               (coe v0))) in
                               coe
                                 (let v8
                                        = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                       (coe v7) (coe v8)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1186
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
                       = MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_898
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1152
                              (coe v3)) in
                 coe
                   (let v9
                          = let v9
                                  = coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_998 in
                            coe
                              (case coe v7 of
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                                   -> case coe v10 of
                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_1066
                                          -> coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_1000
                                        _ -> coe v9
                                 _ -> coe v9) in
                    coe
                      (case coe v8 of
                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_860
                           -> case coe v7 of
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                                  -> case coe v10 of
                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_1068
                                         -> coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_996
                                       _ -> coe v9
                                _ -> coe v9
                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_866
                           -> coe
                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_998
                         _ -> coe v9)))
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_998
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.actualVotes
d_actualVotes_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2228 v0 v1 v2 v3 ~v4 v5
  = du_actualVotes_2228 v0 v1 v2 v3 v5
du_actualVotes_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualVotes_2228 v0 v1 v2 v3 v4
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
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
                  (coe v0)))))
      (coe du_castVotes_2216 (coe v4))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1274
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_defaultVote_2218 (coe v0) (coe v1) (coe v2) (coe v4))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3)))
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.t
d_t_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_2230 v0 ~v1 ~v2 ~v3 v4 v5 = du_t_2230 v0 v4 v5
du_t_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_t_2230 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v3 -> v3))
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         d_threshold_1696 v0
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_map_64
            (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1198
                  (coe v1))))
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1152
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_852))
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.acceptedStake
d_acceptedStake_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_acceptedStake_2232 v0 v1 v2 v3 ~v4 v5
  = du_acceptedStake_2232 v0 v1 v2 v3 v5
du_acceptedStake_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
du_acceptedStake_2232 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
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
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
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
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1234))
            (coe
               du_actualVotes_2228 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_996)))
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.totalStake
d_totalStake_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_totalStake_2234 v0 v1 v2 v3 ~v4 v5
  = du_totalStake_2234 v0 v1 v2 v3 v5
du_totalStake_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
du_totalStake_2234 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
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
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_634
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
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1234))
               (coe
                  du_actualVotes_2228 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
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
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_996))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_998))))))
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.accepted
d_accepted_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_accepted_2240 = erased
-- Ledger.Conway.Specification.Ratify.acceptedBySPO
d_acceptedBySPO_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_acceptedBySPO_2242 = erased
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2252 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2252 v0 = coe d_ccHotKeys_1900 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_2254 :: T_RatifyEnv_1878 -> AgdaAny
d_currentEpoch_2254 v0 = coe d_currentEpoch_1896 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delegatees
d_delegatees_2256 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2256 v0 = coe d_delegatees_1906 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.dreps
d_dreps_2258 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2258 v0 = coe d_dreps_1898 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.pools
d_pools_2260 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2260 v0 = coe d_pools_1904 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrs
d_stakeDistrs_2262 :: T_RatifyEnv_1878 -> T_StakeDistrs_1866
d_stakeDistrs_2262 v0 = coe d_stakeDistrs_1894 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.treasury
d_treasury_2264 :: T_RatifyEnv_1878 -> Integer
d_treasury_2264 v0 = coe d_treasury_1902 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrPools
d_stakeDistrPools_2268 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_2268 v0
  = coe d_stakeDistrPools_1874 (coe d_stakeDistrs_1894 (coe v0))
-- Ledger.Conway.Specification.Ratify._._.stakeDistrVDeleg
d_stakeDistrVDeleg_2270 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_2270 v0
  = coe d_stakeDistrVDeleg_1872 (coe d_stakeDistrs_1894 (coe v0))
-- Ledger.Conway.Specification.Ratify.accepted
d_accepted_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_accepted_2272 = erased
-- Ledger.Conway.Specification.Ratify.expired
d_expired_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_expired_2280 = erased
-- Ledger.Conway.Specification.Ratify.verifyPrev
d_verifyPrev_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  ()
d_verifyPrev_2288 = erased
-- Ledger.Conway.Specification.Ratify.delayingAction
d_delayingAction_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  Bool
d_delayingAction_2310 ~v0 v1 = du_delayingAction_2310 v1
du_delayingAction_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  Bool
du_delayingAction_2310 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_860
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_862
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_864
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_866
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_868
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_870
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_872
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.delayed
d_delayed_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  Bool -> ()
d_delayed_2314 = erased
-- Ledger.Conway.Specification.Ratify.acceptConds
d_acceptConds_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  T_RatifyState_1910 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2324 = erased
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2340 ::
  T_RatifyEnv_1878 ->
  T_RatifyState_1910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2340 v0 ~v1 ~v2 ~v3 = du_ccHotKeys_2340 v0
du_ccHotKeys_2340 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2340 v0 = coe d_ccHotKeys_1900 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_2342 ::
  T_RatifyEnv_1878 ->
  T_RatifyState_1910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  AgdaAny
d_currentEpoch_2342 v0 ~v1 ~v2 ~v3 = du_currentEpoch_2342 v0
du_currentEpoch_2342 :: T_RatifyEnv_1878 -> AgdaAny
du_currentEpoch_2342 v0 = coe d_currentEpoch_1896 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delegatees
d_delegatees_2344 ::
  T_RatifyEnv_1878 ->
  T_RatifyState_1910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2344 v0 ~v1 ~v2 ~v3 = du_delegatees_2344 v0
du_delegatees_2344 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2344 v0 = coe d_delegatees_1906 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.dreps
d_dreps_2346 ::
  T_RatifyEnv_1878 ->
  T_RatifyState_1910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2346 v0 ~v1 ~v2 ~v3 = du_dreps_2346 v0
du_dreps_2346 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2346 v0 = coe d_dreps_1898 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.pools
d_pools_2348 ::
  T_RatifyEnv_1878 ->
  T_RatifyState_1910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2348 v0 ~v1 ~v2 ~v3 = du_pools_2348 v0
du_pools_2348 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2348 v0 = coe d_pools_1904 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrs
d_stakeDistrs_2350 ::
  T_RatifyEnv_1878 ->
  T_RatifyState_1910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  T_StakeDistrs_1866
d_stakeDistrs_2350 v0 ~v1 ~v2 ~v3 = du_stakeDistrs_2350 v0
du_stakeDistrs_2350 :: T_RatifyEnv_1878 -> T_StakeDistrs_1866
du_stakeDistrs_2350 v0 = coe d_stakeDistrs_1894 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.treasury
d_treasury_2352 ::
  T_RatifyEnv_1878 ->
  T_RatifyState_1910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_treasury_2352 v0 ~v1 ~v2 ~v3 = du_treasury_2352 v0
du_treasury_2352 :: T_RatifyEnv_1878 -> Integer
du_treasury_2352 v0 = coe d_treasury_1902 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delay
d_delay_2356 ::
  T_RatifyEnv_1878 ->
  T_RatifyState_1910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Bool
d_delay_2356 ~v0 v1 ~v2 ~v3 = du_delay_2356 v1
du_delay_2356 :: T_RatifyState_1910 -> Bool
du_delay_2356 v0 = coe d_delay_1922 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.es
d_es_2358 ::
  T_RatifyEnv_1878 ->
  T_RatifyState_1910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_es_2358 ~v0 v1 ~v2 ~v3 = du_es_2358 v1
du_es_2358 ::
  T_RatifyState_1910 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
du_es_2358 v0 = coe d_es_1918 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.removed
d_removed_2360 ::
  T_RatifyEnv_1878 ->
  T_RatifyState_1910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2360 ~v0 v1 ~v2 ~v3 = du_removed_2360 v1
du_removed_2360 ::
  T_RatifyState_1910 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_2360 v0 = coe d_removed_1920 (coe v0)
-- Ledger.Conway.Specification.Ratify.verifyPrev?
d_verifyPrev'63'_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2382 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_860
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_630
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1198
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_862
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_630
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1198
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_864
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_630
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1200
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_866
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_630
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1202
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_868
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_630
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_870
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_872
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.delayed?
d_delayed'63'_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2420 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
         (coe d_verifyPrev'63'_2382 (coe v0) (coe v1) (coe v2) (coe v3))
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
d_Is'45'nothing'63'_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_2436 ~v0 ~v1 v2 = du_Is'45'nothing'63'_2436 v2
du_Is'45'nothing'63'_2436 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_2436 v0
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
d_Is'45'just'63'_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'just'63'_2448 ~v0 ~v1 v2 = du_Is'45'just'63'_2448 v2
du_Is'45'just'63'_2448 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'just'63'_2448 v0
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
d_acceptedByCC'63'_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByCC'63'_2462 v0 v1 v2 v3
  = coe d_d_2502 (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2476 ::
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2476 v0 ~v1 ~v2 = du_ccHotKeys_2476 v0
du_ccHotKeys_2476 ::
  T_RatifyEnv_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2476 v0 = coe d_ccHotKeys_1900 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_2478 ::
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  AgdaAny
d_currentEpoch_2478 v0 ~v1 ~v2 = du_currentEpoch_2478 v0
du_currentEpoch_2478 :: T_RatifyEnv_1878 -> AgdaAny
du_currentEpoch_2478 v0 = coe d_currentEpoch_1896 (coe v0)
-- Ledger.Conway.Specification.Ratify._.acbCC.accepted
d_accepted_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_accepted_2482 = erased
-- Ledger.Conway.Specification.Ratify._.acbCC.acceptedStake
d_acceptedStake_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_acceptedStake_2484 v0 v1 v2 v3
  = coe
      d_acceptedStake_2090 (coe v0) (coe d_currentEpoch_1896 (coe v1))
      (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3)
-- Ledger.Conway.Specification.Ratify._.acbCC.activeCC
d_activeCC_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeCC_2486 v0 v1 v2 ~v3 = du_activeCC_2486 v0 v1 v2
du_activeCC_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeCC_2486 v0 v1 v2
  = coe
      du_activeCC_2074 (coe v0) (coe d_currentEpoch_1896 (coe v1))
      (coe d_ccHotKeys_1900 (coe v1)) (coe v2)
-- Ledger.Conway.Specification.Ratify._.acbCC.actualVotes
d_actualVotes_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2488 v0 v1 v2 v3
  = coe
      d_actualVotes_2082 (coe v0) (coe d_currentEpoch_1896 (coe v1))
      (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3)
-- Ledger.Conway.Specification.Ratify._.acbCC.castVotes
d_castVotes_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2490 ~v0 ~v1 ~v2 v3 = du_castVotes_2490 v3
du_castVotes_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2490 v0 = coe du_castVotes_2062 (coe v0)
-- Ledger.Conway.Specification.Ratify._.acbCC.getCCHotCredential
d_getCCHotCredential_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCredential_2492 v0 v1 ~v2 ~v3
  = du_getCCHotCredential_2492 v0 v1
du_getCCHotCredential_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getCCHotCredential_2492 v0 v1
  = coe
      du_getCCHotCredential_2064 (coe v0)
      (coe d_currentEpoch_1896 (coe v1)) (coe d_ccHotKeys_1900 (coe v1))
-- Ledger.Conway.Specification.Ratify._.acbCC.mT
d_mT_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_2494 v0 ~v1 v2 v3 = du_mT_2494 v0 v2 v3
du_mT_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mT_2494 v0 v1 v2 = coe du_mT_2086 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Ratify._.acbCC.sizeActiveCC
d_sizeActiveCC_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_sizeActiveCC_2496 v0 v1 v2 ~v3 = du_sizeActiveCC_2496 v0 v1 v2
du_sizeActiveCC_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  Integer
du_sizeActiveCC_2496 v0 v1 v2
  = coe
      du_sizeActiveCC_2080 (coe v0) (coe d_currentEpoch_1896 (coe v1))
      (coe d_ccHotKeys_1900 (coe v1)) (coe v2)
-- Ledger.Conway.Specification.Ratify._.acbCC.stakeDistr
d_stakeDistr_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2498 v0 v1 v2 v3
  = coe
      d_stakeDistr_2088 (coe v0) (coe d_currentEpoch_1896 (coe v1))
      (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3)
-- Ledger.Conway.Specification.Ratify._.acbCC.totalStake
d_totalStake_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_totalStake_2500 v0 v1 v2 v3
  = coe
      d_totalStake_2092 (coe v0) (coe d_currentEpoch_1896 (coe v1))
      (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3)
-- Ledger.Conway.Specification.Ratify._.d
d_d_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_d_2502 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
                 (coe v2)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Data.Maybe.Base.du_map_64
                 (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1198
                       (coe v2))) in
       coe
         (let v6
                = MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_898
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1152
                       (coe v3)) in
          coe
            (let v7
                   = MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_900
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1152
                          (coe v3)) in
             coe
               (case coe v6 of
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_860
                    -> let v8
                             = coe
                                 du_'8739'_'8739'_'8739'_'8739'_1674 (coe du_'9472'_1838)
                                 (coe
                                    du_vote_1816
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_246
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
                                          (coe v4))))
                                 (coe
                                    du_vote_1816
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_280
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_420
                                          (coe v4))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_848) in
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
                                      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_424
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2080 (coe v0)
                                         (coe d_currentEpoch_1896 (coe v1))
                                         (coe d_ccHotKeys_1900 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__50
                                         (coe
                                            d_acceptedStake_2090 (coe v0)
                                            (coe d_currentEpoch_1896 (coe v1))
                                            (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2092 (coe v0)
                                            (coe d_currentEpoch_1896 (coe v1))
                                            (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_862
                    -> let v8
                             = coe
                                 du_'8739'_'8741'_'8739'_1686 (coe du_'9472'_1838)
                                 (coe du_P'47'Q2a'47'b_1844 (coe v4) (coe v5))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_848) in
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
                                      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_424
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2080 (coe v0)
                                         (coe d_currentEpoch_1896 (coe v1))
                                         (coe d_ccHotKeys_1900 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__50
                                         (coe
                                            d_acceptedStake_2090 (coe v0)
                                            (coe d_currentEpoch_1896 (coe v1))
                                            (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2092 (coe v0)
                                            (coe d_currentEpoch_1896 (coe v1))
                                            (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_864
                    -> let v8
                             = coe
                                 du_'8739'_'8739'_'8739'_'8739'_1674 (coe du_'10003'_1840 (coe v5))
                                 (coe
                                    du_vote_1816
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_252
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
                                          (coe v4))))
                                 (coe du_'9472'_1838)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_848) in
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
                                      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_424
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2080 (coe v0)
                                         (coe d_currentEpoch_1896 (coe v1))
                                         (coe d_ccHotKeys_1900 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__50
                                         (coe
                                            d_acceptedStake_2090 (coe v0)
                                            (coe d_currentEpoch_1896 (coe v1))
                                            (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2092 (coe v0)
                                            (coe d_currentEpoch_1896 (coe v1))
                                            (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_866
                    -> let v8
                             = coe
                                 du_'8739'_'8739'_'8739'_'8739'_1674 (coe du_'10003'_1840 (coe v5))
                                 (coe
                                    du_vote_1816
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_254
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
                                          (coe v4))))
                                 (coe
                                    du_vote_1816
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_286
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_420
                                          (coe v4))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_848) in
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
                                      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_424
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2080 (coe v0)
                                         (coe d_currentEpoch_1896 (coe v1))
                                         (coe d_ccHotKeys_1900 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__50
                                         (coe
                                            d_acceptedStake_2090 (coe v0)
                                            (coe d_currentEpoch_1896 (coe v1))
                                            (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2092 (coe v0)
                                            (coe d_currentEpoch_1896 (coe v1))
                                            (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_868
                    -> let v8
                             = coe
                                 du_'8739'_'8741'_'8739'_1686 (coe du_'10003'_1840 (coe v5))
                                 (coe du_P'47'Q5_1850 (coe v0) (coe v4) (coe v7))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_848) in
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
                                      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_424
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2080 (coe v0)
                                         (coe d_currentEpoch_1896 (coe v1))
                                         (coe d_ccHotKeys_1900 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__50
                                         (coe
                                            d_acceptedStake_2090 (coe v0)
                                            (coe d_currentEpoch_1896 (coe v1))
                                            (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2092 (coe v0)
                                            (coe d_currentEpoch_1896 (coe v1))
                                            (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_870
                    -> let v8
                             = coe
                                 du_'8739'_'8739'_'8739'_'8739'_1674 (coe du_'10003'_1840 (coe v5))
                                 (coe
                                    du_vote_1816
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_264
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
                                          (coe v4))))
                                 (coe du_'9472'_1838)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_848) in
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
                                      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_424
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2080 (coe v0)
                                         (coe d_currentEpoch_1896 (coe v1))
                                         (coe d_ccHotKeys_1900 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__50
                                         (coe
                                            d_acceptedStake_2090 (coe v0)
                                            (coe d_currentEpoch_1896 (coe v1))
                                            (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2092 (coe v0)
                                            (coe d_currentEpoch_1896 (coe v1))
                                            (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_872
                    -> let v8
                             = coe
                                 du_'8739'_'8739'_'8739'_'8739'_1674 (coe du_'10003''8224'_1842)
                                 (coe du_'10003''8224'_1842) (coe du_'10003''8224'_1842)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_848) in
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
                                      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_424
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2080 (coe v0)
                                         (coe d_currentEpoch_1896 (coe v1))
                                         (coe d_ccHotKeys_1900 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__50
                                         (coe
                                            d_acceptedStake_2090 (coe v0)
                                            (coe d_currentEpoch_1896 (coe v1))
                                            (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2092 (coe v0)
                                            (coe d_currentEpoch_1896 (coe v1))
                                            (coe d_ccHotKeys_1900 (coe v1)) (coe v2) (coe v3))))
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
d_acceptedByDRep'63'_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByDRep'63'_2516 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
      (coe du_t_2170 (coe v0) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__50
         (coe du_acceptedStake_2172 (coe v0) (coe v1) (coe v3))
         (coe du_totalStake_2174 (coe v0) (coe v1) (coe v3)))
-- Ledger.Conway.Specification.Ratify.acceptedBySPO?
d_acceptedBySPO'63'_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBySPO'63'_2524 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
      (coe du_t_2230 (coe v0) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__50
         (coe
            du_acceptedStake_2232 (coe v0) (coe d_delegatees_1906 (coe v1))
            (coe d_pools_1904 (coe v1))
            (coe d_stakeDistrPools_1874 (coe d_stakeDistrs_1894 (coe v1)))
            (coe v3))
         (coe
            du_totalStake_2234 (coe v0) (coe d_delegatees_1906 (coe v1))
            (coe d_pools_1904 (coe v1))
            (coe d_stakeDistrPools_1874 (coe d_stakeDistrs_1894 (coe v1)))
            (coe v3)))
-- Ledger.Conway.Specification.Ratify.accepted?
d_accepted'63'_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2532 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe d_acceptedByCC'63'_2462 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe d_acceptedByDRep'63'_2516 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe d_acceptedBySPO'63'_2524 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Conway.Specification.Ratify.expired?
d_expired'63'_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2544 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.d_dec_16
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_680
               (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_680
                  (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1150
               (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_680
                  (coe v0)))
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1150
               (coe v2))
            v1))
-- Ledger.Conway.Specification.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2562 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'RATIFY'10632'__2562
  = C_RATIFY'45'Accept_2574 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_2582 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_2590 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ratify._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1878 ->
  T_RatifyState_1910 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_1910 -> ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2592 = erased
