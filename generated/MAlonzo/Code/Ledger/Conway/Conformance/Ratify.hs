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
d_Credential_48 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_90 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_90 ~v0 = du_DecEq'45'GovRole_90
du_DecEq'45'GovRole_90 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_90
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824
-- _.Epoch
d_Epoch_150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_150 = erased
-- _.GovAction
d_GovAction_156 a0 = ()
-- _.GovActionID
d_GovActionID_158 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_158 = erased
-- _.GovActionState
d_GovActionState_160 a0 = ()
-- _.GovRole
d_GovRole_166 a0 = ()
-- _.THash
d_THash_196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_196 = erased
-- _.NeedsHash
d_NeedsHash_208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> ()
d_NeedsHash_208 = erased
-- _.PParamGroup
d_PParamGroup_232 a0 = ()
-- _.PParams
d_PParams_234 a0 = ()
-- _.UpdateT
d_UpdateT_238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UpdateT_238 = erased
-- _.VDeleg
d_VDeleg_388 a0 = ()
-- _.preoEpoch
d_preoEpoch_542 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_542 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
-- _.GovActionState.action
d_action_678 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_678 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_820 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_680 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  AgdaAny
d_expiresIn_680 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_818 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_682 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  AgdaAny
d_prevAction_682 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_822 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_684 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_684 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816 (coe v0)
-- _.GovActionState.votes
d_votes_686 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_686 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_814 (coe v0)
-- _.GovernanceActions.GovAction
d_GovAction_764 a0 = ()
-- _.GovernanceActions.GovActionState
d_GovActionState_768 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_772 a0 = ()
-- _.GovernanceActions.VDeleg
d_VDeleg_794 a0 = ()
-- _.PParams.Emax
d_Emax_922 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_922 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_924 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_924 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_926 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_928 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_928 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_936 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_956 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_960 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_962 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_964 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_964 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_966 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_966 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_968 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_968 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_970 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_970 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_972 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_972 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_974 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_974 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_976 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_976 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_978 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_978 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_980 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_980 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_982 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_982 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_984 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_984 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_986 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_986 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.PoolParams
d_PoolParams_1564 a0 = ()
-- Ledger.Conway.Conformance.Ratify._.PoolParams.rewardAddr
d_rewardAddr_1702 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_850 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_1702 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_854 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1706 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Ratify._.EnactEnv
d_EnactEnv_1722 a0 = ()
-- Ledger.Conway.Conformance.Ratify._.EnactState
d_EnactState_1724 a0 = ()
-- Ledger.Conway.Conformance.Ratify._.EnactEnv.epoch
d_epoch_1752 :: MAlonzo.Code.Ledger.Enact.T_EnactEnv_836 -> AgdaAny
d_epoch_1752 v0
  = coe MAlonzo.Code.Ledger.Enact.d_epoch_848 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.EnactEnv.gid
d_gid_1754 ::
  MAlonzo.Code.Ledger.Enact.T_EnactEnv_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1754 v0 = coe MAlonzo.Code.Ledger.Enact.d_gid_844 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.EnactEnv.treasury
d_treasury_1756 ::
  MAlonzo.Code.Ledger.Enact.T_EnactEnv_836 -> Integer
d_treasury_1756 v0
  = coe MAlonzo.Code.Ledger.Enact.d_treasury_846 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.EnactState.cc
d_cc_1760 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1760 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.EnactState.constitution
d_constitution_1762 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1762 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_866 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.EnactState.pparams
d_pparams_1764 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1764 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_870 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.EnactState.pv
d_pv_1766 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1766 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_868 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.EnactState.withdrawals
d_withdrawals_1768 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1768 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_872 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.Vote
d_Vote_1772 a0 = ()
-- Ledger.Conway.Conformance.Ratify._∧_
d__'8743'__1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__1782 = erased
-- Ledger.Conway.Conformance.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_1788 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 -> AgdaAny
d_'8739'_'8739'_'8739'_'8739'_1788 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_1788 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_1788 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 -> AgdaAny
du_'8739'_'8739'_'8739'_'8739'_1788 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_688 -> coe v0
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_690 -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_692 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_1800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 -> AgdaAny
d_'8739'_'8741'_'8739'_1800 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_1800 v2 v3
du_'8739'_'8741'_'8739'_1800 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 -> AgdaAny
du_'8739'_'8741'_'8739'_1800 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.GovernanceActions.C_CC_688 -> coe v0
                  MAlonzo.Code.Ledger.GovernanceActions.C_DRep_690 -> coe v2
                  MAlonzo.Code.Ledger.GovernanceActions.C_SPO_692 -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.vote
