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

module MAlonzo.Code.Ledger.Conway.Conformance.Ratify where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Maybe
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
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Credential
d_Credential_72 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_118 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
            (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_128 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_128 ~v0 = du_DecEq'45'GovRole_128
du_DecEq'45'GovRole_128 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_128
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828
-- _.Epoch
d_Epoch_196 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_196 = erased
-- _.GovAction
d_GovAction_210 a0 = ()
-- _.GovActionID
d_GovActionID_214 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_214 = erased
-- _.GovActionState
d_GovActionState_216 a0 = ()
-- _.GovRole
d_GovRole_224 a0 = ()
-- _.NeedsHash
d_NeedsHash_270 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_NeedsHash_270 = erased
-- _.PParamGroup
d_PParamGroup_300 a0 = ()
-- _.PParams
d_PParams_302 a0 = ()
-- _.UpdateT
d_UpdateT_306 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_UpdateT_306 = erased
-- _.VDeleg
d_VDeleg_464 a0 = ()
-- _.preoEpoch
d_preoEpoch_634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_preoEpoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
         (coe v0))
-- _.GovActionState.action
d_action_890 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_892 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  AgdaAny
d_expiresIn_892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_expiresIn_822
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_894 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  AgdaAny
d_prevAction_894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_826
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_896 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
d_returnAddr_896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
      (coe v0)
-- _.GovActionState.votes
d_votes_898 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
      (coe v0)
-- _.GovernanceActions.GovAction
d_GovAction_976 a0 = ()
-- _.GovernanceActions.GovActionState
d_GovActionState_980 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_984 a0 = ()
-- _.GovernanceActions.VDeleg
d_VDeleg_1006 a0 = ()
-- _.PParams.Emax
d_Emax_1140 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_Emax_1140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_356 (coe v0)
-- _.PParams.a
d_a_1142 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_1142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v0)
-- _.PParams.a0
d_a0_1144 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_360 (coe v0)
-- _.PParams.b
d_b_1146 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_1146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_1148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1150 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_1150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1152 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_1152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_1154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1156 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_costmdls_1156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1158 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_drepActivity_1158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1160 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1162 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_1164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1166 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1168 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1170 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxBlockExUnits_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_324
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_316
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_328
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_1176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_320
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1178 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerBlock_1178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_348
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerTx_1180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxTxExUnits_1182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_322
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1184 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_1184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1186 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_1186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1188 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_344
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1190 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
      (coe v0)
-- _.PParams.nopt
d_nopt_1192 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_358 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1194 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_1194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1196 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_1196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
      (coe v0)
-- _.PParams.prices
d_prices_1198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_prices_1198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
      (coe v0)
-- _.PParams.pv
d_pv_1200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_330 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1202 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_352
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1204 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_refScriptCostStride_1204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_350
      (coe v0)
-- Ledger.Conway.Conformance.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1724 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Ratify._.EnactEnv
d_EnactEnv_1740 a0 = ()
-- Ledger.Conway.Conformance.Ratify._.EnactState
d_EnactState_1742 a0 = ()
-- Ledger.Conway.Conformance.Ratify._.EnactEnv.epoch
d_epoch_1770 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactEnv_840 ->
  AgdaAny
d_epoch_1770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_epoch_852 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.EnactEnv.gid
d_gid_1772 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactEnv_840 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_gid_848 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.EnactEnv.treasury
d_treasury_1774 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactEnv_840 ->
  Integer
d_treasury_1774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_treasury_850
      (coe v0)
-- Ledger.Conway.Conformance.Ratify._.EnactState.cc
d_cc_1778 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.EnactState.constitution
d_constitution_1780 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
      (coe v0)
-- Ledger.Conway.Conformance.Ratify._.EnactState.pparams
d_pparams_1782 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.EnactState.pv
d_pv_1784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.EnactState.withdrawals
d_withdrawals_1786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
      (coe v0)
