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

module MAlonzo.Code.Ledger.Conway.Specification.Ratify where

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
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Core.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Credential
d_Credential_58 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_92 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_92 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
            (coe v0)))
-- _.Epoch
d_Epoch_160 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_160 = erased
-- _.GovAction
d_GovAction_166 a0 = ()
-- _.GovActionID
d_GovActionID_172 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_172 = erased
-- _.GovActionState
d_GovActionState_176 a0 = ()
-- _.GovActionType
d_GovActionType_180 a0 = ()
-- _.GovRole
d_GovRole_192 a0 = ()
-- _.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_238 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844
d_HasGovAction'45'GovActionState_238 ~v0
  = du_HasGovAction'45'GovActionState_238
du_HasGovAction'45'GovActionState_238 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844
du_HasGovAction'45'GovActionState_238
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1098
-- _.THash
d_THash_326 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_326 = erased
-- _.NeedsHash
d_NeedsHash_340 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796 ->
  ()
d_NeedsHash_340 = erased
-- _.PParamGroup
d_PParamGroup_368 a0 = ()
-- _.PParams
d_PParams_370 a0 = ()
-- _.UpdateT
d_UpdateT_380 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UpdateT_380 = erased
-- _.VDeleg
d_VDeleg_534 a0 = ()
-- _.VoteDelegs
d_VoteDelegs_550 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VoteDelegs_550 = erased
-- _.preoEpoch
d_preoEpoch_682 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_682 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
         (coe v0))
-- _.GovAction.gaData
d_gaData_810 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  AgdaAny
d_gaData_810 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gaData_838
      (coe v0)
-- _.GovAction.gaType
d_gaType_812 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796
d_gaType_812 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gaType_836
      (coe v0)
-- _.GovActionState.action
d_action_816 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830
d_action_816 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_1024
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_818 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny
d_expiresIn_818 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_expiresIn_1022
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_820 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny
d_prevAction_820 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_prevAction_1026
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_822 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_822 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_returnAddr_1020
      (coe v0)
-- _.GovActionState.votes
d_votes_824 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVotes_918
d_votes_824 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_votes_1018
      (coe v0)
-- _.GovActions.GovAction
d_GovAction_864 a0 = ()
-- _.GovActions.GovActionState
d_GovActionState_874 a0 = ()
-- _.GovActions.GovActionType
d_GovActionType_878 a0 = ()
-- _.GovActions.GovRole
d_GovRole_886 a0 = ()
-- _.GovActions.VDeleg
d_VDeleg_978 a0 = ()
-- _.PParams.Emax
d_Emax_1226 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_Emax_1226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_392
      (coe v0)
-- _.PParams.a
d_a_1228 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_a_1228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_364 (coe v0)
-- _.PParams.a0
d_a0_1230 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_396 (coe v0)
-- _.PParams.b
d_b_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_b_1232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_366 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1234 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMaxTermLength_1234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_408
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMinSize_1236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1238 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_coinsPerUTxOByte_1238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_376
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1240 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_collateralPercentage_1240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_398
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_costmdls_1242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_400
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_drepActivity_1244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_416
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_drepDeposit_1246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_414
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208
d_drepThresholds_1248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionDeposit_1250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_412
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionLifetime_1252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_410
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_keyDeposit_1254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_368
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1256 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_maxBlockExUnits_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_356
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxBlockSize_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_348
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxCollateralInputs_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_360
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxHeaderSize_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_352
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1264 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerBlock_1264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_384
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1266 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerTx_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_382
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1268 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_maxTxExUnits_1268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_354
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1270 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxTxSize_1270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_350
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1272 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxValSize_1272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_358
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1274 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_380
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1276 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_minUTxOValue_1276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_390
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1278 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_372
      (coe v0)
-- _.PParams.nopt
d_nopt_1280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_nopt_1280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_394
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_poolDeposit_1282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_370
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252
d_poolThresholds_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
      (coe v0)
-- _.PParams.prices
d_prices_1286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_prices_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_378
      (coe v0)