d_vote_1810 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_1810 ~v0 = du_vote_1810
du_vote_1810 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_1810 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Conway.Conformance.Ratify.defer
d_defer_1812 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_1812 ~v0 = du_defer_1812
du_defer_1812 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_1812
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Conway.Conformance.Ratify.maxThreshold
d_maxThreshold_1814 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_1814 ~v0 v1 = du_maxThreshold_1814 v1
du_maxThreshold_1814 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_1814 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230 (coe du_comb_1822)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
            v0))
-- Ledger.Conway.Conformance.Ratify._.comb
d_comb_1822 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_comb_1822 ~v0 ~v1 v2 v3 = du_comb_1822 v2 v3
du_comb_1822 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_comb_1822 v0 v1
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
d_'9472'_1832 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_1832 ~v0 = du_'9472'_1832
du_'9472'_1832 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_1832 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Conway.Conformance.Ratify.✓†
d_'10003''8224'_1834 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_1834 ~v0 = du_'10003''8224'_1834
du_'10003''8224'_1834 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_1834 = coe du_vote_1810 (coe du_defer_1812)
-- Ledger.Conway.Conformance.Ratify.threshold
d_threshold_1836 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_1836 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_718
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1788 (coe du_'9472'_1832)
             (coe
                du_vote_1810
                (MAlonzo.Code.Ledger.PParams.d_P1_202
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v1))))
             (coe
                du_vote_1810
                (MAlonzo.Code.Ledger.PParams.d_Q1_234
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_720 v4 v5 v6
        -> coe
             du_'8739'_'8741'_'8739'_1800 (coe du_'9472'_1832)
             (coe du_P'47'Q2a'47'b_1950 (coe v1) (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_722 v4 v5
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1788 (coe du_'10003'_1948 (coe v2))
             (coe
                du_vote_1810
                (MAlonzo.Code.Ledger.PParams.d_P3_208
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v1))))
             (coe du_'9472'_1832)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_724 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1788 (coe du_'10003'_1948 (coe v2))
             (coe
                du_vote_1810
                (MAlonzo.Code.Ledger.PParams.d_P4_210
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v1))))
             (coe
                du_vote_1810
                (MAlonzo.Code.Ledger.PParams.d_Q4_240
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_726 v4
        -> coe
             du_'8739'_'8741'_'8739'_1800 (coe du_'10003'_1948 (coe v2))
             (coe du_P'47'Q5_1956 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_728 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1788 (coe du_'10003'_1948 (coe v2))
             (coe
                du_vote_1810
                (MAlonzo.Code.Ledger.PParams.d_P6_220
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v1))))
             (coe du_'9472'_1832)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_730
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1788 (coe du_'10003''8224'_1834)
             (coe du_'10003''8224'_1834) (coe du_'10003''8224'_1834)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify._.✓
d_'10003'_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
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
      (coe du_'10003''8224'_1834) (coe v0)
-- Ledger.Conway.Conformance.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_1950 ~v0 v1 v2 = du_P'47'Q2a'47'b_1950 v1 v2
du_P'47'Q2a'47'b_1950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_1950 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1810
                (MAlonzo.Code.Ledger.PParams.d_P2a_204
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0))))
             (coe
                du_vote_1810
                (MAlonzo.Code.Ledger.PParams.d_Q2a_236
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1810
                (MAlonzo.Code.Ledger.PParams.d_P2b_206
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0))))
             (coe
                du_vote_1810
                (MAlonzo.Code.Ledger.PParams.d_Q2b_238
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify._.pparamThreshold
d_pparamThreshold_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_1954 ~v0 v1 ~v2 v3
  = du_pparamThreshold_1954 v1 v3
du_pparamThreshold_1954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_1954 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.PParams.C_NetworkGroup_170
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1810
                (MAlonzo.Code.Ledger.PParams.d_P5a_212
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0))))
             (coe du_'9472'_1832)
      MAlonzo.Code.Ledger.PParams.C_EconomicGroup_172
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1810
                (MAlonzo.Code.Ledger.PParams.d_P5b_214
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0))))
             (coe du_'9472'_1832)
      MAlonzo.Code.Ledger.PParams.C_TechnicalGroup_174
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1810
                (MAlonzo.Code.Ledger.PParams.d_P5c_216
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0))))
             (coe du_'9472'_1832)
      MAlonzo.Code.Ledger.PParams.C_GovernanceGroup_176
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1810
                (MAlonzo.Code.Ledger.PParams.d_P5d_218
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0))))
             (coe du_'9472'_1832)
      MAlonzo.Code.Ledger.PParams.C_SecurityGroup_178
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_1832)
             (coe
                du_vote_1810
                (MAlonzo.Code.Ledger.PParams.d_Q5e_242
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify._.P/Q5
d_P'47'Q5_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_1956 v0 v1 ~v2 v3 = du_P'47'Q5_1956 v0 v1 v3
du_P'47'Q5_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_1956 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_1814
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_1954 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_1298
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_1344
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v0)))
               v2)))
      (coe
         du_maxThreshold_1814
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_1954 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_1298
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_1344
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v0)))
               v2)))
