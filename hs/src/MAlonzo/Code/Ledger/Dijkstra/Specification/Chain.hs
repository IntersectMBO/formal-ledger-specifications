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
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1348
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
d_Slot_882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_882 = erased
-- _.TopLevelTx
d_TopLevelTx_920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_920 = erased
-- _.HasPParams.PParamsOf
d_PParamsOf_1804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_PParamsOf_1804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
      (coe v0)
-- _.PParams.Emax
d_Emax_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_Emax_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_470
      (coe v0)
-- _.PParams.a
d_a_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_a_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_440 (coe v0)
-- _.PParams.a0
d_a0_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_474
      (coe v0)
-- _.PParams.b
d_b_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_b_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_442 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_ccMaxTermLength_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_486
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_ccMinSize_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_484
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_coinsPerUTxOByte_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_454
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_collateralPercentage_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_476
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_682
d_costmdlsAssoc_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_478
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_drepActivity_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_494
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_drepDeposit_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_492
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_246
d_drepThresholds_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_482
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_govActionDeposit_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_490
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_govActionLifetime_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_488
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_keyDeposit_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_444
      (coe v0)
-- _.PParams.leiosCommitteeSize
d_leiosCommitteeSize_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosCommitteeSize_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_432
      (coe v0)
-- _.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosDiffusionPeriod_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_426
      (coe v0)
-- _.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosHeaderPeriod_2038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_422
      (coe v0)
-- _.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_leiosMaxEBExUnits_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_436
      (coe v0)
-- _.PParams.leiosMaxEBSize
d_leiosMaxEBSize_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosMaxEBSize_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_428
      (coe v0)
-- _.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosMaxEBTxsSize_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_430
      (coe v0)
-- _.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_438
      (coe v0)
-- _.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_434
      (coe v0)
-- _.PParams.leiosVotingPeriod
d_leiosVotingPeriod_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_leiosVotingPeriod_2050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_424
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_maxBlockExUnits_2052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_414
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxBlockSize_2054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_406
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxCollateralInputs_2056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_418
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxHeaderSize_2058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_410
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxRefScriptSizePerBlock_2060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_462
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxRefScriptSizePerTx_2062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_460
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_2064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_maxTxExUnits_2064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_412
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxTxSize_2066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_408
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_2068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_maxValSize_2068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_416
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_458
      (coe v0)
-- _.PParams.minPoolCost
d_minPoolCost_2072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_minPoolCost_2072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_448
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_2074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_minUTxOValue_2074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_468
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_2076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_450
      (coe v0)
-- _.PParams.nopt
d_nopt_2078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_nopt_2078 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_472
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_2080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_poolDeposit_2080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_446
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_2082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_290
d_poolThresholds_2082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_480
      (coe v0)
-- _.PParams.prices
d_prices_2084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_prices_2084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_456
      (coe v0)
-- _.PParams.pv
d_pv_2086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_420
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_466
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_2090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2090 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_464
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_2092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2092 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_452
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2676 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.BBodyEnv
d_BBodyEnv_2680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  ()
d_BBodyEnv_2680 = erased
-- Ledger.Dijkstra.Specification.Chain._.BBodyState
d_BBodyState_2682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  ()
d_BBodyState_2682 = erased
-- Ledger.Dijkstra.Specification.Chain._.BHBody
d_BHBody_2684 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.BHeader
d_BHeader_2688 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.Block
d_Block_2692 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.CertifiedEB
d_CertifiedEB_2696 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.Dec-leiosBodyChecks
d_Dec'45'leiosBodyChecks_2700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  Bool ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'leiosBodyChecks_2700 ~v0 ~v1
  = du_Dec'45'leiosBodyChecks_2700
