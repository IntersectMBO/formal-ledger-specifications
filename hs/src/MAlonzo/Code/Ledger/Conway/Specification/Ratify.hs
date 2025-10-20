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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
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
d_DecEq'45'Credential_94 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_94 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
            (coe v0)))
-- _.Epoch
d_Epoch_162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_162 = erased
-- _.GovAction
d_GovAction_168 a0 = ()
-- _.GovActionID
d_GovActionID_174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_174 = erased
-- _.GovActionState
d_GovActionState_178 a0 = ()
-- _.GovActionType
d_GovActionType_182 a0 = ()
-- _.GovRole
d_GovRole_196 a0 = ()
-- _.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_894
d_HasGovAction'45'GovActionState_254 ~v0
  = du_HasGovAction'45'GovActionState_254
du_HasGovAction'45'GovActionState_254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_894
du_HasGovAction'45'GovActionState_254
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1094
-- _.THash
d_THash_364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_364 = erased
-- _.NeedsHash
d_NeedsHash_378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  ()
d_NeedsHash_378 = erased
-- _.PParamGroup
d_PParamGroup_406 a0 = ()
-- _.PParams
d_PParams_408 a0 = ()
-- _.UpdateT
d_UpdateT_418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UpdateT_418 = erased
-- _.VDeleg
d_VDeleg_584 a0 = ()
-- _.VoteDelegs
d_VoteDelegs_600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VoteDelegs_600 = erased
-- _.preoEpoch
d_preoEpoch_732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_732 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
         (coe v0))
-- _.GovAction.gaData
d_gaData_862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_880 ->
  AgdaAny
d_gaData_862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_888
      (coe v0)
-- _.GovAction.gaType
d_gaType_864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_880 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826
d_gaType_864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_886
      (coe v0)
-- _.GovActionState.action
d_action_868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_880
d_action_868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1020
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  AgdaAny
d_expiresIn_870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1018
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  AgdaAny
d_prevAction_872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1022
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1016
      (coe v0)
-- _.GovActionState.votes
d_votes_876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_986
d_votes_876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1014
      (coe v0)
-- _.GovActions.GovAction
d_GovAction_916 a0 = ()
-- _.GovActions.GovActionState
d_GovActionState_926 a0 = ()
-- _.GovActions.GovActionType
d_GovActionType_930 a0 = ()
-- _.GovActions.GovRole
d_GovRole_938 a0 = ()
-- _.GovActions.VDeleg
d_VDeleg_1030 a0 = ()
-- _.PParams.Emax
d_Emax_1294 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_Emax_1294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_388
      (coe v0)
-- _.PParams.a
d_a_1296 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_a_1296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_360 (coe v0)
-- _.PParams.a0
d_a0_1298 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_392 (coe v0)
-- _.PParams.b
d_b_1300 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_b_1300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_362 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1302 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_ccMaxTermLength_1302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_404
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1304 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_ccMinSize_1304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_402
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1306 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_coinsPerUTxOByte_1306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_372
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1308 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_collateralPercentage_1308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_394
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1310 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_costmdls_1310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_396
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1312 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_drepActivity_1312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_412
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1314 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_drepDeposit_1314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_410
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1316 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204
d_drepThresholds_1316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_400
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1318 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_govActionDeposit_1318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_408
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1320 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_govActionLifetime_1320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_406
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1322 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_keyDeposit_1322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1324 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_maxBlockExUnits_1324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_352
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1326 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxBlockSize_1326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_344
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1328 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxCollateralInputs_1328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_356
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1330 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxHeaderSize_1330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_348
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1332 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxRefScriptSizePerBlock_1332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_380
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1334 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxRefScriptSizePerTx_1334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_378
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1336 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_maxTxExUnits_1336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_350
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1338 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxTxSize_1338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_346
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1340 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxValSize_1340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_354
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1342 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_376
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1344 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_minUTxOValue_1344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_386
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1346 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_368
      (coe v0)
-- _.PParams.nopt
d_nopt_1348 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_nopt_1348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_390
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_poolDeposit_1350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1352 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_248
d_poolThresholds_1352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_398
      (coe v0)
-- _.PParams.prices
d_prices_1354 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_prices_1354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_374
      (coe v0)
-- _.PParams.pv
d_pv_1356 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_358 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_384
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_382
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_370
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams
d_StakePoolParams_2082 a0 = ()
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.cost
d_cost_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1072 ->
  Integer
