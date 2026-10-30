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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Certs where

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
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.Applicative.Core
import qualified MAlonzo.Code.Class.Applicative.Instances
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.String.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.BlsPoP
d_BlsPoP_42 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_BlsPoP_42 = erased
-- _.BlsVKey
d_BlsVKey_46 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_BlsVKey_46 = erased
-- _.Credential
d_Credential_56 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_98 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_98 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_98 v2 v3
du_DecEq'45'Credential_98 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_98 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
      (coe v0) (coe v1)
-- _.Epoch
d_Epoch_164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_164 = erased
-- _.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_212 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'RewardAddress_212
du_HasNetworkId'45'RewardAddress_212 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_212
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- _.HasPParams
d_HasPParams_214 a0 a1 a2 = ()
-- _.THash
d_THash_246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_THash_246 = erased
-- _.NetworkId
d_NetworkId_270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny
d_NetworkId_270 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_890
         (coe v0))
-- _.PParams
d_PParams_288 a0 = ()
-- _.PParamsOf
d_PParamsOf_296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_PParamsOf_296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
      (coe v0)
-- _.RewardAddress
d_RewardAddress_326 a0 a1 a2 a3 = ()
-- _.VRF
d_VRF_418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VRF_418 = erased
-- _.addEpoch
d_addEpoch_424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_424 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_284
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_840
         (coe v0))
-- _.preoEpoch
d_preoEpoch_522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_522 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_114
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_840
         (coe v0))
-- _.HasPParams.PParamsOf
d_PParamsOf_654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_PParamsOf_654 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
      (coe v0)
-- _.PParams.Emax
d_Emax_690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_Emax_690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_474
      (coe v0)
-- _.PParams.a
d_a_692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_a_692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_444 (coe v0)
-- _.PParams.a0
d_a0_694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_478
      (coe v0)
-- _.PParams.b
d_b_696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_b_696 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_446 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_ccMaxTermLength_698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_490
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_ccMinSize_700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_488
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_coinsPerUTxOByte_702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_458
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_collateralPercentage_704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_480
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdlsAssoc_708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_482
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_drepActivity_710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_498
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_drepDeposit_712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_496
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250
d_drepThresholds_714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_486
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_govActionDeposit_716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_494
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_govActionLifetime_718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_492
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_keyDeposit_720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_448
      (coe v0)
-- _.PParams.leiosCommitteeSize
d_leiosCommitteeSize_722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosCommitteeSize_722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_436
      (coe v0)
-- _.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosDiffusionPeriod_724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_430
      (coe v0)
-- _.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosHeaderPeriod_726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_426
      (coe v0)
-- _.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_leiosMaxEBExUnits_728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_440
      (coe v0)
-- _.PParams.leiosMaxEBSize
d_leiosMaxEBSize_730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosMaxEBSize_730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_432
      (coe v0)
-- _.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosMaxEBTxsSize_732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_434
      (coe v0)
-- _.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosMaxRefScriptSizePerEB_734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_442
      (coe v0)
-- _.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_438
      (coe v0)
-- _.PParams.leiosVotingPeriod
d_leiosVotingPeriod_738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosVotingPeriod_738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_428
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_maxBlockExUnits_740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_418
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxBlockSize_742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_410
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxCollateralInputs_744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_422
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxHeaderSize_746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_414
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxRefScriptSizePerBlock_748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_466
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxRefScriptSizePerTx_750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_464
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_maxTxExUnits_752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_416
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxTxSize_754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_412
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxValSize_756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_420
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_462
      (coe v0)
-- _.PParams.minPoolCost
d_minPoolCost_760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_minPoolCost_760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_452
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_minUTxOValue_762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_472
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_454
      (coe v0)
-- _.PParams.nopt
d_nopt_766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_nopt_766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_476
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_poolDeposit_768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_450
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294
d_poolThresholds_770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_484
      (coe v0)
-- _.PParams.prices
d_prices_772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_prices_772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_460
      (coe v0)
-- _.PParams.pv
d_pv_774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_424
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_470
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_468
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_456
      (coe v0)
-- _.RewardAddress.net
d_net_932 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_932 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- _.RewardAddress.stake
d_stake_934 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_934 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Specification.Certs._.Anchor
d_Anchor_954 a0 = ()
-- Ledger.Dijkstra.Specification.Certs._.DReps
d_DReps_966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_DReps_966 = erased
-- Ledger.Dijkstra.Specification.Certs._.DRepsOf
d_DRepsOf_968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_968 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1292
      (coe v0)
-- Ledger.Dijkstra.Specification.Certs._.DecEq-VDeleg
d_DecEq'45'VDeleg_980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1384
      (coe v0)
-- Ledger.Dijkstra.Specification.Certs._.GovVote
d_GovVote_1012 a0 = ()
-- Ledger.Dijkstra.Specification.Certs._.HasDReps
d_HasDReps_1042 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Certs._.HasVoteDelegs
d_HasVoteDelegs_1098 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Certs._.VDeleg
d_VDeleg_1128 a0 = ()
-- Ledger.Dijkstra.Specification.Certs._.VoteDelegs
d_VoteDelegs_1132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_1132 = erased
-- Ledger.Dijkstra.Specification.Certs._.VoteDelegsOf
d_VoteDelegsOf_1134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1168 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1176
      (coe v0)
-- Ledger.Dijkstra.Specification.Certs._.Anchor.hash
d_hash_1166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008 ->
  AgdaAny
d_hash_1166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_1016
      (coe v0)
-- Ledger.Dijkstra.Specification.Certs._.Anchor.url
d_url_1168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_1014
      (coe v0)
-- Ledger.Dijkstra.Specification.Certs._.GovVote.anchor
d_anchor_1230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_anchor_1230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1036
      (coe v0)
-- Ledger.Dijkstra.Specification.Certs._.GovVote.gid
d_gid_1232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_1030
      (coe v0)
-- Ledger.Dijkstra.Specification.Certs._.GovVote.vote
d_vote_1234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_988
d_vote_1234 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_1034
      (coe v0)
-- Ledger.Dijkstra.Specification.Certs._.GovVote.voter
d_voter_1236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996
d_voter_1236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1032
      (coe v0)
-- Ledger.Dijkstra.Specification.Certs._.HasDReps.DRepsOf
d_DRepsOf_1258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1292
      (coe v0)
-- Ledger.Dijkstra.Specification.Certs._.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1168 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1290 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1176
      (coe v0)
-- Ledger.Dijkstra.Specification.Certs.StakePoolParams
d_StakePoolParams_1358 a0 = ()
data T_StakePoolParams_1358
  = C_constructor_1388 [AgdaAny] Integer
                       MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 Integer
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
                       AgdaAny (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Certs.StakePoolParams.owners
d_owners_1374 :: T_StakePoolParams_1358 -> [AgdaAny]
d_owners_1374 v0
  = case coe v0 of
      C_constructor_1388 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.StakePoolParams.cost
d_cost_1376 :: T_StakePoolParams_1358 -> Integer
d_cost_1376 v0
  = case coe v0 of
      C_constructor_1388 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.StakePoolParams.margin
d_margin_1378 ::
  T_StakePoolParams_1358 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_1378 v0
  = case coe v0 of
      C_constructor_1388 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.StakePoolParams.pledge
d_pledge_1380 :: T_StakePoolParams_1358 -> Integer
d_pledge_1380 v0
  = case coe v0 of
      C_constructor_1388 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.StakePoolParams.rewardAccount
d_rewardAccount_1382 ::
  T_StakePoolParams_1358 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_rewardAccount_1382 v0
  = case coe v0 of
      C_constructor_1388 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.StakePoolParams.vrf
d_vrf_1384 :: T_StakePoolParams_1358 -> AgdaAny
d_vrf_1384 v0
  = case coe v0 of
      C_constructor_1388 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.StakePoolParams.bls
d_bls_1386 ::
  T_StakePoolParams_1358 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bls_1386 v0
  = case coe v0 of
      C_constructor_1388 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.StakePoolState
d_StakePoolState_1390 a0 = ()
data T_StakePoolState_1390
  = C_constructor_1420 [AgdaAny] Integer
                       MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 Integer
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
                       AgdaAny (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Certs.StakePoolState.owners
d_owners_1406 :: T_StakePoolState_1390 -> [AgdaAny]
d_owners_1406 v0
  = case coe v0 of
      C_constructor_1420 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.StakePoolState.cost
d_cost_1408 :: T_StakePoolState_1390 -> Integer
d_cost_1408 v0
  = case coe v0 of
      C_constructor_1420 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.StakePoolState.margin
d_margin_1410 ::
  T_StakePoolState_1390 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_1410 v0
  = case coe v0 of
      C_constructor_1420 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.StakePoolState.pledge
d_pledge_1412 :: T_StakePoolState_1390 -> Integer
d_pledge_1412 v0
  = case coe v0 of
      C_constructor_1420 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.StakePoolState.rewardAccount
d_rewardAccount_1414 ::
  T_StakePoolState_1390 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_rewardAccount_1414 v0
  = case coe v0 of
      C_constructor_1420 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.StakePoolState.vrf
d_vrf_1416 :: T_StakePoolState_1390 -> AgdaAny
d_vrf_1416 v0
  = case coe v0 of
      C_constructor_1420 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.StakePoolState.bls
d_bls_1418 ::
  T_StakePoolState_1390 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bls_1418 v0
  = case coe v0 of
      C_constructor_1420 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.mkStakePoolState
d_mkStakePoolState_1422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny -> T_StakePoolParams_1358 -> T_StakePoolState_1390
d_mkStakePoolState_1422 ~v0 v1 v2 = du_mkStakePoolState_1422 v1 v2
du_mkStakePoolState_1422 ::
  AgdaAny -> T_StakePoolParams_1358 -> T_StakePoolState_1390
du_mkStakePoolState_1422 v0 v1
  = coe
      C_constructor_1420 (coe d_owners_1374 (coe v1))
      (coe d_cost_1376 (coe v1)) (coe d_margin_1378 (coe v1))
      (coe d_pledge_1380 (coe v1)) (coe d_rewardAccount_1382 (coe v1))
      (coe d_vrf_1384 (coe v1))
      (coe
         MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
         (coe d_bls_1386 (coe v1))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (coe v0)))))
-- Ledger.Dijkstra.Specification.Certs._._.bls
d_bls_1434 ::
  T_StakePoolParams_1358 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bls_1434 v0 = coe d_bls_1386 (coe v0)
-- Ledger.Dijkstra.Specification.Certs._._.cost
d_cost_1436 :: T_StakePoolParams_1358 -> Integer
d_cost_1436 v0 = coe d_cost_1376 (coe v0)
-- Ledger.Dijkstra.Specification.Certs._._.margin
d_margin_1438 ::
  T_StakePoolParams_1358 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_1438 v0 = coe d_margin_1378 (coe v0)
-- Ledger.Dijkstra.Specification.Certs._._.owners
d_owners_1440 :: T_StakePoolParams_1358 -> [AgdaAny]
d_owners_1440 v0 = coe d_owners_1374 (coe v0)
-- Ledger.Dijkstra.Specification.Certs._._.pledge
d_pledge_1442 :: T_StakePoolParams_1358 -> Integer
d_pledge_1442 v0 = coe d_pledge_1380 (coe v0)
-- Ledger.Dijkstra.Specification.Certs._._.rewardAccount
d_rewardAccount_1444 ::
  T_StakePoolParams_1358 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_rewardAccount_1444 v0 = coe d_rewardAccount_1382 (coe v0)
