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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify where

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
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- Ledger.Dijkstra.Specification.Ratify._.Pools
d_Pools_204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Pools_204 = erased
-- Ledger.Dijkstra.Specification.Ratify._.StakePoolParams
d_StakePoolParams_224 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.StakePoolParams.cost
d_cost_428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1250 ->
  Integer
d_cost_428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_cost_1264
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.StakePoolParams.margin
d_margin_430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1250 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_margin_1266
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.StakePoolParams.owners
d_owners_432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1250 ->
  [AgdaAny]
d_owners_432 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_owners_1262
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.StakePoolParams.pledge
d_pledge_434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1250 ->
  Integer
d_pledge_434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pledge_1268
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.StakePoolParams.rewardAccount
d_rewardAccount_436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1250 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1270
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__440 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Ratify._.EnactState
d_EnactState_460 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.EnactStateOf
d_EnactStateOf_464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1256 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228
d_EnactStateOf_464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1264
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_466 ~v0 = du_HasCast'45'EnactEnv_466
du_HasCast'45'EnactEnv_466 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EnactEnv_466
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasCast'45'EnactEnv_1278
-- Ledger.Dijkstra.Specification.Ratify._.HasEnactState
d_HasEnactState_468 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Ratify._.EnactState.cc
d_cc_510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1240 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.EnactState.constitution
d_constitution_512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1242
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.EnactState.pparams
d_pparams_514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.EnactState.pv
d_pv_516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1244 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.EnactState.withdrawals
d_withdrawals_518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1248
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.HasEnactState.EnactStateOf
d_EnactStateOf_522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1256 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228
d_EnactStateOf_522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1264
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.DRepsOf
d_DRepsOf_548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1190
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.GovAction
d_GovAction_566 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.GovActionID
d_GovActionID_572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovActionID_572 = erased
-- Ledger.Dijkstra.Specification.Ratify._.GovActionState
d_GovActionState_576 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.GovActionType
d_GovActionType_580 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.GovRole
d_GovRole_588 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.HasDReps
d_HasDReps_622 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Ratify._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1084
d_HasGovAction'45'GovActionState_636 ~v0
  = du_HasGovAction'45'GovActionState_636
du_HasGovAction'45'GovActionState_636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1084
du_HasGovAction'45'GovActionState_636
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1262
-- Ledger.Dijkstra.Specification.Ratify._.NeedsHash
d_NeedsHash_686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  ()
d_NeedsHash_686 = erased
-- Ledger.Dijkstra.Specification.Ratify._.VDeleg
d_VDeleg_708 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.Vote
d_Vote_710 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.VoteDelegs
d_VoteDelegs_712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_712 = erased
-- Ledger.Dijkstra.Specification.Ratify._.GovAction.gaData
d_gaData_752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  AgdaAny
d_gaData_752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_884
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.GovAction.gaType
d_gaType_754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858
d_gaType_754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_882
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.GovActionState.action
d_action_758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876
d_action_758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1022
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.GovActionState.expiresIn
d_expiresIn_760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny
d_expiresIn_760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1020
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.GovActionState.prevAction
d_prevAction_762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny
d_prevAction_762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1024
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.GovActionState.returnAddr
d_returnAddr_764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1018
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.GovActionState.votes
d_votes_766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_942
d_votes_766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1016
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.HasDReps.DRepsOf
d_DRepsOf_836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1190
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.Credential
d_Credential_922 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ratify._.DecEq-Credential
d_DecEq'45'Credential_952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_952 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_952 v2 v3
du_DecEq'45'Credential_952 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_952 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Ratify._.Epoch
d_Epoch_1008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_1008 = erased
-- Ledger.Dijkstra.Specification.Ratify._.THash
d_THash_1088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_THash_1088 = erased
-- Ledger.Dijkstra.Specification.Ratify._.PParamGroup
d_PParamGroup_1124 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.PParams
d_PParams_1126 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.UpdateT
d_UpdateT_1136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_UpdateT_1136 = erased
-- Ledger.Dijkstra.Specification.Ratify._.PParams.Emax
d_Emax_1508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_428
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.a
d_a_1510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_400 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.a0
d_a0_1512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_432
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.b
d_b_1514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_402 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.ccMaxTermLength
d_ccMaxTermLength_1516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_1516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_444
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.ccMinSize
d_ccMinSize_1518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_1518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_1520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.collateralPercentage
d_collateralPercentage_1522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_1522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_434
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.costmdlsAssoc
d_costmdlsAssoc_1526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676
d_costmdlsAssoc_1526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_436
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.drepActivity
d_drepActivity_1528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_1528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_452
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.drepDeposit
d_drepDeposit_1530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_1530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_450
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.drepThresholds
d_drepThresholds_1532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_1532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.govActionDeposit
d_govActionDeposit_1534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_1534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_448
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.govActionLifetime
d_govActionLifetime_1536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_1536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.keyDeposit
d_keyDeposit_1538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_1538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_404
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxBlockExUnits
d_maxBlockExUnits_1540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_1540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_392
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxBlockSize
d_maxBlockSize_1542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_1542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_384
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxCollateralInputs
d_maxCollateralInputs_1544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_1544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_396
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxHeaderSize
d_maxHeaderSize_1546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_1546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_1548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_420
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_1550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_418
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxTxExUnits
d_maxTxExUnits_1552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_1552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_390
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxTxSize
d_maxTxSize_1554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_1554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_386
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxValSize
d_maxValSize_1556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_1556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_394
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_416
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.minUTxOValue
d_minUTxOValue_1560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_1560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_426
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.monetaryExpansion
d_monetaryExpansion_1562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_408
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.nopt
d_nopt_1564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_1564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_430
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.poolDeposit
d_poolDeposit_1566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_1566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_406
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.poolThresholds
d_poolThresholds_1568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_1568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.prices
d_prices_1570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_1570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_414
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.pv
d_pv_1572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_398
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_424
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.refScriptCostStride
d_refScriptCostStride_1576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_422
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.treasuryCut
d_treasuryCut_1578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_410
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_1724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  AgdaAny
d_'8739'_'8739'_'8739'_'8739'_1724 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_1724 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_1724 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  AgdaAny
du_'8739'_'8739'_'8739'_'8739'_1724 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_CC_850
        -> coe v0
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_DRep_852
        -> coe v1
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_SPO_854
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_1736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  AgdaAny
d_'8739'_'8741'_'8739'_1736 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_1736 v2 v3
du_'8739'_'8741'_'8739'_1736 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  AgdaAny
du_'8739'_'8741'_'8739'_1736 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_CC_850
                    -> coe v0
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_DRep_852
                    -> coe v2
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_SPO_854
                    -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.threshold