d_cost_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1086 (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.margin
d_margin_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1072 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1088
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.owners
d_owners_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1072 ->
  [AgdaAny]
d_owners_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1084
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.pledge
d_pledge_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1072 ->
  Integer
d_pledge_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1090
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.rewardAccount
d_rewardAccount_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1072 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1092
      (coe v0)
-- Ledger.Conway.Specification.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__2292 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Ratify._.EnactState
d_EnactState_2312 a0 = ()
-- Ledger.Conway.Specification.Ratify._.EnactStateOf
d_EnactStateOf_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1120 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092
d_EnactStateOf_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1128
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_2318 ~v0 = du_HasCast'45'EnactEnv_2318
du_HasCast'45'EnactEnv_2318 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EnactEnv_2318
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasCast'45'EnactEnv_1142
-- Ledger.Conway.Specification.Ratify._.HasEnactState
d_HasEnactState_2320 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Ratify._.EnactState.cc
d_cc_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1104 (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.constitution
d_constitution_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1106
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.pparams
d_pparams_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1110
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.pv
d_pv_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1108 (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.withdrawals
d_withdrawals_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1112
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.HasEnactState.EnactStateOf
d_EnactStateOf_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1120 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092
d_EnactStateOf_2374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1128
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.Vote
d_Vote_2378 a0 = ()
-- Ledger.Conway.Specification.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_780 ->
  AgdaAny
d_'8739'_'8739'_'8739'_'8739'_2390 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_2390 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_2390 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_780 ->
  AgdaAny
du_'8739'_'8739'_'8739'_'8739'_2390 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_782
        -> coe v0
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_784
        -> coe v1
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_786
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_780 ->
  AgdaAny
d_'8739'_'8741'_'8739'_2402 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_2402 v2 v3
du_'8739'_'8741'_'8739'_2402 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_780 ->
  AgdaAny
du_'8739'_'8741'_'8739'_2402 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_782
                    -> coe v0
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_784
                    -> coe v2
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_786
                    -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.vote
d_vote_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_2412 ~v0 = du_vote_2412
du_vote_2412 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_2412 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Conway.Specification.Ratify.defer
d_defer_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_2414 ~v0 = du_defer_2414
du_defer_2414 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_2414
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Conway.Specification.Ratify.maxThreshold
d_maxThreshold_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_2416 ~v0 v1 = du_maxThreshold_2416 v1
du_maxThreshold_2416 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_2416 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230 (coe du_comb_2424)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1166
            v0))
-- Ledger.Conway.Specification.Ratify._.comb
d_comb_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_comb_2424 ~v0 ~v1 v2 v3 = du_comb_2424 v2 v3
du_comb_2424 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_comb_2424 v0 v1
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
-- Ledger.Conway.Specification.Ratify.─
d_'9472'_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_2434 ~v0 = du_'9472'_2434
du_'9472'_2434 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_2434 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Conway.Specification.Ratify.✓†
d_'10003''8224'_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_2436 ~v0 = du_'10003''8224'_2436
du_'10003''8224'_2436 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_2436 = coe du_vote_2412 (coe du_defer_2414)
-- Ledger.Conway.Specification.Ratify.threshold
d_threshold_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_880 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_780 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_2438 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_910)
              v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_828
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2390 (coe du_'9472'_2434)
                       (coe
                          du_vote_2412
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_226
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_400
                                (coe v1))))
                       (coe
                          du_vote_2412
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_260
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_398
                                (coe v1))))
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_830
                  -> coe
                       du_'8739'_'8741'_'8739'_2402 (coe du_'9472'_2434)
                       (coe du_P'47'Q2a'47'b_2558 (coe v1) (coe v2))
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_832
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2390 (coe du_'10003'_2556 (coe v2))
                       (coe
                          du_vote_2412
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_232
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_400
                                (coe v1))))
                       (coe du_'9472'_2434)
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_834
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2390 (coe du_'10003'_2556 (coe v2))
                       (coe
                          du_vote_2412
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_234
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_400
                                (coe v1))))
                       (coe
                          du_vote_2412
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_266
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_398
                                (coe v1))))
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_836
                  -> coe
                       du_'8739'_'8741'_'8739'_2402 (coe du_'10003'_2556 (coe v2))
                       (coe du_P'47'Q5_2564 (coe v0) (coe v1) (coe v6))
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_838
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2390 (coe du_'10003'_2556 (coe v2))
                       (coe
                          du_vote_2412
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_244
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_400
                                (coe v1))))
                       (coe du_'9472'_2434)
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_840
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2390 (coe du_'10003''8224'_2436)
                       (coe du_'10003''8224'_2436) (coe du_'10003''8224'_2436)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Ratify._.✓
d_'10003'_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_880 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_2556 ~v0 ~v1 v2 ~v3 = du_'10003'_2556 v2
du_'10003'_2556 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_2556 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
      (coe du_'10003''8224'_2436) (coe v0)
-- Ledger.Conway.Specification.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_2558 ~v0 v1 v2 ~v3 = du_P'47'Q2a'47'b_2558 v1 v2
du_P'47'Q2a'47'b_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_2558 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_228
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_400
                      (coe v0))))
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_262
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_398
                      (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_230
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_400
                      (coe v0))))
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_264
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_398
                      (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.pparamThreshold
d_pparamThreshold_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_880 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_192 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_2562 ~v0 v1 ~v2 ~v3 v4
  = du_pparamThreshold_2562 v1 v4
du_pparamThreshold_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_192 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_2562 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_NetworkGroup_194
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_236
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_400
                      (coe v0))))
             (coe du_'9472'_2434)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_EconomicGroup_196
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_238
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_400
                      (coe v0))))
             (coe du_'9472'_2434)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_TechnicalGroup_198
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_240
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_400
                      (coe v0))))
             (coe du_'9472'_2434)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_GovernanceGroup_200
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_242
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_400
                      (coe v0))))
             (coe du_'9472'_2434)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_SecurityGroup_202
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_2434)
             (coe
                du_vote_2412
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_268
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_398
                      (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.P/Q5
d_P'47'Q5_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_880 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_2564 v0 v1 ~v2 ~v3 v4 = du_P'47'Q5_2564 v0 v1 v4
du_P'47'Q5_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_2564 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_2416
         (coe
            MAlonzo.Code.Axiom.Set.du_map_400
            (MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_2562 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1480
               (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1514
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2360
                     (coe v0)))
               v2)))
      (coe
         du_maxThreshold_2416
         (coe
            MAlonzo.Code.Axiom.Set.du_map_400
            (MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_2562 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1480
               (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1514
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2360
                     (coe v0)))
               v2)))
-- Ledger.Conway.Specification.Ratify.canVote
d_canVote_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_880 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_780 ->
  ()
d_canVote_2572 = erased
-- Ledger.Conway.Specification.Ratify.StakeDistrs
d_StakeDistrs_2580 a0 = ()
data T_StakeDistrs_2580
  = C_constructor_2590 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ratify.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_2586 ::
  T_StakeDistrs_2580 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_2586 v0
  = case coe v0 of
      C_constructor_2590 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.StakeDistrs.stakeDistrPools
