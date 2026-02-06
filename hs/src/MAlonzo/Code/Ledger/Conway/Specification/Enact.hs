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

module MAlonzo.Code.Ledger.Conway.Specification.Enact where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _._+ᵉ_
d__'43''7497'__12 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__12 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_656
         (coe v0))
-- _.CCMaxTermLengthOf
d_CCMaxTermLengthOf_38 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_450 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_38 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_458
      (coe v0)
-- _.Credential
d_Credential_42 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_72 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_72 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_72 v2 v3
du_DecEq'45'Credential_72 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_72 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
      (coe v0) (coe v1)
-- _.DecEq-RewardAddress
d_DecEq'45'RewardAddress_94 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_94 ~v0 v1 v2 v3
  = du_DecEq'45'RewardAddress_94 v1 v2 v3
du_DecEq'45'RewardAddress_94 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RewardAddress_94 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_336
      (coe v0) (coe v1) (coe v2)
-- _.Epoch
d_Epoch_124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_124 = erased
-- _.HasCCMaxTermLength
d_HasCCMaxTermLength_142 a0 a1 a2 = ()
-- _.HasPParams
d_HasPParams_168 a0 a1 a2 = ()
-- _.HasWithdrawals
d_HasWithdrawals_180 a0 a1 a2 a3 a4 a5 = ()
-- _.PParams
d_PParams_228 a0 = ()
-- _.PParamsOf
d_PParamsOf_236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_PParamsOf_236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_438
      (coe v0)
-- _.UpdateT
d_UpdateT_238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_UpdateT_238 = erased
-- _.ProtVer
d_ProtVer_254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_ProtVer_254 = erased
-- _.ScriptHash
d_ScriptHash_282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_ScriptHash_282 = erased
-- _.Withdrawals
d_Withdrawals_356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Withdrawals_356 = erased
-- _.WithdrawalsOf
d_WithdrawalsOf_358 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_358 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_190
      (coe v0)
-- _.applyUpdate
d_applyUpdate_364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_applyUpdate_364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_govParams_1176
            (coe v0)))
-- _.preoEpoch
d_preoEpoch_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_452 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_656
         (coe v0))
-- _.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_560 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_450 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_458
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_PParamsOf_576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_438
      (coe v0)
-- _.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_584 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_584 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_190
      (coe v0)
-- _.PParams.Emax
d_Emax_600 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_Emax_600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_396
      (coe v0)
-- _.PParams.a
d_a_602 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_a_602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_368 (coe v0)
-- _.PParams.a0
d_a0_604 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_400 (coe v0)
-- _.PParams.b
d_b_606 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_b_606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_370 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMaxTermLength_608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_412
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_610 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMinSize_610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_410
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_612 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_coinsPerUTxOByte_612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_380
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_614 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_collateralPercentage_614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_402
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_618 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_404
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_620 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_drepActivity_620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_420
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_622 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_drepDeposit_622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_418
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_624 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210
d_drepThresholds_624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_408
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_626 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionDeposit_626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_416
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_628 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionLifetime_628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_414
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_630 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_keyDeposit_630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_632 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxBlockExUnits_632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_360
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_634 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxBlockSize_634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_352
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_636 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxCollateralInputs_636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_364
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_638 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxHeaderSize_638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_356
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_640 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerBlock_640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_388
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_642 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerTx_642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_386
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_644 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxTxExUnits_644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_358
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_646 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxTxSize_646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_354
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_648 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxValSize_648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_362
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_650 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_384
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_652 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_minUTxOValue_652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_394
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_654 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_376
      (coe v0)
-- _.PParams.nopt
d_nopt_656 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_nopt_656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_398
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_658 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_poolDeposit_658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_660 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254
d_poolThresholds_660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_406
      (coe v0)
-- _.PParams.prices
d_prices_662 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_prices_662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_382
      (coe v0)
-- _.PParams.pv
d_pv_664 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_366 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_666 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_392
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_668 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_390
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_670 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_378
      (coe v0)
-- Ledger.Conway.Specification.Enact._.GovAction
d_GovAction_848 a0 = ()
-- Ledger.Conway.Specification.Enact._.GovActionID
d_GovActionID_854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovActionID_854 = erased
-- Ledger.Conway.Specification.Enact._.GovActionType
d_GovActionType_862 a0 = ()
-- Ledger.Conway.Specification.Enact._.HashProtected
d_HashProtected_940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () -> ()
d_HashProtected_940 = erased
-- Ledger.Conway.Specification.Enact._.NeedsHash
d_NeedsHash_944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  ()
d_NeedsHash_944 = erased
-- Ledger.Conway.Specification.Enact._.GovAction.gaData
d_gaData_1014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870 ->
  AgdaAny
d_gaData_1014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_878
      (coe v0)
-- Ledger.Conway.Specification.Enact._.GovAction.gaType
d_gaType_1016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836
d_gaType_1016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_876
      (coe v0)
-- Ledger.Conway.Specification.Enact.EnactEnv
d_EnactEnv_1136 a0 = ()
data T_EnactEnv_1136
  = C_constructor_1150 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                       AgdaAny
-- Ledger.Conway.Specification.Enact.EnactEnv.gid
d_gid_1144 ::
  T_EnactEnv_1136 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1144 v0
  = case coe v0 of
      C_constructor_1150 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactEnv.treasury
d_treasury_1146 :: T_EnactEnv_1136 -> Integer
d_treasury_1146 v0
  = case coe v0 of
      C_constructor_1150 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactEnv.epoch
