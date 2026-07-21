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
d_Pools_224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Pools_224 = erased
-- Ledger.Dijkstra.Specification.Ratify._.StakePoolParams
d_StakePoolParams_244 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.StakePoolParams.cost
d_cost_442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1252 ->
  Integer
d_cost_442 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_cost_1266
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.StakePoolParams.margin
d_margin_444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1252 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_margin_1268
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.StakePoolParams.owners
d_owners_446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1252 ->
  [AgdaAny]
d_owners_446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_owners_1264
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.StakePoolParams.pledge
d_pledge_448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1252 ->
  Integer
d_pledge_448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pledge_1270
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.StakePoolParams.rewardAccount
d_rewardAccount_450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1252 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_450 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1272
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__454 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Ratify._.EnactState
d_EnactState_474 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.EnactStateOf
d_EnactStateOf_478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1258 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
d_EnactStateOf_478 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_480 ~v0 = du_HasCast'45'EnactEnv_480
du_HasCast'45'EnactEnv_480 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EnactEnv_480
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasCast'45'EnactEnv_1280
-- Ledger.Dijkstra.Specification.Ratify._.HasEnactState
d_HasEnactState_482 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Ratify._.EnactState.cc
d_cc_524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1242 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.EnactState.constitution
d_constitution_526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1244
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.EnactState.pparams
d_pparams_528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.EnactState.pv
d_pv_530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1246 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.EnactState.withdrawals
d_withdrawals_532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1250
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.HasEnactState.EnactStateOf
d_EnactStateOf_536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1258 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
d_EnactStateOf_536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.DRepsOf
d_DRepsOf_562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1194
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.GovAction
d_GovAction_580 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.GovActionID
d_GovActionID_586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovActionID_586 = erased
-- Ledger.Dijkstra.Specification.Ratify._.GovActionState
d_GovActionState_590 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.GovActionType
d_GovActionType_594 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.GovRole
d_GovRole_602 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.HasDReps
d_HasDReps_636 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Ratify._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1088
d_HasGovAction'45'GovActionState_650 ~v0
  = du_HasGovAction'45'GovActionState_650
du_HasGovAction'45'GovActionState_650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1088
du_HasGovAction'45'GovActionState_650
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1266
-- Ledger.Dijkstra.Specification.Ratify._.NeedsHash
d_NeedsHash_700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  ()
d_NeedsHash_700 = erased
-- Ledger.Dijkstra.Specification.Ratify._.VDeleg
d_VDeleg_722 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.Vote
d_Vote_724 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.VoteDelegs
d_VoteDelegs_726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_726 = erased
-- Ledger.Dijkstra.Specification.Ratify._.GovAction.gaData
d_gaData_766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  AgdaAny
d_gaData_766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_884
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.GovAction.gaType
d_gaType_768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858
d_gaType_768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_882
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.GovActionState.action
d_action_772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876
d_action_772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1024
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.GovActionState.deposit
d_deposit_774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_deposit_774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1028
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.GovActionState.expiresIn
d_expiresIn_776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny
d_expiresIn_776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1022
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.GovActionState.prevAction
d_prevAction_778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny
d_prevAction_778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1026
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.GovActionState.returnAddr
d_returnAddr_780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1020
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.GovActionState.votes
d_votes_782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_942
d_votes_782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1018
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.HasDReps.DRepsOf
d_DRepsOf_852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_852 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1194
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.Credential
d_Credential_938 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Ratify._.DecEq-Credential
d_DecEq'45'Credential_968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_968 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_968 v2 v3
du_DecEq'45'Credential_968 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_968 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Ratify._.Epoch
d_Epoch_1024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_1024 = erased
-- Ledger.Dijkstra.Specification.Ratify._.THash
d_THash_1104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_THash_1104 = erased
-- Ledger.Dijkstra.Specification.Ratify._.PParamGroup
d_PParamGroup_1140 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.PParams
d_PParams_1142 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify._.UpdateT
d_UpdateT_1152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_UpdateT_1152 = erased
-- Ledger.Dijkstra.Specification.Ratify._.PParams.Emax
d_Emax_1524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_428
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.a
d_a_1526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_400 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.a0
d_a0_1528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_432
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.b
d_b_1530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_402 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.ccMaxTermLength
d_ccMaxTermLength_1532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_1532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_444
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.ccMinSize
d_ccMinSize_1534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_1534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_1536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.collateralPercentage
d_collateralPercentage_1538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_1538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_434
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.costmdlsAssoc
d_costmdlsAssoc_1542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676
d_costmdlsAssoc_1542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_436
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.drepActivity
d_drepActivity_1544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_1544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_452
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.drepDeposit
d_drepDeposit_1546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_1546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_450
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.drepThresholds
d_drepThresholds_1548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_1548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.govActionDeposit
d_govActionDeposit_1550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_1550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_448
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.govActionLifetime
d_govActionLifetime_1552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_1552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.keyDeposit
d_keyDeposit_1554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_1554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_404
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxBlockExUnits
d_maxBlockExUnits_1556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_1556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_392
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxBlockSize
d_maxBlockSize_1558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_1558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_384
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxCollateralInputs
d_maxCollateralInputs_1560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_1560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_396
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxHeaderSize
d_maxHeaderSize_1562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_1562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_1564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_420
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_1566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_418
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxTxExUnits
d_maxTxExUnits_1568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_1568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_390
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxTxSize
d_maxTxSize_1570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_1570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_386
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.maxValSize
d_maxValSize_1572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_1572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_394
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_416
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.minUTxOValue
d_minUTxOValue_1576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_1576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_426
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.monetaryExpansion
d_monetaryExpansion_1578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_408
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.nopt
d_nopt_1580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_1580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_430
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.poolDeposit
d_poolDeposit_1582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_1582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_406
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.poolThresholds
d_poolThresholds_1584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_1584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.prices
d_prices_1586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_1586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_414
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.pv
d_pv_1588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_398
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1590 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_424
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.refScriptCostStride
d_refScriptCostStride_1592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_422
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.PParams.treasuryCut
d_treasuryCut_1594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1594 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_410
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_1740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  AgdaAny
d_'8739'_'8739'_'8739'_'8739'_1740 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_1740 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_1740 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  AgdaAny
du_'8739'_'8739'_'8739'_'8739'_1740 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_CC_850
        -> coe v0
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_DRep_852
        -> coe v1
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_SPO_854
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_1752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  AgdaAny
d_'8739'_'8741'_'8739'_1752 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_1752 v2 v3
du_'8739'_'8741'_'8739'_1752 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  AgdaAny
du_'8739'_'8741'_'8739'_1752 v0 v1
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
d_threshold_1762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_1762 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1244)
              v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1740 (coe du_'9472'_1904)
                       (coe
                          du_vote_1882
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                (coe v1))))
                       (coe
                          du_vote_1882
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                                (coe v1))))
                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_862
                  -> coe
                       du_'8739'_'8741'_'8739'_1752 (coe du_'9472'_1904)
                       (coe du_P'47'Q2a'47'b_1910 (coe v1) (coe v2))
                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_864
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1740 (coe du_'10003'_1906 (coe v2))
                       (coe
                          du_vote_1882
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                (coe v1))))
                       (coe du_'9472'_1904)
                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_866
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1740 (coe du_'10003'_1906 (coe v2))
                       (coe
                          du_vote_1882
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                (coe v1))))
                       (coe
                          du_vote_1882
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                                (coe v1))))
                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_868
                  -> coe
                       du_'8739'_'8741'_'8739'_1752 (coe du_'10003'_1906 (coe v2))
                       (coe du_P'47'Q5_1916 (coe v0) (coe v1) (coe v6))
                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_870
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1740 (coe du_'10003'_1906 (coe v2))
                       (coe
                          du_vote_1882
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                (coe v1))))
                       (coe du_'9472'_1904)
                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_872
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_1740 (coe du_'10003''8224'_1908)
                       (coe du_'10003''8224'_1908) (coe du_'10003''8224'_1908)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Ratify._.vote
