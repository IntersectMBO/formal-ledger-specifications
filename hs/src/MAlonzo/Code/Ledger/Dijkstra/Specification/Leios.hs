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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Leios where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Sort
import qualified MAlonzo.Code.Data.List.Sort.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Product.Relation.Binary.Lex.NonStrict
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.On
import qualified MAlonzo.Code.Relation.Binary.Properties.DecTotalOrder
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.BlsSig
d_BlsSig_42 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_BlsSig_42 = erased
-- _.BlsVKey
d_BlsVKey_44 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_BlsVKey_44 = erased
-- _.Epoch
d_Epoch_162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_162 = erased
-- _.THash
d_THash_242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_THash_242 = erased
-- _.PParams
d_PParams_284 a0 = ()
-- _.Ser
d_Ser_346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Ser_346 = erased
-- _.Slot
d_Slot_382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Slot_382 = erased
-- _.isSignedByAggregate
d_isSignedByAggregate_484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_isSignedByAggregate_484 = erased
-- _.PParams.Emax
d_Emax_690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_Emax_690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_470
      (coe v0)
-- _.PParams.a
d_a_692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_a_692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_440 (coe v0)
-- _.PParams.a0
d_a0_694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_474
      (coe v0)
-- _.PParams.b
d_b_696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_b_696 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_442 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_ccMaxTermLength_698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_486
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_ccMinSize_700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_484
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_coinsPerUTxOByte_702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_454
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_collateralPercentage_704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_476
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_682
d_costmdlsAssoc_708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_478
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_drepActivity_710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_494
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_drepDeposit_712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_492
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246
d_drepThresholds_714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_482
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_govActionDeposit_716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_490
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_govActionLifetime_718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_488
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_keyDeposit_720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_444
      (coe v0)
-- _.PParams.leiosCommitteeSize
d_leiosCommitteeSize_722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosCommitteeSize_722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_432
      (coe v0)
-- _.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosDiffusionPeriod_724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_426
      (coe v0)
-- _.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosHeaderPeriod_726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_422
      (coe v0)
-- _.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_leiosMaxEBExUnits_728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_436
      (coe v0)
-- _.PParams.leiosMaxEBSize
d_leiosMaxEBSize_730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosMaxEBSize_730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_428
      (coe v0)
-- _.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosMaxEBTxsSize_732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_430
      (coe v0)
-- _.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosMaxRefScriptSizePerEB_734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_438
      (coe v0)
-- _.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_434
      (coe v0)
-- _.PParams.leiosVotingPeriod
d_leiosVotingPeriod_738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosVotingPeriod_738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_424
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_maxBlockExUnits_740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_414
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxBlockSize_742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_406
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxCollateralInputs_744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_418
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxHeaderSize_746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_410
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxRefScriptSizePerBlock_748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_462
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxRefScriptSizePerTx_750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_460
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_maxTxExUnits_752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_412
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxTxSize_754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_408
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxValSize_756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_416
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_458
      (coe v0)
-- _.PParams.minPoolCost
d_minPoolCost_760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_minPoolCost_760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_448
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_minUTxOValue_762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_468
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_450
      (coe v0)
-- _.PParams.nopt
d_nopt_766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_nopt_766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_472
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_poolDeposit_768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_446
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290
d_poolThresholds_770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_480
      (coe v0)
-- _.PParams.prices
d_prices_772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_prices_772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_456
      (coe v0)
-- _.PParams.pv
d_pv_774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_420
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_466
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_464
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_452
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios._.Pools
d_Pools_1190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Pools_1190 = erased
-- Ledger.Dijkstra.Specification.Leios.LeiosSeat
d_LeiosSeat_1462 a0 = ()
data T_LeiosSeat_1462
  = C_constructor_1476 AgdaAny
                       MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 (Maybe AgdaAny)
-- Ledger.Dijkstra.Specification.Leios.LeiosSeat.pool
d_pool_1470 :: T_LeiosSeat_1462 -> AgdaAny
d_pool_1470 v0
  = case coe v0 of
      C_constructor_1476 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.LeiosSeat.weight
d_weight_1472 ::
  T_LeiosSeat_1462 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_weight_1472 v0
  = case coe v0 of
      C_constructor_1476 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.LeiosSeat.key
d_key_1474 :: T_LeiosSeat_1462 -> Maybe AgdaAny
d_key_1474 v0
  = case coe v0 of
      C_constructor_1476 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.LeiosCommittee