du_Dec'45'leiosBodyChecks_2700 ::
  Bool ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'leiosBodyChecks_2700
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_Dec'45'leiosBodyChecks_3194
-- Ledger.Dijkstra.Specification.Chain._.incrBlocks
d_incrBlocks_2702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
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
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_incrBlocks_3146
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.leiosBodyChecks
d_leiosBodyChecks_2704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  Bool ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  ()
d_leiosBodyChecks_2704 = erased
-- Ledger.Dijkstra.Specification.Chain._.leiosBodyChecks?
d_leiosBodyChecks'63'_2706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  Bool ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_leiosBodyChecks'63'_2706 ~v0 ~v1 = du_leiosBodyChecks'63'_2706
du_leiosBodyChecks'63'_2706 ::
  Bool ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_leiosBodyChecks'63'_2706
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_leiosBodyChecks'63'_3166
-- Ledger.Dijkstra.Specification.Chain._.BHBody.announcedEB
d_announcedEB_2714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3046 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_2714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3072
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bhash
d_bhash_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3046 ->
  AgdaAny
d_bhash_2716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhash_3068
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bsize
d_bsize_2718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3046 ->
  Integer
d_bsize_2718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bsize_3064
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3046 ->
  AgdaAny
d_bvkcold_2720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3062
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.certifiedEB
d_certifiedEB_2722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3046 ->
  Bool
d_certifiedEB_2722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiedEB_3074
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3046 ->
  Integer
d_hBbsize_2724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_hBbsize_3070
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHBody.slot
d_slot_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3046 ->
  AgdaAny
d_slot_2726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3066
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHeader.bhbody
d_bhbody_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3078 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3046
d_bhbody_2730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3084
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.BHeader.bhsig
d_bhsig_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3078 ->
  AgdaAny
d_bhsig_2732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhsig_3086
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  AgdaAny
d_bBodyHash_2736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_3134
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bBodySize
d_bBodySize_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  Integer
d_bBodySize_2738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_3132
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bHeaderHash
d_bHeaderHash_2740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  AgdaAny
d_bHeaderHash_2740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3126
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.bheader
d_bheader_2742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3078
d_bheader_2742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3124
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.ebCert
d_ebCert_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090
d_ebCert_2744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3130
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.ts
d_ts_2746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850]
d_ts_2746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3128
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2748 = erased
-- Ledger.Dijkstra.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2750 = erased
-- Ledger.Dijkstra.Specification.Chain._.CertifiedEB.cert
d_cert_2754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648
d_cert_2754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_cert_3098
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.CertifiedEB.closure
d_closure_2756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850]
d_closure_2756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_closure_3102
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.CertifiedEB.eb
d_eb_2758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
d_eb_2758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_eb_3100
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.CertStateOf
d_CertStateOf_2790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1912 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1584
d_CertStateOf_2790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1920
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState
d_HasCertState_2866 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasRewards
d_HasRewards_2944 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1792
d_HasRewards'45'CertState_2948 ~v0 ~v1
  = du_HasRewards'45'CertState_2948
du_HasRewards'45'CertState_2948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1792
du_HasRewards'45'CertState_2948
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_2004
-- Ledger.Dijkstra.Specification.Chain._.RewardsOf
d_RewardsOf_3016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1792 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1800
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_3174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1912 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1584
d_CertStateOf_3174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1920
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_3214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1792 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1800
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EnactState
d_EnactState_3298 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.EnactStateOf
d_EnactStateOf_3302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1356 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_EnactStateOf_3302 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1364
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState
d_HasEnactState_3306 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_3310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
d_HasPParams'45'EnactState_3310 ~v0 ~v1
  = du_HasPParams'45'EnactState_3310
du_HasPParams'45'EnactState_3310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
du_HasPParams'45'EnactState_3310
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1372
-- Ledger.Dijkstra.Specification.Chain._.EnactState.cc
d_cc_3348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_3348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1340 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EnactState.constitution
d_constitution_3350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_3350 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EnactState.pparams
d_pparams_3352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EnactState.pv
d_pv_3354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_3354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1344 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EnactState.withdrawals
d_withdrawals_3356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_3356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1348
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_3360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1356 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_EnactStateOf_3360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1364
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EpochStateOf
d_EpochStateOf_3374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4230 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4202
d_EpochStateOf_3374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4238
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1356
d_HasEnactState'45'EpochState_3392 ~v0 ~v1
  = du_HasEnactState'45'EpochState_3392
