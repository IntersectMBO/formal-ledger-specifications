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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
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
-- _.THash
d_THash_258 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_258 = erased
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
-- _.PoolParams
d_PoolParams_322 a0 = ()
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
-- _.PoolParams.rewardAddr
d_rewardAddr_1390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PoolParams_854 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_rewardAddr_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewardAddr_858
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
  = C_RatifyEnv'46'constructor_11555 T_StakeDistrs_1990 AgdaAny
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_2014 :: T_RatifyEnv_1996 -> T_StakeDistrs_1990
d_stakeDistrs_2014 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11555 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_2016 :: T_RatifyEnv_1996 -> AgdaAny
d_currentEpoch_2016 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11555 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.dreps
d_dreps_2018 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2018 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11555 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_2020 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2020 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11555 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.treasury
d_treasury_2022 :: T_RatifyEnv_1996 -> Integer
d_treasury_2022 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11555 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.pools
d_pools_2024 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2024 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11555 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.delegatees
d_delegatees_2026 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2026 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11555 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.stakeDelegs
d_stakeDelegs_2028 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2028 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11555 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyState
d_RatifyState_2030 a0 = ()
data T_RatifyState_2030
  = C_'10214'_'44'_'44'_'10215''691'_2044 MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Conway.Conformance.Ratify.RatifyState.es
d_es_2038 ::
  T_RatifyState_2030 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_es_2038 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_2044 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyState.removed
d_removed_2040 ::
  T_RatifyState_2030 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2040 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_2044 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyState.delay
d_delay_2042 :: T_RatifyState_2030 -> Bool
d_delay_2042 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_2044 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.CCData
d_CCData_2046 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_CCData_2046 = erased
-- Ledger.Conway.Conformance.Ratify.govRole
d_govRole_2048 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690
d_govRole_2048 v0
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
d_IsCC_2052 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702 ->
  ()
d_IsCC_2052 = erased
-- Ledger.Conway.Conformance.Ratify.IsDRep
d_IsDRep_2054 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702 ->
  ()
d_IsDRep_2054 = erased
-- Ledger.Conway.Conformance.Ratify.IsSPO
d_IsSPO_2056 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702 ->
  ()
d_IsSPO_2056 = erased
-- Ledger.Conway.Conformance.Ratify.actualVotes
d_actualVotes_2064 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2064 v0 v1 v2 v3 v4 v5
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
            du_actualCCVotes_2228 (coe v0) (coe v1) (coe v2) (coe v3)
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
         (coe du_actualPDRepVotes_2236 (coe v0) (coe v4))
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
            (coe du_actualDRepVotes_2238 (coe v0) (coe v1) (coe v5))
            (coe du_actualSPOVotes_2240 (coe v0) (coe v1) (coe v5) (coe v4))))