-- Ledger.Dijkstra.Specification.Certs._._.vrf
d_vrf_1446 :: T_StakePoolParams_1358 -> AgdaAny
d_vrf_1446 v0 = coe d_vrf_1384 (coe v0)
-- Ledger.Dijkstra.Specification.Certs.CCHotKeys
d_CCHotKeys_1454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_CCHotKeys_1454 = erased
-- Ledger.Dijkstra.Specification.Certs.Pools
d_Pools_1456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Pools_1456 = erased
-- Ledger.Dijkstra.Specification.Certs.FPools
d_FPools_1458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_FPools_1458 = erased
-- Ledger.Dijkstra.Specification.Certs.Retiring
d_Retiring_1460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Retiring_1460 = erased
-- Ledger.Dijkstra.Specification.Certs.applyFPools
d_applyFPools_1462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_applyFPools_1462 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1052
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
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                  (coe v0)))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1416
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v4 v5 ->
               coe
                 MAlonzo.Code.Class.ToBool.du_if_then_else__38
                 (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                 (coe
                    MAlonzo.Code.Class.Applicative.Core.d__'60''42''62'__22
                    MAlonzo.Code.Class.Applicative.Instances.d_Applicative'45'Maybe_6
                    () erased () erased
                    (coe
                       MAlonzo.Code.Data.Maybe.Base.du_map_64
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
                       (coe
                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                          MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased ()
                          erased
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2058
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe v2) (coe v4)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                         (coe v0))))
                                (coe v4)
                                (let v6
                                       = MAlonzo.Code.Axiom.Set.d_th_1516
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v6
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v2))))))
                          (\ v6 -> d_bls_1418 (coe v6))))
                    (coe
                       MAlonzo.Code.Data.Maybe.Base.du_map_64
                       (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                       (d_bls_1386 (coe v5))))
                 (coe
                    MAlonzo.Code.Level.C_lift_20
                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                 (coe
                    (\ v6 ->
                       coe
                         MAlonzo.Code.Class.ToBool.du_if_then_else__38
                         (coe MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_88)
                         (coe
                            MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'BlsVKey_174
                               (coe
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_leiosCryptoStructure_794
                                  (coe v0)))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                         (coe
                            MAlonzo.Code.Level.C_lift_20
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                         (coe
                            (\ v7 ->
                               coe
                                 du_mkStakePoolState_1422
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                                 (coe v5)))
                         (coe (\ v7 -> coe du_mkStakePoolState_1422 (coe v1) (coe v5)))))
                 (coe (\ v6 -> coe du_mkStakePoolState_1422 (coe v1) (coe v5)))))
         (coe v3))
      (coe v2)
-- Ledger.Dijkstra.Specification.Certs.onlyBlsKeyUpdated
d_onlyBlsKeyUpdated_1482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_StakePoolState_1390 -> T_StakePoolState_1390 -> ()
d_onlyBlsKeyUpdated_1482 = erased
-- Ledger.Dijkstra.Specification.Certs.Rewards
d_Rewards_1488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Rewards_1488 = erased
-- Ledger.Dijkstra.Specification.Certs.Stake
d_Stake_1490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Stake_1490 = erased
-- Ledger.Dijkstra.Specification.Certs.StakeDelegs
d_StakeDelegs_1492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_StakeDelegs_1492 = erased
-- Ledger.Dijkstra.Specification.Certs.DCert
d_DCert_1494 a0 = ()
data T_DCert_1494
  = C_delegate_1496 MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
                    (Maybe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_VDeleg_1056)
                    (Maybe AgdaAny) Integer |
    C_dereg_1498 MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
                 Integer |
    C_regpool_1500 AgdaAny T_StakePoolParams_1358 |
    C_retirepool_1502 AgdaAny AgdaAny |
    C_regdrep_1504 MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
                   Integer
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008 |
    C_deregdrep_1506 MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
                     Integer |
    C_ccreghot_1508 MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
                    (Maybe
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20)
-- Ledger.Dijkstra.Specification.Certs.cwitness
d_cwitness_1510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_DCert_1494 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_1510 ~v0 v1 = du_cwitness_1510 v1
du_cwitness_1510 ::
  T_DCert_1494 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_cwitness_1510 v0
  = case coe v0 of
      C_delegate_1496 v1 v2 v3 v4
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_dereg_1498 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_regpool_1500 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                (coe v1))
      C_retirepool_1502 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                (coe v1))
      C_regdrep_1504 v1 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_deregdrep_1506 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_ccreghot_1508 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.poolOwners
d_poolOwners_1526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_DCert_1494 -> [AgdaAny]
d_poolOwners_1526 ~v0 v1 = du_poolOwners_1526 v1
du_poolOwners_1526 :: T_DCert_1494 -> [AgdaAny]
du_poolOwners_1526 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_470
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         C_regpool_1500 v2 v3 -> coe d_owners_1374 (coe v3)
         _ -> coe v1)
-- Ledger.Dijkstra.Specification.Certs.IsPoolRegistered
d_IsPoolRegistered_1530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_IsPoolRegistered_1530 = erased
-- Ledger.Dijkstra.Specification.Certs.IsConwayCert
d_IsConwayCert_1536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_DCert_1494 -> ()
d_IsConwayCert_1536 = erased
-- Ledger.Dijkstra.Specification.Certs.CertEnv
d_CertEnv_1538 a0 = ()
data T_CertEnv_1538
  = C_constructor_1552 AgdaAny
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
-- Ledger.Dijkstra.Specification.Certs.CertEnv.epoch
d_epoch_1546 :: T_CertEnv_1538 -> AgdaAny
d_epoch_1546 v0
  = case coe v0 of
      C_constructor_1552 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.CertEnv.pp
d_pp_1548 ::
  T_CertEnv_1538 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pp_1548 v0
  = case coe v0 of
      C_constructor_1552 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.CertEnv.coldCredentials
d_coldCredentials_1550 ::
  T_CertEnv_1538 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCredentials_1550 v0
  = case coe v0 of
      C_constructor_1552 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.DState
d_DState_1554 a0 = ()
data T_DState_1554
  = C_'10214'_'44'_'44'_'44'_'10215''7496'_1572 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Certs.DState.voteDelegs
d_voteDelegs_1564 ::
  T_DState_1554 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1564 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1572 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.DState.stakeDelegs
d_stakeDelegs_1566 ::
  T_DState_1554 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1566 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1572 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.DState.rewards
d_rewards_1568 ::
  T_DState_1554 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1568 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1572 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.DState.deposits
d_deposits_1570 ::
  T_DState_1554 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1570 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_1572 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.PState
d_PState_1574 a0 = ()
data T_PState_1574
  = C_constructor_1592 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Certs.PState.pools
d_pools_1584 ::
  T_PState_1574 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1584 v0
  = case coe v0 of
      C_constructor_1592 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.PState.fPools
d_fPools_1586 ::
  T_PState_1574 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_1586 v0
  = case coe v0 of
      C_constructor_1592 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.PState.retiring
d_retiring_1588 ::
  T_PState_1574 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1588 v0
  = case coe v0 of
      C_constructor_1592 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.PState.deposits
d_deposits_1590 ::
  T_PState_1574 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1590 v0
  = case coe v0 of
      C_constructor_1592 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.GState
d_GState_1594 a0 = ()
data T_GState_1594
  = C_'10214'_'44'_'44'_'10215''7515'_1608 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Certs.GState.dreps
d_dreps_1602 ::
  T_GState_1594 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1602 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1608 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.GState.ccHotKeys
d_ccHotKeys_1604 ::
  T_GState_1594 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1604 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1608 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.GState.deposits
d_deposits_1606 ::
  T_GState_1594 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1606 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_1608 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.CertState
d_CertState_1610 a0 = ()
data T_CertState_1610
  = C_'10214'_'44'_'44'_'10215''7580''738'_1624 T_DState_1554
                                                T_PState_1574 T_GState_1594
-- Ledger.Dijkstra.Specification.Certs.CertState.dState
d_dState_1618 :: T_CertState_1610 -> T_DState_1554
d_dState_1618 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1624 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.CertState.pState
d_pState_1620 :: T_CertState_1610 -> T_PState_1574
d_pState_1620 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1624 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.CertState.gState
d_gState_1622 :: T_CertState_1610 -> T_GState_1594
d_gState_1622 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_1624 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.DelegEnv
d_DelegEnv_1626 a0 = ()
data T_DelegEnv_1626
  = C_constructor_1640 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
-- Ledger.Dijkstra.Specification.Certs.DelegEnv.pparams
d_pparams_1634 ::
  T_DelegEnv_1626 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pparams_1634 v0
  = case coe v0 of
      C_constructor_1640 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.DelegEnv.pools
d_pools_1636 ::
  T_DelegEnv_1626 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1636 v0
  = case coe v0 of
      C_constructor_1640 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.DelegEnv.delegatees
d_delegatees_1638 ::
  T_DelegEnv_1626 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1638 v0
  = case coe v0 of
      C_constructor_1640 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.PoolEnv
d_PoolEnv_1642 a0 = ()
data T_PoolEnv_1642
  = C_constructor_1652 AgdaAny
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
-- Ledger.Dijkstra.Specification.Certs.PoolEnv.epoch
d_epoch_1648 :: T_PoolEnv_1642 -> AgdaAny
d_epoch_1648 v0
  = case coe v0 of
      C_constructor_1652 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.PoolEnv.pp
d_pp_1650 ::
  T_PoolEnv_1642 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pp_1650 v0
  = case coe v0 of
      C_constructor_1652 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.GovCertEnv
d_GovCertEnv_1654 a0 = ()
data T_GovCertEnv_1654
  = C_constructor_1668 AgdaAny
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
-- Ledger.Dijkstra.Specification.Certs.GovCertEnv.epoch
d_epoch_1662 :: T_GovCertEnv_1654 -> AgdaAny
d_epoch_1662 v0
  = case coe v0 of
      C_constructor_1668 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.GovCertEnv.pp
d_pp_1664 ::
  T_GovCertEnv_1654 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pp_1664 v0
  = case coe v0 of
      C_constructor_1668 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.GovCertEnv.coldCredentials
d_coldCredentials_1666 ::
  T_GovCertEnv_1654 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCredentials_1666 v0
  = case coe v0 of
      C_constructor_1668 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.IsConwayCert?
d_IsConwayCert'63'_1670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_DCert_1494 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsConwayCert'63'_1670 ~v0 v1 = du_IsConwayCert'63'_1670 v1
du_IsConwayCert'63'_1670 ::
  T_DCert_1494 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsConwayCert'63'_1670 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         C_delegate_1496 v1 v2 v3 v4
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                  -> coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                       (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                _ -> MAlonzo.RTE.mazUnreachableError
         C_dereg_1498 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         C_regpool_1500 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         C_retirepool_1502 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         C_regdrep_1504 v1 v2 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         C_deregdrep_1506 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         C_ccreghot_1508 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Certs.HasDeposits
d_HasDeposits_1698 a0 a1 a2 = ()
newtype T_HasDeposits_1698
  = C_constructor_1708 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Certs.HasDeposits.DepositsOf
d_DepositsOf_1706 ::
  T_HasDeposits_1698 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1706 v0
  = case coe v0 of
      C_constructor_1708 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._.DepositsOf
d_DepositsOf_1712 ::
  T_HasDeposits_1698 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1712 v0 = coe d_DepositsOf_1706 (coe v0)
-- Ledger.Dijkstra.Specification.Certs.HasCCHotKeys
d_HasCCHotKeys_1718 a0 a1 a2 = ()
newtype T_HasCCHotKeys_1718
  = C_constructor_1728 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Certs.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_1726 ::
  T_HasCCHotKeys_1718 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1726 v0
  = case coe v0 of
      C_constructor_1728 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._.CCHotKeysOf
d_CCHotKeysOf_1732 ::
  T_HasCCHotKeys_1718 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1732 v0 = coe d_CCHotKeysOf_1726 (coe v0)
-- Ledger.Dijkstra.Specification.Certs.HasColdCredentials
d_HasColdCredentials_1738 a0 a1 a2 = ()
newtype T_HasColdCredentials_1738
  = C_constructor_1748 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20])
-- Ledger.Dijkstra.Specification.Certs.HasColdCredentials.ColdCredentialsOf
d_ColdCredentialsOf_1746 ::
  T_HasColdCredentials_1738 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ColdCredentialsOf_1746 v0
  = case coe v0 of
      C_constructor_1748 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._.ColdCredentialsOf
d_ColdCredentialsOf_1752 ::
  T_HasColdCredentials_1738 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ColdCredentialsOf_1752 v0 = coe d_ColdCredentialsOf_1746 (coe v0)
-- Ledger.Dijkstra.Specification.Certs.HasPools
d_HasPools_1758 a0 a1 a2 = ()
newtype T_HasPools_1758
  = C_constructor_1768 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Certs.HasPools.PoolsOf
d_PoolsOf_1766 ::
  T_HasPools_1758 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1766 v0
  = case coe v0 of
      C_constructor_1768 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._.PoolsOf
