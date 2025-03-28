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

module MAlonzo.Code.Ledger.Enact where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.To
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _._+ᵉ_
d__'43''7497'__8 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__8 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_588
         (coe v0))
-- _.Credential
d_Credential_26 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_54 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_54 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_54 v2 v3
du_DecEq'45'Credential_54 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_54 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_76 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_76 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_76 v1 v2 v3
du_DecEq'45'RwdAddr_76 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_76 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194 (coe v0)
      (coe v1) (coe v2)
-- _.Epoch
d_Epoch_104 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_104 = erased
-- _.PParams
d_PParams_148 a0 = ()
-- _.UpdateT
d_UpdateT_152 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_UpdateT_152 = erased
-- _.ProtVer
d_ProtVer_164 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_ProtVer_164 = erased
-- _.RwdAddr
d_RwdAddr_170 a0 a1 a2 a3 = ()
-- _.ScriptHash
d_ScriptHash_184 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_ScriptHash_184 = erased
-- _.applyUpdate
d_applyUpdate_260 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_260 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1414
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1448
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1044 (coe v0)))
-- _.preoEpoch
d_preoEpoch_334 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_334 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_588
         (coe v0))
-- _.PParams.Emax
d_Emax_448 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_448 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_360 (coe v0)
-- _.PParams.a
d_a_450 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_450 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_332 (coe v0)
-- _.PParams.a0
d_a0_452 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_452 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_364 (coe v0)
-- _.PParams.b
d_b_454 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_454 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_334 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_456 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_456 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_376 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_458 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_458 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_374 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_460 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_460 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_344 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_462 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_462 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_366 (coe v0)
-- _.PParams.costmdls
d_costmdls_464 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_464 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_368 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_466 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_466 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_384 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_468 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_468 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_382 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_470 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_470 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_372 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_472 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_472 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_380 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_474 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_474 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_378 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_476 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_476 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_336 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_478 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_478 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_324 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_480 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_480 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_316 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_482 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_482 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_328 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_484 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_484 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_320 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_486 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_486 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_352 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_488 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_488 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_350 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_490 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_490 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_322 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_492 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_492 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_318 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_494 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_494 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_326 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_496 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_496 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_348
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_498 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_498 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_358 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_500 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Refinement.T_Refinement_24
d_monetaryExpansion_500 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_340 (coe v0)
-- _.PParams.nopt
d_nopt_502 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_502 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_362 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_504 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_504 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_338 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_506 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_506 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_370 (coe v0)
-- _.PParams.prices
d_prices_508 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_508 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_346 (coe v0)
-- _.PParams.pv
d_pv_510 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_510 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_330 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_512 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_512 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_356 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_514 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_514 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_354 (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_516 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Refinement.T_Refinement_24
d_treasuryCut_516 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_342 (coe v0)
-- _.RwdAddr.net
d_net_644 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_644 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_646 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_646 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Enact._.GovAction
d_GovAction_684 a0 = ()
-- Ledger.Enact._.GovActionID
d_GovActionID_688 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovActionID_688 = erased
-- Ledger.Enact._.GovActionType
d_GovActionType_692 a0 = ()
-- Ledger.Enact._.HashProtected
d_HashProtected_700 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> () -> ()
d_HashProtected_700 = erased
-- Ledger.Enact._.NeedsHash
d_NeedsHash_704 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_696 -> ()
d_NeedsHash_704 = erased
-- Ledger.Enact._.GovAction.gaData
d_gaData_756 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_714 -> AgdaAny
d_gaData_756 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gaData_722 (coe v0)
-- Ledger.Enact._.GovAction.gaType
d_gaType_758 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_714 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_696
d_gaType_758 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gaType_720 (coe v0)
-- Ledger.Enact.EnactEnv
d_EnactEnv_836 a0 = ()
data T_EnactEnv_836
  = C_EnactEnv'46'constructor_1719 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                   Integer AgdaAny
-- Ledger.Enact.EnactEnv.gid
d_gid_844 ::
  T_EnactEnv_836 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_844 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_1719 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactEnv.treasury
d_treasury_846 :: T_EnactEnv_836 -> Integer
d_treasury_846 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_1719 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactEnv.epoch
d_epoch_848 :: T_EnactEnv_836 -> AgdaAny
d_epoch_848 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_1719 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState
d_EnactState_850 a0 = ()
data T_EnactState_850
  = C_EnactState'46'constructor_2263 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Enact.EnactState.cc
d_cc_862 ::
  T_EnactState_850 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_862 v0
  = case coe v0 of
      C_EnactState'46'constructor_2263 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState.constitution
d_constitution_864 ::
  T_EnactState_850 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_864 v0
  = case coe v0 of
      C_EnactState'46'constructor_2263 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState.pv
d_pv_866 ::
  T_EnactState_850 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_866 v0
  = case coe v0 of
      C_EnactState'46'constructor_2263 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState.pparams
d_pparams_868 ::
  T_EnactState_850 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_868 v0
  = case coe v0 of
      C_EnactState'46'constructor_2263 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState.withdrawals
d_withdrawals_870 ::
  T_EnactState_850 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_870 v0
  = case coe v0 of
      C_EnactState'46'constructor_2263 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.To-EnactEnv
d_To'45'EnactEnv_872 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'EnactEnv_872 ~v0 = du_To'45'EnactEnv_872
du_To'45'EnactEnv_872 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'EnactEnv_872
  = coe
      MAlonzo.Code.Class.To.C_To'46'constructor_9
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.To.d_getCodPi_22
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
                                 (836 :: Integer) (443657187968658043 :: Integer)
                                 "Ledger.Enact.EnactEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (688 :: Integer) (443657187968658043 :: Integer)
                                 "Ledger.Enact._.GovActionID"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.To.d_getCodPi_22
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
                                    (836 :: Integer) (443657187968658043 :: Integer)
                                    "Ledger.Enact.EnactEnv"
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
                        MAlonzo.Code.Class.To.d_getCodPi_22
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
                                       (836 :: Integer) (443657187968658043 :: Integer)
                                       "Ledger.Enact.EnactEnv"
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
                                       (104 :: Integer) (443657187968658043 :: Integer) "_.Epoch"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_EnactEnv'46'constructor_1719))
-- Ledger.Enact.ccCreds
d_ccCreds_874 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_874 ~v0 v1 = du_ccCreds_874 v1
du_ccCreds_874 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_ccCreds_874 v0
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
-- Ledger.Enact.getHash
d_getHash_880 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_696 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_880 ~v0 v1 v2 = du_getHash_880 v1 v2
du_getHash_880 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_696 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHash_880 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_698
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_700
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_702
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_704
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_706
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_708
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_710
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.getHashES
d_getHashES_892 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_EnactState_850 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_696 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_892 ~v0 v1 v2 = du_getHashES_892 v1 v2
du_getHashES_892 ::
  T_EnactState_850 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_696 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHashES_892 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_698
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_862 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_700
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_862 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_702
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_constitution_864 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_704
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_pv_866 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_706
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_pparams_868 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_708
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_710
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__908 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'ENACT'10632'__908
  = C_Enact'45'NoConf_936 |
    C_Enact'45'UpdComm_944 (AgdaAny ->
                            MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                            MAlonzo.Code.Data.Sum.Base.T__'8846'__30) |
    C_Enact'45'NewConst_946 | C_Enact'45'HF_948 |
    C_Enact'45'PParams_950 |
    C_Enact'45'Wdrl_956 MAlonzo.Code.Data.Nat.Base.T__'8804'__22 |
    C_Enact'45'Info_958