-- Ledger.Conway.Conformance.Ratify._.Vote
d_Vote_1790 a0 = ()
-- Ledger.Conway.Conformance.Ratify._∧_
d__'8743'__1800 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__1800 = erased
-- Ledger.Conway.Conformance.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_1806 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  AgdaAny
d_'8739'_'8739'_'8739'_'8739'_1806 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_1806 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_1806 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  AgdaAny
du_'8739'_'8739'_'8739'_'8739'_1806 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_CC_692
        -> coe v0
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_DRep_694
        -> coe v1
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_SPO_696
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_1818 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  AgdaAny
d_'8739'_'8741'_'8739'_1818 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_1818 v2 v3
du_'8739'_'8741'_'8739'_1818 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  AgdaAny
du_'8739'_'8741'_'8739'_1818 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_CC_692
                    -> coe v0
                  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_DRep_694
                    -> coe v2
                  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_SPO_696
                    -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.vote
d_vote_1828 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_1828 ~v0 = du_vote_1828
du_vote_1828 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_1828 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Conway.Conformance.Ratify.defer
d_defer_1830 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_1830 ~v0 = du_defer_1830
du_defer_1830 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_1830
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Conway.Conformance.Ratify.maxThreshold
d_maxThreshold_1832 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_1832 ~v0 v1 = du_maxThreshold_1832 v1
du_maxThreshold_1832 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_1832 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230 (coe du_comb_1840)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
            v0))
-- Ledger.Conway.Conformance.Ratify._.comb
d_comb_1840 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_comb_1840 ~v0 ~v1 v2 v3 = du_comb_1840 v2 v3
du_comb_1840 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_comb_1840 v0 v1
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
-- Ledger.Conway.Conformance.Ratify.─
d_'9472'_1850 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_1850 ~v0 = du_'9472'_1850
du_'9472'_1850 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_1850 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Conway.Conformance.Ratify.✓†
d_'10003''8224'_1852 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_1852 ~v0 = du_'10003''8224'_1852
du_'10003''8224'_1852 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_1852 = coe du_vote_1828 (coe du_defer_1830)
-- Ledger.Conway.Conformance.Ratify.threshold
d_threshold_1854 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_1854 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NoConfidence_722
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1806 (coe du_'9472'_1850)
             (coe
                du_vote_1828
                (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P1_206
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
                      (coe v1))))
             (coe
                du_vote_1828
                (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q1_238
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
                      (coe v1))))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_UpdateCommittee_724 v4 v5 v6
        -> coe
             du_'8739'_'8741'_'8739'_1818 (coe du_'9472'_1850)
             (coe du_P'47'Q2a'47'b_1968 (coe v1) (coe v2))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NewConstitution_726 v4 v5
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1806 (coe du_'10003'_1966 (coe v2))
             (coe
                du_vote_1828
                (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P3_212
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
                      (coe v1))))
             (coe du_'9472'_1850)
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TriggerHF_728 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1806 (coe du_'10003'_1966 (coe v2))
             (coe
                du_vote_1828
                (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P4_214
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
                      (coe v1))))
             (coe
                du_vote_1828
                (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q4_244
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
                      (coe v1))))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_ChangePParams_730 v4
        -> coe
             du_'8739'_'8741'_'8739'_1818 (coe du_'10003'_1966 (coe v2))
             (coe du_P'47'Q5_1974 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TreasuryWdrl_732 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1806 (coe du_'10003'_1966 (coe v2))
             (coe
                du_vote_1828
                (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P6_224
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
                      (coe v1))))
             (coe du_'9472'_1850)
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_Info_734
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1806 (coe du_'10003''8224'_1852)
             (coe du_'10003''8224'_1852) (coe du_'10003''8224'_1852)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify._.✓
d_'10003'_1966 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_1966 ~v0 ~v1 v2 = du_'10003'_1966 v2
du_'10003'_1966 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_1966 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
      (coe du_'10003''8224'_1852) (coe v0)
