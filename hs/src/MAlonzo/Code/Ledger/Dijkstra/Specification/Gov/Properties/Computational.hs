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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError

-- _.DecEq-Credential
d_DecEq'45'Credential_108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_108 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_108 v2 v3
du_DecEq'45'Credential_108 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_108 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe v0) (coe v1)
-- _.Epoch
d_Epoch_174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Epoch_174 = erased
-- _.PParams
d_PParams_292 a0 = ()
-- _.preoEpoch
d_preoEpoch_526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_526 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_830
            (coe v1)))
-- _.PParams.Emax
d_Emax_688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_468
      (coe v0)
-- _.PParams.a
d_a_690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_438 (coe v0)
-- _.PParams.a0
d_a0_692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_472
      (coe v0)
-- _.PParams.b
d_b_694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_440 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_696 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_484
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_482
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_452
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_474
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_476
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_492
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_490
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_480
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_486
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_442
      (coe v0)
-- _.PParams.leiosCommitteeSize
d_leiosCommitteeSize_720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosCommitteeSize_720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_430
      (coe v0)
-- _.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosDiffusionPeriod_722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_424
      (coe v0)
-- _.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosHeaderPeriod_724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_420
      (coe v0)
-- _.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_leiosMaxEBExUnits_726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_434
      (coe v0)
-- _.PParams.leiosMaxEBSize
d_leiosMaxEBSize_728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBSize_728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_426
      (coe v0)
-- _.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBTxsSize_730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_428
      (coe v0)
-- _.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxRefScriptSizePerEB_732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_436
      (coe v0)
-- _.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_432
      (coe v0)
-- _.PParams.leiosVotingPeriod
d_leiosVotingPeriod_736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosVotingPeriod_736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_422
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_412
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_404
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_416
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_408
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_460
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_458
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_410
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_406
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_414
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_456
      (coe v0)
-- _.PParams.minPoolCost
d_minPoolCost_758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_446
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_466
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_448
      (coe v0)
-- _.PParams.nopt
d_nopt_764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_470
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_444
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_478
      (coe v0)
-- _.PParams.prices
d_prices_770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_454
      (coe v0)
-- _.PParams.pv
d_pv_772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_418
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_464
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_462
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_450
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.EnactState
d_EnactState_964 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.getHash
d_getHash_984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_948 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_984 ~v0 = du_getHash_984
du_getHash_984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_948 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHash_984
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_getHash_1378
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.getHashES
d_getHashES_986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_948 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_986 ~v0 = du_getHashES_986
du_getHashES_986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_948 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHashES_986
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_getHashES_1390
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.EnactState.cc
d_cc_1014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1332 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.EnactState.constitution
d_constitution_1016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1334
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.EnactState.pparams
d_pparams_1018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1338
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.EnactState.pv
d_pv_1020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1336 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.EnactState.withdrawals
d_withdrawals_1022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1340
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2040 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1032 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1034 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovEnv
d_GovEnv_1042 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovState
d_GovState_1046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_GovState_1046 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.HasEpoch-GovEnv
d_HasEpoch'45'GovEnv_1056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1854
d_HasEpoch'45'GovEnv_1056 ~v0 = du_HasEpoch'45'GovEnv_1056
du_HasEpoch'45'GovEnv_1056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1854
du_HasEpoch'45'GovEnv_1056
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasEpoch'45'GovEnv_2126
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.HasPParams-GovEnv
d_HasPParams'45'GovEnv_1062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
d_HasPParams'45'GovEnv_1062 ~v0 = du_HasPParams'45'GovEnv_1062
du_HasPParams'45'GovEnv_1062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
du_HasPParams'45'GovEnv_1062
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasPParams'45'GovEnv_2120
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.HasRewardCredentials-GovEnv
d_HasRewardCredentials'45'GovEnv_1070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasRewardCredentials_2104
d_HasRewardCredentials'45'GovEnv_1070 ~v0
  = du_HasRewardCredentials'45'GovEnv_1070
du_HasRewardCredentials'45'GovEnv_1070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasRewardCredentials_2104
du_HasRewardCredentials'45'GovEnv_1070
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasRewardCredentials'45'GovEnv_2128
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.allEnactable
d_allEnactable_1094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_allEnactable_1094 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.enactable
d_enactable_1106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_enactable_1106 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.getAidPairsList
d_getAidPairsList_1110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsList_1110 ~v0 = du_getAidPairsList_1110
du_getAidPairsList_1110 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsList_1110
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_getAidPairsList_2294
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.hasParent'
d_hasParent''_1116 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.hasParent?'
d_hasParent'63'''_1120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_948 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_hasParent'63'''_1120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_hasParent'63'''_2480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.isRegistered
d_isRegistered_1128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_988 ->
  ()
d_isRegistered_1128 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.validHFAction
d_validHFAction_1136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1066 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320 ->
  ()
d_validHFAction_1136 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovEnv.certState
d_certState_1154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1506
d_certState_1154 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_certState_2066
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovEnv.enactState
d_enactState_1156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320
d_enactState_1156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_enactState_2064
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovEnv.epoch
d_epoch_1158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2040 ->
  AgdaAny
d_epoch_1158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_epoch_2058
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovEnv.pparams
d_pparams_1160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_1160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_pparams_2060
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovEnv.ppolicy
d_ppolicy_1162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2040 ->
  Maybe AgdaAny
d_ppolicy_1162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_ppolicy_2062
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovEnv.rewardCreds
d_rewardCreds_1164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2040 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_rewardCreds_1164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_rewardCreds_2068
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovEnv.txid
d_txid_1166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2040 ->
  AgdaAny