d_PoolsOf_1772 ::
  T_HasPools_1758 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1772 v0 = coe d_PoolsOf_1766 (coe v0)
-- Ledger.Dijkstra.Specification.Certs.HasFuturePools
d_HasFuturePools_1778 a0 a1 a2 = ()
newtype T_HasFuturePools_1778
  = C_constructor_1788 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Certs.HasFuturePools.FuturePoolsOf
d_FuturePoolsOf_1786 ::
  T_HasFuturePools_1778 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_FuturePoolsOf_1786 v0
  = case coe v0 of
      C_constructor_1788 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._.FuturePoolsOf
d_FuturePoolsOf_1792 ::
  T_HasFuturePools_1778 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_FuturePoolsOf_1792 v0 = coe d_FuturePoolsOf_1786 (coe v0)
-- Ledger.Dijkstra.Specification.Certs.HasRetiring
d_HasRetiring_1798 a0 a1 a2 = ()
newtype T_HasRetiring_1798
  = C_constructor_1808 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Certs.HasRetiring.RetiringOf
d_RetiringOf_1806 ::
  T_HasRetiring_1798 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1806 v0
  = case coe v0 of
      C_constructor_1808 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._.RetiringOf
d_RetiringOf_1812 ::
  T_HasRetiring_1798 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1812 v0 = coe d_RetiringOf_1806 (coe v0)
-- Ledger.Dijkstra.Specification.Certs.HasRewards
d_HasRewards_1818 a0 a1 a2 = ()
newtype T_HasRewards_1818
  = C_constructor_1828 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Certs.HasRewards.RewardsOf
d_RewardsOf_1826 ::
  T_HasRewards_1818 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1826 v0
  = case coe v0 of
      C_constructor_1828 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._.RewardsOf
d_RewardsOf_1832 ::
  T_HasRewards_1818 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1832 v0 = coe d_RewardsOf_1826 (coe v0)
-- Ledger.Dijkstra.Specification.Certs.HasStake
d_HasStake_1838 a0 a1 a2 = ()
newtype T_HasStake_1838
  = C_constructor_1848 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Certs.HasStake.StakeOf
d_StakeOf_1846 ::
  T_HasStake_1838 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1846 v0
  = case coe v0 of
      C_constructor_1848 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._.StakeOf
d_StakeOf_1852 ::
  T_HasStake_1838 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1852 v0 = coe d_StakeOf_1846 (coe v0)
-- Ledger.Dijkstra.Specification.Certs.HasStakeDelegs
d_HasStakeDelegs_1858 a0 a1 a2 = ()
newtype T_HasStakeDelegs_1858
  = C_constructor_1868 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Certs.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_1866 ::
  T_HasStakeDelegs_1858 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1866 v0
  = case coe v0 of
      C_constructor_1868 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._.StakeDelegsOf
d_StakeDelegsOf_1872 ::
  T_HasStakeDelegs_1858 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1872 v0 = coe d_StakeDelegsOf_1866 (coe v0)
-- Ledger.Dijkstra.Specification.Certs.HasDState
d_HasDState_1878 a0 a1 a2 = ()
newtype T_HasDState_1878
  = C_constructor_1888 (AgdaAny -> T_DState_1554)
-- Ledger.Dijkstra.Specification.Certs.HasDState.DStateOf
d_DStateOf_1886 :: T_HasDState_1878 -> AgdaAny -> T_DState_1554
d_DStateOf_1886 v0
  = case coe v0 of
      C_constructor_1888 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._.DStateOf
d_DStateOf_1892 :: T_HasDState_1878 -> AgdaAny -> T_DState_1554
d_DStateOf_1892 v0 = coe d_DStateOf_1886 (coe v0)
-- Ledger.Dijkstra.Specification.Certs.HasPState
d_HasPState_1898 a0 a1 a2 = ()
newtype T_HasPState_1898
  = C_constructor_1908 (AgdaAny -> T_PState_1574)
-- Ledger.Dijkstra.Specification.Certs.HasPState.PStateOf
d_PStateOf_1906 :: T_HasPState_1898 -> AgdaAny -> T_PState_1574
d_PStateOf_1906 v0
  = case coe v0 of
      C_constructor_1908 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._.PStateOf
d_PStateOf_1912 :: T_HasPState_1898 -> AgdaAny -> T_PState_1574
d_PStateOf_1912 v0 = coe d_PStateOf_1906 (coe v0)
-- Ledger.Dijkstra.Specification.Certs.HasGState
d_HasGState_1918 a0 a1 a2 = ()
newtype T_HasGState_1918
  = C_constructor_1928 (AgdaAny -> T_GState_1594)
-- Ledger.Dijkstra.Specification.Certs.HasGState.GStateOf
d_GStateOf_1926 :: T_HasGState_1918 -> AgdaAny -> T_GState_1594
d_GStateOf_1926 v0
  = case coe v0 of
      C_constructor_1928 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._.GStateOf
d_GStateOf_1932 :: T_HasGState_1918 -> AgdaAny -> T_GState_1594
d_GStateOf_1932 v0 = coe d_GStateOf_1926 (coe v0)
-- Ledger.Dijkstra.Specification.Certs.HasCertState
d_HasCertState_1938 a0 a1 a2 = ()
newtype T_HasCertState_1938
  = C_constructor_1948 (AgdaAny -> T_CertState_1610)
-- Ledger.Dijkstra.Specification.Certs.HasCertState.CertStateOf
d_CertStateOf_1946 ::
  T_HasCertState_1938 -> AgdaAny -> T_CertState_1610
d_CertStateOf_1946 v0
  = case coe v0 of
      C_constructor_1948 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._.CertStateOf
d_CertStateOf_1952 ::
  T_HasCertState_1938 -> AgdaAny -> T_CertState_1610
d_CertStateOf_1952 v0 = coe d_CertStateOf_1946 (coe v0)
-- Ledger.Dijkstra.Specification.Certs.HasEpoch
d_HasEpoch_1958 a0 a1 a2 = ()
newtype T_HasEpoch_1958 = C_constructor_1968 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Certs.HasEpoch.EpochOf
d_EpochOf_1966 :: T_HasEpoch_1958 -> AgdaAny -> AgdaAny
d_EpochOf_1966 v0
  = case coe v0 of
      C_constructor_1968 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._.EpochOf
d_EpochOf_1972 :: T_HasEpoch_1958 -> AgdaAny -> AgdaAny
d_EpochOf_1972 v0 = coe d_EpochOf_1966 (coe v0)
-- Ledger.Dijkstra.Specification.Certs.HasVotes
d_HasVotes_1978 a0 a1 a2 = ()
newtype T_HasVotes_1978
  = C_constructor_1988 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020])
-- Ledger.Dijkstra.Specification.Certs.HasVotes.VotesOf
d_VotesOf_1986 ::
  T_HasVotes_1978 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020]
d_VotesOf_1986 v0
  = case coe v0 of
      C_constructor_1988 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._.VotesOf
d_VotesOf_1992 ::
  T_HasVotes_1978 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020]
