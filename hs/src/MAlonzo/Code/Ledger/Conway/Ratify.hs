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
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
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
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_92 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_92 ~v0 = du_DecEq'45'GovRole_92
du_DecEq'45'GovRole_92 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_92
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_882
-- _.Epoch
d_Epoch_148 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Epoch_148 = erased
-- _.GovAction
d_GovAction_154 a0 = ()
-- _.GovActionID
d_GovActionID_158 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_GovActionID_158 = erased
-- _.GovActionState
d_GovActionState_160 a0 = ()
-- _.GovActionType
d_GovActionType_162 a0 = ()
-- _.GovRole
d_GovRole_168 a0 = ()
-- _.THash
d_THash_254 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_THash_254 = erased
-- _.NeedsHash
d_NeedsHash_266 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  ()
d_NeedsHash_266 = erased
-- _.PParamGroup
d_PParamGroup_292 a0 = ()
-- _.PParams
d_PParams_294 a0 = ()
-- _.UpdateT
d_UpdateT_300 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_UpdateT_300 = erased
-- _.VDeleg
d_VDeleg_448 a0 = ()
-- _.preoEpoch
d_preoEpoch_606 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_preoEpoch_88
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
         (coe v0))
-- _.GovAction.gaData
d_gaData_736 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  AgdaAny
d_gaData_736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_786 (coe v0)
-- _.GovAction.gaType
d_gaType_738 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760
d_gaType_738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_784 (coe v0)
-- _.GovActionState.action
d_action_742 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778
d_action_742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_876 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_744 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  AgdaAny
d_expiresIn_744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_expiresIn_874
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_746 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  AgdaAny
d_prevAction_746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_878
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_748 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_872
      (coe v0)
-- _.GovActionState.votes
d_votes_750 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_votes_870 (coe v0)
-- _.GovernanceActions.GovAction
d_GovAction_834 a0 = ()
-- _.GovernanceActions.GovActionState
d_GovActionState_840 a0 = ()
-- _.GovernanceActions.GovActionType
d_GovActionType_842 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_846 a0 = ()
-- _.GovernanceActions.VDeleg
d_VDeleg_876 a0 = ()
-- _.PParams.Emax
d_Emax_1054 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_Emax_1054 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_380 (coe v0)
-- _.PParams.a
d_a_1056 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_a_1056 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_352 (coe v0)
-- _.PParams.a0
d_a0_1058 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1058 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_384 (coe v0)
-- _.PParams.b
d_b_1060 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_b_1060 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_354 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1062 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMaxTermLength_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_396 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1064 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMinSize_1064 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_394 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_coinsPerUTxOByte_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_364 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1068 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_collateralPercentage_1068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_386
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_costmdls_1070 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_388 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_drepActivity_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_404 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_drepDeposit_1074 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_402 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200
d_drepThresholds_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionDeposit_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_400 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionLifetime_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_398 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_keyDeposit_1082 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_356 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxBlockExUnits_1084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_344 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxBlockSize_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_336 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxCollateralInputs_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_348
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxHeaderSize_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_340 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerBlock_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_372
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerTx_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_370
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxTxExUnits_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_342 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxTxSize_1098 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_338 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxValSize_1100 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_346 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1102 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_368
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_minUTxOValue_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_378 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_360 (coe v0)
-- _.PParams.nopt
d_nopt_1108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_nopt_1108 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_382 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1110 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_poolDeposit_1110 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_358 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1112 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242
d_poolThresholds_1112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_390 (coe v0)
-- _.PParams.prices
d_prices_1114 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_prices_1114 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_366 (coe v0)
-- _.PParams.pv
d_pv_1116 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1116 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_350 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1118 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_376
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1120 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_refScriptCostStride_1120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_374
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1122 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1122 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_362 (coe v0)
-- Ledger.Conway.Ratify._.PoolParams
d_PoolParams_1764 a0 = ()
-- Ledger.Conway.Ratify._.PoolParams.cost
d_cost_1948 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_978 -> Integer
d_cost_1948 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_cost_992 (coe v0)
-- Ledger.Conway.Ratify._.PoolParams.margin
d_margin_1950 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_978 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_1950 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_margin_994 (coe v0)
-- Ledger.Conway.Ratify._.PoolParams.owners
d_owners_1952 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_978 -> [AgdaAny]
d_owners_1952 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_owners_990 (coe v0)
-- Ledger.Conway.Ratify._.PoolParams.pledge
d_pledge_1954 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_978 -> Integer
d_pledge_1954 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pledge_996 (coe v0)
-- Ledger.Conway.Ratify._.PoolParams.rewardAccount
d_rewardAccount_1956 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_978 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_rewardAccount_1956 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_rewardAccount_998 (coe v0)
-- Ledger.Conway.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1960 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Ratify._.EnactState
d_EnactState_1978 a0 = ()
-- Ledger.Conway.Ratify._.EnactStateOf
d_EnactStateOf_1980 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_HasEnactState_946 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920
d_EnactStateOf_1980 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_EnactStateOf_954 (coe v0)
-- Ledger.Conway.Ratify._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_1982 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_1982 ~v0 = du_HasCast'45'EnactEnv_1982
du_HasCast'45'EnactEnv_1982 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EnactEnv_1982
  = coe MAlonzo.Code.Ledger.Conway.Enact.du_HasCast'45'EnactEnv_964
