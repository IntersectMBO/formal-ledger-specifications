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

module MAlonzo.Code.Ledger.Conway.Ratify where

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
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.All
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Enact
import qualified MAlonzo.Code.Ledger.Conway.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Credential
d_Credential_46 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_80 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_80 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_90 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_90 ~v0 = du_DecEq'45'GovRole_90
du_DecEq'45'GovRole_90 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_90
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.Actions.du_DecEq'45'GovRole_906
-- _.Epoch
d_Epoch_144 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Epoch_144 = erased
-- _.GovAction
d_GovAction_150 a0 = ()
-- _.GovActionID
d_GovActionID_154 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_GovActionID_154 = erased
-- _.GovActionState
d_GovActionState_156 a0 = ()
-- _.GovActionType
d_GovActionType_158 a0 = ()
-- _.GovRole
d_GovRole_164 a0 = ()
-- _.THash
d_THash_252 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_THash_252 = erased
-- _.NeedsHash
d_NeedsHash_264 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 -> ()
d_NeedsHash_264 = erased
-- _.PParamGroup
d_PParamGroup_290 a0 = ()
-- _.PParams
d_PParams_292 a0 = ()
-- _.UpdateT
d_UpdateT_298 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_UpdateT_298 = erased
-- _.VDeleg
d_VDeleg_434 a0 = ()
-- _.preoEpoch
d_preoEpoch_584 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_preoEpoch_88
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
         (coe v0))
-- _.GovAction.gaData
d_gaData_718 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovAction_802 -> AgdaAny
d_gaData_718 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_gaData_810 (coe v0)
-- _.GovAction.gaType
d_gaType_720 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovAction_802 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784
d_gaType_720 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_gaType_808 (coe v0)
-- _.GovActionState.action
d_action_724 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovAction_802
d_action_724 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_action_900 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_726 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  AgdaAny
d_expiresIn_726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.Actions.d_expiresIn_898 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_728 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  AgdaAny
d_prevAction_728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.Actions.d_prevAction_902 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_730 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.Actions.d_returnAddr_896 (coe v0)
-- _.GovActionState.votes
d_votes_732 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_732 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_votes_894 (coe v0)
-- _.GovActions.GovAction
d_GovAction_768 a0 = ()
-- _.GovActions.GovActionState
d_GovActionState_774 a0 = ()
-- _.GovActions.GovActionType
d_GovActionType_776 a0 = ()
-- _.GovActions.GovRole
d_GovRole_780 a0 = ()
-- _.GovActions.VDeleg
d_VDeleg_810 a0 = ()
-- _.PParams.Emax
d_Emax_1040 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_Emax_1040 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_412 (coe v0)
-- _.PParams.a
d_a_1042 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_a_1042 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_384 (coe v0)
-- _.PParams.a0
d_a0_1044 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1044 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_416 (coe v0)
-- _.PParams.b
d_b_1046 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_b_1046 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_386 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1048 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_ccMaxTermLength_1048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_428 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1050 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_ccMinSize_1050 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_426 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1052 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_coinsPerUTxOByte_1052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_396 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1054 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_collateralPercentage_1054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_418
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1056 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_costmdls_1056 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_420 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1058 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_drepActivity_1058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_436 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1060 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_drepDeposit_1060 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_434 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1062 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232
d_drepThresholds_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1064 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_govActionDeposit_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_432 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_govActionLifetime_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_430 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1068 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_keyDeposit_1068 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_388 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_maxBlockExUnits_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_376 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxBlockSize_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_368 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxCollateralInputs_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_380
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxHeaderSize_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_372 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxRefScriptSizePerBlock_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_404
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxRefScriptSizePerTx_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_402
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_maxTxExUnits_1082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_374 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxTxSize_1084 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_370 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxValSize_1086 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_378 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_400
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_minUTxOValue_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_410 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_392 (coe v0)
-- _.PParams.nopt
d_nopt_1094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_nopt_1094 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_414 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_poolDeposit_1096 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_390 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274
d_poolThresholds_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422 (coe v0)
-- _.PParams.prices
d_prices_1100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_prices_1100 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_398 (coe v0)
-- _.PParams.pv
d_pv_1102 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1102 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_382 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_408
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_406
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1108 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_394 (coe v0)
-- Ledger.Conway.Ratify._.PoolParams
d_PoolParams_1736 a0 = ()
-- Ledger.Conway.Ratify._.PoolParams.cost
d_cost_1920 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_1000 -> Integer
d_cost_1920 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_cost_1014 (coe v0)
-- Ledger.Conway.Ratify._.PoolParams.margin
d_margin_1922 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_1000 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_1922 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_margin_1016 (coe v0)
-- Ledger.Conway.Ratify._.PoolParams.owners
d_owners_1924 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_1000 -> [AgdaAny]
d_owners_1924 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_owners_1012 (coe v0)
-- Ledger.Conway.Ratify._.PoolParams.pledge
d_pledge_1926 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_1000 -> Integer
d_pledge_1926 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pledge_1018 (coe v0)
-- Ledger.Conway.Ratify._.PoolParams.rewardAccount
d_rewardAccount_1928 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_1000 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_rewardAccount_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.d_rewardAccount_1020 (coe v0)
-- Ledger.Conway.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1932 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Ratify._.EnactState
d_EnactState_1950 a0 = ()
-- Ledger.Conway.Ratify._.EnactStateOf
d_EnactStateOf_1952 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_HasEnactState_968 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942
d_EnactStateOf_1952 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_EnactStateOf_976 (coe v0)
-- Ledger.Conway.Ratify._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_1954 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_1954 ~v0 = du_HasCast'45'EnactEnv_1954
du_HasCast'45'EnactEnv_1954 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EnactEnv_1954
  = coe MAlonzo.Code.Ledger.Conway.Enact.du_HasCast'45'EnactEnv_986