-- Ledger.Conway.Conformance.Ratify.canVote
d_canVote_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 -> ()
d_canVote_1964 = erased
-- Ledger.Conway.Conformance.Ratify.StakeDistrs
d_StakeDistrs_1972 a0 = ()
newtype T_StakeDistrs_1972
  = C_StakeDistrs'46'constructor_11371 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ratify.StakeDistrs.stakeDistr
d_stakeDistr_1976 ::
  T_StakeDistrs_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1976 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_11371 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv
d_RatifyEnv_1978 a0 = ()
data T_RatifyEnv_1978
  = C_RatifyEnv'46'constructor_11491 T_StakeDistrs_1972 AgdaAny
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_1994 :: T_RatifyEnv_1978 -> T_StakeDistrs_1972
d_stakeDistrs_1994 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11491 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_1996 :: T_RatifyEnv_1978 -> AgdaAny
d_currentEpoch_1996 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11491 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.dreps
d_dreps_1998 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1998 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11491 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_2000 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2000 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11491 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.treasury
d_treasury_2002 :: T_RatifyEnv_1978 -> Integer
d_treasury_2002 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11491 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.pools
d_pools_2004 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2004 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11491 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyEnv.delegatees
d_delegatees_2006 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2006 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11491 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyState
d_RatifyState_2008 a0 = ()
data T_RatifyState_2008
  = C_'10214'_'44'_'44'_'10215''691'_2022 MAlonzo.Code.Ledger.Enact.T_EnactState_852
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Conway.Conformance.Ratify.RatifyState.es
d_es_2016 ::
  T_RatifyState_2008 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_es_2016 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_2022 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyState.removed
d_removed_2018 ::
  T_RatifyState_2008 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2018 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_2022 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.RatifyState.delay
d_delay_2020 :: T_RatifyState_2008 -> Bool
d_delay_2020 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_2022 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.CCData
d_CCData_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CCData_2024 = erased
-- Ledger.Conway.Conformance.Ratify.govRole
d_govRole_2026 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686
d_govRole_2026 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_700 v1 v2
        -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_702
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_690
      MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_704
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_690
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.IsCC
d_IsCC_2030 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698 -> ()
d_IsCC_2030 = erased
-- Ledger.Conway.Conformance.Ratify.IsDRep
d_IsDRep_2032 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698 -> ()
d_IsDRep_2032 = erased
-- Ledger.Conway.Conformance.Ratify.IsSPO
d_IsSPO_2034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698 -> ()
d_IsSPO_2034 = erased
-- Ledger.Conway.Conformance.Ratify.actualVotes
d_actualVotes_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2042 v0 v1 v2 v3 v4 v5
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
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_700
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_688))
         (coe
            du_actualCCVotes_2190 (coe v0) (coe v1) (coe v2) (coe v3)
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
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))))
         (coe du_actualPDRepVotes_2198 (coe v0) (coe v4))
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
               (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))))
            (coe du_actualDRepVotes_2200 (coe v0) (coe v1) (coe v5))
            (coe du_actualSPOVotes_2202 (coe v0) (coe v1) (coe v5) (coe v4))))