-- _.PParams.pv
d_pv_1288 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_362 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1290 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_388
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1292 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_386
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1294 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_374
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.DRepsOf
d_DRepsOf_1798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1178
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.HasDReps
d_HasDReps_1858 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Ratify._.Pools
d_Pools_1944 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Pools_1944 = erased
-- Ledger.Conway.Specification.Ratify._.StakePoolParams
d_StakePoolParams_1964 a0 = ()
-- Ledger.Conway.Specification.Ratify._.HasDReps.DRepsOf
d_DRepsOf_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1178
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.cost
d_cost_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  Integer
d_cost_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1090 (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.margin
d_margin_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1092
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.owners
d_owners_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  [AgdaAny]
d_owners_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1088
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.pledge
d_pledge_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  Integer
d_pledge_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1094
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.rewardAccount
d_rewardAccount_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1096
      (coe v0)
-- Ledger.Conway.Specification.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__2174 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Ratify._.EnactState
d_EnactState_2194 a0 = ()
-- Ledger.Conway.Specification.Ratify._.EnactStateOf
d_EnactStateOf_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1124 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
d_EnactStateOf_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1132
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_2200 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_2200 ~v0 = du_HasCast'45'EnactEnv_2200
du_HasCast'45'EnactEnv_2200 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EnactEnv_2200
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasCast'45'EnactEnv_1146
-- Ledger.Conway.Specification.Ratify._.HasEnactState
d_HasEnactState_2202 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Ratify._.EnactState.cc
d_cc_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1108 (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.constitution
d_constitution_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1110
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.pparams
d_pparams_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1114
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.pv
d_pv_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1112 (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.withdrawals
d_withdrawals_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1116
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.HasEnactState.EnactStateOf
d_EnactStateOf_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1124 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
d_EnactStateOf_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1132
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.Vote
d_Vote_2260 a0 = ()
-- Ledger.Conway.Specification.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_2272 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovRole_784 ->
  AgdaAny
d_'8739'_'8739'_'8739'_'8739'_2272 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_2272 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_2272 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovRole_784 ->
  AgdaAny
du_'8739'_'8739'_'8739'_'8739'_2272 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_CC_786
        -> coe v0
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_DRep_788
        -> coe v1
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_SPO_790
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_2284 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovRole_784 ->
  AgdaAny
d_'8739'_'8741'_'8739'_2284 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_2284 v2 v3
du_'8739'_'8741'_'8739'_2284 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovRole_784 ->
  AgdaAny
du_'8739'_'8741'_'8739'_2284 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_CC_786
                    -> coe v0
                  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_DRep_788
                    -> coe v2
                  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_SPO_790
                    -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.threshold
d_threshold_2294 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovRole_784 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_2294 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_860)
              v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_NoConfidence_798
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2272 (coe du_'9472'_2434)
                       (coe
                          du_vote_2412
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_230
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                                (coe v1))))
                       (coe
                          du_vote_2412
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_264
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
                                (coe v1))))
                MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_UpdateCommittee_800
                  -> coe
                       du_'8739'_'8741'_'8739'_2284 (coe du_'9472'_2434)
                       (coe du_P'47'Q2a'47'b_2440 (coe v1) (coe v2))
                MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_NewConstitution_802
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2272 (coe du_'10003'_2436 (coe v2))
                       (coe
                          du_vote_2412
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_236
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                                (coe v1))))
                       (coe du_'9472'_2434)
                MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_TriggerHardFork_804
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2272 (coe du_'10003'_2436 (coe v2))
                       (coe
                          du_vote_2412
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_238
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                                (coe v1))))
                       (coe
                          du_vote_2412
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_270
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
                                (coe v1))))
                MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_ChangePParams_806
                  -> coe
                       du_'8739'_'8741'_'8739'_2284 (coe du_'10003'_2436 (coe v2))
                       (coe du_P'47'Q5_2446 (coe v0) (coe v1) (coe v6))
                MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_TreasuryWithdrawal_808
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2272 (coe du_'10003'_2436 (coe v2))
                       (coe
                          du_vote_2412
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_248
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                                (coe v1))))
                       (coe du_'9472'_2434)
                MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_Info_810
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2272 (coe du_'10003''8224'_2438)
                       (coe du_'10003''8224'_2438) (coe du_'10003''8224'_2438)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Ratify._.vote
d_vote_2412 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_2412 ~v0 ~v1 ~v2 ~v3 = du_vote_2412
du_vote_2412 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_2412 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Conway.Specification.Ratify._.defer
d_defer_2414 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_2414 ~v0 ~v1 ~v2 ~v3 = du_defer_2414
du_defer_2414 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_2414
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Conway.Specification.Ratify._.maxThreshold
d_maxThreshold_2416 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_2416 ~v0 ~v1 ~v2 ~v3 v4 = du_maxThreshold_2416 v4
du_maxThreshold_2416 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_2416 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230 (coe du__'8744'__2424)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1178
            v0))
-- Ledger.Conway.Specification.Ratify._._._∨_
d__'8744'__2424 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'8744'__2424 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du__'8744'__2424 v5 v6
du__'8744'__2424 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'8744'__2424 v0 v1
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
-- Ledger.Conway.Specification.Ratify._.─
d_'9472'_2434 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_2434 ~v0 ~v1 ~v2 ~v3 = du_'9472'_2434
du_'9472'_2434 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_2434 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Conway.Specification.Ratify._.✓
d_'10003'_2436 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_2436 ~v0 ~v1 v2 ~v3 = du_'10003'_2436 v2
du_'10003'_2436 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_2436 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
      (coe du_'10003''8224'_2438) (coe v0)
-- Ledger.Conway.Specification.Ratify._.✓†
d_'10003''8224'_2438 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_2438 ~v0 ~v1 ~v2 ~v3 = du_'10003''8224'_2438
du_'10003''8224'_2438 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_2438 = coe du_vote_2412 (coe du_defer_2414)
-- Ledger.Conway.Specification.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_2440 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_2440 ~v0 v1 v2 ~v3 = du_P'47'Q2a'47'b_2440 v1 v2
du_P'47'Q2a'47'b_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_2440 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_232
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                      (coe v0))))
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_266
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
                      (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_234
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                      (coe v0))))
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_268
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
                      (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.pparamThreshold
d_pparamThreshold_2444 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_2444 ~v0 v1 ~v2 ~v3 v4
  = du_pparamThreshold_2444 v1 v4
du_pparamThreshold_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_2444 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_NetworkGroup_198
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_240
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                      (coe v0))))
             (coe du_'9472'_2434)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_EconomicGroup_200
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_242
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                      (coe v0))))
             (coe du_'9472'_2434)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_TechnicalGroup_202
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_244
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                      (coe v0))))
             (coe du_'9472'_2434)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_GovernanceGroup_204
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_246
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
                      (coe v0))))
             (coe du_'9472'_2434)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_SecurityGroup_206
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_2434)
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_272
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
                      (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.P/Q5
d_P'47'Q5_2446 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_2446 v0 v1 ~v2 ~v3 v4 = du_P'47'Q5_2446 v0 v1 v4
du_P'47'Q5_2446 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_2446 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_2416
         (coe
            MAlonzo.Code.Axiom.Set.du_map_426
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_2444 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1484
               (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govParams_2368
                     (coe v0)))
               v2)))
      (coe
         du_maxThreshold_2416
         (coe
            MAlonzo.Code.Axiom.Set.du_map_426
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_2444 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1484
               (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govParams_2368
                     (coe v0)))
               v2)))
-- Ledger.Conway.Specification.Ratify.canVote
d_canVote_2454 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovRole_784 ->
  ()
