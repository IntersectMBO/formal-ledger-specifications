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

module MAlonzo.Code.Ledger.Ratify where

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
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.All
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Properties.Ext
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.Credential
d_Credential_68 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_116 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_126 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_126 ~v0 = du_DecEq'45'GovRole_126
du_DecEq'45'GovRole_126 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_126
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800
-- _.Epoch
d_Epoch_194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_194 = erased
-- _.GovAction
d_GovAction_210 a0 = ()
-- _.GovActionID
d_GovActionID_214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_214 = erased
-- _.GovActionState
d_GovActionState_216 a0 = ()
-- _.GovRole
d_GovRole_224 a0 = ()
-- _.NeedsHash
d_NeedsHash_268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_NeedsHash_268 = erased
-- _.PParamGroup
d_PParamGroup_298 a0 = ()
-- _.PParams
d_PParams_300 a0 = ()
-- _.UpdateT
d_UpdateT_304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UpdateT_304 = erased
-- _.VDeleg
d_VDeleg_462 a0 = ()
-- _.preoEpoch
d_preoEpoch_626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_626 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0))
-- _.GovActionState.action
d_action_896 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_896 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_796 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_898 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  AgdaAny
d_expiresIn_898 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_794 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_900 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  AgdaAny
d_prevAction_900 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_798 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_902 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_902 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_792 (coe v0)
-- _.GovActionState.votes
d_votes_904 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_904 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_790 (coe v0)
-- _.GovernanceActions.GovAction
d_GovAction_982 a0 = ()
-- _.GovernanceActions.GovActionState
d_GovActionState_986 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_990 a0 = ()
-- _.GovernanceActions.VDeleg
d_VDeleg_1012 a0 = ()
-- _.PParams.Emax
d_Emax_1146 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_1146 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_334 (coe v0)
-- _.PParams.a
d_a_1148 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_1148 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_318 (coe v0)
-- _.PParams.a0
d_a0_1150 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1150 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_338 (coe v0)
-- _.PParams.b
d_b_1152 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_1152 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_320 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1154 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_1154 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_350 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1156 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_1156 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_348 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1158 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_1158 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_326 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1160 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_1160 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_340 (coe v0)
-- _.PParams.costmdls
d_costmdls_1162 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_1162 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_342 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1164 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_1164 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_358 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1166 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_1166 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_356 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1168 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_1168 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1170 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_1170 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_354 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1172 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_1172 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_352 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1174 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_1174 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_322 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1176 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_1176 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_310 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1178 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_1178 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_302 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1180 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_1180 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_314 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1182 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_1182 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_306 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1184 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_1184 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_308 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1186 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_1186 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_304 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1188 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_1188 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_312 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1190 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1190 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_330
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1192 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_1192 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_332 (coe v0)
-- _.PParams.nopt
d_nopt_1194 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_1194 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_336 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1196 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_1196 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_324 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1198 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_1198 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_344 (coe v0)
-- _.PParams.prices
d_prices_1200 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_1200 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_328 (coe v0)
-- _.PParams.pv
d_pv_1202 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1202 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_316 (coe v0)
-- Ledger.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1714 a0 a1 a2 a3 a4 = ()
-- Ledger.Ratify._.EnactEnv
d_EnactEnv_1730 a0 = ()
-- Ledger.Ratify._.EnactState
d_EnactState_1732 a0 = ()
-- Ledger.Ratify._.EnactEnv.epoch
d_epoch_1760 :: MAlonzo.Code.Ledger.Enact.T_EnactEnv_812 -> AgdaAny
d_epoch_1760 v0
  = coe MAlonzo.Code.Ledger.Enact.d_epoch_824 (coe v0)
-- Ledger.Ratify._.EnactEnv.gid
d_gid_1762 ::
  MAlonzo.Code.Ledger.Enact.T_EnactEnv_812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1762 v0 = coe MAlonzo.Code.Ledger.Enact.d_gid_820 (coe v0)
-- Ledger.Ratify._.EnactEnv.treasury
d_treasury_1764 ::
  MAlonzo.Code.Ledger.Enact.T_EnactEnv_812 -> Integer
d_treasury_1764 v0
  = coe MAlonzo.Code.Ledger.Enact.d_treasury_822 (coe v0)
