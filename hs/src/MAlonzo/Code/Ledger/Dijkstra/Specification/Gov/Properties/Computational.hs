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
d_DecEq'45'Credential_106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_106 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_106 v2 v3
du_DecEq'45'Credential_106 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_106 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe v0) (coe v1)
-- _.Epoch
d_Epoch_172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Epoch_172 = erased
-- _.PParams
d_PParams_290 a0 = ()
-- _.preoEpoch
d_preoEpoch_522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_522 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_826
            (coe v1)))
-- _.PParams.Emax
d_Emax_686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_468
      (coe v0)
-- _.PParams.a
d_a_688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_438 (coe v0)
-- _.PParams.a0
d_a0_690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_472
      (coe v0)
-- _.PParams.b
d_b_692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_440 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_484
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_696 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_482
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_452
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_474
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_476
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_492
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_490
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_480
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_486
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_442
      (coe v0)
-- _.PParams.leiosCommitteeSize
d_leiosCommitteeSize_718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosCommitteeSize_718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_430
      (coe v0)
-- _.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosDiffusionPeriod_720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_424
      (coe v0)
-- _.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosHeaderPeriod_722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_420
      (coe v0)
-- _.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_leiosMaxEBExUnits_724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_434
      (coe v0)
-- _.PParams.leiosMaxEBSize
d_leiosMaxEBSize_726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBSize_726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_426
      (coe v0)
-- _.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBTxsSize_728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_428
      (coe v0)
-- _.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxRefScriptSizePerEB_730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_436
      (coe v0)
-- _.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_432
      (coe v0)
-- _.PParams.leiosVotingPeriod
d_leiosVotingPeriod_734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosVotingPeriod_734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_422
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_412
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_404
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_416
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_408
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_460
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_458
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_410
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_406
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_414
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_456
      (coe v0)
-- _.PParams.minPoolCost
d_minPoolCost_756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_446
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_466
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_448
      (coe v0)
-- _.PParams.nopt
d_nopt_762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_470
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_444
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_478
      (coe v0)
-- _.PParams.prices
d_prices_768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_454
      (coe v0)
-- _.PParams.pv
d_pv_770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_418
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_464
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_462
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_450
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.EnactState
d_EnactState_962 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.getHash
d_getHash_982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_982 ~v0 = du_getHash_982
du_getHash_982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHash_982
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_getHash_1376
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.getHashES
d_getHashES_984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_984 ~v0 = du_getHashES_984
du_getHashES_984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHashES_984
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_getHashES_1388
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.EnactState.cc
d_cc_1012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1330 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.EnactState.constitution
d_constitution_1014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1332
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.EnactState.pparams
d_pparams_1016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1336
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.EnactState.pv
d_pv_1018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1334 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.EnactState.withdrawals
d_withdrawals_1020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1338
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2038 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1030 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1032 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovEnv
d_GovEnv_1040 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovState
d_GovState_1044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_GovState_1044 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.HasEpoch-GovEnv
d_HasEpoch'45'GovEnv_1054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1852
d_HasEpoch'45'GovEnv_1054 ~v0 = du_HasEpoch'45'GovEnv_1054
du_HasEpoch'45'GovEnv_1054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1852
du_HasEpoch'45'GovEnv_1054
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasEpoch'45'GovEnv_2124
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.HasPParams-GovEnv
d_HasPParams'45'GovEnv_1060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
d_HasPParams'45'GovEnv_1060 ~v0 = du_HasPParams'45'GovEnv_1060
du_HasPParams'45'GovEnv_1060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
du_HasPParams'45'GovEnv_1060
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasPParams'45'GovEnv_2118
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.HasRewardCredentials-GovEnv
d_HasRewardCredentials'45'GovEnv_1068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasRewardCredentials_2102
d_HasRewardCredentials'45'GovEnv_1068 ~v0
  = du_HasRewardCredentials'45'GovEnv_1068
du_HasRewardCredentials'45'GovEnv_1068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasRewardCredentials_2102
du_HasRewardCredentials'45'GovEnv_1068
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasRewardCredentials'45'GovEnv_2126
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.allEnactable
d_allEnactable_1092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_allEnactable_1092 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.enactable
d_enactable_1104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_enactable_1104 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.getAidPairsList
d_getAidPairsList_1108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsList_1108 ~v0 = du_getAidPairsList_1108
du_getAidPairsList_1108 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsList_1108
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_getAidPairsList_2292
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.hasParent'
d_hasParent''_1114 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.hasParent?'
d_hasParent'63'''_1118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_hasParent'63'''_1118 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_hasParent'63'''_2478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.isRegistered
d_isRegistered_1126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2038 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  ()
d_isRegistered_1126 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.validHFAction
d_validHFAction_1134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  ()
d_validHFAction_1134 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovEnv.certState
d_certState_1152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2038 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1504
d_certState_1152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_certState_2064
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovEnv.enactState
d_enactState_1154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2038 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318
d_enactState_1154 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_enactState_2062
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovEnv.epoch
d_epoch_1156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2038 ->
  AgdaAny
