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
import qualified MAlonzo.Code.Class.To
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
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Credential
d_Credential_44 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_78 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_78 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_86 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_86 ~v0 = du_DecEq'45'GovRole_86
du_DecEq'45'GovRole_86 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_86
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796
-- _.Epoch
d_Epoch_142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_142 = erased
-- _.GovAction
d_GovAction_148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovAction_148 = erased
-- _.GovActionID
d_GovActionID_152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_152 = erased
-- _.GovActionState
d_GovActionState_154 a0 = ()
-- _.GovActionType
d_GovActionType_156 a0 = ()
-- _.GovRole
d_GovRole_162 a0 = ()
-- _.THash
d_THash_190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_190 = erased
-- _.NeedsHash
d_NeedsHash_202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_694 -> ()
d_NeedsHash_202 = erased
-- _.PParamGroup
d_PParamGroup_224 a0 = ()
-- _.PParams
d_PParams_226 a0 = ()
-- _.UpdateT
d_UpdateT_230 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UpdateT_230 = erased
-- _.VDeleg
d_VDeleg_378 a0 = ()
-- _.preoEpoch
d_preoEpoch_528 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_528 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0))
-- _.GovActionState.action
d_action_650 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_action_650 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_792 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_652 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  AgdaAny
d_expiresIn_652 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_790 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_654 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  AgdaAny
d_prevAction_654 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_794 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_656 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_656 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_788 (coe v0)
-- _.GovActionState.votes
d_votes_658 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_658 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_786 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_746 a0 = ()
-- _.GovernanceActions.GovActionType
d_GovActionType_748 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_752 a0 = ()
-- _.GovernanceActions.VDeleg
d_VDeleg_774 a0 = ()
-- _.PParams.Emax
d_Emax_900 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_900 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_902 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_902 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_904 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_904 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_906 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_906 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_912 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_914 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_918 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_926 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_934 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_938 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_940 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_948 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_952 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_952 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_960 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_962 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_964 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_964 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- Ledger.Ratify._.PoolParams
d_PoolParams_1544 a0 = ()
-- Ledger.Ratify._.PoolParams.rewardAddr
d_rewardAddr_1696 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_830 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_1696 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_834 (coe v0)
-- Ledger.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1700 a0 a1 a2 a3 a4 = ()
-- Ledger.Ratify._.EnactState
d_EnactState_1718 a0 = ()
-- Ledger.Ratify._.To-EnactEnv
d_To'45'EnactEnv_1720 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'EnactEnv_1720 ~v0 = du_To'45'EnactEnv_1720
du_To'45'EnactEnv_1720 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'EnactEnv_1720
  = coe MAlonzo.Code.Ledger.Enact.du_To'45'EnactEnv_852
-- Ledger.Ratify._.EnactState.cc
d_cc_1754 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1754 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v0)
-- Ledger.Ratify._.EnactState.constitution
d_constitution_1756 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1756 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_844 (coe v0)
-- Ledger.Ratify._.EnactState.pparams
d_pparams_1758 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1758 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v0)
-- Ledger.Ratify._.EnactState.pv
d_pv_1760 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1760 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_846 (coe v0)
-- Ledger.Ratify._.EnactState.withdrawals
d_withdrawals_1762 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1762 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_850 (coe v0)
-- Ledger.Ratify._.Vote
d_Vote_1766 a0 = ()
-- Ledger.Ratify._∧_
d__'8743'__1776 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__1776 = erased
-- Ledger.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 -> AgdaAny
d_'8739'_'8739'_'8739'_'8739'_1782 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_1782 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_1782 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 -> AgdaAny
du_'8739'_'8739'_'8739'_'8739'_1782 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_666 -> coe v0
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_668 -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_670 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_1794 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 -> AgdaAny
d_'8739'_'8741'_'8739'_1794 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_1794 v2 v3
du_'8739'_'8741'_'8739'_1794 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 -> AgdaAny
du_'8739'_'8741'_'8739'_1794 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.GovernanceActions.C_CC_666 -> coe v0
                  MAlonzo.Code.Ledger.GovernanceActions.C_DRep_668 -> coe v2
                  MAlonzo.Code.Ledger.GovernanceActions.C_SPO_670 -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.vote
d_vote_1804 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_1804 ~v0 = du_vote_1804
du_vote_1804 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_1804 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Ratify.defer
d_defer_1806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_1806 ~v0 = du_defer_1806
du_defer_1806 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_1806
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Ratify.maxThreshold
d_maxThreshold_1808 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_1808 ~v0 v1 = du_maxThreshold_1808 v1
du_maxThreshold_1808 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_1808 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230 (coe du_comb_1816)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
            v0))