-- Ledger.Conway.Conformance.Ratify._._.ccHotKeys
d_ccHotKeys_2060 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2060 v0 ~v1 ~v2 ~v3 ~v4 = du_ccHotKeys_2060 v0
du_ccHotKeys_2060 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2060 v0 = coe d_ccHotKeys_2000 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.currentEpoch
d_currentEpoch_2062 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2062 v0 ~v1 ~v2 ~v3 ~v4 = du_currentEpoch_2062 v0
du_currentEpoch_2062 :: T_RatifyEnv_1978 -> AgdaAny
du_currentEpoch_2062 v0 = coe d_currentEpoch_1996 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.delegatees
d_delegatees_2064 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2064 v0 ~v1 ~v2 ~v3 ~v4 = du_delegatees_2064 v0
du_delegatees_2064 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2064 v0 = coe d_delegatees_2006 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.dreps
d_dreps_2066 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2066 v0 ~v1 ~v2 ~v3 ~v4 = du_dreps_2066 v0
du_dreps_2066 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2066 v0 = coe d_dreps_1998 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.pools
d_pools_2068 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2068 v0 ~v1 ~v2 ~v3 ~v4 = du_pools_2068 v0
du_pools_2068 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2068 v0 = coe d_pools_2004 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.stakeDistrs
d_stakeDistrs_2070 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1972
d_stakeDistrs_2070 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDistrs_2070 v0
du_stakeDistrs_2070 :: T_RatifyEnv_1978 -> T_StakeDistrs_1972
du_stakeDistrs_2070 v0 = coe d_stakeDistrs_1994 (coe v0)
-- Ledger.Conway.Conformance.Ratify._._.treasury
d_treasury_2072 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2072 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_2072 v0
du_treasury_2072 :: T_RatifyEnv_1978 -> Integer
du_treasury_2072 v0 = coe d_treasury_2002 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.roleVotes
d_roleVotes_2142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_roleVotes_2142 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_roleVotes_2142 v5 v6
du_roleVotes_2142 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_roleVotes_2142 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_700))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1168
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824))
              (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
         v0)
-- Ledger.Conway.Conformance.Ratify._.activeDReps
d_activeDReps_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_activeDReps_2150 v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_activeDReps_2150 v0 v1
du_activeDReps_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 -> [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_activeDReps_2150 v0 v1
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
                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
                    (\ v3 v4 -> v3) (d_currentEpoch_1996 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
                    (d_currentEpoch_1996 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
                 (coe d_currentEpoch_1996 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_1998 (coe v1)))
-- Ledger.Conway.Conformance.Ratify._.spos
d_spos_2156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698]
d_spos_2156 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_spos_2156 v1
du_spos_2156 ::
  T_RatifyEnv_1978 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698]
du_spos_2156 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824))
           (coe d_govRole_2026 (coe v1))
           (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_692))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
         (coe d_stakeDistr_1976 (coe d_stakeDistrs_1994 (coe v0))))