-- Ledger.Ratify._.EnactState.cc
d_cc_1768 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1768 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v0)
-- Ledger.Ratify._.EnactState.constitution
d_constitution_1770 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1770 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_842 (coe v0)
-- Ledger.Ratify._.EnactState.pparams
d_pparams_1772 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1772 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v0)
-- Ledger.Ratify._.EnactState.pv
d_pv_1774 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1774 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_844 (coe v0)
-- Ledger.Ratify._.EnactState.withdrawals
d_withdrawals_1776 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1776 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_848 (coe v0)
-- Ledger.Ratify._.Vote
d_Vote_1780 a0 = ()
-- Ledger.Ratify._∧_
d__'8743'__1790 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__1790 = erased
-- Ledger.Ratify._
d___1792 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
d___1792 ~v0 = du___1792
du___1792 :: MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
du___1792
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334
-- Ledger.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 -> AgdaAny
d_'8739'_'8739'_'8739'_'8739'_1796 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_1796 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_1796 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 -> AgdaAny
du_'8739'_'8739'_'8739'_'8739'_1796 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_664 -> coe v0
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666 -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_668 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_1808 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 -> AgdaAny
d_'8739'_'8741'_'8739'_1808 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_1808 v2 v3
du_'8739'_'8741'_'8739'_1808 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 -> AgdaAny
du_'8739'_'8741'_'8739'_1808 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.GovernanceActions.C_CC_664 -> coe v0
                  MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666 -> coe v2
                  MAlonzo.Code.Ledger.GovernanceActions.C_SPO_668 -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.vote
d_vote_1818 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_1818 ~v0 = du_vote_1818
du_vote_1818 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_1818 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Ratify.defer
d_defer_1820 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_1820 ~v0 = du_defer_1820
du_defer_1820 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_1820
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Ratify.maxThreshold
d_maxThreshold_1822 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_1822 ~v0 v1 = du_maxThreshold_1822 v1
du_maxThreshold_1822 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_1822 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230 (coe du_comb_1830)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218 v0))
-- Ledger.Ratify._.comb
d_comb_1830 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_comb_1830 ~v0 ~v1 v2 v3 = du_comb_1830 v2 v3
du_comb_1830 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_comb_1830 v0 v1
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
-- Ledger.Ratify.─
d_'9472'_1840 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_1840 ~v0 = du_'9472'_1840
du_'9472'_1840 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_1840 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Ratify.✓†
d_'10003''8224'_1842 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_1842 ~v0 = du_'10003''8224'_1842
du_'10003''8224'_1842 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_1842 = coe du_vote_1818 (coe du_defer_1820)
-- Ledger.Ratify.threshold
d_threshold_1844 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_1844 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_694
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1796 (coe du_'9472'_1840)
             (coe
                du_vote_1818
                (MAlonzo.Code.Ledger.PParams.d_P1_200
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v1))))
             (coe
                du_vote_1818
                (MAlonzo.Code.Ledger.PParams.d_Q1_232
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_344 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_696 v4 v5 v6
        -> coe
             du_'8739'_'8741'_'8739'_1808 (coe du_'9472'_1840)
             (coe du_P'47'Q2a'47'b_1950 (coe v1) (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_698 v4 v5
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1796 (coe du_'10003'_1948 (coe v2))
             (coe
                du_vote_1818
                (MAlonzo.Code.Ledger.PParams.d_P3_206
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v1))))
             (coe du_'9472'_1840)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_700 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1796 (coe du_'10003'_1948 (coe v2))
             (coe
                du_vote_1818
                (MAlonzo.Code.Ledger.PParams.d_P4_208
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v1))))
             (coe
                du_vote_1818
                (MAlonzo.Code.Ledger.PParams.d_Q4_238
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_344 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_702 v4
        -> coe
             du_'8739'_'8741'_'8739'_1808 (coe du_'10003'_1948 (coe v2))
             (coe du_P'47'Q5_1956 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_704 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1796 (coe du_'10003'_1948 (coe v2))
             (coe
                du_vote_1818
                (MAlonzo.Code.Ledger.PParams.d_P6_218
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v1))))
             (coe du_'9472'_1840)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_706
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1796 (coe du_'10003''8224'_1842)
             (coe du_'10003''8224'_1842) (coe du_'10003''8224'_1842)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.✓
d_'10003'_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_1948 ~v0 ~v1 v2 = du_'10003'_1948 v2
du_'10003'_1948 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_1948 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
      (coe du_'10003''8224'_1842) (coe v0)
-- Ledger.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_1950 ~v0 v1 v2 = du_P'47'Q2a'47'b_1950 v1 v2
du_P'47'Q2a'47'b_1950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_1950 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1818
                (MAlonzo.Code.Ledger.PParams.d_P2a_202
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v0))))
             (coe
                du_vote_1818
                (MAlonzo.Code.Ledger.PParams.d_Q2a_234
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_344 (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1818
                (MAlonzo.Code.Ledger.PParams.d_P2b_204
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v0))))
             (coe
                du_vote_1818
                (MAlonzo.Code.Ledger.PParams.d_Q2b_236
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_344 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.pparamThreshold
d_pparamThreshold_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_1954 ~v0 v1 ~v2 v3
  = du_pparamThreshold_1954 v1 v3
du_pparamThreshold_1954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_1954 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.PParams.C_NetworkGroup_168
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1818
                (MAlonzo.Code.Ledger.PParams.d_P5a_210
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v0))))
             (coe du_'9472'_1840)
      MAlonzo.Code.Ledger.PParams.C_EconomicGroup_170
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1818
                (MAlonzo.Code.Ledger.PParams.d_P5b_212
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v0))))
             (coe du_'9472'_1840)
      MAlonzo.Code.Ledger.PParams.C_TechnicalGroup_172
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1818
                (MAlonzo.Code.Ledger.PParams.d_P5c_214
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v0))))
             (coe du_'9472'_1840)
      MAlonzo.Code.Ledger.PParams.C_GovernanceGroup_174
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1818
                (MAlonzo.Code.Ledger.PParams.d_P5d_216
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v0))))
             (coe du_'9472'_1840)
      MAlonzo.Code.Ledger.PParams.C_SecurityGroup_176
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_1840)
             (coe
                du_vote_1818
                (MAlonzo.Code.Ledger.PParams.d_Q5e_240
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_344 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.P/Q5
d_P'47'Q5_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_1956 v0 v1 ~v2 v3 = du_P'47'Q5_1956 v0 v1 v3
du_P'47'Q5_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_1956 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_1822
         (coe
            MAlonzo.Code.Axiom.Set.du_map_386
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_1954 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_1164
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_1210
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2218 (coe v0)))
               v2)))
      (coe
         du_maxThreshold_1822
         (coe
            MAlonzo.Code.Axiom.Set.du_map_386
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_1954 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_1164
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_1210
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2218 (coe v0)))
               v2)))