-- Ledger.Conway.Conformance.Ratify._._.ccHotKeys
d_ccHotKeys_2082 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2082 v0 ~v1 ~v2 ~v3 ~v4 = du_ccHotKeys_2082 v0
du_ccHotKeys_2082 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2082 v0 = coe d_ccHotKeys_2020 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.currentEpoch
d_currentEpoch_2084 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2084 v0 ~v1 ~v2 ~v3 ~v4 = du_currentEpoch_2084 v0
du_currentEpoch_2084 :: T_RatifyEnv_1996 -> AgdaAny
du_currentEpoch_2084 v0 = coe d_currentEpoch_2016 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.delegatees
d_delegatees_2086 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2086 v0 ~v1 ~v2 ~v3 ~v4 = du_delegatees_2086 v0
du_delegatees_2086 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2086 v0 = coe d_delegatees_2026 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.dreps
d_dreps_2088 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2088 v0 ~v1 ~v2 ~v3 ~v4 = du_dreps_2088 v0
du_dreps_2088 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2088 v0 = coe d_dreps_2018 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.pools
d_pools_2090 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2090 v0 ~v1 ~v2 ~v3 ~v4 = du_pools_2090 v0
du_pools_2090 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2090 v0 = coe d_pools_2024 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.stakeDelegs
d_stakeDelegs_2092 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2092 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDelegs_2092 v0
du_stakeDelegs_2092 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2092 v0 = coe d_stakeDelegs_2028 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.stakeDistrs
d_stakeDistrs_2094 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1990
d_stakeDistrs_2094 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDistrs_2094 v0
du_stakeDistrs_2094 :: T_RatifyEnv_1996 -> T_StakeDistrs_1990
du_stakeDistrs_2094 v0 = coe d_stakeDistrs_2014 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.treasury
d_treasury_2096 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2096 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_2096 v0
du_treasury_2096 :: T_RatifyEnv_1996 -> Integer
du_treasury_2096 v0 = coe d_treasury_2022 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.roleVotes
d_roleVotes_2166 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_roleVotes_2166 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_roleVotes_2166 v5 v6
du_roleVotes_2166 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_roleVotes_2166 v0 v1
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
d_activeDReps_2174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20]
d_activeDReps_2174 v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_activeDReps_2174 v0 v1
du_activeDReps_2174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20]
du_activeDReps_2174 v0 v1
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
                    (\ v3 v4 -> v3) (d_currentEpoch_2016 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                          (coe v0)))
                    (d_currentEpoch_2016 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                       (coe v0)))
                 (coe d_currentEpoch_2016 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_2018 (coe v1)))
-- Ledger.Conway.Conformance.Ratify._.spos
d_spos_2180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702]
d_spos_2180 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_spos_2180 v1
du_spos_2180 ::
  T_RatifyEnv_1996 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702]
du_spos_2180 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828))
           (coe d_govRole_2048 (coe v1))
           (coe
              MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_SPO_696))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
         (coe d_stakeDistr_1994 (coe d_stakeDistrs_2014 (coe v0))))