-- Ledger.Conway.Conformance.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_1968 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_1968 ~v0 v1 v2 = du_P'47'Q2a'47'b_1968 v1 v2
du_P'47'Q2a'47'b_1968 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_1968 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1828
                (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P2a_208
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
                      (coe v0))))
             (coe
                du_vote_1828
                (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q2a_240
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
                      (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1828
                (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P2b_210
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
                      (coe v0))))
             (coe
                du_vote_1828
                (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q2b_242
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
                      (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify._.pparamThreshold
d_pparamThreshold_1972 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_1972 ~v0 v1 ~v2 v3
  = du_pparamThreshold_1972 v1 v3
du_pparamThreshold_1972 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_1972 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_NetworkGroup_174
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1828
                (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5a_216
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
                      (coe v0))))
             (coe du_'9472'_1850)
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_EconomicGroup_176
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1828
                (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5b_218
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
                      (coe v0))))
             (coe du_'9472'_1850)
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_TechnicalGroup_178
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1828
                (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5c_220
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
                      (coe v0))))
             (coe du_'9472'_1850)
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_GovernanceGroup_180
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1828
                (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5d_222
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
                      (coe v0))))
             (coe du_'9472'_1850)
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_SecurityGroup_182
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_1850)
             (coe
                du_vote_1828
                (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q5e_246
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
                      (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify._.P/Q5
d_P'47'Q5_1974 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_1974 v0 v1 ~v2 v3 = du_P'47'Q5_1974 v0 v1 v3
du_P'47'Q5_1974 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_1974 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_1832
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_1972 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
               (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2268
                     (coe v0)))
               v2)))
      (coe
         du_maxThreshold_1832
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_1972 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
               (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2268
                     (coe v0)))
               v2)))
-- Ledger.Conway.Conformance.Ratify.canVote
d_canVote_1982 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  ()
d_canVote_1982 = erased
-- Ledger.Conway.Conformance.Ratify.StakeDistrs
d_StakeDistrs_1990 a0 = ()
newtype T_StakeDistrs_1990
  = C_StakeDistrs'46'constructor_11415 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ratify.StakeDistrs.stakeDistr
d_stakeDistr_1994 ::
  T_StakeDistrs_1990 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1994 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_11415 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv
d_RatifyEnv_1996 a0 = ()
data T_RatifyEnv_1996
  = C_RatifyEnv'46'constructor_11501 T_StakeDistrs_1990 AgdaAny
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_2008 :: T_RatifyEnv_1996 -> T_StakeDistrs_1990
d_stakeDistrs_2008 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11501 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_2010 :: T_RatifyEnv_1996 -> AgdaAny
d_currentEpoch_2010 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11501 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.dreps
d_dreps_2012 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2012 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11501 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_2014 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2014 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11501 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.treasury
d_treasury_2016 :: T_RatifyEnv_1996 -> Integer
d_treasury_2016 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11501 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyState
d_RatifyState_2018 a0 = ()
data T_RatifyState_2018
  = C_'10214'_'44'_'44'_'10215''691'_2032 MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Conway.Conformance.Ratify.RatifyState.es
d_es_2026 ::
  T_RatifyState_2018 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_es_2026 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_2032 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyState.removed
d_removed_2028 ::
  T_RatifyState_2018 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2028 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_2032 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyState.delay
d_delay_2030 :: T_RatifyState_2018 -> Bool
d_delay_2030 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_2032 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.CCData
d_CCData_2034 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_CCData_2034 = erased
-- Ledger.Conway.Conformance.Ratify.govRole
d_govRole_2036 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690
d_govRole_2036 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_credVoter_704 v1 v2
        -> coe v1
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_abstainRep_706
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_DRep_694
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_noConfidenceRep_708
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_DRep_694
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.IsCC
d_IsCC_2040 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702 ->
  ()
d_IsCC_2040 = erased
-- Ledger.Conway.Conformance.Ratify.IsDRep
d_IsDRep_2042 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702 ->
  ()