d_txid_1166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_txid_2056 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovAction
d_GovAction_1702 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionID
d_GovActionID_1708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_GovActionID_1708 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionState
d_GovActionState_1712 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionType
d_GovActionType_1716 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovProposal
d_GovProposal_1720 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovRole
d_GovRole_1724 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovVote
d_GovVote_1728 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_1766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1316
d_HasDeposit'45'GovProposal_1766 ~v0
  = du_HasDeposit'45'GovProposal_1766
du_HasDeposit'45'GovProposal_1766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1316
du_HasDeposit'45'GovProposal_1766
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1352
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1178
d_HasGovAction'45'GovProposal_1774 ~v0
  = du_HasGovAction'45'GovProposal_1774
du_HasGovAction'45'GovProposal_1774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1178
du_HasGovAction'45'GovProposal_1774
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1354
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1256
d_HasPolicy'45'GovProposal_1802 ~v0
  = du_HasPolicy'45'GovProposal_1802
du_HasPolicy'45'GovProposal_1802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1256
du_HasPolicy'45'GovProposal_1802
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1348
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovAction.gaData
d_gaData_1888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_966 ->
  AgdaAny
d_gaData_1888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_974
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovAction.gaType
d_gaType_1890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_966 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_948
d_gaType_1890 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_972
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionState.action
d_action_1894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1094 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_966
d_action_1894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1114
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionState.deposit
d_deposit_1896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1094 ->
  Integer
d_deposit_1896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1118
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionState.expiresIn
d_expiresIn_1898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1094 ->
  AgdaAny
d_expiresIn_1898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1112
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionState.prevAction
d_prevAction_1900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1094 ->
  AgdaAny
d_prevAction_1900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1116
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionState.returnAddr
d_returnAddr_1902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1094 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1110
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionState.votes
d_votes_1904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1094 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1032
d_votes_1904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1108
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovProposal.action
d_action_1924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1066 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_966
d_action_1924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1080
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovProposal.anchor
d_anchor_1926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1066 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1000
d_anchor_1926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1090
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovProposal.deposit
d_deposit_1928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1066 ->
  Integer
d_deposit_1928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1086
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovProposal.policy
d_policy_1930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1066 ->
  Maybe AgdaAny
d_policy_1930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1084
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovProposal.prevAction
d_prevAction_1932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1066 ->
  AgdaAny
d_prevAction_1932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1082
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovProposal.returnAddr
d_returnAddr_1934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1066 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1088
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovVote.anchor
d_anchor_1946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1012 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1000
d_anchor_1946 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1028
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovVote.gid
d_gid_1948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1012 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_1022
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovVote.vote
d_vote_1950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_980
d_vote_1950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_1026
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovVote.voter
d_voter_1952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_988
d_voter_1952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1024
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.canVote
d_canVote_2082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_966 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_938 ->
  ()
d_canVote_2082 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.expired
d_expired_2090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1094 ->
  ()
d_expired_2090 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.lookupActionId
d_lookupActionId_2212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_938 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupActionId_2212 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
      (coe
         (\ v5 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
              (coe
                 MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                          (coe v0))
                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                    (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                       (coe
                          (\ v6 ->
                             MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_threshold_1886
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
                             (coe v0))
                          v1 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1114
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                          v2)))
                 (coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_expired'63'_2764
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
                          (coe v0))
                       (coe v4) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                       (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))))
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.isUpdateCommittee
d_isUpdateCommittee_2238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_966 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isUpdateCommittee_2238 ~v0 v1 = du_isUpdateCommittee_2238 v1
du_isUpdateCommittee_2238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_966 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isUpdateCommittee_2238 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_976 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_950
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_952
               -> case coe v2 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                      -> case coe v4 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                             -> coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                  (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                                              erased))))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_954
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_956
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_958
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_960
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_962
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.pvFollows
d_pvFollows_2252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvFollows_2252 ~v0 v1 v2 v3 = du_pvFollows_2252 v1 v2 v3
du_pvFollows_2252 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvFollows_2252 v0 v1 v2
  = let v3
          = MAlonzo.Code.Class.Decidable.Core.d_dec_16
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_pvCanFollowMajor'63'_98
                 (coe v0) (coe v1)) in
    coe
      (case coe v3 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
           -> if coe v4
                then coe
                       seq (coe v5)
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_Dec'45'pvCanFollowMinor_70
                          (coe v2) (coe v0))
                else coe
                       seq (coe v5)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                          (coe
                             MAlonzo.Code.Class.Decidable.Core.d_dec_16
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_pvCanFollowMajor'63'_98
                                (coe v2) (coe v0)))
                          (coe
                             MAlonzo.Code.Class.Decidable.Core.d_dec_16
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_pvCanFollowMinor'63'_100
                                (coe v2) (coe v0))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.hasPrev