-- Ledger.Conway.Ratify._.HasEnactState
d_HasEnactState_1956 a0 a1 a2 = ()
-- Ledger.Conway.Ratify._.EnactState.cc
d_cc_1994 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1994 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_954 (coe v0)
-- Ledger.Conway.Ratify._.EnactState.constitution
d_constitution_1996 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1996 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_constitution_956 (coe v0)
-- Ledger.Conway.Ratify._.EnactState.pparams
d_pparams_1998 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1998 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_960 (coe v0)
-- Ledger.Conway.Ratify._.EnactState.pv
d_pv_2000 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2000 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_pv_958 (coe v0)
-- Ledger.Conway.Ratify._.EnactState.withdrawals
d_withdrawals_2002 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2002 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_withdrawals_962 (coe v0)
-- Ledger.Conway.Ratify._.HasEnactState.EnactStateOf
d_EnactStateOf_2006 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_HasEnactState_968 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942
d_EnactStateOf_2006 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_EnactStateOf_976 (coe v0)
-- Ledger.Conway.Ratify._.Vote
d_Vote_2010 a0 = ()
-- Ledger.Conway.Ratify._∧_
d__'8743'__2020 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__2020 = erased
-- Ledger.Conway.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_2026 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 -> AgdaAny
d_'8739'_'8739'_'8739'_'8739'_2026 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_2026 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_2026 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 -> AgdaAny
du_'8739'_'8739'_'8739'_'8739'_2026 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_CC_756 -> coe v0
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_DRep_758 -> coe v1
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_SPO_760 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_2038 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 -> AgdaAny
d_'8739'_'8741'_'8739'_2038 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_2038 v2 v3
du_'8739'_'8741'_'8739'_2038 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 -> AgdaAny
du_'8739'_'8741'_'8739'_2038 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.Conway.Gov.Actions.C_CC_756 -> coe v0
                  MAlonzo.Code.Ledger.Conway.Gov.Actions.C_DRep_758 -> coe v2
                  MAlonzo.Code.Ledger.Conway.Gov.Actions.C_SPO_760 -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.vote
d_vote_2048 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_2048 ~v0 = du_vote_2048
du_vote_2048 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_2048 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Conway.Ratify.defer
d_defer_2050 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_2050 ~v0 = du_defer_2050
du_defer_2050 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_2050
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Conway.Ratify.maxThreshold
d_maxThreshold_2052 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_2052 ~v0 v1 = du_maxThreshold_2052 v1
du_maxThreshold_2052 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_2052 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230 (coe du_comb_2060)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
            v0))
-- Ledger.Conway.Ratify._.comb
d_comb_2060 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_comb_2060 ~v0 ~v1 v2 v3 = du_comb_2060 v2 v3
du_comb_2060 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_comb_2060 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Data.Rational.Base.d__'8852'__322 (coe v2) (coe v3))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v0
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.─
d_'9472'_2070 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_2070 ~v0 = du_'9472'_2070
du_'9472'_2070 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_2070 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Conway.Ratify.✓†
d_'10003''8224'_2072 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_2072 ~v0 = du_'10003''8224'_2072
du_'10003''8224'_2072 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_2072 = coe du_vote_2048 (coe du_defer_2050)
-- Ledger.Conway.Ratify.threshold
d_threshold_2074 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovAction_802 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_2074 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
              (coe
                 MAlonzo.Code.Ledger.Conway.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_814)
              v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Ledger.Conway.Gov.Actions.C_NoConfidence_786
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2026 (coe du_'9472'_2070)
                       (coe
                          du_vote_2048
                          (MAlonzo.Code.Ledger.Conway.PParams.d_P1_254
                             (coe
                                MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v1))))
                       (coe
                          du_vote_2048
                          (MAlonzo.Code.Ledger.Conway.PParams.d_Q1_286
                             (coe
                                MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422 (coe v1))))
                MAlonzo.Code.Ledger.Conway.Gov.Actions.C_UpdateCommittee_788
                  -> coe
                       du_'8739'_'8741'_'8739'_2038 (coe du_'9472'_2070)
                       (coe du_P'47'Q2a'47'b_2194 (coe v1) (coe v2))
                MAlonzo.Code.Ledger.Conway.Gov.Actions.C_NewConstitution_790
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2026 (coe du_'10003'_2192 (coe v2))
                       (coe
                          du_vote_2048
                          (MAlonzo.Code.Ledger.Conway.PParams.d_P3_260
                             (coe
                                MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v1))))
                       (coe du_'9472'_2070)
                MAlonzo.Code.Ledger.Conway.Gov.Actions.C_TriggerHF_792
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2026 (coe du_'10003'_2192 (coe v2))
                       (coe
                          du_vote_2048
                          (MAlonzo.Code.Ledger.Conway.PParams.d_P4_262
                             (coe
                                MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v1))))
                       (coe
                          du_vote_2048
                          (MAlonzo.Code.Ledger.Conway.PParams.d_Q4_292
                             (coe
                                MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422 (coe v1))))
                MAlonzo.Code.Ledger.Conway.Gov.Actions.C_ChangePParams_794
                  -> coe
                       du_'8739'_'8741'_'8739'_2038 (coe du_'10003'_2192 (coe v2))
                       (coe du_P'47'Q5_2200 (coe v0) (coe v1) (coe v6))
                MAlonzo.Code.Ledger.Conway.Gov.Actions.C_TreasuryWdrl_796
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2026 (coe du_'10003'_2192 (coe v2))
                       (coe
                          du_vote_2048
                          (MAlonzo.Code.Ledger.Conway.PParams.d_P6_272
                             (coe
                                MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v1))))
                       (coe du_'9472'_2070)
                MAlonzo.Code.Ledger.Conway.Gov.Actions.C_Info_798
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2026 (coe du_'10003''8224'_2072)
                       (coe du_'10003''8224'_2072) (coe du_'10003''8224'_2072)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Ratify._.✓
