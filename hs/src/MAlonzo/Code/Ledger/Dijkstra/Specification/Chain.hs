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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Chain where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.ListAction
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_316 ~v0
  = du_HasCast'45'HashProtected_316
du_HasCast'45'HashProtected_316 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_316 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1344
-- _.HasPParams
d_HasPParams_478 a0 a1 a2 = ()
-- _.PParams
d_PParams_736 a0 = ()
-- _.PParamsOf
d_PParamsOf_744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_PParamsOf_744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
      (coe v0)
-- _.Slot
d_Slot_880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_880 = erased
-- _.TopLevelTx
d_TopLevelTx_918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_918 = erased
-- _.HasPParams.PParamsOf
d_PParamsOf_1800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_PParamsOf_1800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
      (coe v0)
-- _.PParams.Emax
d_Emax_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_Emax_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_470
      (coe v0)
-- _.PParams.a
d_a_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_a_2000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_440 (coe v0)
-- _.PParams.a0
d_a0_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_474
      (coe v0)
-- _.PParams.b
d_b_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_b_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_442 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_ccMaxTermLength_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_486
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_ccMinSize_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_484
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_coinsPerUTxOByte_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_454
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_collateralPercentage_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_476
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_678
d_costmdlsAssoc_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_478
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_drepActivity_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_494
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_drepDeposit_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_492
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246
d_drepThresholds_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_482
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_govActionDeposit_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_490
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_govActionLifetime_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_488
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_keyDeposit_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_444
      (coe v0)
-- _.PParams.leiosCommitteeSize
d_leiosCommitteeSize_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosCommitteeSize_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_432
      (coe v0)
-- _.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosDiffusionPeriod_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_426
      (coe v0)
-- _.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosHeaderPeriod_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_422
      (coe v0)
-- _.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_leiosMaxEBExUnits_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_436
      (coe v0)
-- _.PParams.leiosMaxEBSize
d_leiosMaxEBSize_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosMaxEBSize_2038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_428
      (coe v0)
-- _.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosMaxEBTxsSize_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_430
      (coe v0)
-- _.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_438
      (coe v0)
-- _.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_434
      (coe v0)
-- _.PParams.leiosVotingPeriod
d_leiosVotingPeriod_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosVotingPeriod_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_424
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_maxBlockExUnits_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_414
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxBlockSize_2050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_406
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxCollateralInputs_2052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_418
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxHeaderSize_2054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_410
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxRefScriptSizePerBlock_2056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_462
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxRefScriptSizePerTx_2058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_460
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_maxTxExUnits_2060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_412
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxTxSize_2062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_408
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_2064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxValSize_2064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_416
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_458
      (coe v0)
-- _.PParams.minPoolCost
d_minPoolCost_2068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_minPoolCost_2068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_448
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_2070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_minUTxOValue_2070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_468
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_2072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_450
      (coe v0)
-- _.PParams.nopt
d_nopt_2074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_nopt_2074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_472
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_2076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_poolDeposit_2076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_446
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_2078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290
d_poolThresholds_2078 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_480
      (coe v0)
-- _.PParams.prices
d_prices_2080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_prices_2080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_456
      (coe v0)
-- _.PParams.pv
d_pv_2082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_420
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_466
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_2086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_464
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_2088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_452
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2672 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.Announcement
d_Announcement_2674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_Announcement_2674 = erased
-- Ledger.Dijkstra.Specification.Chain._.BBodyEnv
d_BBodyEnv_2678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_BBodyEnv_2678 = erased
-- Ledger.Dijkstra.Specification.Chain._.BBodyState
d_BBodyState_2680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_BBodyState_2680 = erased
-- Ledger.Dijkstra.Specification.Chain._.BHBody
d_BHBody_2682 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.BHeader
d_BHeader_2686 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.Block
d_Block_2690 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.Dec-ValidLeiosBlock
d_Dec'45'ValidLeiosBlock_2694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidLeiosBlock_2694 ~v0 ~v1
  = du_Dec'45'ValidLeiosBlock_2694