d_threshold_1746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_1746 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1240)
              v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1724 (coe du_'9472'_1888)
                       (coe
                          du_vote_1866
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                (coe v1))))
                       (coe
                          du_vote_1866
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                                (coe v1))))
                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862
                  -> coe
                       du_'8739'_'8741'_'8739'_1736 (coe du_'9472'_1888)
                       (coe du_P'47'Q2a'47'b_1894 (coe v1) (coe v2))
                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1724 (coe du_'10003'_1890 (coe v2))
                       (coe
                          du_vote_1866
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                (coe v1))))
                       (coe du_'9472'_1888)
                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1724 (coe du_'10003'_1890 (coe v2))
                       (coe
                          du_vote_1866
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                (coe v1))))
                       (coe
                          du_vote_1866
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                                (coe v1))))
                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868
                  -> coe
                       du_'8739'_'8741'_'8739'_1736 (coe du_'10003'_1890 (coe v2))
                       (coe du_P'47'Q5_1900 (coe v0) (coe v1) (coe v6))
                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1724 (coe du_'10003'_1890 (coe v2))
                       (coe
                          du_vote_1866
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                (coe v1))))
                       (coe du_'9472'_1888)
                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1724 (coe du_'10003''8224'_1892)
                       (coe du_'10003''8224'_1892) (coe du_'10003''8224'_1892)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Ratify._.vote
d_vote_1866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_1866 ~v0 ~v1 ~v2 ~v3 = du_vote_1866
du_vote_1866 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_1866 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Dijkstra.Specification.Ratify._.defer
d_defer_1868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_1868 ~v0 ~v1 ~v2 ~v3 = du_defer_1868
du_defer_1868 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_1868
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Dijkstra.Specification.Ratify._.maxThreshold
d_maxThreshold_1870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_1870 ~v0 ~v1 ~v2 ~v3 v4 = du_maxThreshold_1870 v4
du_maxThreshold_1870 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_1870 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230 (coe du__'8744'__1878)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1210
            v0))
-- Ledger.Dijkstra.Specification.Ratify._._._∨_
d__'8744'__1878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'8744'__1878 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du__'8744'__1878 v5 v6
du__'8744'__1878 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'8744'__1878 v0 v1
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
-- Ledger.Dijkstra.Specification.Ratify._.─
d_'9472'_1888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_1888 ~v0 ~v1 ~v2 ~v3 = du_'9472'_1888
du_'9472'_1888 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_1888 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Dijkstra.Specification.Ratify._.✓
d_'10003'_1890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_1890 ~v0 ~v1 v2 ~v3 = du_'10003'_1890 v2
du_'10003'_1890 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_1890 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
      (coe du_'10003''8224'_1892) (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.✓†
d_'10003''8224'_1892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_1892 ~v0 ~v1 ~v2 ~v3 = du_'10003''8224'_1892
du_'10003''8224'_1892 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_1892 = coe du_vote_1866 (coe du_defer_1868)
-- Ledger.Dijkstra.Specification.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_1894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_1894 ~v0 v1 v2 ~v3 = du_P'47'Q2a'47'b_1894 v1 v2
du_P'47'Q2a'47'b_1894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_1894 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1866
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                      (coe v0))))
             (coe
                du_vote_1866
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                      (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1866
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                      (coe v0))))
             (coe
                du_vote_1866
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                      (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify._.pparamThreshold
d_pparamThreshold_1898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_1898 ~v0 v1 ~v2 ~v3 v4
  = du_pparamThreshold_1898 v1 v4
du_pparamThreshold_1898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_1898 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_NetworkGroup_234
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1866
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                      (coe v0))))
             (coe du_'9472'_1888)
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_EconomicGroup_236
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1866
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                      (coe v0))))
             (coe du_'9472'_1888)
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_TechnicalGroup_238
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1866
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                      (coe v0))))
             (coe du_'9472'_1888)
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_GovernanceGroup_240
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1866
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                      (coe v0))))
             (coe du_'9472'_1888)
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_SecurityGroup_242
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_1888)
             (coe
                du_vote_1866
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                      (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify._.P/Q5
d_P'47'Q5_1900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_1900 v0 v1 ~v2 ~v3 v4 = du_P'47'Q5_1900 v0 v1 v4
du_P'47'Q5_1900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_1900 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_1870
         (coe
            MAlonzo.Code.Axiom.Set.du_map_426
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_1898 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1482
               (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1516
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_govParams_1250
                     (coe v0)))
               v2)))
      (coe
         du_maxThreshold_1870
         (coe
            MAlonzo.Code.Axiom.Set.du_map_426
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_1898 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1482
               (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1516
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_govParams_1250
                     (coe v0)))
               v2)))
-- Ledger.Dijkstra.Specification.Ratify.canVote
d_canVote_1908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  ()
d_canVote_1908 = erased
-- Ledger.Dijkstra.Specification.Ratify.StakeDistrs
d_StakeDistrs_1916 a0 = ()
data T_StakeDistrs_1916
  = C_constructor_1926 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Ratify.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_1922 ::
  T_StakeDistrs_1916 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_1922 v0
  = case coe v0 of
      C_constructor_1926 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.StakeDistrs.stakeDistrPools
d_stakeDistrPools_1924 ::
  T_StakeDistrs_1916 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_1924 v0
  = case coe v0 of
      C_constructor_1926 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyEnv
d_RatifyEnv_1928 a0 = ()
data T_RatifyEnv_1928
  = C_constructor_1958 T_StakeDistrs_1916 AgdaAny
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_1944 :: T_RatifyEnv_1928 -> T_StakeDistrs_1916
d_stakeDistrs_1944 v0
  = case coe v0 of
      C_constructor_1958 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_1946 :: T_RatifyEnv_1928 -> AgdaAny
d_currentEpoch_1946 v0
  = case coe v0 of
      C_constructor_1958 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyEnv.dreps
d_dreps_1948 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1948 v0
  = case coe v0 of
      C_constructor_1958 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_1950 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1950 v0
  = case coe v0 of
      C_constructor_1958 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyEnv.treasury
d_treasury_1952 :: T_RatifyEnv_1928 -> Integer
d_treasury_1952 v0
  = case coe v0 of
      C_constructor_1958 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyEnv.pools