-- Ledger.Ratify.canVote
d_canVote_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 -> ()
d_canVote_1964 = erased
-- Ledger.Ratify.StakeDistrs
d_StakeDistrs_1972 a0 = ()
newtype T_StakeDistrs_1972
  = C_StakeDistrs'46'constructor_11339 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify.StakeDistrs.stakeDistr
d_stakeDistr_1976 ::
  T_StakeDistrs_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1976 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_11339 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv
d_RatifyEnv_1978 a0 = ()
data T_RatifyEnv_1978
  = C_RatifyEnv'46'constructor_11425 T_StakeDistrs_1972 AgdaAny
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_1990 :: T_RatifyEnv_1978 -> T_StakeDistrs_1972
d_stakeDistrs_1990 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11425 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_1992 :: T_RatifyEnv_1978 -> AgdaAny
d_currentEpoch_1992 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11425 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.dreps
d_dreps_1994 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1994 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11425 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_1996 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1996 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11425 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.treasury
d_treasury_1998 :: T_RatifyEnv_1978 -> Integer
d_treasury_1998 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11425 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState
d_RatifyState_2000 a0 = ()
data T_RatifyState_2000
  = C_'10214'_'44'_'44'_'10215''691'_2014 MAlonzo.Code.Ledger.Enact.T_EnactState_828
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Ratify.RatifyState.es
d_es_2008 ::
  T_RatifyState_2000 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_es_2008 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_2014 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.removed
d_removed_2010 ::
  T_RatifyState_2000 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2010 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_2014 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.delay
d_delay_2012 :: T_RatifyState_2000 -> Bool
d_delay_2012 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_2014 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.CCData
d_CCData_2016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CCData_2016 = erased
-- Ledger.Ratify.govRole
d_govRole_2018 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662
d_govRole_2018 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_676 v1 v2
        -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_678
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666
      MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_680
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.IsCC
d_IsCC_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674 -> ()
d_IsCC_2022 = erased
-- Ledger.Ratify.IsDRep
d_IsDRep_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674 -> ()
d_IsDRep_2024 = erased
-- Ledger.Ratify.IsSPO
d_IsSPO_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674 -> ()
d_IsSPO_2026 = erased
-- Ledger.Ratify.coinThreshold
d_coinThreshold_2034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer
d_coinThreshold_2034 ~v0 = du_coinThreshold_2034
du_coinThreshold_2034 :: Integer
du_coinThreshold_2034 = coe (1000000000 :: Integer)
-- Ledger.Ratify.rankThreshold
d_rankThreshold_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer
d_rankThreshold_2036 ~v0 = du_rankThreshold_2036
du_rankThreshold_2036 :: Integer
du_rankThreshold_2036 = coe (1000 :: Integer)
-- Ledger.Ratify.mostStakeDRepDist
d_mostStakeDRepDist_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist_2038 ~v0 v1 v2
  = du_mostStakeDRepDist_2038 v1 v2
du_mostStakeDRepDist_2038 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mostStakeDRepDist_2038 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du__'8739''94'''__1154 (coe v0)
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802 (coe v1)
                 (coe v2))))
-- Ledger.Ratify.mostStakeDRepDist-0
d_mostStakeDRepDist'45'0_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist'45'0_2048 ~v0 v1
  = du_mostStakeDRepDist'45'0_2048 v1
du_mostStakeDRepDist'45'0_2048 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mostStakeDRepDist'45'0_2048 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v1 v2 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'filter_414
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1458
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v0))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                       (MAlonzo.Code.Axiom.Set.d_sp_150
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1458
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_214
                          (coe
                             (\ v3 ->
                                coe
                                  MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                  (coe
                                     MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802
                                     (coe (0 :: Integer)) (coe v3)))))
                       (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                    (coe v1))
                 v2)))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1724
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45'filter_414
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4) (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534)
                    (coe du_mostStakeDRepDist_2038 (coe v0) (coe (0 :: Integer))) v0)
                 (coe
                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                    (MAlonzo.Code.Axiom.Set.d_sp_150
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1458
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_214
                       (coe
                          (\ v3 ->
                             coe
                               MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802
                                  (coe (0 :: Integer)) (coe v3)))))
                    (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                 (coe v1))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26) (coe v2))))