-- Ledger.Conway.Conformance.Ratify._.getCCHotCred
d_getCCHotCred_2182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_getCCHotCred_2182 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_getCCHotCred_2182 v0 v1 v6
du_getCCHotCred_2182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
du_getCCHotCred_2182 v0 v1 v2
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
                              (\ v5 v6 -> v5) (d_currentEpoch_2016 (coe v1)) v4)
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v5 v6 -> v6)
                              (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                                    (coe v0)))
                              (d_currentEpoch_2016 (coe v1)) v4))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                                 (coe v0)))
                           (coe d_currentEpoch_2016 (coe v1)) (coe v4))) in
           coe
             (let v6
                    = coe
                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe d_ccHotKeys_2020 (coe v1)) (coe v3)
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
                                    (coe d_ccHotKeys_2020 (coe v1)))))) in
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
-- Ledger.Conway.Conformance.Ratify._.getPoolParams
d_getPoolParams_2192 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  Maybe MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PoolParams_854
d_getPoolParams_2192 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_getPoolParams_2192 v0 v1 v6
du_getPoolParams_2192 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  Maybe MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PoolParams_854
du_getPoolParams_2192 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe d_stakeDelegs_2028 (coe v1)) (coe v2)
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
                 (coe v2)
                 (let v3
                        = MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                  coe
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v3
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                          (coe d_stakeDelegs_2028 (coe v1)))))) in
    coe
      (case coe v3 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe d_pools_2024 (coe v1)) (coe v4)
                (coe
                   MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                   (coe
                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                      erased
                      (MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                               (coe v0)))))
                   (coe v4)
                   (let v5
                          = MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                    coe
                      (coe
                         MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v5
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                            (coe d_pools_2024 (coe v1))))))
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v3
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Ratify._.SPODefaultVote
d_SPODefaultVote_2200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_754
d_SPODefaultVote_2200 v0 v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_SPODefaultVote_2200 v0 v1 v6 v7
du_SPODefaultVote_2200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_754
du_SPODefaultVote_2200 v0 v1 v2 v3
  = let v4
          = let v4
                  = coe
                      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_no_758 in
            coe
              (case coe v3 of
                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_credVoter_704 v5 v6
                   -> case coe v5 of
                        MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_SPO_696
                          -> let v7 = coe du_getPoolParams_2192 (coe v0) (coe v1) (coe v6) in
                             coe
                               (case coe v7 of
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                                    -> let v9
                                             = coe
                                                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe d_delegatees_2026 (coe v1))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewardAddr_858
                                                    (coe v8))
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
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewardAddr_858
                                                       (coe v8))
                                                    (let v9
                                                           = MAlonzo.Code.Axiom.Set.d_th_1470
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v9
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                             (coe d_delegatees_2026 (coe v1)))))) in
                                       coe
                                         (case coe v9 of
                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                                              -> case coe v10 of
                                                   MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_abstainRep_706
                                                     -> coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_abstain_760
                                                   _ -> coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_no_758
                                            _ -> coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_no_758)
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                    -> coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_no_758
                                  _ -> MAlonzo.RTE.mazUnreachableError)
                        _ -> coe v4
                 _ -> coe v4) in
    coe
      (case coe v2 of
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NoConfidence_722
           -> case coe v3 of
                MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_credVoter_704 v5 v6
                  -> case coe v5 of
                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_SPO_696
                         -> let v7 = coe du_getPoolParams_2192 (coe v0) (coe v1) (coe v6) in
                            coe
                              (case coe v7 of
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                                   -> let v9
                                            = coe
                                                MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe d_delegatees_2026 (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewardAddr_858
                                                   (coe v8))
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewardAddr_858
                                                      (coe v8))
                                                   (let v9
                                                          = MAlonzo.Code.Axiom.Set.d_th_1470
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v9
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                            (coe d_delegatees_2026 (coe v1)))))) in
                                      coe
                                        (case coe v9 of
                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                                             -> case coe v10 of
                                                  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_abstainRep_706
                                                    -> coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_abstain_760
                                                  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_noConfidenceRep_708
                                                    -> coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_yes_756
                                                  _ -> coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_no_758
                                           _ -> coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_no_758)
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                   -> coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_no_758
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> coe v4
                _ -> coe v4
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TriggerHF_728 v5
           -> coe
                MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_no_758
         _ -> coe v4)
-- Ledger.Conway.Conformance.Ratify._.actualCCVote
d_actualCCVote_2218 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_754
d_actualCCVote_2218 v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_actualCCVote_2218 v0 v1 v5 v6 v7
du_actualCCVote_2218 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_754
du_actualCCVote_2218 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_getCCHotCred_2182 (coe v0) (coe v1)
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
d_actualCCVotes_2228 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualCCVotes_2228 v0 v1 v2 v3 ~v4 v5
  = du_actualCCVotes_2228 v0 v1 v2 v3 v5
du_actualCCVotes_2228 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualCCVotes_2228 v0 v1 v2 v3 v4
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
                             (coe du_getCCHotCred_2182 (coe v0) (coe v1))
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v6)))))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1126
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe du_actualCCVote_2218 (coe v0) (coe v1) (coe v4)) (coe v6)))
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
d_actualPDRepVotes_2236 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualPDRepVotes_2236 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_actualPDRepVotes_2236 v0 v6
du_actualPDRepVotes_2236 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualPDRepVotes_2236 v0 v1
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
d_actualDRepVotes_2238 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualDRepVotes_2238 v0 v1 ~v2 ~v3 ~v4 v5
  = du_actualDRepVotes_2238 v0 v1 v5
du_actualDRepVotes_2238 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualDRepVotes_2238 v0 v1 v2
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
         du_roleVotes_2166 (coe v2)
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
            (coe du_activeDReps_2174 (coe v0) (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_no_758))