d_stakeDistrPools_2588 ::
  T_StakeDistrs_2580 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_2588 v0
  = case coe v0 of
      C_constructor_2590 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv
d_RatifyEnv_2592 a0 = ()
data T_RatifyEnv_2592
  = C_constructor_2622 T_StakeDistrs_2580 AgdaAny
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_2608 :: T_RatifyEnv_2592 -> T_StakeDistrs_2580
d_stakeDistrs_2608 v0
  = case coe v0 of
      C_constructor_2622 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_2610 :: T_RatifyEnv_2592 -> AgdaAny
d_currentEpoch_2610 v0
  = case coe v0 of
      C_constructor_2622 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.dreps
d_dreps_2612 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2612 v0
  = case coe v0 of
      C_constructor_2622 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_2614 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2614 v0
  = case coe v0 of
      C_constructor_2622 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.treasury
d_treasury_2616 :: T_RatifyEnv_2592 -> Integer
d_treasury_2616 v0
  = case coe v0 of
      C_constructor_2622 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.pools
d_pools_2618 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2618 v0
  = case coe v0 of
      C_constructor_2622 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.delegatees
d_delegatees_2620 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2620 v0
  = case coe v0 of
      C_constructor_2622 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyState
d_RatifyState_2624 a0 = ()
data T_RatifyState_2624
  = C_constructor_2638 MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Conway.Specification.Ratify.RatifyState.es
d_es_2632 ::
  T_RatifyState_2624 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092
d_es_2632 v0
  = case coe v0 of
      C_constructor_2638 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyState.removed
d_removed_2634 ::
  T_RatifyState_2624 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2634 v0
  = case coe v0 of
      C_constructor_2638 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyState.delay
d_delay_2636 :: T_RatifyState_2624 -> Bool
d_delay_2636 v0
  = case coe v0 of
      C_constructor_2638 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.HasRatifyState
d_HasRatifyState_2644 a0 a1 a2 = ()
newtype T_HasRatifyState_2644
  = C_constructor_2654 (AgdaAny -> T_RatifyState_2624)
-- Ledger.Conway.Specification.Ratify.HasRatifyState.RatifyStateOf
d_RatifyStateOf_2652 ::
  T_HasRatifyState_2644 -> AgdaAny -> T_RatifyState_2624
d_RatifyStateOf_2652 v0
  = case coe v0 of
      C_constructor_2654 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.RatifyStateOf
d_RatifyStateOf_2658 ::
  T_HasRatifyState_2644 -> AgdaAny -> T_RatifyState_2624
d_RatifyStateOf_2658 v0 = coe d_RatifyStateOf_2652 (coe v0)
-- Ledger.Conway.Specification.Ratify.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1120
d_HasEnactState'45'RatifyState_2660 ~v0
  = du_HasEnactState'45'RatifyState_2660
du_HasEnactState'45'RatifyState_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1120
du_HasEnactState'45'RatifyState_2660
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1130
      (coe (\ v0 -> d_es_2632 (coe v0)))
-- Ledger.Conway.Specification.Ratify.HasTreasury-RatifyEnv
d_HasTreasury'45'RatifyEnv_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'RatifyEnv_2662 ~v0
  = du_HasTreasury'45'RatifyEnv_2662
du_HasTreasury'45'RatifyEnv_2662 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'RatifyEnv_2662
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe (\ v0 -> d_treasury_2616 (coe v0)))
-- Ledger.Conway.Specification.Ratify.HasCast-StakeDistrs
d_HasCast'45'StakeDistrs_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakeDistrs_2664 ~v0 = du_HasCast'45'StakeDistrs_2664
du_HasCast'45'StakeDistrs_2664 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'StakeDistrs_2664
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
                                 (2580 :: Integer) (11046137501266703203 :: Integer)
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
                                 (180 :: Integer) (9254951203007797098 :: Integer)
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
                                          (584 :: Integer) (11046137501266703203 :: Integer)
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
                                    (2580 :: Integer) (11046137501266703203 :: Integer)
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
                                    (180 :: Integer) (9254951203007797098 :: Integer)
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
                                             (364 :: Integer) (11046137501266703203 :: Integer)
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
         (coe C_constructor_2590))
-- Ledger.Conway.Specification.Ratify.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_2666 ~v0 = du_HasCast'45'RatifyEnv_2666
du_HasCast'45'RatifyEnv_2666 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyEnv_2666
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
                                 (2592 :: Integer) (11046137501266703203 :: Integer)
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
                                 (2580 :: Integer) (11046137501266703203 :: Integer)
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
                                    (2592 :: Integer) (11046137501266703203 :: Integer)
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
                                    (162 :: Integer) (11046137501266703203 :: Integer) "_.Epoch"
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
                                       (2592 :: Integer) (11046137501266703203 :: Integer)
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
                                       (180 :: Integer) (9254951203007797098 :: Integer)
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
                                                   (162 :: Integer)
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
                                          (2592 :: Integer) (11046137501266703203 :: Integer)
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
                                          (180 :: Integer) (9254951203007797098 :: Integer)
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
                                             (2592 :: Integer) (11046137501266703203 :: Integer)
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
                                                (2592 :: Integer) (11046137501266703203 :: Integer)
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
                                                (180 :: Integer) (9254951203007797098 :: Integer)
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
                                                         (364 :: Integer)
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
                                                            (2082 :: Integer)
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
                                                   (2592 :: Integer)
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
                                                   (600 :: Integer)
                                                   (11046137501266703203 :: Integer) "_.VoteDelegs"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
         (coe C_constructor_2622))
