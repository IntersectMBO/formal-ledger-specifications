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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_86 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_86 ~v0 = du_DecEq'45'GovRole_86
du_DecEq'45'GovRole_86 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_86
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_798
-- _.Epoch
d_Epoch_142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_142 = erased
-- _.GovAction
d_GovAction_148 a0 = ()
-- _.GovActionID
d_GovActionID_150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_150 = erased
-- _.GovActionState
d_GovActionState_152 a0 = ()
-- _.GovRole
d_GovRole_158 a0 = ()
-- _.THash
d_THash_186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_186 = erased
-- _.NeedsHash
d_NeedsHash_198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 -> ()
d_NeedsHash_198 = erased
-- _.PParamGroup
d_PParamGroup_220 a0 = ()
-- _.PParams
d_PParams_222 a0 = ()
-- _.UpdateT
d_UpdateT_226 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UpdateT_226 = erased
-- _.VDeleg
d_VDeleg_372 a0 = ()
-- _.preoEpoch
d_preoEpoch_524 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_524 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0))
-- _.GovActionState.action
d_action_662 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_action_662 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_664 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_expiresIn_664 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_792 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_666 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_prevAction_666 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_796 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_668 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_668 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790 (coe v0)
-- _.GovActionState.votes
d_votes_670 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_670 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_788 (coe v0)
-- _.GovernanceActions.GovAction
d_GovAction_736 a0 = ()
-- _.GovernanceActions.GovActionState
d_GovActionState_740 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_744 a0 = ()
-- _.GovernanceActions.VDeleg
d_VDeleg_766 a0 = ()
-- _.PParams.Emax
d_Emax_896 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_896 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_350 (coe v0)
-- _.PParams.a
d_a_898 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_898 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_326 (coe v0)
-- _.PParams.a0
d_a0_900 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_900 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_354 (coe v0)
-- _.PParams.b
d_b_902 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_902 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_328 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_904 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_904 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_366 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_906 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_906 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_364 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_910 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356 (coe v0)
-- _.PParams.costmdls
d_costmdls_912 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_358 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_374 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_372 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_918 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_926 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_318 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_310 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_930 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_322 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_314 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_934 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_342 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_936 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_316 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_312 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_320 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_944 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_338
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_348 (coe v0)
-- _.PParams.nopt
d_nopt_948 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_948 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_352 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0)
-- _.PParams.prices
d_prices_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_336 (coe v0)
-- _.PParams.pv
d_pv_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_956 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_324 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_958 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_346 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_refScriptCostStride_960 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_344 (coe v0)
-- Ledger.Ratify._.PoolParams
d_PoolParams_1538 a0 = ()
-- Ledger.Ratify._.PoolParams.rewardAddr
d_rewardAddr_1684 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_826 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_1684 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_830 (coe v0)
-- Ledger.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1688 a0 a1 a2 a3 a4 = ()
-- Ledger.Ratify._.EnactEnv
d_EnactEnv_1704 a0 = ()
-- Ledger.Ratify._.EnactState
d_EnactState_1706 a0 = ()
-- Ledger.Ratify._.EnactEnv.epoch
d_epoch_1734 :: MAlonzo.Code.Ledger.Enact.T_EnactEnv_812 -> AgdaAny
d_epoch_1734 v0
  = coe MAlonzo.Code.Ledger.Enact.d_epoch_824 (coe v0)
-- Ledger.Ratify._.EnactEnv.gid
d_gid_1736 ::
  MAlonzo.Code.Ledger.Enact.T_EnactEnv_812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1736 v0 = coe MAlonzo.Code.Ledger.Enact.d_gid_820 (coe v0)
-- Ledger.Ratify._.EnactEnv.treasury
d_treasury_1738 ::
  MAlonzo.Code.Ledger.Enact.T_EnactEnv_812 -> Integer
d_treasury_1738 v0
  = coe MAlonzo.Code.Ledger.Enact.d_treasury_822 (coe v0)