du_Dec'45'ValidLeiosBlock_2694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidLeiosBlock_2694
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_Dec'45'ValidLeiosBlock_3176
-- Ledger.Dijkstra.Specification.Chain._.ValidLeiosBlock
d_ValidLeiosBlock_2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  ()
d_ValidLeiosBlock_2696 = erased
-- Ledger.Dijkstra.Specification.Chain._.ValidLeiosBlock?
d_ValidLeiosBlock'63'_2698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_ValidLeiosBlock'63'_2698 ~v0 ~v1 = du_ValidLeiosBlock'63'_2698
du_ValidLeiosBlock'63'_2698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_ValidLeiosBlock'63'_2698
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_ValidLeiosBlock'63'_3146
-- Ledger.Dijkstra.Specification.Chain._.certifiedBit
d_certifiedBit_2700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Bool
d_certifiedBit_2700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiedEB_3062
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.incrBlocks
d_incrBlocks_2702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2702 v0 ~v1 = du_incrBlocks_2702 v0
du_incrBlocks_2702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_incrBlocks_3118
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.announcedEB
d_announcedEB_2710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_2710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3060
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bhash
d_bhash_2712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034 ->
  AgdaAny
d_bhash_2712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3056
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bsize
d_bsize_2714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034 ->
  Integer
d_bsize_2714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bsize_3052
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034 ->
  AgdaAny
d_bvkcold_2716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3050
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.certifiedEB
d_certifiedEB_2718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034 ->
  Bool
d_certifiedEB_2718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiedEB_3062
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034 ->
  Integer
d_hBbsize_2720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3058
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.slot
d_slot_2722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034 ->
  AgdaAny
d_slot_2722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3054
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHeader.bhbody
d_bhbody_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3066 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034
d_bhbody_2726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHeader.bhsig
d_bhsig_2728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3066 ->
  AgdaAny
d_bhsig_2728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhsig_3074
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  AgdaAny
d_bBodyHash_2732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_3106
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bBodySize
d_bBodySize_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Integer
d_bBodySize_2734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_3104
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bHeaderHash
d_bHeaderHash_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  AgdaAny
d_bHeaderHash_2736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3098
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bheader
d_bheader_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3066
d_bheader_2738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.ebCert
d_ebCert_2740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644
d_ebCert_2740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3102
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.ts
d_ts_2742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842]
d_ts_2742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3100
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2744 = erased
-- Ledger.Dijkstra.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2746 = erased
-- Ledger.Dijkstra.Specification.Chain._.CertStateOf
d_CertStateOf_2778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1908 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1580
d_CertStateOf_2778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1916
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState
d_HasCertState_2854 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasRewards
d_HasRewards_2932 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1788
d_HasRewards'45'CertState_2936 ~v0 ~v1
  = du_HasRewards'45'CertState_2936
du_HasRewards'45'CertState_2936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1788
du_HasRewards'45'CertState_2936
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_2000
-- Ledger.Dijkstra.Specification.Chain._.RewardsOf
d_RewardsOf_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1788 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1796
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_3162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1908 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1580
d_CertStateOf_3162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1916
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_3202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1788 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1796
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EnactState
d_EnactState_3286 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.EnactStateOf
d_EnactStateOf_3290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1352 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324
d_EnactStateOf_3290 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1360
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState
d_HasEnactState_3294 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_3298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
d_HasPParams'45'EnactState_3298 ~v0 ~v1
  = du_HasPParams'45'EnactState_3298
du_HasPParams'45'EnactState_3298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
du_HasPParams'45'EnactState_3298
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1368
-- Ledger.Dijkstra.Specification.Chain._.EnactState.cc
d_cc_3336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_3336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1336 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EnactState.constitution
d_constitution_3338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_3338 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1338
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EnactState.pparams
d_pparams_3340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EnactState.pv
d_pv_3342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_3342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1340 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EnactState.withdrawals
d_withdrawals_3344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_3344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1344
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_3348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1352 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324
d_EnactStateOf_3348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1360
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EpochStateOf
d_EpochStateOf_3362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4226 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4198
d_EpochStateOf_3362 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4234
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1352
d_HasEnactState'45'EpochState_3380 ~v0 ~v1
  = du_HasEnactState'45'EpochState_3380
