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
import qualified MAlonzo.Code.Data.Product.Base
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
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Credential
d_Credential_48 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_190
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
            (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_92 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_92 ~v0 = du_DecEq'45'GovRole_92
du_DecEq'45'GovRole_92 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_92
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_912
-- _.Epoch
d_Epoch_146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_146 = erased
-- _.GovAction
d_GovAction_152 a0 = ()
-- _.GovActionID
d_GovActionID_156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_156 = erased
-- _.GovActionState
d_GovActionState_158 a0 = ()
-- _.GovActionType
d_GovActionType_160 a0 = ()
-- _.GovRole
d_GovRole_166 a0 = ()
-- _.THash
d_THash_258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_258 = erased
-- _.NeedsHash
d_NeedsHash_270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  ()
d_NeedsHash_270 = erased
-- _.PParamGroup
d_PParamGroup_296 a0 = ()
-- _.PParams
d_PParams_298 a0 = ()
-- _.UpdateT
d_UpdateT_304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UpdateT_304 = erased
-- _.VDeleg
d_VDeleg_440 a0 = ()
-- _.preoEpoch
d_preoEpoch_590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_590 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_88
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
         (coe v0))
-- _.GovAction.gaData
d_gaData_724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808 ->
  AgdaAny
d_gaData_724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_816
      (coe v0)
-- _.GovAction.gaType
d_gaType_726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790
d_gaType_726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_814
      (coe v0)
-- _.GovActionState.action
d_action_730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808
d_action_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_906
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  AgdaAny
d_expiresIn_732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_904
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  AgdaAny
d_prevAction_734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_908
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98
d_returnAddr_736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_902
      (coe v0)
-- _.GovActionState.votes
d_votes_738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_900
      (coe v0)
-- _.GovActions.GovAction
d_GovAction_774 a0 = ()
-- _.GovActions.GovActionState
d_GovActionState_780 a0 = ()
-- _.GovActions.GovActionType
d_GovActionType_782 a0 = ()
-- _.GovActions.GovRole
d_GovRole_786 a0 = ()
-- _.GovActions.VDeleg
d_VDeleg_816 a0 = ()
-- _.PParams.Emax
d_Emax_1046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_Emax_1046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_418
      (coe v0)
-- _.PParams.a
d_a_1048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_a_1048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_390 (coe v0)
-- _.PParams.a0
d_a0_1050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_422 (coe v0)
-- _.PParams.b
d_b_1052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_b_1052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_392 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_ccMaxTermLength_1054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_434
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_ccMinSize_1056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_432
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_coinsPerUTxOByte_1058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_402
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_collateralPercentage_1060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_424
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_costmdls_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_426
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_drepActivity_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_442
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_drepDeposit_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_440
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_238
d_drepThresholds_1068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_430
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_govActionDeposit_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_438
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_govActionLifetime_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_436
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_keyDeposit_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_394
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_maxBlockExUnits_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_382
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxBlockSize_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_374
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1080 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxCollateralInputs_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_386
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxHeaderSize_1082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_378
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxRefScriptSizePerBlock_1084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_410
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxRefScriptSizePerTx_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_408
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_maxTxExUnits_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_380
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxTxSize_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_376
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxValSize_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_384
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_406
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_minUTxOValue_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_416
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_398
      (coe v0)
-- _.PParams.nopt
d_nopt_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_nopt_1100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_420
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_poolDeposit_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_396
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_280
d_poolThresholds_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_428
      (coe v0)
-- _.PParams.prices
d_prices_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_prices_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_404
      (coe v0)
-- _.PParams.pv
d_pv_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_388 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_414
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_412
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_400
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams
d_StakePoolParams_1746 a0 = ()
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.cost
d_cost_1926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1006 ->
  Integer