d_canVote_2454 = erased
-- Ledger.Conway.Specification.Ratify.StakeDistrs
d_StakeDistrs_2462 a0 = ()
data T_StakeDistrs_2462
  = C_constructor_2472 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ratify.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_2468 ::
  T_StakeDistrs_2462 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_2468 v0
  = case coe v0 of
      C_constructor_2472 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.StakeDistrs.stakeDistrPools
d_stakeDistrPools_2470 ::
  T_StakeDistrs_2462 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_2470 v0
  = case coe v0 of
      C_constructor_2472 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv
d_RatifyEnv_2474 a0 = ()
data T_RatifyEnv_2474
  = C_constructor_2504 T_StakeDistrs_2462 AgdaAny
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_2490 :: T_RatifyEnv_2474 -> T_StakeDistrs_2462
d_stakeDistrs_2490 v0
  = case coe v0 of
      C_constructor_2504 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_2492 :: T_RatifyEnv_2474 -> AgdaAny
d_currentEpoch_2492 v0
  = case coe v0 of
      C_constructor_2504 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.dreps
d_dreps_2494 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2494 v0
  = case coe v0 of
      C_constructor_2504 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_2496 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2496 v0
  = case coe v0 of
      C_constructor_2504 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.treasury
d_treasury_2498 :: T_RatifyEnv_2474 -> Integer
d_treasury_2498 v0
  = case coe v0 of
      C_constructor_2504 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.pools
d_pools_2500 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2500 v0
  = case coe v0 of
      C_constructor_2504 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.delegatees
d_delegatees_2502 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2502 v0
  = case coe v0 of
      C_constructor_2504 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyState
d_RatifyState_2506 a0 = ()
data T_RatifyState_2506
  = C_constructor_2520 MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Conway.Specification.Ratify.RatifyState.es
d_es_2514 ::
  T_RatifyState_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
d_es_2514 v0
  = case coe v0 of
      C_constructor_2520 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyState.removed
d_removed_2516 ::
  T_RatifyState_2506 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2516 v0
  = case coe v0 of
      C_constructor_2520 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyState.delay
d_delay_2518 :: T_RatifyState_2506 -> Bool
d_delay_2518 v0
  = case coe v0 of
      C_constructor_2520 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.HasRatifyState
d_HasRatifyState_2526 a0 a1 a2 = ()
newtype T_HasRatifyState_2526
  = C_constructor_2536 (AgdaAny -> T_RatifyState_2506)
-- Ledger.Conway.Specification.Ratify.HasRatifyState.RatifyStateOf
d_RatifyStateOf_2534 ::
  T_HasRatifyState_2526 -> AgdaAny -> T_RatifyState_2506
d_RatifyStateOf_2534 v0
  = case coe v0 of
      C_constructor_2536 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.RatifyStateOf
d_RatifyStateOf_2540 ::
  T_HasRatifyState_2526 -> AgdaAny -> T_RatifyState_2506
d_RatifyStateOf_2540 v0 = coe d_RatifyStateOf_2534 (coe v0)
-- Ledger.Conway.Specification.Ratify.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_2542 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1124
d_HasEnactState'45'RatifyState_2542 ~v0
  = du_HasEnactState'45'RatifyState_2542
du_HasEnactState'45'RatifyState_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1124
du_HasEnactState'45'RatifyState_2542
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1134
      (coe (\ v0 -> d_es_2514 (coe v0)))
-- Ledger.Conway.Specification.Ratify.HasDReps-RatifyEnv
d_HasDReps'45'RatifyEnv_2544 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1170
d_HasDReps'45'RatifyEnv_2544 ~v0 = du_HasDReps'45'RatifyEnv_2544
du_HasDReps'45'RatifyEnv_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1170
du_HasDReps'45'RatifyEnv_2544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1180
      (coe (\ v0 -> d_dreps_2494 (coe v0)))
-- Ledger.Conway.Specification.Ratify.HasTreasury-RatifyEnv
d_HasTreasury'45'RatifyEnv_2546 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'RatifyEnv_2546 ~v0
  = du_HasTreasury'45'RatifyEnv_2546
du_HasTreasury'45'RatifyEnv_2546 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'RatifyEnv_2546
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe (\ v0 -> d_treasury_2498 (coe v0)))
-- Ledger.Conway.Specification.Ratify.HasCast-StakeDistrs
d_HasCast'45'StakeDistrs_2548 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakeDistrs_2548 ~v0 = du_HasCast'45'StakeDistrs_2548
du_HasCast'45'StakeDistrs_2548 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'StakeDistrs_2548
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
                                 (2462 :: Integer) (11046137501266703203 :: Integer)
                                 "Ledger.Conway.Specification.Ratify.StakeDistrs"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (182 :: Integer) (9254951203007797098 :: Integer)
                                 "abstract-set-theory.FiniteSetTheory._.Map"
                                 (MAlonzo.RTE.Fixity
                                    MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (1.0 :: Double)))))
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
                                          (534 :: Integer) (11046137501266703203 :: Integer)
                                          "_.VDeleg"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                                             (6 :: Integer) (14798748958053396954 :: Integer)
                                             "Ledger.Prelude.Base.Coin"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
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
                                    (2462 :: Integer) (11046137501266703203 :: Integer)
                                    "Ledger.Conway.Specification.Ratify.StakeDistrs"
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
                                    (182 :: Integer) (9254951203007797098 :: Integer)
                                    "abstract-set-theory.FiniteSetTheory._.Map"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.RightAssoc
                                       (MAlonzo.RTE.Related (1.0 :: Double)))))
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
                                             (326 :: Integer) (11046137501266703203 :: Integer)
                                             "_.THash"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
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
                                                (6 :: Integer) (14798748958053396954 :: Integer)
                                                "Ledger.Prelude.Base.Coin"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
         (coe C_constructor_2472))
