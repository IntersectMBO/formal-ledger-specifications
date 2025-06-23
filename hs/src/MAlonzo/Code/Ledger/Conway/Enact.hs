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
         MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_epochStructure_630
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
d_PParams_184 a0 = ()
-- _.PParamsOf
d_PParamsOf_188 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_428 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_PParamsOf_188 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_436 (coe v0)
-- _.UpdateT
d_UpdateT_190 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  ()
d_UpdateT_190 = erased
-- _.ProtVer
d_ProtVer_204 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  ()
d_ProtVer_204 = erased
-- _.RwdAddr
d_RwdAddr_210 a0 a1 a2 a3 = ()
-- _.ScriptHash
d_ScriptHash_224 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  ()
d_ScriptHash_224 = erased
-- _.applyUpdate
d_applyUpdate_298 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_applyUpdate_298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1500
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534
         (coe
            MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_govParams_1126
            (coe v0)))
-- _.ccMaxTermLengthOf
d_ccMaxTermLengthOf_304 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_464 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_472 (coe v0)
-- _.preoEpoch
d_preoEpoch_376 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_preoEpoch_88
      (coe
         MAlonzo.Code.Ledger.Conway.Types.GovStructure.d_epochStructure_630
         (coe v0))
-- _.HasPParams.PParamsOf
d_PParamsOf_488 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_428 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_PParamsOf_488 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_436 (coe v0)
-- _.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_492 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_464 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_472 (coe v0)
-- _.PParams.Emax
d_Emax_520 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_Emax_520 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_398 (coe v0)
-- _.PParams.a
d_a_522 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_a_522 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_370 (coe v0)
-- _.PParams.a0
d_a0_524 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_524 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_402 (coe v0)
-- _.PParams.b
d_b_526 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_b_526 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_372 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_528 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_ccMaxTermLength_528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_414 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_530 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_ccMinSize_530 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_412 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_532 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_coinsPerUTxOByte_532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_382 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_534 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_collateralPercentage_534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_404
      (coe v0)
-- _.PParams.costmdls
d_costmdls_536 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_costmdls_536 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_406 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_538 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_drepActivity_538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_422 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_540 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_drepDeposit_540 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_420 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_542 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218
d_drepThresholds_542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_410 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_544 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_govActionDeposit_544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_418 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_546 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_govActionLifetime_546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_416 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_548 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_keyDeposit_548 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_374 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_550 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_maxBlockExUnits_550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_362 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_552 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxBlockSize_552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_354 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_554 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxCollateralInputs_554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_366
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_556 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxHeaderSize_556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_358 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_558 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxRefScriptSizePerBlock_558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_390
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_560 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxRefScriptSizePerTx_560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_388
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_562 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_maxTxExUnits_562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_360 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_564 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxTxSize_564 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_356 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_566 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxValSize_566 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_364 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_568 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_386
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_570 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_minUTxOValue_570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_396 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_572 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_378 (coe v0)
-- _.PParams.nopt
d_nopt_574 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_nopt_574 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_400 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_576 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_poolDeposit_576 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_376 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_578 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260
d_poolThresholds_578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_408 (coe v0)
-- _.PParams.prices
d_prices_580 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_prices_580 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_384 (coe v0)
-- _.PParams.pv
d_pv_582 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_582 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_368 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_584 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_394
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_586 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_392
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_588 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_588 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_380 (coe v0)
-- _.RwdAddr.net
d_net_716 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_716 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- _.RwdAddr.stake
d_stake_718 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_718 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
-- Ledger.Conway.Enact._.GovAction
d_GovAction_756 a0 = ()
-- Ledger.Conway.Enact._.GovActionID
d_GovActionID_760 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  ()
d_GovActionID_760 = erased
-- Ledger.Conway.Enact._.GovActionType
d_GovActionType_764 a0 = ()
-- Ledger.Conway.Enact._.HashProtected
d_HashProtected_780 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  () -> ()
d_HashProtected_780 = erased
-- Ledger.Conway.Enact._.NeedsHash
d_NeedsHash_784 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_768 ->
  ()
d_NeedsHash_784 = erased
-- Ledger.Conway.Enact._.GovAction.gaData
d_gaData_834 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_786 ->
  AgdaAny
d_gaData_834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_794 (coe v0)
-- Ledger.Conway.Enact._.GovAction.gaType
d_gaType_836 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_786 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_768
d_gaType_836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_792 (coe v0)
-- Ledger.Conway.Enact.EnactEnv
d_EnactEnv_914 a0 = ()
data T_EnactEnv_914
  = C_EnactEnv'46'constructor_2323 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                   Integer AgdaAny
-- Ledger.Conway.Enact.EnactEnv.gid
d_gid_922 ::
  T_EnactEnv_914 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_922 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_2323 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.EnactEnv.treasury