-- Ledger.Ratify._.comb
d_comb_1816 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_comb_1816 ~v0 ~v1 v2 v3 = du_comb_1816 v2 v3
du_comb_1816 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_comb_1816 v0 v1
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
d_'9472'_1826 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_1826 ~v0 = du_'9472'_1826
du_'9472'_1826 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_1826 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Ratify.✓†
d_'10003''8224'_1828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_1828 ~v0 = du_'10003''8224'_1828
du_'10003''8224'_1828 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_1828 = coe du_vote_1804 (coe du_defer_1806)
-- Ledger.Ratify.threshold
d_threshold_1830 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_1830 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_696
               -> coe
                    du_'8739'_'8739'_'8739'_'8739'_1782 (coe du_'9472'_1826)
                    (coe
                       du_vote_1804
                       (MAlonzo.Code.Ledger.PParams.d_P1_202
                          (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v1))))
                    (coe
                       du_vote_1804
                       (MAlonzo.Code.Ledger.PParams.d_Q1_234
                          (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v1))))
             MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_698
               -> coe
                    du_'8739'_'8741'_'8739'_1794 (coe du_'9472'_1826)
                    (coe du_P'47'Q2a'47'b_1944 (coe v1) (coe v2))
             MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_700
               -> coe
                    du_'8739'_'8739'_'8739'_'8739'_1782 (coe du_'10003'_1942 (coe v2))
                    (coe
                       du_vote_1804
                       (MAlonzo.Code.Ledger.PParams.d_P3_208
                          (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v1))))
                    (coe du_'9472'_1826)
             MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_702
               -> coe
                    du_'8739'_'8739'_'8739'_'8739'_1782 (coe du_'10003'_1942 (coe v2))
                    (coe
                       du_vote_1804
                       (MAlonzo.Code.Ledger.PParams.d_P4_210
                          (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v1))))
                    (coe
                       du_vote_1804
                       (MAlonzo.Code.Ledger.PParams.d_Q4_240
                          (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v1))))
             MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_704
               -> coe
                    du_'8739'_'8741'_'8739'_1794 (coe du_'10003'_1942 (coe v2))
                    (coe du_P'47'Q5_1950 (coe v0) (coe v1) (coe v5))
             MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_706
               -> coe
                    du_'8739'_'8739'_'8739'_'8739'_1782 (coe du_'10003'_1942 (coe v2))
                    (coe
                       du_vote_1804
                       (MAlonzo.Code.Ledger.PParams.d_P6_220
                          (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v1))))
                    (coe du_'9472'_1826)
             MAlonzo.Code.Ledger.GovernanceActions.C_Info_708
               -> coe
                    du_'8739'_'8739'_'8739'_'8739'_1782 (coe du_'10003''8224'_1828)
                    (coe du_'10003''8224'_1828) (coe du_'10003''8224'_1828)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.✓
d_'10003'_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_1942 ~v0 ~v1 v2 = du_'10003'_1942 v2
du_'10003'_1942 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_1942 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
      (coe du_'10003''8224'_1828) (coe v0)
-- Ledger.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_1944 ~v0 v1 v2 = du_P'47'Q2a'47'b_1944 v1 v2
du_P'47'Q2a'47'b_1944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_1944 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1804
                (MAlonzo.Code.Ledger.PParams.d_P2a_204
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0))))
             (coe
                du_vote_1804
                (MAlonzo.Code.Ledger.PParams.d_Q2a_236
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1804
                (MAlonzo.Code.Ledger.PParams.d_P2b_206
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0))))
             (coe
                du_vote_1804
                (MAlonzo.Code.Ledger.PParams.d_Q2b_238
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.pparamThreshold
d_pparamThreshold_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_1948 ~v0 v1 ~v2 v3
  = du_pparamThreshold_1948 v1 v3
du_pparamThreshold_1948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_1948 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.PParams.C_NetworkGroup_170
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1804
                (MAlonzo.Code.Ledger.PParams.d_P5a_212
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0))))
             (coe du_'9472'_1826)
      MAlonzo.Code.Ledger.PParams.C_EconomicGroup_172
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1804
                (MAlonzo.Code.Ledger.PParams.d_P5b_214
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0))))
             (coe du_'9472'_1826)
      MAlonzo.Code.Ledger.PParams.C_TechnicalGroup_174
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1804
                (MAlonzo.Code.Ledger.PParams.d_P5c_216
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0))))
             (coe du_'9472'_1826)
      MAlonzo.Code.Ledger.PParams.C_GovernanceGroup_176
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1804
                (MAlonzo.Code.Ledger.PParams.d_P5d_218
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0))))
             (coe du_'9472'_1826)
      MAlonzo.Code.Ledger.PParams.C_SecurityGroup_178
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_1826)
             (coe
                du_vote_1804
                (MAlonzo.Code.Ledger.PParams.d_Q5_242
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.P/Q5
d_P'47'Q5_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_1950 v0 v1 ~v2 v3 = du_P'47'Q5_1950 v0 v1 v3
du_P'47'Q5_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_1950 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_1808
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_1948 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_1370
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_1402
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2198 (coe v0)))
               v2)))
      (coe
         du_maxThreshold_1808
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_1948 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_1370
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_1402
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2198 (coe v0)))
               v2)))