du_HasEnactState'45'EpochState_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1356
du_HasEnactState'45'EpochState_3392
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4252
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState
d_HasEpochState_3396 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_3400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4230
d_HasEpochState'45'NewEpochState_3400 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_3400
du_HasEpochState'45'NewEpochState_3400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4230
du_HasEpochState'45'NewEpochState_3400
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4342
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_3406 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_3410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4324
d_HasLastEpoch'45'NewEpochState_3410 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_3410
du_HasLastEpoch'45'NewEpochState_3410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4324
du_HasLastEpoch'45'NewEpochState_3410
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4340
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState-EpochState
d_HasLedgerState'45'EpochState_3412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3948
d_HasLedgerState'45'EpochState_3412 ~v0 ~v1
  = du_HasLedgerState'45'EpochState_3412
du_HasLedgerState'45'EpochState_3412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3948
du_HasLedgerState'45'EpochState_3412
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4248
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_3416 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.LastEpochOf
d_LastEpochOf_3440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4324 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4332
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState
d_NewEpochState_3448 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_3452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4304 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268
d_NewEpochStateOf_3452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4312
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_3534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4230 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4202
d_EpochStateOf_3534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4238
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_3538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4324 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_3538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4332
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4304 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268
d_NewEpochStateOf_3542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4312
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bcur
d_bcur_3546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4288
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.bprev
d_bprev_3548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_3548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4286
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.epochState
d_epochState_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4202
d_epochState_3550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_3552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  AgdaAny
d_lastEpoch_3552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4284
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.leiosCommittee
d_leiosCommittee_3554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1462]
d_leiosCommittee_3554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4296
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.pd
d_pd_3556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_3556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4294 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.NewEpochState.ru
d_ru_3558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3870
d_ru_3558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4292 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3770 = erased
-- Ledger.Dijkstra.Specification.Chain._.HasCertState-LedgerState
d_HasCertState'45'LedgerState_3788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1912
d_HasCertState'45'LedgerState_3788 ~v0 ~v1
  = du_HasCertState'45'LedgerState_3788
du_HasCertState'45'LedgerState_3788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1912
du_HasCertState'45'LedgerState_3788
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3970
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState
d_HasLedgerState_3808 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxO-LedgerState
d_HasUTxO'45'LedgerState_3822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3832
d_HasUTxO'45'LedgerState_3822 ~v0 ~v1
  = du_HasUTxO'45'LedgerState_3822
du_HasUTxO'45'LedgerState_3822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3832
du_HasUTxO'45'LedgerState_3822
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3966
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState-LedgerState
d_HasUTxOState'45'LedgerState_3826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3314
d_HasUTxOState'45'LedgerState_3826 ~v0 ~v1
  = du_HasUTxOState'45'LedgerState_3826
du_HasUTxOState'45'LedgerState_3826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3314
du_HasUTxOState'45'LedgerState_3826
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3964
-- Ledger.Dijkstra.Specification.Chain._.LedgerState
d_LedgerState_3838 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain._.LedgerStateOf
d_LedgerStateOf_3842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3948 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928
d_LedgerStateOf_3842 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3956
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasLedgerState.LedgerStateOf
d_LedgerStateOf_3876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3948 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928
d_LedgerStateOf_3876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3956
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.certState
d_certState_3892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1584
d_certState_3892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.govSt
d_govSt_3894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3938
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LedgerState.utxoSt
d_utxoSt_3896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3294
d_utxoSt_3896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3936
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.LeiosCommittee
d_LeiosCommittee_3920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  ()
d_LeiosCommittee_3920 = erased
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert
d_ValidEBCert_3922 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.quorum
d_quorum_3930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1680 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_quorum_3930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_quorum_1716
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.signersKeyed
d_signersKeyed_3934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1680 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_signersKeyed_3934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersKeyed_1710
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.signersSeated
d_signersSeated_3936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1680 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_signersSeated_3936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersSeated_1706
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEBCert.validSignature
d_validSignature_3938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1680 ->
  AgdaAny