d_vote_1882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_1882 ~v0 ~v1 ~v2 ~v3 = du_vote_1882
du_vote_1882 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_1882 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Dijkstra.Specification.Ratify._.defer
d_defer_1884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_1884 ~v0 ~v1 ~v2 ~v3 = du_defer_1884
du_defer_1884 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_1884
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Dijkstra.Specification.Ratify._.maxThreshold
d_maxThreshold_1886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_1886 ~v0 ~v1 ~v2 ~v3 v4 = du_maxThreshold_1886 v4
du_maxThreshold_1886 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_1886 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230 (coe du__'8744'__1894)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1210
            v0))
-- Ledger.Dijkstra.Specification.Ratify._._._∨_
d__'8744'__1894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'8744'__1894 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du__'8744'__1894 v5 v6
du__'8744'__1894 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'8744'__1894 v0 v1
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
d_'9472'_1904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_1904 ~v0 ~v1 ~v2 ~v3 = du_'9472'_1904
du_'9472'_1904 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_1904 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Dijkstra.Specification.Ratify._.✓
d_'10003'_1906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_1906 ~v0 ~v1 v2 ~v3 = du_'10003'_1906 v2
du_'10003'_1906 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_1906 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
      (coe du_'10003''8224'_1908) (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.✓†
d_'10003''8224'_1908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_1908 ~v0 ~v1 ~v2 ~v3 = du_'10003''8224'_1908
du_'10003''8224'_1908 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_1908 = coe du_vote_1882 (coe du_defer_1884)
-- Ledger.Dijkstra.Specification.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_1910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_1910 ~v0 v1 v2 ~v3 = du_P'47'Q2a'47'b_1910 v1 v2
du_P'47'Q2a'47'b_1910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_1910 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1882
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                      (coe v0))))
             (coe
                du_vote_1882
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                      (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1882
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                      (coe v0))))
             (coe
                du_vote_1882
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                      (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify._.pparamThreshold
d_pparamThreshold_1914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_1914 ~v0 v1 ~v2 ~v3 v4
  = du_pparamThreshold_1914 v1 v4
du_pparamThreshold_1914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_1914 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_NetworkGroup_234
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1882
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                      (coe v0))))
             (coe du_'9472'_1904)
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_EconomicGroup_236
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1882
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                      (coe v0))))
             (coe du_'9472'_1904)
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_TechnicalGroup_238
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1882
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                      (coe v0))))
             (coe du_'9472'_1904)
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_GovernanceGroup_240
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1882
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                      (coe v0))))
             (coe du_'9472'_1904)
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_SecurityGroup_242
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_1904)
             (coe
                du_vote_1882
                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
                   (coe
                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
                      (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify._.P/Q5
d_P'47'Q5_1916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_1916 v0 v1 ~v2 ~v3 v4 = du_P'47'Q5_1916 v0 v1 v4
du_P'47'Q5_1916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_1916 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_1886
         (coe
            MAlonzo.Code.Axiom.Set.du_map_426
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_1914 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1482
               (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1516
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_govParams_1250
                     (coe v0)))
               v2)))
      (coe
         du_maxThreshold_1886
         (coe
            MAlonzo.Code.Axiom.Set.du_map_426
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_1914 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1482
               (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1516
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_govParams_1250
                     (coe v0)))
               v2)))