-- Ledger.Conway.Conformance.Ratify._.actualSPOVotes
d_actualSPOVotes_2240 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualSPOVotes_2240 v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_actualSPOVotes_2240 v0 v1 v5 v6
du_actualSPOVotes_2240 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualSPOVotes_2240 v0 v1 v2 v3
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
         du_roleVotes_2166 (coe v2)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_SPO_696))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1078
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_SPODefaultVote_2200 (coe v0) (coe v1) (coe v3))
         (coe du_spos_2180 (coe v1)))
-- Ledger.Conway.Conformance.Ratify._/₀_
d__'47''8320'__2244 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'47''8320'__2244 ~v0 v1 v2 = du__'47''8320'__2244 v1 v2
du__'47''8320'__2244 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'47''8320'__2244 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      _ -> coe
             MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Ratify.getStakeDist
d_getStakeDist_2252 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702] ->
  T_StakeDistrs_1990 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_2252 ~v0 v1 v2 v3 = du_getStakeDist_2252 v1 v2 v3
du_getStakeDist_2252 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702] ->
  T_StakeDistrs_1990 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getStakeDist_2252 v0 v1 v2
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
                     (coe d_govRole_2048 (coe v3)) (coe v0))
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
                  (coe d_govRole_2048 (coe v3)) (coe v0))
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
                  (coe d_govRole_2048 (coe v3)) (coe v0))
             (d_stakeDistr_1994 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.acceptedStakeRatio
d_acceptedStakeRatio_2262 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702] ->
  T_StakeDistrs_1990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_2262 v0 v1 v2 v3 v4
  = coe
      du__'47''8320'__2244
      (coe
         d_acceptedStake_2278 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         d_totalStake_2280 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Conway.Conformance.Ratify._.dist
d_dist_2276 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702] ->
  T_StakeDistrs_1990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dist_2276 ~v0 v1 v2 v3 ~v4 = du_dist_2276 v1 v2 v3
du_dist_2276 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702] ->
  T_StakeDistrs_1990 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dist_2276 v0 v1 v2
  = coe du_getStakeDist_2252 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Conformance.Ratify._.acceptedStake