-- Ledger.Conway.Ratify._.HasEnactState
d_HasEnactState_1984 a0 a1 a2 = ()
-- Ledger.Conway.Ratify._.EnactState.cc
d_cc_2022 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2022 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_932 (coe v0)
-- Ledger.Conway.Ratify._.EnactState.constitution
d_constitution_2024 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2024 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_constitution_934 (coe v0)
-- Ledger.Conway.Ratify._.EnactState.pparams
d_pparams_2026 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2026 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_938 (coe v0)
-- Ledger.Conway.Ratify._.EnactState.pv
d_pv_2028 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2028 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_pv_936 (coe v0)
-- Ledger.Conway.Ratify._.EnactState.withdrawals
d_withdrawals_2030 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2030 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_withdrawals_940 (coe v0)
-- Ledger.Conway.Ratify._.HasEnactState.EnactStateOf
d_EnactStateOf_2034 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_HasEnactState_946 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920
d_EnactStateOf_2034 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_EnactStateOf_954 (coe v0)
-- Ledger.Conway.Ratify._.Vote
d_Vote_2038 a0 = ()
-- Ledger.Conway.Ratify._∧_
d__'8743'__2048 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__2048 = erased
-- Ledger.Conway.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_2054 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 ->
  AgdaAny
d_'8739'_'8739'_'8739'_'8739'_2054 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_2054 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_2054 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 ->
  AgdaAny
du_'8739'_'8739'_'8739'_'8739'_2054 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_CC_732 -> coe v0
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_DRep_734 -> coe v1
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_SPO_736 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_2066 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 ->
  AgdaAny
d_'8739'_'8741'_'8739'_2066 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_2066 v2 v3
du_'8739'_'8741'_'8739'_2066 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 ->
  AgdaAny
du_'8739'_'8741'_'8739'_2066 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.Conway.GovernanceActions.C_CC_732 -> coe v0
                  MAlonzo.Code.Ledger.Conway.GovernanceActions.C_DRep_734 -> coe v2
                  MAlonzo.Code.Ledger.Conway.GovernanceActions.C_SPO_736 -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.vote
d_vote_2076 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_2076 ~v0 = du_vote_2076
du_vote_2076 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_2076 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Conway.Ratify.defer
d_defer_2078 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_2078 ~v0 = du_defer_2078
du_defer_2078 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_2078
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Conway.Ratify.maxThreshold
d_maxThreshold_2080 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_2080 ~v0 v1 = du_maxThreshold_2080 v1
du_maxThreshold_2080 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_2080 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230 (coe du_comb_2088)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
            v0))
-- Ledger.Conway.Ratify._.comb
d_comb_2088 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_comb_2088 ~v0 ~v1 v2 v3 = du_comb_2088 v2 v3
du_comb_2088 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_comb_2088 v0 v1
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
d_'9472'_2098 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_2098 ~v0 = du_'9472'_2098
du_'9472'_2098 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_2098 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Conway.Ratify.✓†
d_'10003''8224'_2100 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_2100 ~v0 = du_'10003''8224'_2100
du_'10003''8224'_2100 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_2100 = coe du_vote_2076 (coe du_defer_2078)
-- Ledger.Conway.Ratify.threshold
d_threshold_2102 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_2102 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_116
              (coe
                 MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovAction'45'Sigma_790)
              v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_762
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2054 (coe du_'9472'_2098)
                       (coe
                          du_vote_2076
                          (MAlonzo.Code.Ledger.Conway.PParams.d_P1_222
                             (coe
                                MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v1))))
                       (coe
                          du_vote_2076
                          (MAlonzo.Code.Ledger.Conway.PParams.d_Q1_254
                             (coe
                                MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_390 (coe v1))))
                MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_764
                  -> coe
                       du_'8739'_'8741'_'8739'_2066 (coe du_'9472'_2098)
                       (coe du_P'47'Q2a'47'b_2222 (coe v1) (coe v2))
                MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_766
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2054 (coe du_'10003'_2220 (coe v2))
                       (coe
                          du_vote_2076
                          (MAlonzo.Code.Ledger.Conway.PParams.d_P3_228
                             (coe
                                MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v1))))
                       (coe du_'9472'_2098)
                MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_768
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2054 (coe du_'10003'_2220 (coe v2))
                       (coe
                          du_vote_2076
                          (MAlonzo.Code.Ledger.Conway.PParams.d_P4_230
                             (coe
                                MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v1))))
                       (coe
                          du_vote_2076
                          (MAlonzo.Code.Ledger.Conway.PParams.d_Q4_260
                             (coe
                                MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_390 (coe v1))))
                MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_770
                  -> coe
                       du_'8739'_'8741'_'8739'_2066 (coe du_'10003'_2220 (coe v2))
                       (coe du_P'47'Q5_2228 (coe v0) (coe v1) (coe v6))
                MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_772
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2054 (coe du_'10003'_2220 (coe v2))
                       (coe
                          du_vote_2076
                          (MAlonzo.Code.Ledger.Conway.PParams.d_P6_240
                             (coe
                                MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v1))))
                       (coe du_'9472'_2098)
                MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_774
                  -> coe
                       du_'8739'_'8739'_'8739'_'8739'_2054 (coe du_'10003''8224'_2100)
                       (coe du_'10003''8224'_2100) (coe du_'10003''8224'_2100)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Ratify._.✓