d_LeiosCommittee_1478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_LeiosCommittee_1478 = erased
-- Ledger.Dijkstra.Specification.Leios.HasCast-LeiosSeat
d_HasCast'45'LeiosSeat_1480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LeiosSeat_1480 ~v0 = du_HasCast'45'LeiosSeat_1480
du_HasCast'45'LeiosSeat_1480 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LeiosSeat_1480
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
                                 (1462 :: Integer) (7543865900978448762 :: Integer)
                                 "Ledger.Dijkstra.Specification.Leios.LeiosSeat"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (242 :: Integer) (7543865900978448762 :: Integer) "_.THash"
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
                                    (1462 :: Integer) (7543865900978448762 :: Integer)
                                    "Ledger.Dijkstra.Specification.Leios.LeiosSeat"
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
                                    (66 :: Integer) (6050587219993333548 :: Integer)
                                    "Ledger.Prelude.Numeric.UnitInterval.UnitInterval"
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
                                       (1462 :: Integer) (7543865900978448762 :: Integer)
                                       "Ledger.Dijkstra.Specification.Leios.LeiosSeat"
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
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
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
                                                   (44 :: Integer) (7543865900978448762 :: Integer)
                                                   "_.BlsVKey"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_1476))
-- Ledger.Dijkstra.Specification.Leios.maxKeyAge
d_maxKeyAge_1482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny
d_maxKeyAge_1482 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_278
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
         (coe v0))
      (coe
         addInt (coe (2 :: Integer))
         (coe
            MAlonzo.Code.Data.Nat.Base.du__'47'__318
            (coe
               MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
               (addInt
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_336
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_886
                        (coe v0)))
                  (coe
                     mulInt
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxKESEvo'7580'_354
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_886
                           (coe v0)))
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerKESPeriod'7580'_356
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_886
                           (coe v0)))))
               (1 :: Integer))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_336
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_886
                  (coe v0)))))
-- Ledger.Dijkstra.Specification.Leios.honouredBlsKey
d_honouredBlsKey_1484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_honouredBlsKey_1484 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    MAlonzo.Code.Class.ToBool.du_if_then_else__38
                    (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106)
                    (coe
                       MAlonzo.Code.Function.Base.du__on__334 erased
                       (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
                             (coe v0)))
                       v1
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
                             (coe v0))
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d__'43'__2380
                             (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
                                   (coe v0))
                                v5)
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
                                   (coe v0))
                                (d_maxKeyAge_1482 (coe v0))))))
                    (coe
                       MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
                       (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                          (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
                                (coe v0)))
                          (\ v6 v7 -> v6) v1
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
                                (coe v0))
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d__'43'__2380
                                (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
                                      (coe v0)))
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
                                      (coe v0))
                                   v5)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
                                      (coe v0))
                                   (d_maxKeyAge_1482 (coe v0))))))
                       (coe
                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                          (\ v6 v7 -> v7)
                          (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
                                (coe v0)))
                          v1
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
                                (coe v0))
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d__'43'__2380
                                (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
                                      (coe v0)))
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
                                      (coe v0))
                                   v5)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
                                      (coe v0))
                                   (d_maxKeyAge_1482 (coe v0)))))))
                    (coe
                       (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)))
                    (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios._≼_
d__'8828'__1494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_LeiosSeat_1462 -> T_LeiosSeat_1462 -> ()
d__'8828'__1494 = erased
-- Ledger.Dijkstra.Specification.Leios._.c₁
d_c'8321'_1504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_LeiosSeat_1462 ->
  T_LeiosSeat_1462 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_c'8321'_1504 ~v0 v1 ~v2 = du_c'8321'_1504 v1
du_c'8321'_1504 ::
  T_LeiosSeat_1462 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_c'8321'_1504 v0 = coe d_weight_1472 (coe v0)
-- Ledger.Dijkstra.Specification.Leios._.c₂
d_c'8322'_1506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_LeiosSeat_1462 ->
  T_LeiosSeat_1462 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_c'8322'_1506 ~v0 ~v1 v2 = du_c'8322'_1506 v2
du_c'8322'_1506 ::
  T_LeiosSeat_1462 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_c'8322'_1506 v0 = coe d_weight_1472 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.≼-DTO
d_'8828''45'DTO_1508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
d_'8828''45'DTO_1508 v0
  = coe
      MAlonzo.Code.Relation.Binary.Construct.On.du_decTotalOrder_642
      (coe
         MAlonzo.Code.Data.Product.Relation.Binary.Lex.NonStrict.du_'215''45'decTotalOrder_706
         (coe
            MAlonzo.Code.Relation.Binary.Properties.DecTotalOrder.du_'8805''45'decTotalOrder_226
            (coe
               MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_'8804''7512''8305''45'DTO_210))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.du_DTO'45'KeyHash_190
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_leiosCryptoStructure_790
               (coe v0))))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe d_weight_1472 (coe v1)) (coe d_pool_1470 (coe v1))))