-- Ledger.Conway.Specification.Ratify.HasCast-RatifyState
d_HasCast'45'RatifyState_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_2668 ~v0 = du_HasCast'45'RatifyState_2668
du_HasCast'45'RatifyState_2668 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_2668
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
                                 (2624 :: Integer) (11046137501266703203 :: Integer)
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
                                 (2312 :: Integer) (11046137501266703203 :: Integer)
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
                                    (2624 :: Integer) (11046137501266703203 :: Integer)
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
                                                            (174 :: Integer)
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
                                                               (178 :: Integer)
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
                                       (2624 :: Integer) (11046137501266703203 :: Integer)
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
         (coe C_constructor_2638))
-- Ledger.Conway.Specification.Ratify.acceptedByCC
d_acceptedByCC_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  ()
d_acceptedByCC_2670 = erased
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2690 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2690 v0 ~v1 ~v2 = du_ccHotKeys_2690 v0
du_ccHotKeys_2690 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2690 v0 = coe d_ccHotKeys_2614 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_2692 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  AgdaAny
d_currentEpoch_2692 v0 ~v1 ~v2 = du_currentEpoch_2692 v0
du_currentEpoch_2692 :: T_RatifyEnv_2592 -> AgdaAny
du_currentEpoch_2692 v0 = coe d_currentEpoch_2610 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delegatees
d_delegatees_2694 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2694 v0 ~v1 ~v2 = du_delegatees_2694 v0
du_delegatees_2694 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2694 v0 = coe d_delegatees_2620 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.dreps
d_dreps_2696 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2696 v0 ~v1 ~v2 = du_dreps_2696 v0
du_dreps_2696 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2696 v0 = coe d_dreps_2612 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.pools
d_pools_2698 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2698 v0 ~v1 ~v2 = du_pools_2698 v0
du_pools_2698 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2698 v0 = coe d_pools_2618 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrs
d_stakeDistrs_2700 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  T_StakeDistrs_2580
d_stakeDistrs_2700 v0 ~v1 ~v2 = du_stakeDistrs_2700 v0
du_stakeDistrs_2700 :: T_RatifyEnv_2592 -> T_StakeDistrs_2580
du_stakeDistrs_2700 v0 = coe d_stakeDistrs_2608 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.treasury
d_treasury_2702 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Integer
d_treasury_2702 v0 ~v1 ~v2 = du_treasury_2702 v0
du_treasury_2702 :: T_RatifyEnv_2592 -> Integer
du_treasury_2702 v0 = coe d_treasury_2616 (coe v0)
-- Ledger.Conway.Specification.Ratify._.castVotes
d_castVotes_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2792 ~v0 ~v1 ~v2 v3 = du_castVotes_2792 v3
du_castVotes_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_994
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1014
         (coe v0))
-- Ledger.Conway.Specification.Ratify._.getCCHotCred
d_getCCHotCred_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCred_2794 v0 v1 ~v2 ~v3 v4
  = du_getCCHotCred_2794 v0 v1 v4
du_getCCHotCred_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getCCHotCred_2794 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Class.ToBool.du_if_then_else__38
             (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
             (coe
                MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
                (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_68
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                      (coe v0)))
                (coe
                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                   (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_74
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                         (coe v0)))
                   (\ v5 v6 -> v5) v4 (d_currentEpoch_2610 (coe v1)))
                (coe
                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                   (\ v5 v6 -> v6)
                   (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_74
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                         (coe v0)))
                   v4 (d_currentEpoch_2610 (coe v1))))
             (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
             (coe
                (\ v5 ->
                   let v6
                         = coe
                             MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1954
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe d_ccHotKeys_2614 (coe v1)) (coe v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                         (coe v0))))
                                (coe v3)
                                (let v6
                                       = MAlonzo.Code.Axiom.Set.d_th_1480
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Rel.du_dom_346 v6
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                                         (coe d_ccHotKeys_2614 (coe v1)))))) in
                   coe
                     (case coe v6 of
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                          -> case coe v7 of
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8 -> coe v7
                               _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                        _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.actualVote
d_actualVote_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_928
d_actualVote_2804 v0 v1 ~v2 v3 v4 v5
  = du_actualVote_2804 v0 v1 v3 v4 v5
du_actualVote_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_928
du_actualVote_2804 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_getCCHotCred_2794 (coe v0) (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v7 -> v7))
                (coe MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_932)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1954
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1480
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe du_castVotes_2792 (coe v2)) (coe v6)
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         erased
                         (coe
                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                            (coe
                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                     (coe v0))))
                            (coe
                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                  (coe v0)))))
                      (coe v6)
                      (let v7
                             = MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_346 v7
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                               (coe du_castVotes_2792 (coe v2)))))))
         _ -> coe
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_934)
-- Ledger.Conway.Specification.Ratify._.actualVotes
d_actualVotes_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2814 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1104
                 (coe v2)) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
           -> case coe v5 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                  -> coe
                       MAlonzo.Code.Class.ToBool.du_if_then_else__38
                       (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
                       (coe
                          MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_402
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1110
                                   (coe v2))))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_length'738'_1174
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
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                               (coe v0))))
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                         (coe v0)))))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1446
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe du_getCCHotCred_2794 (coe v0) (coe v1))
                                (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_560 (coe v6)))))
                       (coe
                          (\ v8 ->
                             coe
                               MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1312
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe du_actualVote_2804 (coe v0) (coe v1) (coe v3)) (coe v6)))
                       (coe
                          (\ v8 ->
                             coe
                               MAlonzo.Code.Axiom.Set.Map.du_constMap_1348
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_580
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588) (coe v6))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_932)))
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_588
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Ratify._.mT
d_mT_2820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_2820 v0 ~v1 v2 v3 = du_mT_2820 v0 v2 v3
du_mT_2820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mT_2820 v0 v1 v2
  = coe
      d_threshold_2438 v0
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1110
            (coe v1)))
      (coe
         MAlonzo.Code.Data.Maybe.Base.du_map_64
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1104
               (coe v1))))
      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1020
         (coe v2))
      (coe MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_782)