d_'10003'_2192 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovAction_802 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_2192 ~v0 ~v1 v2 ~v3 = du_'10003'_2192 v2
du_'10003'_2192 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_2192 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
      (coe du_'10003''8224'_2072) (coe v0)
-- Ledger.Conway.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_2194 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovAction_802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_2194 ~v0 v1 v2 ~v3 = du_P'47'Q2a'47'b_2194 v1 v2
du_P'47'Q2a'47'b_2194 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_2194 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2048
                (MAlonzo.Code.Ledger.Conway.PParams.d_P2a_256
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v0))))
             (coe
                du_vote_2048
                (MAlonzo.Code.Ledger.Conway.PParams.d_Q2a_288
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422 (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2048
                (MAlonzo.Code.Ledger.Conway.PParams.d_P2b_258
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v0))))
             (coe
                du_vote_2048
                (MAlonzo.Code.Ledger.Conway.PParams.d_Q2b_290
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify._.pparamThreshold
d_pparamThreshold_2198 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovAction_802 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_220 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_2198 ~v0 v1 ~v2 ~v3 v4
  = du_pparamThreshold_2198 v1 v4
du_pparamThreshold_2198 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_220 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_2198 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.PParams.C_NetworkGroup_222
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2048
                (MAlonzo.Code.Ledger.Conway.PParams.d_P5a_264
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v0))))
             (coe du_'9472'_2070)
      MAlonzo.Code.Ledger.Conway.PParams.C_EconomicGroup_224
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2048
                (MAlonzo.Code.Ledger.Conway.PParams.d_P5b_266
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v0))))
             (coe du_'9472'_2070)
      MAlonzo.Code.Ledger.Conway.PParams.C_TechnicalGroup_226
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2048
                (MAlonzo.Code.Ledger.Conway.PParams.d_P5c_268
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v0))))
             (coe du_'9472'_2070)
      MAlonzo.Code.Ledger.Conway.PParams.C_GovernanceGroup_228
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2048
                (MAlonzo.Code.Ledger.Conway.PParams.d_P5d_270
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v0))))
             (coe du_'9472'_2070)
      MAlonzo.Code.Ledger.Conway.PParams.C_SecurityGroup_230
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_2070)
             (coe
                du_vote_2048
                (MAlonzo.Code.Ledger.Conway.PParams.d_Q5_294
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify._.P/Q5
d_P'47'Q5_2200 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovAction_802 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_2200 v0 v1 ~v2 ~v3 v4 = du_P'47'Q5_2200 v0 v1 v4
du_P'47'Q5_2200 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_2200 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_2052
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_2198 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1516
               (MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_govParams_2276 (coe v0)))
               v2)))
      (coe
         du_maxThreshold_2052
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_2198 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1516
               (MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_govParams_2276 (coe v0)))
               v2)))
-- Ledger.Conway.Ratify.canVote
d_canVote_2208 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovAction_802 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 -> ()
d_canVote_2208 = erased
-- Ledger.Conway.Ratify.StakeDistrs
d_StakeDistrs_2216 a0 = ()
newtype T_StakeDistrs_2216
  = C_StakeDistrs'46'constructor_15537 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Ratify.StakeDistrs.stakeDistr
d_stakeDistr_2220 ::
  T_StakeDistrs_2216 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2220 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_15537 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyEnv
d_RatifyEnv_2222 a0 = ()
data T_RatifyEnv_2222
  = C_RatifyEnv'46'constructor_15657 T_StakeDistrs_2216 AgdaAny
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_2238 :: T_RatifyEnv_2222 -> T_StakeDistrs_2216
d_stakeDistrs_2238 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15657 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_2240 :: T_RatifyEnv_2222 -> AgdaAny
d_currentEpoch_2240 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15657 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyEnv.dreps
d_dreps_2242 ::
  T_RatifyEnv_2222 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2242 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15657 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_2244 ::
  T_RatifyEnv_2222 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2244 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15657 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyEnv.treasury
d_treasury_2246 :: T_RatifyEnv_2222 -> Integer
d_treasury_2246 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15657 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyEnv.pools
d_pools_2248 ::
  T_RatifyEnv_2222 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2248 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15657 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyEnv.delegatees
d_delegatees_2250 ::
  T_RatifyEnv_2222 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2250 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15657 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyState
d_RatifyState_2252 a0 = ()
data T_RatifyState_2252
  = C_RatifyState'46'constructor_15907 MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942
                                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Conway.Ratify.RatifyState.es
d_es_2260 ::
  T_RatifyState_2252 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942
d_es_2260 v0
  = case coe v0 of
      C_RatifyState'46'constructor_15907 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyState.removed
d_removed_2262 ::
  T_RatifyState_2252 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2262 v0
  = case coe v0 of
      C_RatifyState'46'constructor_15907 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyState.delay
d_delay_2264 :: T_RatifyState_2252 -> Bool
d_delay_2264 v0
  = case coe v0 of
      C_RatifyState'46'constructor_15907 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.HasRatifyState
d_HasRatifyState_2270 a0 a1 a2 = ()
newtype T_HasRatifyState_2270
  = C_HasRatifyState'46'constructor_15987 (AgdaAny ->
                                           T_RatifyState_2252)
-- Ledger.Conway.Ratify.HasRatifyState.RatifyStateOf
d_RatifyStateOf_2278 ::
  T_HasRatifyState_2270 -> AgdaAny -> T_RatifyState_2252