d_pools_1954 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1954 v0
  = case coe v0 of
      C_constructor_1958 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyEnv.delegatees
d_delegatees_1956 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_1956 v0
  = case coe v0 of
      C_constructor_1958 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyState
d_RatifyState_1960 a0 = ()
data T_RatifyState_1960
  = C_constructor_1974 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Dijkstra.Specification.Ratify.RatifyState.es
d_es_1968 ::
  T_RatifyState_1960 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228
d_es_1968 v0
  = case coe v0 of
      C_constructor_1974 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyState.removed
d_removed_1970 ::
  T_RatifyState_1960 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1970 v0
  = case coe v0 of
      C_constructor_1974 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyState.delay
d_delay_1972 :: T_RatifyState_1960 -> Bool
d_delay_1972 v0
  = case coe v0 of
      C_constructor_1974 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.HasRatifyState
d_HasRatifyState_1980 a0 a1 a2 = ()
newtype T_HasRatifyState_1980
  = C_constructor_1990 (AgdaAny -> T_RatifyState_1960)
-- Ledger.Dijkstra.Specification.Ratify.HasRatifyState.RatifyStateOf
d_RatifyStateOf_1988 ::
  T_HasRatifyState_1980 -> AgdaAny -> T_RatifyState_1960
d_RatifyStateOf_1988 v0
  = case coe v0 of
      C_constructor_1990 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify._.RatifyStateOf
d_RatifyStateOf_1994 ::
  T_HasRatifyState_1980 -> AgdaAny -> T_RatifyState_1960
d_RatifyStateOf_1994 v0 = coe d_RatifyStateOf_1988 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1256
d_HasEnactState'45'RatifyState_1996 ~v0
  = du_HasEnactState'45'RatifyState_1996
du_HasEnactState'45'RatifyState_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1256
du_HasEnactState'45'RatifyState_1996
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1266
      (coe (\ v0 -> d_es_1968 (coe v0)))
-- Ledger.Dijkstra.Specification.Ratify.HasDReps-RatifyEnv
d_HasDReps'45'RatifyEnv_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1182
d_HasDReps'45'RatifyEnv_1998 ~v0 = du_HasDReps'45'RatifyEnv_1998
du_HasDReps'45'RatifyEnv_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1182
du_HasDReps'45'RatifyEnv_1998
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1192
      (coe (\ v0 -> d_dreps_1948 (coe v0)))
-- Ledger.Dijkstra.Specification.Ratify.HasTreasury-RatifyEnv
d_HasTreasury'45'RatifyEnv_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'RatifyEnv_2000 ~v0
  = du_HasTreasury'45'RatifyEnv_2000
du_HasTreasury'45'RatifyEnv_2000 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'RatifyEnv_2000
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe (\ v0 -> d_treasury_1952 (coe v0)))
-- Ledger.Dijkstra.Specification.Ratify.HasCast-StakeDistrs
d_HasCast'45'StakeDistrs_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakeDistrs_2002 ~v0 = du_HasCast'45'StakeDistrs_2002
du_HasCast'45'StakeDistrs_2002 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'StakeDistrs_2002
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
                                 (1916 :: Integer) (6225261096894507446 :: Integer)
                                 "Ledger.Dijkstra.Specification.Ratify.StakeDistrs"
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
                                          (708 :: Integer) (6225261096894507446 :: Integer)
                                          "Ledger.Dijkstra.Specification.Ratify._.VDeleg"
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
                                    (1916 :: Integer) (6225261096894507446 :: Integer)
                                    "Ledger.Dijkstra.Specification.Ratify.StakeDistrs"
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
                                             (1088 :: Integer) (6225261096894507446 :: Integer)
                                             "Ledger.Dijkstra.Specification.Ratify._.THash"
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
         (coe C_constructor_1926))
-- Ledger.Dijkstra.Specification.Ratify.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_2004 ~v0 = du_HasCast'45'RatifyEnv_2004
du_HasCast'45'RatifyEnv_2004 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyEnv_2004
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
                                 (1928 :: Integer) (6225261096894507446 :: Integer)
                                 "Ledger.Dijkstra.Specification.Ratify.RatifyEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1916 :: Integer) (6225261096894507446 :: Integer)
                                 "Ledger.Dijkstra.Specification.Ratify.StakeDistrs"
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
                                    (1928 :: Integer) (6225261096894507446 :: Integer)
                                    "Ledger.Dijkstra.Specification.Ratify.RatifyEnv"
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
                                    (1008 :: Integer) (6225261096894507446 :: Integer)
                                    "Ledger.Dijkstra.Specification.Ratify._.Epoch"
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
                                       (1928 :: Integer) (6225261096894507446 :: Integer)
                                       "Ledger.Dijkstra.Specification.Ratify.RatifyEnv"
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
                                                (922 :: Integer) (6225261096894507446 :: Integer)
                                                "Ledger.Dijkstra.Specification.Ratify._.Credential"
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
                                                                  (734 :: Integer)
                                                                  (7688957888625230675 :: Integer)
                                                                  "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.globalConstants"
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
                                                                                 (640 :: Integer)
                                                                                 (7688957888625230675 ::
                                                                                    Integer)
                                                                                 "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                        (640 :: Integer)
                                                                        (7688957888625230675 ::
                                                                           Integer)
                                                                        "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                   (1008 :: Integer)
                                                   (6225261096894507446 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Ratify._.Epoch"
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
                                          (1928 :: Integer) (6225261096894507446 :: Integer)
                                          "Ledger.Dijkstra.Specification.Ratify.RatifyEnv"
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
                                                   (922 :: Integer) (6225261096894507446 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Ratify._.Credential"
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
                                                                     (734 :: Integer)
                                                                     (7688957888625230675 ::
                                                                        Integer)
                                                                     "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.globalConstants"
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
                                                                                    (640 :: Integer)
                                                                                    (7688957888625230675 ::
                                                                                       Integer)
                                                                                    "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                           (640 :: Integer)
                                                                           (7688957888625230675 ::
                                                                              Integer)
                                                                           "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                  (922 :: Integer)
                                                                  (6225261096894507446 :: Integer)
                                                                  "Ledger.Dijkstra.Specification.Ratify._.Credential"
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
                                                                                    (734 :: Integer)
                                                                                    (7688957888625230675 ::
                                                                                       Integer)
                                                                                    "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.globalConstants"
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
                                                                                                   (640 ::
                                                                                                      Integer)
                                                                                                   (7688957888625230675 ::
                                                                                                      Integer)
                                                                                                   "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                                          (640 ::
                                                                                             Integer)
                                                                                          (7688957888625230675 ::
                                                                                             Integer)
                                                                                          "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                             (1928 :: Integer) (6225261096894507446 :: Integer)
                                             "Ledger.Dijkstra.Specification.Ratify.RatifyEnv"
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
                                                (1928 :: Integer) (6225261096894507446 :: Integer)
                                                "Ledger.Dijkstra.Specification.Ratify.RatifyEnv"
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
                                                         (1088 :: Integer)
                                                         (6225261096894507446 :: Integer)
                                                         "Ledger.Dijkstra.Specification.Ratify._.THash"
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
                                                            (224 :: Integer)
                                                            (6225261096894507446 :: Integer)
                                                            "Ledger.Dijkstra.Specification.Ratify._.StakePoolParams"
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
                                                   (1928 :: Integer)
                                                   (6225261096894507446 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Ratify.RatifyEnv"
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
                                                   (712 :: Integer) (6225261096894507446 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Ratify._.VoteDelegs"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
         (coe C_constructor_1958))
-- Ledger.Dijkstra.Specification.Ratify.HasCast-RatifyState
d_HasCast'45'RatifyState_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_2006 ~v0 = du_HasCast'45'RatifyState_2006
du_HasCast'45'RatifyState_2006 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_2006
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
                                 (1960 :: Integer) (6225261096894507446 :: Integer)
                                 "Ledger.Dijkstra.Specification.Ratify.RatifyState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (460 :: Integer) (6225261096894507446 :: Integer)
                                 "Ledger.Dijkstra.Specification.Ratify._.EnactState"
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
                                    (1960 :: Integer) (6225261096894507446 :: Integer)
                                    "Ledger.Dijkstra.Specification.Ratify.RatifyState"
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
                                                            (572 :: Integer)
                                                            (6225261096894507446 :: Integer)
                                                            "Ledger.Dijkstra.Specification.Ratify._.GovActionID"
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
                                                               (576 :: Integer)
                                                               (6225261096894507446 :: Integer)
                                                               "Ledger.Dijkstra.Specification.Ratify._.GovActionState"
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
                                       (1960 :: Integer) (6225261096894507446 :: Integer)
                                       "Ledger.Dijkstra.Specification.Ratify.RatifyState"
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
         (coe C_constructor_1974))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.castVotes
d_castVotes_2112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2112 ~v0 ~v1 ~v2 ~v3 v4 = du_castVotes_2112 v4
du_castVotes_2112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_950
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1016
         (coe v0))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.getCCHotCredential