-- Ledger.Conway.Specification.Ratify._.t
d_t_2822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_2822 v0 ~v1 v2 v3 = du_t_2822 v0 v2 v3
du_t_2822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_t_2822 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v3 -> v3))
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe du_mT_2820 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Ratify._.stakeDistr
d_stakeDistr_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2824 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_constMap_1348
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_580
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
         (coe d_actualVotes_2814 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe (1 :: Integer))
-- Ledger.Conway.Specification.Ratify._.acceptedStake
d_acceptedStake_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Integer
d_acceptedStake_2826 v0 v1 v2 v3
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1276
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v4 -> v4))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1532
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                     (coe v0)))))
         (coe d_stakeDistr_2824 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2022
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1104))
            (coe d_actualVotes_2814 (coe v0) (coe v1) (coe v2) (coe v3))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_930)))
-- Ledger.Conway.Specification.Ratify._.totalStake
d_totalStake_2828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Integer
d_totalStake_2828 v0 v1 v2 v3
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1276
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v4 -> v4))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1532
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                     (coe v0)))))
         (coe d_stakeDistr_2824 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_580
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__2006
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1104))
               (coe d_actualVotes_2814 (coe v0) (coe v1) (coe v2) (coe v3))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__682
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                     (MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_930))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                     (MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_932))))))
-- Ledger.Conway.Specification.Ratify.acceptedByDRep
d_acceptedByDRep_2838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  ()
d_acceptedByDRep_2838 = erased
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2858 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2858 v0 ~v1 ~v2 = du_ccHotKeys_2858 v0
du_ccHotKeys_2858 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2858 v0 = coe d_ccHotKeys_2614 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_2860 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  AgdaAny
d_currentEpoch_2860 v0 ~v1 ~v2 = du_currentEpoch_2860 v0
du_currentEpoch_2860 :: T_RatifyEnv_2592 -> AgdaAny
du_currentEpoch_2860 v0 = coe d_currentEpoch_2610 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delegatees
d_delegatees_2862 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2862 v0 ~v1 ~v2 = du_delegatees_2862 v0
du_delegatees_2862 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2862 v0 = coe d_delegatees_2620 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.dreps
d_dreps_2864 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2864 v0 ~v1 ~v2 = du_dreps_2864 v0
du_dreps_2864 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2864 v0 = coe d_dreps_2612 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.pools
d_pools_2866 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2866 v0 ~v1 ~v2 = du_pools_2866 v0
du_pools_2866 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2866 v0 = coe d_pools_2618 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrs
d_stakeDistrs_2868 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  T_StakeDistrs_2580
d_stakeDistrs_2868 v0 ~v1 ~v2 = du_stakeDistrs_2868 v0
du_stakeDistrs_2868 :: T_RatifyEnv_2592 -> T_StakeDistrs_2580
du_stakeDistrs_2868 v0 = coe d_stakeDistrs_2608 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.treasury
d_treasury_2870 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Integer
d_treasury_2870 v0 ~v1 ~v2 = du_treasury_2870 v0
du_treasury_2870 :: T_RatifyEnv_2592 -> Integer
du_treasury_2870 v0 = coe d_treasury_2616 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrPools
d_stakeDistrPools_2946 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_2946 v0 ~v1 ~v2 = du_stakeDistrPools_2946 v0
du_stakeDistrPools_2946 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDistrPools_2946 v0
  = coe d_stakeDistrPools_2588 (coe d_stakeDistrs_2608 (coe v0))
-- Ledger.Conway.Specification.Ratify._._.stakeDistrVDeleg
d_stakeDistrVDeleg_2948 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_2948 v0 ~v1 ~v2 = du_stakeDistrVDeleg_2948 v0
du_stakeDistrVDeleg_2948 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDistrVDeleg_2948 v0
  = coe d_stakeDistrVDeleg_2586 (coe d_stakeDistrs_2608 (coe v0))
-- Ledger.Conway.Specification.Ratify._.castVotes
d_castVotes_2966 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_2966 ~v0 ~v1 ~v2 v3 = du_castVotes_2966 v3
du_castVotes_2966 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_2966 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_956
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_804)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_996
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1014
            (coe v0)))
-- Ledger.Conway.Specification.Ratify._.activeDReps
d_activeDReps_2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_2968 v0 v1 ~v2 ~v3 = du_activeDReps_2968 v0 v1
du_activeDReps_2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_activeDReps_2968 v0 v1
  = coe
      MAlonzo.Code.Class.IsSet.du_dom_580
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1254
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
              (coe
                 MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_68
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_74
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                          (coe v0)))
                    (\ v3 v4 -> v3) (d_currentEpoch_2610 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_74
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                          (coe v0)))
                    (d_currentEpoch_2610 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                       (coe v0)))
                 (coe d_currentEpoch_2610 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_2612 (coe v1)))
-- Ledger.Conway.Specification.Ratify._.predeterminedDRepVotes
d_predeterminedDRepVotes_2974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_predeterminedDRepVotes_2974 v0 ~v1 ~v2 v3
  = du_predeterminedDRepVotes_2974 v0 v3