d_cost_1926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1020 (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.margin
d_margin_1928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1006 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1022
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.owners
d_owners_1930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1006 ->
  [AgdaAny]
d_owners_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1018
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.pledge
d_pledge_1932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1006 ->
  Integer
d_pledge_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1024
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.StakePoolParams.rewardAccount
d_rewardAccount_1934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1026
      (coe v0)
-- Ledger.Conway.Specification.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1938 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Ratify._.EnactState
d_EnactState_1956 a0 = ()
-- Ledger.Conway.Specification.Ratify._.EnactStateOf
d_EnactStateOf_1958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_974 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
d_EnactStateOf_1958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_982
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_1960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_1960 ~v0 = du_HasCast'45'EnactEnv_1960
du_HasCast'45'EnactEnv_1960 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EnactEnv_1960
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasCast'45'EnactEnv_992
-- Ledger.Conway.Specification.Ratify._.HasEnactState
d_HasEnactState_1962 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Ratify._.EnactState.cc
d_cc_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_960 (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.constitution
d_constitution_2002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_962
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.pparams
d_pparams_2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_966
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.pv
d_pv_2006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_964 (coe v0)
-- Ledger.Conway.Specification.Ratify._.EnactState.withdrawals
d_withdrawals_2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_968
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.HasEnactState.EnactStateOf
d_EnactStateOf_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_974 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
d_EnactStateOf_2012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_982
      (coe v0)
-- Ledger.Conway.Specification.Ratify._.Vote
d_Vote_2016 a0 = ()
-- Ledger.Conway.Specification.Ratify._∧_
d__'8743'__2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__2026 = erased
-- Ledger.Conway.Specification.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  AgdaAny
d_'8739'_'8739'_'8739'_'8739'_2032 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_2032 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_2032 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  AgdaAny
du_'8739'_'8739'_'8739'_'8739'_2032 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_762
        -> coe v0
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_764
        -> coe v1
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_766
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  AgdaAny
d_'8739'_'8741'_'8739'_2044 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_2044 v2 v3
du_'8739'_'8741'_'8739'_2044 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  AgdaAny
du_'8739'_'8741'_'8739'_2044 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_762
                    -> coe v0
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_764
                    -> coe v2
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_766
                    -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.vote
d_vote_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_2054 ~v0 = du_vote_2054
du_vote_2054 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_2054 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Conway.Specification.Ratify.defer
d_defer_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_2056 ~v0 = du_defer_2056
du_defer_2056 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_2056
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Conway.Specification.Ratify.maxThreshold
d_maxThreshold_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_2058 ~v0 v1 = du_maxThreshold_2058 v1
du_maxThreshold_2058 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_2058 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230 (coe du_comb_2066)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
            v0))
-- Ledger.Conway.Specification.Ratify._.comb
d_comb_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_comb_2066 ~v0 ~v1 v2 v3 = du_comb_2066 v2 v3
du_comb_2066 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_comb_2066 v0 v1
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
d_'9472'_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_2076 ~v0 = du_'9472'_2076
du_'9472'_2076 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_2076 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Conway.Specification.Ratify.✓†
d_'10003''8224'_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_2078 ~v0 = du_'10003''8224'_2078
du_'10003''8224'_2078 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_2078 = coe du_vote_2054 (coe du_defer_2056)
-- Ledger.Conway.Specification.Ratify.threshold
d_threshold_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_2080 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_820)
              v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_792
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2032 (coe du_'9472'_2076)
                       (coe
                          du_vote_2054
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_260
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_430
                                (coe v1))))
                       (coe
                          du_vote_2054
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_292
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_428
                                (coe v1))))
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_794
                  -> coe
                       du_'8739'_'8741'_'8739'_2044 (coe du_'9472'_2076)
                       (coe du_P'47'Q2a'47'b_2200 (coe v1) (coe v2))
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_796
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2032 (coe du_'10003'_2198 (coe v2))
                       (coe
                          du_vote_2054
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_266
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_430
                                (coe v1))))
                       (coe du_'9472'_2076)
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHF_798
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2032 (coe du_'10003'_2198 (coe v2))
                       (coe
                          du_vote_2054
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_268
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_430
                                (coe v1))))
                       (coe
                          du_vote_2054
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_298
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_428
                                (coe v1))))
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_800
                  -> coe
                       du_'8739'_'8741'_'8739'_2044 (coe du_'10003'_2198 (coe v2))
                       (coe du_P'47'Q5_2206 (coe v0) (coe v1) (coe v6))
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWdrl_802
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2032 (coe du_'10003'_2198 (coe v2))
                       (coe
                          du_vote_2054
                          (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_278
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_430
                                (coe v1))))
                       (coe du_'9472'_2076)
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_804
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2032 (coe du_'10003''8224'_2078)
                       (coe du_'10003''8224'_2078) (coe du_'10003''8224'_2078)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Ratify._.✓