d_acceptedStake_2278 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702] ->
  T_StakeDistrs_1990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_acceptedStake_2278 v0 v1 v2 v3 v4
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
         (coe du_dist_2276 (coe v1) (coe v2) (coe v3))
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
d_totalStake_2280 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_VDeleg_702] ->
  T_StakeDistrs_1990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_2280 v0 v1 v2 v3 v4
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
         (coe du_dist_2276 (coe v1) (coe v2) (coe v3))
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
d_acceptedBy_2286 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  ()
d_acceptedBy_2286 = erased
-- Ledger.Conway.Conformance.Ratify.accepted
d_accepted_2388 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  ()
d_accepted_2388 = erased
-- Ledger.Conway.Conformance.Ratify.expired
d_expired_2396 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  ()
d_expired_2396 = erased
-- Ledger.Conway.Conformance.Ratify.verifyPrev
d_verifyPrev_2404 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 -> ()
d_verifyPrev_2404 = erased
-- Ledger.Conway.Conformance.Ratify.delayingAction
d_delayingAction_2426 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  Bool
d_delayingAction_2426 ~v0 v1 = du_delayingAction_2426 v1
du_delayingAction_2426 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  Bool
du_delayingAction_2426 v0
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
d_delayed_2430 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  Bool -> ()
d_delayed_2430 = erased
-- Ledger.Conway.Conformance.Ratify.acceptConds
d_acceptConds_2440 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  T_RatifyState_2030 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2440 = erased
-- Ledger.Conway.Conformance.Ratify._.ccHotKeys
d_ccHotKeys_2456 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2456 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2456 v0
du_ccHotKeys_2456 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2456 v0 = coe d_ccHotKeys_2020 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.currentEpoch
d_currentEpoch_2458 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  AgdaAny
d_currentEpoch_2458 v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2458 v0
du_currentEpoch_2458 :: T_RatifyEnv_1996 -> AgdaAny
du_currentEpoch_2458 v0 = coe d_currentEpoch_2016 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.delegatees
d_delegatees_2460 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2460 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_delegatees_2460 v0
du_delegatees_2460 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2460 v0 = coe d_delegatees_2026 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.dreps
d_dreps_2462 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2462 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2462 v0
du_dreps_2462 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2462 v0 = coe d_dreps_2018 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.pools
d_pools_2464 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2464 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_pools_2464 v0
du_pools_2464 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2464 v0 = coe d_pools_2024 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.stakeDelegs
d_stakeDelegs_2466 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2466 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDelegs_2466 v0
du_stakeDelegs_2466 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2466 v0 = coe d_stakeDelegs_2028 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.stakeDistrs
d_stakeDistrs_2468 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  T_StakeDistrs_1990
d_stakeDistrs_2468 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2468 v0
du_stakeDistrs_2468 :: T_RatifyEnv_1996 -> T_StakeDistrs_1990
du_stakeDistrs_2468 v0 = coe d_stakeDistrs_2014 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.treasury
d_treasury_2470 ::
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  Integer
d_treasury_2470 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2470 v0
du_treasury_2470 :: T_RatifyEnv_1996 -> Integer
du_treasury_2470 v0 = coe d_treasury_2022 (coe v0)
-- Ledger.Conway.Conformance.Ratify.verifyPrev?
d_verifyPrev'63'_2492 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2492 v0 v1 v2 v3
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
d_delayed'63'_2546 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2546 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe d_verifyPrev'63'_2492 (coe v0) (coe v1) (coe v2) (coe v3))
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
d_Is'45'nothing'63'_2562 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_2562 ~v0 ~v1 v2 = du_Is'45'nothing'63'_2562 v2
du_Is'45'nothing'63'_2562 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_2562 v0
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
d_acceptedBy'63'_2578 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_2578 v0 v1 v2 v3 v4
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
            d_acceptedStakeRatio_2262 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_548
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
               (coe
                  d_actualVotes_2064 (coe v0) (coe v1)
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
            (coe d_stakeDistrs_2014 (coe v1))
            (coe
               d_actualVotes_2064 (coe v0) (coe v1)
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
               du_Is'45'nothing'63'_2562
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
d_accepted'63'_2590 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2590 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         d_acceptedBy'63'_2578 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_CC_692))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
         (coe
            d_acceptedBy'63'_2578 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_DRep_694))
         (coe
            d_acceptedBy'63'_2578 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_SPO_696)))