d_getCCHotCredential_2114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCredential_2114 v0 v1 v2 ~v3 ~v4 v5 v6
  = du_getCCHotCredential_2114 v0 v1 v2 v5 v6
du_getCCHotCredential_2114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getCCHotCredential_2114 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__38
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_686
               (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_686
                  (coe v0)))
            (\ v5 v6 -> v5) v4 v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v5 v6 -> v6)
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_686
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
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
                                          (coe v0))) in
                          coe
                            (let v7
                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
                                          (coe v0)) in
                             coe
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
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
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.activeCC
d_activeCC_2124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeCC_2124 v0 v1 v2 v3 ~v4 = du_activeCC_2124 v0 v1 v2 v3
du_activeCC_2124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeCC_2124 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1240
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
                       (coe du_getCCHotCredential_2114 (coe v0) (coe v1) (coe v2))
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
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.sizeActiveCC
d_sizeActiveCC_2130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_sizeActiveCC_2130 v0 v1 v2 v3 ~v4
  = du_sizeActiveCC_2130 v0 v1 v2 v3
du_sizeActiveCC_2130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  Integer
du_sizeActiveCC_2130 v0 v1 v2 v3
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_length'738'_1218
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
               (coe v0))))
      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe du_activeCC_2124 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.actualVotes
d_actualVotes_2132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2132 v0 v1 v2 v3 v4
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
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_no_894)
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe du_castVotes_2112 (coe v4)) (coe v5)
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
                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
                                        (coe v0))) in
                        coe
                          (let v7
                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                     (coe
                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
                                        (coe v0)) in
                           coe
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
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
                             (coe du_castVotes_2112 (coe v4)))))))))
      (coe du_activeCC_2124 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.mT
d_mT_2136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_2136 v0 ~v1 ~v2 v3 v4 = du_mT_2136 v0 v3 v4
du_mT_2136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mT_2136 v0 v1 v2
  = coe
      d_threshold_1746 v0
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
            (coe v1)))
      (coe
         MAlonzo.Code.Data.Maybe.Base.du_map_64
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1240
               (coe v1))))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1022
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_CC_850)
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.stakeDistr
d_stakeDistr_2138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2138 v0 v1 v2 v3 v4
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
            d_actualVotes_2132 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
      (coe (1 :: Integer))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.acceptedStake
d_acceptedStake_2140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_acceptedStake_2140 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
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
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
                     (coe v0)))))
         (coe
            d_stakeDistr_2138 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
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
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1280))
            (coe
               d_actualVotes_2132 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_yes_892)))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.totalStake
d_totalStake_2142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_totalStake_2142 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
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
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
                     (coe v0)))))
         (coe
            d_stakeDistr_2138 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1280))
               (coe
                  d_actualVotes_2132 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
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
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_yes_892))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_no_894))))))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.accepted
d_accepted_2148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_accepted_2148 = erased
-- Ledger.Dijkstra.Specification.Ratify.acceptedByCC
d_acceptedByCC_2154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_acceptedByCC_2154 = erased
-- Ledger.Dijkstra.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2164 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2164 v0 = coe d_ccHotKeys_1950 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.currentEpoch
d_currentEpoch_2166 :: T_RatifyEnv_1928 -> AgdaAny
d_currentEpoch_2166 v0 = coe d_currentEpoch_1946 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep._.currentEpoch
d_currentEpoch_2182 ::
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny
d_currentEpoch_2182 v0 ~v1 ~v2 = du_currentEpoch_2182 v0
du_currentEpoch_2182 :: T_RatifyEnv_1928 -> AgdaAny
du_currentEpoch_2182 v0 = coe d_currentEpoch_1946 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep._.stakeDistrs
d_stakeDistrs_2184 ::
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  T_StakeDistrs_1916
d_stakeDistrs_2184 v0 ~v1 ~v2 = du_stakeDistrs_2184 v0
du_stakeDistrs_2184 :: T_RatifyEnv_1928 -> T_StakeDistrs_1916
du_stakeDistrs_2184 v0 = coe d_stakeDistrs_1944 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep._.stakeDistrPools
d_stakeDistrPools_2188 ::
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_2188 v0 ~v1 ~v2 = du_stakeDistrPools_2188 v0
du_stakeDistrPools_2188 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDistrPools_2188 v0
  = coe d_stakeDistrPools_1924 (coe d_stakeDistrs_1944 (coe v0))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep._.stakeDistrVDeleg