-- Ledger.Conway.Specification.Ratify.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_2550 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_2550 ~v0 = du_HasCast'45'RatifyEnv_2550
du_HasCast'45'RatifyEnv_2550 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyEnv_2550
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
                                 (2474 :: Integer) (11046137501266703203 :: Integer)
                                 "Ledger.Conway.Specification.Ratify.RatifyEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2462 :: Integer) (11046137501266703203 :: Integer)
                                 "Ledger.Conway.Specification.Ratify.StakeDistrs"
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
                                    (2474 :: Integer) (11046137501266703203 :: Integer)
                                    "Ledger.Conway.Specification.Ratify.RatifyEnv"
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
                                    (160 :: Integer) (11046137501266703203 :: Integer) "_.Epoch"
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
                                       (2474 :: Integer) (11046137501266703203 :: Integer)
                                       "Ledger.Conway.Specification.Ratify.RatifyEnv"
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
                                       (182 :: Integer) (9254951203007797098 :: Integer)
                                       "abstract-set-theory.FiniteSetTheory._.Map"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.RightAssoc
                                          (MAlonzo.RTE.Related (1.0 :: Double)))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
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
                                                (58 :: Integer) (11046137501266703203 :: Integer)
                                                "_.Credential"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
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
                                                   (160 :: Integer)
                                                   (11046137501266703203 :: Integer) "_.Epoch"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
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
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (2474 :: Integer) (11046137501266703203 :: Integer)
                                          "Ledger.Conway.Specification.Ratify.RatifyEnv"
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
                                          (182 :: Integer) (9254951203007797098 :: Integer)
                                          "abstract-set-theory.FiniteSetTheory._.Map"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.RightAssoc
                                             (MAlonzo.RTE.Related (1.0 :: Double)))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
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
                                                   (58 :: Integer) (11046137501266703203 :: Integer)
                                                   "_.Credential"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                                                      (10 :: Integer)
                                                      (15412666033012224255 :: Integer)
                                                      "Agda.Builtin.Maybe.Maybe"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
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
                                                                  (58 :: Integer)
                                                                  (11046137501266703203 :: Integer)
                                                                  "_.Credential"
                                                                  (MAlonzo.RTE.Fixity
                                                                     MAlonzo.RTE.NonAssoc
                                                                     MAlonzo.RTE.Unrelated)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
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
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (2474 :: Integer) (11046137501266703203 :: Integer)
                                             "Ledger.Conway.Specification.Ratify.RatifyEnv"
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
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (2474 :: Integer) (11046137501266703203 :: Integer)
                                                "Ledger.Conway.Specification.Ratify.RatifyEnv"
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
                                                (182 :: Integer) (9254951203007797098 :: Integer)
                                                "abstract-set-theory.FiniteSetTheory._.Map"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.RightAssoc
                                                   (MAlonzo.RTE.Related (1.0 :: Double)))))
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
                                                         (326 :: Integer)
                                                         (11046137501266703203 :: Integer) "_.THash"
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
                                                            (1964 :: Integer)
                                                            (11046137501266703203 :: Integer)
                                                            "Ledger.Conway.Specification.Ratify._.StakePoolParams"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
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
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (2474 :: Integer)
                                                   (11046137501266703203 :: Integer)
                                                   "Ledger.Conway.Specification.Ratify.RatifyEnv"
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
                                                   (550 :: Integer)
                                                   (11046137501266703203 :: Integer) "_.VoteDelegs"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
         (coe C_constructor_2504))
-- Ledger.Conway.Specification.Ratify.HasCast-RatifyState
d_HasCast'45'RatifyState_2552 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_2552 ~v0 = du_HasCast'45'RatifyState_2552
du_HasCast'45'RatifyState_2552 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_2552
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
                                 (2506 :: Integer) (11046137501266703203 :: Integer)
                                 "Ledger.Conway.Specification.Ratify.RatifyState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2194 :: Integer) (11046137501266703203 :: Integer)
                                 "Ledger.Conway.Specification.Ratify._.EnactState"
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
                                    (2506 :: Integer) (11046137501266703203 :: Integer)
                                    "Ledger.Conway.Specification.Ratify.RatifyState"
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
                                    (128 :: Integer) (9254951203007797098 :: Integer)
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
                                                            (172 :: Integer)
                                                            (11046137501266703203 :: Integer)
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
                                                               (176 :: Integer)
                                                               (11046137501266703203 :: Integer)
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
                                       (2506 :: Integer) (11046137501266703203 :: Integer)
                                       "Ledger.Conway.Specification.Ratify.RatifyState"
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
         (coe C_constructor_2520))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.castVotes
d_castVotes_2658 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2658 ~v0 ~v1 ~v2 ~v3 v4 = du_castVotes_2658 v4
du_castVotes_2658 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2658 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvCC_926
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_votes_1018
         (coe v0))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.getCCHotCred
d_getCCHotCred_2660 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCred_2660 v0 v1 v2 ~v3 ~v4 v5
  = du_getCCHotCred_2660 v0 v1 v2 v5