-- Ledger.Ratify.mostStakeDRepDist-∅
d_mostStakeDRepDist'45''8709'_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist'45''8709'_2056 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         addInt (coe (1 :: Integer))
         (coe
            MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
            (coe
               MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
            (coe (\ v2 -> v2)) (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_432
         (coe
            (\ v2 v3 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
-- Ledger.Ratify._.helper
d_helper_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_helper_2070 = erased
-- Ledger.Ratify.∃topNDRepDist
d_'8707'topNDRepDist_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'topNDRepDist_2098 v0 v1 v2 ~v3 ~v4
  = du_'8707'topNDRepDist_2098 v0 v1 v2
du_'8707'topNDRepDist_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'topNDRepDist_2098 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
            (coe
               (\ v3 ->
                  MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2808
                    (coe
                       MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                          (coe
                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                          (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                       (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_specification_174
                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                             erased erased (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                (MAlonzo.Code.Axiom.Set.d_sp_150
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                erased erased erased
                                (coe
                                   MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_214
                                   (coe
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                              (\ v5 ->
                                                 coe
                                                   MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2746
                                                   (coe v3))
                                              (coe
                                                 MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2758)
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                 (coe
                                                    MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                    (coe v3) (coe v4))
                                                 (coe
                                                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                       (coe v3) (coe v4))))))))
                                (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))))
                    (coe v1)))
            (coe
               MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
               (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72) erased
               (d_mostStakeDRepDist'45''8709'_2056 (coe v0) (coe v2)))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
                  (coe
                     (\ v3 ->
                        MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2808
                          (coe
                             MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
                             (coe
                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                (coe
                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_specification_174
                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   erased erased (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                            (coe
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                      erased erased erased
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_214
                                         (coe
                                            (\ v4 ->
                                               coe
                                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                 (coe
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                    (\ v5 ->
                                                       coe
                                                         MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2746
                                                         (coe v3))
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2758)
                                                    (coe
                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                          (coe v3) (coe v4))
                                                       (coe
                                                          MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                          (coe
                                                             MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                             (coe v3) (coe v4))))))))
                                      (\ v4 ->
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))))
                          (coe v1)))
                  (coe
                     MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                     (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72) erased
                     (d_mostStakeDRepDist'45''8709'_2056 (coe v0) (coe v2))))))
         (coe
            MAlonzo.Code.Data.Nat.Properties.du_'8816''8658''62'_2888 (coe v1)
            (coe
               MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe
                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_specification_174
                     (MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     erased erased (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                        (MAlonzo.Code.Axiom.Set.d_sp_150
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                        erased erased erased
                        (coe
                           MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_214
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2746
                                           (coe
                                              addInt (coe (1 :: Integer))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe
                                                    MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
                                                    (coe
                                                       (\ v5 ->
                                                          MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2808
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                              (coe v0))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                           (coe v0))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                               (coe
                                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_specification_174
                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                     erased erased
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                        erased erased erased
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_214
                                                                           (coe
                                                                              (\ v6 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                   (coe
                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                      (\ v7 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2746
                                                                                           (coe v5))
                                                                                      (coe
                                                                                         MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2758)
                                                                                      (coe
                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                         (coe
                                                                                            MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                            (coe v5)
                                                                                            (coe
                                                                                               v6))
                                                                                         (coe
                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                            (coe
                                                                                               MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                               (coe
                                                                                                  v5)
                                                                                               (coe
                                                                                                  v6))))))))
                                                                        (\ v6 ->
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe v6))))))
                                                            (coe v1)))
                                                    (coe
                                                       MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                       (coe
                                                          MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                       erased
                                                       (d_mostStakeDRepDist'45''8709'_2056
                                                          (coe v0) (coe v2)))))))
                                      (coe
                                         MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2758)
                                      (coe
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                         (coe
                                            MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                            (coe
                                               addInt (coe (1 :: Integer))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
                                                     (coe
                                                        (\ v4 ->
                                                           MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2808
                                                             (coe
                                                                MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
                                                                (coe
                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                (coe
                                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_specification_174
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                      erased erased
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v2))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                         (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1458
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                         erased erased erased
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_214
                                                                            (coe
                                                                               (\ v5 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                       (\ v6 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2746
                                                                                            (coe
                                                                                               v4))
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2758)
                                                                                       (coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                             (coe
                                                                                                v4)
                                                                                             (coe
                                                                                                v5))
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                                (coe
                                                                                                   v4)
                                                                                                (coe
                                                                                                   v5))))))))
                                                                         (\ v5 ->
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                              (coe v5))))))
                                                             (coe v1)))
                                                     (coe
                                                        MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                        (coe
                                                           MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                        erased
                                                        (d_mostStakeDRepDist'45''8709'_2056
                                                           (coe v0) (coe v2))))))
                                            (coe v3))
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                            (coe
                                               MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                               (coe
                                                  addInt (coe (1 :: Integer))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
                                                        (coe
                                                           (\ v4 ->
                                                              MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2808
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                   (coe
                                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_specification_174
                                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                         erased erased
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v2))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                            (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                            erased erased erased
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_214
                                                                               (coe
                                                                                  (\ v5 ->
                                                                                     coe
                                                                                       MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                       (coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                          (\ v6 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2746
                                                                                               (coe
                                                                                                  v4))
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2758)
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                                (coe
                                                                                                   v4)
                                                                                                (coe
                                                                                                   v5))
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                                   (coe
                                                                                                      v4)
                                                                                                   (coe
                                                                                                      v5))))))))
                                                                            (\ v5 ->
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                 (coe v5))))))
                                                                (coe v1)))
                                                        (coe
                                                           MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                           (coe
                                                              MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                           erased
                                                           (d_mostStakeDRepDist'45''8709'_2056
                                                              (coe v0) (coe v2))))))
                                               (coe v3))))))))
                        (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))))