d_RatifyStateOf_2278 v0
  = case coe v0 of
      C_HasRatifyState'46'constructor_15987 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify._.RatifyStateOf
d_RatifyStateOf_2282 ::
  T_HasRatifyState_2270 -> AgdaAny -> T_RatifyState_2252
d_RatifyStateOf_2282 v0 = coe d_RatifyStateOf_2278 (coe v0)
-- Ledger.Conway.Ratify.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_2284 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_HasEnactState_968
d_HasEnactState'45'RatifyState_2284 ~v0
  = du_HasEnactState'45'RatifyState_2284
du_HasEnactState'45'RatifyState_2284 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_HasEnactState_968
du_HasEnactState'45'RatifyState_2284
  = coe
      MAlonzo.Code.Ledger.Conway.Enact.C_HasEnactState'46'constructor_3027
      (coe (\ v0 -> d_es_2260 (coe v0)))
-- Ledger.Conway.Ratify.CCData
d_CCData_2286 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_CCData_2286 = erased
-- Ledger.Conway.Ratify.govRole
d_govRole_2288 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_VDeleg_766 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754
d_govRole_2288 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_credVoter_768 v1 v2
        -> coe v1
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_abstainRep_770
        -> coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_DRep_758
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_noConfidenceRep_772
        -> coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_DRep_758
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.IsCC
d_IsCC_2292 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_VDeleg_766 -> ()
d_IsCC_2292 = erased
-- Ledger.Conway.Ratify.IsDRep
d_IsDRep_2294 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_VDeleg_766 -> ()
d_IsDRep_2294 = erased
-- Ledger.Conway.Ratify.IsSPO
d_IsSPO_2296 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_VDeleg_766 -> ()
d_IsSPO_2296 = erased
-- Ledger.Conway.Ratify.HasCast-RatifyState
d_HasCast'45'RatifyState_2304 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_2304 ~v0 = du_HasCast'45'RatifyState_2304
du_HasCast'45'RatifyState_2304 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_2304
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
                                 (2252 :: Integer) (6629780030520735849 :: Integer)
                                 "Ledger.Conway.Ratify.RatifyState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1950 :: Integer) (6629780030520735849 :: Integer)
                                 "Ledger.Conway.Ratify._.EnactState"
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
                                    (2252 :: Integer) (6629780030520735849 :: Integer)
                                    "Ledger.Conway.Ratify.RatifyState"
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
                                    (126 :: Integer) (9254951203007797098 :: Integer)
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
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (76 :: Integer) (14176793942586333973 :: Integer)
                                             "Data.Product.Base._\215_"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.RightAssoc
                                                (MAlonzo.RTE.Related (2.0 :: Double)))))
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
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                                                            (154 :: Integer)
                                                            (6629780030520735849 :: Integer)
                                                            "_.GovActionID"
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
                                                               (156 :: Integer)
                                                               (6629780030520735849 :: Integer)
                                                               "_.GovActionState"
                                                               (MAlonzo.RTE.Fixity
                                                                  MAlonzo.RTE.NonAssoc
                                                                  MAlonzo.RTE.Unrelated)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
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
                                       (2252 :: Integer) (6629780030520735849 :: Integer)
                                       "Ledger.Conway.Ratify.RatifyState"
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
                                       (6 :: Integer) (4305008439024043551 :: Integer)
                                       "Agda.Builtin.Bool.Bool"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_RatifyState'46'constructor_15907))
-- Ledger.Conway.Ratify.actualVotes
d_actualVotes_2306 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2306 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Conway.Gov.Actions.d_DecEq'45'VDeleg_910
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
               (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Conway.Gov.Actions.C_credVoter_768
            (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_CC_756))
         (coe
            du_actualCCVotes_2458 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Conway.Gov.Actions.d_DecEq'45'VDeleg_910
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                  (coe v0))))
         (coe du_actualPDRepVotes_2466 (coe v0) (coe v4))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (MAlonzo.Code.Ledger.Conway.Gov.Actions.d_DecEq'45'VDeleg_910
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                     (coe v0))))
            (coe du_actualDRepVotes_2468 (coe v0) (coe v1) (coe v5))
            (coe du_actualSPOVotes_2470 (coe v0) (coe v1) (coe v4) (coe v5))))
-- Ledger.Conway.Ratify._._.ccHotKeys
d_ccHotKeys_2324 ::
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2324 v0 ~v1 ~v2 ~v3 ~v4 = du_ccHotKeys_2324 v0
du_ccHotKeys_2324 ::
  T_RatifyEnv_2222 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2324 v0 = coe d_ccHotKeys_2244 (coe v0)
-- Ledger.Conway.Ratify._._.currentEpoch
d_currentEpoch_2326 ::
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2326 v0 ~v1 ~v2 ~v3 ~v4 = du_currentEpoch_2326 v0
du_currentEpoch_2326 :: T_RatifyEnv_2222 -> AgdaAny
du_currentEpoch_2326 v0 = coe d_currentEpoch_2240 (coe v0)
-- Ledger.Conway.Ratify._._.delegatees
d_delegatees_2328 ::
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2328 v0 ~v1 ~v2 ~v3 ~v4 = du_delegatees_2328 v0
du_delegatees_2328 ::
  T_RatifyEnv_2222 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2328 v0 = coe d_delegatees_2250 (coe v0)
-- Ledger.Conway.Ratify._._.dreps
d_dreps_2330 ::
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2330 v0 ~v1 ~v2 ~v3 ~v4 = du_dreps_2330 v0
du_dreps_2330 ::
  T_RatifyEnv_2222 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2330 v0 = coe d_dreps_2242 (coe v0)