-- Ledger.Dijkstra.Specification.Leios._._.selectCommittee
d_selectCommittee_1606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [T_LeiosSeat_1462]
d_selectCommittee_1606 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Base.du_take_530
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_432
         (coe v1))
      (coe du_sortedLeiosSeats_1644 (coe v0) (coe v2) (coe v3) (coe v4))
-- Ledger.Dijkstra.Specification.Leios._._._.totalStake
d_totalStake_1618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_1618 v0 ~v1 ~v2 v3 ~v4 = du_totalStake_1618 v0 v3
du_totalStake_1618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_totalStake_1618 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_740
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v2 -> v2)) (coe v1)
-- Ledger.Dijkstra.Specification.Leios._._._.leiosSeatMap
d_leiosSeatMap_1622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leiosSeatMap_1622 v0 ~v1 v2 v3 v4
  = du_leiosSeatMap_1622 v0 v2 v3 v4
du_leiosSeatMap_1622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_leiosSeatMap_1622 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1406
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v4 v5 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Class.ToBool.du_if_then_else__38
                 (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                 (coe
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
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_740
                                   (coe v0)))))
                       (coe v4)
                       (let v6
                              = MAlonzo.Code.Axiom.Set.d_th_1516
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                        coe
                          (coe
                             MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v6
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))))))
                 (coe
                    MAlonzo.Code.Level.C_lift_20
                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                 (coe
                    (\ v6 ->
                       MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_clamp_118
                         (coe
                            MAlonzo.Code.Ledger.Prelude.d__'47''8320'__26 (coe v6)
                            (coe du_totalStake_1618 (coe v0) (coe v2)))))
                 (coe
                    (\ v6 ->
                       MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_0'7512''8305'_146)))
              (coe
                 d_honouredBlsKey_1484 (coe v0) (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_bls_1418
                    (coe v5)))))
      (coe v3)
-- Ledger.Dijkstra.Specification.Leios._._._.allLeiosSeats
d_allLeiosSeats_1634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [T_LeiosSeat_1462]
d_allLeiosSeats_1634 v0 ~v1 v2 v3 v4
  = du_allLeiosSeats_1634 v0 v2 v3 v4
du_allLeiosSeats_1634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [T_LeiosSeat_1462]
du_allLeiosSeats_1634 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
      () erased
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
         (coe du_HasCast'45'LeiosSeat_1480))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe du_leiosSeatMap_1622 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Dijkstra.Specification.Leios._._._.sortedLeiosSeats
d_sortedLeiosSeats_1644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [T_LeiosSeat_1462]
d_sortedLeiosSeats_1644 v0 ~v1 v2 v3 v4
  = du_sortedLeiosSeats_1644 v0 v2 v3 v4
du_sortedLeiosSeats_1644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [T_LeiosSeat_1462]
du_sortedLeiosSeats_1644 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Sort.Base.d_sort_248
      (coe
         MAlonzo.Code.Data.List.Sort.du_sortingAlgorithm_138
         (coe d_'8828''45'DTO_1508 (coe v0)))
      (coe du_allLeiosSeats_1634 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Dijkstra.Specification.Leios._._.certificationDelay
d_certificationDelay_1646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_certificationDelay_1646 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_slotsFromDuration_100
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_836
         (coe v0))
      (addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_426
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_424
               (coe v1)))
         (coe
            mulInt (coe (3 :: Integer))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_422
               (coe v1))))
-- Ledger.Dijkstra.Specification.Leios.EBCert
d_EBCert_1648 a0 = ()
data T_EBCert_1648 = C_constructor_1658 [Integer] AgdaAny
-- Ledger.Dijkstra.Specification.Leios.EBCert.signers
d_signers_1654 :: T_EBCert_1648 -> [Integer]
d_signers_1654 v0
  = case coe v0 of
      C_constructor_1658 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.EBCert.sig