d_'10003'_2220 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_2220 ~v0 ~v1 v2 ~v3 = du_'10003'_2220 v2
du_'10003'_2220 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_2220 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
      (coe du_'10003''8224'_2100) (coe v0)
-- Ledger.Conway.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_2222 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_2222 ~v0 v1 v2 ~v3 = du_P'47'Q2a'47'b_2222 v1 v2
du_P'47'Q2a'47'b_2222 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_2222 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2076
                (MAlonzo.Code.Ledger.Conway.PParams.d_P2a_224
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v0))))
             (coe
                du_vote_2076
                (MAlonzo.Code.Ledger.Conway.PParams.d_Q2a_256
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_390 (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2076
                (MAlonzo.Code.Ledger.Conway.PParams.d_P2b_226
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v0))))
             (coe
                du_vote_2076
                (MAlonzo.Code.Ledger.Conway.PParams.d_Q2b_258
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_390 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify._.pparamThreshold
d_pparamThreshold_2226 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_2226 ~v0 v1 ~v2 ~v3 v4
  = du_pparamThreshold_2226 v1 v4
du_pparamThreshold_2226 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_2226 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.PParams.C_NetworkGroup_190
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2076
                (MAlonzo.Code.Ledger.Conway.PParams.d_P5a_232
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v0))))
             (coe du_'9472'_2098)
      MAlonzo.Code.Ledger.Conway.PParams.C_EconomicGroup_192
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2076
                (MAlonzo.Code.Ledger.Conway.PParams.d_P5b_234
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v0))))
             (coe du_'9472'_2098)
      MAlonzo.Code.Ledger.Conway.PParams.C_TechnicalGroup_194
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2076
                (MAlonzo.Code.Ledger.Conway.PParams.d_P5c_236
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v0))))
             (coe du_'9472'_2098)
      MAlonzo.Code.Ledger.Conway.PParams.C_GovernanceGroup_196
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_2076
                (MAlonzo.Code.Ledger.Conway.PParams.d_P5d_238
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v0))))
             (coe du_'9472'_2098)
      MAlonzo.Code.Ledger.Conway.PParams.C_SecurityGroup_198
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_2098)
             (coe
                du_vote_2076
                (MAlonzo.Code.Ledger.Conway.PParams.d_Q5_262
                   (coe
                      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_390 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify._.P/Q5
d_P'47'Q5_2228 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_2228 v0 v1 ~v2 ~v3 v4 = du_P'47'Q5_2228 v0 v1 v4
du_P'47'Q5_2228 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_2228 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_2080
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_2226 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1492
               (MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_govParams_2324 (coe v0)))
               v2)))
      (coe
         du_maxThreshold_2080
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_2226 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1492
               (MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_govParams_2324 (coe v0)))
               v2)))
-- Ledger.Conway.Ratify.canVote
d_canVote_2236 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 -> ()
d_canVote_2236 = erased
-- Ledger.Conway.Ratify.StakeDistrs
d_StakeDistrs_2244 a0 = ()
newtype T_StakeDistrs_2244
  = C_StakeDistrs'46'constructor_15593 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Ratify.StakeDistrs.stakeDistr
d_stakeDistr_2248 ::
  T_StakeDistrs_2244 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2248 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_15593 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyEnv
d_RatifyEnv_2250 a0 = ()
data T_RatifyEnv_2250
  = C_RatifyEnv'46'constructor_15713 T_StakeDistrs_2244 AgdaAny
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_2266 :: T_RatifyEnv_2250 -> T_StakeDistrs_2244
d_stakeDistrs_2266 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15713 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_2268 :: T_RatifyEnv_2250 -> AgdaAny
d_currentEpoch_2268 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15713 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyEnv.dreps
d_dreps_2270 ::
  T_RatifyEnv_2250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2270 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15713 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_2272 ::
  T_RatifyEnv_2250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2272 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15713 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyEnv.treasury
d_treasury_2274 :: T_RatifyEnv_2250 -> Integer
d_treasury_2274 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15713 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyEnv.pools
d_pools_2276 ::
  T_RatifyEnv_2250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2276 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15713 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyEnv.delegatees
d_delegatees_2278 ::
  T_RatifyEnv_2250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2278 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_15713 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyState
d_RatifyState_2280 a0 = ()
data T_RatifyState_2280
  = C_RatifyState'46'constructor_15963 MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920
                                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Conway.Ratify.RatifyState.es