-- Ledger.Conway.Ratify._._.pools
d_pools_2332 ::
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2332 v0 ~v1 ~v2 ~v3 ~v4 = du_pools_2332 v0
du_pools_2332 ::
  T_RatifyEnv_2222 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2332 v0 = coe d_pools_2248 (coe v0)
-- Ledger.Conway.Ratify._._.stakeDistrs
d_stakeDistrs_2334 ::
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_2216
d_stakeDistrs_2334 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDistrs_2334 v0
du_stakeDistrs_2334 :: T_RatifyEnv_2222 -> T_StakeDistrs_2216
du_stakeDistrs_2334 v0 = coe d_stakeDistrs_2238 (coe v0)
-- Ledger.Conway.Ratify._._.treasury
d_treasury_2336 ::
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2336 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_2336 v0
du_treasury_2336 :: T_RatifyEnv_2222 -> Integer
du_treasury_2336 v0 = coe d_treasury_2246 (coe v0)
-- Ledger.Conway.Ratify._.roleVotes
d_roleVotes_2410 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_roleVotes_2410 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_roleVotes_2410 v5 v6
du_roleVotes_2410 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_roleVotes_2410 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_credVoter_768))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1168
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    MAlonzo.Code.Ledger.Conway.Gov.Actions.du_DecEq'45'GovRole_906))
              (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
         v0)
-- Ledger.Conway.Ratify._.activeDReps
d_activeDReps_2418 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_activeDReps_2418 v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_activeDReps_2418 v0 v1
du_activeDReps_2418 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
du_activeDReps_2418 v0 v1
  = coe
      MAlonzo.Code.Class.IsSet.du_dom_548
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1168
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
              (coe
                 MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_268
                 (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
                    (coe
                       MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
                          (coe v0)))
                    (\ v3 v4 -> v3) (d_currentEpoch_2240 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
                          (coe v0)))
                    (d_currentEpoch_2240 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe
                    MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
                    (coe
                       MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
                       (coe v0)))
                 (coe d_currentEpoch_2240 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_2242 (coe v1)))
-- Ledger.Conway.Ratify._.spos
d_spos_2424 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Gov.Actions.T_VDeleg_766]
d_spos_2424 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_spos_2424 v1
du_spos_2424 ::
  T_RatifyEnv_2222 ->
  [MAlonzo.Code.Ledger.Conway.Gov.Actions.T_VDeleg_766]
du_spos_2424 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.Ledger.Conway.Gov.Actions.du_DecEq'45'GovRole_906))
           (coe d_govRole_2288 (coe v1))
           (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_SPO_760))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
         (coe d_stakeDistr_2220 (coe d_stakeDistrs_2238 (coe v0))))
-- Ledger.Conway.Ratify._.getCCHotCred
d_getCCHotCred_2426 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_getCCHotCred_2426 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_getCCHotCred_2426 v0 v1 v6
du_getCCHotCred_2426 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_getCCHotCred_2426 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Class.ToBool.du_if_then_else__42
             (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
             (coe
                MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_268
                (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
                   (coe
                      MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
                      (coe v0)))
                (coe
                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                   (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
                      (coe
                         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
                         (coe v0)))
                   (\ v5 v6 -> v5) v4 (d_currentEpoch_2240 (coe v1)))
                (coe
                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                   (\ v5 v6 -> v6)
                   (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
                      (coe
                         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
                         (coe v0)))
                   v4 (d_currentEpoch_2240 (coe v1))))
             (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
             (coe
                (\ v5 ->
                   let v6
                         = coe
                             MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe d_ccHotKeys_2244 (coe v1)) (coe v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                         (coe v0))))
                                (coe v3)
                                (let v6
                                       = MAlonzo.Code.Axiom.Set.d_th_1470
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v6
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                         (coe d_ccHotKeys_2244 (coe v1)))))) in
                   coe
                     (case coe v6 of
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                          -> case coe v7 of
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8 -> coe v7
                               _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                        _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify._.SPODefaultVote
d_SPODefaultVote_2436 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_VDeleg_766 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_Vote_830
d_SPODefaultVote_2436 v0 v1 ~v2 ~v3 v4 ~v5 ~v6 v7
  = du_SPODefaultVote_2436 v0 v1 v4 v7
du_SPODefaultVote_2436 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_VDeleg_766 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_Vote_830
du_SPODefaultVote_2436 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_no_834 in
    coe
      (case coe v3 of
         MAlonzo.Code.Ledger.Conway.Gov.Actions.C_credVoter_768 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Ledger.Conway.Gov.Actions.C_SPO_760
                  -> case coe v6 of
                       MAlonzo.Code.Ledger.Conway.Address.C_KeyHashObj_20 v7
                         -> let v8
                                  = coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe d_pools_2248 (coe v1)) (coe v7)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased
                                            (MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                     (coe v0)))))
                                         (coe v7)
                                         (let v8
                                                = MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v8
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                  (coe d_pools_2248 (coe v1)))))) in
                            coe
                              (case coe v8 of
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                                   -> let v10
                                            = coe
                                                MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe d_delegatees_2250 (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Certs.d_rewardAccount_1020
                                                   (coe v9))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                               (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Certs.d_rewardAccount_1020
                                                      (coe v9))
                                                   (let v10
                                                          = MAlonzo.Code.Axiom.Set.d_th_1470
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v10
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                            (coe d_delegatees_2250 (coe v1)))))) in
                                      coe
                                        (let v11
                                               = let v11
                                                       = coe
                                                           MAlonzo.Code.Ledger.Conway.Gov.Actions.C_no_834 in
                                                 coe
                                                   (case coe v10 of
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                                                        -> case coe v12 of
                                                             MAlonzo.Code.Ledger.Conway.Gov.Actions.C_abstainRep_770
                                                               -> coe
                                                                    MAlonzo.Code.Ledger.Conway.Gov.Actions.C_abstain_836
                                                             _ -> coe v11
                                                      _ -> coe v11) in
                                         coe
                                           (case coe v2 of
                                              MAlonzo.Code.Ledger.Conway.Gov.Actions.C_NoConfidence_786
                                                -> case coe v10 of
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                                                       -> case coe v12 of
                                                            MAlonzo.Code.Ledger.Conway.Gov.Actions.C_noConfidenceRep_772
                                                              -> coe
                                                                   MAlonzo.Code.Ledger.Conway.Gov.Actions.C_yes_832
                                                            _ -> coe v11
                                                     _ -> coe v11
                                              MAlonzo.Code.Ledger.Conway.Gov.Actions.C_TriggerHF_792
                                                -> coe
                                                     MAlonzo.Code.Ledger.Conway.Gov.Actions.C_no_834
                                              _ -> coe v11))
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                   -> coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_no_834
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> coe v4
                _ -> coe v4
         _ -> coe v4)
