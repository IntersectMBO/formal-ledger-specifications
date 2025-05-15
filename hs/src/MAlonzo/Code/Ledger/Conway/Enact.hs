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

module MAlonzo.Code.Ledger.Conway.Enact where

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
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Types.GovStructure
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _._+ᵉ_
d__'43''7497'__10 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__10 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'__78
      (coe
         MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_epochStructure_624
         (coe v0))
-- _.Credential
d_Credential_30 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_60 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_60 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_60 v2 v3
du_DecEq'45'Credential_60 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_60 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe v0) (coe v1)
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_82 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_82 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_82 v1 v2 v3
du_DecEq'45'RwdAddr_82 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_82 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240 (coe v0)
      (coe v1) (coe v2)
-- _.Epoch
d_Epoch_110 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  ()
d_Epoch_110 = erased
-- _.HasPParams
d_HasPParams_134 a0 a1 a2 = ()
-- _.HasccMaxTermLength
d_HasccMaxTermLength_136 a0 a1 a2 = ()
-- _.PParams
d_PParams_182 a0 = ()
-- _.PParamsOf
d_PParamsOf_186 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_PParamsOf_186 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_418 (coe v0)
-- _.UpdateT
d_UpdateT_188 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  ()
d_UpdateT_188 = erased
-- _.ProtVer
d_ProtVer_200 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  ()
d_ProtVer_200 = erased
-- _.RwdAddr
d_RwdAddr_206 a0 a1 a2 a3 = ()
-- _.ScriptHash
d_ScriptHash_220 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  ()
d_ScriptHash_220 = erased
-- _.applyUpdate
d_applyUpdate_294 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyUpdate_294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1490
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
         (coe
            MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_govParams_1114
            (coe v0)))
-- _.ccMaxTermLengthOf
d_ccMaxTermLengthOf_300 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_446 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_454 (coe v0)
-- _.preoEpoch
d_preoEpoch_372 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_preoEpoch_88
      (coe
         MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_epochStructure_624
         (coe v0))
-- _.HasPParams.PParamsOf
d_PParamsOf_484 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_PParamsOf_484 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_418 (coe v0)
-- _.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_488 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_446 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_454 (coe v0)
-- _.PParams.Emax
d_Emax_512 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_Emax_512 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_380 (coe v0)
-- _.PParams.a
d_a_514 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_a_514 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_352 (coe v0)
-- _.PParams.a0
d_a0_516 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_516 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_384 (coe v0)
-- _.PParams.b
d_b_518 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_b_518 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_354 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_520 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMaxTermLength_520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_396 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_522 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMinSize_522 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_394 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_524 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_coinsPerUTxOByte_524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_364 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_526 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_collateralPercentage_526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_386
      (coe v0)
-- _.PParams.costmdls
d_costmdls_528 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_costmdls_528 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_388 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_530 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_drepActivity_530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_404 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_532 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_drepDeposit_532 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_402 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_534 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200
d_drepThresholds_534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_536 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionDeposit_536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_400 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_538 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionLifetime_538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_398 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_540 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_keyDeposit_540 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_356 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_542 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxBlockExUnits_542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_344 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_544 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxBlockSize_544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_336 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_546 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxCollateralInputs_546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_348
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_548 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxHeaderSize_548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_340 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_550 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerBlock_550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_372
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_552 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerTx_552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_370
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_554 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxTxExUnits_554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_342 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_556 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxTxSize_556 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_338 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_558 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxValSize_558 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_346 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_560 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_368
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_562 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_minUTxOValue_562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_378 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_564 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_360 (coe v0)
-- _.PParams.nopt
d_nopt_566 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_nopt_566 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_382 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_568 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_poolDeposit_568 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_358 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_570 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242
d_poolThresholds_570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_390 (coe v0)
-- _.PParams.prices
d_prices_572 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_prices_572 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_366 (coe v0)
-- _.PParams.pv
d_pv_574 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_574 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_350 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_576 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_376
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_578 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_refScriptCostStride_578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_374
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_580 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_580 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_362 (coe v0)
-- _.RwdAddr.net
d_net_708 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_708 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- _.RwdAddr.stake
d_stake_710 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_710 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
-- Ledger.Conway.Enact._.GovAction
d_GovAction_748 a0 = ()
-- Ledger.Conway.Enact._.GovActionID
d_GovActionID_752 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  ()
d_GovActionID_752 = erased
-- Ledger.Conway.Enact._.GovActionType
d_GovActionType_756 a0 = ()
-- Ledger.Conway.Enact._.HashProtected
d_HashProtected_772 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  () -> ()
d_HashProtected_772 = erased
-- Ledger.Conway.Enact._.NeedsHash
d_NeedsHash_776 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  ()
d_NeedsHash_776 = erased
-- Ledger.Conway.Enact._.GovAction.gaData
d_gaData_826 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  AgdaAny
d_gaData_826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_786 (coe v0)
-- Ledger.Conway.Enact._.GovAction.gaType
d_gaType_828 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760
d_gaType_828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_784 (coe v0)
-- Ledger.Conway.Enact.EnactEnv
d_EnactEnv_906 a0 = ()
data T_EnactEnv_906
  = C_EnactEnv'46'constructor_2291 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                   Integer AgdaAny