d_stakeDistrVDeleg_2190 ::
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_2190 v0 ~v1 ~v2 = du_stakeDistrVDeleg_2190 v0
du_stakeDistrVDeleg_2190 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDistrVDeleg_2190 v0
  = coe d_stakeDistrVDeleg_1922 (coe d_stakeDistrs_1944 (coe v0))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep.castVotes
d_castVotes_2208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2208 ~v0 ~v1 ~v2 v3 = du_castVotes_2208 v3
du_castVotes_2208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2208 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_966
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_vDelegCredential_960)
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_952
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1016
            (coe v0)))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep.activeDReps
d_activeDReps_2210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_2210 v0 v1 ~v2 ~v3 = du_activeDReps_2210 v0 v1
du_activeDReps_2210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_activeDReps_2210 v0 v1
  = coe
      MAlonzo.Code.Class.IsSet.du_dom_586
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1562
         (coe v0) (coe du_HasDReps'45'RatifyEnv_1998) (coe v1)
         (coe d_currentEpoch_1946 (coe v1)))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep.predeterminedDRepVotes
d_predeterminedDRepVotes_2212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_predeterminedDRepVotes_2212 v0 ~v1 ~v2 v3
  = du_predeterminedDRepVotes_2212 v0 v3
du_predeterminedDRepVotes_2212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_predeterminedDRepVotes_2212 v0 v1
  = let v2
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_882
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1022
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
                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1282
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
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_vDelegAbstain_962)
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_abstain_896)))
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_vDelegNoConfidence_964)
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_no_894))) in
       coe
         (case coe v2 of
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860
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
                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1282
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
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_vDelegAbstain_962)
                         (coe
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_abstain_896)))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_vDelegNoConfidence_964)
                         (coe
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_yes_892)))
            _ -> coe v3))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep.defaultDRepCredentialVotes
d_defaultDRepCredentialVotes_2216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_defaultDRepCredentialVotes_2216 v0 v1 ~v2 ~v3
  = du_defaultDRepCredentialVotes_2216 v0 v1
du_defaultDRepCredentialVotes_2216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_defaultDRepCredentialVotes_2216 v0 v1
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
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_vDelegCredential_960)
         (coe du_activeDReps_2210 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_no_894)
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep.actualVotes
d_actualVotes_2218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2218 v0 v1 ~v2 v3 = du_actualVotes_2218 v0 v1 v3
du_actualVotes_2218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualVotes_2218 v0 v1 v2
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
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1282
            (coe v0)))
      (coe du_castVotes_2208 (coe v2))
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
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1282
               (coe v0)))
         (coe du_defaultDRepCredentialVotes_2216 (coe v0) (coe v1))
         (coe du_predeterminedDRepVotes_2212 (coe v0) (coe v2)))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep.t
d_t_2220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_2220 v0 ~v1 v2 v3 = du_t_2220 v0 v2 v3
du_t_2220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_t_2220 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v3 -> v3))
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         d_threshold_1746 v0
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_map_64
            (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1240
                  (coe v1))))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1022
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_DRep_852))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep.acceptedStake
d_acceptedStake_2222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_acceptedStake_2222 v0 v1 ~v2 v3 = du_acceptedStake_2222 v0 v1 v3
du_acceptedStake_2222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
du_acceptedStake_2222 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1282
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
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1282
               (coe v0)))
         (coe d_stakeDistrVDeleg_1922 (coe d_stakeDistrs_1944 (coe v1)))
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
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1280))
            (coe du_actualVotes_2218 (coe v0) (coe v1) (coe v2))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_yes_892)))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep.totalStake
d_totalStake_2224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_totalStake_2224 v0 v1 ~v2 v3 = du_totalStake_2224 v0 v1 v3
du_totalStake_2224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
du_totalStake_2224 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1282
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
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1282
               (coe v0)))
         (coe d_stakeDistrVDeleg_1922 (coe d_stakeDistrs_1944 (coe v1)))
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1280))
               (coe du_actualVotes_2218 (coe v0) (coe v1) (coe v2))
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
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_yes_892))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_no_894))))))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep.accepted
d_accepted_2230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_accepted_2230 = erased
-- Ledger.Dijkstra.Specification.Ratify.acceptedByDRep
d_acceptedByDRep_2232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_acceptedByDRep_2232 = erased
-- Ledger.Dijkstra.Specification.Ratify.AcceptedBySPO.castVotes
d_castVotes_2266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2266 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_castVotes_2266 v5
du_castVotes_2266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2266 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_954
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1016
         (coe v0))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedBySPO.defaultVote
d_defaultVote_2268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_890
d_defaultVote_2268 v0 v1 v2 ~v3 ~v4 v5 v6
  = du_defaultVote_2268 v0 v1 v2 v5 v6
du_defaultVote_2268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_890
du_defaultVote_2268 v0 v1 v2 v3 v4
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
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
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1270
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
                                               (coe v0))) in
                               coe
                                 (let v8
                                        = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                       (coe v7) (coe v8)))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1270
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
                       = MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_882
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1022
                              (coe v3)) in
                 coe
                   (let v9
                          = let v9
                                  = coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_no_894 in
                            coe
                              (case coe v7 of
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                                   -> case coe v10 of
                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_vDelegAbstain_962
                                          -> coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_abstain_896
                                        _ -> coe v9
                                 _ -> coe v9) in
                    coe
                      (case coe v8 of
                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860
                           -> case coe v7 of
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                                  -> case coe v10 of
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_vDelegNoConfidence_964
                                         -> coe
                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_yes_892
                                       _ -> coe v9
                                _ -> coe v9
                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866
                           -> coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_no_894
                         _ -> coe v9)))
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_no_894
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Ratify.AcceptedBySPO.actualVotes
d_actualVotes_2278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2278 v0 v1 v2 v3 ~v4 v5
  = du_actualVotes_2278 v0 v1 v2 v3 v5