d_'10003'_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_2198 ~v0 ~v1 v2 ~v3 = du_'10003'_2198 v2
du_'10003'_2198 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_2198 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
      (coe du_'10003''8224'_2078) (coe v0)
-- Ledger.Conway.Specification.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_2200 ~v0 v1 v2 ~v3 = du_P'47'Q2a'47'b_2200 v1 v2
du_P'47'Q2a'47'b_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_2200 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2054
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_262
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_430
                      (coe v0))))
             (coe
                du_vote_2054
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_294
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_428
                      (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2054
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_264
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_430
                      (coe v0))))
             (coe
                du_vote_2054
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_296
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_428
                      (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.pparamThreshold
d_pparamThreshold_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_226 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_2204 ~v0 v1 ~v2 ~v3 v4
  = du_pparamThreshold_2204 v1 v4
du_pparamThreshold_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_226 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_2204 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_NetworkGroup_228
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2054
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_270
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_430
                      (coe v0))))
             (coe du_'9472'_2076)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_EconomicGroup_230
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2054
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_272
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_430
                      (coe v0))))
             (coe du_'9472'_2076)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_TechnicalGroup_232
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2054
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_274
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_430
                      (coe v0))))
             (coe du_'9472'_2076)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_GovernanceGroup_234
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2054
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_276
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_430
                      (coe v0))))
             (coe du_'9472'_2076)
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_SecurityGroup_236
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_2076)
             (coe
                du_vote_2054
                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_300
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_428
                      (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.P/Q5
d_P'47'Q5_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_2206 v0 v1 ~v2 ~v3 v4 = du_P'47'Q5_2206 v0 v1 v4
du_P'47'Q5_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_2206 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_2058
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_2204 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1522
               (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1554
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2286
                     (coe v0)))
               v2)))
      (coe
         du_maxThreshold_2058
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_2204 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1522
               (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1554
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2286
                     (coe v0)))
               v2)))
-- Ledger.Conway.Specification.Ratify.canVote
d_canVote_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  ()
d_canVote_2214 = erased
-- Ledger.Conway.Specification.Ratify.StakeDistrs
d_StakeDistrs_2222 a0 = ()
newtype T_StakeDistrs_2222
  = C_StakeDistrs'46'constructor_15569 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ratify.StakeDistrs.stakeDistr
d_stakeDistr_2226 ::
  T_StakeDistrs_2222 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2226 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_15569 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv
d_RatifyEnv_2228 a0 = ()
data T_RatifyEnv_2228
  = C_RatifyEnv'46'constructor_15689 T_StakeDistrs_2222 AgdaAny
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_2244 :: T_RatifyEnv_2228 -> T_StakeDistrs_2222
d_stakeDistrs_2244 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15689 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_2246 :: T_RatifyEnv_2228 -> AgdaAny
d_currentEpoch_2246 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15689 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.dreps
d_dreps_2248 ::
  T_RatifyEnv_2228 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2248 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15689 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_2250 ::
  T_RatifyEnv_2228 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2250 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15689 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.treasury
d_treasury_2252 :: T_RatifyEnv_2228 -> Integer
d_treasury_2252 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15689 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.pools
d_pools_2254 ::
  T_RatifyEnv_2228 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2254 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15689 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyEnv.delegatees
d_delegatees_2256 ::
  T_RatifyEnv_2228 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2256 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15689 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyState
d_RatifyState_2258 a0 = ()
data T_RatifyState_2258
  = C_RatifyState'46'constructor_15939 MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
                                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Conway.Specification.Ratify.RatifyState.es
d_es_2266 ::
  T_RatifyState_2258 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
d_es_2266 v0
  = case coe v0 of
      C_RatifyState'46'constructor_15939 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyState.removed
d_removed_2268 ::
  T_RatifyState_2258 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2268 v0
  = case coe v0 of
      C_RatifyState'46'constructor_15939 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.RatifyState.delay
d_delay_2270 :: T_RatifyState_2258 -> Bool
d_delay_2270 v0
  = case coe v0 of
      C_RatifyState'46'constructor_15939 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.HasRatifyState
d_HasRatifyState_2276 a0 a1 a2 = ()
newtype T_HasRatifyState_2276
  = C_HasRatifyState'46'constructor_16019 (AgdaAny ->
                                           T_RatifyState_2258)