d_IsDRep_2042 = erased
-- Ledger.Conway.Conformance.Ratify.IsSPO
d_IsSPO_2044 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702 ->
  ()
d_IsSPO_2044 = erased
-- Ledger.Conway.Conformance.Ratify.actualVotes
d_actualVotes_2052 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2052 v0 v1 v2 v3 v4 v5
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
         (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
               (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_credVoter_704
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_CC_692))
         (coe
            du_actualCCVotes_2184 (coe v0) (coe v1) (coe v2) (coe v3)
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
            (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                  (coe v0))))
         (coe du_actualPDRepVotes_2192 (coe v0) (coe v4))
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
               (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                     (coe v0))))
            (coe du_actualDRepVotes_2194 (coe v0) (coe v1) (coe v5))
            (coe du_actualSPOVotes_2196 (coe v0) (coe v1) (coe v5) (coe v4))))
-- Ledger.Conway.Conformance.Ratify._._.ccHotKeys
d_ccHotKeys_2070 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2070 v0 ~v1 ~v2 ~v3 ~v4 = du_ccHotKeys_2070 v0
du_ccHotKeys_2070 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2070 v0 = coe d_ccHotKeys_2014 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.currentEpoch
d_currentEpoch_2072 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2072 v0 ~v1 ~v2 ~v3 ~v4 = du_currentEpoch_2072 v0
du_currentEpoch_2072 :: T_RatifyEnv_1996 -> AgdaAny
du_currentEpoch_2072 v0 = coe d_currentEpoch_2010 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.dreps
d_dreps_2074 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2074 v0 ~v1 ~v2 ~v3 ~v4 = du_dreps_2074 v0
du_dreps_2074 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2074 v0 = coe d_dreps_2012 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.stakeDistrs
d_stakeDistrs_2076 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1990
d_stakeDistrs_2076 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDistrs_2076 v0
du_stakeDistrs_2076 :: T_RatifyEnv_1996 -> T_StakeDistrs_1990
du_stakeDistrs_2076 v0 = coe d_stakeDistrs_2008 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.treasury
d_treasury_2078 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2078 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_2078 v0
du_treasury_2078 :: T_RatifyEnv_1996 -> Integer
du_treasury_2078 v0 = coe d_treasury_2016 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.roleVotes
d_roleVotes_2148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_roleVotes_2148 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_roleVotes_2148 v5 v6
du_roleVotes_2148 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_roleVotes_2148 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_credVoter_704))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1168
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828))
              (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
         v0)
-- Ledger.Conway.Conformance.Ratify._.activeDReps
d_activeDReps_2156 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20]
d_activeDReps_2156 v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_activeDReps_2156 v0 v1
du_activeDReps_2156 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20]
du_activeDReps_2156 v0 v1
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
                 MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_234
                 (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecPo'45'Slot_68
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                          (coe v0)))
                    (\ v3 v4 -> v3) (d_currentEpoch_2010 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                          (coe v0)))
                    (d_currentEpoch_2010 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                       (coe v0)))
                 (coe d_currentEpoch_2010 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_2012 (coe v1)))
-- Ledger.Conway.Conformance.Ratify._.spos
d_spos_2162 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702]
d_spos_2162 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_spos_2162 v1
du_spos_2162 ::
  T_RatifyEnv_1996 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702]
du_spos_2162 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828))
           (coe d_govRole_2036 (coe v1))
           (coe
              MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_SPO_696))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
         (coe d_stakeDistr_1994 (coe d_stakeDistrs_2008 (coe v0))))