d_validSignature_3938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_validSignature_1712
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.Announcement
d_Announcement_3942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  ()
d_Announcement_3942 = erased
-- Ledger.Dijkstra.Specification.Chain._.hashEB
d_hashEB_3944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
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
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1418
         (coe v0))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
         (coe v1))
-- Ledger.Dijkstra.Specification.Chain._.ValidEB
d_ValidEB_3948 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Chain._.ValidEB.boundsOK
d_boundsOK_3954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.T_ValidEB_3002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.T_WithinEBBounds_2962
d_boundsOK_3954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.d_boundsOK_3026
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEB.extensionOK
d_extensionOK_3956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.T_ValidEB_3002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_extensionOK_3956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.d_extensionOK_3030
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ValidEB.nonemptyOK
d_nonemptyOK_3958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.T_ValidEB_3002 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_nonemptyOK_3958 = erased
-- Ledger.Dijkstra.Specification.Chain._.ValidEB.refsOK
d_refsOK_3960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.T_ValidEB_3002 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refsOK_3960 = erased
-- Ledger.Dijkstra.Specification.Chain._.ValidEB.uniqueRefsOK
d_uniqueRefsOK_3962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.T_ValidEB_3002 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_uniqueRefsOK_3962 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.d_uniqueRefsOK_3022
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__4140 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState
d_HasUTxOState_4238 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_4274 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3294
d_UTxOStateOf_4274 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3322
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_4364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3294
d_UTxOStateOf_4364 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3322
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.EBHash
d_EBHash_4416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  ()
d_EBHash_4416 = erased
-- Ledger.Dijkstra.Specification.Chain._.RBHeaderHash
d_RBHeaderHash_4418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  ()
d_RBHeaderHash_4418 = erased
-- Ledger.Dijkstra.Specification.Chain._.rbHeaderHashBytes
d_rbHeaderHashBytes_4420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  AgdaAny -> AgdaAny
d_rbHeaderHashBytes_4420 v0 ~v1 = du_rbHeaderHashBytes_4420 v0
du_rbHeaderHashBytes_4420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
du_rbHeaderHashBytes_4420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1418
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock
d_LastAppliedBlock_4422 a0 a1 = ()
data T_LastAppliedBlock_4422
  = C_constructor_4436 AgdaAny AgdaAny
                       (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock.slot
d_slot_4430 :: T_LastAppliedBlock_4422 -> AgdaAny
d_slot_4430 v0
  = case coe v0 of
      C_constructor_4436 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock.headerHash
d_headerHash_4432 :: T_LastAppliedBlock_4422 -> AgdaAny
d_headerHash_4432 v0
  = case coe v0 of
      C_constructor_4436 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.LastAppliedBlock.announcedEB
d_announcedEB_4434 ::
  T_LastAppliedBlock_4422 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_4434 v0
  = case coe v0 of
      C_constructor_4436 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.ChainState
d_ChainState_4438 a0 a1 = ()
data T_ChainState_4438
  = C_constructor_4448 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268
                       (Maybe T_LastAppliedBlock_4422)
-- Ledger.Dijkstra.Specification.Chain.ChainState.newEpochState
d_newEpochState_4444 ::
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268
d_newEpochState_4444 v0
  = case coe v0 of
      C_constructor_4448 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.ChainState.lastApplied
d_lastApplied_4446 ::
  T_ChainState_4438 -> Maybe T_LastAppliedBlock_4422
d_lastApplied_4446 v0
  = case coe v0 of
      C_constructor_4448 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.HasCast-LastAppliedBlock
d_HasCast'45'LastAppliedBlock_4450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LastAppliedBlock_4450 ~v0 ~v1
  = du_HasCast'45'LastAppliedBlock_4450
du_HasCast'45'LastAppliedBlock_4450 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LastAppliedBlock_4450
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
                                 (4422 :: Integer) (18031157011309193886 :: Integer)
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
                                 (882 :: Integer) (18031157011309193886 :: Integer) "_.Slot"
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
                                    (4422 :: Integer) (18031157011309193886 :: Integer)
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
                                    (4418 :: Integer) (18031157011309193886 :: Integer)
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
                                       (4422 :: Integer) (18031157011309193886 :: Integer)
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
                                                   (3942 :: Integer)
                                                   (18031157011309193886 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Chain._.Announcement"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_4436))
-- Ledger.Dijkstra.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_4452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4304
d_HasNewEpochState'45'ChainState_4452 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_4452
du_HasNewEpochState'45'ChainState_4452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4304
du_HasNewEpochState'45'ChainState_4452
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4314
      (coe (\ v0 -> d_newEpochState_4444 (coe v0)))
-- Ledger.Dijkstra.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_4454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4324
d_HasLastEpoch'45'ChainState_4454 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_4454
du_HasLastEpoch'45'ChainState_4454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4324
du_HasLastEpoch'45'ChainState_4454
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4334
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4332
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4340)
              (d_newEpochState_4444 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_4456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4230
d_HasEpochState'45'ChainState_4456 ~v0 ~v1
  = du_HasEpochState'45'ChainState_4456
du_HasEpochState'45'ChainState_4456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4230
du_HasEpochState'45'ChainState_4456
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4240
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4238
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4342)
              (d_newEpochState_4444 (coe v0))))