du_predeterminedDRepVotes_2974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_predeterminedDRepVotes_2974 v0 v1
  = let v2
          = MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_886
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1020
                 (coe v1)) in
    coe
      (let v3
             = coe
                 MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1480
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased
                    (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1106
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                          (coe v0))))
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_834
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_806)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_934)))
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_834
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_808)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_932))) in
       coe
         (case coe v2 of
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_828
              -> coe
                   MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1480
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                      erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1106
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_834
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1480
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_806)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_934)))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_834
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1480
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_808)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_930)))
            _ -> coe v3))
-- Ledger.Conway.Specification.Ratify._.defaultDRepCredentialVotes
d_defaultDRepCredentialVotes_2978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_defaultDRepCredentialVotes_2978 v0 v1 ~v2 ~v3
  = du_defaultDRepCredentialVotes_2978 v0 v1
du_defaultDRepCredentialVotes_2978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_defaultDRepCredentialVotes_2978 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_constMap_1348
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_400
         (MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_804)
         (coe du_activeDReps_2968 (coe v0) (coe v1)))
      (coe MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_932)
-- Ledger.Conway.Specification.Ratify._.actualVotes
d_actualVotes_2980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2980 v0 v1 ~v2 v3 = du_actualVotes_2980 v0 v1 v3
du_actualVotes_2980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualVotes_2980 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1106
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
               (coe v0))))
      (coe du_castVotes_2966 (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1106
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                  (coe v0))))
         (coe du_defaultDRepCredentialVotes_2978 (coe v0) (coe v1))
         (coe du_predeterminedDRepVotes_2974 (coe v0) (coe v2)))
-- Ledger.Conway.Specification.Ratify._.t
d_t_2982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_2982 v0 ~v1 v2 v3 = du_t_2982 v0 v2 v3
du_t_2982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_t_2982 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v3 -> v3))
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         d_threshold_2438 v0
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1110
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_map_64
            (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1104
                  (coe v1))))
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1020
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_784))
-- Ledger.Conway.Specification.Ratify._.acceptedStake
d_acceptedStake_2984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Integer
d_acceptedStake_2984 v0 v1 ~v2 v3 = du_acceptedStake_2984 v0 v1 v3
du_acceptedStake_2984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Integer
du_acceptedStake_2984 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1276
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1106
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
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
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1532
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1106
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                  (coe v0))))
         (coe d_stakeDistrVDeleg_2586 (coe d_stakeDistrs_2608 (coe v1)))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2022
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1104))
            (coe du_actualVotes_2980 (coe v0) (coe v1) (coe v2))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_930)))
-- Ledger.Conway.Specification.Ratify._.totalStake
d_totalStake_2986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Integer
d_totalStake_2986 v0 v1 ~v2 v3 = du_totalStake_2986 v0 v1 v3
du_totalStake_2986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Integer
du_totalStake_2986 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1276
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1106
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
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
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1532
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1106
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                  (coe v0))))
         (coe d_stakeDistrVDeleg_2586 (coe d_stakeDistrs_2608 (coe v1)))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_580
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__2006
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1104))
               (coe du_actualVotes_2980 (coe v0) (coe v1) (coe v2))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__682
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                     (MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_930))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                     (MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_932))))))
-- Ledger.Conway.Specification.Ratify.acceptedBySPO
d_acceptedBySPO_2992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  ()
d_acceptedBySPO_2992 = erased
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_3012 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_3012 v0 ~v1 ~v2 = du_ccHotKeys_3012 v0
du_ccHotKeys_3012 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_3012 v0 = coe d_ccHotKeys_2614 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_3014 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  AgdaAny
d_currentEpoch_3014 v0 ~v1 ~v2 = du_currentEpoch_3014 v0
du_currentEpoch_3014 :: T_RatifyEnv_2592 -> AgdaAny
du_currentEpoch_3014 v0 = coe d_currentEpoch_2610 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delegatees
d_delegatees_3016 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_3016 v0 ~v1 ~v2 = du_delegatees_3016 v0
du_delegatees_3016 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_3016 v0 = coe d_delegatees_2620 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.dreps
d_dreps_3018 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_3018 v0 ~v1 ~v2 = du_dreps_3018 v0
du_dreps_3018 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_3018 v0 = coe d_dreps_2612 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.pools
d_pools_3020 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3020 v0 ~v1 ~v2 = du_pools_3020 v0
du_pools_3020 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_3020 v0 = coe d_pools_2618 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrs
d_stakeDistrs_3022 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  T_StakeDistrs_2580
d_stakeDistrs_3022 v0 ~v1 ~v2 = du_stakeDistrs_3022 v0
du_stakeDistrs_3022 :: T_RatifyEnv_2592 -> T_StakeDistrs_2580
du_stakeDistrs_3022 v0 = coe d_stakeDistrs_2608 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.treasury
d_treasury_3024 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Integer
d_treasury_3024 v0 ~v1 ~v2 = du_treasury_3024 v0
du_treasury_3024 :: T_RatifyEnv_2592 -> Integer
du_treasury_3024 v0 = coe d_treasury_2616 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrPools
d_stakeDistrPools_3028 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_3028 v0 ~v1 ~v2 = du_stakeDistrPools_3028 v0
du_stakeDistrPools_3028 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDistrPools_3028 v0
  = coe d_stakeDistrPools_2588 (coe d_stakeDistrs_2608 (coe v0))
-- Ledger.Conway.Specification.Ratify._._.stakeDistrVDeleg
d_stakeDistrVDeleg_3030 ::
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_3030 v0 ~v1 ~v2 = du_stakeDistrVDeleg_3030 v0
du_stakeDistrVDeleg_3030 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDistrVDeleg_3030 v0
  = coe d_stakeDistrVDeleg_2586 (coe d_stakeDistrs_2608 (coe v0))