-- Ledger.Conway.Conformance.Ratify._.getCCHotCred
d_getCCHotCred_2164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_getCCHotCred_2164 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_getCCHotCred_2164 v0 v1 v6
du_getCCHotCred_2164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
du_getCCHotCred_2164 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                        (coe
                           MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_234
                           (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecPo'45'Slot_68
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                                 (coe v0)))
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                              (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                                    (coe v0)))
                              (\ v5 v6 -> v5) (d_currentEpoch_2010 (coe v1)) v4)
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v5 v6 -> v6)
                              (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                                    (coe v0)))
                              (d_currentEpoch_2010 (coe v1)) v4))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                                 (coe v0)))
                           (coe d_currentEpoch_2010 (coe v1)) (coe v4))) in
           coe
             (let v6
                    = coe
                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe d_ccHotKeys_2014 (coe v1)) (coe v3)
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              erased
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                       (coe v0)))))
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
                                    (coe d_ccHotKeys_2014 (coe v1)))))) in
              coe
                (case coe v5 of
                   MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                     -> case coe v6 of
                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                            -> case coe v7 of
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8 -> coe v7
                                 _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                          _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                   _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify._.actualCCVote
d_actualCCVote_2174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_754
d_actualCCVote_2174 v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_actualCCVote_2174 v0 v1 v5 v6 v7
du_actualCCVote_2174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_754
du_actualCCVote_2174 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_getCCHotCred_2164 (coe v0) (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v7 -> v7))
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_no_758)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe v2)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_CC_692)
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
                               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                     (coe v0))))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_CC_692)
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
                MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_abstain_760)
-- Ledger.Conway.Conformance.Ratify._.actualCCVotes
d_actualCCVotes_2184 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualCCVotes_2184 v0 v1 v2 v3 ~v4 v5
  = du_actualCCVotes_2184 v0 v1 v2 v3 v5
du_actualCCVotes_2184 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualCCVotes_2184 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Class.ToBool.du_if_then_else__46
                    (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                       (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
                          (coe v2))
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_length'738'_1112
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                             (coe
                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                         (coe v0))))
                                (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                      (coe v0)))))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1260
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe du_getCCHotCred_2164 (coe v0) (coe v1))
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v6)))))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1126
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe du_actualCCVote_2174 (coe v0) (coe v1) (coe v4)) (coe v6)))
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
                               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_no_758)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1470
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify._.actualPDRepVotes
d_actualPDRepVotes_2192 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualPDRepVotes_2192 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_actualPDRepVotes_2192 v0 v6
du_actualPDRepVotes_2192 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualPDRepVotes_2192 v0 v1
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
                 (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
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
                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_abstainRep_706)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_abstain_760)))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_noConfidenceRep_708)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_no_758))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NoConfidence_722
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
                   (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
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
                         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_abstainRep_706)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_abstain_760)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_noConfidenceRep_708)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_yes_756)))
         _ -> coe v2)
-- Ledger.Conway.Conformance.Ratify._.actualDRepVotes
d_actualDRepVotes_2194 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualDRepVotes_2194 v0 v1 ~v2 ~v3 ~v4 v5
  = du_actualDRepVotes_2194 v0 v1 v5
du_actualDRepVotes_2194 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualDRepVotes_2194 v0 v1 v2
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
         (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
               (coe v0))))
      (coe
         du_roleVotes_2148 (coe v2)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_DRep_694))
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
               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_credVoter_704
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_DRep_694))
            (coe du_activeDReps_2156 (coe v0) (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_no_758))
-- Ledger.Conway.Conformance.Ratify._.actualSPOVotes
d_actualSPOVotes_2196 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualSPOVotes_2196 v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_actualSPOVotes_2196 v0 v1 v5 v6
du_actualSPOVotes_2196 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualSPOVotes_2196 v0 v1 v2 v3
  = let v4
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
                 (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                       (coe v0))))
              (coe
                 du_roleVotes_2148 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_SPO_696))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_constMap_1162
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe du_spos_2162 (coe v1))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_abstain_760)) in
    coe
      (case coe v3 of
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TriggerHF_728 v5
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
                   (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                         (coe v0))))
                (coe
                   du_roleVotes_2148 (coe v2)
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_SPO_696))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_constMap_1162
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe du_spos_2162 (coe v1))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_no_758))
         _ -> coe v4)