du_actualVotes_2278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualVotes_2278 v0 v1 v2 v3 v4
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
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
                  (coe v0)))))
      (coe du_castVotes_2266 (coe v4))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1274
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_defaultVote_2268 (coe v0) (coe v1) (coe v2) (coe v4))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3)))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedBySPO.t
d_t_2280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_2280 v0 ~v1 ~v2 ~v3 v4 v5 = du_t_2280 v0 v4 v5
du_t_2280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_t_2280 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v3 -> v3))
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         d_threshold_1746 v0
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_map_64
            (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1240
                  (coe v1))))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1022
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_SPO_854))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedBySPO.acceptedStake
d_acceptedStake_2282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_acceptedStake_2282 v0 v1 v2 v3 ~v4 v5
  = du_acceptedStake_2282 v0 v1 v2 v3 v5
du_acceptedStake_2282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
du_acceptedStake_2282 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
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
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1280))
            (coe
               du_actualVotes_2278 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_yes_892)))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedBySPO.totalStake
d_totalStake_2284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_totalStake_2284 v0 v1 v2 v3 ~v4 v5
  = du_totalStake_2284 v0 v1 v2 v3 v5
du_totalStake_2284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
du_totalStake_2284 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_640
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1280))
               (coe
                  du_actualVotes_2278 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
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
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_yes_892))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_no_894))))))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedBySPO.accepted
d_accepted_2290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_accepted_2290 = erased
-- Ledger.Dijkstra.Specification.Ratify.acceptedBySPO
d_acceptedBySPO_2292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_acceptedBySPO_2292 = erased
-- Ledger.Dijkstra.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2302 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2302 v0 = coe d_ccHotKeys_1950 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.currentEpoch
d_currentEpoch_2304 :: T_RatifyEnv_1928 -> AgdaAny
d_currentEpoch_2304 v0 = coe d_currentEpoch_1946 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.delegatees
d_delegatees_2306 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2306 v0 = coe d_delegatees_1956 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.dreps
d_dreps_2308 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2308 v0 = coe d_dreps_1948 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.pools
d_pools_2310 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2310 v0 = coe d_pools_1954 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.stakeDistrs
d_stakeDistrs_2312 :: T_RatifyEnv_1928 -> T_StakeDistrs_1916
d_stakeDistrs_2312 v0 = coe d_stakeDistrs_1944 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.treasury
d_treasury_2314 :: T_RatifyEnv_1928 -> Integer
d_treasury_2314 v0 = coe d_treasury_1952 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.stakeDistrPools
d_stakeDistrPools_2318 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_2318 v0
  = coe d_stakeDistrPools_1924 (coe d_stakeDistrs_1944 (coe v0))
-- Ledger.Dijkstra.Specification.Ratify._._.stakeDistrVDeleg
d_stakeDistrVDeleg_2320 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_2320 v0
  = coe d_stakeDistrVDeleg_1922 (coe d_stakeDistrs_1944 (coe v0))
-- Ledger.Dijkstra.Specification.Ratify.accepted
d_accepted_2322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_accepted_2322 = erased
-- Ledger.Dijkstra.Specification.Ratify.expired
d_expired_2330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_expired_2330 = erased
-- Ledger.Dijkstra.Specification.Ratify.verifyPrev
d_verifyPrev_2338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  ()
d_verifyPrev_2338 = erased
-- Ledger.Dijkstra.Specification.Ratify.delayingAction
d_delayingAction_2360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  Bool
d_delayingAction_2360 ~v0 v1 = du_delayingAction_2360 v1
du_delayingAction_2360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  Bool
du_delayingAction_2360 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.delayed
d_delayed_2364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  Bool -> ()
d_delayed_2364 = erased
-- Ledger.Dijkstra.Specification.Ratify.acceptConds
d_acceptConds_2374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  T_RatifyState_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2374 = erased
-- Ledger.Dijkstra.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2390 ::
  T_RatifyEnv_1928 ->
  T_RatifyState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2390 v0 ~v1 ~v2 ~v3 = du_ccHotKeys_2390 v0
du_ccHotKeys_2390 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2390 v0 = coe d_ccHotKeys_1950 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.currentEpoch
d_currentEpoch_2392 ::
  T_RatifyEnv_1928 ->
  T_RatifyState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny
d_currentEpoch_2392 v0 ~v1 ~v2 ~v3 = du_currentEpoch_2392 v0
du_currentEpoch_2392 :: T_RatifyEnv_1928 -> AgdaAny
du_currentEpoch_2392 v0 = coe d_currentEpoch_1946 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.delegatees
d_delegatees_2394 ::
  T_RatifyEnv_1928 ->
  T_RatifyState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2394 v0 ~v1 ~v2 ~v3 = du_delegatees_2394 v0
du_delegatees_2394 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2394 v0 = coe d_delegatees_1956 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.dreps
d_dreps_2396 ::
  T_RatifyEnv_1928 ->
  T_RatifyState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2396 v0 ~v1 ~v2 ~v3 = du_dreps_2396 v0
du_dreps_2396 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2396 v0 = coe d_dreps_1948 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.pools
d_pools_2398 ::
  T_RatifyEnv_1928 ->
  T_RatifyState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2398 v0 ~v1 ~v2 ~v3 = du_pools_2398 v0
du_pools_2398 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2398 v0 = coe d_pools_1954 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.stakeDistrs
d_stakeDistrs_2400 ::
  T_RatifyEnv_1928 ->
  T_RatifyState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  T_StakeDistrs_1916
d_stakeDistrs_2400 v0 ~v1 ~v2 ~v3 = du_stakeDistrs_2400 v0
du_stakeDistrs_2400 :: T_RatifyEnv_1928 -> T_StakeDistrs_1916
du_stakeDistrs_2400 v0 = coe d_stakeDistrs_1944 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.treasury
d_treasury_2402 ::
  T_RatifyEnv_1928 ->
  T_RatifyState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_treasury_2402 v0 ~v1 ~v2 ~v3 = du_treasury_2402 v0
du_treasury_2402 :: T_RatifyEnv_1928 -> Integer
du_treasury_2402 v0 = coe d_treasury_1952 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.delay
d_delay_2406 ::
  T_RatifyEnv_1928 ->
  T_RatifyState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Bool