d_sig_1656 :: T_EBCert_1648 -> AgdaAny
d_sig_1656 v0
  = case coe v0 of
      C_constructor_1658 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.HasCast-EBCert
d_HasCast'45'EBCert_1660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EBCert_1660 ~v0 = du_HasCast'45'EBCert_1660
du_HasCast'45'EBCert_1660 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EBCert_1660
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
                                 (1648 :: Integer) (7543865900978448762 :: Integer)
                                 "Ledger.Dijkstra.Specification.Leios.EBCert"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                          (6 :: Integer) (13537827747504913145 :: Integer)
                                          "Agda.Builtin.Nat.Nat"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                                    (1648 :: Integer) (7543865900978448762 :: Integer)
                                    "Ledger.Dijkstra.Specification.Leios.EBCert"
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
                                    (42 :: Integer) (7543865900978448762 :: Integer) "_.BlsSig"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
         (coe C_constructor_1658))
-- Ledger.Dijkstra.Specification.Leios.signersSeats
d_signersSeats_1662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  [T_LeiosSeat_1462] -> [Integer] -> [T_LeiosSeat_1462]
d_signersSeats_1662 ~v0 v1 v2 = du_signersSeats_1662 v1 v2
du_signersSeats_1662 ::
  [T_LeiosSeat_1462] -> [Integer] -> [T_LeiosSeat_1462]
du_signersSeats_1662 v0 v1
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
      () erased
      (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
      (coe
         MAlonzo.Code.Ledger.Prelude.du_filter_92
         (\ v2 ->
            coe
              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (coe
                 MAlonzo.Code.Class.IsSet.d_toSet_526
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590) v1))
         (coe
            MAlonzo.Code.Data.List.Base.du_zip_182
            (coe
               MAlonzo.Code.Data.List.Base.d_upTo_402
               (coe MAlonzo.Code.Data.List.Base.du_length_268 v0))
            v0))
-- Ledger.Dijkstra.Specification.Leios.ValidEBCert
d_ValidEBCert_1680 a0 a1 a2 a3 a4 = ()
data T_ValidEBCert_1680
  = C_constructor_1718 (Integer ->
                        MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                        MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34)
                       MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 AgdaAny
                       MAlonzo.Code.Data.Rational.Base.T__'8804'__54
-- Ledger.Dijkstra.Specification.Leios.ValidEBCert.seats
d_seats_1704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  [T_LeiosSeat_1462] ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  AgdaAny ->
  T_EBCert_1648 -> T_ValidEBCert_1680 -> [T_LeiosSeat_1462]
d_seats_1704 ~v0 v1 ~v2 ~v3 v4 ~v5 = du_seats_1704 v1 v4
du_seats_1704 ::
  [T_LeiosSeat_1462] -> T_EBCert_1648 -> [T_LeiosSeat_1462]
du_seats_1704 v0 v1
  = coe du_signersSeats_1662 (coe v0) (coe d_signers_1654 (coe v1))
-- Ledger.Dijkstra.Specification.Leios.ValidEBCert.signersSeated
d_signersSeated_1706 ::
  T_ValidEBCert_1680 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_signersSeated_1706 v0
  = case coe v0 of
      C_constructor_1718 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.ValidEBCert.signersKeyed
d_signersKeyed_1710 ::
  T_ValidEBCert_1680 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_signersKeyed_1710 v0
  = case coe v0 of
      C_constructor_1718 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.ValidEBCert.validSignature
d_validSignature_1712 :: T_ValidEBCert_1680 -> AgdaAny
d_validSignature_1712 v0
  = case coe v0 of
      C_constructor_1718 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.ValidEBCert.quorum
d_quorum_1716 ::
  T_ValidEBCert_1680 -> MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_quorum_1716 v0
  = case coe v0 of
      C_constructor_1718 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Dec-ValidEBCert