d_es_2288 ::
  T_RatifyState_2280 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920
d_es_2288 v0
  = case coe v0 of
      C_RatifyState'46'constructor_15963 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyState.removed
d_removed_2290 ::
  T_RatifyState_2280 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2290 v0
  = case coe v0 of
      C_RatifyState'46'constructor_15963 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.RatifyState.delay
d_delay_2292 :: T_RatifyState_2280 -> Bool
d_delay_2292 v0
  = case coe v0 of
      C_RatifyState'46'constructor_15963 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.HasRatifyState
d_HasRatifyState_2298 a0 a1 a2 = ()
newtype T_HasRatifyState_2298
  = C_HasRatifyState'46'constructor_16043 (AgdaAny ->
                                           T_RatifyState_2280)
-- Ledger.Conway.Ratify.HasRatifyState.RatifyStateOf
d_RatifyStateOf_2306 ::
  T_HasRatifyState_2298 -> AgdaAny -> T_RatifyState_2280
d_RatifyStateOf_2306 v0
  = case coe v0 of
      C_HasRatifyState'46'constructor_16043 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify._.RatifyStateOf
d_RatifyStateOf_2310 ::
  T_HasRatifyState_2298 -> AgdaAny -> T_RatifyState_2280
d_RatifyStateOf_2310 v0 = coe d_RatifyStateOf_2306 (coe v0)
-- Ledger.Conway.Ratify.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_2312 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_HasEnactState_946
d_HasEnactState'45'RatifyState_2312 ~v0
  = du_HasEnactState'45'RatifyState_2312
du_HasEnactState'45'RatifyState_2312 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_HasEnactState_946
du_HasEnactState'45'RatifyState_2312
  = coe
      MAlonzo.Code.Ledger.Conway.Enact.C_HasEnactState'46'constructor_2977
      (coe (\ v0 -> d_es_2288 (coe v0)))
-- Ledger.Conway.Ratify.CCData
d_CCData_2314 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_CCData_2314 = erased
-- Ledger.Conway.Ratify.govRole
d_govRole_2316 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_VDeleg_742 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730
d_govRole_2316 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_credVoter_744 v1 v2
        -> coe v1
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_abstainRep_746
        -> coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_DRep_734
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_noConfidenceRep_748
        -> coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_DRep_734
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.IsCC
d_IsCC_2320 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_VDeleg_742 -> ()
d_IsCC_2320 = erased
-- Ledger.Conway.Ratify.IsDRep
d_IsDRep_2322 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_VDeleg_742 -> ()
d_IsDRep_2322 = erased
-- Ledger.Conway.Ratify.IsSPO
d_IsSPO_2324 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_VDeleg_742 -> ()
d_IsSPO_2324 = erased
-- Ledger.Conway.Ratify.HasCast-RatifyState
d_HasCast'45'RatifyState_2332 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_2332 ~v0 = du_HasCast'45'RatifyState_2332
du_HasCast'45'RatifyState_2332 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_2332
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
                                 (2280 :: Integer) (6629780030520735849 :: Integer)
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
                                 (1978 :: Integer) (6629780030520735849 :: Integer)
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
                                    (2280 :: Integer) (6629780030520735849 :: Integer)
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
                                                            (158 :: Integer)
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
                                                               (160 :: Integer)
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
                                       (2280 :: Integer) (6629780030520735849 :: Integer)
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
         (coe C_RatifyState'46'constructor_15963))
-- Ledger.Conway.Ratify.actualVotes
d_actualVotes_2334 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2334 v0 v1 v2 v3 v4 v5
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
         (MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_886
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
               (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Conway.GovernanceActions.C_credVoter_744
            (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_CC_732))
         (coe
            du_actualCCVotes_2486 (coe v0) (coe v1) (coe v2) (coe v3)
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
            (MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_886
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                  (coe v0))))
         (coe du_actualPDRepVotes_2494 (coe v0) (coe v4))
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
               (MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_886
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                     (coe v0))))
            (coe du_actualDRepVotes_2496 (coe v0) (coe v1) (coe v5))
            (coe du_actualSPOVotes_2498 (coe v0) (coe v1) (coe v4) (coe v5))))
-- Ledger.Conway.Ratify._._.ccHotKeys
d_ccHotKeys_2352 ::
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2352 v0 ~v1 ~v2 ~v3 ~v4 = du_ccHotKeys_2352 v0
du_ccHotKeys_2352 ::
  T_RatifyEnv_2250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2352 v0 = coe d_ccHotKeys_2272 (coe v0)
-- Ledger.Conway.Ratify._._.currentEpoch
d_currentEpoch_2354 ::
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2354 v0 ~v1 ~v2 ~v3 ~v4 = du_currentEpoch_2354 v0
du_currentEpoch_2354 :: T_RatifyEnv_2250 -> AgdaAny
du_currentEpoch_2354 v0 = coe d_currentEpoch_2268 (coe v0)
-- Ledger.Conway.Ratify._._.delegatees
d_delegatees_2356 ::
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2356 v0 ~v1 ~v2 ~v3 ~v4 = du_delegatees_2356 v0
du_delegatees_2356 ::
  T_RatifyEnv_2250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2356 v0 = coe d_delegatees_2278 (coe v0)