-- Ledger.Conway.Conformance.Ratify._/₀_
d__'47''8320'__2198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'47''8320'__2198 ~v0 v1 v2 = du__'47''8320'__2198 v1 v2
du__'47''8320'__2198 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'47''8320'__2198 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      _ -> coe
             MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Ratify.getStakeDist
d_getStakeDist_2206 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702] ->
  T_StakeDistrs_1990 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_2206 ~v0 v1 v2 v3 = du_getStakeDist_2206 v1 v2 v3
du_getStakeDist_2206 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702] ->
  T_StakeDistrs_1990 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getStakeDist_2206 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_CC_692
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
                           MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828))
                     (coe d_govRole_2036 (coe v3)) (coe v0))
                v1)
             (coe (1 :: Integer))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_DRep_694
        -> coe
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828))
                  (coe d_govRole_2036 (coe v3)) (coe v0))
             (d_stakeDistr_1994 (coe v2))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_SPO_696
        -> coe
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828))
                  (coe d_govRole_2036 (coe v3)) (coe v0))
             (d_stakeDistr_1994 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.acceptedStakeRatio
d_acceptedStakeRatio_2216 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702] ->
  T_StakeDistrs_1990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_2216 v0 v1 v2 v3 v4
  = coe
      du__'47''8320'__2198
      (coe
         d_acceptedStake_2232 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         d_totalStake_2234 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Conway.Conformance.Ratify._.dist
d_dist_2230 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702] ->
  T_StakeDistrs_1990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dist_2230 ~v0 v1 v2 v3 ~v4 = du_dist_2230 v1 v2 v3
du_dist_2230 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702] ->
  T_StakeDistrs_1990 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dist_2230 v0 v1 v2
  = coe du_getStakeDist_2206 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Conformance.Ratify._.acceptedStake
d_acceptedStake_2232 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702] ->
  T_StakeDistrs_1990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_acceptedStake_2232 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
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
            (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                  (coe v0))))
         (coe du_dist_2230 (coe v1) (coe v2) (coe v3))
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
                  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'Vote_830))
            (coe v4)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_yes_756)))
-- Ledger.Conway.Conformance.Ratify._.totalStake
d_totalStake_2234 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702] ->
  T_StakeDistrs_1990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_2234 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
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
            (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                  (coe v0))))
         (coe du_dist_2230 (coe v1) (coe v2) (coe v3))
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
                     MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'Vote_830))
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
                        MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_yes_756))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_no_758))))))