d_hasPrev_2288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1094 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasPrev_2288 ~v0 v1 v2 v3 = du_hasPrev_2288 v1 v2 v3
du_hasPrev_2288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1094 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_hasPrev_2288 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1120 v3 v4 v5 v6 v7 v8
        -> case coe v6 of
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_976 v9 v10
               -> case coe v9 of
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_950
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_952
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_954
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_956
                      -> let v11
                               = coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                   erased
                                   (\ v11 ->
                                      coe
                                        MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2786
                                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                      (coe
                                         eqInt
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))
                                         (coe
                                            addInt (coe (1 :: Integer))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                                      (coe
                                         MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                                         (coe
                                            eqInt
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))
                                            (coe
                                               addInt (coe (1 :: Integer))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v1)))))) in
                         coe
                           (let v12 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v10) in
                            coe
                              (let v13 = 0 :: Integer in
                               coe
                                 (case coe v11 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                      -> if coe v14
                                           then let v16
                                                      = seq
                                                          (coe v15)
                                                          (coe
                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                                             erased erased
                                                             (coe
                                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                v12 v13)) in
                                                coe
                                                  (case coe v16 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                       -> if coe v17
                                                            then let v19
                                                                       = seq
                                                                           (coe v18)
                                                                           (coe
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                              (coe v17)
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.C_canFollowMajor_20))) in
                                                                 coe
                                                                   (case coe v19 of
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v20 v21
                                                                        -> if coe v20
                                                                             then let v22
                                                                                        = seq
                                                                                            (coe
                                                                                               v21)
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_Dec'45'pvCanFollowMinor_70
                                                                                               (coe
                                                                                                  v2)
                                                                                               (coe
                                                                                                  v10)) in
                                                                                  coe
                                                                                    (case coe v22 of
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                                         -> if coe
                                                                                                 v23
                                                                                              then case coe
                                                                                                          v24 of
                                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v25
                                                                                                       -> coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                            (coe
                                                                                                               v23)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                  (coe
                                                                                                                     v10)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                     erased
                                                                                                                     (coe
                                                                                                                        v25))))
                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                              else coe
                                                                                                     seq
                                                                                                     (coe
                                                                                                        v24)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                        (coe
                                                                                                           v23)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             else (let v22
                                                                                         = seq
                                                                                             (coe
                                                                                                v21)
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_pvCanFollowMajor'63'_98
                                                                                                      (coe
                                                                                                         v2)
                                                                                                      (coe
                                                                                                         v10)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_pvCanFollowMinor'63'_100
                                                                                                      (coe
                                                                                                         v2)
                                                                                                      (coe
                                                                                                         v10)))) in
                                                                                   coe
                                                                                     (case coe
                                                                                             v22 of
                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                                          -> if coe
                                                                                                  v23
                                                                                               then case coe
                                                                                                           v24 of
                                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v25
                                                                                                        -> coe
                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                             (coe
                                                                                                                v23)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                   (coe
                                                                                                                      v10)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                      erased
                                                                                                                      (coe
                                                                                                                         v25))))
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                               else coe
                                                                                                      seq
                                                                                                      (coe
                                                                                                         v24)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                         (coe
                                                                                                            v23)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                            else (let v19
                                                                        = seq
                                                                            (coe v18)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                               (coe v17)
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                  coe
                                                                    (case coe v19 of
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v20 v21
                                                                         -> if coe v20
                                                                              then let v22
                                                                                         = seq
                                                                                             (coe
                                                                                                v21)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_Dec'45'pvCanFollowMinor_70
                                                                                                (coe
                                                                                                   v2)
                                                                                                (coe
                                                                                                   v10)) in
                                                                                   coe
                                                                                     (case coe
                                                                                             v22 of
                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                                          -> if coe
                                                                                                  v23
                                                                                               then case coe
                                                                                                           v24 of
                                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v25
                                                                                                        -> coe
                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                             (coe
                                                                                                                v23)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                   (coe
                                                                                                                      v10)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                      erased
                                                                                                                      (coe
                                                                                                                         v25))))
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                               else coe
                                                                                                      seq
                                                                                                      (coe
                                                                                                         v24)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                         (coe
                                                                                                            v23)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                                              else (let v22
                                                                                          = seq
                                                                                              (coe
                                                                                                 v21)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_pvCanFollowMajor'63'_98
                                                                                                       (coe
                                                                                                          v2)
                                                                                                       (coe
                                                                                                          v10)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_pvCanFollowMinor'63'_100
                                                                                                       (coe
                                                                                                          v2)
                                                                                                       (coe
                                                                                                          v10)))) in
                                                                                    coe
                                                                                      (case coe
                                                                                              v22 of
                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                                           -> if coe
                                                                                                   v23
                                                                                                then case coe
                                                                                                            v24 of
                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v25
                                                                                                         -> coe
                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                              (coe
                                                                                                                 v23)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       v10)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          v25))))
                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                else coe
                                                                                                       seq
                                                                                                       (coe
                                                                                                          v24)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                          (coe
                                                                                                             v23)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else (let v16
                                                       = seq
                                                           (coe v15)
                                                           (coe
                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                              (coe v14)
                                                              (coe
                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                 coe
                                                   (case coe v16 of
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                        -> if coe v17
                                                             then let v19
                                                                        = seq
                                                                            (coe v18)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                               (coe v17)
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.C_canFollowMajor_20))) in
                                                                  coe
                                                                    (case coe v19 of
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v20 v21
                                                                         -> if coe v20
                                                                              then let v22
                                                                                         = seq
                                                                                             (coe
                                                                                                v21)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_Dec'45'pvCanFollowMinor_70
                                                                                                (coe
                                                                                                   v2)
                                                                                                (coe
                                                                                                   v10)) in
                                                                                   coe
                                                                                     (case coe
                                                                                             v22 of
                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                                          -> if coe
                                                                                                  v23
                                                                                               then case coe
                                                                                                           v24 of
                                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v25
                                                                                                        -> coe
                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                             (coe
                                                                                                                v23)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                   (coe
                                                                                                                      v10)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                      erased
                                                                                                                      (coe
                                                                                                                         v25))))
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                               else coe
                                                                                                      seq
                                                                                                      (coe
                                                                                                         v24)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                         (coe
                                                                                                            v23)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                                              else (let v22
                                                                                          = seq
                                                                                              (coe
                                                                                                 v21)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_pvCanFollowMajor'63'_98
                                                                                                       (coe
                                                                                                          v2)
                                                                                                       (coe
                                                                                                          v10)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_pvCanFollowMinor'63'_100
                                                                                                       (coe
                                                                                                          v2)
                                                                                                       (coe
                                                                                                          v10)))) in
                                                                                    coe
                                                                                      (case coe
                                                                                              v22 of
                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                                           -> if coe
                                                                                                   v23
                                                                                                then case coe
                                                                                                            v24 of
                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v25
                                                                                                         -> coe
                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                              (coe
                                                                                                                 v23)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       v10)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          v25))))
                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                else coe
                                                                                                       seq
                                                                                                       (coe
                                                                                                          v24)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                          (coe
                                                                                                             v23)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                             else (let v19
                                                                         = seq
                                                                             (coe v18)
                                                                             (coe
                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                (coe v17)
                                                                                (coe
                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                   coe
                                                                     (case coe v19 of
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v20 v21
                                                                          -> if coe v20
                                                                               then let v22
                                                                                          = seq
                                                                                              (coe
                                                                                                 v21)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_Dec'45'pvCanFollowMinor_70
                                                                                                 (coe
                                                                                                    v2)
                                                                                                 (coe
                                                                                                    v10)) in
                                                                                    coe
                                                                                      (case coe
                                                                                              v22 of
                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                                           -> if coe
                                                                                                   v23
                                                                                                then case coe
                                                                                                            v24 of
                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v25
                                                                                                         -> coe
                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                              (coe
                                                                                                                 v23)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       v10)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          v25))))
                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                else coe
                                                                                                       seq
                                                                                                       (coe
                                                                                                          v24)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                          (coe
                                                                                                             v23)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                               else (let v22
                                                                                           = seq
                                                                                               (coe
                                                                                                  v21)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_pvCanFollowMajor'63'_98
                                                                                                        (coe
                                                                                                           v2)
                                                                                                        (coe
                                                                                                           v10)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_pvCanFollowMinor'63'_100
                                                                                                        (coe
                                                                                                           v2)
                                                                                                        (coe
                                                                                                           v10)))) in
                                                                                     coe
                                                                                       (case coe
                                                                                               v22 of
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                                            -> if coe
                                                                                                    v23
                                                                                                 then case coe
                                                                                                             v24 of
                                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v25
                                                                                                          -> coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                               (coe
                                                                                                                  v23)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                     (coe
                                                                                                                        v10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                        erased
                                                                                                                        (coe
                                                                                                                           v25))))
                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                 else coe
                                                                                                        seq
                                                                                                        (coe
                                                                                                           v24)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                           (coe
                                                                                                              v23)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                      _ -> MAlonzo.RTE.mazUnreachableError))
                                    _ -> MAlonzo.RTE.mazUnreachableError)))
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_958
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_960
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_962
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.validHFAction?
d_validHFAction'63'_2338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1066 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_validHFAction'63'_2338 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1092 v4 v5 v6 v7 v8 v9
        -> case coe v4 of
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_976 v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_950
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_952
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_954
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_956
                      -> case coe v3 of
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1342 v12 v13 v14 v15 v16
                             -> case coe v14 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                    -> let v19
                                             = coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                 (coe
                                                    MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                    (coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                                                          (coe v0)))
                                                    (coe
                                                       (\ v19 ->
                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                                    (coe v18) (coe v5))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion.d_pvCanFollow'63'_106
                                                    (coe v11) (coe v17)) in
                                       coe
                                         (let v20
                                                = coe
                                                    MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
                                                    (coe
                                                       (\ v20 ->
                                                          coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                            (coe
                                                               MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                                                                     (coe v0)))
                                                               (coe
                                                                  (\ v21 ->
                                                                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                       (coe
                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v20))
                                                               (coe v5))
                                                            (coe
                                                               du_hasPrev_2288
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v20))
                                                               (coe v17) (coe v11))))
                                                    (coe v2) in
                                          coe
                                            (case coe v19 of
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v21 v22
                                                 -> if coe v21
                                                      then case coe v22 of
                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v23
                                                               -> coe
                                                                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                       (coe v21)
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                          (coe
                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                             (coe v23))))
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      else coe
                                                             seq (coe v22)
                                                             (case coe v20 of
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                  -> if coe v23
                                                                       then case coe v24 of
                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v25
                                                                                -> let v26
                                                                                         = coe
                                                                                             MAlonzo.Code.Data.List.Membership.Setoid.du_find_86
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
                                                                                             (coe
                                                                                                v2)
                                                                                             (coe
                                                                                                v25) in
                                                                                   coe
                                                                                     (case coe
                                                                                             v26 of
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                          -> case coe
                                                                                                    v27 of
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                 -> case coe
                                                                                                           v28 of
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                                                        -> case coe
                                                                                                                  v32 of
                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                                                               -> case coe
                                                                                                                         v34 of
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                                                      -> coe
                                                                                                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                              (coe
                                                                                                                                 v23)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                       (coe
                                                                                                                                          v30)
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                          (coe
                                                                                                                                             v35)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Function.Bundles.d_to_1868
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_460
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                   (coe
                                                                                                                                                      v2)
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                      (coe
                                                                                                                                                         v5)
                                                                                                                                                      (coe
                                                                                                                                                         v30)))
                                                                                                                                                v31)
                                                                                                                                             (coe
                                                                                                                                                v36)))))))
                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                       else coe
                                                                              seq (coe v24)
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v23)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_958
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_960
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_962
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.isRegistered?
d_isRegistered'63'_2430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_988 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isRegistered'63'_2430 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7515'_998 v3 v4
        -> case coe v3 of
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_CC_940
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                       (coe
                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                             (let v5
                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                           (coe
                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                              (coe v0))) in
                              coe
                                (let v6
                                       = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                           (coe
                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                              (coe v0)) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                      (coe v5) (coe v6))))))
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_replacement_236
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased erased
                             (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
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
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                  (coe v0))))
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                               (coe v0)))))
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1500
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1518
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_certState_2066
                                            (coe v1))))
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_ccCreds_1372
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1332
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_enactState_2064
                                            (coe v1)))))))))
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_DRep_942
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                       (coe
                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased
                          (let v5
                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                           (coe v0))) in
                           coe
                             (let v6
                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                           (coe v0)) in
                              coe
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                   (coe v5) (coe v6)))))
                       (coe v4)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_replacement_236
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased erased
                             (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1498
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1518
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_certState_2066
                                         (coe v1))))))))
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_SPO_944
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
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
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                   (coe v0)))))
                       (coe v4)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_replacement_236
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased erased
                             (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1480
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1516
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_certState_2066
                                         (coe v1))))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.Computational-GOV