d_Dec'45'ValidEBCert_1728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  [T_LeiosSeat_1462] ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  AgdaAny ->
  T_EBCert_1648 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidEBCert_1728 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
         (coe du_fromConjuncts_1750) (coe du_toConjuncts_1760)
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
            (coe
               MAlonzo.Code.Class.Decidable.Core.d_dec_16
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     (\ v5 ->
                        coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22) (coe v5)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_fromList_456
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Data.List.Base.d_upTo_402
                                (coe MAlonzo.Code.Data.List.Base.du_length_268 v1)))))
                  (coe d_signers_1654 (coe v4))))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
               (coe
                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'All_20
                     (coe
                        (\ v5 ->
                           coe
                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                             (coe
                                (\ v6 ->
                                   MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                             (coe d_key_1474 (coe v5))))
                     (coe du_seats_1742 (coe v1) (coe v4))))
               (coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                  (coe
                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_Dec'45'isSignedByAggregate_182
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_leiosCryptoStructure_790
                           (coe v0))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_fromList_456
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_mapMaybe_258
                              (coe (\ v5 -> d_key_1474 (coe v5)))
                              (coe du_seats_1742 (coe v1) (coe v4))))
                        v3 (d_sig_1656 (coe v4))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.d_ℚ'45'Dec'45''8804'_42
                        (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                           (coe v2))
                        (coe
                           MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                           (coe
                              MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                              (coe
                                 MAlonzo.Code.Data.Rational.Properties.d_'43''45'0'45'commutativeMonoid_4354))
                           (\ v5 ->
                              MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                                (coe d_weight_1472 (coe v5)))
                           (coe du_seats_1742 (coe v1) (coe v4)))))))))
-- Ledger.Dijkstra.Specification.Leios._.seats
d_seats_1742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  [T_LeiosSeat_1462] ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  AgdaAny -> T_EBCert_1648 -> [T_LeiosSeat_1462]
d_seats_1742 ~v0 v1 ~v2 ~v3 v4 = du_seats_1742 v1 v4
du_seats_1742 ::
  [T_LeiosSeat_1462] -> T_EBCert_1648 -> [T_LeiosSeat_1462]
du_seats_1742 v0 v1
  = coe du_signersSeats_1662 (coe v0) (coe d_signers_1654 (coe v1))
-- Ledger.Dijkstra.Specification.Leios._.Conjuncts
d_Conjuncts_1744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  [T_LeiosSeat_1462] ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  AgdaAny -> T_EBCert_1648 -> ()
d_Conjuncts_1744 = erased
-- Ledger.Dijkstra.Specification.Leios._.fromConjuncts
d_fromConjuncts_1750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  [T_LeiosSeat_1462] ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  AgdaAny ->
  T_EBCert_1648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_ValidEBCert_1680
d_fromConjuncts_1750 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_fromConjuncts_1750 v5
du_fromConjuncts_1750 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_ValidEBCert_1680
du_fromConjuncts_1750 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                      -> coe C_constructor_1718 (coe v1) (coe v3) (coe v5) (coe v6)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios._.toConjuncts
d_toConjuncts_1760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  [T_LeiosSeat_1462] ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  AgdaAny ->
  T_EBCert_1648 ->
  T_ValidEBCert_1680 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toConjuncts_1760 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_toConjuncts_1760 v5
du_toConjuncts_1760 ::
  T_ValidEBCert_1680 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_toConjuncts_1760 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_signersSeated_1706 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe d_signersKeyed_1710 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe d_validSignature_1712 (coe v0)) (coe d_quorum_1716 (coe v0))))
-- Ledger.Dijkstra.Specification.Leios._._.quorum
d_quorum_1766 ::
  T_ValidEBCert_1680 -> MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_quorum_1766 v0 = coe d_quorum_1716 (coe v0)
-- Ledger.Dijkstra.Specification.Leios._._.seats
d_seats_1768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  [T_LeiosSeat_1462] ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  AgdaAny ->
  T_EBCert_1648 -> T_ValidEBCert_1680 -> [T_LeiosSeat_1462]
d_seats_1768 ~v0 v1 ~v2 ~v3 v4 ~v5 = du_seats_1768 v1 v4
du_seats_1768 ::
  [T_LeiosSeat_1462] -> T_EBCert_1648 -> [T_LeiosSeat_1462]
du_seats_1768 v0 v1 = coe du_seats_1704 (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Leios._._.signersKeyed
d_signersKeyed_1770 ::
  T_ValidEBCert_1680 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_signersKeyed_1770 v0 = coe d_signersKeyed_1710 (coe v0)
-- Ledger.Dijkstra.Specification.Leios._._.signersSeated
d_signersSeated_1772 ::
  T_ValidEBCert_1680 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_signersSeated_1772 v0 = coe d_signersSeated_1706 (coe v0)
-- Ledger.Dijkstra.Specification.Leios._._.validSignature
d_validSignature_1774 :: T_ValidEBCert_1680 -> AgdaAny
d_validSignature_1774 v0 = coe d_validSignature_1712 (coe v0)