-- Ledger.Conway.Specification.Ratify.HasRatifyState.RatifyStateOf
d_RatifyStateOf_2284 ::
  T_HasRatifyState_2276 -> AgdaAny -> T_RatifyState_2258
d_RatifyStateOf_2284 v0
  = case coe v0 of
      C_HasRatifyState'46'constructor_16019 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.RatifyStateOf
d_RatifyStateOf_2288 ::
  T_HasRatifyState_2276 -> AgdaAny -> T_RatifyState_2258
d_RatifyStateOf_2288 v0 = coe d_RatifyStateOf_2284 (coe v0)
-- Ledger.Conway.Specification.Ratify.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_974
d_HasEnactState'45'RatifyState_2290 ~v0
  = du_HasEnactState'45'RatifyState_2290
du_HasEnactState'45'RatifyState_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_974
du_HasEnactState'45'RatifyState_2290
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_HasEnactState'46'constructor_3059
      (coe (\ v0 -> d_es_2266 (coe v0)))
-- Ledger.Conway.Specification.Ratify.CCData
d_CCData_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_CCData_2292 = erased
-- Ledger.Conway.Specification.Ratify.govRole
d_govRole_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_772 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760
d_govRole_2294 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_credVoter_774 v1 v2
        -> coe v1
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstainRep_776
        -> coe
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_764
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_noConfidenceRep_778
        -> coe
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_764
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.IsCC
d_IsCC_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_772 ->
  ()
d_IsCC_2298 = erased
-- Ledger.Conway.Specification.Ratify.IsDRep
d_IsDRep_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_772 ->
  ()
d_IsDRep_2300 = erased
-- Ledger.Conway.Specification.Ratify.IsSPO
d_IsSPO_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_772 ->
  ()
d_IsSPO_2302 = erased
-- Ledger.Conway.Specification.Ratify.HasCast-RatifyState
d_HasCast'45'RatifyState_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_2310 ~v0 = du_HasCast'45'RatifyState_2310
du_HasCast'45'RatifyState_2310 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_2310
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
                                 (2258 :: Integer) (11046137501266703203 :: Integer)
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
                                 (1956 :: Integer) (11046137501266703203 :: Integer)
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
                                    (2258 :: Integer) (11046137501266703203 :: Integer)
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
                                                            (156 :: Integer)
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
                                                               (158 :: Integer)
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
                                       (2258 :: Integer) (11046137501266703203 :: Integer)
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
         (coe C_RatifyState'46'constructor_15939))
-- Ledger.Conway.Specification.Ratify.actualVotes
d_actualVotes_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2312 v0 v1 v2 v3 v4 v5
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
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_916
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2414
               (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_credVoter_774
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_762))
         (coe
            du_actualCCVotes_2464 (coe v0) (coe v1) (coe v2) (coe v3)
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
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_916
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2414
                  (coe v0))))
         (coe du_actualPDRepVotes_2472 (coe v0) (coe v4))
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
               (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_916
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2414
                     (coe v0))))
            (coe du_actualDRepVotes_2474 (coe v0) (coe v1) (coe v5))
            (coe du_actualSPOVotes_2476 (coe v0) (coe v1) (coe v4) (coe v5))))
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2330 ::
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2330 v0 ~v1 ~v2 ~v3 ~v4 = du_ccHotKeys_2330 v0
du_ccHotKeys_2330 ::
  T_RatifyEnv_2228 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2330 v0 = coe d_ccHotKeys_2250 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_2332 ::
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2332 v0 ~v1 ~v2 ~v3 ~v4 = du_currentEpoch_2332 v0
du_currentEpoch_2332 :: T_RatifyEnv_2228 -> AgdaAny
du_currentEpoch_2332 v0 = coe d_currentEpoch_2246 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delegatees
d_delegatees_2334 ::
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2334 v0 ~v1 ~v2 ~v3 ~v4 = du_delegatees_2334 v0
du_delegatees_2334 ::
  T_RatifyEnv_2228 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2334 v0 = coe d_delegatees_2256 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.dreps
d_dreps_2336 ::
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2336 v0 ~v1 ~v2 ~v3 ~v4 = du_dreps_2336 v0
du_dreps_2336 ::
  T_RatifyEnv_2228 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2336 v0 = coe d_dreps_2248 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.pools
d_pools_2338 ::
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2338 v0 ~v1 ~v2 ~v3 ~v4 = du_pools_2338 v0
du_pools_2338 ::
  T_RatifyEnv_2228 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2338 v0 = coe d_pools_2254 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrs
d_stakeDistrs_2340 ::
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_2222
d_stakeDistrs_2340 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDistrs_2340 v0
du_stakeDistrs_2340 :: T_RatifyEnv_2228 -> T_StakeDistrs_2222
du_stakeDistrs_2340 v0 = coe d_stakeDistrs_2244 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.treasury
d_treasury_2342 ::
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2342 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_2342 v0
du_treasury_2342 :: T_RatifyEnv_2228 -> Integer
du_treasury_2342 v0 = coe d_treasury_2252 (coe v0)
-- Ledger.Conway.Specification.Ratify._.roleVotes
d_roleVotes_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_roleVotes_2416 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_roleVotes_2416 v5 v6
du_roleVotes_2416 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_roleVotes_2416 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_credVoter_774))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1168
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_912))
              (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
         v0)
-- Ledger.Conway.Specification.Ratify._.activeDReps
d_activeDReps_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_2424 v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_activeDReps_2424 v0 v1
du_activeDReps_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_activeDReps_2424 v0 v1
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
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_66
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_72
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
                          (coe v0)))
                    (\ v3 v4 -> v3) (d_currentEpoch_2246 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_72
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
                          (coe v0)))
                    (d_currentEpoch_2246 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_60
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
                       (coe v0)))
                 (coe d_currentEpoch_2246 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_2248 (coe v1)))
-- Ledger.Conway.Specification.Ratify._.spos
d_spos_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_772]
d_spos_2430 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_spos_2430 v1
du_spos_2430 ::
  T_RatifyEnv_2228 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_772]
du_spos_2430 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_912))
           (coe d_govRole_2294 (coe v1))
           (coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_766))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
         (coe d_stakeDistr_2226 (coe d_stakeDistrs_2244 (coe v0))))
-- Ledger.Conway.Specification.Ratify._.getCCHotCred
d_getCCHotCred_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCred_2432 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_getCCHotCred_2432 v0 v1 v6
du_getCCHotCred_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getCCHotCred_2432 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Class.ToBool.du_if_then_else__42
             (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
             (coe
                MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_268
                (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_66
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
                      (coe v0)))
                (coe
                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                   (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_72
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
                         (coe v0)))
                   (\ v5 v6 -> v5) v4 (d_currentEpoch_2246 (coe v1)))
                (coe
                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                   (\ v5 v6 -> v6)
                   (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_72
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
                         (coe v0)))
                   v4 (d_currentEpoch_2246 (coe v1))))
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
                             (coe d_ccHotKeys_2250 (coe v1)) (coe v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_190
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
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
                                         (coe d_ccHotKeys_2250 (coe v1)))))) in
                   coe
                     (case coe v6 of
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                          -> case coe v7 of
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8 -> coe v7
                               _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                        _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.SPODefaultVote
d_SPODefaultVote_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_772 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_836
d_SPODefaultVote_2442 v0 v1 ~v2 ~v3 v4 ~v5 ~v6 v7
  = du_SPODefaultVote_2442 v0 v1 v4 v7
du_SPODefaultVote_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_772 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_836
du_SPODefaultVote_2442 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_840 in
    coe
      (case coe v3 of
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_credVoter_774 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_766
                  -> case coe v6 of
                       MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v7
                         -> let v8
                                  = coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe d_pools_2254 (coe v1)) (coe v7)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased
                                            (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
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
                                                  (coe d_pools_2254 (coe v1)))))) in
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
                                                (coe d_delegatees_2256 (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1026
                                                   (coe v9))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_190
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                                               (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1026
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
                                                            (coe d_delegatees_2256 (coe v1)))))) in
                                      coe
                                        (let v11
                                               = let v11
                                                       = coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_840 in
                                                 coe
                                                   (case coe v10 of
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                                                        -> case coe v12 of
                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstainRep_776
                                                               -> coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_842
                                                             _ -> coe v11
                                                      _ -> coe v11) in
                                         coe
                                           (case coe v2 of
                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_792
                                                -> case coe v10 of
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                                                       -> case coe v12 of
                                                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_noConfidenceRep_778
                                                              -> coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_838
                                                            _ -> coe v11
                                                     _ -> coe v11
                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHF_798
                                                -> coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_840
                                              _ -> coe v11))
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                   -> coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_840
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> coe v4
                _ -> coe v4
         _ -> coe v4)