d_treasury_924 :: T_EnactEnv_914 -> Integer
d_treasury_924 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_2323 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.EnactEnv.epoch
d_epoch_926 :: T_EnactEnv_914 -> AgdaAny
d_epoch_926 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_2323 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.EnactState
d_EnactState_928 a0 = ()
data T_EnactState_928
  = C_EnactState'46'constructor_2867 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Enact.EnactState.cc
d_cc_940 ::
  T_EnactState_928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_940 v0
  = case coe v0 of
      C_EnactState'46'constructor_2867 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.EnactState.constitution
d_constitution_942 ::
  T_EnactState_928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_942 v0
  = case coe v0 of
      C_EnactState'46'constructor_2867 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.EnactState.pv
d_pv_944 ::
  T_EnactState_928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_944 v0
  = case coe v0 of
      C_EnactState'46'constructor_2867 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.EnactState.pparams
d_pparams_946 ::
  T_EnactState_928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_946 v0
  = case coe v0 of
      C_EnactState'46'constructor_2867 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.EnactState.withdrawals
d_withdrawals_948 ::
  T_EnactState_928 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_948 v0
  = case coe v0 of
      C_EnactState'46'constructor_2867 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.HasEnactState
d_HasEnactState_954 a0 a1 a2 = ()
newtype T_HasEnactState_954
  = C_HasEnactState'46'constructor_3009 (AgdaAny -> T_EnactState_928)
-- Ledger.Conway.Enact.HasEnactState.EnactStateOf
d_EnactStateOf_962 ::
  T_HasEnactState_954 -> AgdaAny -> T_EnactState_928
d_EnactStateOf_962 v0
  = case coe v0 of
      C_HasEnactState'46'constructor_3009 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact._.EnactStateOf
d_EnactStateOf_966 ::
  T_HasEnactState_954 -> AgdaAny -> T_EnactState_928
d_EnactStateOf_966 v0 = coe d_EnactStateOf_962 (coe v0)
-- Ledger.Conway.Enact.HasPParams-EnactState
d_HasPParams'45'EnactState_968 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_428
d_HasPParams'45'EnactState_968 ~v0
  = du_HasPParams'45'EnactState_968
du_HasPParams'45'EnactState_968 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_428
du_HasPParams'45'EnactState_968
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.C_HasPParams'46'constructor_9331
      (coe
         (\ v0 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe d_pparams_946 (coe v0))))
-- Ledger.Conway.Enact.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_970 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_464
d_HasccMaxTermLength'45'EnactState_970 ~v0
  = du_HasccMaxTermLength'45'EnactState_970
du_HasccMaxTermLength'45'EnactState_970 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_464
du_HasccMaxTermLength'45'EnactState_970
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.C_HasccMaxTermLength'46'constructor_9595
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_414
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe d_pparams_946 (coe v0)))))
-- Ledger.Conway.Enact.HasCast-EnactEnv
d_HasCast'45'EnactEnv_972 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_972 ~v0 = du_HasCast'45'EnactEnv_972
du_HasCast'45'EnactEnv_972 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EnactEnv_972
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
                                 (914 :: Integer) (3794707760481362711 :: Integer)
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
                                 (760 :: Integer) (3794707760481362711 :: Integer)
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
                                    (914 :: Integer) (3794707760481362711 :: Integer)
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
                                       (914 :: Integer) (3794707760481362711 :: Integer)
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
         (coe C_EnactEnv'46'constructor_2323))
-- Ledger.Conway.Enact.ccCreds
d_ccCreds_974 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_ccCreds_974 ~v0 v1 = du_ccCreds_974 v1
du_ccCreds_974 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
du_ccCreds_974 v0
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
d_getHash_980 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_768 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_980 ~v0 v1 v2 = du_getHash_980 v1 v2
du_getHash_980 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_768 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHash_980 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_770
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_772
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_774
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_776
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_778
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_780
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_782
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact.getHashES
d_getHashES_992 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8 ->
  T_EnactState_928 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_768 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_992 ~v0 v1 v2 = du_getHashES_992 v1 v2
du_getHashES_992 ::
  T_EnactState_928 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_768 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHashES_992 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_770
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_940 (coe v0)))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_772
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_940 (coe v0)))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_774
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_constitution_942 (coe v0)))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_776
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_pv_944 (coe v0)))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_778
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_pparams_946 (coe v0)))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_780
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_782
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Enact._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1008 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'ENACT'10632'__1008
  = C_Enact'45'NoConf_1036 |
    C_Enact'45'UpdComm_1044 (AgdaAny ->
                             MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                             MAlonzo.Code.Data.Sum.Base.T__'8846'__30) |
    C_Enact'45'NewConst_1046 | C_Enact'45'HF_1048 |
    C_Enact'45'PParams_1050 |
    C_Enact'45'Wdrl_1056 MAlonzo.Code.Data.Nat.Base.T__'8804'__22 |
    C_Enact'45'Info_1058