d_VotesOf_1992 v0 = coe d_VotesOf_1986 (coe v0)
-- Ledger.Dijkstra.Specification.Certs.HasPParams-CertEnv
d_HasPParams'45'CertEnv_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
d_HasPParams'45'CertEnv_1994 ~v0 = du_HasPParams'45'CertEnv_1994
du_HasPParams'45'CertEnv_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
du_HasPParams'45'CertEnv_1994
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_746
      (coe (\ v0 -> d_pp_1548 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasPParams-GovCertEnv
d_HasPParams'45'GovCertEnv_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
d_HasPParams'45'GovCertEnv_1996 ~v0
  = du_HasPParams'45'GovCertEnv_1996
du_HasPParams'45'GovCertEnv_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
du_HasPParams'45'GovCertEnv_1996
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_746
      (coe (\ v0 -> d_pp_1664 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasColdCredentials-GovCertEnv
d_HasColdCredentials'45'GovCertEnv_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasColdCredentials_1738
d_HasColdCredentials'45'GovCertEnv_1998 ~v0
  = du_HasColdCredentials'45'GovCertEnv_1998
du_HasColdCredentials'45'GovCertEnv_1998 ::
  T_HasColdCredentials_1738
du_HasColdCredentials'45'GovCertEnv_1998
  = coe
      C_constructor_1748 (coe (\ v0 -> d_coldCredentials_1666 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasColdCredentials-CertEnv
d_HasColdCredentials'45'CertEnv_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasColdCredentials_1738
d_HasColdCredentials'45'CertEnv_2000 ~v0
  = du_HasColdCredentials'45'CertEnv_2000
du_HasColdCredentials'45'CertEnv_2000 :: T_HasColdCredentials_1738
du_HasColdCredentials'45'CertEnv_2000
  = coe
      C_constructor_1748 (coe (\ v0 -> d_coldCredentials_1550 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1168
d_HasVoteDelegs'45'DState_2002 ~v0
  = du_HasVoteDelegs'45'DState_2002
du_HasVoteDelegs'45'DState_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1168
du_HasVoteDelegs'45'DState_2002
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1178
      (coe (\ v0 -> d_voteDelegs_1564 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasStakeDelegs_1858
d_HasStakeDelegs'45'DState_2004 ~v0
  = du_HasStakeDelegs'45'DState_2004
du_HasStakeDelegs'45'DState_2004 :: T_HasStakeDelegs_1858
du_HasStakeDelegs'45'DState_2004
  = coe
      C_constructor_1868 (coe (\ v0 -> d_stakeDelegs_1566 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasRewards-DState
d_HasRewards'45'DState_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasRewards_1818
d_HasRewards'45'DState_2006 ~v0 = du_HasRewards'45'DState_2006
du_HasRewards'45'DState_2006 :: T_HasRewards_1818
du_HasRewards'45'DState_2006
  = coe C_constructor_1828 (coe (\ v0 -> d_rewards_1568 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasDeposits-DState
d_HasDeposits'45'DState_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasDeposits_1698
d_HasDeposits'45'DState_2008 ~v0 = du_HasDeposits'45'DState_2008
du_HasDeposits'45'DState_2008 :: T_HasDeposits_1698
du_HasDeposits'45'DState_2008
  = coe C_constructor_1708 (coe (\ v0 -> d_deposits_1570 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasPools-PState
d_HasPools'45'PState_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasPools_1758
d_HasPools'45'PState_2010 ~v0 = du_HasPools'45'PState_2010
du_HasPools'45'PState_2010 :: T_HasPools_1758
du_HasPools'45'PState_2010
  = coe C_constructor_1768 (coe (\ v0 -> d_pools_1584 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasFuturePools-PState
d_HasFuturePools'45'PState_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasFuturePools_1778
d_HasFuturePools'45'PState_2012 ~v0
  = du_HasFuturePools'45'PState_2012
du_HasFuturePools'45'PState_2012 :: T_HasFuturePools_1778
du_HasFuturePools'45'PState_2012
  = coe C_constructor_1788 (coe (\ v0 -> d_fPools_1586 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasDeposits-PState
d_HasDeposits'45'PState_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasDeposits_1698
d_HasDeposits'45'PState_2014 ~v0 = du_HasDeposits'45'PState_2014
du_HasDeposits'45'PState_2014 :: T_HasDeposits_1698
du_HasDeposits'45'PState_2014
  = coe C_constructor_1708 (coe (\ v0 -> d_deposits_1590 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasRetiring-PState
d_HasRetiring'45'PState_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasRetiring_1798
d_HasRetiring'45'PState_2016 ~v0 = du_HasRetiring'45'PState_2016
du_HasRetiring'45'PState_2016 :: T_HasRetiring_1798
du_HasRetiring'45'PState_2016
  = coe C_constructor_1808 (coe (\ v0 -> d_retiring_1588 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasDReps-GState
d_HasDReps'45'GState_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284
d_HasDReps'45'GState_2018 ~v0 = du_HasDReps'45'GState_2018
du_HasDReps'45'GState_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284
du_HasDReps'45'GState_2018
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1294
      (coe (\ v0 -> d_dreps_1602 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasCCHotKeys_1718
d_HasCCHotKeys'45'GState_2020 ~v0 = du_HasCCHotKeys'45'GState_2020
du_HasCCHotKeys'45'GState_2020 :: T_HasCCHotKeys_1718
du_HasCCHotKeys'45'GState_2020
  = coe C_constructor_1728 (coe (\ v0 -> d_ccHotKeys_1604 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasDeposits-GState
d_HasDeposits'45'GState_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasDeposits_1698
d_HasDeposits'45'GState_2022 ~v0 = du_HasDeposits'45'GState_2022
du_HasDeposits'45'GState_2022 :: T_HasDeposits_1698
du_HasDeposits'45'GState_2022
  = coe C_constructor_1708 (coe (\ v0 -> d_deposits_1606 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasDState-CertState
d_HasDState'45'CertState_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasDState_1878
d_HasDState'45'CertState_2024 ~v0 = du_HasDState'45'CertState_2024
du_HasDState'45'CertState_2024 :: T_HasDState_1878
du_HasDState'45'CertState_2024
  = coe C_constructor_1888 (coe (\ v0 -> d_dState_1618 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasPState-CertState
d_HasPState'45'CertState_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasPState_1898
d_HasPState'45'CertState_2026 ~v0 = du_HasPState'45'CertState_2026
du_HasPState'45'CertState_2026 :: T_HasPState_1898
du_HasPState'45'CertState_2026
  = coe C_constructor_1908 (coe (\ v0 -> d_pState_1620 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasGState-CertState
d_HasGState'45'CertState_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGState_1918
d_HasGState'45'CertState_2028 ~v0 = du_HasGState'45'CertState_2028
du_HasGState'45'CertState_2028 :: T_HasGState_1918
du_HasGState'45'CertState_2028
  = coe C_constructor_1928 (coe (\ v0 -> d_gState_1622 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasRewards-CertState
d_HasRewards'45'CertState_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasRewards_1818
d_HasRewards'45'CertState_2030 ~v0
  = du_HasRewards'45'CertState_2030
du_HasRewards'45'CertState_2030 :: T_HasRewards_1818
du_HasRewards'45'CertState_2030
  = coe
      C_constructor_1828
      (coe (\ v0 -> d_rewards_1568 (coe d_dState_1618 (coe v0))))
-- Ledger.Dijkstra.Specification.Certs.HasDReps-CertState
d_HasDReps'45'CertState_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284
d_HasDReps'45'CertState_2032 ~v0 = du_HasDReps'45'CertState_2032
du_HasDReps'45'CertState_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284
du_HasDReps'45'CertState_2032
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1294
      (coe (\ v0 -> d_dreps_1602 (coe d_gState_1622 (coe v0))))
-- Ledger.Dijkstra.Specification.Certs.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasCCHotKeys_1718
d_HasCCHotKeys'45'CertState_2034 ~v0
  = du_HasCCHotKeys'45'CertState_2034
du_HasCCHotKeys'45'CertState_2034 :: T_HasCCHotKeys_1718
du_HasCCHotKeys'45'CertState_2034
  = coe
      C_constructor_1728
      (coe (\ v0 -> d_ccHotKeys_1604 (coe d_gState_1622 (coe v0))))
-- Ledger.Dijkstra.Specification.Certs.HasPools-CertState
d_HasPools'45'CertState_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasPools_1758
d_HasPools'45'CertState_2036 ~v0 = du_HasPools'45'CertState_2036
du_HasPools'45'CertState_2036 :: T_HasPools_1758
du_HasPools'45'CertState_2036
  = coe
      C_constructor_1768
      (coe (\ v0 -> d_pools_1584 (coe d_pState_1620 (coe v0))))
-- Ledger.Dijkstra.Specification.Certs.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1168
d_HasVoteDelegs'45'CertState_2038 ~v0
  = du_HasVoteDelegs'45'CertState_2038
du_HasVoteDelegs'45'CertState_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1168
du_HasVoteDelegs'45'CertState_2038
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1178
      (coe (\ v0 -> d_voteDelegs_1564 (coe d_dState_1618 (coe v0))))
-- Ledger.Dijkstra.Specification.Certs.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasStakeDelegs_1858
d_HasStakeDelegs'45'CertState_2040 ~v0
  = du_HasStakeDelegs'45'CertState_2040
du_HasStakeDelegs'45'CertState_2040 :: T_HasStakeDelegs_1858
du_HasStakeDelegs'45'CertState_2040
  = coe
      C_constructor_1868
      (coe (\ v0 -> d_stakeDelegs_1566 (coe d_dState_1618 (coe v0))))
-- Ledger.Dijkstra.Specification.Certs.HasEpoch-GovCertEnv
d_HasEpoch'45'GovCertEnv_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasEpoch_1958
d_HasEpoch'45'GovCertEnv_2042 ~v0 = du_HasEpoch'45'GovCertEnv_2042
du_HasEpoch'45'GovCertEnv_2042 :: T_HasEpoch_1958
du_HasEpoch'45'GovCertEnv_2042
  = coe C_constructor_1968 (coe (\ v0 -> d_epoch_1662 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasEpoch-CertEnv
d_HasEpoch'45'CertEnv_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasEpoch_1958
d_HasEpoch'45'CertEnv_2044 ~v0 = du_HasEpoch'45'CertEnv_2044
du_HasEpoch'45'CertEnv_2044 :: T_HasEpoch_1958
du_HasEpoch'45'CertEnv_2044
  = coe C_constructor_1968 (coe (\ v0 -> d_epoch_1546 (coe v0)))
-- Ledger.Dijkstra.Specification.Certs.HasCast-StakePoolState
d_HasCast'45'StakePoolState_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakePoolState_2046 ~v0
  = du_HasCast'45'StakePoolState_2046
du_HasCast'45'StakePoolState_2046 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'StakePoolState_2046
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
                                 (1390 :: Integer) (9780623556273767673 :: Integer)
                                 "Ledger.Dijkstra.Specification.Certs.StakePoolState"
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
                                          (246 :: Integer) (9780623556273767673 :: Integer)
                                          "_.THash"
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
                                    (1390 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.StakePoolState"
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
                                    (6 :: Integer) (14798748958053396954 :: Integer)
                                    "Ledger.Prelude.Base.Coin"
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
                                       (1390 :: Integer) (9780623556273767673 :: Integer)
                                       "Ledger.Dijkstra.Specification.Certs.StakePoolState"
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
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (1390 :: Integer) (9780623556273767673 :: Integer)
                                          "Ledger.Dijkstra.Specification.Certs.StakePoolState"
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
                                          (6 :: Integer) (14798748958053396954 :: Integer)
                                          "Ledger.Prelude.Base.Coin"
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
                                             (1390 :: Integer) (9780623556273767673 :: Integer)
                                             "Ledger.Dijkstra.Specification.Certs.StakePoolState"
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
                                             (326 :: Integer) (9780623556273767673 :: Integer)
                                             "_.RewardAddress"
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
                                                      (332 :: Integer)
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
                                                               (890 :: Integer)
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
                                                                     (220 :: Integer)
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
                                                                              (744 :: Integer)
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
                                                                                    (1 :: Integer))
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
                                                            (224 :: Integer)
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
                                                                     (744 :: Integer)
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
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
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
                                                (1390 :: Integer) (9780623556273767673 :: Integer)
                                                "Ledger.Dijkstra.Specification.Certs.StakePoolState"
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
                                                (418 :: Integer) (9780623556273767673 :: Integer)
                                                "_.VRF"
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
                                                   (1390 :: Integer)
                                                   (9780623556273767673 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Certs.StakePoolState"
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
                                                               (76 :: Integer)
                                                               (14176793942586333973 :: Integer)
                                                               "Data.Product.Base._\215_"
                                                               (MAlonzo.RTE.Fixity
                                                                  MAlonzo.RTE.RightAssoc
                                                                  (MAlonzo.RTE.Related
                                                                     (2.0 :: Double)))))
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
                                                                        (10880583612240331187 ::
                                                                           Integer)
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
                                                                           (10880583612240331187 ::
                                                                              Integer)
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
                                                                              (46 :: Integer)
                                                                              (9780623556273767673 ::
                                                                                 Integer)
                                                                              "_.BlsVKey"
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
                                                                                 (164 :: Integer)
                                                                                 (9780623556273767673 ::
                                                                                    Integer)
                                                                                 "_.Epoch"
                                                                                 (MAlonzo.RTE.Fixity
                                                                                    MAlonzo.RTE.NonAssoc
                                                                                    MAlonzo.RTE.Unrelated)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
         (coe C_constructor_1420))
-- Ledger.Dijkstra.Specification.Certs.HasCast-CertEnv
d_HasCast'45'CertEnv_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2048 ~v0 = du_HasCast'45'CertEnv_2048
du_HasCast'45'CertEnv_2048 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2048
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
                                 (1538 :: Integer) (9780623556273767673 :: Integer)
                                 "Ledger.Dijkstra.Specification.Certs.CertEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (164 :: Integer) (9780623556273767673 :: Integer) "_.Epoch"
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
                                    (1538 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.CertEnv"
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
                                    (288 :: Integer) (9780623556273767673 :: Integer) "_.PParams"
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
                                       (1538 :: Integer) (9780623556273767673 :: Integer)
                                       "Ledger.Dijkstra.Specification.Certs.CertEnv"
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
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (56 :: Integer) (9780623556273767673 :: Integer)
                                                "_.Credential"
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
                                                         (332 :: Integer)
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
                                                                  (890 :: Integer)
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
                                                                        (220 :: Integer)
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
                                                                                 (744 :: Integer)
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
                                                               (224 :: Integer)
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
                                                                        (744 :: Integer)
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
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_1552))
-- Ledger.Dijkstra.Specification.Certs.HasCast-DState
d_HasCast'45'DState_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2050 ~v0 = du_HasCast'45'DState_2050
du_HasCast'45'DState_2050 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2050
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
                                 (1554 :: Integer) (9780623556273767673 :: Integer)
                                 "Ledger.Dijkstra.Specification.Certs.DState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1132 :: Integer) (9780623556273767673 :: Integer)
                                 "Ledger.Dijkstra.Specification.Certs._.VoteDelegs"
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
                                    (1554 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.DState"
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
                                    (1492 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.StakeDelegs"
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
                                       (1554 :: Integer) (9780623556273767673 :: Integer)
                                       "Ledger.Dijkstra.Specification.Certs.DState"
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
                                       (1488 :: Integer) (9780623556273767673 :: Integer)
                                       "Ledger.Dijkstra.Specification.Certs.Rewards"
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
                                          (1554 :: Integer) (9780623556273767673 :: Integer)
                                          "Ledger.Dijkstra.Specification.Certs.DState"
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
                                                   (56 :: Integer) (9780623556273767673 :: Integer)
                                                   "_.Credential"
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
                                                            (332 :: Integer)
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
                                                                     (890 :: Integer)
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
                                                                           (220 :: Integer)
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
                                                                                    (744 :: Integer)
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
                                                                  (224 :: Integer)
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
                                                                           (744 :: Integer)
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
                                                      (6 :: Integer)
                                                      (14798748958053396954 :: Integer)
                                                      "Ledger.Prelude.Base.Coin"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''7496'_1572))
-- Ledger.Dijkstra.Specification.Certs.HasCast-PState
d_HasCast'45'PState_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2052 ~v0 = du_HasCast'45'PState_2052
du_HasCast'45'PState_2052 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2052
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
                                 (1574 :: Integer) (9780623556273767673 :: Integer)
                                 "Ledger.Dijkstra.Specification.Certs.PState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1456 :: Integer) (9780623556273767673 :: Integer)
                                 "Ledger.Dijkstra.Specification.Certs.Pools"
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
                                    (1574 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.PState"
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
                                    (1458 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.FPools"
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
                                       (1574 :: Integer) (9780623556273767673 :: Integer)
                                       "Ledger.Dijkstra.Specification.Certs.PState"
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
                                                (246 :: Integer) (9780623556273767673 :: Integer)
                                                "_.THash"
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
                                                   (164 :: Integer) (9780623556273767673 :: Integer)
                                                   "_.Epoch"
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
                                          (1574 :: Integer) (9780623556273767673 :: Integer)
                                          "Ledger.Dijkstra.Specification.Certs.PState"
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
                                                   (246 :: Integer) (9780623556273767673 :: Integer)
                                                   "_.THash"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                                                      (6 :: Integer)
                                                      (14798748958053396954 :: Integer)
                                                      "Ledger.Prelude.Base.Coin"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_constructor_1592))
-- Ledger.Dijkstra.Specification.Certs.HasCast-GState
d_HasCast'45'GState_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_2054 ~v0 = du_HasCast'45'GState_2054
du_HasCast'45'GState_2054 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_2054
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
                                 (1594 :: Integer) (9780623556273767673 :: Integer)
                                 "Ledger.Dijkstra.Specification.Certs.GState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (966 :: Integer) (9780623556273767673 :: Integer)
                                 "Ledger.Dijkstra.Specification.Certs._.DReps"
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
                                    (1594 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.GState"
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
                                             (56 :: Integer) (9780623556273767673 :: Integer)
                                             "_.Credential"
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
                                                      (332 :: Integer)
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
                                                               (890 :: Integer)
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
                                                                     (220 :: Integer)
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
                                                                              (744 :: Integer)
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
                                                                                    (1 :: Integer))
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
                                                            (224 :: Integer)
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
                                                                     (744 :: Integer)
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
                                                            (56 :: Integer)
                                                            (9780623556273767673 :: Integer)
                                                            "_.Credential"
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
                                                                     (332 :: Integer)
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
                                                                              (890 :: Integer)
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
                                                                                    (1 :: Integer))
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
                                                                                    (220 :: Integer)
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
                                                                                             (744 ::
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
                                                                           (224 :: Integer)
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
                                                                                    (744 :: Integer)
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
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (1594 :: Integer) (9780623556273767673 :: Integer)
                                       "Ledger.Dijkstra.Specification.Certs.GState"
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
                                                (56 :: Integer) (9780623556273767673 :: Integer)
                                                "_.Credential"
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
                                                         (332 :: Integer)
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
                                                                  (890 :: Integer)
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
                                                                        (220 :: Integer)
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
                                                                                 (744 :: Integer)
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
                                                               (224 :: Integer)
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
                                                                        (744 :: Integer)
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
                                                   (6 :: Integer) (14798748958053396954 :: Integer)
                                                   "Ledger.Prelude.Base.Coin"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''7515'_1608))
-- Ledger.Dijkstra.Specification.Certs.HasCast-CertState
d_HasCast'45'CertState_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_2056 ~v0 = du_HasCast'45'CertState_2056
du_HasCast'45'CertState_2056 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertState_2056
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
                                 (1610 :: Integer) (9780623556273767673 :: Integer)
                                 "Ledger.Dijkstra.Specification.Certs.CertState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1554 :: Integer) (9780623556273767673 :: Integer)
                                 "Ledger.Dijkstra.Specification.Certs.DState"
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
                                    (1610 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.CertState"
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
                                    (1574 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.PState"
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
                                       (1610 :: Integer) (9780623556273767673 :: Integer)
                                       "Ledger.Dijkstra.Specification.Certs.CertState"
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
                                       (1594 :: Integer) (9780623556273767673 :: Integer)
                                       "Ledger.Dijkstra.Specification.Certs.GState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''7580''738'_1624))
-- Ledger.Dijkstra.Specification.Certs.HasCast-DelegEnv
d_HasCast'45'DelegEnv_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_2058 ~v0 = du_HasCast'45'DelegEnv_2058
du_HasCast'45'DelegEnv_2058 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DelegEnv_2058
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
                                 (1626 :: Integer) (9780623556273767673 :: Integer)
                                 "Ledger.Dijkstra.Specification.Certs.DelegEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (288 :: Integer) (9780623556273767673 :: Integer) "_.PParams"
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
                                    (1626 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.DelegEnv"
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
                                    (1456 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.Pools"
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
                                       (1626 :: Integer) (9780623556273767673 :: Integer)
                                       "Ledger.Dijkstra.Specification.Certs.DelegEnv"
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
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (56 :: Integer) (9780623556273767673 :: Integer)
                                                "_.Credential"
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
                                                         (332 :: Integer)
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
                                                                  (890 :: Integer)
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
                                                                        (220 :: Integer)
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
                                                                                 (744 :: Integer)
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
                                                               (224 :: Integer)
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
                                                                        (744 :: Integer)
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
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_1640))
-- Ledger.Dijkstra.Specification.Certs.HasCast-PoolEnv
d_HasCast'45'PoolEnv_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolEnv_2060 ~v0 = du_HasCast'45'PoolEnv_2060
du_HasCast'45'PoolEnv_2060 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolEnv_2060
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
                                 (1642 :: Integer) (9780623556273767673 :: Integer)
                                 "Ledger.Dijkstra.Specification.Certs.PoolEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (164 :: Integer) (9780623556273767673 :: Integer) "_.Epoch"
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
                                    (1642 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.PoolEnv"
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
                                    (288 :: Integer) (9780623556273767673 :: Integer) "_.PParams"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
         (coe C_constructor_1652))
-- Ledger.Dijkstra.Specification.Certs.HasCast-GovCertEnv
d_HasCast'45'GovCertEnv_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovCertEnv_2062 ~v0 = du_HasCast'45'GovCertEnv_2062
du_HasCast'45'GovCertEnv_2062 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovCertEnv_2062
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
                                 (1654 :: Integer) (9780623556273767673 :: Integer)
                                 "Ledger.Dijkstra.Specification.Certs.GovCertEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (164 :: Integer) (9780623556273767673 :: Integer) "_.Epoch"
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
                                    (1654 :: Integer) (9780623556273767673 :: Integer)
                                    "Ledger.Dijkstra.Specification.Certs.GovCertEnv"
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
                                    (288 :: Integer) (9780623556273767673 :: Integer) "_.PParams"
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
                                       (1654 :: Integer) (9780623556273767673 :: Integer)
                                       "Ledger.Dijkstra.Specification.Certs.GovCertEnv"
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
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (56 :: Integer) (9780623556273767673 :: Integer)
                                                "_.Credential"
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
                                                         (332 :: Integer)
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
                                                                  (890 :: Integer)
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
                                                                        (220 :: Integer)
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
                                                                                 (744 :: Integer)
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
                                                               (224 :: Integer)
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
                                                                        (744 :: Integer)
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
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_1668))
-- Ledger.Dijkstra.Specification.Certs.rewardsBalance
d_rewardsBalance_2150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_DState_1554 -> Integer
d_rewardsBalance_2150 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1468
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v2 -> v2)) (coe d_rewards_1568 (coe v1))
-- Ledger.Dijkstra.Specification.Certs._.newCertDeposits
d_newCertDeposits_2162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  [AgdaAny] -> [T_DCert_1494] -> Integer
d_newCertDeposits_2162 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Data.List.Base.du_foldl_230
         (coe du_addNewCertDeposit_2170 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (0 :: Integer))
            (coe v2))
         (coe v3))
-- Ledger.Dijkstra.Specification.Certs._._.addNewCertDeposit
d_addNewCertDeposit_2170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_DCert_1494 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_addNewCertDeposit_2170 v0 v1 ~v2 v3 v4
  = du_addNewCertDeposit_2170 v0 v1 v3 v4
du_addNewCertDeposit_2170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_DCert_1494 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_addNewCertDeposit_2170 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> case coe v3 of
             C_delegate_1496 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe addInt (coe v4) (coe v9)) (coe v5)
             C_regpool_1500 v6 v7
               -> coe
                    MAlonzo.Code.Class.ToBool.du_if_then_else__38
                    (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
                    (coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                (coe v0))))
                       (coe v6) (coe v5))
                    (coe (\ v8 -> v2))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               addInt
                               (coe
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_450
                                  (coe v1))
                               (coe v4))
                            (coe
                               MAlonzo.Code.Axiom.Set.du__'8746'__708
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe v5)
                               (coe
                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_338
                                  (coe
                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_348
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                  v6))))
             C_regdrep_1504 v6 v7 v8
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe addInt (coe v4) (coe v7)) (coe v5)
             _ -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._.refundCertDeposits
d_refundCertDeposits_2192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  [T_DCert_1494] -> Integer
d_refundCertDeposits_2192 ~v0 ~v1 = du_refundCertDeposits_2192
du_refundCertDeposits_2192 :: [T_DCert_1494] -> Integer
du_refundCertDeposits_2192
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe du_addRefundCertDeposit_2198) (coe (0 :: Integer))
-- Ledger.Dijkstra.Specification.Certs._._.addRefundCertDeposit
d_addRefundCertDeposit_2198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer -> T_DCert_1494 -> Integer
d_addRefundCertDeposit_2198 ~v0 ~v1 v2 v3
  = du_addRefundCertDeposit_2198 v2 v3
du_addRefundCertDeposit_2198 :: Integer -> T_DCert_1494 -> Integer
du_addRefundCertDeposit_2198 v0 v1
  = case coe v1 of
      C_dereg_1498 v2 v3 -> coe addInt (coe v0) (coe v3)
      C_deregdrep_1506 v2 v3 -> coe addInt (coe v0) (coe v3)
      _ -> coe v0
-- Ledger.Dijkstra.Specification.Certs.coinFromRewards
d_coinFromRewards_2210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_CertState_1610 -> Integer
d_coinFromRewards_2210 v0 v1
  = coe d_rewardsBalance_2150 (coe v0) (coe d_dState_1618 (coe v1))
-- Ledger.Dijkstra.Specification.Certs.coinFromDeposits
d_coinFromDeposits_2212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_CertState_1610 -> Integer
d_coinFromDeposits_2212 v0 v1
  = coe
      addInt
      (coe
         addInt
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1468
            (let v2
                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                             (coe v0))) in
             coe
               (let v3
                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                     (coe v2) (coe v3))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_constructor_32
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
            (coe (\ v2 -> v2))
            (coe d_deposits_1606 (coe d_gState_1622 (coe v1))))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1468
            (let v2
                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                             (coe v0))) in
             coe
               (let v3
                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                     (coe v2) (coe v3))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_constructor_32
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
            (coe (\ v2 -> v2))
            (coe d_deposits_1570 (coe d_dState_1618 (coe v1)))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1468
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v2 -> v2))
         (coe d_deposits_1590 (coe d_pState_1620 (coe v1))))
-- Ledger.Dijkstra.Specification.Certs.PoolDepositsRegistered
d_PoolDepositsRegistered_2216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_CertState_1610 -> ()
d_PoolDepositsRegistered_2216 = erased
-- Ledger.Dijkstra.Specification.Certs.HasCoin-CertState
d_HasCoin'45'CertState_2220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_2220 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            addInt
              (coe d_coinFromDeposits_2212 (coe v0) (coe v1))
              (coe d_coinFromRewards_2210 (coe v0) (coe v1))))
-- Ledger.Dijkstra.Specification.Certs.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_2224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_2224 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_constructor_1388 v2 v3 v4 v5 v6 v7 v8
                -> coe
                     (\ v9 ->
                        case coe v9 of
                          C_constructor_1388 v10 v11 v12 v13 v14 v15 v16
                            -> let v17
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1266
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                     (coe v0)))))
                                         v2 v10 in
                               coe
                                 (case coe v17 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v18 v19
                                      -> if coe v18
                                           then let v20
                                                      = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                          (coe v3) (coe v11) in
                                                coe
                                                  (case coe v20 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v21 v22
                                                       -> if coe v21
                                                            then let v23
                                                                       = coe
                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34
                                                                           (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                              (coe v4))
                                                                           (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                              (coe v12)) in
                                                                 coe
                                                                   (case coe v23 of
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v24 v25
                                                                        -> if coe v24
                                                                             then let v26
                                                                                        = seq
                                                                                            (coe
                                                                                               v25)
                                                                                            (coe
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                               (coe
                                                                                                  v24)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                  erased)) in
                                                                                  coe
                                                                                    (case coe v26 of
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v27 v28
                                                                                         -> if coe
                                                                                                 v27
                                                                                              then let v29
                                                                                                         = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                                                                             (coe
                                                                                                                v5)
                                                                                                             (coe
                                                                                                                v13) in
                                                                                                   coe
                                                                                                     (case coe
                                                                                                             v29 of
                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v30 v31
                                                                                                          -> if coe
                                                                                                                  v30
                                                                                                               then let v32
                                                                                                                          = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                    (coe
                                                                                                                                       v0))) in
                                                                                                                    coe
                                                                                                                      (let v33
                                                                                                                             = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                    (coe
                                                                                                                                       v0)) in
                                                                                                                       coe
                                                                                                                         (let v34
                                                                                                                                = MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                                                                                                                                    (coe
                                                                                                                                       v6) in
                                                                                                                          coe
                                                                                                                            (let v35
                                                                                                                                   = MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                                                                                                                                       (coe
                                                                                                                                          v14) in
                                                                                                                             coe
                                                                                                                               (let v36
                                                                                                                                      = coe
                                                                                                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                          (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_890
                                                                                                                                                (coe
                                                                                                                                                   v0)))
                                                                                                                                          (MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                                                                                             (coe
                                                                                                                                                v6))
                                                                                                                                          (MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                                                                                             (coe
                                                                                                                                                v14)) in
                                                                                                                                coe
                                                                                                                                  (case coe
                                                                                                                                          v36 of
                                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v37 v38
                                                                                                                                       -> if coe
                                                                                                                                               v37
                                                                                                                                            then let v39
                                                                                                                                                       = coe
                                                                                                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                                              (coe
                                                                                                                                                                 v32)
                                                                                                                                                              (coe
                                                                                                                                                                 v33))
                                                                                                                                                           v34
                                                                                                                                                           v35 in
                                                                                                                                                 coe
                                                                                                                                                   (case coe
                                                                                                                                                           v39 of
                                                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v40 v41
                                                                                                                                                        -> coe
                                                                                                                                                             seq
                                                                                                                                                             (coe
                                                                                                                                                                v40)
                                                                                                                                                             (if coe
                                                                                                                                                                   v40
                                                                                                                                                                then let v42
                                                                                                                                                                           = coe
                                                                                                                                                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                                               (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v0)))
                                                                                                                                                                               v7
                                                                                                                                                                               v15 in
                                                                                                                                                                     coe
                                                                                                                                                                       (case coe
                                                                                                                                                                               v42 of
                                                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v43 v44
                                                                                                                                                                            -> if coe
                                                                                                                                                                                    v43
                                                                                                                                                                                 then let v45
                                                                                                                                                                                            = coe
                                                                                                                                                                                                MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                      ()
                                                                                                                                                                                                      erased
                                                                                                                                                                                                      ()
                                                                                                                                                                                                      erased
                                                                                                                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'BlsVKey_174
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_leiosCryptoStructure_794
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               v0)))
                                                                                                                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'BlsPoP_178
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_leiosCryptoStructure_794
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               v0)))))
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v8)
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v16) in
                                                                                                                                                                                      coe
                                                                                                                                                                                        (case coe
                                                                                                                                                                                                v45 of
                                                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v46 v47
                                                                                                                                                                                             -> if coe
                                                                                                                                                                                                     v46
                                                                                                                                                                                                  then coe
                                                                                                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            v46)
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                                                                                            erased)
                                                                                                                                                                                                  else coe
                                                                                                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            v46)
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                 else coe
                                                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v43)
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                else coe
                                                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                       (coe
                                                                                                                                                                          v40)
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                            else coe
                                                                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                   (coe
                                                                                                                                                      v37)
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError)))))
                                                                                                               else coe
                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                      (coe
                                                                                                                         v30)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                              else coe
                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                     (coe
                                                                                                        v27)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             else (let v26
                                                                                         = seq
                                                                                             (coe
                                                                                                v25)
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                (coe
                                                                                                   v24)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                                   coe
                                                                                     (case coe
                                                                                             v26 of
                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v27 v28
                                                                                          -> if coe
                                                                                                  v27
                                                                                               then let v29
                                                                                                          = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                                                                              (coe
                                                                                                                 v5)
                                                                                                              (coe
                                                                                                                 v13) in
                                                                                                    coe
                                                                                                      (case coe
                                                                                                              v29 of
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v30 v31
                                                                                                           -> if coe
                                                                                                                   v30
                                                                                                                then let v32
                                                                                                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                     (coe
                                                                                                                                        v0))) in
                                                                                                                     coe
                                                                                                                       (let v33
                                                                                                                              = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                     (coe
                                                                                                                                        v0)) in
                                                                                                                        coe
                                                                                                                          (let v34
                                                                                                                                 = MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                                                                                                                                     (coe
                                                                                                                                        v6) in
                                                                                                                           coe
                                                                                                                             (let v35
                                                                                                                                    = MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                                                                                                                                        (coe
                                                                                                                                           v14) in
                                                                                                                              coe
                                                                                                                                (let v36
                                                                                                                                       = coe
                                                                                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                           (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_890
                                                                                                                                                 (coe
                                                                                                                                                    v0)))
                                                                                                                                           (MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                                                                                              (coe
                                                                                                                                                 v6))
                                                                                                                                           (MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                                                                                              (coe
                                                                                                                                                 v14)) in
                                                                                                                                 coe
                                                                                                                                   (case coe
                                                                                                                                           v36 of
                                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v37 v38
                                                                                                                                        -> if coe
                                                                                                                                                v37
                                                                                                                                             then let v39
                                                                                                                                                        = coe
                                                                                                                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                                               (coe
                                                                                                                                                                  v32)
                                                                                                                                                               (coe
                                                                                                                                                                  v33))
                                                                                                                                                            v34
                                                                                                                                                            v35 in
                                                                                                                                                  coe
                                                                                                                                                    (case coe
                                                                                                                                                            v39 of
                                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v40 v41
                                                                                                                                                         -> coe
                                                                                                                                                              seq
                                                                                                                                                              (coe
                                                                                                                                                                 v40)
                                                                                                                                                              (if coe
                                                                                                                                                                    v40
                                                                                                                                                                 then let v42
                                                                                                                                                                            = coe
                                                                                                                                                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                                                (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v0)))
                                                                                                                                                                                v7
                                                                                                                                                                                v15 in
                                                                                                                                                                      coe
                                                                                                                                                                        (case coe
                                                                                                                                                                                v42 of
                                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v43 v44
                                                                                                                                                                             -> if coe
                                                                                                                                                                                     v43
                                                                                                                                                                                  then let v45
                                                                                                                                                                                             = coe
                                                                                                                                                                                                 MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                       ()
                                                                                                                                                                                                       erased
                                                                                                                                                                                                       ()
                                                                                                                                                                                                       erased
                                                                                                                                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'BlsVKey_174
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_leiosCryptoStructure_794
                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                v0)))
                                                                                                                                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'BlsPoP_178
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_leiosCryptoStructure_794
                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                v0)))))
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v8)
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v16) in
                                                                                                                                                                                       coe
                                                                                                                                                                                         (case coe
                                                                                                                                                                                                 v45 of
                                                                                                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v46 v47
                                                                                                                                                                                              -> if coe
                                                                                                                                                                                                      v46
                                                                                                                                                                                                   then coe
                                                                                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             v46)
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                                                                                             erased)
                                                                                                                                                                                                   else coe
                                                                                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             v46)
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                  else coe
                                                                                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v43)
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                 else coe
                                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                        (coe
                                                                                                                                                                           v40)
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                             else coe
                                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                    (coe
                                                                                                                                                       v37)
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)))))
                                                                                                                else coe
                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                       (coe
                                                                                                                          v30)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                               else coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                      (coe
                                                                                                         v27)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v21)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v18)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Certs.DecEq-StakePoolState