-- Ledger.Conway.Ratify._._.dreps
d_dreps_2358 ::
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2358 v0 ~v1 ~v2 ~v3 ~v4 = du_dreps_2358 v0
du_dreps_2358 ::
  T_RatifyEnv_2250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2358 v0 = coe d_dreps_2270 (coe v0)
-- Ledger.Conway.Ratify._._.pools
d_pools_2360 ::
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2360 v0 ~v1 ~v2 ~v3 ~v4 = du_pools_2360 v0
du_pools_2360 ::
  T_RatifyEnv_2250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2360 v0 = coe d_pools_2276 (coe v0)
-- Ledger.Conway.Ratify._._.stakeDistrs
d_stakeDistrs_2362 ::
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_2244
d_stakeDistrs_2362 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDistrs_2362 v0
du_stakeDistrs_2362 :: T_RatifyEnv_2250 -> T_StakeDistrs_2244
du_stakeDistrs_2362 v0 = coe d_stakeDistrs_2266 (coe v0)
-- Ledger.Conway.Ratify._._.treasury
d_treasury_2364 ::
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2364 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_2364 v0
du_treasury_2364 :: T_RatifyEnv_2250 -> Integer
du_treasury_2364 v0 = coe d_treasury_2274 (coe v0)
-- Ledger.Conway.Ratify._.roleVotes
d_roleVotes_2438 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_roleVotes_2438 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_roleVotes_2438 v5 v6
du_roleVotes_2438 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_roleVotes_2438 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_credVoter_744))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1168
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_882))
              (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
         v0)
-- Ledger.Conway.Ratify._.activeDReps
d_activeDReps_2446 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_activeDReps_2446 v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_activeDReps_2446 v0 v1
du_activeDReps_2446 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
du_activeDReps_2446 v0 v1
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
                       MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
                          (coe v0)))
                    (\ v3 v4 -> v3) (d_currentEpoch_2268 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
                          (coe v0)))
                    (d_currentEpoch_2268 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe
                    MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
                    (coe
                       MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
                       (coe v0)))
                 (coe d_currentEpoch_2268 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_2270 (coe v1)))
-- Ledger.Conway.Ratify._.spos
d_spos_2452 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_VDeleg_742]
d_spos_2452 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_spos_2452 v1
du_spos_2452 ::
  T_RatifyEnv_2250 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_VDeleg_742]
du_spos_2452 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_882))
           (coe d_govRole_2316 (coe v1))
           (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_SPO_736))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
         (coe d_stakeDistr_2248 (coe d_stakeDistrs_2266 (coe v0))))
-- Ledger.Conway.Ratify._.getCCHotCred
d_getCCHotCred_2454 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_getCCHotCred_2454 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_getCCHotCred_2454 v0 v1 v6
du_getCCHotCred_2454 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_getCCHotCred_2454 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Class.ToBool.du_if_then_else__42
             (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
             (coe
                MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_268
                (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
                   (coe
                      MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
                      (coe v0)))
                (coe
                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                   (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
                      (coe
                         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
                         (coe v0)))
                   (\ v5 v6 -> v5) v4 (d_currentEpoch_2268 (coe v1)))
                (coe
                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                   (\ v5 v6 -> v6)
                   (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
                      (coe
                         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
                         (coe v0)))
                   v4 (d_currentEpoch_2268 (coe v1))))
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
                             (coe d_ccHotKeys_2272 (coe v1)) (coe v3)
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
                                            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
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
                                         (coe d_ccHotKeys_2272 (coe v1)))))) in
                   coe
                     (case coe v6 of
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                          -> case coe v7 of
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8 -> coe v7
                               _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                        _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify._.SPODefaultVote
d_SPODefaultVote_2464 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_VDeleg_742 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Vote_806
d_SPODefaultVote_2464 v0 v1 ~v2 ~v3 v4 ~v5 ~v6 v7
  = du_SPODefaultVote_2464 v0 v1 v4 v7
du_SPODefaultVote_2464 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_VDeleg_742 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Vote_806
du_SPODefaultVote_2464 v0 v1 v2 v3
  = let v4
          = coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_no_810 in
    coe
      (case coe v3 of
         MAlonzo.Code.Ledger.Conway.GovernanceActions.C_credVoter_744 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Ledger.Conway.GovernanceActions.C_SPO_736
                  -> case coe v6 of
                       MAlonzo.Code.Ledger.Conway.Address.C_KeyHashObj_20 v7
                         -> let v8
                                  = coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe d_pools_2276 (coe v1)) (coe v7)
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
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
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
                                                  (coe d_pools_2276 (coe v1)))))) in
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
                                                (coe d_delegatees_2278 (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Certs.d_rewardAccount_998
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
                                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                                               (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Certs.d_rewardAccount_998
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
                                                            (coe d_delegatees_2278 (coe v1)))))) in
                                      coe
                                        (let v11
                                               = let v11
                                                       = coe
                                                           MAlonzo.Code.Ledger.Conway.GovernanceActions.C_no_810 in
                                                 coe
                                                   (case coe v10 of
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                                                        -> case coe v12 of
                                                             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_abstainRep_746
                                                               -> coe
                                                                    MAlonzo.Code.Ledger.Conway.GovernanceActions.C_abstain_812
                                                             _ -> coe v11
                                                      _ -> coe v11) in
                                         coe
                                           (case coe v2 of
                                              MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_762
                                                -> case coe v10 of
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                                                       -> case coe v12 of
                                                            MAlonzo.Code.Ledger.Conway.GovernanceActions.C_noConfidenceRep_748
                                                              -> coe
                                                                   MAlonzo.Code.Ledger.Conway.GovernanceActions.C_yes_808
                                                            _ -> coe v11
                                                     _ -> coe v11
                                              MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_768
                                                -> coe
                                                     MAlonzo.Code.Ledger.Conway.GovernanceActions.C_no_810
                                              _ -> coe v11))
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                   -> coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_no_810
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> coe v4
                _ -> coe v4
         _ -> coe v4)