d_Computational'45'GOV_2432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV_2432 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2822 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.Γ
d_Γ_2444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2040
d_Γ_2444 ~v0 v1 ~v2 = du_Γ_2444 v1
du_Γ_2444 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2040
du_Γ_2444 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.k
d_k_2446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
d_k_2446 ~v0 v1 ~v2 = du_k_2446 v1
du_k_2446 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_k_2446 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.GoVote.computeProof
d_computeProof_2462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1012 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2462 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (coe
                 d_lookupActionId_2212 v0
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_pparams_2060
                    (coe du_Γ_2444 (coe v1)))
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_994
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1024
                       (coe v3)))
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_1022
                    (coe v3))
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_epoch_2058
                    (coe du_Γ_2444 (coe v1)))
                 v2)
              (d_isRegistered'63'_2430
                 (coe v0) (coe du_Γ_2444 (coe v1))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1024
                    (coe v3))) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                  -> if coe v7
                       then case coe v8 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                -> case coe v6 of
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                       -> if coe v10
                                            then case coe v11 of
                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                                     -> let v13
                                                              = coe
                                                                  MAlonzo.Code.Function.Bundles.d_from_2136
                                                                  (coe
                                                                     MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core.du_Any'8596'_154
                                                                     (coe v2))
                                                                  v9 in
                                                        coe
                                                          (case coe v13 of
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                               -> case coe v15 of
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                                      -> case coe v17 of
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                             -> case coe v3 of
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1030 v20 v21 v22 v23
                                                                                    -> case coe
                                                                                              v19 of
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v24 v25
                                                                                           -> coe
                                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_addVote_2218
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
                                                                                                         (coe
                                                                                                            v0))
                                                                                                      (coe
                                                                                                         v2)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v14))
                                                                                                      (coe
                                                                                                         v21)
                                                                                                      (coe
                                                                                                         v22))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_GOV'45'Vote_2732
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                         (coe
                                                                                                            v14))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Function.Bundles.d_to_1868
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_460
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                               (coe
                                                                                                                  v2)
                                                                                                               (coe
                                                                                                                  v14))
                                                                                                            v16)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               v24)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  v12)
                                                                                                               (coe
                                                                                                                  v25))))))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            else coe
                                                   seq (coe v11)
                                                   (coe
                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                      (coe
                                                         ("\172\nisRegistered \915\n(.Ledger.Dijkstra.Specification.Gov.Actions.GovVote.voter sig)"
                                                          ::
                                                          Data.Text.Text)))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v8)
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                 (coe
                                    ("Dec\n(isRegistered \915\n (.Ledger.Dijkstra.Specification.Gov.Actions.GovVote.voter sig))"
                                     ::
                                     Data.Text.Text)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.GoVote.completeness
d_completeness_2484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1012 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T__'8866'_'8640''10631'_'44'GOV'10632'__2730 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2484 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.GoProp.Dec-actionWellFormed
d_Dec'45'actionWellFormed_2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1066 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_966 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'actionWellFormed_2670 v0 ~v1 ~v2 ~v3
  = du_Dec'45'actionWellFormed_2670 v0
du_Dec'45'actionWellFormed_2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_966 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'actionWellFormed_2670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_actionWellFormed'63'_2722
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.GoProp.Dec-actionValid
d_Dec'45'actionValid_2672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1066 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_966 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'actionValid_2672 v0 ~v1 ~v2 ~v3
  = du_Dec'45'actionValid_2672 v0
du_Dec'45'actionValid_2672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_966 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'actionValid_2672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_actionValid'63'_2718
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.GoProp.H
d_H_2674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_H_2674 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe
            MAlonzo.Code.Class.Decidable.Core.d_dec_16
            (coe
               du_Dec'45'actionWellFormed_2670 v0
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1080
                  (coe v3))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
            (coe
               MAlonzo.Code.Class.Decidable.Core.d_dec_16
               (coe
                  du_Dec'45'actionValid_2672 v0
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_RewardCredentialsOf_2112
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasRewardCredentials'45'GovEnv_2128)
                     (coe du_Γ_2444 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1264
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1348)
                     v3)
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_ppolicy_2062
                     (coe du_Γ_2444 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1862
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasEpoch'45'GovEnv_2126)
                     (coe du_Γ_2444 (coe v1)))
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1080
                     (coe v3))))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
               (coe
                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1324
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1352)
                        v3)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasPParams'45'GovEnv_2120)
                           (coe du_Γ_2444 (coe v1))))))
               (coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                  (coe
                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                     (coe
                        d_validHFAction'63'_2338 (coe v0) (coe v3) (coe v2)
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_enactState_2064
                           (coe du_Γ_2444 (coe v1)))))
                  (coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.d_dec_16
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_hasParent'63'''_2480
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
                              (coe v0))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_enactState_2064
                              (coe du_Γ_2444 (coe v1)))
                           (coe v2)
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_972
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1080
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1082
                              (coe v3))))
                     (coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.d_dec_16
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1088
                                    (coe v3)))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
                                    (coe v0)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.d_dec_16
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (let v4
                                     = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                               (coe v0))) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                       (coe v4) (coe v5))))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1088
                                    (coe v3)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_rewardCreds_2068
                                 (coe du_Γ_2444 (coe v1)))))))))))
      (coe
         du_isUpdateCommittee_2238
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1080
            (coe v3)))
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.GoProp.computeProof
d_computeProof_2682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1066 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2682 v0 v1 v2 v3
  = let v4 = d_H_2674 (coe v0) (coe v1) (coe v2) (coe v3) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                  -> if coe v7
                       then case coe v8 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                -> case coe v9 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                       -> case coe v11 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                              -> case coe v13 of
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                     -> case coe v15 of
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                            -> case coe v17 of
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                   -> case coe v18 of
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_HasParent''_2470 v24
                                                                          -> case coe v3 of
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1092 v25 v26 v27 v28 v29 v30
                                                                                 -> coe
                                                                                      seq (coe v19)
                                                                                      (case coe
                                                                                              v6 of
                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v31 v32
                                                                                           -> if coe
                                                                                                   v31
                                                                                                then case coe
                                                                                                            v32 of
                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v33
                                                                                                         -> case coe
                                                                                                                   v33 of
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v34 v35
                                                                                                                -> case coe
                                                                                                                          v35 of
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v36 v37
                                                                                                                       -> case coe
                                                                                                                                 v37 of
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v38 v39
                                                                                                                              -> let v40
                                                                                                                                       = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
                                                                                                                                              (coe
                                                                                                                                                 (\ v40 ->
                                                                                                                                                    coe
                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_all'63'_1658
                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                      erased
                                                                                                                                                      erased
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72
                                                                                                                                                         (coe
                                                                                                                                                            (\ v41 ->
                                                                                                                                                               coe
                                                                                                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
                                                                                                                                                                    (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
                                                                                                                                                                          (coe
                                                                                                                                                                             v0)))
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                                                                                                                       (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
                                                                                                                                                                             (coe
                                                                                                                                                                                v0)))
                                                                                                                                                                       (\ v42
                                                                                                                                                                          v43 ->
                                                                                                                                                                          v42)
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1862
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasEpoch'45'GovEnv_2126)
                                                                                                                                                                          (coe
                                                                                                                                                                             du_Γ_2444
                                                                                                                                                                             (coe
                                                                                                                                                                                v1)))
                                                                                                                                                                       v41)
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                                                                                                                       (\ v42
                                                                                                                                                                          v43 ->
                                                                                                                                                                          v43)
                                                                                                                                                                       (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
                                                                                                                                                                             (coe
                                                                                                                                                                                v0)))
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1862
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasEpoch'45'GovEnv_2126)
                                                                                                                                                                          (coe
                                                                                                                                                                             du_Γ_2444
                                                                                                                                                                             (coe
                                                                                                                                                                                v1)))
                                                                                                                                                                       v41))
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                       (coe
                                                                                                                                                                          (\ v42 ->
                                                                                                                                                                             coe
                                                                                                                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                               (let v43
                                                                                                                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v0))) in
                                                                                                                                                                                coe
                                                                                                                                                                                  (let v44
                                                                                                                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v0)) in
                                                                                                                                                                                   coe
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v43)
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v44))))
                                                                                                                                                                               (coe
                                                                                                                                                                                  v42)
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Axiom.Set.du__'8745'__732
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
                                                                                                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v0))))
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v0)))))
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                                                                                             (coe
                                                                                                                                                                                v34))
                                                                                                                                                                          (coe
                                                                                                                                                                             v36)))
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                       (coe
                                                                                                                                                                          (\ v42 ->
                                                                                                                                                                             coe
                                                                                                                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                               (let v43
                                                                                                                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v0))) in
                                                                                                                                                                                coe
                                                                                                                                                                                  (let v44
                                                                                                                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v0)) in
                                                                                                                                                                                   coe
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v43)
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v44))))
                                                                                                                                                                               (coe
                                                                                                                                                                                  v42)
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.du__'8745'__732
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
                                                                                                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v0))))
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 v0)))))
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v34))
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v36))))
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))))
                                                                                                                                                      v40))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Class.IsSet.du_range_588
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                                                                 (coe
                                                                                                                                                    v34))) in
                                                                                                                                 coe
                                                                                                                                   (case coe
                                                                                                                                           v40 of
                                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v41 v42
                                                                                                                                        -> if coe
                                                                                                                                                v41
                                                                                                                                             then coe
                                                                                                                                                    seq
                                                                                                                                                    (coe
                                                                                                                                                       v42)
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_addAction_2202
                                                                                                                                                             (coe
                                                                                                                                                                v2)
                                                                                                                                                             (let v43
                                                                                                                                                                    = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
                                                                                                                                                                        (coe
                                                                                                                                                                           v0) in
                                                                                                                                                              coe
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
                                                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_830
                                                                                                                                                                      (coe
                                                                                                                                                                         v43))
                                                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_486
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_pparams_2060
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                            (coe
                                                                                                                                                                               v1))))
                                                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_epoch_2058
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                         (coe
                                                                                                                                                                            v1)))))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_txid_2056
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                      (coe
                                                                                                                                                                         v1)))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                   (coe
                                                                                                                                                                      v1)))
                                                                                                                                                             (coe
                                                                                                                                                                v29)
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_976
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_952)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                   (coe
                                                                                                                                                                      v34)
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                      (coe
                                                                                                                                                                         v36)
                                                                                                                                                                      (coe
                                                                                                                                                                         v38))))
                                                                                                                                                             (coe
                                                                                                                                                                v26)
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_pparams_2060
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                      (coe
                                                                                                                                                                         v1)))))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_GOV'45'Propose_2744
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   v34)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                   (coe
                                                                                                                                                                      v36)
                                                                                                                                                                   (coe
                                                                                                                                                                      v38)))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                   (coe
                                                                                                                                                                      v12)
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                      (coe
                                                                                                                                                                         v14)
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                         (coe
                                                                                                                                                                            v16)
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                            (coe
                                                                                                                                                                               v24)
                                                                                                                                                                            (coe
                                                                                                                                                                               v19)))))))))
                                                                                                                                             else coe
                                                                                                                                                    seq
                                                                                                                                                    (coe
                                                                                                                                                       v42)
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                                       (coe
                                                                                                                                                          ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 e \8594\n   (preoEpoch HasPreorder.<\n    .Ledger.Dijkstra.Specification.Certs.HasEpoch.EpochOf\n    HasEpoch-GovEnv \915)\n   e\n   \215\n   (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8801\7497\n    (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.Intersection.\8745\n     .Axiom.Set.Theory\7496.\8712-sp List-Model\7496)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) new) rem)\n   (.Class.HasEmptySet.HasEmptySet.\8709\n    (Class.HasEmptySet.HasEmptySet-Set\n     (.Axiom.Set.Theory\7496.th List-Model\7496))))\n(Class.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496) new)"
                                                                                                                                                           ::
                                                                                                                                                           Data.Text.Text)))
                                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                else coe
                                                                                                       seq
                                                                                                       (coe
                                                                                                          v32)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_insertGovAction_2164
                                                                                                                (coe
                                                                                                                   v2)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_txid_2056
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                            (coe
                                                                                                                               v1)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                         (coe
                                                                                                                            v1)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_gas_2198
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.du_additionVia_10
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
                                                                                                                               (coe
                                                                                                                                  v0)))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_486
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_pparams_2060
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                  (coe
                                                                                                                                     v1))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_epoch_2058
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  v1))))
                                                                                                                      (coe
                                                                                                                         v29)
                                                                                                                      (coe
                                                                                                                         v25)
                                                                                                                      (coe
                                                                                                                         v26)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_pparams_2060
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  v1)))))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_GOV'45'Propose_2744
                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_974
                                                                                                                   (coe
                                                                                                                      v25))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                   (coe
                                                                                                                      v10)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                      (coe
                                                                                                                         v12)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                         (coe
                                                                                                                            v14)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                            (coe
                                                                                                                               v16)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                               (coe
                                                                                                                                  v24)
                                                                                                                               (coe
                                                                                                                                  v19)))))))))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v8)
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                 (let v9
                                        = coe
                                            MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                            (coe
                                               du_Dec'45'actionWellFormed_2670 v0
                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1080
                                                  (coe v3)))
                                            erased in
                                  coe
                                    (case coe v9 of
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                                         -> coe
                                              ("\172\nLedger.Dijkstra.Specification.Gov.actionWellFormed\n(TransactionStructure.govStructure txs)\n(.Ledger.Dijkstra.Specification.Gov.Actions.HasGovAction.GovActionOf\n HasGovAction-GovProposal prop)"
                                               ::
                                               Data.Text.Text)
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                                         -> let v11
                                                  = coe
                                                      MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                      (coe
                                                         du_Dec'45'actionValid_2672 v0
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_RewardCredentialsOf_2112
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasRewardCredentials'45'GovEnv_2128)
                                                            (coe du_Γ_2444 (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1264
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1348)
                                                            v3)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_ppolicy_2062
                                                            (coe du_Γ_2444 (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1862
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasEpoch'45'GovEnv_2126)
                                                            (coe du_Γ_2444 (coe v1)))
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1080
                                                            (coe v3)))
                                                      erased in
                                            coe
                                              (case coe v11 of
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                                   -> coe
                                                        ("\172\nLedger.Dijkstra.Specification.Gov.actionValid\n(TransactionStructure.govStructure txs)\n(.Ledger.Dijkstra.Specification.Gov.HasRewardCredentials.RewardCredentialsOf\n HasRewardCredentials-GovEnv \915)\n(.Ledger.Dijkstra.Specification.Gov.Actions.HasPolicy.PolicyOf\n HasPolicy-GovProposal prop)\n(.Ledger.Dijkstra.Specification.Gov.GovEnv.ppolicy \915)\n(.Ledger.Dijkstra.Specification.Certs.HasEpoch.EpochOf\n HasEpoch-GovEnv \915)\n(.Ledger.Dijkstra.Specification.Gov.Actions.HasGovAction.GovActionOf\n HasGovAction-GovProposal prop)"
                                                         ::
                                                         Data.Text.Text)
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                                   -> let v13
                                                            = coe
                                                                MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1324
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1352)
                                                                      v3)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasPParams'45'GovEnv_2120)
                                                                         (coe du_Γ_2444 (coe v1)))))
                                                                erased in
                                                      coe
                                                        (case coe v13 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                             -> coe
                                                                  ("\172\n.Ledger.Dijkstra.Specification.Gov.Actions.HasDeposit.DepositOf\nHasDeposit-GovProposal prop\n\8801\n.Ledger.Dijkstra.Specification.PParams.PParams.govActionDeposit\n(.Ledger.Dijkstra.Specification.PParams.HasPParams.PParamsOf\n HasPParams-GovEnv \915)"
                                                                   ::
                                                                   Data.Text.Text)
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                             -> let v15
                                                                      = coe
                                                                          MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                          (coe
                                                                             d_validHFAction'63'_2338
                                                                             (coe v0) (coe v3)
                                                                             (coe v2)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_enactState_2064
                                                                                (coe
                                                                                   du_Γ_2444
                                                                                   (coe v1))))
                                                                          erased in
                                                                coe
                                                                  (case coe v15 of
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                       -> coe
                                                                            ("\172\nLedger.Dijkstra.Specification.Gov.validHFAction\n(TransactionStructure.govStructure txs) prop s\n(.Ledger.Dijkstra.Specification.Enact.HasEnactState.EnactStateOf\n (Ledger.Dijkstra.Specification.Gov.HasEnactState-GovEnv\n  (TransactionStructure.govStructure txs))\n \915)"
                                                                             ::
                                                                             Data.Text.Text)
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                       -> let v17
                                                                                = coe
                                                                                    MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_hasParent'63'''_2480
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
                                                                                          (coe v0))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_enactState_2064
                                                                                          (coe
                                                                                             du_Γ_2444
                                                                                             (coe
                                                                                                v1)))
                                                                                       (coe v2)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_972
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1080
                                                                                             (coe
                                                                                                v3)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1082
                                                                                          (coe v3)))
                                                                                    erased in
                                                                          coe
                                                                            (case coe v17 of
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v18
                                                                                 -> coe
                                                                                      ("\172\nhasParent'\n(.Ledger.Dijkstra.Specification.Enact.HasEnactState.EnactStateOf\n (Ledger.Dijkstra.Specification.Gov.HasEnactState-GovEnv\n  (TransactionStructure.govStructure txs))\n \915)\ns\n(.Ledger.Dijkstra.Specification.Gov.Actions.GovAction.gaType\n (.Ledger.Dijkstra.Specification.Gov.Actions.HasGovAction.GovActionOf\n  (Ledger.Dijkstra.Specification.Gov.Actions.HasGovAction-GovProposal\n   (TransactionStructure.govStructure txs))\n  prop))\n(.Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.prevAction\n prop)"
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v18
                                                                                 -> let v19
                                                                                          = coe
                                                                                              MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
                                                                                                       (coe
                                                                                                          v0)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1088
                                                                                                       (coe
                                                                                                          v3)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
                                                                                                       (coe
                                                                                                          v0))))
                                                                                              erased in
                                                                                    coe
                                                                                      (case coe
                                                                                              v19 of
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v20
                                                                                           -> coe
                                                                                                ("\172\n.Ledger.Core.Specification.Address.HasNetworkId.NetworkIdOf\n(Ledger.Core.Specification.Address.HasNetworkId-RewardAddress\n (.Ledger.Core.Specification.Epoch.GlobalConstants.Network\n  (.GovStructure.globalConstants\n   (TransactionStructure.govStructure txs)))\n (.Ledger.Core.Specification.Crypto.isHashableSet.THash\n  (.Ledger.Core.Specification.Crypto.CryptoStructure.khs\n   (.GovStructure.cryptoStructure\n    (TransactionStructure.govStructure txs))))\n (.Ledger.Core.Specification.Crypto.CryptoStructure.ScriptHash\n  (.GovStructure.cryptoStructure\n   (TransactionStructure.govStructure txs))))\n(.Ledger.Core.Specification.Address.HasRewardAddress.RewardAddressOf\n (Ledger.Dijkstra.Specification.Gov.Actions.HasRewardAddress-GovProposal\n  (TransactionStructure.govStructure txs))\n prop)\n\8801\n.Ledger.Core.Specification.Epoch.GlobalConstants.NetworkId\n(.GovStructure.globalConstants\n (TransactionStructure.govStructure txs))"
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v20
                                                                                           -> coe
                                                                                                ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712\n .Ledger.Core.Specification.Address.HasCredential.CredentialOf\n (Ledger.Core.Specification.Address.HasCredential-RewardAddress\n  (.Ledger.Core.Specification.Epoch.GlobalConstants.Network\n   (.GovStructure.globalConstants\n    (TransactionStructure.govStructure txs)))\n  (.Ledger.Core.Specification.Crypto.isHashableSet.THash\n   (.Ledger.Core.Specification.Crypto.CryptoStructure.khs\n    (.GovStructure.cryptoStructure\n     (TransactionStructure.govStructure txs))))\n  (.Ledger.Core.Specification.Crypto.CryptoStructure.ScriptHash\n   (.GovStructure.cryptoStructure\n    (TransactionStructure.govStructure txs))))\n (.Ledger.Core.Specification.Address.HasRewardAddress.RewardAddressOf\n  (Ledger.Dijkstra.Specification.Gov.Actions.HasRewardAddress-GovProposal\n   (TransactionStructure.govStructure txs))\n  prop))\n(.Ledger.Dijkstra.Specification.Gov.HasRewardCredentials.RewardCredentialsOf\n (Ledger.Dijkstra.Specification.Gov.HasRewardCredentials-GovEnv\n  (TransactionStructure.govStructure txs))\n \915)"
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.GoProp.completeness
d_completeness_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1066 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T__'8866'_'8640''10631'_'44'GOV'10632'__2730 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2734 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.computeProof
d_computeProof_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2822 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
        -> coe d_computeProof_2462 (coe v0) (coe v1) (coe v2) (coe v4)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
        -> coe d_computeProof_2682 (coe v0) (coe v1) (coe v2) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.completeness
d_completeness_2832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T__'8866'_'8640''10631'_'44'GOV'10632'__2730 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2832 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.Computational-GOVS
d_Computational'45'GOVS_2838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVS_2838 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1102
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_740)
      (coe d_Computational'45'GOV_2432 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.allEnactable-singleton
d_allEnactable'45'singleton_2846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1094 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_allEnactable'45'singleton_2846 ~v0 v1 v2 v3 ~v4
  = du_allEnactable'45'singleton_2846 v1 v2 v3
du_allEnactable'45'singleton_2846 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1094 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_allEnactable'45'singleton_2846 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
      (coe du_helper_2872 (coe v0) (coe v1) (coe v2))
      (coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.helper
d_helper_2872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1094 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_helper_2872 ~v0 v1 v2 v3 ~v4 = du_helper_2872 v1 v2 v3
du_helper_2872 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1094 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1320 ->
  AgdaAny
du_helper_2872 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_getHashES_1390
              (coe v2)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_972
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1114
                    (coe v1))) in
    coe
      (let v4
             = coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_getHash_1378
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_972
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1114
                       (coe v1)))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1116
                    (coe v1)) in
       coe
         (case coe v3 of
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
              -> case coe v4 of
                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
                     -> coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v5)))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v7 v8 -> v8))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
                                   (coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)
                                   (coe
                                      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22))
                                (coe
                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased))))
                   MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> erased
                   _ -> MAlonzo.RTE.mazUnreachableError
            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
              -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
            _ -> MAlonzo.RTE.mazUnreachableError))