-- Ledger.Ratify.canVote
d_canVote_1958 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 -> ()
d_canVote_1958 = erased
-- Ledger.Ratify.StakeDistrs
d_StakeDistrs_1966 a0 = ()
newtype T_StakeDistrs_1966
  = C_StakeDistrs'46'constructor_12165 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify.StakeDistrs.stakeDistr
d_stakeDistr_1970 ::
  T_StakeDistrs_1966 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1970 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_12165 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv
d_RatifyEnv_1972 a0 = ()
data T_RatifyEnv_1972
  = C_RatifyEnv'46'constructor_12285 T_StakeDistrs_1966 AgdaAny
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_1988 :: T_RatifyEnv_1972 -> T_StakeDistrs_1966
d_stakeDistrs_1988 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_12285 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_1990 :: T_RatifyEnv_1972 -> AgdaAny
d_currentEpoch_1990 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_12285 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.dreps
d_dreps_1992 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1992 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_12285 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_1994 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1994 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_12285 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.treasury
d_treasury_1996 :: T_RatifyEnv_1972 -> Integer
d_treasury_1996 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_12285 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.pools
d_pools_1998 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1998 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_12285 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.delegatees
d_delegatees_2000 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2000 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_12285 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState
d_RatifyState_2002 a0 = ()
data T_RatifyState_2002
  = C_RatifyState'46'constructor_12535 MAlonzo.Code.Ledger.Enact.T_EnactState_830
                                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Ratify.RatifyState.es
d_es_2010 ::
  T_RatifyState_2002 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_es_2010 v0
  = case coe v0 of
      C_RatifyState'46'constructor_12535 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.removed
d_removed_2012 ::
  T_RatifyState_2002 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2012 v0
  = case coe v0 of
      C_RatifyState'46'constructor_12535 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.delay
d_delay_2014 :: T_RatifyState_2002 -> Bool
d_delay_2014 v0
  = case coe v0 of
      C_RatifyState'46'constructor_12535 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.CCData
d_CCData_2016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CCData_2016 = erased
-- Ledger.Ratify.govRole
d_govRole_2018 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664
d_govRole_2018 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_678 v1 v2
        -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_680
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_668
      MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_682
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_668
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.IsCC
d_IsCC_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676 -> ()
d_IsCC_2022 = erased
-- Ledger.Ratify.IsDRep
d_IsDRep_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676 -> ()
d_IsDRep_2024 = erased
-- Ledger.Ratify.IsSPO
d_IsSPO_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676 -> ()
d_IsSPO_2026 = erased
-- Ledger.Ratify.To-RatifyState
d_To'45'RatifyState_2034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'RatifyState_2034 ~v0 = du_To'45'RatifyState_2034
du_To'45'RatifyState_2034 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'RatifyState_2034
  = coe
      MAlonzo.Code.Class.To.C_To'46'constructor_9
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.To.d_getCodPi_22
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
                                 (2002 :: Integer) (4248554906340778157 :: Integer)
                                 "Ledger.Ratify.RatifyState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1718 :: Integer) (4248554906340778157 :: Integer)
                                 "Ledger.Ratify._.EnactState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.To.d_getCodPi_22
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
                                    (2002 :: Integer) (4248554906340778157 :: Integer)
                                    "Ledger.Ratify.RatifyState"
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
                                                            (152 :: Integer)
                                                            (4248554906340778157 :: Integer)
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
                                                               (154 :: Integer)
                                                               (4248554906340778157 :: Integer)
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
                        MAlonzo.Code.Class.To.d_getCodPi_22
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
                                       (2002 :: Integer) (4248554906340778157 :: Integer)
                                       "Ledger.Ratify.RatifyState"
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
         (coe C_RatifyState'46'constructor_12535))
-- Ledger.Ratify.actualVotes
d_actualVotes_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2036 v0 v1 v2 v3 v4 v5
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
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_678
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_666))
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
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0))))
         (coe
            du_actualPDRepVotes_2192 (coe v0)
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
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
               (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0))))
            (coe du_actualDRepVotes_2194 (coe v0) (coe v1) (coe v5))
            (coe du_actualSPOVotes_2196 (coe v0) (coe v1) (coe v5) (coe v4))))