d_epoch_1148 :: T_EnactEnv_1136 -> AgdaAny
d_epoch_1148 v0
  = case coe v0 of
      C_constructor_1150 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactState
d_EnactState_1152 a0 = ()
data T_EnactState_1152
  = C_constructor_1174 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Enact.EnactState.cc
d_cc_1164 ::
  T_EnactState_1152 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1164 v0
  = case coe v0 of
      C_constructor_1174 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactState.constitution
d_constitution_1166 ::
  T_EnactState_1152 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1166 v0
  = case coe v0 of
      C_constructor_1174 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactState.pv
d_pv_1168 ::
  T_EnactState_1152 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1168 v0
  = case coe v0 of
      C_constructor_1174 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactState.pparams
d_pparams_1170 ::
  T_EnactState_1152 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1170 v0
  = case coe v0 of
      C_constructor_1174 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactState.withdrawals
d_withdrawals_1172 ::
  T_EnactState_1152 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1172 v0
  = case coe v0 of
      C_constructor_1174 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.HasEnactState
d_HasEnactState_1180 a0 a1 a2 = ()
newtype T_HasEnactState_1180
  = C_constructor_1190 (AgdaAny -> T_EnactState_1152)
-- Ledger.Conway.Specification.Enact.HasEnactState.EnactStateOf
d_EnactStateOf_1188 ::
  T_HasEnactState_1180 -> AgdaAny -> T_EnactState_1152
d_EnactStateOf_1188 v0
  = case coe v0 of
      C_constructor_1190 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact._.EnactStateOf
d_EnactStateOf_1194 ::
  T_HasEnactState_1180 -> AgdaAny -> T_EnactState_1152
d_EnactStateOf_1194 v0 = coe d_EnactStateOf_1188 (coe v0)
-- Ledger.Conway.Specification.Enact.HasPParams-EnactState
d_HasPParams'45'EnactState_1196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430
d_HasPParams'45'EnactState_1196 ~v0
  = du_HasPParams'45'EnactState_1196
du_HasPParams'45'EnactState_1196 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430
du_HasPParams'45'EnactState_1196
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_440
      (coe
         (\ v0 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe d_pparams_1170 (coe v0))))
-- Ledger.Conway.Specification.Enact.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_1198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_450
d_HasccMaxTermLength'45'EnactState_1198 ~v0
  = du_HasccMaxTermLength'45'EnactState_1198
du_HasccMaxTermLength'45'EnactState_1198 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_450
du_HasccMaxTermLength'45'EnactState_1198
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_460
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_412
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe d_pparams_1170 (coe v0)))))
-- Ledger.Conway.Specification.Enact.HasWithdrawals-EnactState
d_HasWithdrawals'45'EnactState_1200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'EnactState_1200 ~v0
  = du_HasWithdrawals'45'EnactState_1200
du_HasWithdrawals'45'EnactState_1200 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
du_HasWithdrawals'45'EnactState_1200
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_192
      (coe (\ v0 -> d_withdrawals_1172 (coe v0)))
-- Ledger.Conway.Specification.Enact.HasCast-EnactEnv
d_HasCast'45'EnactEnv_1202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_1202 ~v0 = du_HasCast'45'EnactEnv_1202
du_HasCast'45'EnactEnv_1202 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EnactEnv_1202
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
                                 (1136 :: Integer) (7895255245290171660 :: Integer)
                                 "Ledger.Conway.Specification.Enact.EnactEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (854 :: Integer) (7895255245290171660 :: Integer)
                                 "Ledger.Conway.Specification.Enact._.GovActionID"
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
                                    (1136 :: Integer) (7895255245290171660 :: Integer)
                                    "Ledger.Conway.Specification.Enact.EnactEnv"
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
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (1136 :: Integer) (7895255245290171660 :: Integer)
                                       "Ledger.Conway.Specification.Enact.EnactEnv"
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
                                       (124 :: Integer) (7895255245290171660 :: Integer) "_.Epoch"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_1150))
-- Ledger.Conway.Specification.Enact.ccCreds
d_ccCreds_1204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ccCreds_1204 ~v0 v1 = du_ccCreds_1204 v1
du_ccCreds_1204 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_ccCreds_1204 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
               -> coe
                    MAlonzo.Code.Class.IsSet.du_dom_586
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.Axiom.Set.du_'8709'_470
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.getHash
d_getHash_1210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_1210 ~v0 v1 v2 = du_getHash_1210 v1 v2
du_getHash_1210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHash_1210 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_838
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_840
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_842
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_844
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_846
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_848
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_850
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.getHashES
d_getHashES_1222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_EnactState_1152 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_1222 ~v0 v1 v2 = du_getHashES_1222 v1 v2
du_getHashES_1222 ::
  T_EnactState_1152 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHashES_1222 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_838
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_1164 (coe v0)))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_840
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_1164 (coe v0)))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_842
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_constitution_1166 (coe v0)))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_844
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_pv_1168 (coe v0)))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_846
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_pparams_1170 (coe v0)))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_848
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_850
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1238 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'ENACT'10632'__1238
  = C_Enact'45'NoConf_1266 |
    C_Enact'45'UpdComm_1274 (AgdaAny ->
                             MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                             MAlonzo.Code.Data.Sum.Base.T__'8846'__30) |
    C_Enact'45'NewConst_1276 | C_Enact'45'HF_1278 |
    C_Enact'45'PParams_1280 |
    C_Enact'45'Wdrl_1286 MAlonzo.Code.Data.Nat.Base.T__'8804'__22 |
    C_Enact'45'Info_1288