-- Ledger.Dijkstra.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_4458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1356
d_HasEnactState'45'ChainState_4458 ~v0 ~v1
  = du_HasEnactState'45'ChainState_4458
du_HasEnactState'45'ChainState_4458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1356
du_HasEnactState'45'ChainState_4458
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1366
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1364
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4252)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4238
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4342)
                 (d_newEpochState_4444 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasLedgerState-ChainState
d_HasLedgerState'45'ChainState_4460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3948
d_HasLedgerState'45'ChainState_4460 ~v0 ~v1
  = du_HasLedgerState'45'ChainState_4460
du_HasLedgerState'45'ChainState_4460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3948
du_HasLedgerState'45'ChainState_4460
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3958
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3956
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4248)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4238
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4342)
                 (d_newEpochState_4444 (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_4462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3314
d_HasUTxOState'45'ChainState_4462 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_4462
du_HasUTxOState'45'ChainState_4462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3314
du_HasUTxOState'45'ChainState_4462
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_constructor_3324
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3322
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3964)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3956
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4248)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4238
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4342)
                    (d_newEpochState_4444 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_4464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1912
d_HasCertState'45'ChainState_4464 ~v0 ~v1
  = du_HasCertState'45'ChainState_4464
du_HasCertState'45'ChainState_4464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1912
du_HasCertState'45'ChainState_4464
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1922
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1920
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3970)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3956
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4248)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4238
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4342)
                    (d_newEpochState_4444 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_4466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1792
d_HasRewards'45'ChainState_4466 ~v0 ~v1
  = du_HasRewards'45'ChainState_4466
du_HasRewards'45'ChainState_4466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1792
du_HasRewards'45'ChainState_4466
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1802
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1800
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_2004)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1920
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3970)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3956
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4248)
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4238
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4342)
                       (d_newEpochState_4444 (coe v0)))))))
-- Ledger.Dijkstra.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_4468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
d_HasPParams'45'ChainState_4468 ~v0 ~v1
  = du_HasPParams'45'ChainState_4468
du_HasPParams'45'ChainState_4468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
du_HasPParams'45'ChainState_4468
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_742
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1372)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1364
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4252)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4238
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4342)
                    (d_newEpochState_4444 (coe v0))))))
-- Ledger.Dijkstra.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_4470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  Integer
d_totalRefScriptsSize_4470 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (\ v4 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_refScriptsSize_3496
              (coe v0) (coe v1) (coe v4)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3840
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3966)
                 v2))
         v3)
-- Ledger.Dijkstra.Specification.Chain.CertifyEnv
d_CertifyEnv_4480 a0 a1 = ()
data T_CertifyEnv_4480
  = C_constructor_4498 (Maybe T_LastAppliedBlock_4422)
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1462]
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
                       Integer