-- Ledger.Ratify._._.ccHotKeys
d_ccHotKeys_2054 ::
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2054 v0 ~v1 ~v2 ~v3 ~v4 = du_ccHotKeys_2054 v0
du_ccHotKeys_2054 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2054 v0 = coe d_ccHotKeys_1994 (coe v0)
-- Ledger.Ratify._._.currentEpoch
d_currentEpoch_2056 ::
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2056 v0 ~v1 ~v2 ~v3 ~v4 = du_currentEpoch_2056 v0
du_currentEpoch_2056 :: T_RatifyEnv_1972 -> AgdaAny
du_currentEpoch_2056 v0 = coe d_currentEpoch_1990 (coe v0)
-- Ledger.Ratify._._.delegatees
d_delegatees_2058 ::
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2058 v0 ~v1 ~v2 ~v3 ~v4 = du_delegatees_2058 v0
du_delegatees_2058 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2058 v0 = coe d_delegatees_2000 (coe v0)
-- Ledger.Ratify._._.dreps
d_dreps_2060 ::
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2060 v0 ~v1 ~v2 ~v3 ~v4 = du_dreps_2060 v0
du_dreps_2060 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2060 v0 = coe d_dreps_1992 (coe v0)
-- Ledger.Ratify._._.pools
d_pools_2062 ::
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2062 v0 ~v1 ~v2 ~v3 ~v4 = du_pools_2062 v0
du_pools_2062 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2062 v0 = coe d_pools_1998 (coe v0)
-- Ledger.Ratify._._.stakeDistrs
d_stakeDistrs_2064 ::
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1966
d_stakeDistrs_2064 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDistrs_2064 v0
du_stakeDistrs_2064 :: T_RatifyEnv_1972 -> T_StakeDistrs_1966
du_stakeDistrs_2064 v0 = coe d_stakeDistrs_1988 (coe v0)
-- Ledger.Ratify._._.treasury
d_treasury_2066 ::
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2066 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_2066 v0
du_treasury_2066 :: T_RatifyEnv_1972 -> Integer
du_treasury_2066 v0 = coe d_treasury_1996 (coe v0)
-- Ledger.Ratify._.roleVotes
d_roleVotes_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_roleVotes_2136 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_roleVotes_2136 v5 v6
du_roleVotes_2136 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_roleVotes_2136 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_678))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1168
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796))
              (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
         v0)
-- Ledger.Ratify._.activeDReps
d_activeDReps_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_activeDReps_2144 v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_activeDReps_2144 v0 v1
du_activeDReps_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 -> [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_activeDReps_2144 v0 v1
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
                 (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0)))
                    (\ v3 v4 -> v3) (d_currentEpoch_1990 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0)))
                    (d_currentEpoch_1990 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0)))
                 (coe d_currentEpoch_1990 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_1992 (coe v1)))
-- Ledger.Ratify._.spos
d_spos_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676]
d_spos_2150 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_spos_2150 v1
du_spos_2150 ::
  T_RatifyEnv_1972 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676]
du_spos_2150 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796))
           (coe d_govRole_2018 (coe v1))
           (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_670))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
         (coe d_stakeDistr_1970 (coe d_stakeDistrs_1988 (coe v0))))
-- Ledger.Ratify._.getCCHotCred
d_getCCHotCred_2152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getCCHotCred_2152 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_getCCHotCred_2152 v0 v1 v6
du_getCCHotCred_2152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getCCHotCred_2152 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                        (coe
                           MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_234
                           (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0)))
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0)))
                              (\ v5 v6 -> v5) (d_currentEpoch_1990 (coe v1)) v4)
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v5 v6 -> v6)
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0)))
                              (d_currentEpoch_1990 (coe v1)) v4))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0)))
                           (coe d_currentEpoch_1990 (coe v1)) (coe v4))) in
           coe
             (let v6
                    = coe
                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe d_ccHotKeys_1994 (coe v1)) (coe v3)
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              erased
                              (coe
                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))))
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
                                    (coe d_ccHotKeys_1994 (coe v1)))))) in
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
-- Ledger.Ratify._.SPODefaultVote
d_SPODefaultVote_2162 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_722
d_SPODefaultVote_2162 v0 v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_SPODefaultVote_2162 v0 v1 v6 v7
du_SPODefaultVote_2162 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_722
du_SPODefaultVote_2162 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Ledger.GovernanceActions.C_no_726 in
    coe
      (case coe v3 of
         MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_678 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Ledger.GovernanceActions.C_SPO_670
                  -> case coe v6 of
                       MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v7
                         -> let v8
                                  = coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe d_pools_1998 (coe v1)) (coe v7)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased
                                            (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1224
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
                                                  (coe d_pools_1998 (coe v1)))))) in
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
                                                (coe d_delegatees_2000 (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_rewardAddr_834
                                                   (coe v9))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased
                                                      (coe
                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                            (coe
                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                               (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Certs.d_rewardAddr_834
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
                                                            (coe d_delegatees_2000 (coe v1)))))) in
                                      coe
                                        (let v11
                                               = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v2) in
                                         coe
                                           (let v12
                                                  = let v12
                                                          = coe
                                                              MAlonzo.Code.Ledger.GovernanceActions.C_no_726 in
                                                    coe
                                                      (case coe v10 of
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v13
                                                           -> case coe v13 of
                                                                MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_680
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.GovernanceActions.C_abstain_728
                                                                _ -> coe v12
                                                         _ -> coe v12) in
                                            coe
                                              (case coe v11 of
                                                 MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_696
                                                   -> case coe v10 of
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v13
                                                          -> case coe v13 of
                                                               MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_682
                                                                 -> coe
                                                                      MAlonzo.Code.Ledger.GovernanceActions.C_yes_724
                                                               _ -> coe v12
                                                        _ -> coe v12
                                                 MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_702
                                                   -> coe
                                                        MAlonzo.Code.Ledger.GovernanceActions.C_no_726
                                                 _ -> coe v12)))
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                   -> coe MAlonzo.Code.Ledger.GovernanceActions.C_no_726
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> coe v4
                _ -> coe v4
         _ -> coe v4)