-- Ledger.Conway.Specification.Ratify._.actualCCVote
d_actualCCVote_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_836
d_actualCCVote_2454 v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_actualCCVote_2454 v0 v1 v5 v6 v7
du_actualCCVote_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_836
du_actualCCVote_2454 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_getCCHotCred_2432 (coe v0) (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v7 -> v7))
                (coe MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_840)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe v2)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_762)
                      (coe v6))
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         erased
                         (coe
                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_912)
                            (coe
                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_190
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                  (coe
                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                     (coe v0))))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_762)
                         (coe v6))
                      (let v7
                             = MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v7
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v2))))))
         _ -> coe
                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_842)
-- Ledger.Conway.Specification.Ratify._.actualCCVotes
d_actualCCVotes_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualCCVotes_2464 v0 v1 v2 v3 ~v4 v5
  = du_actualCCVotes_2464 v0 v1 v2 v3 v5
du_actualCCVotes_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualCCVotes_2464 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Class.ToBool.du_if_then_else__42
                    (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_432
                          (coe v2))
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_length'738'_1112
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                             (coe
                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_190
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                         (coe v0))))
                                (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_60
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_190
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                      (coe v0)))))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1260
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe du_getCCHotCred_2432 (coe v0) (coe v1))
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v6)))))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1126
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe du_actualCCVote_2454 (coe v0) (coe v1) (coe v4)) (coe v6)))
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
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_840)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1470
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify._.actualPDRepVotes
d_actualPDRepVotes_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualPDRepVotes_2472 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_actualPDRepVotes_2472 v0 v6
du_actualPDRepVotes_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualPDRepVotes_2472 v0 v1
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
                 (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_916
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2414
                       (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstainRep_776)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_842)))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_noConfidenceRep_778)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_840))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_792
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
                   (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_916
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2414
                         (coe v0))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstainRep_776)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_abstain_842)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_noConfidenceRep_778)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_838)))
         _ -> coe v2)
-- Ledger.Conway.Specification.Ratify._.actualDRepVotes
d_actualDRepVotes_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualDRepVotes_2474 v0 v1 ~v2 ~v3 ~v4 v5
  = du_actualDRepVotes_2474 v0 v1 v5
du_actualDRepVotes_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualDRepVotes_2474 v0 v1 v2
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
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_916
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2414
               (coe v0))))
      (coe
         du_roleVotes_2416 (coe v2)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_764))
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
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_credVoter_774
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_764))
            (coe du_activeDReps_2424 (coe v0) (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_840))
-- Ledger.Conway.Specification.Ratify._.actualSPOVotes
d_actualSPOVotes_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualSPOVotes_2476 v0 v1 ~v2 ~v3 v4 v5 ~v6
  = du_actualSPOVotes_2476 v0 v1 v4 v5
du_actualSPOVotes_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualSPOVotes_2476 v0 v1 v2 v3
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
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_916
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2414
               (coe v0))))
      (coe
         du_roleVotes_2416 (coe v3)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_766))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1078
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_SPODefaultVote_2442 (coe v0) (coe v1) (coe v2))
         (coe du_spos_2430 (coe v1)))
-- Ledger.Conway.Specification.Ratify.getStakeDist
d_getStakeDist_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_772] ->
  T_StakeDistrs_2222 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_2480 ~v0 v1 v2 v3 = du_getStakeDist_2480 v1 v2 v3
du_getStakeDist_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_772] ->
  T_StakeDistrs_2222 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getStakeDist_2480 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_762
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
                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_912))
                     (coe d_govRole_2294 (coe v3)) (coe v0))
                v1)
             (coe (1 :: Integer))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_764
        -> coe
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_912))
                  (coe d_govRole_2294 (coe v3)) (coe v0))
             (d_stakeDistr_2226 (coe v2))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_766
        -> coe
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_912))
                  (coe d_govRole_2294 (coe v3)) (coe v0))
             (d_stakeDistr_2226 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.acceptedStakeRatio
d_acceptedStakeRatio_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_772] ->
  T_StakeDistrs_2222 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_2490 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Prelude.d__'47''8320'__46
      (coe
         d_acceptedStake_2506 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         d_totalStake_2508 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Conway.Specification.Ratify._.dist
d_dist_2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_772] ->
  T_StakeDistrs_2222 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dist_2504 ~v0 v1 v2 v3 ~v4 = du_dist_2504 v1 v2 v3