-- Ledger.Conway.Ratify._.actualCCVote
d_actualCCVote_2476 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Vote_806
d_actualCCVote_2476 v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_actualCCVote_2476 v0 v1 v5 v6 v7
du_actualCCVote_2476 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Vote_806
du_actualCCVote_2476 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_getCCHotCred_2454 (coe v0) (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v7 -> v7))
                (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_no_810)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe v2)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_CC_732)
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
                               MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_882)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                     (coe v0))))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_CC_732)
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
                MAlonzo.Code.Ledger.Conway.GovernanceActions.C_abstain_812)
-- Ledger.Conway.Ratify._.actualCCVotes
d_actualCCVotes_2486 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualCCVotes_2486 v0 v1 v2 v3 ~v4 v5
  = du_actualCCVotes_2486 v0 v1 v2 v3 v5
du_actualCCVotes_2486 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualCCVotes_2486 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Class.ToBool.du_if_then_else__42
                    (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                       (MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_394 (coe v2))
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
                                            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                         (coe v0))))
                                (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                      (coe v0)))))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1260
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe du_getCCHotCred_2454 (coe v0) (coe v1))
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v6)))))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1126
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe du_actualCCVote_2476 (coe v0) (coe v1) (coe v4)) (coe v6)))
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
                            (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_no_810)))
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
d_actualPDRepVotes_2494 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualPDRepVotes_2494 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_actualPDRepVotes_2494 v0 v6
du_actualPDRepVotes_2494 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualPDRepVotes_2494 v0 v1
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
                 (MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_886
                    (coe
                       MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                       (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_abstainRep_746)
                    (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_abstain_812)))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Ledger.Conway.GovernanceActions.C_noConfidenceRep_748)
                    (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_no_810))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_762
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
                   (MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_886
                      (coe
                         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                         (coe v0))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_abstainRep_746)
                      (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_abstain_812)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe
                         MAlonzo.Code.Ledger.Conway.GovernanceActions.C_noConfidenceRep_748)
                      (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_yes_808)))
         _ -> coe v2)
-- Ledger.Conway.Ratify._.actualDRepVotes
d_actualDRepVotes_2496 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualDRepVotes_2496 v0 v1 ~v2 ~v3 ~v4 v5
  = du_actualDRepVotes_2496 v0 v1 v5
du_actualDRepVotes_2496 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualDRepVotes_2496 v0 v1 v2
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
         (MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_886
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
               (coe v0))))
      (coe
         du_roleVotes_2438 (coe v2)
         (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_DRep_734))
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
               MAlonzo.Code.Ledger.Conway.GovernanceActions.C_credVoter_744
               (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_DRep_734))
            (coe du_activeDReps_2446 (coe v0) (coe v1)))
         (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_no_810))
-- Ledger.Conway.Ratify._.actualSPOVotes
d_actualSPOVotes_2498 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualSPOVotes_2498 v0 v1 ~v2 ~v3 v4 v5 ~v6
  = du_actualSPOVotes_2498 v0 v1 v4 v5
du_actualSPOVotes_2498 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualSPOVotes_2498 v0 v1 v2 v3
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
         (MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_886
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
               (coe v0))))
      (coe
         du_roleVotes_2438 (coe v3)
         (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_SPO_736))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1078
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_SPODefaultVote_2464 (coe v0) (coe v1) (coe v2))
         (coe du_spos_2452 (coe v1)))
-- Ledger.Conway.Ratify.getStakeDist
d_getStakeDist_2502 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_VDeleg_742] ->
  T_StakeDistrs_2244 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_2502 ~v0 v1 v2 v3 = du_getStakeDist_2502 v1 v2 v3