-- Ledger.Conway.Ratify._.actualCCVote
d_actualCCVote_2448 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Gov.Actions.T_Vote_830
d_actualCCVote_2448 v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_actualCCVote_2448 v0 v1 v5 v6 v7
du_actualCCVote_2448 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Gov.Actions.T_Vote_830
du_actualCCVote_2448 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_getCCHotCred_2426 (coe v0) (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v7 -> v7))
                (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_no_834)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe v2)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_CC_756) (coe v6))
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         erased
                         (coe
                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                            (coe
                               MAlonzo.Code.Ledger.Conway.Gov.Actions.du_DecEq'45'GovRole_906)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                     (coe v0))))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_CC_756) (coe v6))
                      (let v7
                             = MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v7
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v2))))))
         _ -> coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_abstain_836)
-- Ledger.Conway.Ratify._.actualCCVotes
d_actualCCVotes_2458 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualCCVotes_2458 v0 v1 v2 v3 ~v4 v5
  = du_actualCCVotes_2458 v0 v1 v2 v3 v5
du_actualCCVotes_2458 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualCCVotes_2458 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Class.ToBool.du_if_then_else__42
                    (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                       (MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_426 (coe v2))
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_length'738'_1112
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                             (coe
                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                         (coe v0))))
                                (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                      (coe v0)))))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1260
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe du_getCCHotCred_2426 (coe v0) (coe v1))
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v6)))))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1126
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe du_actualCCVote_2448 (coe v0) (coe v1) (coe v4)) (coe v6)))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_constMap_1162
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.Class.IsSet.du_dom_548
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v6))
                            (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_no_834)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1470
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify._.actualPDRepVotes
d_actualPDRepVotes_2466 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualPDRepVotes_2466 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_actualPDRepVotes_2466 v0 v6
du_actualPDRepVotes_2466 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualPDRepVotes_2466 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                 erased
                 (MAlonzo.Code.Ledger.Conway.Gov.Actions.d_DecEq'45'VDeleg_910
                    (coe
                       MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                       (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_abstainRep_770)
                    (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_abstain_836)))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_noConfidenceRep_772)
                    (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_no_834))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Ledger.Conway.Gov.Actions.C_NoConfidence_786
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                   erased
                   (MAlonzo.Code.Ledger.Conway.Gov.Actions.d_DecEq'45'VDeleg_910
                      (coe
                         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                         (coe v0))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_abstainRep_770)
                      (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_abstain_836)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_noConfidenceRep_772)
                      (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_yes_832)))
         _ -> coe v2)
-- Ledger.Conway.Ratify._.actualDRepVotes
d_actualDRepVotes_2468 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualDRepVotes_2468 v0 v1 ~v2 ~v3 ~v4 v5
  = du_actualDRepVotes_2468 v0 v1 v5
du_actualDRepVotes_2468 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualDRepVotes_2468 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Conway.Gov.Actions.d_DecEq'45'VDeleg_910
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
               (coe v0))))
      (coe
         du_roleVotes_2410 (coe v2)
         (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_DRep_758))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_constMap_1162
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Conway.Gov.Actions.C_credVoter_768
               (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_DRep_758))
            (coe du_activeDReps_2418 (coe v0) (coe v1)))
         (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_no_834))
-- Ledger.Conway.Ratify._.actualSPOVotes
d_actualSPOVotes_2470 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualSPOVotes_2470 v0 v1 ~v2 ~v3 v4 v5 ~v6
  = du_actualSPOVotes_2470 v0 v1 v4 v5
du_actualSPOVotes_2470 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualSPOVotes_2470 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Conway.Gov.Actions.d_DecEq'45'VDeleg_910
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
               (coe v0))))
      (coe
         du_roleVotes_2410 (coe v3)
         (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_SPO_760))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1078
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_SPODefaultVote_2436 (coe v0) (coe v1) (coe v2))
         (coe du_spos_2424 (coe v1)))
-- Ledger.Conway.Ratify.getStakeDist
d_getStakeDist_2474 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 ->
  [MAlonzo.Code.Ledger.Conway.Gov.Actions.T_VDeleg_766] ->
  T_StakeDistrs_2216 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_2474 ~v0 v1 v2 v3 = du_getStakeDist_2474 v1 v2 v3