-- Ledger.Dijkstra.Specification.Ratify.canVote
d_canVote_1924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  ()
d_canVote_1924 = erased
-- Ledger.Dijkstra.Specification.Ratify.StakeDistrs
d_StakeDistrs_1932 a0 = ()
data T_StakeDistrs_1932
  = C_constructor_1942 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Ratify.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_1938 ::
  T_StakeDistrs_1932 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_1938 v0
  = case coe v0 of
      C_constructor_1942 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.StakeDistrs.stakeDistrPools
d_stakeDistrPools_1940 ::
  T_StakeDistrs_1932 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_1940 v0
  = case coe v0 of
      C_constructor_1942 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyEnv
d_RatifyEnv_1944 a0 = ()
data T_RatifyEnv_1944
  = C_constructor_1974 T_StakeDistrs_1932 AgdaAny
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_1960 :: T_RatifyEnv_1944 -> T_StakeDistrs_1932
d_stakeDistrs_1960 v0
  = case coe v0 of
      C_constructor_1974 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_1962 :: T_RatifyEnv_1944 -> AgdaAny
d_currentEpoch_1962 v0
  = case coe v0 of
      C_constructor_1974 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyEnv.dreps
d_dreps_1964 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1964 v0
  = case coe v0 of
      C_constructor_1974 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_1966 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1966 v0
  = case coe v0 of
      C_constructor_1974 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyEnv.treasury
d_treasury_1968 :: T_RatifyEnv_1944 -> Integer
d_treasury_1968 v0
  = case coe v0 of
      C_constructor_1974 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyEnv.pools
d_pools_1970 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1970 v0
  = case coe v0 of
      C_constructor_1974 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyEnv.delegatees
d_delegatees_1972 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_1972 v0
  = case coe v0 of
      C_constructor_1974 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyState
d_RatifyState_1976 a0 = ()
data T_RatifyState_1976
  = C_constructor_1990 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Dijkstra.Specification.Ratify.RatifyState.es
d_es_1984 ::
  T_RatifyState_1976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
d_es_1984 v0
  = case coe v0 of
      C_constructor_1990 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyState.removed
d_removed_1986 ::
  T_RatifyState_1976 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1986 v0
  = case coe v0 of
      C_constructor_1990 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.RatifyState.delay
d_delay_1988 :: T_RatifyState_1976 -> Bool
d_delay_1988 v0
  = case coe v0 of
      C_constructor_1990 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify.HasRatifyState
d_HasRatifyState_1996 a0 a1 a2 = ()
newtype T_HasRatifyState_1996
  = C_constructor_2006 (AgdaAny -> T_RatifyState_1976)
-- Ledger.Dijkstra.Specification.Ratify.HasRatifyState.RatifyStateOf
d_RatifyStateOf_2004 ::
  T_HasRatifyState_1996 -> AgdaAny -> T_RatifyState_1976
d_RatifyStateOf_2004 v0
  = case coe v0 of
      C_constructor_2006 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ratify._.RatifyStateOf
d_RatifyStateOf_2010 ::
  T_HasRatifyState_1996 -> AgdaAny -> T_RatifyState_1976
d_RatifyStateOf_2010 v0 = coe d_RatifyStateOf_2004 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1258
d_HasEnactState'45'RatifyState_2012 ~v0
  = du_HasEnactState'45'RatifyState_2012
du_HasEnactState'45'RatifyState_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1258
du_HasEnactState'45'RatifyState_2012
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1268
      (coe (\ v0 -> d_es_1984 (coe v0)))
-- Ledger.Dijkstra.Specification.Ratify.HasDReps-RatifyEnv
d_HasDReps'45'RatifyEnv_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186
d_HasDReps'45'RatifyEnv_2014 ~v0 = du_HasDReps'45'RatifyEnv_2014
du_HasDReps'45'RatifyEnv_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186
du_HasDReps'45'RatifyEnv_2014
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1196
      (coe (\ v0 -> d_dreps_1964 (coe v0)))
-- Ledger.Dijkstra.Specification.Ratify.HasTreasury-RatifyEnv
d_HasTreasury'45'RatifyEnv_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'RatifyEnv_2016 ~v0
  = du_HasTreasury'45'RatifyEnv_2016
du_HasTreasury'45'RatifyEnv_2016 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'RatifyEnv_2016
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe (\ v0 -> d_treasury_1968 (coe v0)))
-- Ledger.Dijkstra.Specification.Ratify.HasCast-StakeDistrs
d_HasCast'45'StakeDistrs_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakeDistrs_2018 ~v0 = du_HasCast'45'StakeDistrs_2018
du_HasCast'45'StakeDistrs_2018 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'StakeDistrs_2018
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
                                 (1932 :: Integer) (6225261096894507446 :: Integer)
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
                                          (722 :: Integer) (6225261096894507446 :: Integer)
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
                                    (1932 :: Integer) (6225261096894507446 :: Integer)
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
                                             (1104 :: Integer) (6225261096894507446 :: Integer)
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
         (coe C_constructor_1942))
