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
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_680
         (coe v0))
-- _.CCMaxTermLengthOf
d_CCMaxTermLengthOf_38 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_464 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_38 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_472
      (coe v0)
-- _.Credential
d_Credential_42 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_76 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_76 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_76 v2 v3
du_DecEq'45'Credential_76 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_76 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
      (coe v0) (coe v1)
-- _.DecEq-RewardAddress
d_DecEq'45'RewardAddress_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_100 ~v0 v1 v2 v3
  = du_DecEq'45'RewardAddress_100 v1 v2 v3
du_DecEq'45'RewardAddress_100 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RewardAddress_100 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_336
      (coe v0) (coe v1) (coe v2)
-- _.Epoch
d_Epoch_130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_130 = erased
-- _.HasCCMaxTermLength
d_HasCCMaxTermLength_148 a0 a1 a2 = ()
-- _.HasPParams
d_HasPParams_174 a0 a1 a2 = ()
-- _.HasWithdrawals
d_HasWithdrawals_186 a0 a1 a2 a3 a4 a5 = ()
-- _.PParams
d_PParams_234 a0 = ()
-- _.PParamsOf
d_PParamsOf_242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_PParamsOf_242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_452
      (coe v0)
-- _.UpdateT
d_UpdateT_244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_UpdateT_244 = erased
-- _.ProtVer
d_ProtVer_260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_ProtVer_260 = erased
-- _.ScriptHash
d_ScriptHash_288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_ScriptHash_288 = erased
-- _.Withdrawals
d_Withdrawals_362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Withdrawals_362 = erased
-- _.WithdrawalsOf
d_WithdrawalsOf_364 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_364 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_190
      (coe v0)
-- _.applyUpdate
d_applyUpdate_370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_applyUpdate_370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1532
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1568
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_govParams_1220
            (coe v0)))
-- _.preoEpoch
d_preoEpoch_458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_458 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_680
         (coe v0))
-- _.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_580 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_464 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_472
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_PParamsOf_596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_452
      (coe v0)
-- _.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_604 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_604 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_190
      (coe v0)
-- _.PParams.Emax
d_Emax_620 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_Emax_620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_410
      (coe v0)
-- _.PParams.a
d_a_622 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_a_622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_382 (coe v0)
-- _.PParams.a0
d_a0_624 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_414 (coe v0)
-- _.PParams.b
d_b_626 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_b_626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_384 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_628 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_ccMaxTermLength_628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_426
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_630 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_ccMinSize_630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_424
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_632 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_coinsPerUTxOByte_632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_394
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_634 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_collateralPercentage_634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_416
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_638 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_418
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_640 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_drepActivity_640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_434
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_642 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_drepDeposit_642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_432
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_644 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224
d_drepThresholds_644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_646 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_govActionDeposit_646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_430
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_648 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_govActionLifetime_648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_428
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_650 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_keyDeposit_650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_386
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_652 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_maxBlockExUnits_652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_374
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_654 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxBlockSize_654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_366
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_656 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxCollateralInputs_656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_378
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_658 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxHeaderSize_658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_370
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_660 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxRefScriptSizePerBlock_660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_402
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_662 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxRefScriptSizePerTx_662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_400
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_664 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_maxTxExUnits_664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_372
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_666 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxTxSize_666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_368
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_668 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxValSize_668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_376
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_670 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_398
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_672 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_minUTxOValue_672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_408
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_674 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_390
      (coe v0)
-- _.PParams.nopt
d_nopt_676 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_nopt_676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_412
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_678 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_poolDeposit_678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_388
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_680 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268
d_poolThresholds_680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_420
      (coe v0)
-- _.PParams.prices
d_prices_682 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_prices_682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_396
      (coe v0)
-- _.PParams.pv
d_pv_684 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_380 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_686 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_406
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_688 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_404
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_690 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_392
      (coe v0)
-- Ledger.Conway.Specification.Enact._.GovAction
d_GovAction_882 a0 = ()
-- Ledger.Conway.Specification.Enact._.GovActionID
d_GovActionID_888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovActionID_888 = erased
-- Ledger.Conway.Specification.Enact._.GovActionType
d_GovActionType_896 a0 = ()
-- Ledger.Conway.Specification.Enact._.HashProtected
d_HashProtected_974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () -> ()
d_HashProtected_974 = erased
-- Ledger.Conway.Specification.Enact._.NeedsHash
d_NeedsHash_978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  ()
d_NeedsHash_978 = erased
-- Ledger.Conway.Specification.Enact._.GovAction.gaData
d_gaData_1048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  AgdaAny
d_gaData_1048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_900
      (coe v0)
-- Ledger.Conway.Specification.Enact._.GovAction.gaType
d_gaType_1050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858
d_gaType_1050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_898
      (coe v0)
-- Ledger.Conway.Specification.Enact.EnactEnv
d_EnactEnv_1170 a0 = ()
data T_EnactEnv_1170
  = C_constructor_1184 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                       AgdaAny
-- Ledger.Conway.Specification.Enact.EnactEnv.gid
d_gid_1178 ::
  T_EnactEnv_1170 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1178 v0
  = case coe v0 of
      C_constructor_1184 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactEnv.treasury