du_HasEnactState'45'EpochState_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1352
du_HasEnactState'45'EpochState_3380
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4248
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState
d_HasEpochState_3384 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_3388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4226
d_HasEpochState'45'NewEpochState_3388 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_3388
du_HasEpochState'45'NewEpochState_3388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4226
du_HasEpochState'45'NewEpochState_3388
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4338
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_3394 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_3398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4320
d_HasLastEpoch'45'NewEpochState_3398 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_3398
du_HasLastEpoch'45'NewEpochState_3398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4320
du_HasLastEpoch'45'NewEpochState_3398
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4336
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState-EpochState
d_HasLedgerState'45'EpochState_3400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3944
d_HasLedgerState'45'EpochState_3400 ~v0 ~v1
  = du_HasLedgerState'45'EpochState_3400
du_HasLedgerState'45'EpochState_3400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3944
du_HasLedgerState'45'EpochState_3400
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4244
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_3404 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.LastEpochOf
d_LastEpochOf_3428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4320 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4328
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState
d_NewEpochState_3436 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_3440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4300 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264
d_NewEpochStateOf_3440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4308
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_3522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4226 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4198
d_EpochStateOf_3522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4234
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4320 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4328
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_3530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4300 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264
d_NewEpochStateOf_3530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4308
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bcur
d_bcur_3534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4284
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bprev
d_bprev_3536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_3536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4282
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.epochState
d_epochState_3538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4198
d_epochState_3538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_3540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  AgdaAny
d_lastEpoch_3540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4280
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.leiosCommittee
d_leiosCommittee_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1458]
d_leiosCommittee_3542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4292
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.pd
d_pd_3544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_3544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4290 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.ru
d_ru_3546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3866
d_ru_3546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4288 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3758 = erased
-- Ledger.Dijkstra.Specification.Chain._.HasCertState-LedgerState
d_HasCertState'45'LedgerState_3776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1908
d_HasCertState'45'LedgerState_3776 ~v0 ~v1
  = du_HasCertState'45'LedgerState_3776
du_HasCertState'45'LedgerState_3776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1908
du_HasCertState'45'LedgerState_3776
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3966
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState
d_HasLedgerState_3796 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxO-LedgerState
d_HasUTxO'45'LedgerState_3810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3824
d_HasUTxO'45'LedgerState_3810 ~v0 ~v1
  = du_HasUTxO'45'LedgerState_3810
du_HasUTxO'45'LedgerState_3810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3824
du_HasUTxO'45'LedgerState_3810
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3962
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState-LedgerState
d_HasUTxOState'45'LedgerState_3814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3310
d_HasUTxOState'45'LedgerState_3814 ~v0 ~v1
  = du_HasUTxOState'45'LedgerState_3814
du_HasUTxOState'45'LedgerState_3814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3310
du_HasUTxOState'45'LedgerState_3814
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3960
-- Ledger.Dijkstra.Specification.Chain._.LedgerState
d_LedgerState_3826 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.LedgerStateOf
d_LedgerStateOf_3830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3944 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924
d_LedgerStateOf_3830 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3952
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState.LedgerStateOf
d_LedgerStateOf_3864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3944 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924
d_LedgerStateOf_3864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3952
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.certState
d_certState_3880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1580
d_certState_3880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.govSt
d_govSt_3882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3934
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.utxoSt
d_utxoSt_3884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3290
d_utxoSt_3884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3932
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EBCert
d_EBCert_3908 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.LeiosCommittee
d_LeiosCommittee_3912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_LeiosCommittee_3912 = erased
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert
d_ValidEBCert_3914 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Chain._.EBCert.sig
d_sig_3922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  AgdaAny
d_sig_3922 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1652
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EBCert.signers
d_signers_3924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  [Integer]
d_signers_3924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1650
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.quorum
d_quorum_3928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1676 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_quorum_3928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_quorum_1712
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.signersKeyed
d_signersKeyed_3932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1676 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_signersKeyed_3932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersKeyed_1706
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.signersSeated
d_signersSeated_3934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1676 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_signersSeated_3934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersSeated_1702
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.validSignature
d_validSignature_3936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1676 ->
  AgdaAny
d_validSignature_3936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_validSignature_1708
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EndorserBlock
d_EndorserBlock_3940 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.hashEB
d_hashEB_3944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  AgdaAny
d_hashEB_3944 v0 ~v1 v2 = du_hashEB_3944 v0 v2
du_hashEB_3944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  AgdaAny
du_hashEB_3944 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_hashEBRefs_170
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1414
         (coe v0))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
         (coe v1))