-- Ledger.Ratify._.EnactState.cc
d_cc_1742 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1742 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v0)
-- Ledger.Ratify._.EnactState.constitution
d_constitution_1744 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1744 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_842 (coe v0)
-- Ledger.Ratify._.EnactState.pparams
d_pparams_1746 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1746 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v0)
-- Ledger.Ratify._.EnactState.pv
d_pv_1748 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1748 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_844 (coe v0)
-- Ledger.Ratify._.EnactState.withdrawals
d_withdrawals_1750 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1750 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_848 (coe v0)
-- Ledger.Ratify._.Vote
d_Vote_1754 a0 = ()
-- Ledger.Ratify._∧_
d__'8743'__1764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__1764 = erased
-- Ledger.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_1770 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 -> AgdaAny
d_'8739'_'8739'_'8739'_'8739'_1770 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_1770 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_1770 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 -> AgdaAny
du_'8739'_'8739'_'8739'_'8739'_1770 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_662 -> coe v0
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_664 -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_666 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 -> AgdaAny
d_'8739'_'8741'_'8739'_1782 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_1782 v2 v3
du_'8739'_'8741'_'8739'_1782 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 -> AgdaAny
du_'8739'_'8741'_'8739'_1782 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.GovernanceActions.C_CC_662 -> coe v0
                  MAlonzo.Code.Ledger.GovernanceActions.C_DRep_664 -> coe v2
                  MAlonzo.Code.Ledger.GovernanceActions.C_SPO_666 -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.vote
d_vote_1792 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_1792 ~v0 = du_vote_1792
du_vote_1792 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_1792 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Ratify.defer
d_defer_1794 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_1794 ~v0 = du_defer_1794
du_defer_1794 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_1794
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Ratify.maxThreshold
d_maxThreshold_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_1796 ~v0 v1 = du_maxThreshold_1796 v1
du_maxThreshold_1796 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_1796 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230 (coe du_comb_1804)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
            v0))
-- Ledger.Ratify._.comb
d_comb_1804 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_comb_1804 ~v0 ~v1 v2 v3 = du_comb_1804 v2 v3
du_comb_1804 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_comb_1804 v0 v1
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
d_'9472'_1814 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_1814 ~v0 = du_'9472'_1814
du_'9472'_1814 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_1814 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Ratify.✓†
d_'10003''8224'_1816 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_1816 ~v0 = du_'10003''8224'_1816
du_'10003''8224'_1816 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_1816 = coe du_vote_1792 (coe du_defer_1794)
-- Ledger.Ratify.threshold
d_threshold_1818 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_1818 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_692
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1770 (coe du_'9472'_1814)
             (coe
                du_vote_1792
                (MAlonzo.Code.Ledger.PParams.d_P1_200
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v1))))
             (coe
                du_vote_1792
                (MAlonzo.Code.Ledger.PParams.d_Q1_232
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_694 v4 v5 v6
        -> coe
             du_'8739'_'8741'_'8739'_1782 (coe du_'9472'_1814)
             (coe du_P'47'Q2a'47'b_1932 (coe v1) (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_696 v4 v5
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1770 (coe du_'10003'_1930 (coe v2))
             (coe
                du_vote_1792
                (MAlonzo.Code.Ledger.PParams.d_P3_206
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v1))))
             (coe du_'9472'_1814)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_698 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1770 (coe du_'10003'_1930 (coe v2))
             (coe
                du_vote_1792
                (MAlonzo.Code.Ledger.PParams.d_P4_208
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v1))))
             (coe
                du_vote_1792
                (MAlonzo.Code.Ledger.PParams.d_Q4_238
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_700 v4
        -> coe
             du_'8739'_'8741'_'8739'_1782 (coe du_'10003'_1930 (coe v2))
             (coe du_P'47'Q5_1938 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_702 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1770 (coe du_'10003'_1930 (coe v2))
             (coe
                du_vote_1792
                (MAlonzo.Code.Ledger.PParams.d_P6_218
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v1))))
             (coe du_'9472'_1814)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_704
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1770 (coe du_'10003''8224'_1816)
             (coe du_'10003''8224'_1816) (coe du_'10003''8224'_1816)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.✓
d_'10003'_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_1930 ~v0 ~v1 v2 = du_'10003'_1930 v2
du_'10003'_1930 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_1930 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
      (coe du_'10003''8224'_1816) (coe v0)
-- Ledger.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_1932 ~v0 v1 v2 = du_P'47'Q2a'47'b_1932 v1 v2
du_P'47'Q2a'47'b_1932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_1932 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1792
                (MAlonzo.Code.Ledger.PParams.d_P2a_202
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0))))
             (coe
                du_vote_1792
                (MAlonzo.Code.Ledger.PParams.d_Q2a_234
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1792
                (MAlonzo.Code.Ledger.PParams.d_P2b_204
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0))))
             (coe
                du_vote_1792
                (MAlonzo.Code.Ledger.PParams.d_Q2b_236
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.pparamThreshold
d_pparamThreshold_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_1936 ~v0 v1 ~v2 v3
  = du_pparamThreshold_1936 v1 v3
du_pparamThreshold_1936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_1936 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.PParams.C_NetworkGroup_168
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1792
                (MAlonzo.Code.Ledger.PParams.d_P5a_210
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0))))
             (coe du_'9472'_1814)
      MAlonzo.Code.Ledger.PParams.C_EconomicGroup_170
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1792
                (MAlonzo.Code.Ledger.PParams.d_P5b_212
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0))))
             (coe du_'9472'_1814)
      MAlonzo.Code.Ledger.PParams.C_TechnicalGroup_172
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1792
                (MAlonzo.Code.Ledger.PParams.d_P5c_214
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0))))
             (coe du_'9472'_1814)
      MAlonzo.Code.Ledger.PParams.C_GovernanceGroup_174
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1792
                (MAlonzo.Code.Ledger.PParams.d_P5d_216
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0))))
             (coe du_'9472'_1814)
      MAlonzo.Code.Ledger.PParams.C_SecurityGroup_176
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_1814)
             (coe
                du_vote_1792
                (MAlonzo.Code.Ledger.PParams.d_Q5e_240
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.P/Q5
d_P'47'Q5_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_1938 v0 v1 ~v2 v3 = du_P'47'Q5_1938 v0 v1 v3
du_P'47'Q5_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_1938 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_1796
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_1936 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_1296
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_1328
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2190 (coe v0)))
               v2)))
      (coe
         du_maxThreshold_1796
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_1936 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_1296
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_1328
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2190 (coe v0)))
               v2)))