d_delay_2406 ~v0 v1 ~v2 ~v3 = du_delay_2406 v1
du_delay_2406 :: T_RatifyState_1960 -> Bool
du_delay_2406 v0 = coe d_delay_1972 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.es
d_es_2408 ::
  T_RatifyEnv_1928 ->
  T_RatifyState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228
d_es_2408 ~v0 v1 ~v2 ~v3 = du_es_2408 v1
du_es_2408 ::
  T_RatifyState_1960 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228
du_es_2408 v0 = coe d_es_1968 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.removed
d_removed_2410 ::
  T_RatifyEnv_1928 ->
  T_RatifyState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2410 ~v0 v1 ~v2 ~v3 = du_removed_2410 v1
du_removed_2410 ::
  T_RatifyState_1960 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_2410 v0 = coe d_removed_1970 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify.verifyPrev?
d_verifyPrev'63'_2432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2432 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_636
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1240
                      (coe v3))))
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_636
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1240
                      (coe v3))))
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_636
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1242
                      (coe v3))))
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_636
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1244
                      (coe v3))))
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_636
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
                      (coe v3))))
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.delayed?
d_delayed'63'_2470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2470 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
         (coe d_verifyPrev'63'_2432 (coe v0) (coe v1) (coe v2) (coe v3))
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
-- Ledger.Dijkstra.Specification.Ratify.Is-nothing?
d_Is'45'nothing'63'_2486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_2486 ~v0 ~v1 v2 = du_Is'45'nothing'63'_2486 v2
du_Is'45'nothing'63'_2486 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_2486 v0
  = coe
      MAlonzo.Code.Data.Maybe.Relation.Unary.All.du_dec_254
      (let v1
             = coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26) in
       coe (coe (\ v2 -> v1)))
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify.Is-just?
d_Is'45'just'63'_2498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'just'63'_2498 ~v0 ~v1 v2 = du_Is'45'just'63'_2498 v2
du_Is'45'just'63'_2498 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'just'63'_2498 v0
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
-- Ledger.Dijkstra.Specification.Ratify.acceptedByCC?
d_acceptedByCC'63'_2512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByCC'63'_2512 v0 v1 v2 v3
  = coe d_d_2552 (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Dijkstra.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2526 ::
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2526 v0 ~v1 ~v2 = du_ccHotKeys_2526 v0
du_ccHotKeys_2526 ::
  T_RatifyEnv_1928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2526 v0 = coe d_ccHotKeys_1950 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.currentEpoch
d_currentEpoch_2528 ::
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny
d_currentEpoch_2528 v0 ~v1 ~v2 = du_currentEpoch_2528 v0
du_currentEpoch_2528 :: T_RatifyEnv_1928 -> AgdaAny
du_currentEpoch_2528 v0 = coe d_currentEpoch_1946 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.accepted
d_accepted_2532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_accepted_2532 = erased
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.acceptedStake
d_acceptedStake_2534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_acceptedStake_2534 v0 v1 v2 v3
  = coe
      d_acceptedStake_2140 (coe v0) (coe d_currentEpoch_1946 (coe v1))
      (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3)
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.activeCC
d_activeCC_2536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeCC_2536 v0 v1 v2 ~v3 = du_activeCC_2536 v0 v1 v2
du_activeCC_2536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeCC_2536 v0 v1 v2
  = coe
      du_activeCC_2124 (coe v0) (coe d_currentEpoch_1946 (coe v1))
      (coe d_ccHotKeys_1950 (coe v1)) (coe v2)
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.actualVotes
d_actualVotes_2538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2538 v0 v1 v2 v3
  = coe
      d_actualVotes_2132 (coe v0) (coe d_currentEpoch_1946 (coe v1))
      (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3)
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.castVotes
d_castVotes_2540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2540 ~v0 ~v1 ~v2 v3 = du_castVotes_2540 v3
du_castVotes_2540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2540 v0 = coe du_castVotes_2112 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.getCCHotCredential
d_getCCHotCredential_2542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCredential_2542 v0 v1 ~v2 ~v3
  = du_getCCHotCredential_2542 v0 v1
du_getCCHotCredential_2542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getCCHotCredential_2542 v0 v1
  = coe
      du_getCCHotCredential_2114 (coe v0)
      (coe d_currentEpoch_1946 (coe v1)) (coe d_ccHotKeys_1950 (coe v1))
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.mT
d_mT_2544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_2544 v0 ~v1 v2 v3 = du_mT_2544 v0 v2 v3
du_mT_2544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mT_2544 v0 v1 v2 = coe du_mT_2136 (coe v0) (coe v1) (coe v2)
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.sizeActiveCC
d_sizeActiveCC_2546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_sizeActiveCC_2546 v0 v1 v2 ~v3 = du_sizeActiveCC_2546 v0 v1 v2
du_sizeActiveCC_2546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  Integer
du_sizeActiveCC_2546 v0 v1 v2
  = coe
      du_sizeActiveCC_2130 (coe v0) (coe d_currentEpoch_1946 (coe v1))
      (coe d_ccHotKeys_1950 (coe v1)) (coe v2)
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.stakeDistr
d_stakeDistr_2548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2548 v0 v1 v2 v3
  = coe
      d_stakeDistr_2138 (coe v0) (coe d_currentEpoch_1946 (coe v1))
      (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3)
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.totalStake
d_totalStake_2550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_totalStake_2550 v0 v1 v2 v3
  = coe
      d_totalStake_2142 (coe v0) (coe d_currentEpoch_1946 (coe v1))
      (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3)
-- Ledger.Dijkstra.Specification.Ratify._.d
d_d_2552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_d_2552 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
                 (coe v2)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Data.Maybe.Base.du_map_64
                 (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1240
                       (coe v2))) in
       coe
         (let v6
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_882
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1022
                       (coe v3)) in
          coe
            (let v7
                   = MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_884
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1022
                          (coe v3)) in
             coe
               (case coe v6 of
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860
                    -> let v8
                             = coe
                                 du_'8739'_'8739'_'8739'_'8739'_1724 (coe du_'9472'_1888)
                                 (coe
                                    du_vote_1866
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                          (coe v4))))
                                 (coe
                                    du_vote_1866
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                                          (coe v4))))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_CC_850) in
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
                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2130 (coe v0)
                                         (coe d_currentEpoch_1946 (coe v1))
                                         (coe d_ccHotKeys_1950 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__26
                                         (coe
                                            d_acceptedStake_2140 (coe v0)
                                            (coe d_currentEpoch_1946 (coe v1))
                                            (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2142 (coe v0)
                                            (coe d_currentEpoch_1946 (coe v1))
                                            (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862
                    -> let v8
                             = coe
                                 du_'8739'_'8741'_'8739'_1736 (coe du_'9472'_1888)
                                 (coe du_P'47'Q2a'47'b_1894 (coe v4) (coe v5))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_CC_850) in
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
                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2130 (coe v0)
                                         (coe d_currentEpoch_1946 (coe v1))
                                         (coe d_ccHotKeys_1950 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__26
                                         (coe
                                            d_acceptedStake_2140 (coe v0)
                                            (coe d_currentEpoch_1946 (coe v1))
                                            (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2142 (coe v0)
                                            (coe d_currentEpoch_1946 (coe v1))
                                            (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864
                    -> let v8
                             = coe
                                 du_'8739'_'8739'_'8739'_'8739'_1724 (coe du_'10003'_1890 (coe v5))
                                 (coe
                                    du_vote_1866
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                          (coe v4))))
                                 (coe du_'9472'_1888)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_CC_850) in
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
                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2130 (coe v0)
                                         (coe d_currentEpoch_1946 (coe v1))
                                         (coe d_ccHotKeys_1950 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__26
                                         (coe
                                            d_acceptedStake_2140 (coe v0)
                                            (coe d_currentEpoch_1946 (coe v1))
                                            (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2142 (coe v0)
                                            (coe d_currentEpoch_1946 (coe v1))
                                            (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866
                    -> let v8
                             = coe
                                 du_'8739'_'8739'_'8739'_'8739'_1724 (coe du_'10003'_1890 (coe v5))
                                 (coe
                                    du_vote_1866
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                          (coe v4))))
                                 (coe
                                    du_vote_1866
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                                          (coe v4))))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_CC_850) in
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
                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2130 (coe v0)
                                         (coe d_currentEpoch_1946 (coe v1))
                                         (coe d_ccHotKeys_1950 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__26
                                         (coe
                                            d_acceptedStake_2140 (coe v0)
                                            (coe d_currentEpoch_1946 (coe v1))
                                            (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2142 (coe v0)
                                            (coe d_currentEpoch_1946 (coe v1))
                                            (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868
                    -> let v8
                             = coe
                                 du_'8739'_'8741'_'8739'_1736 (coe du_'10003'_1890 (coe v5))
                                 (coe du_P'47'Q5_1900 (coe v0) (coe v4) (coe v7))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_CC_850) in
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
                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2130 (coe v0)
                                         (coe d_currentEpoch_1946 (coe v1))
                                         (coe d_ccHotKeys_1950 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__26
                                         (coe
                                            d_acceptedStake_2140 (coe v0)
                                            (coe d_currentEpoch_1946 (coe v1))
                                            (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2142 (coe v0)
                                            (coe d_currentEpoch_1946 (coe v1))
                                            (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870
                    -> let v8
                             = coe
                                 du_'8739'_'8739'_'8739'_'8739'_1724 (coe du_'10003'_1890 (coe v5))
                                 (coe
                                    du_vote_1866
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                          (coe v4))))
                                 (coe du_'9472'_1888)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_CC_850) in
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
                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2130 (coe v0)
                                         (coe d_currentEpoch_1946 (coe v1))
                                         (coe d_ccHotKeys_1950 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__26
                                         (coe
                                            d_acceptedStake_2140 (coe v0)
                                            (coe d_currentEpoch_1946 (coe v1))
                                            (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2142 (coe v0)
                                            (coe d_currentEpoch_1946 (coe v1))
                                            (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872
                    -> let v8
                             = coe
                                 du_'8739'_'8739'_'8739'_'8739'_1724 (coe du_'10003''8224'_1892)
                                 (coe du_'10003''8224'_1892) (coe du_'10003''8224'_1892)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_CC_850) in
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
                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2130 (coe v0)
                                         (coe d_currentEpoch_1946 (coe v1))
                                         (coe d_ccHotKeys_1950 (coe v1)) (coe v2)))
                                   (coe
                                      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
                                      (\ v10 v11 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                                              (coe v10) (coe v11)))
                                      v9
                                      (MAlonzo.Code.Ledger.Prelude.d__'47''8320'__26
                                         (coe
                                            d_acceptedStake_2140 (coe v0)
                                            (coe d_currentEpoch_1946 (coe v1))
                                            (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2142 (coe v0)
                                            (coe d_currentEpoch_1946 (coe v1))
                                            (coe d_ccHotKeys_1950 (coe v1)) (coe v2) (coe v3))))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              -> coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  _ -> MAlonzo.RTE.mazUnreachableError))))
-- Ledger.Dijkstra.Specification.Ratify.acceptedByDRep?
d_acceptedByDRep'63'_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByDRep'63'_2566 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
      (coe du_t_2220 (coe v0) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__26
         (coe du_acceptedStake_2222 (coe v0) (coe v1) (coe v3))
         (coe du_totalStake_2224 (coe v0) (coe v1) (coe v3)))
-- Ledger.Dijkstra.Specification.Ratify.acceptedBySPO?
d_acceptedBySPO'63'_2574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBySPO'63'_2574 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
      (coe du_t_2280 (coe v0) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__26
         (coe
            du_acceptedStake_2282 (coe v0) (coe d_delegatees_1956 (coe v1))
            (coe d_pools_1954 (coe v1))
            (coe d_stakeDistrPools_1924 (coe d_stakeDistrs_1944 (coe v1)))
            (coe v3))
         (coe
            du_totalStake_2284 (coe v0) (coe d_delegatees_1956 (coe v1))
            (coe d_pools_1954 (coe v1))
            (coe d_stakeDistrPools_1924 (coe d_stakeDistrs_1944 (coe v1)))
            (coe v3)))
-- Ledger.Dijkstra.Specification.Ratify.accepted?
d_accepted'63'_2582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2582 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe d_acceptedByCC'63'_2512 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe d_acceptedByDRep'63'_2566 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe d_acceptedBySPO'63'_2574 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Dijkstra.Specification.Ratify.expired?
d_expired'63'_2594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2594 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.d_dec_16
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_686
               (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_686
                  (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1020
               (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_686
                  (coe v0)))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1020
               (coe v2))
            v1))
-- Ledger.Dijkstra.Specification.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2612 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'RATIFY'10632'__2612
  = C_RATIFY'45'Accept_2624 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_2632 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_2640 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Ratify._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1928 ->
  T_RatifyState_1960 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_1960 -> ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2642 = erased