du_getStakeDist_2502 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_VDeleg_742] ->
  T_StakeDistrs_2244 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getStakeDist_2502 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_CC_732
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
                           MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_882))
                     (coe d_govRole_2316 (coe v3)) (coe v0))
                v1)
             (coe (1 :: Integer))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_DRep_734
        -> coe
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_882))
                  (coe d_govRole_2316 (coe v3)) (coe v0))
             (d_stakeDistr_2248 (coe v2))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_SPO_736
        -> coe
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_882))
                  (coe d_govRole_2316 (coe v3)) (coe v0))
             (d_stakeDistr_2248 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.acceptedStakeRatio
d_acceptedStakeRatio_2512 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_VDeleg_742] ->
  T_StakeDistrs_2244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_2512 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Prelude.d__'47''8320'__72
      (coe
         d_acceptedStake_2528 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         d_totalStake_2530 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Conway.Ratify._.dist
d_dist_2526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_VDeleg_742] ->
  T_StakeDistrs_2244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dist_2526 ~v0 v1 v2 v3 ~v4 = du_dist_2526 v1 v2 v3
du_dist_2526 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_VDeleg_742] ->
  T_StakeDistrs_2244 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dist_2526 v0 v1 v2
  = coe du_getStakeDist_2502 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Ratify._.acceptedStake
d_acceptedStake_2528 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_VDeleg_742] ->
  T_StakeDistrs_2244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_acceptedStake_2528 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_886
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
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
            (MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_886
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                  (coe v0))))
         (coe du_dist_2526 (coe v1) (coe v2) (coe v3))
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
                  MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'Vote_884))
            (coe v4)
            (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_yes_808)))
-- Ledger.Conway.Ratify._.totalStake
d_totalStake_2530 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_VDeleg_742] ->
  T_StakeDistrs_2244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_2530 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_886
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
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
            (MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_886
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
                  (coe v0))))
         (coe du_dist_2526 (coe v1) (coe v2) (coe v3))
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
                     MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'Vote_884))
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
                     (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_yes_808))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_no_810))))))
-- Ledger.Conway.Ratify.acceptedBy
d_acceptedBy_2536 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 -> ()
d_acceptedBy_2536 = erased
-- Ledger.Conway.Ratify.accepted
d_accepted_2642 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  ()
d_accepted_2642 = erased
-- Ledger.Conway.Ratify.expired
d_expired_2650 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  ()
d_expired_2650 = erased
-- Ledger.Conway.Ratify.verifyPrev
d_verifyPrev_2658 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 -> ()
d_verifyPrev_2658 = erased
-- Ledger.Conway.Ratify.delayingAction
d_delayingAction_2680 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  Bool
d_delayingAction_2680 ~v0 v1 = du_delayingAction_2680 v1
du_delayingAction_2680 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  Bool
du_delayingAction_2680 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_762
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_764
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_766
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_768
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_770
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_772
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_774
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.delayed
d_delayed_2684 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 -> Bool -> ()
d_delayed_2684 = erased
-- Ledger.Conway.Ratify.acceptConds
d_acceptConds_2694 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  T_RatifyState_2280 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2694 = erased
-- Ledger.Conway.Ratify._._.ccHotKeys
d_ccHotKeys_2710 ::
  T_RatifyEnv_2250 ->
  T_RatifyState_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2710 v0 ~v1 ~v2 ~v3 = du_ccHotKeys_2710 v0
du_ccHotKeys_2710 ::
  T_RatifyEnv_2250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2710 v0 = coe d_ccHotKeys_2272 (coe v0)
-- Ledger.Conway.Ratify._._.currentEpoch
d_currentEpoch_2712 ::
  T_RatifyEnv_2250 ->
  T_RatifyState_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  AgdaAny
d_currentEpoch_2712 v0 ~v1 ~v2 ~v3 = du_currentEpoch_2712 v0
du_currentEpoch_2712 :: T_RatifyEnv_2250 -> AgdaAny
du_currentEpoch_2712 v0 = coe d_currentEpoch_2268 (coe v0)
-- Ledger.Conway.Ratify._._.delegatees
d_delegatees_2714 ::
  T_RatifyEnv_2250 ->
  T_RatifyState_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2714 v0 ~v1 ~v2 ~v3 = du_delegatees_2714 v0
du_delegatees_2714 ::
  T_RatifyEnv_2250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2714 v0 = coe d_delegatees_2278 (coe v0)
-- Ledger.Conway.Ratify._._.dreps
d_dreps_2716 ::
  T_RatifyEnv_2250 ->
  T_RatifyState_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2716 v0 ~v1 ~v2 ~v3 = du_dreps_2716 v0
du_dreps_2716 ::
  T_RatifyEnv_2250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2716 v0 = coe d_dreps_2270 (coe v0)
-- Ledger.Conway.Ratify._._.pools
d_pools_2718 ::
  T_RatifyEnv_2250 ->
  T_RatifyState_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2718 v0 ~v1 ~v2 ~v3 = du_pools_2718 v0
du_pools_2718 ::
  T_RatifyEnv_2250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2718 v0 = coe d_pools_2276 (coe v0)
-- Ledger.Conway.Ratify._._.stakeDistrs
d_stakeDistrs_2720 ::
  T_RatifyEnv_2250 ->
  T_RatifyState_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  T_StakeDistrs_2244