-- Ledger.Ratify.canVote
d_canVote_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 -> ()
d_canVote_1946 = erased
-- Ledger.Ratify.StakeDistrs
d_StakeDistrs_1954 a0 = ()
newtype T_StakeDistrs_1954
  = C_StakeDistrs'46'constructor_11371 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify.StakeDistrs.stakeDistr
d_stakeDistr_1958 ::
  T_StakeDistrs_1954 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1958 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_11371 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv
d_RatifyEnv_1960 a0 = ()
data T_RatifyEnv_1960
  = C_RatifyEnv'46'constructor_11491 T_StakeDistrs_1954 AgdaAny
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_1976 :: T_RatifyEnv_1960 -> T_StakeDistrs_1954
d_stakeDistrs_1976 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11491 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_1978 :: T_RatifyEnv_1960 -> AgdaAny
d_currentEpoch_1978 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11491 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.dreps
d_dreps_1980 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1980 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11491 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_1982 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1982 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11491 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.treasury
d_treasury_1984 :: T_RatifyEnv_1960 -> Integer
d_treasury_1984 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11491 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.pools
d_pools_1986 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1986 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11491 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.delegatees
d_delegatees_1988 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_1988 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11491 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState
d_RatifyState_1990 a0 = ()
data T_RatifyState_1990
  = C_'10214'_'44'_'44'_'10215''691'_2004 MAlonzo.Code.Ledger.Enact.T_EnactState_828
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Ratify.RatifyState.es
d_es_1998 ::
  T_RatifyState_1990 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_es_1998 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_2004 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.removed
d_removed_2000 ::
  T_RatifyState_1990 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2000 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_2004 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.delay