-- Ledger.Dijkstra.Specification.Ratify.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_2020 ~v0 = du_HasCast'45'RatifyEnv_2020
du_HasCast'45'RatifyEnv_2020 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyEnv_2020
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
                                 (1944 :: Integer) (6225261096894507446 :: Integer)
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
                                 (1932 :: Integer) (6225261096894507446 :: Integer)
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
                                    (1944 :: Integer) (6225261096894507446 :: Integer)
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
                                    (1024 :: Integer) (6225261096894507446 :: Integer)
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
                                       (1944 :: Integer) (6225261096894507446 :: Integer)
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
                                                (938 :: Integer) (6225261096894507446 :: Integer)
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
                                                   (1024 :: Integer)
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
                                          (1944 :: Integer) (6225261096894507446 :: Integer)
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
                                                   (938 :: Integer) (6225261096894507446 :: Integer)
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
                                                                  (938 :: Integer)
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
                                             (1944 :: Integer) (6225261096894507446 :: Integer)
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
                                                (1944 :: Integer) (6225261096894507446 :: Integer)
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
                                                         (1104 :: Integer)
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
                                                            (244 :: Integer)
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
                                                   (1944 :: Integer)
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
                                                   (726 :: Integer) (6225261096894507446 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Ratify._.VoteDelegs"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
         (coe C_constructor_1974))
-- Ledger.Dijkstra.Specification.Ratify.HasCast-RatifyState
d_HasCast'45'RatifyState_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_2022 ~v0 = du_HasCast'45'RatifyState_2022
du_HasCast'45'RatifyState_2022 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_2022
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
                                 (1976 :: Integer) (6225261096894507446 :: Integer)
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
                                 (474 :: Integer) (6225261096894507446 :: Integer)
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
                                    (1976 :: Integer) (6225261096894507446 :: Integer)
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
                                                            (586 :: Integer)
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
                                                               (590 :: Integer)
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
                                       (1976 :: Integer) (6225261096894507446 :: Integer)
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
         (coe C_constructor_1990))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.castVotes
d_castVotes_2130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2130 ~v0 ~v1 ~v2 ~v3 v4 = du_castVotes_2130 v4
du_castVotes_2130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2130 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_950
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1018
         (coe v0))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.getCCHotCredential
d_getCCHotCredential_2132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCredential_2132 v0 v1 v2 ~v3 ~v4 v5 v6
  = du_getCCHotCredential_2132 v0 v1 v2 v5 v6
du_getCCHotCredential_2132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getCCHotCredential_2132 v0 v1 v2 v3 v4
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
d_activeCC_2142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeCC_2142 v0 v1 v2 v3 ~v4 = du_activeCC_2142 v0 v1 v2 v3
du_activeCC_2142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeCC_2142 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1242
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
                       (coe du_getCCHotCredential_2132 (coe v0) (coe v1) (coe v2))
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
d_sizeActiveCC_2148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_sizeActiveCC_2148 v0 v1 v2 v3 ~v4
  = du_sizeActiveCC_2148 v0 v1 v2 v3
du_sizeActiveCC_2148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  Integer
du_sizeActiveCC_2148 v0 v1 v2 v3
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
         (coe du_activeCC_2142 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.actualVotes
d_actualVotes_2150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2150 v0 v1 v2 v3 v4
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
                 (coe du_castVotes_2130 (coe v4)) (coe v5)
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
                             (coe du_castVotes_2130 (coe v4)))))))))
      (coe du_activeCC_2142 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.mT
d_mT_2154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_2154 v0 ~v1 ~v2 v3 v4 = du_mT_2154 v0 v3 v4
du_mT_2154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mT_2154 v0 v1 v2
  = coe
      d_threshold_1762 v0
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
            (coe v1)))
      (coe
         MAlonzo.Code.Data.Maybe.Base.du_map_64
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1242
               (coe v1))))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1024
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_CC_850)
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.stakeDistr
d_stakeDistr_2156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2156 v0 v1 v2 v3 v4
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
            d_actualVotes_2150 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
      (coe (1 :: Integer))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.acceptedStake
d_acceptedStake_2158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_acceptedStake_2158 v0 v1 v2 v3 v4
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
            d_stakeDistr_2156 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
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
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1284))
            (coe
               d_actualVotes_2150 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_yes_892)))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByCC.totalStake
d_totalStake_2160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_totalStake_2160 v0 v1 v2 v3 v4
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
            d_stakeDistr_2156 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1284))
               (coe
                  d_actualVotes_2150 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
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
d_accepted_2166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_accepted_2166 = erased
-- Ledger.Dijkstra.Specification.Ratify.acceptedByCC
d_acceptedByCC_2172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_acceptedByCC_2172 = erased
-- Ledger.Dijkstra.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2182 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2182 v0 = coe d_ccHotKeys_1966 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.currentEpoch
d_currentEpoch_2184 :: T_RatifyEnv_1944 -> AgdaAny
d_currentEpoch_2184 v0 = coe d_currentEpoch_1962 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep._.currentEpoch
d_currentEpoch_2200 ::
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny
d_currentEpoch_2200 v0 ~v1 ~v2 = du_currentEpoch_2200 v0
du_currentEpoch_2200 :: T_RatifyEnv_1944 -> AgdaAny
du_currentEpoch_2200 v0 = coe d_currentEpoch_1962 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep._.stakeDistrs
d_stakeDistrs_2202 ::
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  T_StakeDistrs_1932
d_stakeDistrs_2202 v0 ~v1 ~v2 = du_stakeDistrs_2202 v0
du_stakeDistrs_2202 :: T_RatifyEnv_1944 -> T_StakeDistrs_1932
du_stakeDistrs_2202 v0 = coe d_stakeDistrs_1960 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep._.stakeDistrPools
d_stakeDistrPools_2206 ::
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_2206 v0 ~v1 ~v2 = du_stakeDistrPools_2206 v0
du_stakeDistrPools_2206 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDistrPools_2206 v0
  = coe d_stakeDistrPools_1940 (coe d_stakeDistrs_1960 (coe v0))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep._.stakeDistrVDeleg
d_stakeDistrVDeleg_2208 ::
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_2208 v0 ~v1 ~v2 = du_stakeDistrVDeleg_2208 v0
du_stakeDistrVDeleg_2208 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDistrVDeleg_2208 v0
  = coe d_stakeDistrVDeleg_1938 (coe d_stakeDistrs_1960 (coe v0))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep.castVotes
d_castVotes_2228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2228 ~v0 ~v1 ~v2 v3 = du_castVotes_2228 v3
du_castVotes_2228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2228 v0
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
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1018
            (coe v0)))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep.activeDReps