-- Ledger.Dijkstra.Specification.Chain._.EndorserBlock.ebTxRefs
d_ebTxRefs_3948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ebTxRefs_3948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEB
d_ValidEB_3952 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Chain._.ValidEB.boundsOK
d_boundsOK_3958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.T_ValidEB_2996 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.T_WithinEBBounds_2956
d_boundsOK_3958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.d_boundsOK_3020
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEB.extensionOK
d_extensionOK_3960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.T_ValidEB_2996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_extensionOK_3960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.d_extensionOK_3024
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEB.nonemptyOK
d_nonemptyOK_3962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.T_ValidEB_2996 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_nonemptyOK_3962 = erased
-- Ledger.Dijkstra.Specification.Chain._.ValidEB.refsOK
d_refsOK_3964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.T_ValidEB_2996 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refsOK_3964 = erased
-- Ledger.Dijkstra.Specification.Chain._.ValidEB.uniqueRefsOK
d_uniqueRefsOK_3966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.T_ValidEB_2996 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_uniqueRefsOK_3966 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.d_uniqueRefsOK_3016
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__4144 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState
d_HasUTxOState_4242 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_4278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3310 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3290
d_UTxOStateOf_4278 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3318
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_4368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3310 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3290
d_UTxOStateOf_4368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3318
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EBHash
d_EBHash_4420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_EBHash_4420 = erased
-- Ledger.Dijkstra.Specification.Chain._.RBHeaderHash
d_RBHeaderHash_4422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_RBHeaderHash_4422 = erased
-- Ledger.Dijkstra.Specification.Chain._.rbHeaderHashBytes
d_rbHeaderHashBytes_4424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  AgdaAny -> AgdaAny
d_rbHeaderHashBytes_4424 v0 ~v1 = du_rbHeaderHashBytes_4424 v0
du_rbHeaderHashBytes_4424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
du_rbHeaderHashBytes_4424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock
d_LastAppliedBlock_4426 a0 a1 = ()
data T_LastAppliedBlock_4426
  = C_constructor_4440 AgdaAny AgdaAny
                       (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock.slot
d_slot_4434 :: T_LastAppliedBlock_4426 -> AgdaAny
d_slot_4434 v0
  = case coe v0 of
      C_constructor_4440 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock.headerHash
d_headerHash_4436 :: T_LastAppliedBlock_4426 -> AgdaAny
d_headerHash_4436 v0
  = case coe v0 of
      C_constructor_4440 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock.announcedEB
d_announcedEB_4438 ::
  T_LastAppliedBlock_4426 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_4438 v0
  = case coe v0 of
      C_constructor_4440 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.ChainState
d_ChainState_4442 a0 a1 = ()
data T_ChainState_4442
  = C_constructor_4452 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264
                       (Maybe T_LastAppliedBlock_4426)
-- Ledger.Dijkstra.Specification.Chain.ChainState.newEpochState
d_newEpochState_4448 ::
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264
d_newEpochState_4448 v0
  = case coe v0 of
      C_constructor_4452 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.ChainState.lastApplied
d_lastApplied_4450 ::
  T_ChainState_4442 -> Maybe T_LastAppliedBlock_4426
d_lastApplied_4450 v0
  = case coe v0 of
      C_constructor_4452 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.HasCast-LastAppliedBlock
d_HasCast'45'LastAppliedBlock_4454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LastAppliedBlock_4454 ~v0 ~v1
  = du_HasCast'45'LastAppliedBlock_4454
du_HasCast'45'LastAppliedBlock_4454 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LastAppliedBlock_4454
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
                                 (4426 :: Integer) (18031157011309193886 :: Integer)
                                 "Ledger.Dijkstra.Specification.Chain.LastAppliedBlock"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (880 :: Integer) (18031157011309193886 :: Integer) "_.Slot"
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
                                    (4426 :: Integer) (18031157011309193886 :: Integer)
                                    "Ledger.Dijkstra.Specification.Chain.LastAppliedBlock"
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
                                    (4422 :: Integer) (18031157011309193886 :: Integer)
                                    "Ledger.Dijkstra.Specification.Chain._.RBHeaderHash"
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
                                       (4426 :: Integer) (18031157011309193886 :: Integer)
                                       "Ledger.Dijkstra.Specification.Chain.LastAppliedBlock"
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
                                                   (2674 :: Integer)
                                                   (18031157011309193886 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Chain._.Announcement"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_4440))
-- Ledger.Dijkstra.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_4456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4300
d_HasNewEpochState'45'ChainState_4456 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_4456
du_HasNewEpochState'45'ChainState_4456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4300
du_HasNewEpochState'45'ChainState_4456
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4310
      (coe (\ v0 -> d_newEpochState_4448 (coe v0)))
-- Ledger.Dijkstra.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_4458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4320
d_HasLastEpoch'45'ChainState_4458 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_4458
du_HasLastEpoch'45'ChainState_4458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4320
du_HasLastEpoch'45'ChainState_4458
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4330
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4328
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4336)
              (d_newEpochState_4448 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_4460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4226
d_HasEpochState'45'ChainState_4460 ~v0 ~v1
  = du_HasEpochState'45'ChainState_4460
du_HasEpochState'45'ChainState_4460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4226
du_HasEpochState'45'ChainState_4460
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4236
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4234
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4338)
              (d_newEpochState_4448 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_4462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1352
d_HasEnactState'45'ChainState_4462 ~v0 ~v1
  = du_HasEnactState'45'ChainState_4462
du_HasEnactState'45'ChainState_4462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1352
du_HasEnactState'45'ChainState_4462
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1362
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1360
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4248)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4234
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4338)
                 (d_newEpochState_4448 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasLedgerState-ChainState
d_HasLedgerState'45'ChainState_4464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3944
d_HasLedgerState'45'ChainState_4464 ~v0 ~v1
  = du_HasLedgerState'45'ChainState_4464
du_HasLedgerState'45'ChainState_4464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3944
du_HasLedgerState'45'ChainState_4464
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3954
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3952
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4244)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4234
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4338)
                 (d_newEpochState_4448 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_4466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3310
d_HasUTxOState'45'ChainState_4466 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_4466
du_HasUTxOState'45'ChainState_4466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3310
du_HasUTxOState'45'ChainState_4466
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_constructor_3320
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3318
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3960)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3952
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4244)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4234
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4338)
                    (d_newEpochState_4448 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_4468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1908
d_HasCertState'45'ChainState_4468 ~v0 ~v1
  = du_HasCertState'45'ChainState_4468
du_HasCertState'45'ChainState_4468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1908
du_HasCertState'45'ChainState_4468
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1918
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1916
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3966)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3952
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4244)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4234
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4338)
                    (d_newEpochState_4448 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_4470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1788
d_HasRewards'45'ChainState_4470 ~v0 ~v1
  = du_HasRewards'45'ChainState_4470
du_HasRewards'45'ChainState_4470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1788
du_HasRewards'45'ChainState_4470
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1798
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1796
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_2000)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1916
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3966)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3952
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4244)
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4234
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4338)
                       (d_newEpochState_4448 (coe v0)))))))
