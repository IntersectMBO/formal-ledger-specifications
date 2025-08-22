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
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__78
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_624
         (coe v0))
-- _.CCMaxTermLengthOf
d_CCMaxTermLengthOf_30 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_430 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_30 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_438
      (coe v0)
-- _.Credential
d_Credential_34 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_64 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_64 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_64 v2 v3
du_DecEq'45'Credential_64 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_64 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_210
      (coe v0) (coe v1)
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_86 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_86 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_86 v1 v2 v3
du_DecEq'45'RwdAddr_86 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_86 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_262
      (coe v0) (coe v1) (coe v2)
-- _.Epoch
d_Epoch_114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_114 = erased
-- _.HasCCMaxTermLength
d_HasCCMaxTermLength_124 a0 a1 a2 = ()
-- _.HasPParams
d_HasPParams_140 a0 a1 a2 = ()
-- _.PParams
d_PParams_186 a0 = ()
-- _.PParamsOf
d_PParamsOf_190 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_412 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
d_PParamsOf_190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_420
      (coe v0)
-- _.UpdateT
d_UpdateT_192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_UpdateT_192 = erased
-- _.ProtVer
d_ProtVer_206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_ProtVer_206 = erased
-- _.ScriptHash
d_ScriptHash_226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_ScriptHash_226 = erased
-- _.Withdrawals
d_Withdrawals_296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Withdrawals_296 = erased
-- _.applyUpdate
d_applyUpdate_304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
d_applyUpdate_304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1464
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1498
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_govParams_1112
            (coe v0)))
-- _.preoEpoch
d_preoEpoch_388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_388 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_88
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_624
         (coe v0))
-- _.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_492 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_430 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_438
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_504 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_412 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
d_PParamsOf_504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_420
      (coe v0)
-- _.PParams.Emax
d_Emax_524 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  AgdaAny
d_Emax_524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_382
      (coe v0)
-- _.PParams.a
d_a_526 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_a_526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_354 (coe v0)
-- _.PParams.a0
d_a0_528 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_386 (coe v0)
-- _.PParams.b
d_b_530 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_b_530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_356 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_532 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_ccMaxTermLength_532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_398
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_534 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_ccMinSize_534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_396
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_536 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_coinsPerUTxOByte_536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_366
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_538 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_collateralPercentage_538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_388
      (coe v0)
-- _.PParams.costmdls
d_costmdls_540 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  AgdaAny
d_costmdls_540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_390
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_542 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  AgdaAny
d_drepActivity_542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_406
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_544 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_drepDeposit_544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_404
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_546 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202
d_drepThresholds_546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_394
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_548 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_govActionDeposit_548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_402
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_550 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_govActionLifetime_550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_400
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_552 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_keyDeposit_552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_358
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_554 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  AgdaAny
d_maxBlockExUnits_554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_346
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_556 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_maxBlockSize_556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_338
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_558 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_maxCollateralInputs_558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_350
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_560 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_maxHeaderSize_560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_342
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_562 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_maxRefScriptSizePerBlock_562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_374
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_564 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_maxRefScriptSizePerTx_564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_372
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_566 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  AgdaAny
d_maxTxExUnits_566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_344
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_568 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_maxTxSize_568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_340
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_570 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_maxValSize_570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_348
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_370
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_minUTxOValue_574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_380
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_362
      (coe v0)
-- _.PParams.nopt
d_nopt_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_nopt_578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_384
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_580 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  Integer
d_poolDeposit_580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_360
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_244
d_poolThresholds_582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_392
      (coe v0)
-- _.PParams.prices
d_prices_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  AgdaAny
d_prices_584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_368
      (coe v0)
-- _.PParams.pv
d_pv_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_352 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_588 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_378
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_590 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_376
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_364
      (coe v0)
-- Ledger.Conway.Specification.Enact._.GovAction
d_GovAction_760 a0 = ()
-- Ledger.Conway.Specification.Enact._.GovActionID
d_GovActionID_764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovActionID_764 = erased
-- Ledger.Conway.Specification.Enact._.GovActionType
d_GovActionType_768 a0 = ()
-- Ledger.Conway.Specification.Enact._.HashProtected
d_HashProtected_784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () -> ()
d_HashProtected_784 = erased
-- Ledger.Conway.Specification.Enact._.NeedsHash
d_NeedsHash_788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_776 ->
  ()
d_NeedsHash_788 = erased
-- Ledger.Conway.Specification.Enact._.GovAction.gaData
d_gaData_840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_794 ->
  AgdaAny
d_gaData_840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_802
      (coe v0)
-- Ledger.Conway.Specification.Enact._.GovAction.gaType
d_gaType_842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_794 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_776
d_gaType_842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_800
      (coe v0)
-- Ledger.Conway.Specification.Enact.EnactEnv
d_EnactEnv_920 a0 = ()
data T_EnactEnv_920
  = C_EnactEnv'46'constructor_2315 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                   Integer AgdaAny
-- Ledger.Conway.Specification.Enact.EnactEnv.gid
d_gid_928 ::
  T_EnactEnv_920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_928 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_2315 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactEnv.treasury