-- Ledger.Ratify._.actualCCVote
d_actualCCVote_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_722
d_actualCCVote_2174 v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_actualCCVote_2174 v0 v1 v5 v6 v7
du_actualCCVote_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_722
du_actualCCVote_2174 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_getCCHotCred_2152 (coe v0) (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v7 -> v7))
                (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_726)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe v2)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_666) (coe v6))
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         erased
                         (coe
                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                            (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796)
                            (coe
                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                  (coe
                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_666) (coe v6))
                      (let v7
                             = MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v7
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v2))))))
         _ -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_728)
-- Ledger.Ratify._.actualCCVotes
d_actualCCVotes_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualCCVotes_2184 v0 v1 v2 v3 ~v4 v5
  = du_actualCCVotes_2184 v0 v1 v2 v3 v5
du_actualCCVotes_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
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
                       (MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v2))
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_length'738'_1112
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
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                                (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1260
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe du_getCCHotCred_2152 (coe v0) (coe v1))
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
                            (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_726)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1470
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.actualPDRepVotes
d_actualPDRepVotes_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_694 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualPDRepVotes_2192 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_actualPDRepVotes_2192 v0 v6
du_actualPDRepVotes_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_694 ->
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
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_680)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_728)))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_682)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_726))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_696
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
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_680)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_728)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_682)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_724)))
         _ -> coe v2)
-- Ledger.Ratify._.actualDRepVotes
d_actualDRepVotes_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualDRepVotes_2194 v0 v1 ~v2 ~v3 ~v4 v5
  = du_actualDRepVotes_2194 v0 v1 v5
du_actualDRepVotes_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
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
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0))))
      (coe
         du_roleVotes_2136 (coe v2)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_668))
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
               MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_678
               (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_668))
            (coe du_activeDReps_2144 (coe v0) (coe v1)))
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_726))
-- Ledger.Ratify._.actualSPOVotes
d_actualSPOVotes_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualSPOVotes_2196 v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_actualSPOVotes_2196 v0 v1 v5 v6
du_actualSPOVotes_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualSPOVotes_2196 v0 v1 v2 v3
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
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0))))
      (coe
         du_roleVotes_2136 (coe v2)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_670))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1078
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_SPODefaultVote_2162 (coe v0) (coe v1) (coe v3))
         (coe du_spos_2150 (coe v1)))
-- Ledger.Ratify._/₀_
d__'47''8320'__2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'47''8320'__2200 ~v0 v1 v2 = du__'47''8320'__2200 v1 v2
du__'47''8320'__2200 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'47''8320'__2200 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      _ -> coe
             MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0) (coe v1)
-- Ledger.Ratify.getStakeDist
d_getStakeDist_2208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676] ->
  T_StakeDistrs_1966 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_2208 ~v0 v1 v2 v3 = du_getStakeDist_2208 v1 v2 v3
du_getStakeDist_2208 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676] ->
  T_StakeDistrs_1966 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getStakeDist_2208 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_666
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
                           MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796))
                     (coe d_govRole_2018 (coe v3)) (coe v0))
                v1)
             (coe (1 :: Integer))
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_668
        -> coe
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796))
                  (coe d_govRole_2018 (coe v3)) (coe v0))
             (d_stakeDistr_1970 (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_670
        -> coe
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796))
                  (coe d_govRole_2018 (coe v3)) (coe v0))
             (d_stakeDistr_1970 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.acceptedStakeRatio
d_acceptedStakeRatio_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676] ->
  T_StakeDistrs_1966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_2218 v0 v1 v2 v3 v4
  = coe
      du__'47''8320'__2200
      (coe
         d_acceptedStake_2234 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         d_totalStake_2236 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Ratify._.dist
d_dist_2232 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676] ->
  T_StakeDistrs_1966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dist_2232 ~v0 v1 v2 v3 ~v4 = du_dist_2232 v1 v2 v3
du_dist_2232 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676] ->
  T_StakeDistrs_1966 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dist_2232 v0 v1 v2
  = coe du_getStakeDist_2208 (coe v0) (coe v1) (coe v2)