-- Ledger.Dijkstra.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_4472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
d_HasPParams'45'ChainState_4472 ~v0 ~v1
  = du_HasPParams'45'ChainState_4472
du_HasPParams'45'ChainState_4472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
du_HasPParams'45'ChainState_4472
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_742
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1368)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1360
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4248)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4234
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4338)
                    (d_newEpochState_4448 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_4474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842] ->
  Integer
d_totalRefScriptsSize_4474 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (\ v4 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_refScriptsSize_3492
              (coe v0) (coe v1) (coe v4)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3832
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3962)
                 v2))
         v3)
-- Ledger.Dijkstra.Specification.Chain.CertifyEnv
d_CertifyEnv_4484 a0 a1 = ()
data T_CertifyEnv_4484
  = C_constructor_4502 (Maybe T_LastAppliedBlock_4426)
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1458]
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324
                       Integer
-- Ledger.Dijkstra.Specification.Chain.CertifyEnv.lastApplied
d_lastApplied_4494 ::
  T_CertifyEnv_4484 -> Maybe T_LastAppliedBlock_4426
d_lastApplied_4494 v0
  = case coe v0 of
      C_constructor_4502 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.CertifyEnv.committee
d_committee_4496 ::
  T_CertifyEnv_4484 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1458]
d_committee_4496 v0
  = case coe v0 of
      C_constructor_4502 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.CertifyEnv.enactState
d_enactState_4498 ::
  T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324
d_enactState_4498 v0
  = case coe v0 of
      C_constructor_4502 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.CertifyEnv.treasury