du_dist_2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_772] ->
  T_StakeDistrs_2222 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dist_2504 v0 v1 v2
  = coe du_getStakeDist_2480 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Ratify._.acceptedStake
d_acceptedStake_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_772] ->
  T_StakeDistrs_2222 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_acceptedStake_2506 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_916
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2414
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
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_916
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2414
                  (coe v0))))
         (coe du_dist_2504 (coe v1) (coe v2) (coe v3))
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
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_914))
            (coe v4)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_838)))
-- Ledger.Conway.Specification.Ratify._.totalStake
d_totalStake_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_772] ->
  T_StakeDistrs_2222 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_2508 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_916
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2414
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
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_916
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2414
                  (coe v0))))
         (coe du_dist_2504 (coe v1) (coe v2) (coe v3))
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
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_914))
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
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_yes_838))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_no_840))))))
-- Ledger.Conway.Specification.Ratify.acceptedBy
d_acceptedBy_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  ()
d_acceptedBy_2514 = erased
-- Ledger.Conway.Specification.Ratify.accepted
d_accepted_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  ()
d_accepted_2620 = erased
-- Ledger.Conway.Specification.Ratify.expired
d_expired_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  ()
d_expired_2628 = erased
-- Ledger.Conway.Specification.Ratify.verifyPrev
d_verifyPrev_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  ()
d_verifyPrev_2636 = erased
-- Ledger.Conway.Specification.Ratify.delayingAction
d_delayingAction_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  Bool
d_delayingAction_2658 ~v0 v1 = du_delayingAction_2658 v1
du_delayingAction_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  Bool
du_delayingAction_2658 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_792
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_794
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_796
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHF_798
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_800
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWdrl_802
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_804
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.delayed
d_delayed_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  Bool -> ()
d_delayed_2662 = erased
-- Ledger.Conway.Specification.Ratify.acceptConds
d_acceptConds_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  T_RatifyState_2258 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2672 = erased
-- Ledger.Conway.Specification.Ratify._._.ccHotKeys
d_ccHotKeys_2688 ::
  T_RatifyEnv_2228 ->
  T_RatifyState_2258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2688 v0 ~v1 ~v2 ~v3 = du_ccHotKeys_2688 v0
du_ccHotKeys_2688 ::
  T_RatifyEnv_2228 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2688 v0 = coe d_ccHotKeys_2250 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.currentEpoch
d_currentEpoch_2690 ::
  T_RatifyEnv_2228 ->
  T_RatifyState_2258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  AgdaAny
d_currentEpoch_2690 v0 ~v1 ~v2 ~v3 = du_currentEpoch_2690 v0
du_currentEpoch_2690 :: T_RatifyEnv_2228 -> AgdaAny
du_currentEpoch_2690 v0 = coe d_currentEpoch_2246 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delegatees
d_delegatees_2692 ::
  T_RatifyEnv_2228 ->
  T_RatifyState_2258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2692 v0 ~v1 ~v2 ~v3 = du_delegatees_2692 v0
du_delegatees_2692 ::
  T_RatifyEnv_2228 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2692 v0 = coe d_delegatees_2256 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.dreps
d_dreps_2694 ::
  T_RatifyEnv_2228 ->
  T_RatifyState_2258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2694 v0 ~v1 ~v2 ~v3 = du_dreps_2694 v0
du_dreps_2694 ::
  T_RatifyEnv_2228 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2694 v0 = coe d_dreps_2248 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.pools
d_pools_2696 ::
  T_RatifyEnv_2228 ->
  T_RatifyState_2258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2696 v0 ~v1 ~v2 ~v3 = du_pools_2696 v0
du_pools_2696 ::
  T_RatifyEnv_2228 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2696 v0 = coe d_pools_2254 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.stakeDistrs
d_stakeDistrs_2698 ::
  T_RatifyEnv_2228 ->
  T_RatifyState_2258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  T_StakeDistrs_2222
d_stakeDistrs_2698 v0 ~v1 ~v2 ~v3 = du_stakeDistrs_2698 v0
du_stakeDistrs_2698 :: T_RatifyEnv_2228 -> T_StakeDistrs_2222
du_stakeDistrs_2698 v0 = coe d_stakeDistrs_2244 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.treasury
d_treasury_2700 ::
  T_RatifyEnv_2228 ->
  T_RatifyState_2258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  Integer