d_DecEq'45'StakePoolState_2226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolState_2226 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_constructor_1420 v2 v3 v4 v5 v6 v7 v8
                -> coe
                     (\ v9 ->
                        case coe v9 of
                          C_constructor_1420 v10 v11 v12 v13 v14 v15 v16
                            -> let v17
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1266
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                     (coe v0)))))
                                         v2 v10 in
                               coe
                                 (case coe v17 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v18 v19
                                      -> if coe v18
                                           then let v20
                                                      = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                          (coe v3) (coe v11) in
                                                coe
                                                  (case coe v20 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v21 v22
                                                       -> if coe v21
                                                            then let v23
                                                                       = coe
                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34
                                                                           (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                              (coe v4))
                                                                           (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                              (coe v12)) in
                                                                 coe
                                                                   (case coe v23 of
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v24 v25
                                                                        -> if coe v24
                                                                             then let v26
                                                                                        = seq
                                                                                            (coe
                                                                                               v25)
                                                                                            (coe
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                               (coe
                                                                                                  v24)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                  erased)) in
                                                                                  coe
                                                                                    (case coe v26 of
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v27 v28
                                                                                         -> if coe
                                                                                                 v27
                                                                                              then let v29
                                                                                                         = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                                                                             (coe
                                                                                                                v5)
                                                                                                             (coe
                                                                                                                v13) in
                                                                                                   coe
                                                                                                     (case coe
                                                                                                             v29 of
                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v30 v31
                                                                                                          -> if coe
                                                                                                                  v30
                                                                                                               then let v32
                                                                                                                          = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                    (coe
                                                                                                                                       v0))) in
                                                                                                                    coe
                                                                                                                      (let v33
                                                                                                                             = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                    (coe
                                                                                                                                       v0)) in
                                                                                                                       coe
                                                                                                                         (let v34
                                                                                                                                = MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                                                                                                                                    (coe
                                                                                                                                       v6) in
                                                                                                                          coe
                                                                                                                            (let v35
                                                                                                                                   = MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                                                                                                                                       (coe
                                                                                                                                          v14) in
                                                                                                                             coe
                                                                                                                               (let v36
                                                                                                                                      = coe
                                                                                                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                          (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_890
                                                                                                                                                (coe
                                                                                                                                                   v0)))
                                                                                                                                          (MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                                                                                             (coe
                                                                                                                                                v6))
                                                                                                                                          (MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                                                                                             (coe
                                                                                                                                                v14)) in
                                                                                                                                coe
                                                                                                                                  (case coe
                                                                                                                                          v36 of
                                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v37 v38
                                                                                                                                       -> if coe
                                                                                                                                               v37
                                                                                                                                            then let v39
                                                                                                                                                       = coe
                                                                                                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                                              (coe
                                                                                                                                                                 v32)
                                                                                                                                                              (coe
                                                                                                                                                                 v33))
                                                                                                                                                           v34
                                                                                                                                                           v35 in
                                                                                                                                                 coe
                                                                                                                                                   (case coe
                                                                                                                                                           v39 of
                                                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v40 v41
                                                                                                                                                        -> coe
                                                                                                                                                             seq
                                                                                                                                                             (coe
                                                                                                                                                                v40)
                                                                                                                                                             (if coe
                                                                                                                                                                   v40
                                                                                                                                                                then let v42
                                                                                                                                                                           = coe
                                                                                                                                                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                                               (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v0)))
                                                                                                                                                                               v7
                                                                                                                                                                               v15 in
                                                                                                                                                                     coe
                                                                                                                                                                       (case coe
                                                                                                                                                                               v42 of
                                                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v43 v44
                                                                                                                                                                            -> if coe
                                                                                                                                                                                    v43
                                                                                                                                                                                 then let v45
                                                                                                                                                                                            = coe
                                                                                                                                                                                                MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                      ()
                                                                                                                                                                                                      erased
                                                                                                                                                                                                      ()
                                                                                                                                                                                                      erased
                                                                                                                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'BlsVKey_174
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_leiosCryptoStructure_794
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               v0)))
                                                                                                                                                                                                      (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_840
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               v0)))))
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v8)
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v16) in
                                                                                                                                                                                      coe
                                                                                                                                                                                        (case coe
                                                                                                                                                                                                v45 of
                                                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v46 v47
                                                                                                                                                                                             -> if coe
                                                                                                                                                                                                     v46
                                                                                                                                                                                                  then coe
                                                                                                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            v46)
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                                                                                            erased)
                                                                                                                                                                                                  else coe
                                                                                                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            v46)
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                 else coe
                                                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v43)
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                else coe
                                                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                       (coe
                                                                                                                                                                          v40)
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                            else coe
                                                                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                   (coe
                                                                                                                                                      v37)
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError)))))
                                                                                                               else coe
                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                      (coe
                                                                                                                         v30)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                              else coe
                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                     (coe
                                                                                                        v27)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             else (let v26
                                                                                         = seq
                                                                                             (coe
                                                                                                v25)
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                (coe
                                                                                                   v24)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                                   coe
                                                                                     (case coe
                                                                                             v26 of
                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v27 v28
                                                                                          -> if coe
                                                                                                  v27
                                                                                               then let v29
                                                                                                          = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                                                                              (coe
                                                                                                                 v5)
                                                                                                              (coe
                                                                                                                 v13) in
                                                                                                    coe
                                                                                                      (case coe
                                                                                                              v29 of
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v30 v31
                                                                                                           -> if coe
                                                                                                                   v30
                                                                                                                then let v32
                                                                                                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                     (coe
                                                                                                                                        v0))) in
                                                                                                                     coe
                                                                                                                       (let v33
                                                                                                                              = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                     (coe
                                                                                                                                        v0)) in
                                                                                                                        coe
                                                                                                                          (let v34
                                                                                                                                 = MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                                                                                                                                     (coe
                                                                                                                                        v6) in
                                                                                                                           coe
                                                                                                                             (let v35
                                                                                                                                    = MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                                                                                                                                        (coe
                                                                                                                                           v14) in
                                                                                                                              coe
                                                                                                                                (let v36
                                                                                                                                       = coe
                                                                                                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                           (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_890
                                                                                                                                                 (coe
                                                                                                                                                    v0)))
                                                                                                                                           (MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                                                                                              (coe
                                                                                                                                                 v6))
                                                                                                                                           (MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                                                                                              (coe
                                                                                                                                                 v14)) in
                                                                                                                                 coe
                                                                                                                                   (case coe
                                                                                                                                           v36 of
                                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v37 v38
                                                                                                                                        -> if coe
                                                                                                                                                v37
                                                                                                                                             then let v39
                                                                                                                                                        = coe
                                                                                                                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                                               (coe
                                                                                                                                                                  v32)
                                                                                                                                                               (coe
                                                                                                                                                                  v33))
                                                                                                                                                            v34
                                                                                                                                                            v35 in
                                                                                                                                                  coe
                                                                                                                                                    (case coe
                                                                                                                                                            v39 of
                                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v40 v41
                                                                                                                                                         -> coe
                                                                                                                                                              seq
                                                                                                                                                              (coe
                                                                                                                                                                 v40)
                                                                                                                                                              (if coe
                                                                                                                                                                    v40
                                                                                                                                                                 then let v42
                                                                                                                                                                            = coe
                                                                                                                                                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                                                (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v0)))
                                                                                                                                                                                v7
                                                                                                                                                                                v15 in
                                                                                                                                                                      coe
                                                                                                                                                                        (case coe
                                                                                                                                                                                v42 of
                                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v43 v44
                                                                                                                                                                             -> if coe
                                                                                                                                                                                     v43
                                                                                                                                                                                  then let v45
                                                                                                                                                                                             = coe
                                                                                                                                                                                                 MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                       ()
                                                                                                                                                                                                       erased
                                                                                                                                                                                                       ()
                                                                                                                                                                                                       erased
                                                                                                                                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'BlsVKey_174
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_leiosCryptoStructure_794
                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                v0)))
                                                                                                                                                                                                       (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_840
                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                v0)))))
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v8)
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v16) in
                                                                                                                                                                                       coe
                                                                                                                                                                                         (case coe
                                                                                                                                                                                                 v45 of
                                                                                                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v46 v47
                                                                                                                                                                                              -> if coe
                                                                                                                                                                                                      v46
                                                                                                                                                                                                   then coe
                                                                                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             v46)
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                                                                                             erased)
                                                                                                                                                                                                   else coe
                                                                                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             v46)
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                  else coe
                                                                                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v43)
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                 else coe
                                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                        (coe
                                                                                                                                                                           v40)
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                             else coe
                                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                    (coe
                                                                                                                                                       v37)
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)))))
                                                                                                                else coe
                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                       (coe
                                                                                                                          v30)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                               else coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                      (coe
                                                                                                         v27)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v21)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v18)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Certs.DecEq-DCert