d_treasury_4500 :: T_CertifyEnv_4484 -> Integer
d_treasury_4500 v0
  = case coe v0 of
      C_constructor_4502 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.HasCast-CertifyEnv
d_HasCast'45'CertifyEnv_4504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertifyEnv_4504 ~v0 ~v1
  = du_HasCast'45'CertifyEnv_4504
du_HasCast'45'CertifyEnv_4504 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertifyEnv_4504
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
                                 (4484 :: Integer) (18031157011309193886 :: Integer)
                                 "Ledger.Dijkstra.Specification.Chain.CertifyEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (4426 :: Integer) (18031157011309193886 :: Integer)
                                             "Ledger.Dijkstra.Specification.Chain.LastAppliedBlock"
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
                                    (4484 :: Integer) (18031157011309193886 :: Integer)
                                    "Ledger.Dijkstra.Specification.Chain.CertifyEnv"
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
                                    (3912 :: Integer) (18031157011309193886 :: Integer)
                                    "Ledger.Dijkstra.Specification.Chain._.LeiosCommittee"
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
                                       (4484 :: Integer) (18031157011309193886 :: Integer)
                                       "Ledger.Dijkstra.Specification.Chain.CertifyEnv"
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
                                       (3286 :: Integer) (18031157011309193886 :: Integer)
                                       "Ledger.Dijkstra.Specification.Chain._.EnactState"
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
                                          (4484 :: Integer) (18031157011309193886 :: Integer)
                                          "Ledger.Dijkstra.Specification.Chain.CertifyEnv"
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
                                          (24 :: Integer) (14798748958053396954 :: Integer)
                                          "Ledger.Prelude.Base.Treasury"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_constructor_4502))
-- Ledger.Dijkstra.Specification.Chain.certifyEnv
d_certifyEnv_4506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_ChainState_4442 -> T_CertifyEnv_4484
d_certifyEnv_4506 ~v0 ~v1 v2 = du_certifyEnv_4506 v2
du_certifyEnv_4506 :: T_ChainState_4442 -> T_CertifyEnv_4484
du_certifyEnv_4506 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
      (coe
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
                                    (4484 :: Integer) (18031157011309193886 :: Integer)
                                    "Ledger.Dijkstra.Specification.Chain.CertifyEnv"
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
                                                (4426 :: Integer) (18031157011309193886 :: Integer)
                                                "Ledger.Dijkstra.Specification.Chain.LastAppliedBlock"
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
                                       (4484 :: Integer) (18031157011309193886 :: Integer)
                                       "Ledger.Dijkstra.Specification.Chain.CertifyEnv"
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
                                       (3912 :: Integer) (18031157011309193886 :: Integer)
                                       "Ledger.Dijkstra.Specification.Chain._.LeiosCommittee"
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
                                          (4484 :: Integer) (18031157011309193886 :: Integer)
                                          "Ledger.Dijkstra.Specification.Chain.CertifyEnv"
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
                                          (3286 :: Integer) (18031157011309193886 :: Integer)
                                          "Ledger.Dijkstra.Specification.Chain._.EnactState"
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
                                             (4484 :: Integer) (18031157011309193886 :: Integer)
                                             "Ledger.Dijkstra.Specification.Chain.CertifyEnv"
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
                                             (24 :: Integer) (14798748958053396954 :: Integer)
                                             "Ledger.Prelude.Base.Treasury"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
            (coe C_constructor_4502)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe d_lastApplied_4450 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4292
               (coe d_newEpochState_4448 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1360
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4248)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4234
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4338)
                     (d_newEpochState_4448 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_202
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4210
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                        (coe d_newEpochState_4448 (coe v0))))))))
-- Ledger.Dijkstra.Specification.Chain._._.lastApplied
d_lastApplied_4516 ::
  T_ChainState_4442 -> Maybe T_LastAppliedBlock_4426
d_lastApplied_4516 v0 = coe d_lastApplied_4450 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._.newEpochState
d_newEpochState_4518 ::
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264
d_newEpochState_4518 v0 = coe d_newEpochState_4448 (coe v0)
-- Ledger.Dijkstra.Specification.Chain.pendingEB
d_pendingEB_4524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_LastAppliedBlock_4426 -> Maybe AgdaAny
d_pendingEB_4524 ~v0 ~v1 v2 = du_pendingEB_4524 v2
du_pendingEB_4524 :: T_LastAppliedBlock_4426 -> Maybe AgdaAny
du_pendingEB_4524 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_map_64
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
      (d_announcedEB_4438 (coe v0))