du_getStakeDist_2474 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 ->
  [MAlonzo.Code.Ledger.Conway.Gov.Actions.T_VDeleg_766] ->
  T_StakeDistrs_2216 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getStakeDist_2474 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_CC_756
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_constMap_1162
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1470
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
             (coe
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
                (\ v3 ->
                   coe
                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                        (coe
                           MAlonzo.Code.Ledger.Conway.Gov.Actions.du_DecEq'45'GovRole_906))
                     (coe d_govRole_2288 (coe v3)) (coe v0))
                v1)
             (coe (1 :: Integer))
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_DRep_758
        -> coe
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.Conway.Gov.Actions.du_DecEq'45'GovRole_906))
                  (coe d_govRole_2288 (coe v3)) (coe v0))
             (d_stakeDistr_2220 (coe v2))
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_SPO_760
        -> coe
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.Conway.Gov.Actions.du_DecEq'45'GovRole_906))
                  (coe d_govRole_2288 (coe v3)) (coe v0))
             (d_stakeDistr_2220 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.acceptedStakeRatio
d_acceptedStakeRatio_2484 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 ->
  [MAlonzo.Code.Ledger.Conway.Gov.Actions.T_VDeleg_766] ->
  T_StakeDistrs_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_2484 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
      (coe
         d_acceptedStake_2500 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         d_totalStake_2502 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Conway.Ratify._.dist
d_dist_2498 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 ->
  [MAlonzo.Code.Ledger.Conway.Gov.Actions.T_VDeleg_766] ->
  T_StakeDistrs_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dist_2498 ~v0 v1 v2 v3 ~v4 = du_dist_2498 v1 v2 v3
du_dist_2498 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 ->
  [MAlonzo.Code.Ledger.Conway.Gov.Actions.T_VDeleg_766] ->
  T_StakeDistrs_2216 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dist_2498 v0 v1 v2
  = coe du_getStakeDist_2474 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Ratify._.acceptedStake
d_acceptedStake_2500 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 ->
  [MAlonzo.Code.Ledger.Conway.Gov.Actions.T_VDeleg_766] ->
  T_StakeDistrs_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_acceptedStake_2500 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Conway.Gov.Actions.d_DecEq'45'VDeleg_910
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
      (coe (\ v5 -> v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Conway.Gov.Actions.d_DecEq'45'VDeleg_910
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                  (coe v0))))
         (coe du_dist_2498 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1734
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.du_DecEq'45'Vote_908))
            (coe v4) (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_yes_832)))
-- Ledger.Conway.Ratify._.totalStake
d_totalStake_2502 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 ->
  [MAlonzo.Code.Ledger.Conway.Gov.Actions.T_VDeleg_766] ->
  T_StakeDistrs_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_2502 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Conway.Gov.Actions.d_DecEq'45'VDeleg_910
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
      (coe (\ v5 -> v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Conway.Gov.Actions.d_DecEq'45'VDeleg_910
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                  (coe v0))))
         (coe du_dist_2498 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_548
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__1718
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased
                  (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.du_DecEq'45'Vote_908))
               (coe v4)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_yes_832))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_no_834))))))
-- Ledger.Conway.Ratify.acceptedBy
d_acceptedBy_2508 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 -> ()
d_acceptedBy_2508 = erased
-- Ledger.Conway.Ratify.accepted
d_accepted_2614 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 -> ()
d_accepted_2614 = erased
-- Ledger.Conway.Ratify.expired
d_expired_2622 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 -> ()
d_expired_2622 = erased
-- Ledger.Conway.Ratify.verifyPrev
d_verifyPrev_2630 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 -> ()
d_verifyPrev_2630 = erased
-- Ledger.Conway.Ratify.delayingAction
d_delayingAction_2652 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 -> Bool
d_delayingAction_2652 ~v0 v1 = du_delayingAction_2652 v1
du_delayingAction_2652 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 -> Bool
du_delayingAction_2652 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_NoConfidence_786
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_UpdateCommittee_788
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_NewConstitution_790
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_TriggerHF_792
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_ChangePParams_794
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_TreasuryWdrl_796
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_Info_798
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.delayed
d_delayed_2656 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 -> Bool -> ()
d_delayed_2656 = erased
-- Ledger.Conway.Ratify.acceptConds
d_acceptConds_2666 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  T_RatifyState_2252 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2666 = erased
-- Ledger.Conway.Ratify._._.ccHotKeys
d_ccHotKeys_2682 ::
  T_RatifyEnv_2222 ->
  T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2682 v0 ~v1 ~v2 ~v3 = du_ccHotKeys_2682 v0
du_ccHotKeys_2682 ::
  T_RatifyEnv_2222 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2682 v0 = coe d_ccHotKeys_2244 (coe v0)
-- Ledger.Conway.Ratify._._.currentEpoch
d_currentEpoch_2684 ::
  T_RatifyEnv_2222 ->
  T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  AgdaAny
d_currentEpoch_2684 v0 ~v1 ~v2 ~v3 = du_currentEpoch_2684 v0
du_currentEpoch_2684 :: T_RatifyEnv_2222 -> AgdaAny
du_currentEpoch_2684 v0 = coe d_currentEpoch_2240 (coe v0)
-- Ledger.Conway.Ratify._._.delegatees
d_delegatees_2686 ::
  T_RatifyEnv_2222 ->
  T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2686 v0 ~v1 ~v2 ~v3 = du_delegatees_2686 v0
du_delegatees_2686 ::
  T_RatifyEnv_2222 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2686 v0 = coe d_delegatees_2250 (coe v0)
-- Ledger.Conway.Ratify._._.dreps
d_dreps_2688 ::
  T_RatifyEnv_2222 ->
  T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2688 v0 ~v1 ~v2 ~v3 = du_dreps_2688 v0
du_dreps_2688 ::
  T_RatifyEnv_2222 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2688 v0 = coe d_dreps_2242 (coe v0)
-- Ledger.Conway.Ratify._._.pools
d_pools_2690 ::
  T_RatifyEnv_2222 ->
  T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2690 v0 ~v1 ~v2 ~v3 = du_pools_2690 v0
du_pools_2690 ::
  T_RatifyEnv_2222 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2690 v0 = coe d_pools_2248 (coe v0)