-- Ledger.Ratify.topNDRepDist
d_topNDRepDist_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_topNDRepDist_2124 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2808
                 (coe
                    MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                       (coe
                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                          (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688)))
                    (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                    (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v2)))
                 (coe v1))
              (MAlonzo.Code.Data.Nat.Properties.d__'62''63'__3036
                 (coe v1) (coe (0 :: Integer))) in
    coe
      (case coe v3 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
           -> case coe v5 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                  -> if coe v6
                       then case coe v4 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                -> if coe v8
                                     then coe
                                            seq (coe v9)
                                            (coe
                                               seq (coe v7)
                                               (coe
                                                  du_mostStakeDRepDist_2038 (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        du_'8707'topNDRepDist_2098 (coe v0) (coe v1)
                                                        (coe v2)))))
                                     else coe seq (coe v9) (coe seq (coe v7) (coe v2))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v7)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Ratify.restrictedDists
d_restrictedDists_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> T_StakeDistrs_1972 -> T_StakeDistrs_1972
d_restrictedDists_2136 ~v0 ~v1 ~v2 v3 = du_restrictedDists_2136 v3
du_restrictedDists_2136 :: T_StakeDistrs_1972 -> T_StakeDistrs_1972
du_restrictedDists_2136 v0 = coe v0
-- Ledger.Ratify._._.stakeDistr
d_stakeDistr_2150 ::
  T_StakeDistrs_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2150 v0 = coe d_stakeDistr_1976 (coe v0)
-- Ledger.Ratify.actualVotes
d_actualVotes_2156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2156 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_854
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_676
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_664))
         (coe
            du_actualCCVotes_2280 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))))
         (coe du_actualPDRepVotes_2288 (coe v0) (coe v4))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))))
            (coe du_actualDRepVotes_2290 (coe v0) (coe v1) (coe v5))
            (coe du_actualSPOVotes_2292 (coe v0) (coe v1) (coe v5) (coe v4))))
-- Ledger.Ratify._._.ccHotKeys
d_ccHotKeys_2174 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2174 v0 ~v1 ~v2 ~v3 ~v4 = du_ccHotKeys_2174 v0
du_ccHotKeys_2174 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2174 v0 = coe d_ccHotKeys_1996 (coe v0)
-- Ledger.Ratify._._.currentEpoch
d_currentEpoch_2176 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2176 v0 ~v1 ~v2 ~v3 ~v4 = du_currentEpoch_2176 v0
du_currentEpoch_2176 :: T_RatifyEnv_1978 -> AgdaAny
du_currentEpoch_2176 v0 = coe d_currentEpoch_1992 (coe v0)
-- Ledger.Ratify._._.dreps
d_dreps_2178 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2178 v0 ~v1 ~v2 ~v3 ~v4 = du_dreps_2178 v0
du_dreps_2178 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2178 v0 = coe d_dreps_1994 (coe v0)
-- Ledger.Ratify._._.stakeDistrs
d_stakeDistrs_2180 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1972
d_stakeDistrs_2180 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDistrs_2180 v0
du_stakeDistrs_2180 :: T_RatifyEnv_1978 -> T_StakeDistrs_1972
du_stakeDistrs_2180 v0 = coe d_stakeDistrs_1990 (coe v0)
-- Ledger.Ratify._._.treasury
d_treasury_2182 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2182 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_2182 v0
du_treasury_2182 :: T_RatifyEnv_1978 -> Integer
du_treasury_2182 v0 = coe d_treasury_1998 (coe v0)
-- Ledger.Ratify._.roleVotes
d_roleVotes_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_roleVotes_2244 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_roleVotes_2244 v5 v6
du_roleVotes_2244 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_roleVotes_2244 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_854
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_676))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1138
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800))
              (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
         v0)