-- Ledger.Ratify._.acceptedStake
d_acceptedStake_2234 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676] ->
  T_StakeDistrs_1966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_acceptedStake_2234 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0)))
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
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0))))
         (coe du_dist_2232 (coe v1) (coe v2) (coe v3))
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
               (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_798))
            (coe v4) (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_724)))
-- Ledger.Ratify._.totalStake
d_totalStake_2236 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_676] ->
  T_StakeDistrs_1966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_2236 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0)))
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
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0))))
         (coe du_dist_2232 (coe v1) (coe v2) (coe v3))
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
                  (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_798))
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
                     erased (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_724))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_726))))))
-- Ledger.Ratify.acceptedBy
d_acceptedBy_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 -> ()
d_acceptedBy_2242 = erased
-- Ledger.Ratify.accepted
d_accepted_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 -> ()
d_accepted_2344 = erased
-- Ledger.Ratify.expired
d_expired_2352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 -> ()
d_expired_2352 = erased
-- Ledger.Ratify.verifyPrev
d_verifyPrev_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_694 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_830 -> ()
d_verifyPrev_2360 = erased
-- Ledger.Ratify.delayingAction
d_delayingAction_2382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_694 -> Bool
d_delayingAction_2382 ~v0 v1 = du_delayingAction_2382 v1
du_delayingAction_2382 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_694 -> Bool
du_delayingAction_2382 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_696
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_698
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_700
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_702
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_704
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_706
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_708
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed
d_delayed_2386 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_694 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_830 -> Bool -> ()
d_delayed_2386 = erased
-- Ledger.Ratify.acceptConds
d_acceptConds_2396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  T_RatifyState_2002 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2396 = erased
-- Ledger.Ratify._._.ccHotKeys
d_ccHotKeys_2412 ::
  T_RatifyEnv_1972 ->
  T_RatifyState_2002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2412 v0 ~v1 ~v2 ~v3 = du_ccHotKeys_2412 v0
du_ccHotKeys_2412 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2412 v0 = coe d_ccHotKeys_1994 (coe v0)
-- Ledger.Ratify._._.currentEpoch
d_currentEpoch_2414 ::
  T_RatifyEnv_1972 ->
  T_RatifyState_2002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  AgdaAny
d_currentEpoch_2414 v0 ~v1 ~v2 ~v3 = du_currentEpoch_2414 v0
du_currentEpoch_2414 :: T_RatifyEnv_1972 -> AgdaAny
du_currentEpoch_2414 v0 = coe d_currentEpoch_1990 (coe v0)
-- Ledger.Ratify._._.delegatees
d_delegatees_2416 ::
  T_RatifyEnv_1972 ->
  T_RatifyState_2002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2416 v0 ~v1 ~v2 ~v3 = du_delegatees_2416 v0
du_delegatees_2416 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2416 v0 = coe d_delegatees_2000 (coe v0)
-- Ledger.Ratify._._.dreps
d_dreps_2418 ::
  T_RatifyEnv_1972 ->
  T_RatifyState_2002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2418 v0 ~v1 ~v2 ~v3 = du_dreps_2418 v0
du_dreps_2418 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2418 v0 = coe d_dreps_1992 (coe v0)
-- Ledger.Ratify._._.pools
d_pools_2420 ::
  T_RatifyEnv_1972 ->
  T_RatifyState_2002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2420 v0 ~v1 ~v2 ~v3 = du_pools_2420 v0
du_pools_2420 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2420 v0 = coe d_pools_1998 (coe v0)
-- Ledger.Ratify._._.stakeDistrs
d_stakeDistrs_2422 ::
  T_RatifyEnv_1972 ->
  T_RatifyState_2002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  T_StakeDistrs_1966
d_stakeDistrs_2422 v0 ~v1 ~v2 ~v3 = du_stakeDistrs_2422 v0
du_stakeDistrs_2422 :: T_RatifyEnv_1972 -> T_StakeDistrs_1966
du_stakeDistrs_2422 v0 = coe d_stakeDistrs_1988 (coe v0)
-- Ledger.Ratify._._.treasury
d_treasury_2424 ::
  T_RatifyEnv_1972 ->
  T_RatifyState_2002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  Integer
d_treasury_2424 v0 ~v1 ~v2 ~v3 = du_treasury_2424 v0
du_treasury_2424 :: T_RatifyEnv_1972 -> Integer
du_treasury_2424 v0 = coe d_treasury_1996 (coe v0)
-- Ledger.Ratify._._.delay
d_delay_2428 ::
  T_RatifyEnv_1972 ->
  T_RatifyState_2002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 -> Bool