d_epoch_1156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_epoch_2056
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovEnv.pparams
d_pparams_1158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2038 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_1158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_pparams_2058
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovEnv.ppolicy
d_ppolicy_1160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2038 ->
  Maybe AgdaAny
d_ppolicy_1160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_ppolicy_2060
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovEnv.rewardCreds
d_rewardCreds_1162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2038 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_rewardCreds_1162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_rewardCreds_2066
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovEnv.txid
d_txid_1164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2038 ->
  AgdaAny
d_txid_1164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_txid_2054 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovAction
d_GovAction_1700 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionID
d_GovActionID_1706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_GovActionID_1706 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionState
d_GovActionState_1710 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionType
d_GovActionType_1714 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovProposal
d_GovProposal_1718 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovRole
d_GovRole_1722 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovVote
d_GovVote_1726 a0 = ()
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_1764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1314
d_HasDeposit'45'GovProposal_1764 ~v0
  = du_HasDeposit'45'GovProposal_1764
du_HasDeposit'45'GovProposal_1764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1314
du_HasDeposit'45'GovProposal_1764
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1350
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176
d_HasGovAction'45'GovProposal_1772 ~v0
  = du_HasGovAction'45'GovProposal_1772
du_HasGovAction'45'GovProposal_1772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176
du_HasGovAction'45'GovProposal_1772
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1352
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1254
d_HasPolicy'45'GovProposal_1800 ~v0
  = du_HasPolicy'45'GovProposal_1800
du_HasPolicy'45'GovProposal_1800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1254
du_HasPolicy'45'GovProposal_1800
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1346
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovAction.gaData
d_gaData_1886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  AgdaAny
d_gaData_1886 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_972
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovAction.gaType
d_gaType_1888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946
d_gaType_1888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_970
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionState.action
d_action_1892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964
d_action_1892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1112
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionState.deposit
d_deposit_1894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  Integer
d_deposit_1894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1116
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionState.expiresIn
d_expiresIn_1896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  AgdaAny
d_expiresIn_1896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1110
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionState.prevAction
d_prevAction_1898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  AgdaAny
d_prevAction_1898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1114
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionState.returnAddr
d_returnAddr_1900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1108
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovActionState.votes
d_votes_1902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1030
d_votes_1902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1106
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovProposal.action
d_action_1922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964
d_action_1922 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1078
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovProposal.anchor
d_anchor_1924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_998
d_anchor_1924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1088
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovProposal.deposit
d_deposit_1926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  Integer
d_deposit_1926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1084
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovProposal.policy
d_policy_1928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  Maybe AgdaAny
d_policy_1928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1082
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovProposal.prevAction
d_prevAction_1930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  AgdaAny
d_prevAction_1930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1080
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovProposal.returnAddr
d_returnAddr_1932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1086
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovVote.anchor
d_anchor_1944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_998
d_anchor_1944 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1026
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovVote.gid
d_gid_1946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1946 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_1020
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovVote.vote
d_vote_1948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_978
d_vote_1948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_1024
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.GovVote.voter
d_voter_1950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986
d_voter_1950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1022
      (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.canVote
d_canVote_2080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_936 ->
  ()
d_canVote_2080 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.expired
d_expired_2088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  ()
d_expired_2088 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.lookupActionId
d_lookupActionId_2210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupActionId_2210 v0 v1 v2 v3 v4
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
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_threshold_1884
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
                             (coe v0))
                          v1 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1112
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                          v2)))
                 (coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_expired'63'_2762
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
                          (coe v0))
                       (coe v4) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                       (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))))
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.isUpdateCommittee
d_isUpdateCommittee_2236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isUpdateCommittee_2236 ~v0 v1 = du_isUpdateCommittee_2236 v1
du_isUpdateCommittee_2236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isUpdateCommittee_2236 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_974 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_948
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_950
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
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_952
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_954
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_956
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_958
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_960
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.pvFollows
d_pvFollows_2250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvFollows_2250 ~v0 v1 v2 v3 = du_pvFollows_2250 v1 v2 v3
du_pvFollows_2250 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvFollows_2250 v0 v1 v2
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
d_hasPrev_2286 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasPrev_2286 ~v0 v1 v2 v3 = du_hasPrev_2286 v1 v2 v3
du_hasPrev_2286 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_hasPrev_2286 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1118 v3 v4 v5 v6 v7 v8
        -> case coe v6 of
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_974 v9 v10
               -> case coe v9 of
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_948
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_950
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_952
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_954
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
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_956
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_958
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_960
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.validHFAction?
d_validHFAction'63'_2336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_validHFAction'63'_2336 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1090 v4 v5 v6 v7 v8 v9
        -> case coe v4 of
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_974 v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NoConfidence_948
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_950
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_NewConstitution_952
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TriggerHardFork_954
                      -> case coe v3 of
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1340 v12 v13 v14 v15 v16
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
                                                               du_hasPrev_2286
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
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_ChangePParams_956
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_TreasuryWithdrawal_958
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_Info_960
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.isRegistered?
d_isRegistered'63'_2428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2038 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isRegistered'63'_2428 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7515'_996 v3 v4
        -> case coe v3 of
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_CC_938
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
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1498
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1516
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_certState_2064
                                            (coe v1))))
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_ccCreds_1370
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1330
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_enactState_2062
                                            (coe v1)))))))))
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_DRep_940
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
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1496
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1516
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_certState_2064
                                         (coe v1))))))))
             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_SPO_942
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
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1478
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1514
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_certState_2064
                                         (coe v1))))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.Computational-GOV