d_activeDReps_2230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_2230 v0 v1 ~v2 ~v3 = du_activeDReps_2230 v0 v1
du_activeDReps_2230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_activeDReps_2230 v0 v1
  = coe
      MAlonzo.Code.Class.IsSet.du_dom_586
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1566
         (coe v0) (coe du_HasDReps'45'RatifyEnv_2014) (coe v1)
         (coe d_currentEpoch_1962 (coe v1)))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep.predeterminedDRepVotes
d_predeterminedDRepVotes_2232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_predeterminedDRepVotes_2232 v0 ~v1 ~v2 v3
  = du_predeterminedDRepVotes_2232 v0 v3
du_predeterminedDRepVotes_2232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_predeterminedDRepVotes_2232 v0 v1
  = let v2
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_882
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1024
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
                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1286
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
                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1286
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
d_defaultDRepCredentialVotes_2236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_defaultDRepCredentialVotes_2236 v0 v1 ~v2 ~v3
  = du_defaultDRepCredentialVotes_2236 v0 v1
du_defaultDRepCredentialVotes_2236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_defaultDRepCredentialVotes_2236 v0 v1
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
         (coe du_activeDReps_2230 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_no_894)
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep.actualVotes
d_actualVotes_2238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2238 v0 v1 ~v2 v3 = du_actualVotes_2238 v0 v1 v3
du_actualVotes_2238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualVotes_2238 v0 v1 v2
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
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1286
            (coe v0)))
      (coe du_castVotes_2228 (coe v2))
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
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1286
               (coe v0)))
         (coe du_defaultDRepCredentialVotes_2236 (coe v0) (coe v1))
         (coe du_predeterminedDRepVotes_2232 (coe v0) (coe v2)))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep.t
d_t_2240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_2240 v0 ~v1 v2 v3 = du_t_2240 v0 v2 v3
du_t_2240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_t_2240 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v3 -> v3))
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         d_threshold_1762 v0
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_map_64
            (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1242
                  (coe v1))))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1024
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_DRep_852))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep.acceptedStake
d_acceptedStake_2242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_acceptedStake_2242 v0 v1 ~v2 v3 = du_acceptedStake_2242 v0 v1 v3
du_acceptedStake_2242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
du_acceptedStake_2242 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1286
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
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1286
               (coe v0)))
         (coe d_stakeDistrVDeleg_1938 (coe d_stakeDistrs_1960 (coe v1)))
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
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1284))
            (coe du_actualVotes_2238 (coe v0) (coe v1) (coe v2))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_yes_892)))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedByDRep.totalStake
d_totalStake_2244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_totalStake_2244 v0 v1 ~v2 v3 = du_totalStake_2244 v0 v1 v3
du_totalStake_2244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
du_totalStake_2244 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1286
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
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1286
               (coe v0)))
         (coe d_stakeDistrVDeleg_1938 (coe d_stakeDistrs_1960 (coe v1)))
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1284))
               (coe du_actualVotes_2238 (coe v0) (coe v1) (coe v2))
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
d_accepted_2250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_accepted_2250 = erased
-- Ledger.Dijkstra.Specification.Ratify.acceptedByDRep
d_acceptedByDRep_2252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_acceptedByDRep_2252 = erased
-- Ledger.Dijkstra.Specification.Ratify.AcceptedBySPO.castVotes
d_castVotes_2288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2288 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_castVotes_2288 v5
du_castVotes_2288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2288 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_954
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1018
         (coe v0))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedBySPO.defaultVote
d_defaultVote_2290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_890
d_defaultVote_2290 v0 v1 v2 ~v3 ~v4 v5 v6
  = du_defaultVote_2290 v0 v1 v2 v5 v6
du_defaultVote_2290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_890
du_defaultVote_2290 v0 v1 v2 v3 v4
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
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1272
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
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1272
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
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1024
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
d_actualVotes_2300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2300 v0 v1 v2 v3 ~v4 v5
  = du_actualVotes_2300 v0 v1 v2 v3 v5
du_actualVotes_2300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualVotes_2300 v0 v1 v2 v3 v4
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
      (coe du_castVotes_2288 (coe v4))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1274
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_defaultVote_2290 (coe v0) (coe v1) (coe v2) (coe v4))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3)))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedBySPO.t
d_t_2302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_2302 v0 ~v1 ~v2 ~v3 v4 v5 = du_t_2302 v0 v4 v5
du_t_2302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_t_2302 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v3 -> v3))
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         d_threshold_1762 v0
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_map_64
            (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1242
                  (coe v1))))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1024
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_SPO_854))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedBySPO.acceptedStake
d_acceptedStake_2304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_acceptedStake_2304 v0 v1 v2 v3 ~v4 v5
  = du_acceptedStake_2304 v0 v1 v2 v3 v5
du_acceptedStake_2304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
du_acceptedStake_2304 v0 v1 v2 v3 v4
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
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1284))
            (coe
               du_actualVotes_2300 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_yes_892)))
-- Ledger.Dijkstra.Specification.Ratify.AcceptedBySPO.totalStake
d_totalStake_2306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_totalStake_2306 v0 v1 v2 v3 ~v4 v5
  = du_totalStake_2306 v0 v1 v2 v3 v5