du_getCCHotCred_2660 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getCCHotCred_2660 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Class.ToBool.du_if_then_else__38
             (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
             (coe
                MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
                (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                   (coe
                      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
                      (coe v0)))
                (coe
                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                   (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                      (coe
                         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
                         (coe v0)))
                   (\ v6 v7 -> v6) v5 v1)
                (coe
                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                   (\ v6 v7 -> v7)
                   (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                      (coe
                         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
                         (coe v0)))
                   v5 v1))
             (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
             (coe
                (\ v6 ->
                   let v7
                         = coe
                             MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe v2) (coe v4)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                         (coe v0))))
                                (coe v4)
                                (let v7
                                       = MAlonzo.Code.Axiom.Set.d_th_1516
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v7
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))))) in
                   coe
                     (case coe v7 of
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                          -> case coe v8 of
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9 -> coe v8
                               _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                        _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.actualVote
d_actualVote_2670 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_866
d_actualVote_2670 v0 v1 v2 ~v3 v4 v5 v6
  = du_actualVote_2670 v0 v1 v2 v4 v5 v6
du_actualVote_2670 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_866
du_actualVote_2670 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              du_getCCHotCred_2660 (coe v0) (coe v1) (coe v2)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v5)) in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v8 -> v8))
                (coe MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_no_870)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1516
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe du_castVotes_2658 (coe v3)) (coe v7)
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         erased
                         (coe
                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                            (coe
                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                  (coe
                                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                     (coe v0))))
                            (coe
                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                  (coe v0)))))
                      (coe v7)
                      (let v8
                             = MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v8
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                               (coe du_castVotes_2658 (coe v3)))))))
         _ -> coe
                MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_abstain_872)
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.actualVotes
d_actualVotes_2680 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2680 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1108
                 (coe v3)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> case coe v6 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                  -> coe
                       MAlonzo.Code.Class.ToBool.du_if_then_else__38
                       (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
                       (coe
                          MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1114
                                   (coe v3))))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_length'738'_1186
                             (coe
                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                (coe
                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                               (coe v0))))
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                         (coe v0)))))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1540
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe du_getCCHotCred_2660 (coe v0) (coe v1) (coe v2))
                                (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v7)))))
                       (coe
                          (\ v9 ->
                             coe
                               MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1406
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe du_actualVote_2670 (coe v0) (coe v1) (coe v2) (coe v4))
                               (coe v7)))
                       (coe
                          (\ v9 ->
                             coe
                               MAlonzo.Code.Axiom.Set.Map.du_constMap_1442
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_586
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v7))
                               (coe MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_no_870)))
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1516
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.mT
d_mT_2686 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_2686 v0 ~v1 ~v2 v3 v4 = du_mT_2686 v0 v3 v4
du_mT_2686 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mT_2686 v0 v1 v2
  = coe
      d_threshold_2294 v0
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1114
            (coe v1)))
      (coe
         MAlonzo.Code.Data.Maybe.Base.du_map_64
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1108
               (coe v1))))
      (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_1024
         (coe v2))
      (coe MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_CC_786)
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.t
d_t_2688 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_2688 v0 ~v1 ~v2 v3 v4 = du_t_2688 v0 v3 v4
du_t_2688 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_t_2688 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v3 -> v3))
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe du_mT_2686 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.stakeDistr
d_stakeDistr_2690 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2690 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_constMap_1442
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe
            d_actualVotes_2680 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
      (coe (1 :: Integer))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.acceptedStake
d_acceptedStake_2692 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_acceptedStake_2692 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1414
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v5 -> v5))
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
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                     (coe v0)))))
         (coe
            d_stakeDistr_2690 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'Vote_1108))
            (coe
               d_actualVotes_2680 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_yes_868)))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.totalStake
d_totalStake_2694 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_totalStake_2694 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1414
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v5 -> v5))
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
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                     (coe v0)))))
         (coe
            d_stakeDistr_2690 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__2100
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'Vote_1108))
               (coe
                  d_actualVotes_2680 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_yes_868))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_no_870))))))
-- Ledger.Conway.Specification.Ratify.AcceptedByCC.accepted
d_accepted_2700 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_accepted_2700 = erased
-- Ledger.Conway.Specification.Ratify.acceptedByCC
d_acceptedByCC_2706 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_acceptedByCC_2706 = erased
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2716 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2716 v0 = coe d_ccHotKeys_2496 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_2718 :: T_RatifyEnv_2474 -> AgdaAny
d_currentEpoch_2718 v0 = coe d_currentEpoch_2492 (coe v0)
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep._.currentEpoch
d_currentEpoch_2736 ::
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny
d_currentEpoch_2736 v0 ~v1 ~v2 = du_currentEpoch_2736 v0
du_currentEpoch_2736 :: T_RatifyEnv_2474 -> AgdaAny
du_currentEpoch_2736 v0 = coe d_currentEpoch_2492 (coe v0)
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep._.dreps
d_dreps_2738 ::
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2738 v0 ~v1 ~v2 = du_dreps_2738 v0
du_dreps_2738 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2738 v0 = coe d_dreps_2494 (coe v0)
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep._.stakeDistrs
d_stakeDistrs_2740 ::
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  T_StakeDistrs_2462
d_stakeDistrs_2740 v0 ~v1 ~v2 = du_stakeDistrs_2740 v0
du_stakeDistrs_2740 :: T_RatifyEnv_2474 -> T_StakeDistrs_2462
du_stakeDistrs_2740 v0 = coe d_stakeDistrs_2490 (coe v0)
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep._.stakeDistrPools
d_stakeDistrPools_2816 ::
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_2816 v0 ~v1 ~v2 = du_stakeDistrPools_2816 v0
du_stakeDistrPools_2816 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDistrPools_2816 v0
  = coe d_stakeDistrPools_2470 (coe d_stakeDistrs_2490 (coe v0))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep._.stakeDistrVDeleg
d_stakeDistrVDeleg_2818 ::
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_2818 v0 ~v1 ~v2 = du_stakeDistrVDeleg_2818 v0
du_stakeDistrVDeleg_2818 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDistrVDeleg_2818 v0
  = coe d_stakeDistrVDeleg_2468 (coe d_stakeDistrs_2490 (coe v0))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.castVotes
d_castVotes_2836 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2836 ~v0 ~v1 ~v2 v3 = du_castVotes_2836 v3
du_castVotes_2836 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2836 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_966
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_vDelegCredential_936)
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvDRep_928
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_votes_1018
            (coe v0)))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.activeDReps
d_activeDReps_2838 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_2838 v0 v1 ~v2 ~v3 = du_activeDReps_2838 v0 v1
du_activeDReps_2838 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_activeDReps_2838 v0 v1
  = coe
      MAlonzo.Code.Class.IsSet.du_dom_586
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1392
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
              (coe
                 MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
                          (coe v0)))
                    (\ v3 v4 -> v3) (d_currentEpoch_2492 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
                          (coe v0)))
                    (d_currentEpoch_2492 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
                       (coe v0)))
                 (coe d_currentEpoch_2492 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_2494 (coe v1)))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.predeterminedDRepVotes