d_delay_2002 :: T_RatifyState_1990 -> Bool
d_delay_2002 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_2004 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.CCData
d_CCData_2006 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CCData_2006 = erased
-- Ledger.Ratify.govRole
d_govRole_2008 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660
d_govRole_2008 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_674 v1 v2
        -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_676
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_664
      MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_678
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_664
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.IsCC
d_IsCC_2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672 -> ()
d_IsCC_2012 = erased
-- Ledger.Ratify.IsDRep
d_IsDRep_2014 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672 -> ()
d_IsDRep_2014 = erased
-- Ledger.Ratify.IsSPO
d_IsSPO_2016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672 -> ()
d_IsSPO_2016 = erased
-- Ledger.Ratify.actualVotes
d_actualVotes_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2024 v0 v1 v2 v3 v4 v5
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
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_674
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_662))
         (coe
            du_actualCCVotes_2172 (coe v0) (coe v1) (coe v2) (coe v3)
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
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0))))
         (coe du_actualPDRepVotes_2180 (coe v0) (coe v4))
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
               (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0))))
            (coe du_actualDRepVotes_2182 (coe v0) (coe v1) (coe v5))
            (coe du_actualSPOVotes_2184 (coe v0) (coe v1) (coe v5) (coe v4))))
-- Ledger.Ratify._._.ccHotKeys
d_ccHotKeys_2042 ::
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2042 v0 ~v1 ~v2 ~v3 ~v4 = du_ccHotKeys_2042 v0
du_ccHotKeys_2042 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2042 v0 = coe d_ccHotKeys_1982 (coe v0)
-- Ledger.Ratify._._.currentEpoch
d_currentEpoch_2044 ::
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2044 v0 ~v1 ~v2 ~v3 ~v4 = du_currentEpoch_2044 v0
du_currentEpoch_2044 :: T_RatifyEnv_1960 -> AgdaAny
du_currentEpoch_2044 v0 = coe d_currentEpoch_1978 (coe v0)
-- Ledger.Ratify._._.delegatees
d_delegatees_2046 ::
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2046 v0 ~v1 ~v2 ~v3 ~v4 = du_delegatees_2046 v0
du_delegatees_2046 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2046 v0 = coe d_delegatees_1988 (coe v0)
-- Ledger.Ratify._._.dreps
d_dreps_2048 ::
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2048 v0 ~v1 ~v2 ~v3 ~v4 = du_dreps_2048 v0
du_dreps_2048 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2048 v0 = coe d_dreps_1980 (coe v0)
-- Ledger.Ratify._._.pools
d_pools_2050 ::
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2050 v0 ~v1 ~v2 ~v3 ~v4 = du_pools_2050 v0
du_pools_2050 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2050 v0 = coe d_pools_1986 (coe v0)
-- Ledger.Ratify._._.stakeDistrs
d_stakeDistrs_2052 ::
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1954
d_stakeDistrs_2052 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDistrs_2052 v0
du_stakeDistrs_2052 :: T_RatifyEnv_1960 -> T_StakeDistrs_1954
du_stakeDistrs_2052 v0 = coe d_stakeDistrs_1976 (coe v0)
-- Ledger.Ratify._._.treasury
d_treasury_2054 ::
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2054 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_2054 v0
du_treasury_2054 :: T_RatifyEnv_1960 -> Integer
du_treasury_2054 v0 = coe d_treasury_1984 (coe v0)
-- Ledger.Ratify._.roleVotes
d_roleVotes_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_roleVotes_2124 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_roleVotes_2124 v5 v6
du_roleVotes_2124 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_roleVotes_2124 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_674))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1168
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_798))
              (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
         v0)
-- Ledger.Ratify._.activeDReps
d_activeDReps_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_activeDReps_2132 v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_activeDReps_2132 v0 v1
du_activeDReps_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 -> [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_activeDReps_2132 v0 v1
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
                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0)))
                    (\ v3 v4 -> v3) (d_currentEpoch_1978 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0)))
                    (d_currentEpoch_1978 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0)))
                 (coe d_currentEpoch_1978 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_1980 (coe v1)))
-- Ledger.Ratify._.spos
d_spos_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672]
d_spos_2138 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_spos_2138 v1
du_spos_2138 ::
  T_RatifyEnv_1960 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672]
du_spos_2138 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_798))
           (coe d_govRole_2008 (coe v1))
           (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_666))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
         (coe d_stakeDistr_1958 (coe d_stakeDistrs_1976 (coe v0))))