-- Ledger.Dijkstra.Specification.Chain.ResolvedEB
d_ResolvedEB_4528 a0 a1 = ()
data T_ResolvedEB_4528
  = C_constructor_4538 MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842]
-- Ledger.Dijkstra.Specification.Chain.ResolvedEB.eb
d_eb_4534 ::
  T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
d_eb_4534 v0
  = case coe v0 of
      C_constructor_4538 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.ResolvedEB.closure
d_closure_4536 ::
  T_ResolvedEB_4528 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842]
d_closure_4536 v0
  = case coe v0 of
      C_constructor_4538 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain._⊢_⇀⦇_,CERTIFY⦈_
d__'8866'_'8640''10631'_'44'CERTIFY'10632'__4540 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CERTIFY'10632'__4540
  = C_CERTIFY'45'None_4546 |
    C_CERTIFY'45'EB_4596 T_LastAppliedBlock_4426
                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Chain._.committee
d_committee_4562 ::
  T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  T_ResolvedEB_4528 ->
  T_LastAppliedBlock_4426 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1458]
d_committee_4562 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_committee_4562 v0
du_committee_4562 ::
  T_CertifyEnv_4484 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1458]
du_committee_4562 v0 = coe d_committee_4496 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.enactState
d_enactState_4564 ::
  T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  T_ResolvedEB_4528 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324
d_enactState_4564 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_enactState_4564 v0
du_enactState_4564 ::
  T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324
du_enactState_4564 v0 = coe d_enactState_4498 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.lastApplied
d_lastApplied_4566 ::
  T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  T_ResolvedEB_4528 ->
  T_LastAppliedBlock_4426 -> Maybe T_LastAppliedBlock_4426
d_lastApplied_4566 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_lastApplied_4566 v0
du_lastApplied_4566 ::
  T_CertifyEnv_4484 -> Maybe T_LastAppliedBlock_4426
du_lastApplied_4566 v0 = coe d_lastApplied_4494 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.treasury
d_treasury_4568 ::
  T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  T_ResolvedEB_4528 -> T_LastAppliedBlock_4426 -> Integer
d_treasury_4568 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_4568 v0
du_treasury_4568 :: T_CertifyEnv_4484 -> Integer
du_treasury_4568 v0 = coe d_treasury_4500 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.closure
d_closure_4572 ::
  T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  T_ResolvedEB_4528 ->
  T_LastAppliedBlock_4426 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842]
d_closure_4572 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_closure_4572 v4
du_closure_4572 ::
  T_ResolvedEB_4528 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842]
du_closure_4572 v0 = coe d_closure_4536 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.eb
d_eb_4574 ::
  T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  T_ResolvedEB_4528 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
d_eb_4574 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_eb_4574 v4
du_eb_4574 ::
  T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
du_eb_4574 v0 = coe d_eb_4534 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.announcedEB
d_announcedEB_4578 ::
  T_LastAppliedBlock_4426 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_4578 v0 = coe d_announcedEB_4438 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4580 :: T_LastAppliedBlock_4426 -> AgdaAny
d_slot_4580 v0 = coe d_slot_4434 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.headerHash
d_headerHash_4582 :: T_LastAppliedBlock_4426 -> AgdaAny
d_headerHash_4582 v0 = coe d_headerHash_4436 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_4590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  T_ResolvedEB_4528 ->
  T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_4590 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7
  = du_leiosQuorumStakeThreshold_4590 v2
du_leiosQuorumStakeThreshold_4590 ::
  T_CertifyEnv_4484 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_leiosQuorumStakeThreshold_4590 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_434
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1368)
         (d_enactState_4498 (coe v0)))
-- Ledger.Dijkstra.Specification.Chain.delayChecks
d_delayChecks_4598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Maybe T_LastAppliedBlock_4426 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  AgdaAny -> ()
d_delayChecks_4598 = erased
-- Ledger.Dijkstra.Specification.Chain.delayChecks?
d_delayChecks'63'_4614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Maybe T_LastAppliedBlock_4426 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayChecks'63'_4614 v0 ~v1 v2 v3 v4 v5
  = du_delayChecks'63'_4614 v0 v2 v3 v4 v5