d_DecEq'45'DCert_2228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_2228 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_delegate_1496 v2 v3 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_delegate_1496 v7 v8 v9 v10
                            -> let v11
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                  (coe v0))))
                                         v2 v7 in
                               coe
                                 (case coe v11 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                      -> if coe v12
                                           then let v14
                                                      = coe
                                                          MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                          (coe
                                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1384
                                                                (coe v0)))
                                                          (coe v3) (coe v8) in
                                                coe
                                                  (case coe v14 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                                       -> if coe v15
                                                            then let v17
                                                                       = coe
                                                                           MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                           (coe
                                                                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                       (coe v0)))))
                                                                           (coe v4) (coe v9) in
                                                                 coe
                                                                   (case coe v17 of
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v18 v19
                                                                        -> if coe v18
                                                                             then let v20
                                                                                        = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                                                            (coe v5)
                                                                                            (coe
                                                                                               v10) in
                                                                                  coe
                                                                                    (case coe v20 of
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v21 v22
                                                                                         -> if coe
                                                                                                 v21
                                                                                              then coe
                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                     (coe
                                                                                                        v21)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                        erased)
                                                                                              else coe
                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                     (coe
                                                                                                        v21)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             else coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v15)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v12)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          C_dereg_1498 v7 v8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_regpool_1500 v7 v8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_retirepool_1502 v7 v8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_regdrep_1504 v7 v8 v9
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_deregdrep_1506 v7 v8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ccreghot_1508 v7 v8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_dereg_1498 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_delegate_1496 v5 v6 v7 v8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_dereg_1498 v5 v6
                            -> let v7
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                  (coe v0))))
                                         v2 v5 in
                               coe
                                 (case coe v7 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                      -> if coe v8
                                           then let v10
                                                      = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                          (coe v3) (coe v6) in
                                                coe
                                                  (case coe v10 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                                       -> if coe v11
                                                            then coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v11)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                      erased)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v11)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v8)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          C_regpool_1500 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_retirepool_1502 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_regdrep_1504 v5 v6 v7
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_deregdrep_1506 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ccreghot_1508 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_regpool_1500 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_delegate_1496 v5 v6 v7 v8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_dereg_1498 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_regpool_1500 v5 v6
                            -> let v7
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                  (coe v0))))
                                         v2 v5 in
                               coe
                                 (case coe v7 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                      -> if coe v8
                                           then let v10 = d_cost_1376 (coe v3) in
                                                coe
                                                  (let v11 = d_margin_1378 (coe v3) in
                                                   coe
                                                     (let v12 = d_pledge_1380 (coe v3) in
                                                      coe
                                                        (let v13 = d_rewardAccount_1382 (coe v3) in
                                                         coe
                                                           (let v14 = d_vrf_1384 (coe v3) in
                                                            coe
                                                              (let v15 = d_bls_1386 (coe v3) in
                                                               coe
                                                                 (let v16 = d_cost_1376 (coe v6) in
                                                                  coe
                                                                    (let v17
                                                                           = d_margin_1378
                                                                               (coe v6) in
                                                                     coe
                                                                       (let v18
                                                                              = d_pledge_1380
                                                                                  (coe v6) in
                                                                        coe
                                                                          (let v19
                                                                                 = d_rewardAccount_1382
                                                                                     (coe v6) in
                                                                           coe
                                                                             (let v20
                                                                                    = d_vrf_1384
                                                                                        (coe v6) in
                                                                              coe
                                                                                (let v21
                                                                                       = d_bls_1386
                                                                                           (coe
                                                                                              v6) in
                                                                                 coe
                                                                                   (let v22
                                                                                          = coe
                                                                                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1266
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                          (coe
                                                                                                             v0)))))
                                                                                              (d_owners_1374
                                                                                                 (coe
                                                                                                    v3))
                                                                                              (d_owners_1374
                                                                                                 (coe
                                                                                                    v6)) in
                                                                                    coe
                                                                                      (case coe
                                                                                              v22 of
                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                                           -> if coe
                                                                                                   v23
                                                                                                then let v25
                                                                                                           = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                                                                               (coe
                                                                                                                  v10)
                                                                                                               (coe
                                                                                                                  v16) in
                                                                                                     coe
                                                                                                       (case coe
                                                                                                               v25 of
                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v26 v27
                                                                                                            -> if coe
                                                                                                                    v26
                                                                                                                 then let v28
                                                                                                                            = coe
                                                                                                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34
                                                                                                                                (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                                                                   (coe
                                                                                                                                      v11))
                                                                                                                                (MAlonzo.Code.Data.Refinement.Base.d_value_38
                                                                                                                                   (coe
                                                                                                                                      v17)) in
                                                                                                                      coe
                                                                                                                        (case coe
                                                                                                                                v28 of
                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v29 v30
                                                                                                                             -> if coe
                                                                                                                                     v29
                                                                                                                                  then let v31
                                                                                                                                             = seq
                                                                                                                                                 (coe
                                                                                                                                                    v30)
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                    (coe
                                                                                                                                                       v29)
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                                       erased)) in
                                                                                                                                       coe
                                                                                                                                         (case coe
                                                                                                                                                 v31 of
                                                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v32 v33
                                                                                                                                              -> if coe
                                                                                                                                                      v32
                                                                                                                                                   then let v34
                                                                                                                                                              = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                                                                                                                                  (coe
                                                                                                                                                                     v12)
                                                                                                                                                                  (coe
                                                                                                                                                                     v18) in
                                                                                                                                                        coe
                                                                                                                                                          (case coe
                                                                                                                                                                  v34 of
                                                                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v35 v36
                                                                                                                                                               -> if coe
                                                                                                                                                                       v35
                                                                                                                                                                    then let v37
                                                                                                                                                                               = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v0))) in
                                                                                                                                                                         coe
                                                                                                                                                                           (let v38
                                                                                                                                                                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v0)) in
                                                                                                                                                                            coe
                                                                                                                                                                              (let v39
                                                                                                                                                                                     = MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v13) in
                                                                                                                                                                               coe
                                                                                                                                                                                 (let v40
                                                                                                                                                                                        = MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v19) in
                                                                                                                                                                                  coe
                                                                                                                                                                                    (let v41
                                                                                                                                                                                           = coe
                                                                                                                                                                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                                                               (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_890
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        v0)))
                                                                                                                                                                                               (MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v13))
                                                                                                                                                                                               (MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v19)) in
                                                                                                                                                                                     coe
                                                                                                                                                                                       (case coe
                                                                                                                                                                                               v41 of
                                                                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v42 v43
                                                                                                                                                                                            -> if coe
                                                                                                                                                                                                    v42
                                                                                                                                                                                                 then let v44
                                                                                                                                                                                                            = coe
                                                                                                                                                                                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                      v37)
                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                      v38))
                                                                                                                                                                                                                v39
                                                                                                                                                                                                                v40 in
                                                                                                                                                                                                      coe
                                                                                                                                                                                                        (case coe
                                                                                                                                                                                                                v44 of
                                                                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v45 v46
                                                                                                                                                                                                             -> let v47
                                                                                                                                                                                                                      = seq
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             v45)
                                                                                                                                                                                                                          (if coe
                                                                                                                                                                                                                                v45
                                                                                                                                                                                                                             then let v47
                                                                                                                                                                                                                                        = coe
                                                                                                                                                                                                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                                                                                                            (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                     v0)))
                                                                                                                                                                                                                                            v14
                                                                                                                                                                                                                                            v20 in
                                                                                                                                                                                                                                  coe
                                                                                                                                                                                                                                    (case coe
                                                                                                                                                                                                                                            v47 of
                                                                                                                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v48 v49
                                                                                                                                                                                                                                         -> if coe
                                                                                                                                                                                                                                                 v48
                                                                                                                                                                                                                                              then let v50
                                                                                                                                                                                                                                                         = coe
                                                                                                                                                                                                                                                             MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                                   ()
                                                                                                                                                                                                                                                                   erased
                                                                                                                                                                                                                                                                   ()
                                                                                                                                                                                                                                                                   erased
                                                                                                                                                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'BlsVKey_174
                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_leiosCryptoStructure_794
                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                            v0)))
                                                                                                                                                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'BlsPoP_178
                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_leiosCryptoStructure_794
                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                            v0)))))
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v15)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v21) in
                                                                                                                                                                                                                                                   coe
                                                                                                                                                                                                                                                     (case coe
                                                                                                                                                                                                                                                             v50 of
                                                                                                                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v51 v52
                                                                                                                                                                                                                                                          -> if coe
                                                                                                                                                                                                                                                                  v51
                                                                                                                                                                                                                                                               then coe
                                                                                                                                                                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                         v51)
                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                                                                                                                                                         erased)
                                                                                                                                                                                                                                                               else coe
                                                                                                                                                                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                         v51)
                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                                                                              else coe
                                                                                                                                                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                        v48)
                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                                                             else coe
                                                                                                                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       v45)
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                                                                                                                                                                coe
                                                                                                                                                                                                                  (case coe
                                                                                                                                                                                                                          v47 of
                                                                                                                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v48 v49
                                                                                                                                                                                                                       -> if coe
                                                                                                                                                                                                                               v48
                                                                                                                                                                                                                            then coe
                                                                                                                                                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                      v48)
                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                                                                                                                      erased)
                                                                                                                                                                                                                            else coe
                                                                                                                                                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                      v48)
                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                                 else coe
                                                                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                        (coe
                                                                                                                                                                                                           v42)
                                                                                                                                                                                                        (coe
                                                                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                                          _ -> MAlonzo.RTE.mazUnreachableError)))))
                                                                                                                                                                    else coe
                                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                           (coe
                                                                                                                                                                              v35)
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                   else coe
                                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                          (coe
                                                                                                                                                             v32)
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                  else (let v31
                                                                                                                                              = seq
                                                                                                                                                  (coe
                                                                                                                                                     v30)
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                     (coe
                                                                                                                                                        v29)
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                                                                                        coe
                                                                                                                                          (case coe
                                                                                                                                                  v31 of
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v32 v33
                                                                                                                                               -> if coe
                                                                                                                                                       v32
                                                                                                                                                    then let v34
                                                                                                                                                               = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                                                                                                                                   (coe
                                                                                                                                                                      v12)
                                                                                                                                                                   (coe
                                                                                                                                                                      v18) in
                                                                                                                                                         coe
                                                                                                                                                           (case coe
                                                                                                                                                                   v34 of
                                                                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v35 v36
                                                                                                                                                                -> if coe
                                                                                                                                                                        v35
                                                                                                                                                                     then let v37
                                                                                                                                                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v0))) in
                                                                                                                                                                          coe
                                                                                                                                                                            (let v38
                                                                                                                                                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v0)) in
                                                                                                                                                                             coe
                                                                                                                                                                               (let v39
                                                                                                                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v13) in
                                                                                                                                                                                coe
                                                                                                                                                                                  (let v40
                                                                                                                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v19) in
                                                                                                                                                                                   coe
                                                                                                                                                                                     (let v41
                                                                                                                                                                                            = coe
                                                                                                                                                                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                                                                (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_890
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v0)))
                                                                                                                                                                                                (MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v13))
                                                                                                                                                                                                (MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v19)) in
                                                                                                                                                                                      coe
                                                                                                                                                                                        (case coe
                                                                                                                                                                                                v41 of
                                                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v42 v43
                                                                                                                                                                                             -> if coe
                                                                                                                                                                                                     v42
                                                                                                                                                                                                  then let v44
                                                                                                                                                                                                             = coe
                                                                                                                                                                                                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                       v37)
                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                       v38))
                                                                                                                                                                                                                 v39
                                                                                                                                                                                                                 v40 in
                                                                                                                                                                                                       coe
                                                                                                                                                                                                         (case coe
                                                                                                                                                                                                                 v44 of
                                                                                                                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v45 v46
                                                                                                                                                                                                              -> let v47
                                                                                                                                                                                                                       = seq
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              v45)
                                                                                                                                                                                                                           (if coe
                                                                                                                                                                                                                                 v45
                                                                                                                                                                                                                              then let v47
                                                                                                                                                                                                                                         = coe
                                                                                                                                                                                                                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                                                                                                             (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                      v0)))
                                                                                                                                                                                                                                             v14
                                                                                                                                                                                                                                             v20 in
                                                                                                                                                                                                                                   coe
                                                                                                                                                                                                                                     (case coe
                                                                                                                                                                                                                                             v47 of
                                                                                                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v48 v49
                                                                                                                                                                                                                                          -> if coe
                                                                                                                                                                                                                                                  v48
                                                                                                                                                                                                                                               then let v50
                                                                                                                                                                                                                                                          = coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                                    ()
                                                                                                                                                                                                                                                                    erased
                                                                                                                                                                                                                                                                    ()
                                                                                                                                                                                                                                                                    erased
                                                                                                                                                                                                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'BlsVKey_174
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_leiosCryptoStructure_794
                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                             v0)))
                                                                                                                                                                                                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'BlsPoP_178
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_leiosCryptoStructure_794
                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                             v0)))))
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v15)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v21) in
                                                                                                                                                                                                                                                    coe
                                                                                                                                                                                                                                                      (case coe
                                                                                                                                                                                                                                                              v50 of
                                                                                                                                                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v51 v52
                                                                                                                                                                                                                                                           -> if coe
                                                                                                                                                                                                                                                                   v51
                                                                                                                                                                                                                                                                then coe
                                                                                                                                                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          v51)
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                                                                                                                                                          erased)
                                                                                                                                                                                                                                                                else coe
                                                                                                                                                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          v51)
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                                                                               else coe
                                                                                                                                                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                         v48)
                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                                                              else coe
                                                                                                                                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                        v45)
                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                                                                                                                                                                 coe
                                                                                                                                                                                                                   (case coe
                                                                                                                                                                                                                           v47 of
                                                                                                                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v48 v49
                                                                                                                                                                                                                        -> if coe
                                                                                                                                                                                                                                v48
                                                                                                                                                                                                                             then coe
                                                                                                                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       v48)
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                                                                                                                       erased)
                                                                                                                                                                                                                             else coe
                                                                                                                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       v48)
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                                  else coe
                                                                                                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            v42)
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError)))))
                                                                                                                                                                     else coe
                                                                                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                                            (coe
                                                                                                                                                                               v35)
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                    else coe
                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                           (coe
                                                                                                                                                              v32)
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                 else coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                        (coe
                                                                                                                           v26)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                else coe
                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                       (coe
                                                                                                          v23)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))))))))))))
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v8)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          C_retirepool_1502 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_regdrep_1504 v5 v6 v7
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_deregdrep_1506 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ccreghot_1508 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_retirepool_1502 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_delegate_1496 v5 v6 v7 v8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_dereg_1498 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_regpool_1500 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_retirepool_1502 v5 v6
                            -> let v7
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                  (coe v0))))
                                         v2 v5 in
                               coe
                                 (case coe v7 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                      -> if coe v8
                                           then let v10
                                                      = coe
                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                          (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_840
                                                                (coe v0)))
                                                          v3 v6 in
                                                coe
                                                  (case coe v10 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                                       -> if coe v11
                                                            then coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v11)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                      erased)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v11)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v8)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          C_regdrep_1504 v5 v6 v7
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_deregdrep_1506 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ccreghot_1508 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_regdrep_1504 v2 v3 v4
                -> coe
                     (\ v5 ->
                        case coe v5 of
                          C_delegate_1496 v6 v7 v8 v9
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_dereg_1498 v6 v7
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_regpool_1500 v6 v7
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_retirepool_1502 v6 v7
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_regdrep_1504 v6 v7 v8
                            -> let v9
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                  (coe v0))))
                                         v2 v6 in
                               coe
                                 (case coe v9 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                      -> if coe v10
                                           then let v12
                                                      = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                          (coe v3) (coe v7) in
                                                coe
                                                  (case coe v12 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                       -> if coe v13
                                                            then let v15
                                                                       = MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_1016
                                                                           (coe v4) in
                                                                 coe
                                                                   (let v16
                                                                          = MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_1016
                                                                              (coe v8) in
                                                                    coe
                                                                      (let v17
                                                                             = MAlonzo.Code.Data.String.Properties.d__'8799'__54
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_1014
                                                                                    (coe v4))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_1014
                                                                                    (coe v8)) in
                                                                       coe
                                                                         (case coe v17 of
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v18 v19
                                                                              -> if coe v18
                                                                                   then let v20
                                                                                              = coe
                                                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'DocHash_742
                                                                                                     (coe
                                                                                                        v0))
                                                                                                  v15
                                                                                                  v16 in
                                                                                        coe
                                                                                          (case coe
                                                                                                  v20 of
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v21 v22
                                                                                               -> coe
                                                                                                    seq
                                                                                                    (coe
                                                                                                       v21)
                                                                                                    (if coe
                                                                                                          v21
                                                                                                       then coe
                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                              (coe
                                                                                                                 v21)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                 erased)
                                                                                                       else coe
                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                              (coe
                                                                                                                 v21)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                   else coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                          (coe v18)
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v13)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v10)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          C_deregdrep_1506 v6 v7
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ccreghot_1508 v6 v7
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_deregdrep_1506 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_delegate_1496 v5 v6 v7 v8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_dereg_1498 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_regpool_1500 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_retirepool_1502 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_regdrep_1504 v5 v6 v7
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_deregdrep_1506 v5 v6
                            -> let v7
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                  (coe v0))))
                                         v2 v5 in
                               coe
                                 (case coe v7 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                      -> if coe v8
                                           then let v10
                                                      = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                          (coe v3) (coe v6) in
                                                coe
                                                  (case coe v10 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                                       -> if coe v11
                                                            then coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v11)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                      erased)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v11)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v8)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          C_ccreghot_1508 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_ccreghot_1508 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_delegate_1496 v5 v6 v7 v8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_dereg_1498 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_regpool_1500 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_retirepool_1502 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_regdrep_1504 v5 v6 v7
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_deregdrep_1506 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ccreghot_1508 v5 v6
                            -> let v7
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                  (coe v0))))
                                         v2 v5 in
                               coe
                                 (case coe v7 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                      -> if coe v8
                                           then let v10
                                                      = coe
                                                          MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                          (coe
                                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                             (let v10
                                                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                              (coe v0))) in
                                                              coe
                                                                (let v11
                                                                       = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_744
                                                                              (coe v0)) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                      (coe v10) (coe v11)))))
                                                          (coe v3) (coe v6) in
                                                coe
                                                  (case coe v10 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                                       -> if coe v11
                                                            then coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v11)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                      erased)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v11)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v8)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2230 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__2230
  = C_DELEG'45'delegate_2232 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_2234 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Certs.IsVRFUnique