du_totalStake_2306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
du_totalStake_2306 v0 v1 v2 v3 v4
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1284))
               (coe
                  du_actualVotes_2300 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
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
d_accepted_2312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_accepted_2312 = erased
-- Ledger.Dijkstra.Specification.Ratify.acceptedBySPO
d_acceptedBySPO_2314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_acceptedBySPO_2314 = erased
-- Ledger.Dijkstra.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2324 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2324 v0 = coe d_ccHotKeys_1966 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.currentEpoch
d_currentEpoch_2326 :: T_RatifyEnv_1944 -> AgdaAny
d_currentEpoch_2326 v0 = coe d_currentEpoch_1962 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.delegatees
d_delegatees_2328 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2328 v0 = coe d_delegatees_1972 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.dreps
d_dreps_2330 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2330 v0 = coe d_dreps_1964 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.pools
d_pools_2332 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2332 v0 = coe d_pools_1970 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.stakeDistrs
d_stakeDistrs_2334 :: T_RatifyEnv_1944 -> T_StakeDistrs_1932
d_stakeDistrs_2334 v0 = coe d_stakeDistrs_1960 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.treasury
d_treasury_2336 :: T_RatifyEnv_1944 -> Integer
d_treasury_2336 v0 = coe d_treasury_1968 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.stakeDistrPools
d_stakeDistrPools_2340 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_2340 v0
  = coe d_stakeDistrPools_1940 (coe d_stakeDistrs_1960 (coe v0))
-- Ledger.Dijkstra.Specification.Ratify._._.stakeDistrVDeleg
d_stakeDistrVDeleg_2342 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_2342 v0
  = coe d_stakeDistrVDeleg_1938 (coe d_stakeDistrs_1960 (coe v0))
-- Ledger.Dijkstra.Specification.Ratify.accepted
d_accepted_2344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_accepted_2344 = erased
-- Ledger.Dijkstra.Specification.Ratify.expired
d_expired_2352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_expired_2352 = erased
-- Ledger.Dijkstra.Specification.Ratify.verifyPrev
d_verifyPrev_2360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  ()
d_verifyPrev_2360 = erased
-- Ledger.Dijkstra.Specification.Ratify.delayingAction
d_delayingAction_2382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  Bool
d_delayingAction_2382 ~v0 v1 = du_delayingAction_2382 v1
du_delayingAction_2382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  Bool
du_delayingAction_2382 v0
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
d_delayed_2386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  Bool -> ()
d_delayed_2386 = erased
-- Ledger.Dijkstra.Specification.Ratify.acceptConds
d_acceptConds_2396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  T_RatifyState_1976 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2396 = erased
-- Ledger.Dijkstra.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2412 ::
  T_RatifyEnv_1944 ->
  T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2412 v0 ~v1 ~v2 ~v3 = du_ccHotKeys_2412 v0
du_ccHotKeys_2412 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2412 v0 = coe d_ccHotKeys_1966 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.currentEpoch
d_currentEpoch_2414 ::
  T_RatifyEnv_1944 ->
  T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny
d_currentEpoch_2414 v0 ~v1 ~v2 ~v3 = du_currentEpoch_2414 v0
du_currentEpoch_2414 :: T_RatifyEnv_1944 -> AgdaAny
du_currentEpoch_2414 v0 = coe d_currentEpoch_1962 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.delegatees
d_delegatees_2416 ::
  T_RatifyEnv_1944 ->
  T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2416 v0 ~v1 ~v2 ~v3 = du_delegatees_2416 v0
du_delegatees_2416 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2416 v0 = coe d_delegatees_1972 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.dreps
d_dreps_2418 ::
  T_RatifyEnv_1944 ->
  T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2418 v0 ~v1 ~v2 ~v3 = du_dreps_2418 v0
du_dreps_2418 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2418 v0 = coe d_dreps_1964 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.pools
d_pools_2420 ::
  T_RatifyEnv_1944 ->
  T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2420 v0 ~v1 ~v2 ~v3 = du_pools_2420 v0
du_pools_2420 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2420 v0 = coe d_pools_1970 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.stakeDistrs
d_stakeDistrs_2422 ::
  T_RatifyEnv_1944 ->
  T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  T_StakeDistrs_1932
d_stakeDistrs_2422 v0 ~v1 ~v2 ~v3 = du_stakeDistrs_2422 v0
du_stakeDistrs_2422 :: T_RatifyEnv_1944 -> T_StakeDistrs_1932
du_stakeDistrs_2422 v0 = coe d_stakeDistrs_1960 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.treasury
d_treasury_2424 ::
  T_RatifyEnv_1944 ->
  T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_treasury_2424 v0 ~v1 ~v2 ~v3 = du_treasury_2424 v0
du_treasury_2424 :: T_RatifyEnv_1944 -> Integer
du_treasury_2424 v0 = coe d_treasury_1968 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.delay
d_delay_2428 ::
  T_RatifyEnv_1944 ->
  T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Bool
d_delay_2428 ~v0 v1 ~v2 ~v3 = du_delay_2428 v1
du_delay_2428 :: T_RatifyState_1976 -> Bool
du_delay_2428 v0 = coe d_delay_1988 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.es
d_es_2430 ::
  T_RatifyEnv_1944 ->
  T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
d_es_2430 ~v0 v1 ~v2 ~v3 = du_es_2430 v1
du_es_2430 ::
  T_RatifyState_1976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
du_es_2430 v0 = coe d_es_1984 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.removed
d_removed_2432 ::
  T_RatifyEnv_1944 ->
  T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2432 ~v0 v1 ~v2 ~v3 = du_removed_2432 v1
du_removed_2432 ::
  T_RatifyState_1976 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_2432 v0 = coe d_removed_1986 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify.verifyPrev?
d_verifyPrev'63'_2456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2456 v0 v1 v2 v3
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
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1242
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
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1242
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
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1244
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
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1246
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
                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
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
d_delayed'63'_2494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2494 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
         (coe d_verifyPrev'63'_2456 (coe v0) (coe v1) (coe v2) (coe v3))
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
d_Is'45'nothing'63'_2510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_2510 ~v0 ~v1 v2 = du_Is'45'nothing'63'_2510 v2
du_Is'45'nothing'63'_2510 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_2510 v0
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
d_Is'45'just'63'_2522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'just'63'_2522 ~v0 ~v1 v2 = du_Is'45'just'63'_2522 v2
du_Is'45'just'63'_2522 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'just'63'_2522 v0
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
d_acceptedByCC'63'_2536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByCC'63'_2536 v0 v1 v2 v3
  = coe d_d_2576 (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Dijkstra.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2550 ::
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2550 v0 ~v1 ~v2 = du_ccHotKeys_2550 v0
du_ccHotKeys_2550 ::
  T_RatifyEnv_1944 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2550 v0 = coe d_ccHotKeys_1966 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._._.currentEpoch
d_currentEpoch_2552 ::
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny
d_currentEpoch_2552 v0 ~v1 ~v2 = du_currentEpoch_2552 v0
du_currentEpoch_2552 :: T_RatifyEnv_1944 -> AgdaAny
du_currentEpoch_2552 v0 = coe d_currentEpoch_1962 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.accepted
d_accepted_2556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_accepted_2556 = erased
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.acceptedStake
d_acceptedStake_2558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_acceptedStake_2558 v0 v1 v2 v3
  = coe
      d_acceptedStake_2158 (coe v0) (coe d_currentEpoch_1962 (coe v1))
      (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3)
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.activeCC
d_activeCC_2560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeCC_2560 v0 v1 v2 ~v3 = du_activeCC_2560 v0 v1 v2
du_activeCC_2560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeCC_2560 v0 v1 v2
  = coe
      du_activeCC_2142 (coe v0) (coe d_currentEpoch_1962 (coe v1))
      (coe d_ccHotKeys_1966 (coe v1)) (coe v2)
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.actualVotes
d_actualVotes_2562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2562 v0 v1 v2 v3
  = coe
      d_actualVotes_2150 (coe v0) (coe d_currentEpoch_1962 (coe v1))
      (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3)
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.castVotes
d_castVotes_2564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2564 ~v0 ~v1 ~v2 v3 = du_castVotes_2564 v3
du_castVotes_2564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2564 v0 = coe du_castVotes_2130 (coe v0)
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.getCCHotCredential
d_getCCHotCredential_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCredential_2566 v0 v1 ~v2 ~v3
  = du_getCCHotCredential_2566 v0 v1
du_getCCHotCredential_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getCCHotCredential_2566 v0 v1
  = coe
      du_getCCHotCredential_2132 (coe v0)
      (coe d_currentEpoch_1962 (coe v1)) (coe d_ccHotKeys_1966 (coe v1))
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.mT
d_mT_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_2568 v0 ~v1 v2 v3 = du_mT_2568 v0 v2 v3
du_mT_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mT_2568 v0 v1 v2 = coe du_mT_2154 (coe v0) (coe v1) (coe v2)
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.sizeActiveCC
d_sizeActiveCC_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_sizeActiveCC_2570 v0 v1 v2 ~v3 = du_sizeActiveCC_2570 v0 v1 v2
du_sizeActiveCC_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  Integer
du_sizeActiveCC_2570 v0 v1 v2
  = coe
      du_sizeActiveCC_2148 (coe v0) (coe d_currentEpoch_1962 (coe v1))
      (coe d_ccHotKeys_1966 (coe v1)) (coe v2)
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.stakeDistr
d_stakeDistr_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2572 v0 v1 v2 v3
  = coe
      d_stakeDistr_2156 (coe v0) (coe d_currentEpoch_1962 (coe v1))
      (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3)
-- Ledger.Dijkstra.Specification.Ratify._.acbCC.totalStake
d_totalStake_2574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_totalStake_2574 v0 v1 v2 v3
  = coe
      d_totalStake_2160 (coe v0) (coe d_currentEpoch_1962 (coe v1))
      (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3)
-- Ledger.Dijkstra.Specification.Ratify._.d
d_d_2576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_d_2576 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
                 (coe v2)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Data.Maybe.Base.du_map_64
                 (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1242
                       (coe v2))) in
       coe
         (let v6
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_882
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1024
                       (coe v3)) in
          coe
            (let v7
                   = MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_884
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1024
                          (coe v3)) in
             coe
               (case coe v6 of
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_860
                    -> let v8
                             = coe
                                 du_'8739'_'8739'_'8739'_'8739'_1740 (coe du_'9472'_1904)
                                 (coe
                                    du_vote_1882
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                          (coe v4))))
                                 (coe
                                    du_vote_1882
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2148 (coe v0)
                                         (coe d_currentEpoch_1962 (coe v1))
                                         (coe d_ccHotKeys_1966 (coe v1)) (coe v2)))
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
                                            d_acceptedStake_2158 (coe v0)
                                            (coe d_currentEpoch_1962 (coe v1))
                                            (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2160 (coe v0)
                                            (coe d_currentEpoch_1962 (coe v1))
                                            (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3))))
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
                                 du_'8739'_'8741'_'8739'_1752 (coe du_'9472'_1904)
                                 (coe du_P'47'Q2a'47'b_1910 (coe v4) (coe v5))
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2148 (coe v0)
                                         (coe d_currentEpoch_1962 (coe v1))
                                         (coe d_ccHotKeys_1966 (coe v1)) (coe v2)))
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
                                            d_acceptedStake_2158 (coe v0)
                                            (coe d_currentEpoch_1962 (coe v1))
                                            (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2160 (coe v0)
                                            (coe d_currentEpoch_1962 (coe v1))
                                            (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3))))
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
                                 du_'8739'_'8739'_'8739'_'8739'_1740 (coe du_'10003'_1906 (coe v5))
                                 (coe
                                    du_vote_1882
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                          (coe v4))))
                                 (coe du_'9472'_1904)
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2148 (coe v0)
                                         (coe d_currentEpoch_1962 (coe v1))
                                         (coe d_ccHotKeys_1966 (coe v1)) (coe v2)))
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
                                            d_acceptedStake_2158 (coe v0)
                                            (coe d_currentEpoch_1962 (coe v1))
                                            (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2160 (coe v0)
                                            (coe d_currentEpoch_1962 (coe v1))
                                            (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3))))
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
                                 du_'8739'_'8739'_'8739'_'8739'_1740 (coe du_'10003'_1906 (coe v5))
                                 (coe
                                    du_vote_1882
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                          (coe v4))))
                                 (coe
                                    du_vote_1882
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2148 (coe v0)
                                         (coe d_currentEpoch_1962 (coe v1))
                                         (coe d_ccHotKeys_1966 (coe v1)) (coe v2)))
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
                                            d_acceptedStake_2158 (coe v0)
                                            (coe d_currentEpoch_1962 (coe v1))
                                            (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2160 (coe v0)
                                            (coe d_currentEpoch_1962 (coe v1))
                                            (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3))))
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
                                 du_'8739'_'8741'_'8739'_1752 (coe du_'10003'_1906 (coe v5))
                                 (coe du_P'47'Q5_1916 (coe v0) (coe v4) (coe v7))
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2148 (coe v0)
                                         (coe d_currentEpoch_1962 (coe v1))
                                         (coe d_ccHotKeys_1966 (coe v1)) (coe v2)))
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
                                            d_acceptedStake_2158 (coe v0)
                                            (coe d_currentEpoch_1962 (coe v1))
                                            (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2160 (coe v0)
                                            (coe d_currentEpoch_1962 (coe v1))
                                            (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3))))
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
                                 du_'8739'_'8739'_'8739'_'8739'_1740 (coe du_'10003'_1906 (coe v5))
                                 (coe
                                    du_vote_1882
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
                                          (coe v4))))
                                 (coe du_'9472'_1904)
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2148 (coe v0)
                                         (coe d_currentEpoch_1962 (coe v1))
                                         (coe d_ccHotKeys_1966 (coe v1)) (coe v2)))
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
                                            d_acceptedStake_2158 (coe v0)
                                            (coe d_currentEpoch_1962 (coe v1))
                                            (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2160 (coe v0)
                                            (coe d_currentEpoch_1962 (coe v1))
                                            (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3))))
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
                                 du_'8739'_'8739'_'8739'_'8739'_1740 (coe du_'10003''8224'_1908)
                                 (coe du_'10003''8224'_1908) (coe du_'10003''8224'_1908)
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
                                               (coe v2))))
                                      (coe
                                         du_sizeActiveCC_2148 (coe v0)
                                         (coe d_currentEpoch_1962 (coe v1))
                                         (coe d_ccHotKeys_1966 (coe v1)) (coe v2)))
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
                                            d_acceptedStake_2158 (coe v0)
                                            (coe d_currentEpoch_1962 (coe v1))
                                            (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3))
                                         (coe
                                            d_totalStake_2160 (coe v0)
                                            (coe d_currentEpoch_1962 (coe v1))
                                            (coe d_ccHotKeys_1966 (coe v1)) (coe v2) (coe v3))))
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
d_acceptedByDRep'63'_2590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByDRep'63'_2590 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
      (coe du_t_2240 (coe v0) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__26
         (coe du_acceptedStake_2242 (coe v0) (coe v1) (coe v3))
         (coe du_totalStake_2244 (coe v0) (coe v1) (coe v3)))