-- Ledger.Dijkstra.Specification.Chain.CertifyEnv.lastApplied
d_lastApplied_4490 ::
  T_CertifyEnv_4480 -> Maybe T_LastAppliedBlock_4422
d_lastApplied_4490 v0
  = case coe v0 of
      C_constructor_4498 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.CertifyEnv.committee
d_committee_4492 ::
  T_CertifyEnv_4480 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1462]
d_committee_4492 v0
  = case coe v0 of
      C_constructor_4498 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.CertifyEnv.enactState
d_enactState_4494 ::
  T_CertifyEnv_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_enactState_4494 v0
  = case coe v0 of
      C_constructor_4498 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.CertifyEnv.treasury
d_treasury_4496 :: T_CertifyEnv_4480 -> Integer
d_treasury_4496 v0
  = case coe v0 of
      C_constructor_4498 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.HasCast-CertifyEnv
d_HasCast'45'CertifyEnv_4500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertifyEnv_4500 ~v0 ~v1
  = du_HasCast'45'CertifyEnv_4500
du_HasCast'45'CertifyEnv_4500 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertifyEnv_4500
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
                                 (4480 :: Integer) (18031157011309193886 :: Integer)
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
                                             (4422 :: Integer) (18031157011309193886 :: Integer)
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
                                    (4480 :: Integer) (18031157011309193886 :: Integer)
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
                                    (3920 :: Integer) (18031157011309193886 :: Integer)
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
                                       (4480 :: Integer) (18031157011309193886 :: Integer)
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
                                       (3298 :: Integer) (18031157011309193886 :: Integer)
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
                                          (4480 :: Integer) (18031157011309193886 :: Integer)
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
         (coe C_constructor_4498))
-- Ledger.Dijkstra.Specification.Chain.certifyEnv
d_certifyEnv_4502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_ChainState_4438 -> T_CertifyEnv_4480
d_certifyEnv_4502 ~v0 ~v1 v2 = du_certifyEnv_4502 v2
du_certifyEnv_4502 :: T_ChainState_4438 -> T_CertifyEnv_4480
du_certifyEnv_4502 v0
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
                                    (4480 :: Integer) (18031157011309193886 :: Integer)
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
                                                (4422 :: Integer) (18031157011309193886 :: Integer)
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
                                       (4480 :: Integer) (18031157011309193886 :: Integer)
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
                                       (3920 :: Integer) (18031157011309193886 :: Integer)
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
                                          (4480 :: Integer) (18031157011309193886 :: Integer)
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
                                          (3298 :: Integer) (18031157011309193886 :: Integer)
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
                                             (4480 :: Integer) (18031157011309193886 :: Integer)
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
            (coe C_constructor_4498)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe d_lastApplied_4446 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4296
               (coe d_newEpochState_4444 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1364
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4252)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4238
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4342)
                     (d_newEpochState_4444 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_202
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4214
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
                        (coe d_newEpochState_4444 (coe v0))))))))
-- Ledger.Dijkstra.Specification.Chain._._.lastApplied
d_lastApplied_4512 ::
  T_ChainState_4438 -> Maybe T_LastAppliedBlock_4422
d_lastApplied_4512 v0 = coe d_lastApplied_4446 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._._.newEpochState
d_newEpochState_4514 ::
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268
d_newEpochState_4514 v0 = coe d_newEpochState_4444 (coe v0)
-- Ledger.Dijkstra.Specification.Chain.pendingEB
d_pendingEB_4520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_LastAppliedBlock_4422 -> Maybe AgdaAny
d_pendingEB_4520 ~v0 ~v1 v2 = du_pendingEB_4520 v2
du_pendingEB_4520 :: T_LastAppliedBlock_4422 -> Maybe AgdaAny
du_pendingEB_4520 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_map_64
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
      (d_announcedEB_4434 (coe v0))
-- Ledger.Dijkstra.Specification.Chain._⊢_⇀⦇_,CERTIFY⦈_
d__'8866'_'8640''10631'_'44'CERTIFY'10632'__4524 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CERTIFY'10632'__4524
  = C_CERTIFY'45'None_4530 |
    C_CERTIFY'45'EB_4580 T_LastAppliedBlock_4422
                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Chain._.committee