-- Ledger.Conway.Ratify._._.stakeDistrs
d_stakeDistrs_2692 ::
  T_RatifyEnv_2222 ->
  T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  T_StakeDistrs_2216
d_stakeDistrs_2692 v0 ~v1 ~v2 ~v3 = du_stakeDistrs_2692 v0
du_stakeDistrs_2692 :: T_RatifyEnv_2222 -> T_StakeDistrs_2216
du_stakeDistrs_2692 v0 = coe d_stakeDistrs_2238 (coe v0)
-- Ledger.Conway.Ratify._._.treasury
d_treasury_2694 ::
  T_RatifyEnv_2222 ->
  T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  Integer
d_treasury_2694 v0 ~v1 ~v2 ~v3 = du_treasury_2694 v0
du_treasury_2694 :: T_RatifyEnv_2222 -> Integer
du_treasury_2694 v0 = coe d_treasury_2246 (coe v0)
-- Ledger.Conway.Ratify._._.delay
d_delay_2698 ::
  T_RatifyEnv_2222 ->
  T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 -> Bool
d_delay_2698 ~v0 v1 ~v2 ~v3 = du_delay_2698 v1
du_delay_2698 :: T_RatifyState_2252 -> Bool
du_delay_2698 v0 = coe d_delay_2264 (coe v0)
-- Ledger.Conway.Ratify._._.es
d_es_2700 ::
  T_RatifyEnv_2222 ->
  T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942
d_es_2700 ~v0 v1 ~v2 ~v3 = du_es_2700 v1
du_es_2700 ::
  T_RatifyState_2252 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942
du_es_2700 v0 = coe d_es_2260 (coe v0)
-- Ledger.Conway.Ratify._._.removed
d_removed_2702 ::
  T_RatifyEnv_2222 ->
  T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2702 ~v0 v1 ~v2 ~v3 = du_removed_2702 v1
du_removed_2702 ::
  T_RatifyState_2252 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_2702 v0 = coe d_removed_2262 (coe v0)
-- Ledger.Conway.Ratify.verifyPrev?
d_verifyPrev'63'_2724 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2724 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_NoConfidence_786
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_954 (coe v3))))
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_UpdateCommittee_788
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_954 (coe v3))))
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_NewConstitution_790
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Enact.d_constitution_956 (coe v3))))
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_TriggerHF_792
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Conway.Enact.d_pv_958 (coe v3))))
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_ChangePParams_794
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_960 (coe v3))))
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_TreasuryWdrl_796
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_Info_798
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.delayed?
d_delayed'63'_2762 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionType_784 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2762 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe d_verifyPrev'63'_2724 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
            (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe v4) (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Ratify.Is-nothing?
d_Is'45'nothing'63'_2778 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_2778 ~v0 ~v1 v2 = du_Is'45'nothing'63'_2778 v2
du_Is'45'nothing'63'_2778 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_2778 v0
  = coe
      MAlonzo.Code.Data.Maybe.Relation.Unary.All.du_dec_254
      (let v1
             = coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26) in
       coe (coe (\ v2 -> v1)))
      (coe v0)
-- Ledger.Conway.Ratify.acceptedBy?
d_acceptedBy'63'_2794 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovRole_754 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_2794 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3552
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v5 -> v5))
            (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
            (coe
               d_threshold_2074 v0
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_960 (coe v2)))
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_map_64
                  (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_954 (coe v2))))
               (MAlonzo.Code.Ledger.Conway.Gov.Actions.d_action_900 (coe v3)) v4))
         (coe
            d_acceptedStakeRatio_2484 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_548
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
               (coe
                  d_actualVotes_2306 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_960 (coe v2)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_954 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Gov.Actions.d_gaType_808
                     (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_action_900 (coe v3)))
                  (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_votes_894 (coe v3))))
            (coe d_stakeDistrs_2238 (coe v1))
            (coe
               d_actualVotes_2306 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_960 (coe v2)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_954 (coe v2)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Gov.Actions.d_gaType_808
                  (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_action_900 (coe v3)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Gov.Actions.d_votes_894 (coe v3)))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe
               MAlonzo.Code.Ledger.Conway.Gov.Actions.du_DecEq'45'GovRole_906)
            v4 (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_CC_756))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
            (coe
               MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2830
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                  (coe
                     (\ v5 ->
                        coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_length'738'_1112
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                             (coe
                                MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
                                   (coe v0))))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
                  (coe (0 :: Integer))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_954 (coe v2))))
               (coe
                  MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_426
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_960 (coe v2)))))
            (coe
               du_Is'45'nothing'63'_2778
               (coe
                  d_threshold_2074 v0
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_960 (coe v2)))
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_map_64
                     (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_954 (coe v2))))
                  (MAlonzo.Code.Ledger.Conway.Gov.Actions.d_action_900 (coe v3))
                  v4))))
-- Ledger.Conway.Ratify.accepted?
d_accepted'63'_2806 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2806 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         d_acceptedBy'63'_2794 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_CC_756))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
         (coe
            d_acceptedBy'63'_2794 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_DRep_758))
         (coe
            d_acceptedBy'63'_2794 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_SPO_760)))
-- Ledger.Conway.Ratify.expired?
d_expired'63'_2822 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2822 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_268
         (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
                  (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.Conway.Gov.Actions.d_expiresIn_898 (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
                  (coe v0)))
            (MAlonzo.Code.Ledger.Conway.Gov.Actions.d_expiresIn_898 (coe v2))
            v1))
-- Ledger.Conway.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2840 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'RATIFY'10632'__2840
  = C_RATIFY'45'Accept_2854 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_2862 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_2870 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Ratify._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2842 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2222 ->
  T_RatifyState_2252 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_2252 -> ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2842 = erased