-- Ledger.Ratify._.activeDReps
d_activeDReps_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_activeDReps_2252 v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_activeDReps_2252 v0 v1
du_activeDReps_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 -> [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_activeDReps_2252 v0 v1
  = coe
      MAlonzo.Code.Interface.IsSet.du_dom_540
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1138
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
              (coe
                 MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
                 (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
                    (\ v3 v4 -> v3) (d_currentEpoch_1992 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
                    (d_currentEpoch_1992 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
                 (coe d_currentEpoch_1992 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_1994 (coe v1)))
-- Ledger.Ratify._.spos
d_spos_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674]
d_spos_2258 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_spos_2258 v1
du_spos_2258 ::
  T_RatifyEnv_1978 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674]
du_spos_2258 v0
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1130
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800))
           (coe d_govRole_2018 (coe v1))
           (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_668))
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_540
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
         (coe d_stakeDistr_1976 (coe d_stakeDistrs_1990 (coe v0))))
-- Ledger.Ratify._.getCCHotCred
d_getCCHotCred_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getCCHotCred_2260 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_getCCHotCred_2260 v0 v1 v6
du_getCCHotCred_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getCCHotCred_2260 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                        (coe
                           MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
                           (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
                              (\ v5 v6 -> v5) (d_currentEpoch_1992 (coe v1)) v4)
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v5 v6 -> v6)
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
                              (d_currentEpoch_1992 (coe v1)) v4))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
                           (coe d_currentEpoch_1992 (coe v1)) (coe v4))) in
           coe
             (let v6
                    = coe
                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe d_ccHotKeys_1996 (coe v1)) (coe v3)
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                              (coe
                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))))
                           (coe v3)
                           (let v6
                                  = MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v6
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                    (coe d_ccHotKeys_1996 (coe v1)))))) in
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
-- Ledger.Ratify._.actualCCVote
d_actualCCVote_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_726
d_actualCCVote_2270 v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_actualCCVote_2270 v0 v1 v5 v6 v7
du_actualCCVote_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_726
du_actualCCVote_2270 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_getCCHotCred_2260 (coe v0) (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v7 -> v7))
                (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_730)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe v2)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_664) (coe v6))
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                         (coe
                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                            (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800)
                            (coe
                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                  (coe
                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_664) (coe v6))
                      (let v7
                             = MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v7
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v2))))))
         _ -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_732)
-- Ledger.Ratify._.actualCCVotes
d_actualCCVotes_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualCCVotes_2280 v0 v1 v2 v3 ~v4 v5
  = du_actualCCVotes_2280 v0 v1 v2 v3 v5
du_actualCCVotes_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualCCVotes_2280 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Interface.ToBool.du_if_then_else__46
                    (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                       (MAlonzo.Code.Ledger.PParams.d_ccMinSize_348 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                             (coe
                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                (coe
                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                                (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))))
                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1176
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1458
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                             (coe du_getCCHotCred_2260 (coe v0) (coe v1))
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v6)))))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1076
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe du_actualCCVote_2270 (coe v0) (coe v1) (coe v4)) (coe v6)))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_constMap_1112
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_540
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v6))
                            (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_730)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1458
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.actualPDRepVotes
d_actualPDRepVotes_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualPDRepVotes_2288 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_actualPDRepVotes_2288 v0 v6
du_actualPDRepVotes_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualPDRepVotes_2288 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_678)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_732)))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_680)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_730))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_694
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_678)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_732)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_680)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_728)))
         _ -> coe v2)
-- Ledger.Ratify._.actualDRepVotes
d_actualDRepVotes_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualDRepVotes_2290 v0 v1 ~v2 ~v3 ~v4 v5
  = du_actualDRepVotes_2290 v0 v1 v5
du_actualDRepVotes_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualDRepVotes_2290 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))))
      (coe
         du_roleVotes_2244 (coe v2)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_constMap_1112
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_386
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_676
               (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666))
            (coe du_activeDReps_2252 (coe v0) (coe v1)))
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_730))
-- Ledger.Ratify._.actualSPOVotes
d_actualSPOVotes_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualSPOVotes_2292 v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_actualSPOVotes_2292 v0 v1 v5 v6
du_actualSPOVotes_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualSPOVotes_2292 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))))
              (coe
                 du_roleVotes_2244 (coe v2)
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_668))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_constMap_1112
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_spos_2258 (coe v1))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_732)) in
    coe
      (case coe v3 of
         MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_700 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))))
                (coe
                   du_roleVotes_2244 (coe v2)
                   (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_668))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_constMap_1112
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe du_spos_2258 (coe v1))
                   (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_730))
         _ -> coe v4)
-- Ledger.Ratify._/₀_
d__'47''8320'__2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'47''8320'__2294 ~v0 v1 v2 = du__'47''8320'__2294 v1 v2
du__'47''8320'__2294 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'47''8320'__2294 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      _ -> coe
             MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0) (coe v1)
-- Ledger.Ratify.getStakeDist
d_getStakeDist_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674] ->
  T_StakeDistrs_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_2302 ~v0 v1 v2 v3 = du_getStakeDist_2302 v1 v2 v3