d_IsVRFUnique_2236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_IsVRFUnique_2236 = erased
-- Ledger.Dijkstra.Specification.Certs.IsBLSUnique
d_IsBLSUnique_2244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_IsBLSUnique_2244 = erased
-- Ledger.Dijkstra.Specification.Certs.IsValidBLSPoP
d_IsValidBLSPoP_2260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_IsValidBLSPoP_2260 = erased
-- Ledger.Dijkstra.Specification.Certs.IsBLSUnique?
d_IsBLSUnique'63'_2272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBLSUnique'63'_2272 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                   erased
                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'BlsVKey_174
                      (coe
                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_leiosCryptoStructure_794
                         (coe v0))))
                (coe v4)
                (coe
                   MAlonzo.Code.Axiom.Set.du__'8746'__708
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1516
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_mapPartial_604
                      (MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (\ v5 ->
                         coe
                           MAlonzo.Code.Data.Maybe.Base.du_map_64
                           (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                           (d_bls_1418 (coe v5)))
                      (coe
                         MAlonzo.Code.Class.IsSet.du_range_590
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1516
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v2)))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_mapPartial_604
                      (MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (\ v5 ->
                         coe
                           MAlonzo.Code.Data.Maybe.Base.du_map_64
                           (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                           (d_bls_1386 (coe v5)))
                      (coe
                         MAlonzo.Code.Class.IsSet.du_range_590
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1516
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v3)))))
             (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs.IsValidBLSPoP?
d_IsValidBLSPoP'63'_2278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsValidBLSPoP'63'_2278 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_Dec'45'isValidPoP_180
             (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_leiosCryptoStructure_794
                (coe v0))
             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
             (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2282 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__2282
  = C_POOL'45'reg_2284 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_POOL'45'rereg_2286 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_POOL'45'retirepool_2288 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2290 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__2290
  = C_GOVCERT'45'regdrep_2292 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_2294 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOVCERT'45'ccreghot_2296 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2298 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__2298
  = C_CERT'45'deleg_2300 T__'8866'_'8640''10631'_'44'DELEG'10632'__2230 |
    C_CERT'45'pool_2302 T__'8866'_'8640''10631'_'44'POOL'10632'__2282 |
    C_CERT'45'gov_2304 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__2290
-- Ledger.Dijkstra.Specification.Certs._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_CertEnv_1538 ->
  T_CertState_1610 -> [T_DCert_1494] -> T_CertState_1610 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2306 = erased