-- Ledger.Conway.Enact.EnactEnv.gid
d_gid_914 ::
  T_EnactEnv_906 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_914 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_2291 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.EnactEnv.treasury
d_treasury_916 :: T_EnactEnv_906 -> Integer
d_treasury_916 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_2291 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.EnactEnv.epoch
d_epoch_918 :: T_EnactEnv_906 -> AgdaAny
d_epoch_918 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_2291 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.EnactState
d_EnactState_920 a0 = ()
data T_EnactState_920
  = C_EnactState'46'constructor_2835 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Enact.EnactState.cc
d_cc_932 ::
  T_EnactState_920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_932 v0
  = case coe v0 of
      C_EnactState'46'constructor_2835 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.EnactState.constitution
d_constitution_934 ::
  T_EnactState_920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_934 v0
  = case coe v0 of
      C_EnactState'46'constructor_2835 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.EnactState.pv
d_pv_936 ::
  T_EnactState_920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_936 v0
  = case coe v0 of
      C_EnactState'46'constructor_2835 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.EnactState.pparams
d_pparams_938 ::
  T_EnactState_920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_938 v0
  = case coe v0 of
      C_EnactState'46'constructor_2835 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.EnactState.withdrawals
d_withdrawals_940 ::
  T_EnactState_920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_940 v0
  = case coe v0 of
      C_EnactState'46'constructor_2835 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.HasEnactState
d_HasEnactState_946 a0 a1 a2 = ()
newtype T_HasEnactState_946
  = C_HasEnactState'46'constructor_2977 (AgdaAny -> T_EnactState_920)
-- Ledger.Conway.Enact.HasEnactState.EnactStateOf
d_EnactStateOf_954 ::
  T_HasEnactState_946 -> AgdaAny -> T_EnactState_920
d_EnactStateOf_954 v0
  = case coe v0 of
      C_HasEnactState'46'constructor_2977 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact._.EnactStateOf
d_EnactStateOf_958 ::
  T_HasEnactState_946 -> AgdaAny -> T_EnactState_920
d_EnactStateOf_958 v0 = coe d_EnactStateOf_954 (coe v0)
-- Ledger.Conway.Enact.HasPParams-EnactState
d_HasPParams'45'EnactState_960 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410
d_HasPParams'45'EnactState_960 ~v0
  = du_HasPParams'45'EnactState_960
du_HasPParams'45'EnactState_960 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410
du_HasPParams'45'EnactState_960
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.C_HasPParams'46'constructor_9199
      (coe
         (\ v0 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe d_pparams_938 (coe v0))))
-- Ledger.Conway.Enact.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_962 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_446
d_HasccMaxTermLength'45'EnactState_962 ~v0
  = du_HasccMaxTermLength'45'EnactState_962
du_HasccMaxTermLength'45'EnactState_962 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_446
du_HasccMaxTermLength'45'EnactState_962
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.C_HasccMaxTermLength'46'constructor_9463
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_396
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe d_pparams_938 (coe v0)))))
-- Ledger.Conway.Enact.HasCast-EnactEnv
d_HasCast'45'EnactEnv_964 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_964 ~v0 = du_HasCast'45'EnactEnv_964
du_HasCast'45'EnactEnv_964 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EnactEnv_964
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
                                 (906 :: Integer) (3794707760481362711 :: Integer)
                                 "Ledger.Conway.Enact.EnactEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (752 :: Integer) (3794707760481362711 :: Integer)
                                 "Ledger.Conway.Enact._.GovActionID"
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
                                    (906 :: Integer) (3794707760481362711 :: Integer)
                                    "Ledger.Conway.Enact.EnactEnv"
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
                                       (906 :: Integer) (3794707760481362711 :: Integer)
                                       "Ledger.Conway.Enact.EnactEnv"
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
                                       (110 :: Integer) (3794707760481362711 :: Integer) "_.Epoch"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_EnactEnv'46'constructor_2291))
-- Ledger.Conway.Enact.ccCreds
d_ccCreds_966 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_ccCreds_966 ~v0 v1 = du_ccCreds_966 v1
du_ccCreds_966 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
du_ccCreds_966 v0
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
-- Ledger.Conway.Enact.getHash
d_getHash_972 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_972 ~v0 v1 v2 = du_getHash_972 v1 v2
du_getHash_972 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHash_972 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_762
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_764
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_766
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_768
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_770
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_772
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_774
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.getHashES
d_getHashES_984 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  T_EnactState_920 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_984 ~v0 v1 v2 = du_getHashES_984 v1 v2
du_getHashES_984 ::
  T_EnactState_920 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHashES_984 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_762
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_932 (coe v0)))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_764
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_932 (coe v0)))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_766
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_constitution_934 (coe v0)))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_768
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_pv_936 (coe v0)))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_770
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_pparams_938 (coe v0)))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_772
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_774
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1000 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'ENACT'10632'__1000
  = C_Enact'45'NoConf_1028 |
    C_Enact'45'UpdComm_1036 (AgdaAny ->
                             MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                             MAlonzo.Code.Data.Sum.Base.T__'8846'__30) |
    C_Enact'45'NewConst_1038 | C_Enact'45'HF_1040 |
    C_Enact'45'PParams_1042 |
    C_Enact'45'Wdrl_1048 MAlonzo.Code.Data.Nat.Base.T__'8804'__22 |
    C_Enact'45'Info_1050