du_getStakeDist_2302 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674] ->
  T_StakeDistrs_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getStakeDist_2302 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_664
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_constMap_1112
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1458
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1130
                (\ v3 ->
                   coe
                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                        (coe
                           MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800))
                     (coe d_govRole_2018 (coe v3)) (coe v0))
                v1)
             (coe (1 :: Integer))
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666
        -> coe
             MAlonzo.Code.Ledger.Set.Theory.du_filterKeys_1146
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800))
                  (coe d_govRole_2018 (coe v3)) (coe v0))
             (d_stakeDistr_1976 (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_668
        -> coe
             MAlonzo.Code.Ledger.Set.Theory.du_filterKeys_1146
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800))
                  (coe d_govRole_2018 (coe v3)) (coe v0))
             (d_stakeDistr_1976 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.acceptedStakeRatio
d_acceptedStakeRatio_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674] ->
  T_StakeDistrs_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_2312 v0 v1 v2 v3 v4
  = coe
      du__'47''8320'__2294
      (coe
         d_acceptedStake_2328 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         d_totalStake_2330 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Ratify._.dist
d_dist_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674] ->
  T_StakeDistrs_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dist_2326 ~v0 v1 v2 v3 ~v4 = du_dist_2326 v1 v2 v3
du_dist_2326 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674] ->
  T_StakeDistrs_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dist_2326 v0 v1 v2
  = coe du_getStakeDist_2302 (coe v0) (coe v1) (coe v2)
-- Ledger.Ratify._.acceptedStake
d_acceptedStake_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674] ->
  T_StakeDistrs_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_acceptedStake_2328 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v5 -> v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))))
         (coe du_dist_2326 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1602
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_802))
            (coe v4) (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_728)))
-- Ledger.Ratify._.totalStake
d_totalStake_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_674] ->
  T_StakeDistrs_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_2330 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v5 -> v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))))
         (coe du_dist_2326 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_540
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__1586
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_802))
               (coe v4)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__668
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                     (MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     erased (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_728))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                     (MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     erased (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_730))))))
-- Ledger.Ratify.acceptedBy
d_acceptedBy_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 -> ()
d_acceptedBy_2336 = erased
-- Ledger.Ratify.accepted
d_accepted_2430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 -> ()
d_accepted_2430 = erased
-- Ledger.Ratify.expired
d_expired_2438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 -> ()
d_expired_2438 = erased
-- Ledger.Ratify.verifyPrev
d_verifyPrev_2446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_828 -> ()
d_verifyPrev_2446 = erased
-- Ledger.Ratify.delayingAction
d_delayingAction_2468 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> Bool
d_delayingAction_2468 ~v0 v1 = du_delayingAction_2468 v1
du_delayingAction_2468 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> Bool
du_delayingAction_2468 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_694
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_696 v1 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_698 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_700 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_702 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_704 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_706
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed
d_delayed_2472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_828 -> Bool -> ()
d_delayed_2472 = erased
-- Ledger.Ratify.acceptConds
d_acceptConds_2482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  T_RatifyState_2000 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2482 = erased
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2498 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2498 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2498 v0
du_ccHotKeys_2498 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2498 v0 = coe d_ccHotKeys_1996 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2500 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  AgdaAny
d_currentEpoch_2500 v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2500 v0
du_currentEpoch_2500 :: T_RatifyEnv_1978 -> AgdaAny
du_currentEpoch_2500 v0 = coe d_currentEpoch_1992 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2502 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2502 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2502 v0
du_dreps_2502 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2502 v0 = coe d_dreps_1994 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2504 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  T_StakeDistrs_1972
d_stakeDistrs_2504 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2504 v0
du_stakeDistrs_2504 :: T_RatifyEnv_1978 -> T_StakeDistrs_1972
du_stakeDistrs_2504 v0 = coe d_stakeDistrs_1990 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2506 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  Integer
d_treasury_2506 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2506 v0
du_treasury_2506 :: T_RatifyEnv_1978 -> Integer
du_treasury_2506 v0 = coe d_treasury_1998 (coe v0)
-- Ledger.Ratify.verifyPrev?
d_verifyPrev'63'_2528 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2528 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_694
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_696 v4 v5 v6
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_698 v4 v5
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_constitution_842 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_700 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pv_844 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_702 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_704 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_706
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed?
d_delayed'63'_2582 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2582 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe d_verifyPrev'63'_2528 (coe v0) (coe v1) (coe v2) (coe v3))
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
-- Ledger.Ratify.Is-nothing?
d_Is'45'nothing'63'_2598 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_2598 ~v0 ~v1 v2 = du_Is'45'nothing'63'_2598 v2
du_Is'45'nothing'63'_2598 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_2598 v0
  = coe
      MAlonzo.Code.Data.Maybe.Relation.Unary.All.du_dec_254
      (let v1
             = coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26) in
       coe (coe (\ v2 -> v1)))
      (coe v0)