-- Ledger.Conway.Specification.Ratify._.castVotes
d_castVotes_3048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_3048 ~v0 ~v1 ~v2 v3 = du_castVotes_3048 v3
du_castVotes_3048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_castVotes_3048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_998
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1014
         (coe v0))
-- Ledger.Conway.Specification.Ratify._.defaultVote
d_defaultVote_3050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_928
d_defaultVote_3050 v0 v1 ~v2 v3 v4
  = du_defaultVote_3050 v0 v1 v3 v4
du_defaultVote_3050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_928
du_defaultVote_3050 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1954
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe d_pools_2618 (coe v1)) (coe v3)
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased
                    (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                             (coe v0)))))
                 (coe v3)
                 (let v4
                        = MAlonzo.Code.Axiom.Set.d_th_1480
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                  coe
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom_346 v4
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                          (coe d_pools_2618 (coe v1)))))) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
           -> let v6
                    = coe
                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1954
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe d_delegatees_2620 (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1092
                           (coe v5))
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                           (coe
                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              erased
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                       (coe v0)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1092
                              (coe v5))
                           (let v6
                                  = MAlonzo.Code.Axiom.Set.d_th_1480
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Rel.du_dom_346 v6
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                                    (coe d_delegatees_2620 (coe v1)))))) in
              coe
                (let v7
                       = MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_886
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1020
                              (coe v2)) in
                 coe
                   (let v8
                          = let v8
                                  = coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_932 in
                            coe
                              (case coe v6 of
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                                   -> case coe v9 of
                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_806
                                          -> coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_934
                                        _ -> coe v8
                                 _ -> coe v8) in
                    coe
                      (case coe v7 of
                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_828
                           -> case coe v6 of
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                                  -> case coe v9 of
                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_808
                                         -> coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_930
                                       _ -> coe v8
                                _ -> coe v8
                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_834
                           -> coe
                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_932
                         _ -> coe v8)))
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_932
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Ratify._.actualVotes
d_actualVotes_3060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_3060 v0 v1 ~v2 v3 = du_actualVotes_3060 v0 v1 v3
du_actualVotes_3060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualVotes_3060 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                  (coe v0)))))
      (coe du_castVotes_3048 (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1264
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_defaultVote_3050 (coe v0) (coe v1) (coe v2))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_580
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
            (coe d_stakeDistrPools_2588 (coe d_stakeDistrs_2608 (coe v1)))))
-- Ledger.Conway.Specification.Ratify._.t
d_t_3062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_3062 v0 ~v1 v2 v3 = du_t_3062 v0 v2 v3
du_t_3062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_t_3062 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v3 -> v3))
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         d_threshold_2438 v0
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1110
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_map_64
            (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1104
                  (coe v1))))
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1020
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_786))
-- Ledger.Conway.Specification.Ratify._.acceptedStake
d_acceptedStake_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Integer
d_acceptedStake_3064 v0 v1 ~v2 v3 = du_acceptedStake_3064 v0 v1 v3
du_acceptedStake_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Integer
du_acceptedStake_3064 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1276
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v3 -> v3))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1532
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                     (coe v0)))))
         (coe d_stakeDistrPools_2588 (coe d_stakeDistrs_2608 (coe v1)))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2022
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1104))
            (coe du_actualVotes_3060 (coe v0) (coe v1) (coe v2))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_930)))
-- Ledger.Conway.Specification.Ratify._.totalStake
d_totalStake_3066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Integer
d_totalStake_3066 v0 v1 ~v2 v3 = du_totalStake_3066 v0 v1 v3
du_totalStake_3066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Integer
du_totalStake_3066 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1276
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v3 -> v3))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1532
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                     (coe v0)))))
         (coe d_stakeDistrPools_2588 (coe d_stakeDistrs_2608 (coe v1)))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_580
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__2006
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1104))
               (coe du_actualVotes_3060 (coe v0) (coe v1) (coe v2))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__682
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                     (MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_930))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                     (MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_932))))))
-- Ledger.Conway.Specification.Ratify.accepted
d_accepted_3072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  ()
d_accepted_3072 = erased
-- Ledger.Conway.Specification.Ratify.expired
d_expired_3080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  ()
d_expired_3080 = erased
-- Ledger.Conway.Specification.Ratify.verifyPrev
d_verifyPrev_3088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  ()
d_verifyPrev_3088 = erased
-- Ledger.Conway.Specification.Ratify.delayingAction
d_delayingAction_3110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  Bool
d_delayingAction_3110 ~v0 v1 = du_delayingAction_3110 v1
du_delayingAction_3110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  Bool
du_delayingAction_3110 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_828
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_830
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_832
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_834
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_836
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_838
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_840
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.delayed
d_delayed_3114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  Bool -> ()
d_delayed_3114 = erased
-- Ledger.Conway.Specification.Ratify.acceptConds
d_acceptConds_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  T_RatifyState_2624 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_3124 = erased
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_3140 ::
  T_RatifyEnv_2592 ->
  T_RatifyState_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_3140 v0 ~v1 ~v2 ~v3 = du_ccHotKeys_3140 v0
du_ccHotKeys_3140 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_3140 v0 = coe d_ccHotKeys_2614 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_3142 ::
  T_RatifyEnv_2592 ->
  T_RatifyState_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  AgdaAny
d_currentEpoch_3142 v0 ~v1 ~v2 ~v3 = du_currentEpoch_3142 v0
du_currentEpoch_3142 :: T_RatifyEnv_2592 -> AgdaAny
du_currentEpoch_3142 v0 = coe d_currentEpoch_2610 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delegatees
d_delegatees_3144 ::
  T_RatifyEnv_2592 ->
  T_RatifyState_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_3144 v0 ~v1 ~v2 ~v3 = du_delegatees_3144 v0