d_delay_2428 ~v0 v1 ~v2 ~v3 = du_delay_2428 v1
du_delay_2428 :: T_RatifyState_2002 -> Bool
du_delay_2428 v0 = coe d_delay_2014 (coe v0)
-- Ledger.Ratify._._.es
d_es_2430 ::
  T_RatifyEnv_1972 ->
  T_RatifyState_2002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_es_2430 ~v0 v1 ~v2 ~v3 = du_es_2430 v1
du_es_2430 ::
  T_RatifyState_2002 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_es_2430 v0 = coe d_es_2010 (coe v0)
-- Ledger.Ratify._._.removed
d_removed_2432 ::
  T_RatifyEnv_1972 ->
  T_RatifyState_2002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2432 ~v0 v1 ~v2 ~v3 = du_removed_2432 v1
du_removed_2432 ::
  T_RatifyState_2002 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_2432 v0 = coe d_removed_2012 (coe v0)
-- Ledger.Ratify.verifyPrev?
d_verifyPrev'63'_2454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_694 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2454 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_696
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_698
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_700
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_constitution_844 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_702
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pv_846 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_704
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_706
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_708
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed?
d_delayed'63'_2492 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_694 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2492 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe d_verifyPrev'63'_2454 (coe v0) (coe v1) (coe v2) (coe v3))
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
d_Is'45'nothing'63'_2508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_2508 ~v0 ~v1 v2 = du_Is'45'nothing'63'_2508 v2
du_Is'45'nothing'63'_2508 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_2508 v0
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
d_acceptedBy'63'_2524 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_664 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_2524 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3530
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v5 -> v5))
            (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
            (coe
               d_threshold_1830 v0
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v2)))
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_map_64
                  (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v2))))
               (MAlonzo.Code.Ledger.GovernanceActions.d_action_792 (coe v3)) v4))
         (coe
            d_acceptedStakeRatio_2218 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_548
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
               (coe
                  d_actualVotes_2036 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v2)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v2)))
                  (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_792 (coe v3))
                  (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_786 (coe v3))))
            (coe d_stakeDistrs_1988 (coe v1))
            (coe
               d_actualVotes_2036 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v2)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v2)))
               (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_792 (coe v3))
               (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_786 (coe v3)))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796)
            v4 (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_666))
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
                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0))))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
                  (coe (0 :: Integer))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v2))))
               (coe
                  MAlonzo.Code.Ledger.PParams.d_ccMinSize_366
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v2)))))
            (coe
               du_Is'45'nothing'63'_2508
               (coe
                  d_threshold_1830 v0
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v2)))
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_map_64
                     (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v2))))
                  (MAlonzo.Code.Ledger.GovernanceActions.d_action_792 (coe v3))
                  v4))))
-- Ledger.Ratify.accepted?
d_accepted'63'_2536 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2536 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         d_acceptedBy'63'_2524 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_666))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
         (coe
            d_acceptedBy'63'_2524 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_668))
         (coe
            d_acceptedBy'63'_2524 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_670)))