-- Ledger.Conway.Conformance.Ratify.expired?
d_expired'63'_2606 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2606 v0 v1 v2
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
d__'8866'_'8640''10631'_'44'RATIFY'''10632'__2622 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2622
  = C_RATIFY'45'Accept_2668 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_2700 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_2732 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ratify._.ccHotKeys
d_ccHotKeys_2638 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2638 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_ccHotKeys_2638 v1
du_ccHotKeys_2638 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2638 v0 = coe d_ccHotKeys_2020 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.currentEpoch
d_currentEpoch_2640 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  AgdaAny
d_currentEpoch_2640 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_currentEpoch_2640 v1
du_currentEpoch_2640 :: T_RatifyEnv_1996 -> AgdaAny
du_currentEpoch_2640 v0 = coe d_currentEpoch_2016 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.delegatees
d_delegatees_2642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2642 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_delegatees_2642 v1
du_delegatees_2642 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2642 v0 = coe d_delegatees_2026 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.dreps
d_dreps_2644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2644 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_dreps_2644 v1
du_dreps_2644 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2644 v0 = coe d_dreps_2018 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.pools
d_pools_2646 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2646 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_pools_2646 v1
du_pools_2646 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2646 v0 = coe d_pools_2024 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.stakeDelegs
d_stakeDelegs_2648 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2648 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_stakeDelegs_2648 v1
du_stakeDelegs_2648 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2648 v0 = coe d_stakeDelegs_2028 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.stakeDistrs
d_stakeDistrs_2650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  T_StakeDistrs_1990
d_stakeDistrs_2650 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_stakeDistrs_2650 v1
du_stakeDistrs_2650 :: T_RatifyEnv_1996 -> T_StakeDistrs_1990
du_stakeDistrs_2650 v0 = coe d_stakeDistrs_2014 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.treasury
d_treasury_2652 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  Integer
d_treasury_2652 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_treasury_2652 v1
du_treasury_2652 :: T_RatifyEnv_1996 -> Integer
du_treasury_2652 v0 = coe d_treasury_2022 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.action
d_action_2658 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_2658 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_action_2658 v5
du_action_2658 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
du_action_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0))
-- Ledger.Conway.Conformance.Ratify._.ccHotKeys
d_ccHotKeys_2682 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2682 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2682 v1
du_ccHotKeys_2682 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2682 v0 = coe d_ccHotKeys_2020 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.currentEpoch
d_currentEpoch_2684 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2684 ~v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2684 v1
du_currentEpoch_2684 :: T_RatifyEnv_1996 -> AgdaAny
du_currentEpoch_2684 v0 = coe d_currentEpoch_2016 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.delegatees
d_delegatees_2686 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2686 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_delegatees_2686 v1
du_delegatees_2686 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2686 v0 = coe d_delegatees_2026 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.dreps
d_dreps_2688 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2688 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2688 v1
du_dreps_2688 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2688 v0 = coe d_dreps_2018 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.pools
d_pools_2690 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2690 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_pools_2690 v1
du_pools_2690 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2690 v0 = coe d_pools_2024 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.stakeDelegs
d_stakeDelegs_2692 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2692 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDelegs_2692 v1
du_stakeDelegs_2692 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2692 v0 = coe d_stakeDelegs_2028 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.stakeDistrs
d_stakeDistrs_2694 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1990
d_stakeDistrs_2694 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2694 v1
du_stakeDistrs_2694 :: T_RatifyEnv_1996 -> T_StakeDistrs_1990
du_stakeDistrs_2694 v0 = coe d_stakeDistrs_2014 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.treasury
d_treasury_2696 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2696 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2696 v1
du_treasury_2696 :: T_RatifyEnv_1996 -> Integer
du_treasury_2696 v0 = coe d_treasury_2022 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.ccHotKeys
d_ccHotKeys_2714 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2714 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2714 v1
du_ccHotKeys_2714 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2714 v0 = coe d_ccHotKeys_2020 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.currentEpoch
d_currentEpoch_2716 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2716 ~v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2716 v1
du_currentEpoch_2716 :: T_RatifyEnv_1996 -> AgdaAny
du_currentEpoch_2716 v0 = coe d_currentEpoch_2016 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.delegatees
d_delegatees_2718 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2718 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_delegatees_2718 v1
du_delegatees_2718 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2718 v0 = coe d_delegatees_2026 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.dreps
d_dreps_2720 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2720 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2720 v1
du_dreps_2720 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2720 v0 = coe d_dreps_2018 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.pools
d_pools_2722 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2722 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_pools_2722 v1
du_pools_2722 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2722 v0 = coe d_pools_2024 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.stakeDelegs
d_stakeDelegs_2724 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2724 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDelegs_2724 v1
du_stakeDelegs_2724 ::
  T_RatifyEnv_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2724 v0 = coe d_stakeDelegs_2028 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.stakeDistrs
d_stakeDistrs_2726 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1990
d_stakeDistrs_2726 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2726 v1
du_stakeDistrs_2726 :: T_RatifyEnv_1996 -> T_StakeDistrs_1990
du_stakeDistrs_2726 v0 = coe d_stakeDistrs_2014 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.treasury
d_treasury_2728 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2728 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2728 v1
du_treasury_2728 :: T_RatifyEnv_1996 -> Integer
du_treasury_2728 v0 = coe d_treasury_2022 (coe v0)
-- Ledger.Conway.Conformance.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2734 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RatifyEnv_1996 ->
  T_RatifyState_2030 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_2030 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2734 = erased