du_delayChecks'63'_4614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Maybe T_LastAppliedBlock_4426 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_delayChecks'63'_4614 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                    (coe
                       MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
                       (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d__'43'__2380
                          (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
                                (coe v0)))
                          (d_slot_4434 (coe v6))
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_certificationDelay_1642
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2872
                                (coe v0))
                             (coe v1)))
                       v4)
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.Dec-delayChecks
d_Dec'45'delayChecks_4630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Maybe T_LastAppliedBlock_4426 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'delayChecks_4630 v0 ~v1 v2 v3 v4 v5
  = du_Dec'45'delayChecks_4630 v0 v2 v3 v4 v5
du_Dec'45'delayChecks_4630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Maybe T_LastAppliedBlock_4426 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'delayChecks_4630 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         du_delayChecks'63'_4614 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4))
-- Ledger.Dijkstra.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__4640 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__4640
  = C_CHAIN_4748 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Chain._.lastApplied
d_lastApplied_4656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  Maybe T_LastAppliedBlock_4426
d_lastApplied_4656 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7
  = du_lastApplied_4656 v6
du_lastApplied_4656 ::
  T_ChainState_4442 -> Maybe T_LastAppliedBlock_4426
du_lastApplied_4656 v0 = coe d_lastApplied_4450 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.newEpochState
d_newEpochState_4658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264
d_newEpochState_4658 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7
  = du_newEpochState_4658 v6
du_newEpochState_4658 ::
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264
du_newEpochState_4658 v0 = coe d_newEpochState_4448 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bHeaderHash
d_bHeaderHash_4666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  AgdaAny
d_bHeaderHash_4666 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7
  = du_bHeaderHash_4666 v3
du_bHeaderHash_4666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  AgdaAny
du_bHeaderHash_4666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3098
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bheader
d_bheader_4668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3066
d_bheader_4668 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 = du_bheader_4668 v3
du_bheader_4668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3066
du_bheader_4668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ebCert
d_ebCert_4670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644
d_ebCert_4670 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 = du_ebCert_4670 v3
du_ebCert_4670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644
du_ebCert_4670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3102
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ts
d_ts_4672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842]
d_ts_4672 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 = du_ts_4672 v3
du_ts_4672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842]
du_ts_4672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3100
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bhbody
d_bhbody_4680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034
d_bhbody_4680 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 = du_bhbody_4680 v3
du_bhbody_4680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3034
du_bhbody_4680 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.announcedEB
d_announcedEB_4686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_4686 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7
  = du_announcedEB_4686 v3
du_announcedEB_4686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_announcedEB_4686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3060
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  AgdaAny
d_slot_4698 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 = du_slot_4698 v3
du_slot_4698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  AgdaAny
du_slot_4698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3054
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.bcur
d_bcur_4702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_4702 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du_bcur_4702 v5
du_bcur_4702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_4702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4284
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.epochState
d_epochState_4706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4198
d_epochState_4706 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7
  = du_epochState_4706 v5
du_epochState_4706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4198
du_epochState_4706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.acnt
d_acnt_4718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196
d_acnt_4718 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du_acnt_4718 v5
du_acnt_4718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196
du_acnt_4718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4210
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.es
d_es_4720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324
d_es_4720 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du_es_4720 v5
du_es_4720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324
du_es_4720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.ls
d_ls_4724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924
d_ls_4724 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du_ls_4724 v5
du_ls_4724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924
du_ls_4724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.pparams
d_pparams_4734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_4734 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du_pparams_4734 v5
du_pparams_4734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_4734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_4742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  Integer
d_maxRefScriptSizePerBlock_4742 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_maxRefScriptSizePerBlock_4742 v6
du_maxRefScriptSizePerBlock_4742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  Integer
du_maxRefScriptSizePerBlock_4742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_462
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1344)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                  (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_46215 ::
  T_GeneralizeTel_46217 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924
d_'46'generalizedField'45'ls''_46215 v0
  = case coe v0 of
      C_mkGeneralizeTel_46219 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.GeneralizeTel
d_GeneralizeTel_46217 a0 a1 = ()
newtype T_GeneralizeTel_46217
  = C_mkGeneralizeTel_46219 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924