-- Ledger.Conway.Conformance.Ratify._.getCCHotCred
d_getCCHotCred_2158 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getCCHotCred_2158 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_getCCHotCred_2158 v0 v1 v6
du_getCCHotCred_2158 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getCCHotCred_2158 v0 v1 v2
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
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
                              (\ v5 v6 -> v5) (d_currentEpoch_1996 (coe v1)) v4)
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v5 v6 -> v6)
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
                              (d_currentEpoch_1996 (coe v1)) v4))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
                           (coe d_currentEpoch_1996 (coe v1)) (coe v4))) in
           coe
             (let v6
                    = coe
                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe d_ccHotKeys_2000 (coe v1)) (coe v3)
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
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))))
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
                                    (coe d_ccHotKeys_2000 (coe v1)))))) in
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
-- Ledger.Conway.Conformance.Ratify._.SPODefaultVote
d_SPODefaultVote_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750
d_SPODefaultVote_2168 v0 v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_SPODefaultVote_2168 v0 v1 v6 v7
du_SPODefaultVote_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750
du_SPODefaultVote_2168 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Ledger.GovernanceActions.C_no_754 in
    coe
      (case coe v3 of
         MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_700 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Ledger.GovernanceActions.C_SPO_692
                  -> case coe v6 of
                       MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v7
                         -> let v8
                                  = coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe d_pools_2004 (coe v1)) (coe v7)
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
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1248
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
                                                  (coe d_pools_2004 (coe v1)))))) in
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
                                                (coe d_delegatees_2006 (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_rewardAddr_854
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
                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                               (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Certs.d_rewardAddr_854
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
                                                            (coe d_delegatees_2006 (coe v1)))))) in
                                      coe
                                        (let v11
                                               = let v11
                                                       = coe
                                                           MAlonzo.Code.Ledger.GovernanceActions.C_no_754 in
                                                 coe
                                                   (case coe v2 of
                                                      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_724 v12
                                                        -> coe
                                                             MAlonzo.Code.Ledger.GovernanceActions.C_no_754
                                                      _ -> coe v11) in
                                         coe
                                           (case coe v10 of
                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                                                -> let v13
                                                         = case coe v2 of
                                                             MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_724 v13
                                                               -> coe
                                                                    MAlonzo.Code.Ledger.GovernanceActions.C_no_754
                                                             _ -> coe v11 in
                                                   coe
                                                     (case coe v12 of
                                                        MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_702
                                                          -> case coe v2 of
                                                               MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_724 v14
                                                                 -> coe
                                                                      MAlonzo.Code.Ledger.GovernanceActions.C_no_754
                                                               _ -> coe
                                                                      MAlonzo.Code.Ledger.GovernanceActions.C_abstain_756
                                                        MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_704
                                                          -> case coe v2 of
                                                               MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_718
                                                                 -> coe
                                                                      MAlonzo.Code.Ledger.GovernanceActions.C_yes_752
                                                               MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_724 v14
                                                                 -> coe
                                                                      MAlonzo.Code.Ledger.GovernanceActions.C_no_754
                                                               _ -> coe v11
                                                        _ -> coe v13)
                                              _ -> coe v11))
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                   -> coe MAlonzo.Code.Ledger.GovernanceActions.C_no_754
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> coe v4
                _ -> coe v4
         _ -> coe v4)
-- Ledger.Conway.Conformance.Ratify._.actualCCVote
d_actualCCVote_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750
d_actualCCVote_2180 v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_actualCCVote_2180 v0 v1 v5 v6 v7
du_actualCCVote_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750
du_actualCCVote_2180 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_getCCHotCred_2158 (coe v0) (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v7 -> v7))
                (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_754)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe v2)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_688) (coe v6))
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         erased
                         (coe
                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                            (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824)
                            (coe
                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                  (coe
                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_688) (coe v6))
                      (let v7
                             = MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v7
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v2))))))
         _ -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_756)
-- Ledger.Conway.Conformance.Ratify._.actualCCVotes
d_actualCCVotes_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualCCVotes_2190 v0 v1 v2 v3 ~v4 v5
  = du_actualCCVotes_2190 v0 v1 v2 v3 v5
du_actualCCVotes_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualCCVotes_2190 v0 v1 v2 v3 v4
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
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                                (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1260
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe du_getCCHotCred_2158 (coe v0) (coe v1))
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v6)))))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1126
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe du_actualCCVote_2180 (coe v0) (coe v1) (coe v4)) (coe v6)))
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
                            (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_754)))
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
d_actualPDRepVotes_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualPDRepVotes_2198 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_actualPDRepVotes_2198 v0 v6
du_actualPDRepVotes_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualPDRepVotes_2198 v0 v1
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
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_702)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_756)))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_704)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_754))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_718
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
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_702)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_756)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_704)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_752)))
         _ -> coe v2)
-- Ledger.Conway.Conformance.Ratify._.actualDRepVotes
d_actualDRepVotes_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualDRepVotes_2200 v0 v1 ~v2 ~v3 ~v4 v5
  = du_actualDRepVotes_2200 v0 v1 v5
du_actualDRepVotes_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualDRepVotes_2200 v0 v1 v2
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
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))))
      (coe
         du_roleVotes_2142 (coe v2)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_690))
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
               MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_700
               (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_690))
            (coe du_activeDReps_2150 (coe v0) (coe v1)))
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_754))
-- Ledger.Conway.Conformance.Ratify._.actualSPOVotes
d_actualSPOVotes_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualSPOVotes_2202 v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_actualSPOVotes_2202 v0 v1 v5 v6
du_actualSPOVotes_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualSPOVotes_2202 v0 v1 v2 v3
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
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))))
      (coe
         du_roleVotes_2142 (coe v2)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_692))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1078
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_SPODefaultVote_2168 (coe v0) (coe v1) (coe v3))
         (coe du_spos_2156 (coe v1)))