-- Ledger.Ratify.acceptedBy?
d_acceptedBy'63'_2614 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_2614 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3530
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v5 -> v5))
            (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
            (coe
               d_threshold_1844 v0
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v2)))
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_map_64
                  (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v2))))
               (MAlonzo.Code.Ledger.GovernanceActions.d_action_796 (coe v3)) v4))
         (coe
            d_acceptedStakeRatio_2312 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_540
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
               (coe
                  d_actualVotes_2156 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v2)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v2)))
                  (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_796 (coe v3))
                  (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_790 (coe v3))))
            (coe d_stakeDistrs_1990 (coe v1))
            (coe
               d_actualVotes_2156 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v2)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v2)))
               (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_796 (coe v3))
               (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_790 (coe v3)))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800)
            v4 (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_664))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
            (coe
               MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2808
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                  (coe
                     (\ v5 ->
                        coe
                          MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                             (coe
                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0))))
                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
                  (coe (0 :: Integer))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v2))))
               (coe
                  MAlonzo.Code.Ledger.PParams.d_ccMinSize_348
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v2)))))
            (coe
               du_Is'45'nothing'63'_2598
               (coe
                  d_threshold_1844 v0
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v2)))
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_map_64
                     (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v2))))
                  (MAlonzo.Code.Ledger.GovernanceActions.d_action_796 (coe v3))
                  v4))))
-- Ledger.Ratify.accepted?
d_accepted'63'_2626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2626 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         d_acceptedBy'63'_2614 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_664))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
         (coe
            d_acceptedBy'63'_2614 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666))
         (coe
            d_acceptedBy'63'_2614 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_668)))
-- Ledger.Ratify.expired?
d_expired'63'_2642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2642 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
            (coe
               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_794 (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_794 (coe v2))
            v1))
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY'⦈_
d__'8866'_'8640''10631'_'44'RATIFY'''10632'__2658 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2658
  = C_RATIFY'45'Accept_2698 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_2724 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_2750 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2674 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2674 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_ccHotKeys_2674 v1
du_ccHotKeys_2674 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2674 v0 = coe d_ccHotKeys_1996 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2676 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 -> AgdaAny
d_currentEpoch_2676 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_currentEpoch_2676 v1
du_currentEpoch_2676 :: T_RatifyEnv_1978 -> AgdaAny
du_currentEpoch_2676 v0 = coe d_currentEpoch_1992 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2678 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2678 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_dreps_2678 v1
du_dreps_2678 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2678 v0 = coe d_dreps_1994 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 -> T_StakeDistrs_1972
d_stakeDistrs_2680 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_stakeDistrs_2680 v1
du_stakeDistrs_2680 :: T_RatifyEnv_1978 -> T_StakeDistrs_1972
du_stakeDistrs_2680 v0 = coe d_stakeDistrs_1990 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 -> Integer
d_treasury_2682 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_treasury_2682 v1
du_treasury_2682 :: T_RatifyEnv_1978 -> Integer
du_treasury_2682 v0 = coe d_treasury_1998 (coe v0)
-- Ledger.Ratify._.action
d_action_2688 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_2688 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_action_2688 v5
du_action_2688 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
du_action_2688 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_action_796
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0))
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2712 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2712 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2712 v1
du_ccHotKeys_2712 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2712 v0 = coe d_ccHotKeys_1996 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2714 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2714 ~v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2714 v1
du_currentEpoch_2714 :: T_RatifyEnv_1978 -> AgdaAny
du_currentEpoch_2714 v0 = coe d_currentEpoch_1992 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2716 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2716 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2716 v1
du_dreps_2716 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2716 v0 = coe d_dreps_1994 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1972
d_stakeDistrs_2718 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2718 v1
du_stakeDistrs_2718 :: T_RatifyEnv_1978 -> T_StakeDistrs_1972
du_stakeDistrs_2718 v0 = coe d_stakeDistrs_1990 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2720 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2720 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2720 v1
du_treasury_2720 :: T_RatifyEnv_1978 -> Integer
du_treasury_2720 v0 = coe d_treasury_1998 (coe v0)
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2738 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2738 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2738 v1
du_ccHotKeys_2738 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2738 v0 = coe d_ccHotKeys_1996 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2740 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2740 ~v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2740 v1
du_currentEpoch_2740 :: T_RatifyEnv_1978 -> AgdaAny
du_currentEpoch_2740 v0 = coe d_currentEpoch_1992 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2742 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2742 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2742 v1
du_dreps_2742 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2742 v0 = coe d_dreps_1994 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2744 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1972
d_stakeDistrs_2744 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2744 v1
du_stakeDistrs_2744 :: T_RatifyEnv_1978 -> T_StakeDistrs_1972
du_stakeDistrs_2744 v0 = coe d_stakeDistrs_1990 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2746 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2746 v1
du_treasury_2746 :: T_RatifyEnv_1978 -> Integer
du_treasury_2746 v0 = coe d_treasury_1998 (coe v0)
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  T_RatifyState_2000 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_2000 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2752 = erased