d_treasury_930 :: T_EnactEnv_920 -> Integer
d_treasury_930 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_2315 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactEnv.epoch
d_epoch_932 :: T_EnactEnv_920 -> AgdaAny
d_epoch_932 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_2315 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactState
d_EnactState_934 a0 = ()
data T_EnactState_934
  = C_EnactState'46'constructor_2855 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Enact.EnactState.cc
d_cc_946 ::
  T_EnactState_934 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_946 v0
  = case coe v0 of
      C_EnactState'46'constructor_2855 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactState.constitution
d_constitution_948 ::
  T_EnactState_934 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_948 v0
  = case coe v0 of
      C_EnactState'46'constructor_2855 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactState.pv
d_pv_950 ::
  T_EnactState_934 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_950 v0
  = case coe v0 of
      C_EnactState'46'constructor_2855 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactState.pparams
d_pparams_952 ::
  T_EnactState_934 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_952 v0
  = case coe v0 of
      C_EnactState'46'constructor_2855 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.EnactState.withdrawals
d_withdrawals_954 ::
  T_EnactState_934 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_954 v0
  = case coe v0 of
      C_EnactState'46'constructor_2855 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.HasEnactState
d_HasEnactState_960 a0 a1 a2 = ()
newtype T_HasEnactState_960
  = C_HasEnactState'46'constructor_2997 (AgdaAny -> T_EnactState_934)
-- Ledger.Conway.Specification.Enact.HasEnactState.EnactStateOf
d_EnactStateOf_968 ::
  T_HasEnactState_960 -> AgdaAny -> T_EnactState_934
d_EnactStateOf_968 v0
  = case coe v0 of
      C_HasEnactState'46'constructor_2997 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact._.EnactStateOf
d_EnactStateOf_972 ::
  T_HasEnactState_960 -> AgdaAny -> T_EnactState_934
d_EnactStateOf_972 v0 = coe d_EnactStateOf_968 (coe v0)
-- Ledger.Conway.Specification.Enact.HasPParams-EnactState
d_HasPParams'45'EnactState_974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_412
d_HasPParams'45'EnactState_974 ~v0
  = du_HasPParams'45'EnactState_974
du_HasPParams'45'EnactState_974 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_412
du_HasPParams'45'EnactState_974
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_HasPParams'46'constructor_9449
      (coe
         (\ v0 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe d_pparams_952 (coe v0))))
-- Ledger.Conway.Specification.Enact.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_430
d_HasccMaxTermLength'45'EnactState_976 ~v0
  = du_HasccMaxTermLength'45'EnactState_976
du_HasccMaxTermLength'45'EnactState_976 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_430
du_HasccMaxTermLength'45'EnactState_976
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_HasCCMaxTermLength'46'constructor_9581
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_398
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe d_pparams_952 (coe v0)))))
-- Ledger.Conway.Specification.Enact.HasCast-EnactEnv
d_HasCast'45'EnactEnv_978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_978 ~v0 = du_HasCast'45'EnactEnv_978
du_HasCast'45'EnactEnv_978 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EnactEnv_978
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
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
                                 (920 :: Integer) (7895255245290171660 :: Integer)
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
                                 (764 :: Integer) (7895255245290171660 :: Integer)
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
                                    (920 :: Integer) (7895255245290171660 :: Integer)
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
                                       (920 :: Integer) (7895255245290171660 :: Integer)
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
                                       (114 :: Integer) (7895255245290171660 :: Integer) "_.Epoch"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_EnactEnv'46'constructor_2315))
-- Ledger.Conway.Specification.Enact.ccCreds
d_ccCreds_980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ccCreds_980 ~v0 v1 = du_ccCreds_980 v1
du_ccCreds_980 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_ccCreds_980 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
               -> coe
                    MAlonzo.Code.Class.IsSet.du_dom_548
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.Axiom.Set.du_'8709'_442
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.getHash
d_getHash_986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_776 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_986 ~v0 v1 v2 = du_getHash_986 v1 v2
du_getHash_986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_776 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHash_986 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_778
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_780
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_782
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHF_784
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_786
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWdrl_788
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_790
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact.getHashES
d_getHashES_998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_EnactState_934 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_776 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_998 ~v0 v1 v2 = du_getHashES_998 v1 v2
du_getHashES_998 ::
  T_EnactState_934 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_776 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHashES_998 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_778
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_946 (coe v0)))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_780
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_946 (coe v0)))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_782
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_constitution_948 (coe v0)))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHF_784
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_pv_950 (coe v0)))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_786
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_pparams_952 (coe v0)))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWdrl_788
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_790
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Enact._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1014 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'ENACT'10632'__1014
  = C_Enact'45'NoConf_1042 |
    C_Enact'45'UpdComm_1050 (AgdaAny ->
                             MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                             MAlonzo.Code.Data.Sum.Base.T__'8846'__30) |
    C_Enact'45'NewConst_1052 | C_Enact'45'HF_1054 |
    C_Enact'45'PParams_1056 |
    C_Enact'45'Wdrl_1062 MAlonzo.Code.Data.Nat.Base.T__'8804'__22 |
    C_Enact'45'Info_1064