-- Ledger.Dijkstra.Specification.Ratify.acceptedBySPO?
d_acceptedBySPO'63'_2598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBySPO'63'_2598 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
      (coe du_t_2302 (coe v0) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__26
         (coe
            du_acceptedStake_2304 (coe v0) (coe d_delegatees_1972 (coe v1))
            (coe d_pools_1970 (coe v1))
            (coe d_stakeDistrPools_1940 (coe d_stakeDistrs_1960 (coe v1)))
            (coe v3))
         (coe
            du_totalStake_2306 (coe v0) (coe d_delegatees_1972 (coe v1))
            (coe d_pools_1970 (coe v1))
            (coe d_stakeDistrPools_1940 (coe d_stakeDistrs_1960 (coe v1)))
            (coe v3)))
-- Ledger.Dijkstra.Specification.Ratify.accepted?
d_accepted'63'_2606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2606 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe d_acceptedByCC'63'_2536 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe d_acceptedByDRep'63'_2590 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe d_acceptedBySPO'63'_2598 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Dijkstra.Specification.Ratify.expired?
d_expired'63'_2618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2618 v0 v1 v2
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
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1022
               (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_686
                  (coe v0)))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1022
               (coe v2))
            v1))
-- Ledger.Dijkstra.Specification.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2636 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'RATIFY'10632'__2636
  = C_RATIFY'45'Accept_2648 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_2656 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_2664 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Ratify._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_RatifyEnv_1944 ->
  T_RatifyState_1976 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_1976 -> ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2666 = erased