-- Ledger.Conway.Conformance.Ratify.acceptedBy
d_acceptedBy_2240 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  ()
d_acceptedBy_2240 = erased
-- Ledger.Conway.Conformance.Ratify.accepted
d_accepted_2342 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  ()
d_accepted_2342 = erased
-- Ledger.Conway.Conformance.Ratify.expired
d_expired_2350 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  ()
d_expired_2350 = erased
-- Ledger.Conway.Conformance.Ratify.verifyPrev
d_verifyPrev_2358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 -> ()
d_verifyPrev_2358 = erased
-- Ledger.Conway.Conformance.Ratify.delayingAction
d_delayingAction_2380 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  Bool
d_delayingAction_2380 ~v0 v1 = du_delayingAction_2380 v1
du_delayingAction_2380 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  Bool
du_delayingAction_2380 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NoConfidence_722
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_UpdateCommittee_724 v1 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NewConstitution_726 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TriggerHF_728 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_ChangePParams_730 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TreasuryWdrl_732 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_Info_734
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.delayed
d_delayed_2384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  Bool -> ()
d_delayed_2384 = erased
-- Ledger.Conway.Conformance.Ratify.acceptConds
d_acceptConds_2394 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  T_RatifyState_2018 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2394 = erased
-- Ledger.Conway.Conformance.Ratify._.ccHotKeys
d_ccHotKeys_2410 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2410 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2410 v0
du_ccHotKeys_2410 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2410 v0 = coe d_ccHotKeys_2014 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.currentEpoch
d_currentEpoch_2412 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  AgdaAny
d_currentEpoch_2412 v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2412 v0
du_currentEpoch_2412 :: T_RatifyEnv_1996 -> AgdaAny
du_currentEpoch_2412 v0 = coe d_currentEpoch_2010 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.dreps
d_dreps_2414 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2414 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2414 v0
du_dreps_2414 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2414 v0 = coe d_dreps_2012 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.stakeDistrs
d_stakeDistrs_2416 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  T_StakeDistrs_1990
d_stakeDistrs_2416 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2416 v0
du_stakeDistrs_2416 :: T_RatifyEnv_1996 -> T_StakeDistrs_1990
du_stakeDistrs_2416 v0 = coe d_stakeDistrs_2008 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.treasury
d_treasury_2418 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  Integer
d_treasury_2418 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2418 v0
du_treasury_2418 :: T_RatifyEnv_1996 -> Integer
du_treasury_2418 v0 = coe d_treasury_2016 (coe v0)
-- Ledger.Conway.Conformance.Ratify.verifyPrev?
d_verifyPrev'63'_2440 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2440 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NoConfidence_722
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868 (coe v3))))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_UpdateCommittee_724 v4 v5 v6
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868 (coe v3))))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NewConstitution_726 v4 v5
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TriggerHF_728 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872 (coe v3))))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_ChangePParams_730 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                      (coe v3))))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TreasuryWdrl_732 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_Info_734
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.delayed?
d_delayed'63'_2494 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2494 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe d_verifyPrev'63'_2440 (coe v0) (coe v1) (coe v2) (coe v3))
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
-- Ledger.Conway.Conformance.Ratify.Is-nothing?
d_Is'45'nothing'63'_2510 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_2510 ~v0 ~v1 v2 = du_Is'45'nothing'63'_2510 v2
du_Is'45'nothing'63'_2510 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_2510 v0
  = coe
      MAlonzo.Code.Data.Maybe.Relation.Unary.All.du_dec_254
      (let v1
             = coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26) in
       coe (coe (\ v2 -> v1)))
      (coe v0)
-- Ledger.Conway.Conformance.Ratify.acceptedBy?
d_acceptedBy'63'_2526 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_2526 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3530
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v5 -> v5))
            (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
            (coe
               d_threshold_1854 v0
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                     (coe v2)))
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_map_64
                  (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868 (coe v2))))
               (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                  (coe v3))
               v4))
         (coe
            d_acceptedStakeRatio_2216 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_548
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
               (coe
                  d_actualVotes_2052 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                     (coe v3))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
                     (coe v3))))
            (coe d_stakeDistrs_2008 (coe v1))
            (coe
               d_actualVotes_2052 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                     (coe v2)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868 (coe v2)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                  (coe v3))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
                  (coe v3)))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828)
            v4
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_CC_692))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
            (coe
               MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2808
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                  (coe
                     (\ v5 ->
                        coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_length'738'_1112
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                                   (coe v0))))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
                  (coe (0 :: Integer))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868 (coe v2))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                        (coe v2)))))
            (coe
               du_Is'45'nothing'63'_2510
               (coe
                  d_threshold_1854 v0
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_map_64
                     (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868 (coe v2))))
                  (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                     (coe v3))
                  v4))))
-- Ledger.Conway.Conformance.Ratify.accepted?
d_accepted'63'_2538 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2538 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         d_acceptedBy'63'_2526 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_CC_692))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
         (coe
            d_acceptedBy'63'_2526 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_DRep_694))
         (coe
            d_acceptedBy'63'_2526 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_SPO_696)))
-- Ledger.Conway.Conformance.Ratify.expired?
d_expired'63'_2554 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2554 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_234
         (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecPo'45'Slot_68
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
               (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                  (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_expiresIn_822
               (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                  (coe v0)))
            (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_expiresIn_822
               (coe v2))
            v1))