d_predeterminedDRepVotes_2844 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_predeterminedDRepVotes_2844 v0 ~v1 ~v2 v3
  = du_predeterminedDRepVotes_2844 v0 v3
du_predeterminedDRepVotes_2844 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_predeterminedDRepVotes_2844 v0 v1
  = let v2
          = MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gaType_836
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_1024
                 (coe v1)) in
    coe
      (let v3
             = coe
                 MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased
                    (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
                          (coe v0))))
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_vDelegAbstain_938)
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_abstain_872)))
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_vDelegNoConfidence_940)
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_no_870))) in
       coe
         (case coe v2 of
            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_NoConfidence_798
              -> coe
                   MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1516
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                      erased
                      (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
                         (coe
                            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_vDelegAbstain_938)
                         (coe
                            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_abstain_872)))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_844
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_vDelegNoConfidence_940)
                         (coe
                            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_yes_868)))
            _ -> coe v3))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.defaultDRepCredentialVotes
d_defaultDRepCredentialVotes_2848 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_defaultDRepCredentialVotes_2848 v0 v1 ~v2 ~v3
  = du_defaultDRepCredentialVotes_2848 v0 v1
du_defaultDRepCredentialVotes_2848 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_defaultDRepCredentialVotes_2848 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_constMap_1442
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_426
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_vDelegCredential_936)
         (coe du_activeDReps_2838 (coe v0) (coe v1)))
      (coe MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_no_870)
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.actualVotes
d_actualVotes_2850 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2850 v0 v1 ~v2 v3 = du_actualVotes_2850 v0 v1 v3
du_actualVotes_2850 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualVotes_2850 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
               (coe v0))))
      (coe du_castVotes_2836 (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
                  (coe v0))))
         (coe du_defaultDRepCredentialVotes_2848 (coe v0) (coe v1))
         (coe du_predeterminedDRepVotes_2844 (coe v0) (coe v2)))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.t
d_t_2852 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_2852 v0 ~v1 v2 v3 = du_t_2852 v0 v2 v3
du_t_2852 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_t_2852 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v3 -> v3))
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         d_threshold_2294 v0
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1114
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_map_64
            (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1108
                  (coe v1))))
         (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_1024
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_DRep_788))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.acceptedStake
d_acceptedStake_2854 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_acceptedStake_2854 v0 v1 ~v2 v3 = du_acceptedStake_2854 v0 v1 v3
du_acceptedStake_2854 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
du_acceptedStake_2854 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1414
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v3 -> v3))
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
            (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
                  (coe v0))))
         (coe d_stakeDistrVDeleg_2468 (coe d_stakeDistrs_2490 (coe v1)))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'Vote_1108))
            (coe du_actualVotes_2850 (coe v0) (coe v1) (coe v2))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_yes_868)))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.totalStake
d_totalStake_2856 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_totalStake_2856 v0 v1 ~v2 v3 = du_totalStake_2856 v0 v1 v3
du_totalStake_2856 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
du_totalStake_2856 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1414
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v3 -> v3))
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
            (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
                  (coe v0))))
         (coe d_stakeDistrVDeleg_2468 (coe d_stakeDistrs_2490 (coe v1)))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__2100
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'Vote_1108))
               (coe du_actualVotes_2850 (coe v0) (coe v1) (coe v2))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_yes_868))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_no_870))))))
-- Ledger.Conway.Specification.Ratify.AcceptedByDRep.accepted
d_accepted_2862 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_accepted_2862 = erased
-- Ledger.Conway.Specification.Ratify.acceptedByDRep
d_acceptedByDRep_2864 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_acceptedByDRep_2864 = erased
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.castVotes
d_castVotes_2900 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2900 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_castVotes_2900 v5
du_castVotes_2900 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2900 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvSPO_930
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_votes_1018
         (coe v0))
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.defaultVote
d_defaultVote_2902 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_866
d_defaultVote_2902 v0 v1 v2 ~v3 ~v4 v5 v6
  = du_defaultVote_2902 v0 v1 v2 v5 v6
du_defaultVote_2902 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_866
du_defaultVote_2902 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe v2) (coe v4)
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased
                    (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                             (coe v0)))))
                 (coe v4)
                 (let v5
                        = MAlonzo.Code.Axiom.Set.d_th_1516
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                  coe
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v5
                       (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))))) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> let v7
                    = coe
                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe v1)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1096
                           (coe v6))
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                           (coe
                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              erased
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                       (coe v0)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1096
                              (coe v6))
                           (let v7
                                  = MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v7
                                 (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v1))))) in
              coe
                (let v8
                       = MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gaType_836
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_1024
                              (coe v3)) in
                 coe
                   (let v9
                          = let v9
                                  = coe
                                      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_no_870 in
                            coe
                              (case coe v7 of
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                                   -> case coe v10 of
                                        MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_vDelegAbstain_938
                                          -> coe
                                               MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_abstain_872
                                        _ -> coe v9
                                 _ -> coe v9) in
                    coe
                      (case coe v8 of
                         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_NoConfidence_798
                           -> case coe v7 of
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                                  -> case coe v10 of
                                       MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_vDelegNoConfidence_940
                                         -> coe
                                              MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_yes_868
                                       _ -> coe v9
                                _ -> coe v9
                         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_TriggerHardFork_804
                           -> coe MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_no_870
                         _ -> coe v9)))
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_no_870
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.actualVotes
d_actualVotes_2912 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2912 v0 v1 v2 v3 ~v4 v5
  = du_actualVotes_2912 v0 v1 v2 v3 v5