-- Ledger.Ratify._.getCCHotCred
d_getCCHotCred_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getCCHotCred_2140 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_getCCHotCred_2140 v0 v1 v6
du_getCCHotCred_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getCCHotCred_2140 v0 v1 v2
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
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0)))
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0)))
                              (\ v5 v6 -> v5) (d_currentEpoch_1978 (coe v1)) v4)
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v5 v6 -> v6)
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0)))
                              (d_currentEpoch_1978 (coe v1)) v4))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0)))
                           (coe d_currentEpoch_1978 (coe v1)) (coe v4))) in
           coe
             (let v6
                    = coe
                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe d_ccHotKeys_1982 (coe v1)) (coe v3)
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
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))))
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
                                    (coe d_ccHotKeys_1982 (coe v1)))))) in
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
d_SPODefaultVote_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724
d_SPODefaultVote_2150 v0 v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_SPODefaultVote_2150 v0 v1 v6 v7
du_SPODefaultVote_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724
du_SPODefaultVote_2150 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Ledger.GovernanceActions.C_no_728 in
    coe
      (case coe v3 of
         MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_674 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Ledger.GovernanceActions.C_SPO_666
                  -> case coe v6 of
                       MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v7
                         -> let v8
                                  = coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe d_pools_1986 (coe v1)) (coe v7)
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1220
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
                                                  (coe d_pools_1986 (coe v1)))))) in
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
                                                (coe d_delegatees_1988 (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_rewardAddr_830
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
                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1220
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1220
                                                               (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Certs.d_rewardAddr_830
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
                                                            (coe d_delegatees_1988 (coe v1)))))) in
                                      coe
                                        (let v11
                                               = let v11
                                                       = coe
                                                           MAlonzo.Code.Ledger.GovernanceActions.C_no_728 in
                                                 coe
                                                   (case coe v10 of
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                                                        -> case coe v12 of
                                                             MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_676
                                                               -> coe
                                                                    MAlonzo.Code.Ledger.GovernanceActions.C_abstain_730
                                                             _ -> coe v11
                                                      _ -> coe v11) in
                                         coe
                                           (case coe v2 of
                                              MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_692
                                                -> case coe v10 of
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                                                       -> case coe v12 of
                                                            MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_678
                                                              -> coe
                                                                   MAlonzo.Code.Ledger.GovernanceActions.C_yes_726
                                                            _ -> coe v11
                                                     _ -> coe v11
                                              MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_698 v12
                                                -> coe
                                                     MAlonzo.Code.Ledger.GovernanceActions.C_no_728
                                              _ -> coe v11))
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                   -> coe MAlonzo.Code.Ledger.GovernanceActions.C_no_728
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> coe v4
                _ -> coe v4
         _ -> coe v4)
-- Ledger.Ratify._.actualCCVote
d_actualCCVote_2162 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724
d_actualCCVote_2162 v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_actualCCVote_2162 v0 v1 v5 v6 v7
du_actualCCVote_2162 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724
du_actualCCVote_2162 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_getCCHotCred_2140 (coe v0) (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v7 -> v7))
                (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_728)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe v2)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_662) (coe v6))
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         erased
                         (coe
                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                            (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_798)
                            (coe
                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                  (coe
                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_662) (coe v6))
                      (let v7
                             = MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v7
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v2))))))
         _ -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_730)
-- Ledger.Ratify._.actualCCVotes
d_actualCCVotes_2172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualCCVotes_2172 v0 v1 v2 v3 ~v4 v5
  = du_actualCCVotes_2172 v0 v1 v2 v3 v5
du_actualCCVotes_2172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualCCVotes_2172 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Class.ToBool.du_if_then_else__46
                    (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                       (MAlonzo.Code.Ledger.PParams.d_ccMinSize_364 (coe v2))
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
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1220
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                                (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1260
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe du_getCCHotCred_2140 (coe v0) (coe v1))
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v6)))))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1126
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe du_actualCCVote_2162 (coe v0) (coe v1) (coe v4)) (coe v6)))
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
                            (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_728)))
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
d_actualPDRepVotes_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualPDRepVotes_2180 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_actualPDRepVotes_2180 v0 v6
du_actualPDRepVotes_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualPDRepVotes_2180 v0 v1
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
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_676)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_730)))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_678)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_728))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_692
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
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_676)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_730)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_678)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_726)))
         _ -> coe v2)