d_treasury_1180 :: T_EnactEnv_1170 -> Integer
d_treasury_1180 v0
  = case coe v0 of
      C_constructor_1184 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactEnv.epoch
d_epoch_1182 :: T_EnactEnv_1170 -> AgdaAny
d_epoch_1182 v0
  = case coe v0 of
      C_constructor_1184 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactState
d_EnactState_1186 a0 = ()
data T_EnactState_1186
  = C_constructor_1208 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Enact.EnactState.cc
d_cc_1198 ::
  T_EnactState_1186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1198 v0
  = case coe v0 of
      C_constructor_1208 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactState.constitution
d_constitution_1200 ::
  T_EnactState_1186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1200 v0
  = case coe v0 of
      C_constructor_1208 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactState.pv
d_pv_1202 ::
  T_EnactState_1186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1202 v0
  = case coe v0 of
      C_constructor_1208 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactState.pparams
d_pparams_1204 ::
  T_EnactState_1186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1204 v0
  = case coe v0 of
      C_constructor_1208 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactState.withdrawals
d_withdrawals_1206 ::
  T_EnactState_1186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1206 v0
  = case coe v0 of
      C_constructor_1208 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.HasEnactState
d_HasEnactState_1214 a0 a1 a2 = ()
newtype T_HasEnactState_1214
  = C_constructor_1224 (AgdaAny -> T_EnactState_1186)
-- Ledger.Conway.Specification.Enact.HasEnactState.EnactStateOf
d_EnactStateOf_1222 ::
  T_HasEnactState_1214 -> AgdaAny -> T_EnactState_1186
d_EnactStateOf_1222 v0
  = case coe v0 of
      C_constructor_1224 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact._.EnactStateOf
d_EnactStateOf_1228 ::
  T_HasEnactState_1214 -> AgdaAny -> T_EnactState_1186
d_EnactStateOf_1228 v0 = coe d_EnactStateOf_1222 (coe v0)
-- Ledger.Conway.Specification.Enact.HasPParams-EnactState
d_HasPParams'45'EnactState_1230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444
d_HasPParams'45'EnactState_1230 ~v0
  = du_HasPParams'45'EnactState_1230
du_HasPParams'45'EnactState_1230 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444
du_HasPParams'45'EnactState_1230
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_454
      (coe
         (\ v0 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe d_pparams_1204 (coe v0))))
-- Ledger.Conway.Specification.Enact.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_464
d_HasccMaxTermLength'45'EnactState_1232 ~v0
  = du_HasccMaxTermLength'45'EnactState_1232
du_HasccMaxTermLength'45'EnactState_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_464
du_HasccMaxTermLength'45'EnactState_1232
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_474
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_426
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe d_pparams_1204 (coe v0)))))
-- Ledger.Conway.Specification.Enact.HasWithdrawals-EnactState
d_HasWithdrawals'45'EnactState_1234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'EnactState_1234 ~v0
  = du_HasWithdrawals'45'EnactState_1234
du_HasWithdrawals'45'EnactState_1234 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
du_HasWithdrawals'45'EnactState_1234
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_192
      (coe (\ v0 -> d_withdrawals_1206 (coe v0)))
-- Ledger.Conway.Specification.Enact.HasCast-EnactEnv
d_HasCast'45'EnactEnv_1236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_1236 ~v0 = du_HasCast'45'EnactEnv_1236
du_HasCast'45'EnactEnv_1236 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EnactEnv_1236
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
                                 (1170 :: Integer) (7895255245290171660 :: Integer)
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
                                 (888 :: Integer) (7895255245290171660 :: Integer)
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
                                    (1170 :: Integer) (7895255245290171660 :: Integer)
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
                                       (1170 :: Integer) (7895255245290171660 :: Integer)
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
                                       (130 :: Integer) (7895255245290171660 :: Integer) "_.Epoch"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_1184))
-- Ledger.Conway.Specification.Enact.ccCreds
d_ccCreds_1238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ccCreds_1238 ~v0 v1 = du_ccCreds_1238 v1
du_ccCreds_1238 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_ccCreds_1238 v0
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
d_getHash_1244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_1244 ~v0 v1 v2 = du_getHash_1244 v1 v2
du_getHash_1244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHash_1244 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_860
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_862
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_864
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_866
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_868
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_870
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_872
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.getHashES
d_getHashES_1256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_1256 ~v0 v1 v2 = du_getHashES_1256 v1 v2
du_getHashES_1256 ::
  T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHashES_1256 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_860
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_1198 (coe v0)))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_862
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_1198 (coe v0)))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_864
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_constitution_1200 (coe v0)))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_866
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_pv_1202 (coe v0)))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_868
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_pparams_1204 (coe v0)))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_870
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_872
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1272 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'ENACT'10632'__1272
  = C_Enact'45'NoConf_1300 |
    C_Enact'45'UpdComm_1308 (AgdaAny ->
                             MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                             MAlonzo.Code.Data.Sum.Base.T__'8846'__30) |
    C_Enact'45'NewConst_1310 | C_Enact'45'HF_1312 |
    C_Enact'45'PParams_1314 |
    C_Enact'45'Wdrl_1320 MAlonzo.Code.Data.Nat.Base.T__'8804'__22 |
    C_Enact'45'Info_1322