du_actualVotes_2912 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualVotes_2912 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                  (coe v0)))))
      (coe du_castVotes_2900 (coe v4))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1274
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_defaultVote_2902 (coe v0) (coe v1) (coe v2) (coe v4))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3)))
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.t
d_t_2914 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_2914 v0 ~v1 ~v2 ~v3 v4 v5 = du_t_2914 v0 v4 v5
du_t_2914 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_t_2914 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v3 -> v3))
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         d_threshold_2294 v0
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1114
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_map_64
            (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1108
                  (coe v1))))
         (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_1024
            (coe v2))
         (coe MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_SPO_790))
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.acceptedStake
d_acceptedStake_2916 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_acceptedStake_2916 v0 v1 v2 v3 ~v4 v5
  = du_acceptedStake_2916 v0 v1 v2 v3 v5
du_acceptedStake_2916 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
du_acceptedStake_2916 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1414
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v5 -> v5))
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
            (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                     (coe v0)))))
         (coe v3)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'Vote_1108))
            (coe
               du_actualVotes_2912 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_yes_868)))
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.totalStake
d_totalStake_2918 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_totalStake_2918 v0 v1 v2 v3 ~v4 v5
  = du_totalStake_2918 v0 v1 v2 v3 v5
du_totalStake_2918 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
du_totalStake_2918 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1414
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v5 -> v5))
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
            (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                     (coe v0)))))
         (coe v3)
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_586
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__2100
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'Vote_1108))
               (coe
                  du_actualVotes_2912 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_yes_868))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_no_870))))))
-- Ledger.Conway.Specification.Ratify.AcceptedBySPO.accepted
d_accepted_2924 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_accepted_2924 = erased
-- Ledger.Conway.Specification.Ratify.acceptedBySPO
d_acceptedBySPO_2926 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_acceptedBySPO_2926 = erased
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2936 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2936 v0 = coe d_ccHotKeys_2496 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_2938 :: T_RatifyEnv_2474 -> AgdaAny
d_currentEpoch_2938 v0 = coe d_currentEpoch_2492 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delegatees
d_delegatees_2940 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2940 v0 = coe d_delegatees_2502 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.dreps
d_dreps_2942 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2942 v0 = coe d_dreps_2494 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.pools
d_pools_2944 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2944 v0 = coe d_pools_2500 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrs
d_stakeDistrs_2946 :: T_RatifyEnv_2474 -> T_StakeDistrs_2462
d_stakeDistrs_2946 v0 = coe d_stakeDistrs_2490 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.treasury
d_treasury_2948 :: T_RatifyEnv_2474 -> Integer
d_treasury_2948 v0 = coe d_treasury_2498 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrPools
d_stakeDistrPools_2952 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_2952 v0
  = coe d_stakeDistrPools_2470 (coe d_stakeDistrs_2490 (coe v0))
-- Ledger.Conway.Specification.Ratify._._.stakeDistrVDeleg
d_stakeDistrVDeleg_2954 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_2954 v0
  = coe d_stakeDistrVDeleg_2468 (coe d_stakeDistrs_2490 (coe v0))
-- Ledger.Conway.Specification.Ratify.accepted
d_accepted_2956 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_accepted_2956 = erased
-- Ledger.Conway.Specification.Ratify.expired
d_expired_2964 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  ()
d_expired_2964 = erased
-- Ledger.Conway.Specification.Ratify.verifyPrev
d_verifyPrev_2972 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  ()
d_verifyPrev_2972 = erased
-- Ledger.Conway.Specification.Ratify.delayingAction
d_delayingAction_2994 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796 ->
  Bool
d_delayingAction_2994 ~v0 v1 = du_delayingAction_2994 v1
du_delayingAction_2994 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796 ->
  Bool
du_delayingAction_2994 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_NoConfidence_798
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_UpdateCommittee_800
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_NewConstitution_802
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_TriggerHardFork_804
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_ChangePParams_806
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_TreasuryWithdrawal_808
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_Info_810
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.delayed
d_delayed_2998 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  Bool -> ()
d_delayed_2998 = erased
-- Ledger.Conway.Specification.Ratify.acceptConds
d_acceptConds_3008 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  T_RatifyState_2506 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_3008 = erased
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_3024 ::
  T_RatifyEnv_2474 ->
  T_RatifyState_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_3024 v0 ~v1 ~v2 ~v3 = du_ccHotKeys_3024 v0
du_ccHotKeys_3024 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_3024 v0 = coe d_ccHotKeys_2496 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_3026 ::
  T_RatifyEnv_2474 ->
  T_RatifyState_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny
d_currentEpoch_3026 v0 ~v1 ~v2 ~v3 = du_currentEpoch_3026 v0
du_currentEpoch_3026 :: T_RatifyEnv_2474 -> AgdaAny
du_currentEpoch_3026 v0 = coe d_currentEpoch_2492 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delegatees
d_delegatees_3028 ::
  T_RatifyEnv_2474 ->
  T_RatifyState_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_3028 v0 ~v1 ~v2 ~v3 = du_delegatees_3028 v0
du_delegatees_3028 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_3028 v0 = coe d_delegatees_2502 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.dreps
d_dreps_3030 ::
  T_RatifyEnv_2474 ->
  T_RatifyState_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_3030 v0 ~v1 ~v2 ~v3 = du_dreps_3030 v0
du_dreps_3030 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_3030 v0 = coe d_dreps_2494 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.pools
d_pools_3032 ::
  T_RatifyEnv_2474 ->
  T_RatifyState_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3032 v0 ~v1 ~v2 ~v3 = du_pools_3032 v0
du_pools_3032 ::
  T_RatifyEnv_2474 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_3032 v0 = coe d_pools_2500 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrs
d_stakeDistrs_3034 ::
  T_RatifyEnv_2474 ->
  T_RatifyState_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  T_StakeDistrs_2462