-- Ledger.Ratify._.actualDRepVotes
d_actualDRepVotes_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualDRepVotes_2182 v0 v1 ~v2 ~v3 ~v4 v5
  = du_actualDRepVotes_2182 v0 v1 v5
du_actualDRepVotes_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualDRepVotes_2182 v0 v1 v2
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
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0))))
      (coe
         du_roleVotes_2124 (coe v2)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_664))
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
               MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_674
               (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_664))
            (coe du_activeDReps_2132 (coe v0) (coe v1)))
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_728))
-- Ledger.Ratify._.actualSPOVotes
d_actualSPOVotes_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualSPOVotes_2184 v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_actualSPOVotes_2184 v0 v1 v5 v6
du_actualSPOVotes_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualSPOVotes_2184 v0 v1 v2 v3
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
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0))))
      (coe
         du_roleVotes_2124 (coe v2)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_666))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1078
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_SPODefaultVote_2150 (coe v0) (coe v1) (coe v3))
         (coe du_spos_2138 (coe v1)))
-- Ledger.Ratify._/₀_
d__'47''8320'__2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'47''8320'__2188 ~v0 v1 v2 = du__'47''8320'__2188 v1 v2
du__'47''8320'__2188 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'47''8320'__2188 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      _ -> coe
             MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0) (coe v1)
-- Ledger.Ratify.getStakeDist
d_getStakeDist_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672] ->
  T_StakeDistrs_1954 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_2196 ~v0 v1 v2 v3 = du_getStakeDist_2196 v1 v2 v3
du_getStakeDist_2196 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672] ->
  T_StakeDistrs_1954 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getStakeDist_2196 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_662
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
                           MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_798))
                     (coe d_govRole_2008 (coe v3)) (coe v0))
                v1)
             (coe (1 :: Integer))
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_664
        -> coe
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_798))
                  (coe d_govRole_2008 (coe v3)) (coe v0))
             (d_stakeDistr_1958 (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_666
        -> coe
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_798))
                  (coe d_govRole_2008 (coe v3)) (coe v0))
             (d_stakeDistr_1958 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.acceptedStakeRatio
d_acceptedStakeRatio_2206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672] ->
  T_StakeDistrs_1954 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_2206 v0 v1 v2 v3 v4
  = coe
      du__'47''8320'__2188
      (coe
         d_acceptedStake_2222 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         d_totalStake_2224 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Ratify._.dist
d_dist_2220 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672] ->
  T_StakeDistrs_1954 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dist_2220 ~v0 v1 v2 v3 ~v4 = du_dist_2220 v1 v2 v3
du_dist_2220 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672] ->
  T_StakeDistrs_1954 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dist_2220 v0 v1 v2
  = coe du_getStakeDist_2196 (coe v0) (coe v1) (coe v2)
-- Ledger.Ratify._.acceptedStake
d_acceptedStake_2222 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672] ->
  T_StakeDistrs_1954 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_acceptedStake_2222 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0)))
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
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0))))
         (coe du_dist_2220 (coe v1) (coe v2) (coe v3))
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
               (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_800))
            (coe v4) (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_726)))
-- Ledger.Ratify._.totalStake
d_totalStake_2224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_672] ->
  T_StakeDistrs_1954 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_2224 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0)))
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
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0))))
         (coe du_dist_2220 (coe v1) (coe v2) (coe v3))
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
                  (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_800))
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
                     erased (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_726))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_728))))))