d_committee_4544 ::
  T_CertifyEnv_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  T_LastAppliedBlock_4422 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1462]
d_committee_4544 v0 ~v1 ~v2 ~v3 ~v4 = du_committee_4544 v0
du_committee_4544 ::
  T_CertifyEnv_4480 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1462]
du_committee_4544 v0 = coe d_committee_4492 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.enactState
d_enactState_4546 ::
  T_CertifyEnv_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  T_LastAppliedBlock_4422 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_enactState_4546 v0 ~v1 ~v2 ~v3 ~v4 = du_enactState_4546 v0
du_enactState_4546 ::
  T_CertifyEnv_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
du_enactState_4546 v0 = coe d_enactState_4494 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.lastApplied
d_lastApplied_4548 ::
  T_CertifyEnv_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  T_LastAppliedBlock_4422 -> Maybe T_LastAppliedBlock_4422
d_lastApplied_4548 v0 ~v1 ~v2 ~v3 ~v4 = du_lastApplied_4548 v0
du_lastApplied_4548 ::
  T_CertifyEnv_4480 -> Maybe T_LastAppliedBlock_4422
du_lastApplied_4548 v0 = coe d_lastApplied_4490 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.treasury
d_treasury_4550 ::
  T_CertifyEnv_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  T_LastAppliedBlock_4422 -> Integer
d_treasury_4550 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_4550 v0
du_treasury_4550 :: T_CertifyEnv_4480 -> Integer
du_treasury_4550 v0 = coe d_treasury_4496 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.cert
d_cert_4554 ::
  T_CertifyEnv_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  T_LastAppliedBlock_4422 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648
d_cert_4554 ~v0 ~v1 ~v2 v3 ~v4 = du_cert_4554 v3
du_cert_4554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648
du_cert_4554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_cert_3098
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.closure
d_closure_4556 ::
  T_CertifyEnv_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  T_LastAppliedBlock_4422 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850]
d_closure_4556 ~v0 ~v1 ~v2 v3 ~v4 = du_closure_4556 v3
du_closure_4556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850]
du_closure_4556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_closure_3102
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.eb
d_eb_4558 ::
  T_CertifyEnv_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  T_LastAppliedBlock_4422 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
d_eb_4558 ~v0 ~v1 ~v2 v3 ~v4 = du_eb_4558 v3
du_eb_4558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
du_eb_4558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_eb_3100
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.announcedEB
d_announcedEB_4562 ::
  T_LastAppliedBlock_4422 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_4562 v0 = coe d_announcedEB_4434 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4564 :: T_LastAppliedBlock_4422 -> AgdaAny
d_slot_4564 v0 = coe d_slot_4430 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.headerHash
d_headerHash_4566 :: T_LastAppliedBlock_4422 -> AgdaAny
d_headerHash_4566 v0 = coe d_headerHash_4432 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_4574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_CertifyEnv_4480 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  T_LastAppliedBlock_4422 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_4574 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_leiosQuorumStakeThreshold_4574 v2
du_leiosQuorumStakeThreshold_4574 ::
  T_CertifyEnv_4480 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_leiosQuorumStakeThreshold_4574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_434
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1372)
         (d_enactState_4494 (coe v0)))
-- Ledger.Dijkstra.Specification.Chain.delayChecks
d_delayChecks_4582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Maybe T_LastAppliedBlock_4422 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  AgdaAny -> ()
d_delayChecks_4582 = erased
-- Ledger.Dijkstra.Specification.Chain.delayChecks?
d_delayChecks'63'_4598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Maybe T_LastAppliedBlock_4422 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayChecks'63'_4598 v0 ~v1 v2 v3 v4 v5
  = du_delayChecks'63'_4598 v0 v2 v3 v4 v5
