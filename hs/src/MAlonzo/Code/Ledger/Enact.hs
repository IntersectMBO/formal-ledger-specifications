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
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.HasCast.Base
import qualified MAlonzo.Code.Class.HasCast.Derive
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
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
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_622
         (coe v0))
-- _.Credential
d_Credential_28 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_58 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_58 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_58 v2 v3
du_DecEq'45'Credential_58 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_58 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186 (coe v0)
      (coe v1)
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_80 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_80 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_80 v1 v2 v3
du_DecEq'45'RwdAddr_80 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_80 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_238 (coe v0)
      (coe v1) (coe v2)
-- _.Epoch
d_Epoch_108 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_108 = erased
-- _.HasPParams
d_HasPParams_132 a0 a1 a2 = ()
-- _.HasccMaxTermLength
d_HasccMaxTermLength_134 a0 a1 a2 = ()
-- _.PParams
d_PParams_180 a0 = ()
-- _.PParamsOf
d_PParamsOf_184 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_184 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- _.UpdateT
d_UpdateT_186 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_UpdateT_186 = erased
-- _.ProtVer
d_ProtVer_198 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_ProtVer_198 = erased
-- _.RwdAddr
d_RwdAddr_204 a0 a1 a2 a3 = ()
-- _.ScriptHash
d_ScriptHash_218 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_ScriptHash_218 = erased
-- _.applyUpdate
d_applyUpdate_292 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_applyUpdate_292 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1488
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1522
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1112 (coe v0)))
-- _.ccMaxTermLengthOf
d_ccMaxTermLengthOf_298 ::
  MAlonzo.Code.Ledger.PParams.T_HasccMaxTermLength_444 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_298 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLengthOf_452 (coe v0)
-- _.preoEpoch
d_preoEpoch_370 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_370 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_622
         (coe v0))
-- _.HasPParams.PParamsOf
d_PParamsOf_482 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_482 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- _.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_486 ::
  MAlonzo.Code.Ledger.PParams.T_HasccMaxTermLength_444 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_486 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLengthOf_452 (coe v0)
-- _.PParams.Emax
d_Emax_510 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_Emax_510 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_378 (coe v0)
-- _.PParams.a
d_a_512 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_a_512 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_350 (coe v0)
-- _.PParams.a0
d_a0_514 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_514 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_382 (coe v0)
-- _.PParams.b
d_b_516 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_b_516 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_352 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_518 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMaxTermLength_518 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_394 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_520 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMinSize_520 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_392 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_522 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_coinsPerUTxOByte_522 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_524 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_collateralPercentage_524 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384 (coe v0)
-- _.PParams.costmdls
d_costmdls_526 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_costmdls_526 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_386 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_528 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_drepActivity_528 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_402 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_530 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_drepDeposit_530 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_400 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_532 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_532 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_390 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_534 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionDeposit_534 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_536 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionLifetime_536 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_396 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_538 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_keyDeposit_538 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_540 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxBlockExUnits_540 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_342 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_542 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxBlockSize_542 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_334 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_544 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxCollateralInputs_544 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_346 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_546 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxHeaderSize_546 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_338 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_548 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerBlock_548 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_370 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_550 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerTx_550 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_552 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxTxExUnits_552 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_340 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_554 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxTxSize_554 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_336 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_556 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxValSize_556 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_344 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_558 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_558 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_366
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_560 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_minUTxOValue_560 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_376 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_562 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_562 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_358 (coe v0)
-- _.PParams.nopt
d_nopt_564 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_nopt_564 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_380 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_566 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_poolDeposit_566 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_568 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_568 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_388 (coe v0)
-- _.PParams.prices
d_prices_570 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_prices_570 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_364 (coe v0)
-- _.PParams.pv
d_pv_572 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_572 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_348 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_574 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_574 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_374 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_576 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_refScriptCostStride_576 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_372 (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_578 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_578 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_360 (coe v0)
-- _.RwdAddr.net
d_net_706 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_94 -> AgdaAny
d_net_706 v0 = coe MAlonzo.Code.Ledger.Address.d_net_100 (coe v0)
-- _.RwdAddr.stake
d_stake_708 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_708 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_102 (coe v0)
-- Ledger.Enact._.GovAction
d_GovAction_746 a0 = ()
-- Ledger.Enact._.GovActionID
d_GovActionID_750 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovActionID_750 = erased
-- Ledger.Enact._.GovActionType
d_GovActionType_754 a0 = ()
-- Ledger.Enact._.HashProtected
d_HashProtected_770 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> () -> ()
d_HashProtected_770 = erased
-- Ledger.Enact._.NeedsHash
d_NeedsHash_774 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758 -> ()
d_NeedsHash_774 = erased
-- Ledger.Enact._.GovAction.gaData
d_gaData_824 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 -> AgdaAny
d_gaData_824 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gaData_784 (coe v0)
-- Ledger.Enact._.GovAction.gaType
d_gaType_826 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758
d_gaType_826 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gaType_782 (coe v0)
-- Ledger.Enact.EnactEnv
d_EnactEnv_904 a0 = ()
data T_EnactEnv_904
  = C_EnactEnv'46'constructor_2291 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                   Integer AgdaAny
-- Ledger.Enact.EnactEnv.gid
d_gid_912 ::
  T_EnactEnv_904 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_912 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_2291 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactEnv.treasury
d_treasury_914 :: T_EnactEnv_904 -> Integer
d_treasury_914 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_2291 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactEnv.epoch
d_epoch_916 :: T_EnactEnv_904 -> AgdaAny
d_epoch_916 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_2291 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState
d_EnactState_918 a0 = ()
data T_EnactState_918
  = C_EnactState'46'constructor_2835 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Enact.EnactState.cc
d_cc_930 ::
  T_EnactState_918 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_930 v0
  = case coe v0 of
      C_EnactState'46'constructor_2835 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState.constitution
d_constitution_932 ::
  T_EnactState_918 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_932 v0
  = case coe v0 of
      C_EnactState'46'constructor_2835 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState.pv
d_pv_934 ::
  T_EnactState_918 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_934 v0
  = case coe v0 of
      C_EnactState'46'constructor_2835 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState.pparams
d_pparams_936 ::
  T_EnactState_918 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_936 v0
  = case coe v0 of
      C_EnactState'46'constructor_2835 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState.withdrawals
d_withdrawals_938 ::
  T_EnactState_918 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_938 v0
  = case coe v0 of
      C_EnactState'46'constructor_2835 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.HasEnactState
d_HasEnactState_944 a0 a1 a2 = ()
newtype T_HasEnactState_944
  = C_HasEnactState'46'constructor_2977 (AgdaAny -> T_EnactState_918)
-- Ledger.Enact.HasEnactState.EnactStateOf
d_EnactStateOf_952 ::
  T_HasEnactState_944 -> AgdaAny -> T_EnactState_918
d_EnactStateOf_952 v0
  = case coe v0 of
      C_HasEnactState'46'constructor_2977 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact._.EnactStateOf
d_EnactStateOf_956 ::
  T_HasEnactState_944 -> AgdaAny -> T_EnactState_918
d_EnactStateOf_956 v0 = coe d_EnactStateOf_952 (coe v0)
-- Ledger.Enact.HasPParams-EnactState
d_HasPParams'45'EnactState_958 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408
d_HasPParams'45'EnactState_958 ~v0
  = du_HasPParams'45'EnactState_958
du_HasPParams'45'EnactState_958 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408
du_HasPParams'45'EnactState_958
  = coe
      MAlonzo.Code.Ledger.PParams.C_HasPParams'46'constructor_9199
      (coe
         (\ v0 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe d_pparams_936 (coe v0))))