-- Ledger.Conway.Conformance.Ratify._/₀_
d__'47''8320'__2206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'47''8320'__2206 ~v0 v1 v2 = du__'47''8320'__2206 v1 v2
du__'47''8320'__2206 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'47''8320'__2206 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      _ -> coe
             MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Ratify.getStakeDist
d_getStakeDist_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698] ->
  T_StakeDistrs_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_2214 ~v0 v1 v2 v3 = du_getStakeDist_2214 v1 v2 v3
du_getStakeDist_2214 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698] ->
  T_StakeDistrs_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getStakeDist_2214 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_688
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
                           MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824))
                     (coe d_govRole_2026 (coe v3)) (coe v0))
                v1)
             (coe (1 :: Integer))
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_690
        -> coe
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824))
                  (coe d_govRole_2026 (coe v3)) (coe v0))
             (d_stakeDistr_1976 (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_692
        -> coe
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824))
                  (coe d_govRole_2026 (coe v3)) (coe v0))
             (d_stakeDistr_1976 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.acceptedStakeRatio
d_acceptedStakeRatio_2224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698] ->
  T_StakeDistrs_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_2224 v0 v1 v2 v3 v4
  = coe
      du__'47''8320'__2206
      (coe
         d_acceptedStake_2240 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         d_totalStake_2242 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Conway.Conformance.Ratify._.dist
d_dist_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698] ->
  T_StakeDistrs_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dist_2238 ~v0 v1 v2 v3 ~v4 = du_dist_2238 v1 v2 v3
du_dist_2238 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698] ->
  T_StakeDistrs_1972 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dist_2238 v0 v1 v2
  = coe du_getStakeDist_2214 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Conformance.Ratify._.acceptedStake
d_acceptedStake_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698] ->
  T_StakeDistrs_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_acceptedStake_2240 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
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
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))))
         (coe du_dist_2238 (coe v1) (coe v2) (coe v3))
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
               (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_826))
            (coe v4) (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_752)))
-- Ledger.Conway.Conformance.Ratify._.totalStake
d_totalStake_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_698] ->
  T_StakeDistrs_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_2242 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
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
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))))
         (coe du_dist_2238 (coe v1) (coe v2) (coe v3))
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
                  (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_826))
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
                     erased (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_752))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_754))))))