d_Computational'45'GOV_2430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV_2430 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2820 (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.Γ
d_Γ_2442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2038
d_Γ_2442 ~v0 v1 ~v2 = du_Γ_2442 v1
du_Γ_2442 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_2038
du_Γ_2442 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.k
d_k_2444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
d_k_2444 ~v0 v1 ~v2 = du_k_2444 v1
du_k_2444 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_k_2444 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.GoVote.computeProof
d_computeProof_2460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2460 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (coe
                 d_lookupActionId_2210 v0
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_pparams_2058
                    (coe du_Γ_2442 (coe v1)))
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_992
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1022
                       (coe v3)))
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_1020
                    (coe v3))
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_epoch_2056
                    (coe du_Γ_2442 (coe v1)))
                 v2)
              (d_isRegistered'63'_2428
                 (coe v0) (coe du_Γ_2442 (coe v1))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1022
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
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1028 v20 v21 v22 v23
                                                                                    -> case coe
                                                                                              v19 of
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v24 v25
                                                                                           -> coe
                                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_addVote_2216
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
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_GOV'45'Vote_2730
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
d_completeness_2482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T__'8866'_'8640''10631'_'44'GOV'10632'__2728 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2482 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.GoProp.Dec-actionWellFormed
d_Dec'45'actionWellFormed_2668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'actionWellFormed_2668 v0 ~v1 ~v2 ~v3
  = du_Dec'45'actionWellFormed_2668 v0
du_Dec'45'actionWellFormed_2668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'actionWellFormed_2668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_actionWellFormed'63'_2720
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.GoProp.Dec-actionValid
d_Dec'45'actionValid_2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'actionValid_2670 v0 ~v1 ~v2 ~v3
  = du_Dec'45'actionValid_2670 v0
du_Dec'45'actionValid_2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'actionValid_2670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_actionValid'63'_2716
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.GoProp.H
d_H_2672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_H_2672 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe
            MAlonzo.Code.Class.Decidable.Core.d_dec_16
            (coe
               du_Dec'45'actionWellFormed_2668 v0
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1078
                  (coe v3))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
            (coe
               MAlonzo.Code.Class.Decidable.Core.d_dec_16
               (coe
                  du_Dec'45'actionValid_2670 v0
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_RewardCredentialsOf_2110
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasRewardCredentials'45'GovEnv_2126)
                     (coe du_Γ_2442 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1262
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1346)
                     v3)
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_ppolicy_2060
                     (coe du_Γ_2442 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1860
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasEpoch'45'GovEnv_2124)
                     (coe du_Γ_2442 (coe v1)))
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1078
                     (coe v3))))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
               (coe
                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1322
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1350)
                        v3)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasPParams'45'GovEnv_2118)
                           (coe du_Γ_2442 (coe v1))))))
               (coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                  (coe
                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                     (coe
                        d_validHFAction'63'_2336 (coe v0) (coe v3) (coe v2)
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_enactState_2062
                           (coe du_Γ_2442 (coe v1)))))
                  (coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.d_dec_16
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_hasParent'63'''_2478
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
                              (coe v0))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_enactState_2062
                              (coe du_Γ_2442 (coe v1)))
                           (coe v2)
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_970
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1078
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1080
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
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1086
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
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1086
                                    (coe v3)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_rewardCreds_2066
                                 (coe du_Γ_2442 (coe v1)))))))))))
      (coe
         du_isUpdateCommittee_2236
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1078
            (coe v3)))
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.GoProp.computeProof
d_computeProof_2680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2680 v0 v1 v2 v3
  = let v4 = d_H_2672 (coe v0) (coe v1) (coe v2) (coe v3) in
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
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_HasParent''_2468 v24
                                                                          -> case coe v3 of
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_constructor_1090 v25 v26 v27 v28 v29 v30
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
                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1860
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasEpoch'45'GovEnv_2124)
                                                                                                                                                                          (coe
                                                                                                                                                                             du_Γ_2442
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
                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1860
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasEpoch'45'GovEnv_2124)
                                                                                                                                                                          (coe
                                                                                                                                                                             du_Γ_2442
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
                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_addAction_2200
                                                                                                                                                             (coe
                                                                                                                                                                v2)
                                                                                                                                                             (let v43
                                                                                                                                                                    = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
                                                                                                                                                                        (coe
                                                                                                                                                                           v0) in
                                                                                                                                                              coe
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
                                                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_826
                                                                                                                                                                      (coe
                                                                                                                                                                         v43))
                                                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_486
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_pparams_2058
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                            (coe
                                                                                                                                                                               v1))))
                                                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_epoch_2056
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                         (coe
                                                                                                                                                                            v1)))))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_txid_2054
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
                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_974
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.C_UpdateCommittee_950)
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
                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_pparams_2058
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                      (coe
                                                                                                                                                                         v1)))))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_GOV'45'Propose_2742
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
                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_insertGovAction_2162
                                                                                                                (coe
                                                                                                                   v2)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_txid_2054
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                            (coe
                                                                                                                               v1)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                         (coe
                                                                                                                            v1)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_gas_2196
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
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_pparams_2058
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                  (coe
                                                                                                                                     v1))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_epoch_2056
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
                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_pparams_2058
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  v1)))))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_GOV'45'Propose_2742
                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_972
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
                                               du_Dec'45'actionWellFormed_2668 v0
                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1078
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
                                                         du_Dec'45'actionValid_2670 v0
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_RewardCredentialsOf_2110
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasRewardCredentials'45'GovEnv_2126)
                                                            (coe du_Γ_2442 (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1262
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1346)
                                                            v3)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_ppolicy_2060
                                                            (coe du_Γ_2442 (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1860
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasEpoch'45'GovEnv_2124)
                                                            (coe du_Γ_2442 (coe v1)))
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1078
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
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1322
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1350)
                                                                      v3)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.du_HasPParams'45'GovEnv_2118)
                                                                         (coe du_Γ_2442 (coe v1)))))
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
                                                                             d_validHFAction'63'_2336
                                                                             (coe v0) (coe v3)
                                                                             (coe v2)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_enactState_2062
                                                                                (coe
                                                                                   du_Γ_2442
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
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_hasParent'63'''_2478
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
                                                                                          (coe v0))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_enactState_2062
                                                                                          (coe
                                                                                             du_Γ_2442
                                                                                             (coe
                                                                                                v1)))
                                                                                       (coe v2)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_970
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1078
                                                                                             (coe
                                                                                                v3)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1080
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
                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1086
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
d_completeness_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T__'8866'_'8640''10631'_'44'GOV'10632'__2728 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2732 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.computeProof
d_computeProof_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2820 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
        -> coe d_computeProof_2460 (coe v0) (coe v1) (coe v2) (coe v4)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
        -> coe d_computeProof_2680 (coe v0) (coe v1) (coe v2) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.Go.completeness
d_completeness_2830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T__'8866'_'8640''10631'_'44'GOV'10632'__2728 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2830 = erased
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.Computational-GOVS
d_Computational'45'GOVS_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVS_2836 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1102
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_740)
      (coe d_Computational'45'GOV_2430 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational.allEnactable-singleton
d_allEnactable'45'singleton_2844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_allEnactable'45'singleton_2844 ~v0 v1 v2 v3 ~v4
  = du_allEnactable'45'singleton_2844 v1 v2 v3
du_allEnactable'45'singleton_2844 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_allEnactable'45'singleton_2844 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
      (coe du_helper_2870 (coe v0) (coe v1) (coe v2))
      (coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)
-- Ledger.Dijkstra.Specification.Gov.Properties.Computational._.helper
d_helper_2870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_helper_2870 ~v0 v1 v2 v3 ~v4 = du_helper_2870 v1 v2 v3
du_helper_2870 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  AgdaAny
du_helper_2870 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_getHashES_1388
              (coe v2)
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_970
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1112
                    (coe v1))) in
    coe
      (let v4
             = coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_getHash_1376
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_970
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1112
                       (coe v1)))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1114
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