d_stakeDistrs_3034 v0 ~v1 ~v2 ~v3 = du_stakeDistrs_3034 v0
du_stakeDistrs_3034 :: T_RatifyEnv_2474 -> T_StakeDistrs_2462
du_stakeDistrs_3034 v0 = coe d_stakeDistrs_2490 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.treasury
d_treasury_3036 ::
  T_RatifyEnv_2474 ->
  T_RatifyState_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_treasury_3036 v0 ~v1 ~v2 ~v3 = du_treasury_3036 v0
du_treasury_3036 :: T_RatifyEnv_2474 -> Integer
du_treasury_3036 v0 = coe d_treasury_2498 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delay
d_delay_3040 ::
  T_RatifyEnv_2474 ->
  T_RatifyState_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  Bool
d_delay_3040 ~v0 v1 ~v2 ~v3 = du_delay_3040 v1
du_delay_3040 :: T_RatifyState_2506 -> Bool
du_delay_3040 v0 = coe d_delay_2518 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.es
d_es_3042 ::
  T_RatifyEnv_2474 ->
  T_RatifyState_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
d_es_3042 ~v0 v1 ~v2 ~v3 = du_es_3042 v1
du_es_3042 ::
  T_RatifyState_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
du_es_3042 v0 = coe d_es_2514 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.removed
d_removed_3044 ::
  T_RatifyEnv_2474 ->
  T_RatifyState_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_3044 ~v0 v1 ~v2 ~v3 = du_removed_3044 v1
du_removed_3044 ::
  T_RatifyState_2506 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_3044 v0 = coe d_removed_2516 (coe v0)
-- Ledger.Conway.Specification.Ratify.verifyPrev?
d_verifyPrev'63'_3066 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_3066 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_NoConfidence_798
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1272
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1108
                      (coe v3))))
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_UpdateCommittee_800
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1272
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1108
                      (coe v3))))
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_NewConstitution_802
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1272
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1110
                      (coe v3))))
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_TriggerHardFork_804
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1272
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1112
                      (coe v3))))
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_ChangePParams_806
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1272
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1114
                      (coe v3))))
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_TreasuryWithdrawal_808
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_Info_810
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.delayed?
d_delayed'63'_3104 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_3104 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
         (coe d_verifyPrev'63'_3066 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
            (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe v4) (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Specification.Ratify.Is-nothing?
d_Is'45'nothing'63'_3120 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_3120 ~v0 ~v1 v2 = du_Is'45'nothing'63'_3120 v2
du_Is'45'nothing'63'_3120 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_3120 v0
  = coe
      MAlonzo.Code.Data.Maybe.Relation.Unary.All.du_dec_254
      (let v1
             = coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26) in
       coe (coe (\ v2 -> v1)))
      (coe v0)
-- Ledger.Conway.Specification.Ratify.accepted?
d_accepted'63'_3134 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_3134 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe du_acceptedByCC'63'_3152 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe
            du_acceptedByDRep'63'_3160 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            du_acceptedBySPO'63'_3168 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Conway.Specification.Ratify._.acceptedByCC?
d_acceptedByCC'63'_3152 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByCC'63'_3152 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_acceptedByCC'63'_3152 v0 v4 v5 v6
du_acceptedByCC'63'_3152 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_acceptedByCC'63'_3152 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe
         MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
         (coe du_t_2688 (coe v0) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
            (coe
               d_acceptedStake_2692 (coe v0) (coe d_currentEpoch_2492 (coe v1))
               (coe d_ccHotKeys_2496 (coe v1)) (coe v2) (coe v3))
            (coe
               d_totalStake_2694 (coe v0) (coe d_currentEpoch_2492 (coe v1))
               (coe d_ccHotKeys_2496 (coe v1)) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
         (coe
            MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2926
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_maybe_32
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_length'738'_1186
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                   (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
                                (coe v0))))
                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
               (coe (0 :: Integer))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1108
                     (coe v2))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1114
                     (coe v2)))))
         (coe
            du_Is'45'nothing'63'_3120
            (coe du_mT_2686 (coe v0) (coe v2) (coe v3))))
-- Ledger.Conway.Specification.Ratify._.acceptedByDRep?
d_acceptedByDRep'63'_3160 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByDRep'63'_3160 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_acceptedByDRep'63'_3160 v0 v4 v5 v6
du_acceptedByDRep'63'_3160 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_acceptedByDRep'63'_3160 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
      (coe du_t_2852 (coe v0) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
         (coe du_acceptedStake_2854 (coe v0) (coe v1) (coe v3))
         (coe du_totalStake_2856 (coe v0) (coe v1) (coe v3)))
-- Ledger.Conway.Specification.Ratify._.acceptedBySPO?
d_acceptedBySPO'63'_3168 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBySPO'63'_3168 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_acceptedBySPO'63'_3168 v0 v4 v5 v6
du_acceptedBySPO'63'_3168 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_acceptedBySPO'63'_3168 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
      (coe du_t_2914 (coe v0) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
         (coe
            du_acceptedStake_2916 (coe v0) (coe d_delegatees_2502 (coe v1))
            (coe d_pools_2500 (coe v1))
            (coe d_stakeDistrPools_2470 (coe d_stakeDistrs_2490 (coe v1)))
            (coe v3))
         (coe
            du_totalStake_2918 (coe v0) (coe d_delegatees_2502 (coe v1))
            (coe d_pools_2500 (coe v1))
            (coe d_stakeDistrPools_2470 (coe d_stakeDistrs_2490 (coe v1)))
            (coe v3)))
-- Ledger.Conway.Specification.Ratify.expired?
d_expired'63'_3174 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_3174 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.d_dec_16
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
                  (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_expiresIn_1022
               (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
                  (coe v0)))
            (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_expiresIn_1022
               (coe v2))
            v1))
-- Ledger.Conway.Specification.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__3192 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'RATIFY'10632'__3192
  = C_RATIFY'45'Accept_3204 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_3212 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_3220 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ratify._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__3222 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2474 ->
  T_RatifyState_2506 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_2506 -> ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__3222 = erased