-- Ledger.Conway.Conformance.Ratify._⊢_⇀⦇_,RATIFY'⦈_
d__'8866'_'8640''10631'_'44'RATIFY'''10632'__2570 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2570
  = C_RATIFY'45'Accept_2610 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_2636 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_2662 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ratify._.ccHotKeys
d_ccHotKeys_2586 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2586 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_ccHotKeys_2586 v1
du_ccHotKeys_2586 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2586 v0 = coe d_ccHotKeys_2014 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.currentEpoch
d_currentEpoch_2588 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  AgdaAny
d_currentEpoch_2588 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_currentEpoch_2588 v1
du_currentEpoch_2588 :: T_RatifyEnv_1996 -> AgdaAny
du_currentEpoch_2588 v0 = coe d_currentEpoch_2010 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.dreps
d_dreps_2590 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2590 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_dreps_2590 v1
du_dreps_2590 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2590 v0 = coe d_dreps_2012 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.stakeDistrs
d_stakeDistrs_2592 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  T_StakeDistrs_1990
d_stakeDistrs_2592 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_stakeDistrs_2592 v1
du_stakeDistrs_2592 :: T_RatifyEnv_1996 -> T_StakeDistrs_1990
du_stakeDistrs_2592 v0 = coe d_stakeDistrs_2008 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.treasury
d_treasury_2594 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  Integer
d_treasury_2594 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_treasury_2594 v1
du_treasury_2594 :: T_RatifyEnv_1996 -> Integer
du_treasury_2594 v0 = coe d_treasury_2016 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.action
d_action_2600 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_2600 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_action_2600 v5
du_action_2600 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
du_action_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0))
-- Ledger.Conway.Conformance.Ratify._.ccHotKeys
d_ccHotKeys_2624 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2624 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2624 v1
du_ccHotKeys_2624 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2624 v0 = coe d_ccHotKeys_2014 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.currentEpoch
d_currentEpoch_2626 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2626 ~v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2626 v1
du_currentEpoch_2626 :: T_RatifyEnv_1996 -> AgdaAny
du_currentEpoch_2626 v0 = coe d_currentEpoch_2010 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.dreps
d_dreps_2628 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2628 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2628 v1
du_dreps_2628 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2628 v0 = coe d_dreps_2012 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.stakeDistrs
d_stakeDistrs_2630 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1990
d_stakeDistrs_2630 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2630 v1
du_stakeDistrs_2630 :: T_RatifyEnv_1996 -> T_StakeDistrs_1990
du_stakeDistrs_2630 v0 = coe d_stakeDistrs_2008 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.treasury
d_treasury_2632 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2632 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2632 v1
du_treasury_2632 :: T_RatifyEnv_1996 -> Integer
du_treasury_2632 v0 = coe d_treasury_2016 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.ccHotKeys
d_ccHotKeys_2650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2650 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2650 v1
du_ccHotKeys_2650 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2650 v0 = coe d_ccHotKeys_2014 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.currentEpoch
d_currentEpoch_2652 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2652 ~v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2652 v1
du_currentEpoch_2652 :: T_RatifyEnv_1996 -> AgdaAny
du_currentEpoch_2652 v0 = coe d_currentEpoch_2010 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.dreps
d_dreps_2654 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2654 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2654 v1
du_dreps_2654 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2654 v0 = coe d_dreps_2012 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.stakeDistrs
d_stakeDistrs_2656 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1990
d_stakeDistrs_2656 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2656 v1
du_stakeDistrs_2656 :: T_RatifyEnv_1996 -> T_StakeDistrs_1990
du_stakeDistrs_2656 v0 = coe d_stakeDistrs_2008 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.treasury
d_treasury_2658 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2658 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2658 v1
du_treasury_2658 :: T_RatifyEnv_1996 -> Integer
du_treasury_2658 v0 = coe d_treasury_2016 (coe v0)
-- Ledger.Conway.Conformance.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2664 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  T_RatifyState_2018 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_2018 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2664 = erased