d_stakeDistrs_2720 v0 ~v1 ~v2 ~v3 = du_stakeDistrs_2720 v0
du_stakeDistrs_2720 :: T_RatifyEnv_2250 -> T_StakeDistrs_2244
du_stakeDistrs_2720 v0 = coe d_stakeDistrs_2266 (coe v0)
-- Ledger.Conway.Ratify._._.treasury
d_treasury_2722 ::
  T_RatifyEnv_2250 ->
  T_RatifyState_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  Integer
d_treasury_2722 v0 ~v1 ~v2 ~v3 = du_treasury_2722 v0
du_treasury_2722 :: T_RatifyEnv_2250 -> Integer
du_treasury_2722 v0 = coe d_treasury_2274 (coe v0)
-- Ledger.Conway.Ratify._._.delay
d_delay_2726 ::
  T_RatifyEnv_2250 ->
  T_RatifyState_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  Bool
d_delay_2726 ~v0 v1 ~v2 ~v3 = du_delay_2726 v1
du_delay_2726 :: T_RatifyState_2280 -> Bool
du_delay_2726 v0 = coe d_delay_2292 (coe v0)
-- Ledger.Conway.Ratify._._.es
d_es_2728 ::
  T_RatifyEnv_2250 ->
  T_RatifyState_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920
d_es_2728 ~v0 v1 ~v2 ~v3 = du_es_2728 v1
du_es_2728 ::
  T_RatifyState_2280 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920
du_es_2728 v0 = coe d_es_2288 (coe v0)
-- Ledger.Conway.Ratify._._.removed
d_removed_2730 ::
  T_RatifyEnv_2250 ->
  T_RatifyState_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2730 ~v0 v1 ~v2 ~v3 = du_removed_2730 v1
du_removed_2730 ::
  T_RatifyState_2280 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_2730 v0 = coe d_removed_2290 (coe v0)
-- Ledger.Conway.Ratify.verifyPrev?
d_verifyPrev'63'_2752 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2752 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_762
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_932 (coe v3))))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_764
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_932 (coe v3))))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_766
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Enact.d_constitution_934 (coe v3))))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_768
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Conway.Enact.d_pv_936 (coe v3))))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_770
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_938 (coe v3))))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_772
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_774
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ratify.delayed?
d_delayed'63'_2790 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2790 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe d_verifyPrev'63'_2752 (coe v0) (coe v1) (coe v2) (coe v3))
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
d_Is'45'nothing'63'_2806 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_2806 ~v0 ~v1 v2 = du_Is'45'nothing'63'_2806 v2
du_Is'45'nothing'63'_2806 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_2806 v0
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
d_acceptedBy'63'_2822 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_730 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_2822 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3552
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v5 -> v5))
            (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
            (coe
               d_threshold_2102 v0
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_938 (coe v2)))
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_map_64
                  (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_932 (coe v2))))
               (MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_876
                  (coe v3))
               v4))
         (coe
            d_acceptedStakeRatio_2512 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_548
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
               (coe
                  d_actualVotes_2334 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_938 (coe v2)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_932 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_784
                     (coe
                        MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_876
                        (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.GovernanceActions.d_votes_870
                     (coe v3))))
            (coe d_stakeDistrs_2266 (coe v1))
            (coe
               d_actualVotes_2334 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_938 (coe v2)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_932 (coe v2)))
               (coe
                  MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_784
                  (coe
                     MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_876
                     (coe v3)))
               (coe
                  MAlonzo.Code.Ledger.Conway.GovernanceActions.d_votes_870
                  (coe v3)))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe
               MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_882)
            v4 (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_CC_732))
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
                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
                                   (coe v0))))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
                  (coe (0 :: Integer))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_932 (coe v2))))
               (coe
                  MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_394
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_938 (coe v2)))))
            (coe
               du_Is'45'nothing'63'_2806
               (coe
                  d_threshold_2102 v0
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_938 (coe v2)))
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_map_64
                     (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_932 (coe v2))))
                  (MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_876
                     (coe v3))
                  v4))))
-- Ledger.Conway.Ratify.accepted?
d_accepted'63'_2834 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2834 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         d_acceptedBy'63'_2822 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_CC_732))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
         (coe
            d_acceptedBy'63'_2822 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_DRep_734))
         (coe
            d_acceptedBy'63'_2822 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_SPO_736)))
-- Ledger.Conway.Ratify.expired?
d_expired'63'_2850 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2850 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_268
         (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
                  (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.Conway.GovernanceActions.d_expiresIn_874
               (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
                  (coe v0)))
            (MAlonzo.Code.Ledger.Conway.GovernanceActions.d_expiresIn_874
               (coe v2))
            v1))
-- Ledger.Conway.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2868 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'RATIFY'10632'__2868
  = C_RATIFY'45'Accept_2882 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_2890 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_2898 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Ratify._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2870 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RatifyEnv_2250 ->
  T_RatifyState_2280 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_2280 -> ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2870 = erased