-- Ledger.Enact.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_960 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_HasccMaxTermLength_444
d_HasccMaxTermLength'45'EnactState_960 ~v0
  = du_HasccMaxTermLength'45'EnactState_960
du_HasccMaxTermLength'45'EnactState_960 ::
  MAlonzo.Code.Ledger.PParams.T_HasccMaxTermLength_444
du_HasccMaxTermLength'45'EnactState_960
  = coe
      MAlonzo.Code.Ledger.PParams.C_HasccMaxTermLength'46'constructor_9463
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_394
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe d_pparams_936 (coe v0)))))
-- Ledger.Enact.HasCast-EnactEnv
d_HasCast'45'EnactEnv_962 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'EnactEnv_962 ~v0 = du_HasCast'45'EnactEnv_962
du_HasCast'45'EnactEnv_962 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'EnactEnv_962
  = coe
      MAlonzo.Code.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                 (904 :: Integer) (443657187968658043 :: Integer)
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
                                 (750 :: Integer) (443657187968658043 :: Integer)
                                 "Ledger.Enact._.GovActionID"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                    (904 :: Integer) (443657187968658043 :: Integer)
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
                        MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                       (904 :: Integer) (443657187968658043 :: Integer)
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
                                       (108 :: Integer) (443657187968658043 :: Integer) "_.Epoch"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_EnactEnv'46'constructor_2291))
-- Ledger.Enact.ccCreds
d_ccCreds_964 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_964 ~v0 v1 = du_ccCreds_964 v1
du_ccCreds_964 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_ccCreds_964 v0
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
d_getHash_970 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_970 ~v0 v1 v2 = du_getHash_970 v1 v2
du_getHash_970 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHash_970 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_760
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_762
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_764
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_766
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_768
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_770
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_772
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.getHashES
d_getHashES_982 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_EnactState_918 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_982 ~v0 v1 v2 = du_getHashES_982 v1 v2
du_getHashES_982 ::
  T_EnactState_918 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHashES_982 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_760
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_930 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_762
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_930 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_764
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_constitution_932 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_766
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_pv_934 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_768
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_pparams_936 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_770
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_772
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__998 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'ENACT'10632'__998
  = C_Enact'45'NoConf_1026 |
    C_Enact'45'UpdComm_1034 (AgdaAny ->
                             MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                             MAlonzo.Code.Data.Sum.Base.T__'8846'__30) |
    C_Enact'45'NewConst_1036 | C_Enact'45'HF_1038 |
    C_Enact'45'PParams_1040 |
    C_Enact'45'Wdrl_1046 MAlonzo.Code.Data.Nat.Base.T__'8804'__22 |
    C_Enact'45'Info_1048