du_delayChecks'63'_4598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Maybe T_LastAppliedBlock_4422 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_delayChecks'63'_4598 v0 v1 v2 v3 v4
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1420
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d__'43'__2380
                          (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1420
                                (coe v0)))
                          (d_slot_4430 (coe v6))
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_certificationDelay_1646
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2880
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
d_Dec'45'delayChecks_4614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Maybe T_LastAppliedBlock_4422 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'delayChecks_4614 v0 ~v1 v2 v3 v4 v5
  = du_Dec'45'delayChecks_4614 v0 v2 v3 v4 v5
du_Dec'45'delayChecks_4614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Maybe T_LastAppliedBlock_4422 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'delayChecks_4614 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         du_delayChecks'63'_4598 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4))
-- Ledger.Dijkstra.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__4624 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__4624
  = C_CHAIN_4730 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Chain._.lastApplied
d_lastApplied_4638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  Maybe T_LastAppliedBlock_4422
d_lastApplied_4638 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_lastApplied_4638 v5
du_lastApplied_4638 ::
  T_ChainState_4438 -> Maybe T_LastAppliedBlock_4422
du_lastApplied_4638 v0 = coe d_lastApplied_4446 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.newEpochState
d_newEpochState_4640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268
d_newEpochState_4640 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_newEpochState_4640 v5
du_newEpochState_4640 ::
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268
du_newEpochState_4640 v0 = coe d_newEpochState_4444 (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bHeaderHash
d_bHeaderHash_4648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  AgdaAny
d_bHeaderHash_4648 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6
  = du_bHeaderHash_4648 v3
du_bHeaderHash_4648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  AgdaAny
du_bHeaderHash_4648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3126
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bheader
d_bheader_4650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3078
d_bheader_4650 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 = du_bheader_4650 v3
du_bheader_4650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3078
du_bheader_4650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3124
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ebCert
d_ebCert_4652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090
d_ebCert_4652 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 = du_ebCert_4652 v3
du_ebCert_4652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090
du_ebCert_4652 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3130
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.ts
d_ts_4654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850]
d_ts_4654 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 = du_ts_4654 v3
du_ts_4654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850]
du_ts_4654 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3128
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.bhbody
d_bhbody_4662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3046
d_bhbody_4662 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 = du_bhbody_4662 v3
du_bhbody_4662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHBody_3046
du_bhbody_4662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3084
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3124
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.announcedEB
d_announcedEB_4668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_4668 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6
  = du_announcedEB_4668 v3
du_announcedEB_4668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_announcedEB_4668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3072
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3084
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3124
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.slot
d_slot_4680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  AgdaAny
d_slot_4680 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 = du_slot_4680 v3
du_slot_4680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  AgdaAny
du_slot_4680 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3066
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3084
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3124
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.bcur
d_bcur_4684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_4684 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_bcur_4684 v4
du_bcur_4684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_4684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4288
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.epochState
d_epochState_4688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4202
d_epochState_4688 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_epochState_4688 v4
du_epochState_4688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4202
du_epochState_4688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain._.acnt
d_acnt_4700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196
d_acnt_4700 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_acnt_4700 v4
du_acnt_4700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196
du_acnt_4700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4214
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.es
d_es_4702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_es_4702 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_es_4702 v4
du_es_4702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
du_es_4702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4220
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.ls
d_ls_4706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928
d_ls_4706 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_ls_4706 v4
du_ls_4706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928
du_ls_4706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4218
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain._.pparams
d_pparams_4716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_4716 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_pparams_4716 v4
du_pparams_4716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_4716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4220
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_4724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  T_ChainState_4438 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  Integer
d_maxRefScriptSizePerBlock_4724 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7
  = du_maxRefScriptSizePerBlock_4724 v5
du_maxRefScriptSizePerBlock_4724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  Integer
du_maxRefScriptSizePerBlock_4724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_462
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1348)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4220
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
                  (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_43831 ::
  T_GeneralizeTel_43833 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928
d_'46'generalizedField'45'ls''_43831 v0
  = case coe v0 of
      C_mkGeneralizeTel_43835 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.GeneralizeTel
d_GeneralizeTel_43833 a0 a1 = ()
newtype T_GeneralizeTel_43833
  = C_mkGeneralizeTel_43835 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928