-- Ledger.Conway.Conformance.Ratify.acceptedBy
d_acceptedBy_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 -> ()
d_acceptedBy_2248 = erased
-- Ledger.Conway.Conformance.Ratify.accepted
d_accepted_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 -> ()
d_accepted_2350 = erased
-- Ledger.Conway.Conformance.Ratify.expired
d_expired_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 -> ()
d_expired_2358 = erased
-- Ledger.Conway.Conformance.Ratify.verifyPrev
d_verifyPrev_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_852 -> ()
d_verifyPrev_2366 = erased
-- Ledger.Conway.Conformance.Ratify.delayingAction
d_delayingAction_2388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> Bool
d_delayingAction_2388 ~v0 v1 = du_delayingAction_2388 v1
du_delayingAction_2388 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> Bool
du_delayingAction_2388 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_718
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_720 v1 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_722 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_724 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_726 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_728 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_730
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.delayed
d_delayed_2392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_852 -> Bool -> ()
d_delayed_2392 = erased
-- Ledger.Conway.Conformance.Ratify.acceptConds
d_acceptConds_2402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  T_RatifyState_2008 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2402 = erased
-- Ledger.Conway.Conformance.Ratify._.ccHotKeys
d_ccHotKeys_2418 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2418 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2418 v0
du_ccHotKeys_2418 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2418 v0 = coe d_ccHotKeys_2000 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.currentEpoch
d_currentEpoch_2420 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  AgdaAny
d_currentEpoch_2420 v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2420 v0
du_currentEpoch_2420 :: T_RatifyEnv_1978 -> AgdaAny
du_currentEpoch_2420 v0 = coe d_currentEpoch_1996 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.delegatees
d_delegatees_2422 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2422 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_delegatees_2422 v0
du_delegatees_2422 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2422 v0 = coe d_delegatees_2006 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.dreps
d_dreps_2424 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2424 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2424 v0
du_dreps_2424 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2424 v0 = coe d_dreps_1998 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.pools
d_pools_2426 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2426 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_pools_2426 v0
du_pools_2426 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2426 v0 = coe d_pools_2004 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.stakeDistrs
d_stakeDistrs_2428 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  T_StakeDistrs_1972
d_stakeDistrs_2428 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2428 v0
du_stakeDistrs_2428 :: T_RatifyEnv_1978 -> T_StakeDistrs_1972
du_stakeDistrs_2428 v0 = coe d_stakeDistrs_1994 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.treasury
d_treasury_2430 ::
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  Integer
d_treasury_2430 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2430 v0
du_treasury_2430 :: T_RatifyEnv_1978 -> Integer
du_treasury_2430 v0 = coe d_treasury_2002 (coe v0)
-- Ledger.Conway.Conformance.Ratify.verifyPrev?
d_verifyPrev'63'_2452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2452 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_718
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_720 v4 v5 v6
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_722 v4 v5
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_constitution_866 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_724 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pv_868 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_726 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pparams_870 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_728 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_730
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ratify.delayed?
d_delayed'63'_2506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2506 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe d_verifyPrev'63'_2452 (coe v0) (coe v1) (coe v2) (coe v3))
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
d_Is'45'nothing'63'_2522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_2522 ~v0 ~v1 v2 = du_Is'45'nothing'63'_2522 v2
du_Is'45'nothing'63'_2522 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_2522 v0
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
d_acceptedBy'63'_2538 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_2538 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3530
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_maybe_32 (coe (\ v5 -> v5))
            (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
            (coe
               d_threshold_1836 v0
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_pparams_870 (coe v2)))
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_map_64
                  (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v2))))
               (MAlonzo.Code.Ledger.GovernanceActions.d_action_820 (coe v3)) v4))
         (coe
            d_acceptedStakeRatio_2224 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_548
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
               (coe
                  d_actualVotes_2042 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_870 (coe v2)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v2)))
                  (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_820 (coe v3))
                  (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_814 (coe v3))))
            (coe d_stakeDistrs_1994 (coe v1))
            (coe
               d_actualVotes_2042 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_pparams_870 (coe v2)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v2)))
               (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_820 (coe v3))
               (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_814 (coe v3)))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824)
            v4 (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_688))
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
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
                  (coe (0 :: Integer))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v2))))
               (coe
                  MAlonzo.Code.Ledger.PParams.d_ccMinSize_366
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_870 (coe v2)))))
            (coe
               du_Is'45'nothing'63'_2522
               (coe
                  d_threshold_1836 v0
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_870 (coe v2)))
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_map_64
                     (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v2))))
                  (MAlonzo.Code.Ledger.GovernanceActions.d_action_820 (coe v3))
                  v4))))
-- Ledger.Conway.Conformance.Ratify.accepted?
d_accepted'63'_2550 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2550 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         d_acceptedBy'63'_2538 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_688))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
         (coe
            d_acceptedBy'63'_2538 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_690))
         (coe
            d_acceptedBy'63'_2538 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_692)))
-- Ledger.Conway.Conformance.Ratify.expired?
d_expired'63'_2566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2566 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_234
         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
            (coe
               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_818 (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_818 (coe v2))
            v1))