-- Ledger.Ratify.expired?
d_expired'63'_2552 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2552 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_234
         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
            (coe
               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_790 (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0)))
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_790 (coe v2))
            v1))
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY'⦈_
d__'8866'_'8640''10631'_'44'RATIFY'''10632'__2568 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2568
  = C_RATIFY'45'Accept_2612 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_2636 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_2660 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2584 ::
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2584 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2584 v0
du_ccHotKeys_2584 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2584 v0 = coe d_ccHotKeys_1994 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2586 ::
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2586 v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2586 v0
du_currentEpoch_2586 :: T_RatifyEnv_1972 -> AgdaAny
du_currentEpoch_2586 v0 = coe d_currentEpoch_1990 (coe v0)
-- Ledger.Ratify._.delegatees
d_delegatees_2588 ::
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2588 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_delegatees_2588 v0
du_delegatees_2588 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2588 v0 = coe d_delegatees_2000 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2590 ::
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2590 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2590 v0
du_dreps_2590 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2590 v0 = coe d_dreps_1992 (coe v0)
-- Ledger.Ratify._.pools
d_pools_2592 ::
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2592 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_pools_2592 v0
du_pools_2592 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2592 v0 = coe d_pools_1998 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2594 ::
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1966
d_stakeDistrs_2594 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2594 v0
du_stakeDistrs_2594 :: T_RatifyEnv_1972 -> T_StakeDistrs_1966
du_stakeDistrs_2594 v0 = coe d_stakeDistrs_1988 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2596 ::
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2596 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2596 v0
du_treasury_2596 :: T_RatifyEnv_1972 -> Integer
du_treasury_2596 v0 = coe d_treasury_1996 (coe v0)
-- Ledger.Ratify._.action
d_action_2602 ::
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_action_2602 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_action_2602 v5
du_action_2602 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_action_2602 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_action_792
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0))
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2620 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_83189 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2620 ~v0 ~v1 v2 ~v3 = du_ccHotKeys_2620 v2
du_ccHotKeys_2620 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2620 v0 = coe d_ccHotKeys_1994 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2622 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_83189 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2622 ~v0 ~v1 v2 ~v3 = du_currentEpoch_2622 v2
du_currentEpoch_2622 :: T_RatifyEnv_1972 -> AgdaAny
du_currentEpoch_2622 v0 = coe d_currentEpoch_1990 (coe v0)
-- Ledger.Ratify._.delegatees
d_delegatees_2624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_83189 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2624 ~v0 ~v1 v2 ~v3 = du_delegatees_2624 v2
du_delegatees_2624 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2624 v0 = coe d_delegatees_2000 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_83189 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2626 ~v0 ~v1 v2 ~v3 = du_dreps_2626 v2
du_dreps_2626 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2626 v0 = coe d_dreps_1992 (coe v0)
-- Ledger.Ratify._.pools
d_pools_2628 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_83189 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2628 ~v0 ~v1 v2 ~v3 = du_pools_2628 v2
du_pools_2628 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2628 v0 = coe d_pools_1998 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_83189 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1966
d_stakeDistrs_2630 ~v0 ~v1 v2 ~v3 = du_stakeDistrs_2630 v2
du_stakeDistrs_2630 :: T_RatifyEnv_1972 -> T_StakeDistrs_1966
du_stakeDistrs_2630 v0 = coe d_stakeDistrs_1988 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2632 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_83189 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2632 ~v0 ~v1 v2 ~v3 = du_treasury_2632 v2
du_treasury_2632 :: T_RatifyEnv_1972 -> Integer
du_treasury_2632 v0 = coe d_treasury_1996 (coe v0)
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_86311 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2644 ~v0 ~v1 v2 ~v3 = du_ccHotKeys_2644 v2
du_ccHotKeys_2644 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2644 v0 = coe d_ccHotKeys_1994 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2646 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_86311 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2646 ~v0 ~v1 v2 ~v3 = du_currentEpoch_2646 v2
du_currentEpoch_2646 :: T_RatifyEnv_1972 -> AgdaAny
du_currentEpoch_2646 v0 = coe d_currentEpoch_1990 (coe v0)
-- Ledger.Ratify._.delegatees
d_delegatees_2648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_86311 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2648 ~v0 ~v1 v2 ~v3 = du_delegatees_2648 v2
du_delegatees_2648 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2648 v0 = coe d_delegatees_2000 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_86311 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2650 ~v0 ~v1 v2 ~v3 = du_dreps_2650 v2
du_dreps_2650 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2650 v0 = coe d_dreps_1992 (coe v0)
-- Ledger.Ratify._.pools
d_pools_2652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_86311 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2652 ~v0 ~v1 v2 ~v3 = du_pools_2652 v2
du_pools_2652 ::
  T_RatifyEnv_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2652 v0 = coe d_pools_1998 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_86311 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1966
d_stakeDistrs_2654 ~v0 ~v1 v2 ~v3 = du_stakeDistrs_2654 v2
du_stakeDistrs_2654 :: T_RatifyEnv_1972 -> T_StakeDistrs_1966
du_stakeDistrs_2654 v0 = coe d_stakeDistrs_1988 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2656 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_86311 ->
  T_RatifyEnv_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2656 ~v0 ~v1 v2 ~v3 = du_treasury_2656 v2
du_treasury_2656 :: T_RatifyEnv_1972 -> Integer
du_treasury_2656 v0 = coe d_treasury_1996 (coe v0)
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1972 ->
  T_RatifyState_2002 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_2002 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2662 = erased
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_83183 ::
  T_GeneralizeTel_83189 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_'46'generalizedField'45'es_83183 v0
  = case coe v0 of
      C_mkGeneralizeTel_83191 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_83185 ::
  T_GeneralizeTel_83189 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_83185 v0
  = case coe v0 of
      C_mkGeneralizeTel_83191 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_83187 :: T_GeneralizeTel_83189 -> Bool
d_'46'generalizedField'45'd_83187 v0
  = case coe v0 of
      C_mkGeneralizeTel_83191 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_83189 a0 = ()
data T_GeneralizeTel_83189
  = C_mkGeneralizeTel_83191 MAlonzo.Code.Ledger.Enact.T_EnactState_830
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_86305 ::
  T_GeneralizeTel_86311 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_'46'generalizedField'45'es_86305 v0
  = case coe v0 of
      C_mkGeneralizeTel_86313 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_86307 ::
  T_GeneralizeTel_86311 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_86307 v0
  = case coe v0 of
      C_mkGeneralizeTel_86313 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_86309 :: T_GeneralizeTel_86311 -> Bool
d_'46'generalizedField'45'd_86309 v0
  = case coe v0 of
      C_mkGeneralizeTel_86313 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_86311 a0 = ()
data T_GeneralizeTel_86311
  = C_mkGeneralizeTel_86313 MAlonzo.Code.Ledger.Enact.T_EnactState_830
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