-- Ledger.Ratify.acceptedBy
d_acceptedBy_2230 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 -> ()
d_acceptedBy_2230 = erased
-- Ledger.Ratify.accepted
d_accepted_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 -> ()
d_accepted_2332 = erased
-- Ledger.Ratify.expired
d_expired_2340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 -> ()
d_expired_2340 = erased
-- Ledger.Ratify.verifyPrev
d_verifyPrev_2348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_828 -> ()
d_verifyPrev_2348 = erased
-- Ledger.Ratify.delayingAction
d_delayingAction_2370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 -> Bool
d_delayingAction_2370 ~v0 v1 = du_delayingAction_2370 v1
du_delayingAction_2370 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 -> Bool
du_delayingAction_2370 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_692
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_694 v1 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_696 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_698 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_700 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_702 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_704
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed
d_delayed_2374 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_828 -> Bool -> ()
d_delayed_2374 = erased
-- Ledger.Ratify.acceptConds
d_acceptConds_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  T_RatifyState_1990 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2384 = erased
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2400 ::
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2400 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2400 v0
du_ccHotKeys_2400 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2400 v0 = coe d_ccHotKeys_1982 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2402 ::
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_currentEpoch_2402 v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2402 v0
du_currentEpoch_2402 :: T_RatifyEnv_1960 -> AgdaAny
du_currentEpoch_2402 v0 = coe d_currentEpoch_1978 (coe v0)
-- Ledger.Ratify._.delegatees
d_delegatees_2404 ::
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2404 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_delegatees_2404 v0
du_delegatees_2404 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2404 v0 = coe d_delegatees_1988 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2406 ::
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2406 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2406 v0
du_dreps_2406 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2406 v0 = coe d_dreps_1980 (coe v0)
-- Ledger.Ratify._.pools
d_pools_2408 ::
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2408 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_pools_2408 v0
du_pools_2408 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2408 v0 = coe d_pools_1986 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2410 ::
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  T_StakeDistrs_1954
d_stakeDistrs_2410 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2410 v0
du_stakeDistrs_2410 :: T_RatifyEnv_1960 -> T_StakeDistrs_1954
du_stakeDistrs_2410 v0 = coe d_stakeDistrs_1976 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2412 ::
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  Integer
d_treasury_2412 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2412 v0
du_treasury_2412 :: T_RatifyEnv_1960 -> Integer
du_treasury_2412 v0 = coe d_treasury_1984 (coe v0)
-- Ledger.Ratify.verifyPrev?
d_verifyPrev'63'_2434 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2434 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_692
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_694 v4 v5 v6
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_696 v4 v5
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_constitution_842 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_698 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pv_844 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_700 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_702 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_704
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed?
d_delayed'63'_2488 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2488 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe d_verifyPrev'63'_2434 (coe v0) (coe v1) (coe v2) (coe v3))
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
d_Is'45'nothing'63'_2504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_2504 ~v0 ~v1 v2 = du_Is'45'nothing'63'_2504 v2
du_Is'45'nothing'63'_2504 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_2504 v0
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
d_acceptedBy'63'_2520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_2520 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3530
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v5 -> v5))
            (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
            (coe
               d_threshold_1818 v0
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v2)))
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_map_64
                  (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v2))))
               (MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v3)) v4))
         (coe
            d_acceptedStakeRatio_2206 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_548
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
               (coe
                  d_actualVotes_2024 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v2)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v2)))
                  (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v3))
                  (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_788 (coe v3))))
            (coe d_stakeDistrs_1976 (coe v1))
            (coe
               d_actualVotes_2024 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v2)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v2)))
               (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v3))
               (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_788 (coe v3)))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_798)
            v4 (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_662))
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
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0))))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
                  (coe (0 :: Integer))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v2))))
               (coe
                  MAlonzo.Code.Ledger.PParams.d_ccMinSize_364
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v2)))))
            (coe
               du_Is'45'nothing'63'_2504
               (coe
                  d_threshold_1818 v0
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v2)))
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_map_64
                     (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v2))))
                  (MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v3))
                  v4))))
-- Ledger.Ratify.accepted?
d_accepted'63'_2532 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2532 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         d_acceptedBy'63'_2520 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_662))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
         (coe
            d_acceptedBy'63'_2520 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_664))
         (coe
            d_acceptedBy'63'_2520 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_666)))