d_treasury_2700 v0 ~v1 ~v2 ~v3 = du_treasury_2700 v0
du_treasury_2700 :: T_RatifyEnv_2228 -> Integer
du_treasury_2700 v0 = coe d_treasury_2252 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.delay
d_delay_2704 ::
  T_RatifyEnv_2228 ->
  T_RatifyState_2258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  Bool
d_delay_2704 ~v0 v1 ~v2 ~v3 = du_delay_2704 v1
du_delay_2704 :: T_RatifyState_2258 -> Bool
du_delay_2704 v0 = coe d_delay_2270 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.es
d_es_2706 ::
  T_RatifyEnv_2228 ->
  T_RatifyState_2258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
d_es_2706 ~v0 v1 ~v2 ~v3 = du_es_2706 v1
du_es_2706 ::
  T_RatifyState_2258 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
du_es_2706 v0 = coe d_es_2266 (coe v0)
-- Ledger.Conway.Specification.Ratify._._.removed
d_removed_2708 ::
  T_RatifyEnv_2228 ->
  T_RatifyState_2258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2708 ~v0 v1 ~v2 ~v3 = du_removed_2708 v1
du_removed_2708 ::
  T_RatifyState_2258 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_2708 v0 = coe d_removed_2268 (coe v0)
-- Ledger.Conway.Specification.Ratify.verifyPrev?
d_verifyPrev'63'_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2730 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_792
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_960 (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_794
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_960 (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_796
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_962
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHF_798
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_964 (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_800
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_966
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWdrl_802
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_804
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ratify.delayed?
d_delayed'63'_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2768 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe d_verifyPrev'63'_2730 (coe v0) (coe v1) (coe v2) (coe v3))
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
-- Ledger.Conway.Specification.Ratify.Is-nothing?
d_Is'45'nothing'63'_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_2784 ~v0 ~v1 v2 = du_Is'45'nothing'63'_2784 v2
du_Is'45'nothing'63'_2784 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_2784 v0
  = coe
      MAlonzo.Code.Data.Maybe.Relation.Unary.All.du_dec_254
      (let v1
             = coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26) in
       coe (coe (\ v2 -> v1)))
      (coe v0)
-- Ledger.Conway.Specification.Ratify.acceptedBy?
d_acceptedBy'63'_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_760 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_2800 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3552
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v5 -> v5))
            (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
            (coe
               d_threshold_2080 v0
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_966
                     (coe v2)))
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_map_64
                  (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_960 (coe v2))))
               (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_906
                  (coe v3))
               v4))
         (coe
            d_acceptedStakeRatio_2490 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_548
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
               (coe
                  d_actualVotes_2312 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_966
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_960 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_814
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_906
                        (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_900
                     (coe v3))))
            (coe d_stakeDistrs_2244 (coe v1))
            (coe
               d_actualVotes_2312 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_966
                     (coe v2)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_960 (coe v2)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_814
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_906
                     (coe v3)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_900
                  (coe v3)))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_912)
            v4
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_762))
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
                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_190
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_60
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
                                   (coe v0))))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
                  (coe (0 :: Integer))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_960 (coe v2))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_432
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_966
                        (coe v2)))))
            (coe
               du_Is'45'nothing'63'_2784
               (coe
                  d_threshold_2080 v0
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_966
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_map_64
                     (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_960 (coe v2))))
                  (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_906
                     (coe v3))
                  v4))))
-- Ledger.Conway.Specification.Ratify.accepted?
d_accepted'63'_2812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2812 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         d_acceptedBy'63'_2800 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_762))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
         (coe
            d_acceptedBy'63'_2800 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_764))
         (coe
            d_acceptedBy'63'_2800 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_766)))
-- Ledger.Conway.Specification.Ratify.expired?
d_expired'63'_2828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2828 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_268
         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_66
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
               (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_72
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
                  (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_904
               (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_72
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
                  (coe v0)))
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_904
               (coe v2))
            v1))
-- Ledger.Conway.Specification.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2846 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'RATIFY'10632'__2846
  = C_RATIFY'45'Accept_2860 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_2868 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_2876 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ratify._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_2228 ->
  T_RatifyState_2258 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_2258 -> ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2848 = erased