-- Ledger.Conway.Conformance.Ratify._⊢_⇀⦇_,RATIFY'⦈_
d__'8866'_'8640''10631'_'44'RATIFY'''10632'__2582 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2582
  = C_RATIFY'45'Accept_2626 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_2656 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_2686 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ratify._.ccHotKeys
d_ccHotKeys_2598 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2598 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_ccHotKeys_2598 v1
du_ccHotKeys_2598 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2598 v0 = coe d_ccHotKeys_2000 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.currentEpoch
d_currentEpoch_2600 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 -> AgdaAny
d_currentEpoch_2600 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_currentEpoch_2600 v1
du_currentEpoch_2600 :: T_RatifyEnv_1978 -> AgdaAny
du_currentEpoch_2600 v0 = coe d_currentEpoch_1996 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.delegatees
d_delegatees_2602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2602 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_delegatees_2602 v1
du_delegatees_2602 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2602 v0 = coe d_delegatees_2006 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.dreps
d_dreps_2604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2604 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_dreps_2604 v1
du_dreps_2604 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2604 v0 = coe d_dreps_1998 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.pools
d_pools_2606 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2606 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_pools_2606 v1
du_pools_2606 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2606 v0 = coe d_pools_2004 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.stakeDistrs
d_stakeDistrs_2608 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 -> T_StakeDistrs_1972
d_stakeDistrs_2608 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_stakeDistrs_2608 v1
du_stakeDistrs_2608 :: T_RatifyEnv_1978 -> T_StakeDistrs_1972
du_stakeDistrs_2608 v0 = coe d_stakeDistrs_1994 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.treasury
d_treasury_2610 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 -> Integer
d_treasury_2610 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_treasury_2610 v1
du_treasury_2610 :: T_RatifyEnv_1978 -> Integer
du_treasury_2610 v0 = coe d_treasury_2002 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.action
d_action_2616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_2616 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_action_2616 v5
du_action_2616 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
du_action_2616 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_action_820
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0))
-- Ledger.Conway.Conformance.Ratify._.ccHotKeys
d_ccHotKeys_2640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2640 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2640 v1
du_ccHotKeys_2640 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2640 v0 = coe d_ccHotKeys_2000 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.currentEpoch
d_currentEpoch_2642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2642 ~v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2642 v1
du_currentEpoch_2642 :: T_RatifyEnv_1978 -> AgdaAny
du_currentEpoch_2642 v0 = coe d_currentEpoch_1996 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.delegatees
d_delegatees_2644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2644 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_delegatees_2644 v1
du_delegatees_2644 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2644 v0 = coe d_delegatees_2006 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.dreps
d_dreps_2646 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2646 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2646 v1
du_dreps_2646 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2646 v0 = coe d_dreps_1998 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.pools
d_pools_2648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2648 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_pools_2648 v1
du_pools_2648 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2648 v0 = coe d_pools_2004 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.stakeDistrs
d_stakeDistrs_2650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1972
d_stakeDistrs_2650 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2650 v1
du_stakeDistrs_2650 :: T_RatifyEnv_1978 -> T_StakeDistrs_1972
du_stakeDistrs_2650 v0 = coe d_stakeDistrs_1994 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.treasury
d_treasury_2652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2652 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2652 v1
du_treasury_2652 :: T_RatifyEnv_1978 -> Integer
du_treasury_2652 v0 = coe d_treasury_2002 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.ccHotKeys
d_ccHotKeys_2670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2670 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2670 v1
du_ccHotKeys_2670 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2670 v0 = coe d_ccHotKeys_2000 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.currentEpoch
d_currentEpoch_2672 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2672 ~v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2672 v1
du_currentEpoch_2672 :: T_RatifyEnv_1978 -> AgdaAny
du_currentEpoch_2672 v0 = coe d_currentEpoch_1996 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.delegatees
d_delegatees_2674 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2674 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_delegatees_2674 v1
du_delegatees_2674 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegatees_2674 v0 = coe d_delegatees_2006 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.dreps
d_dreps_2676 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2676 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2676 v1
du_dreps_2676 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2676 v0 = coe d_dreps_1998 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.pools
d_pools_2678 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2678 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_pools_2678 v1
du_pools_2678 ::
  T_RatifyEnv_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2678 v0 = coe d_pools_2004 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.stakeDistrs
d_stakeDistrs_2680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1972
d_stakeDistrs_2680 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2680 v1
du_stakeDistrs_2680 :: T_RatifyEnv_1978 -> T_StakeDistrs_1972
du_stakeDistrs_2680 v0 = coe d_stakeDistrs_1994 (coe v0)
-- Ledger.Conway.Conformance.Ratify._.treasury
d_treasury_2682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2682 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2682 v1
du_treasury_2682 :: T_RatifyEnv_1978 -> Integer
du_treasury_2682 v0 = coe d_treasury_2002 (coe v0)
-- Ledger.Conway.Conformance.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2688 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1978 ->
  T_RatifyState_2008 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_2008 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2688 = erased