-- Ledger.Ratify.expired?
d_expired'63'_2548 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2548 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_234
         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
            (coe
               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_792 (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0)))
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_792 (coe v2))
            v1))
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY'⦈_
d__'8866'_'8640''10631'_'44'RATIFY'''10632'__2564 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2564
  = C_RATIFY'45'Accept_2608 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_2638 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_2668 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2580 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2580 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_ccHotKeys_2580 v1
du_ccHotKeys_2580 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2580 v0 = coe d_ccHotKeys_1982 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2582 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 -> AgdaAny
d_currentEpoch_2582 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_currentEpoch_2582 v1
du_currentEpoch_2582 :: T_RatifyEnv_1960 -> AgdaAny
du_currentEpoch_2582 v0 = coe d_currentEpoch_1978 (coe v0)
-- Ledger.Ratify._.delegatees
d_delegatees_2584 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2584 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_delegatees_2584 v1
du_delegatees_2584 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2584 v0 = coe d_delegatees_1988 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2586 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_dreps_2586 v1
du_dreps_2586 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2586 v0 = coe d_dreps_1980 (coe v0)
-- Ledger.Ratify._.pools
d_pools_2588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2588 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_pools_2588 v1
du_pools_2588 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2588 v0 = coe d_pools_1986 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2590 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 -> T_StakeDistrs_1954
d_stakeDistrs_2590 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_stakeDistrs_2590 v1
du_stakeDistrs_2590 :: T_RatifyEnv_1960 -> T_StakeDistrs_1954
du_stakeDistrs_2590 v0 = coe d_stakeDistrs_1976 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2592 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 -> Integer
d_treasury_2592 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_treasury_2592 v1
du_treasury_2592 :: T_RatifyEnv_1960 -> Integer
du_treasury_2592 v0 = coe d_treasury_1984 (coe v0)
-- Ledger.Ratify._.action
d_action_2598 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_action_2598 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_action_2598 v5
du_action_2598 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
du_action_2598 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_action_794
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0))
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2622 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2622 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2622 v1
du_ccHotKeys_2622 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2622 v0 = coe d_ccHotKeys_1982 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2624 ~v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2624 v1
du_currentEpoch_2624 :: T_RatifyEnv_1960 -> AgdaAny
du_currentEpoch_2624 v0 = coe d_currentEpoch_1978 (coe v0)
-- Ledger.Ratify._.delegatees
d_delegatees_2626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2626 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_delegatees_2626 v1
du_delegatees_2626 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2626 v0 = coe d_delegatees_1988 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2628 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2628 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2628 v1
du_dreps_2628 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2628 v0 = coe d_dreps_1980 (coe v0)
-- Ledger.Ratify._.pools
d_pools_2630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2630 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_pools_2630 v1
du_pools_2630 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2630 v0 = coe d_pools_1986 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2632 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1954
d_stakeDistrs_2632 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2632 v1
du_stakeDistrs_2632 :: T_RatifyEnv_1960 -> T_StakeDistrs_1954
du_stakeDistrs_2632 v0 = coe d_stakeDistrs_1976 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2634 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2634 v1
du_treasury_2634 :: T_RatifyEnv_1960 -> Integer
du_treasury_2634 v0 = coe d_treasury_1984 (coe v0)
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2652 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2652 v1
du_ccHotKeys_2652 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2652 v0 = coe d_ccHotKeys_1982 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2654 ~v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2654 v1
du_currentEpoch_2654 :: T_RatifyEnv_1960 -> AgdaAny
du_currentEpoch_2654 v0 = coe d_currentEpoch_1978 (coe v0)
-- Ledger.Ratify._.delegatees
d_delegatees_2656 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2656 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_delegatees_2656 v1
du_delegatees_2656 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2656 v0 = coe d_delegatees_1988 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2658 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2658 v1
du_dreps_2658 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2658 v0 = coe d_dreps_1980 (coe v0)
-- Ledger.Ratify._.pools
d_pools_2660 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2660 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_pools_2660 v1
du_pools_2660 ::
  T_RatifyEnv_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2660 v0 = coe d_pools_1986 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1954
d_stakeDistrs_2662 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2662 v1
du_stakeDistrs_2662 :: T_RatifyEnv_1960 -> T_StakeDistrs_1954
du_stakeDistrs_2662 v0 = coe d_stakeDistrs_1976 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2664 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2664 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2664 v1
du_treasury_2664 :: T_RatifyEnv_1960 -> Integer
du_treasury_2664 v0 = coe d_treasury_1984 (coe v0)
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1960 ->
  T_RatifyState_1990 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_1990 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2670 = erased