du_delegatees_3144 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_3144 v0 = coe d_delegatees_2620 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.dreps
d_dreps_3146 ::
  T_RatifyEnv_2592 ->
  T_RatifyState_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_3146 v0 ~v1 ~v2 ~v3 = du_dreps_3146 v0
du_dreps_3146 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_3146 v0 = coe d_dreps_2612 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.pools
d_pools_3148 ::
  T_RatifyEnv_2592 ->
  T_RatifyState_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3148 v0 ~v1 ~v2 ~v3 = du_pools_3148 v0
du_pools_3148 ::
  T_RatifyEnv_2592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_3148 v0 = coe d_pools_2618 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrs
d_stakeDistrs_3150 ::
  T_RatifyEnv_2592 ->
  T_RatifyState_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  T_StakeDistrs_2580
d_stakeDistrs_3150 v0 ~v1 ~v2 ~v3 = du_stakeDistrs_3150 v0
du_stakeDistrs_3150 :: T_RatifyEnv_2592 -> T_StakeDistrs_2580
du_stakeDistrs_3150 v0 = coe d_stakeDistrs_2608 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.treasury
d_treasury_3152 ::
  T_RatifyEnv_2592 ->
  T_RatifyState_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Integer
d_treasury_3152 v0 ~v1 ~v2 ~v3 = du_treasury_3152 v0
du_treasury_3152 :: T_RatifyEnv_2592 -> Integer
du_treasury_3152 v0 = coe d_treasury_2616 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delay
d_delay_3156 ::
  T_RatifyEnv_2592 ->
  T_RatifyState_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  Bool
d_delay_3156 ~v0 v1 ~v2 ~v3 = du_delay_3156 v1
du_delay_3156 :: T_RatifyState_2624 -> Bool
du_delay_3156 v0 = coe d_delay_2636 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.es
d_es_3158 ::
  T_RatifyEnv_2592 ->
  T_RatifyState_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092
d_es_3158 ~v0 v1 ~v2 ~v3 = du_es_3158 v1
du_es_3158 ::
  T_RatifyState_2624 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092
du_es_3158 v0 = coe d_es_2632 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.removed
d_removed_3160 ::
  T_RatifyEnv_2592 ->
  T_RatifyState_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_3160 ~v0 v1 ~v2 ~v3 = du_removed_3160 v1
du_removed_3160 ::
  T_RatifyState_2624 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_3160 v0 = coe d_removed_2634 (coe v0)
-- Ledger.Conway.Specification.Ratify.verifyPrev?
d_verifyPrev'63'_3182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_3182 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_828
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1268
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1104
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_830
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1268
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1104
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_832
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1268
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1106
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_834
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1268
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1108
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_836
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1268
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1110
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_838
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_840
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.delayed?
d_delayed'63'_3220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_3220 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
         (coe d_verifyPrev'63'_3182 (coe v0) (coe v1) (coe v2) (coe v3))
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
d_Is'45'nothing'63'_3236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_3236 ~v0 ~v1 v2 = du_Is'45'nothing'63'_3236 v2
du_Is'45'nothing'63'_3236 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_3236 v0
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
d_accepted'63'_3250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_3250 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe du_acceptedByCC'63'_3268 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe
            du_acceptedByDRep'63'_3276 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            du_acceptedBySPO'63'_3284 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Conway.Specification.Ratify._.acceptedByCC?
d_acceptedByCC'63'_3268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByCC'63'_3268 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_acceptedByCC'63'_3268 v0 v4 v5 v6
du_acceptedByCC'63'_3268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_acceptedByCC'63'_3268 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe
         MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
         (coe du_t_2822 (coe v0) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
            (coe d_acceptedStake_2826 (coe v0) (coe v1) (coe v2) (coe v3))
            (coe d_totalStake_2828 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
         (coe
            MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2926
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_maybe_32
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_length'738'_1174
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                   (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                (coe v0))))
                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
               (coe (0 :: Integer))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1104
                     (coe v2))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_402
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1110
                     (coe v2)))))
         (coe
            du_Is'45'nothing'63'_3236
            (coe du_mT_2820 (coe v0) (coe v2) (coe v3))))
-- Ledger.Conway.Specification.Ratify._.acceptedByDRep?
d_acceptedByDRep'63'_3276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByDRep'63'_3276 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_acceptedByDRep'63'_3276 v0 v4 v5 v6
du_acceptedByDRep'63'_3276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_acceptedByDRep'63'_3276 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
      (coe du_t_2982 (coe v0) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
         (coe du_acceptedStake_2984 (coe v0) (coe v1) (coe v3))
         (coe du_totalStake_2986 (coe v0) (coe v1) (coe v3)))
-- Ledger.Conway.Specification.Ratify._.acceptedBySPO?
d_acceptedBySPO'63'_3284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBySPO'63'_3284 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_acceptedBySPO'63'_3284 v0 v4 v5 v6
du_acceptedBySPO'63'_3284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_acceptedBySPO'63'_3284 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
      (coe du_t_3062 (coe v0) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
         (coe du_acceptedStake_3064 (coe v0) (coe v1) (coe v3))
         (coe du_totalStake_3066 (coe v0) (coe v1) (coe v3)))
-- Ledger.Conway.Specification.Ratify.expired?
d_expired'63'_3290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1002 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_3290 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.d_dec_16
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_68
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
               (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_74
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                  (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1018
               (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_74
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                  (coe v0)))
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1018
               (coe v2))
            v1))
-- Ledger.Conway.Specification.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__3308 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'RATIFY'10632'__3308
  = C_RATIFY'45'Accept_3322 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_3330 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_3338 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ratify._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__3310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2592 ->
  T_RatifyState_2624 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_2624 -> ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__3310 = erased
