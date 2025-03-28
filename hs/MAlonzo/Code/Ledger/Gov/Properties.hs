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

module MAlonzo.Code.Ledger.Gov.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Gov
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.DecEq-Credential
d_DecEq'45'Credential_60 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_60 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_60 v2 v3
du_DecEq'45'Credential_60 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_60 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- _.Epoch
d_Epoch_110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_110 = erased
-- _.PParams
d_PParams_154 a0 = ()
-- _.preoEpoch
d_preoEpoch_338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_338 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2342 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_588
            (coe v1)))
-- _.pvCanFollow
d_pvCanFollow_342 a0 a1 a2 = ()
-- _.PParams.Emax
d_Emax_452 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_452 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_360 (coe v0)
-- _.PParams.a
d_a_454 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_454 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_332 (coe v0)
-- _.PParams.a0
d_a0_456 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_456 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_364 (coe v0)
-- _.PParams.b
d_b_458 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_458 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_334 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_460 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_460 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_376 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_462 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_462 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_374 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_464 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_464 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_344 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_466 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_466 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_366 (coe v0)
-- _.PParams.costmdls
d_costmdls_468 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_468 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_368 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_470 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_470 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_384 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_472 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_472 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_382 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_474 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_474 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_372 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_476 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_476 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_380 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_478 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_478 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_378 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_480 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_480 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_336 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_482 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_482 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_324 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_484 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_484 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_316 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_486 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_486 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_328 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_488 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_488 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_320 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_490 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_490 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_352 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_492 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_492 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_350 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_494 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_494 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_322 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_496 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_496 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_318 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_498 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_498 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_326 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_500 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_500 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_348
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_502 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_502 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_358 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_504 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Refinement.T_Refinement_24
d_monetaryExpansion_504 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_340 (coe v0)
-- _.PParams.nopt
d_nopt_506 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_506 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_362 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_508 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_508 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_338 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_510 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_510 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_370 (coe v0)
-- _.PParams.prices
d_prices_512 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_512 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_346 (coe v0)
-- _.PParams.pv
d_pv_514 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_514 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_330 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_516 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_516 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_356 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_518 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_518 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_354 (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_520 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Refinement.T_Refinement_24
d_treasuryCut_520 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_342 (coe v0)
-- Ledger.Gov.Properties._.getHash
d_getHash_696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_696 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_696 ~v0 = du_getHash_696
du_getHash_696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_696 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHash_696 = coe MAlonzo.Code.Ledger.Enact.du_getHash_880
-- Ledger.Gov.Properties._.getHashES
d_getHashES_698 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_696 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_698 ~v0 = du_getHashES_698
du_getHashES_698 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_696 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHashES_698 = coe MAlonzo.Code.Ledger.Enact.du_getHashES_892
-- Ledger.Gov.Properties._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__740 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1922 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__740 = erased
-- Ledger.Gov.Properties._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__742 a0 a1 a2 a3 a4 = ()
-- Ledger.Gov.Properties._.GovState
d_GovState_752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovState_752 = erased
-- Ledger.Gov.Properties._.allEnactable
d_allEnactable_778 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_allEnactable_778 = erased
-- Ledger.Gov.Properties._.enactable
d_enactable_790 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_enactable_790 = erased
-- Ledger.Gov.Properties._.getAidPairsList
d_getAidPairsList_794 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsList_794 ~v0 = du_getAidPairsList_794
du_getAidPairsList_794 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsList_794
  = coe MAlonzo.Code.Ledger.Gov.du_getAidPairsList_2102
-- Ledger.Gov.Properties._.hasParent'
d_hasParent''_800 a0 a1 a2 a3 a4 = ()
-- Ledger.Gov.Properties._.hasParent?'
d_hasParent'63'''_804 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_696 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_hasParent'63'''_804 v0
  = coe MAlonzo.Code.Ledger.Gov.d_hasParent'63'''_2288 (coe v0)
-- Ledger.Gov.Properties._.isRegistered
d_isRegistered_812 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_isRegistered_812 = erased
-- Ledger.Gov.Properties._.validHFAction
d_validHFAction_820 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 -> ()
d_validHFAction_820 = erased
-- Ledger.Gov.Properties._.GovAction
d_GovAction_878 a0 = ()
-- Ledger.Gov.Properties._.GovActionID
d_GovActionID_882 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_882 = erased
-- Ledger.Gov.Properties._.GovActionType
d_GovActionType_886 a0 = ()
-- Ledger.Gov.Properties._.GovProposal
d_GovProposal_888 a0 = ()
-- Ledger.Gov.Properties._.GovRole
d_GovRole_890 a0 = ()
-- Ledger.Gov.Properties._.GovVote
d_GovVote_892 a0 = ()
-- Ledger.Gov.Properties._.GovAction.gaData
d_gaData_946 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_714 -> AgdaAny
d_gaData_946 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gaData_722 (coe v0)
-- Ledger.Gov.Properties._.GovAction.gaType
d_gaType_948 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_714 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_696
d_gaType_948 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gaType_720 (coe v0)
-- Ledger.Gov.Properties._.GovProposal.action
d_action_980 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_714
d_action_980 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_772 (coe v0)
-- Ledger.Gov.Properties._.GovProposal.anchor
d_anchor_982 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_686
d_anchor_982 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_782 (coe v0)
-- Ledger.Gov.Properties._.GovProposal.deposit
d_deposit_984 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 -> Integer
d_deposit_984 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_778 (coe v0)
-- Ledger.Gov.Properties._.GovProposal.policy
d_policy_986 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  Maybe AgdaAny
d_policy_986 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_776 (coe v0)
-- Ledger.Gov.Properties._.GovProposal.prevAction
d_prevAction_988 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 -> AgdaAny
d_prevAction_988 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_774 (coe v0)
-- Ledger.Gov.Properties._.GovProposal.returnAddr
d_returnAddr_990 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_990 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_780 (coe v0)
-- Ledger.Gov.Properties._.GovVote.anchor
d_anchor_1002 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_686
d_anchor_1002 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_756 (coe v0)
-- Ledger.Gov.Properties._.GovVote.gid
d_gid_1004 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1004 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_750 (coe v0)
-- Ledger.Gov.Properties._.GovVote.vote
d_vote_1006 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_732
d_vote_1006 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_754 (coe v0)
-- Ledger.Gov.Properties._.GovVote.voter
d_voter_1008 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1008 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_752 (coe v0)
-- Ledger.Gov.Properties._.canVote
d_canVote_1074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_714 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_666 -> ()
d_canVote_1074 = erased
-- Ledger.Gov.Properties._.expired
d_expired_1084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_784 -> ()
d_expired_1084 = erased
-- Ledger.Gov.Properties.lookupActionId
d_lookupActionId_1158 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_666 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupActionId_1158 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
      (coe
         (\ v5 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                 (coe
                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1190 (coe v0))
                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                    (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_72
                       (coe
                          (\ v6 ->
                             MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))
                       (coe
                          MAlonzo.Code.Ledger.Ratify.d_threshold_1858 v0 v1
                          (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                          (MAlonzo.Code.Ledger.GovernanceActions.d_action_802
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                          v2))
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                          (coe
                             MAlonzo.Code.Ledger.Ratify.d_expired'63'_2592 (coe v0) (coe v4)
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
                       (coe
                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))))
-- Ledger.Gov.Properties.isUpdateCommittee
d_isUpdateCommittee_1184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_714 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isUpdateCommittee_1184 ~v0 v1 = du_isUpdateCommittee_1184 v1
du_isUpdateCommittee_1184 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_714 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isUpdateCommittee_1184 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_'10214'_'44'_'10215''7501''7491'_724 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_698
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_700
               -> case coe v2 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                      -> case coe v4 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                             -> coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                  (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                                              erased))))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_702
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_704
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_706
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_708
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.GovernanceActions.C_Info_710
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties.hasPrev
d_hasPrev_1198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasPrev_1198 ~v0 v1 v2 = du_hasPrev_1198 v1 v2
du_hasPrev_1198 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_hasPrev_1198 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4109 v2 v3 v4 v5 v6
        -> case coe v5 of
             MAlonzo.Code.Ledger.GovernanceActions.C_'10214'_'44'_'10215''7501''7491'_724 v7 v8
               -> case coe v7 of
                    MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_698
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_700
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_702
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_704
                      -> let v9
                               = coe
                                   MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1350 (coe v8)
                                   (coe v1) in
                         coe
                           (case coe v9 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                -> if coe v10
                                     then case coe v11 of
                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                              -> coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                   (coe v10)
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                         (coe v8)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            erased (coe v12))))
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     else coe
                                            seq (coe v11)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe v10)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                              _ -> MAlonzo.RTE.mazUnreachableError)
                    MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_706
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_708
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    MAlonzo.Code.Ledger.GovernanceActions.C_Info_710
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                           (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties.validHFAction?
d_validHFAction'63'_1232 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_validHFAction'63'_1232 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_GovProposal'46'constructor_3741 v4 v5 v6 v7 v8 v9
        -> case coe v4 of
             MAlonzo.Code.Ledger.GovernanceActions.C_'10214'_'44'_'10215''7501''7491'_724 v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_698
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
                    MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_700
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
                    MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_702
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
                    MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_704
                      -> case coe v3 of
                           MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2263 v12 v13 v14 v15 v16
                             -> case coe v14 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                    -> let v19
                                             = coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                 (coe
                                                    MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                    (coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1190
                                                          (coe v0)))
                                                    (coe
                                                       (\ v19 ->
                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                                    (coe v18) (coe v5))
                                                 (coe
                                                    MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1350
                                                    (coe v17) (coe v11)) in
                                       coe
                                         (let v20
                                                = coe
                                                    MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
                                                    (coe
                                                       (\ v20 ->
                                                          coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                            (coe
                                                               MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1190
                                                                     (coe v0)))
                                                               (coe
                                                                  (\ v21 ->
                                                                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                       (coe
                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v20))
                                                               (coe v5))
                                                            (coe
                                                               du_hasPrev_1198
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v20))
                                                               (coe v11))))
                                                    (coe v2) in
                                          coe
                                            (case coe v19 of
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v21 v22
                                                 -> if coe v21
                                                      then case coe v22 of
                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v23
                                                               -> coe
                                                                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                       (coe v21)
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                          (coe
                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                             (coe v23))))
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      else coe
                                                             seq (coe v22)
                                                             (case coe v20 of
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                  -> if coe v23
                                                                       then case coe v24 of
                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v25
                                                                                -> let v26
                                                                                         = coe
                                                                                             MAlonzo.Code.Data.List.Membership.Setoid.du_find_84
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
                                                                                             (coe
                                                                                                v2)
                                                                                             (coe
                                                                                                v25) in
                                                                                   coe
                                                                                     (case coe
                                                                                             v26 of
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                          -> case coe
                                                                                                    v27 of
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                 -> case coe
                                                                                                           v28 of
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                                                        -> case coe
                                                                                                                  v32 of
                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                                                               -> case coe
                                                                                                                         v34 of
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                                                      -> coe
                                                                                                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                              (coe
                                                                                                                                 v23)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                       (coe
                                                                                                                                          v30)
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                          (coe
                                                                                                                                             v35)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Function.Bundles.d_to_1724
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_432
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                   (coe
                                                                                                                                                      v2)
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                      (coe
                                                                                                                                                         v5)
                                                                                                                                                      (coe
                                                                                                                                                         v30)))
                                                                                                                                                v31)
                                                                                                                                             (coe
                                                                                                                                                v36)))))))
                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                       else coe
                                                                              seq (coe v24)
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v23)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_706
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
                    MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_708
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
                    MAlonzo.Code.Ledger.GovernanceActions.C_Info_710
                      -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties.isRegistered?
d_isRegistered'63'_1324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isRegistered'63'_1324 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v3 of
             MAlonzo.Code.Ledger.GovernanceActions.C_CC_668
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                       (coe
                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                             (let v5
                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                              (coe v0))) in
                              coe
                                (let v6
                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                              (coe v0)) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                      (coe v5) (coe v6))))))
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_replacement_208
                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased erased
                             (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                (coe
                                   MAlonzo.Code.Ledger.Certs.d_ccHotKeys_948
                                   (coe
                                      MAlonzo.Code.Ledger.Certs.d_gState_964
                                      (coe MAlonzo.Code.Ledger.Gov.d_certState_1948 (coe v1))))))))
             MAlonzo.Code.Ledger.GovernanceActions.C_DRep_670
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                       (coe
                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased
                          (let v5
                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                           (coe v0))) in
                           coe
                             (let v6
                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                           (coe v0)) in
                              coe
                                (coe
                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v5)
                                   (coe v6)))))
                       (coe v4)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_replacement_208
                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased erased
                             (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                (coe
                                   MAlonzo.Code.Ledger.Certs.d_dreps_946
                                   (coe
                                      MAlonzo.Code.Ledger.Certs.d_gState_964
                                      (coe MAlonzo.Code.Ledger.Gov.d_certState_1948 (coe v1))))))))
             MAlonzo.Code.Ledger.GovernanceActions.C_SPO_672
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                       (coe
                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased
                          (let v5
                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                           (coe v0))) in
                           coe
                             (let v6
                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                           (coe v0)) in
                              coe
                                (coe
                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v5)
                                   (coe v6)))))
                       (coe v4)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_replacement_208
                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased erased (coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18)
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Certs.d_pools_936
                                   (coe
                                      MAlonzo.Code.Ledger.Certs.d_pState_962
                                      (coe MAlonzo.Code.Ledger.Gov.d_certState_1948 (coe v1))))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties.Computational-GOV
d_Computational'45'GOV_1326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV_1326 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_1714 (coe v0))
-- Ledger.Gov.Properties._.Go.GoVote.computeProof
d_computeProof_1370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1370 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (coe
                 d_lookupActionId_1158 v0
                 (MAlonzo.Code.Ledger.Gov.d_pparams_1942
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_752 (coe v3)))
                 (MAlonzo.Code.Ledger.GovernanceActions.d_gid_750 (coe v3))
                 (MAlonzo.Code.Ledger.Gov.d_epoch_1940
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                 v2)
              (d_isRegistered'63'_1324
                 (coe v0) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_voter_752 (coe v3))) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                  -> if coe v7
                       then case coe v8 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                -> case coe v6 of
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                       -> if coe v10
                                            then case coe v11 of
                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                                     -> let v13
                                                              = coe
                                                                  MAlonzo.Code.Function.Bundles.d_from_1974
                                                                  (coe
                                                                     MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core.du_Any'8596'_144
                                                                     (coe v2))
                                                                  v9 in
                                                        coe
                                                          (case coe v13 of
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                               -> case coe v15 of
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                                      -> case coe v17 of
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                             -> case coe v3 of
                                                                                  MAlonzo.Code.Ledger.GovernanceActions.C_GovVote'46'constructor_3351 v20 v21 v22 v23
                                                                                    -> case coe
                                                                                              v19 of
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v24 v25
                                                                                           -> coe
                                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Gov.d_addVote_2038
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         v2)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v14))
                                                                                                      (coe
                                                                                                         v21)
                                                                                                      (coe
                                                                                                         v22))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Gov.C_GOV'45'Vote_2554
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                         (coe
                                                                                                            v14))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Function.Bundles.d_to_1724
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_432
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                               (coe
                                                                                                                  v2)
                                                                                                               (coe
                                                                                                                  v14))
                                                                                                            v16)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               v24)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  v12)
                                                                                                               (coe
                                                                                                                  v25))))))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            else coe
                                                   seq (coe v11)
                                                   (coe
                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                      (coe
                                                         ("\172\nisRegistered (.proj\8321 \915)\n(.Ledger.GovernanceActions.GovVote.voter sig)"
                                                          ::
                                                          Data.Text.Text)))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v8)
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                 (coe
                                    ("Dec\n(isRegistered (.proj\8321 \915)\n (.Ledger.GovernanceActions.GovVote.voter sig))"
                                     ::
                                     Data.Text.Text)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Gov.Properties._.Go.GoVote.completeness
d_completeness_1392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Gov.T__'8866'_'8640''10631'_'44'GOV'10632'__2098 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1392 = erased
-- Ledger.Gov.Properties._.Go.GoProp.Dec-actionWellFormed
d_Dec'45'actionWellFormed_1568 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_714 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'actionWellFormed_1568 v0 ~v1 ~v2 ~v3
  = du_Dec'45'actionWellFormed_1568 v0
du_Dec'45'actionWellFormed_1568 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_714 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'actionWellFormed_1568 v0
  = coe MAlonzo.Code.Ledger.Gov.d_actionWellFormed'63'_2546 (coe v0)
-- Ledger.Gov.Properties._.Go.GoProp.Dec-actionValid
d_Dec'45'actionValid_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_714 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'actionValid_1570 v0 ~v1 ~v2 ~v3
  = du_Dec'45'actionValid_1570 v0
du_Dec'45'actionValid_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_714 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'actionValid_1570 v0
  = coe MAlonzo.Code.Ledger.Gov.d_actionValid'63'_2542 (coe v0)
-- Ledger.Gov.Properties._.Go.GoProp.H
d_H_1572 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_H_1572 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               du_Dec'45'actionWellFormed_1568 v0
               (MAlonzo.Code.Ledger.GovernanceActions.d_action_772 (coe v3)))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  du_Dec'45'actionValid_1570 v0
                  (MAlonzo.Code.Ledger.Gov.d_rewardCreds_1950
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                  (MAlonzo.Code.Ledger.GovernanceActions.d_policy_776 (coe v3))
                  (MAlonzo.Code.Ledger.Gov.d_ppolicy_1944
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                  (MAlonzo.Code.Ledger.Gov.d_epoch_1940
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                  (MAlonzo.Code.Ledger.GovernanceActions.d_action_772 (coe v3)))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                     (coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_778 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_380
                        (coe
                           MAlonzo.Code.Ledger.Gov.d_pparams_1942
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        d_validHFAction'63'_1232 (coe v0) (coe v3) (coe v2)
                        (coe
                           MAlonzo.Code.Ledger.Gov.d_enactState_1946
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Ledger.Gov.d_hasParent'63'''_2288 (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Gov.d_enactState_1946
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                           (coe v2)
                           (coe
                              MAlonzo.Code.Ledger.GovernanceActions.d_gaType_720
                              (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_772 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_774 (coe v3)))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1206
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Address.d_net_82
                                 (coe
                                    MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_780
                                    (coe v3)))
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1206
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (let v4
                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                               (coe v0))) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                       (coe v4) (coe v5))))
                              (coe
                                 MAlonzo.Code.Ledger.Address.d_stake_84
                                 (coe
                                    MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_780
                                    (coe v3)))
                              (coe
                                 MAlonzo.Code.Ledger.Gov.d_rewardCreds_1950
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))))))))))
      (coe
         du_isUpdateCommittee_1184
         (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_772 (coe v3)))
-- Ledger.Gov.Properties._.Go.GoProp.computeProof
d_computeProof_1574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1574 v0 v1 v2 v3
  = let v4 = d_H_1572 (coe v0) (coe v1) (coe v2) (coe v3) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                  -> if coe v7
                       then case coe v8 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                -> case coe v9 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                       -> case coe v11 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                              -> case coe v13 of
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                     -> case coe v15 of
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                            -> case coe v17 of
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                   -> case coe v18 of
                                                                        MAlonzo.Code.Ledger.Gov.C_HasParent''_2278 v24
                                                                          -> case coe v3 of
                                                                               MAlonzo.Code.Ledger.GovernanceActions.C_GovProposal'46'constructor_3741 v25 v26 v27 v28 v29 v30
                                                                                 -> coe
                                                                                      seq (coe v19)
                                                                                      (case coe
                                                                                              v6 of
                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v31 v32
                                                                                           -> if coe
                                                                                                   v31
                                                                                                then case coe
                                                                                                            v32 of
                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v33
                                                                                                         -> case coe
                                                                                                                   v33 of
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v34 v35
                                                                                                                -> case coe
                                                                                                                          v35 of
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v36 v37
                                                                                                                       -> case coe
                                                                                                                                 v37 of
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v38 v39
                                                                                                                              -> let v40
                                                                                                                                       = coe
                                                                                                                                           MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                                                                                                                              (coe
                                                                                                                                                 (\ v40 ->
                                                                                                                                                    coe
                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_all'63'_1610
                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                      erased
                                                                                                                                                      erased
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                                                                                                                         (coe
                                                                                                                                                            (\ v41 ->
                                                                                                                                                               coe
                                                                                                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_268
                                                                                                                                                                    (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1514
                                                                                                                                                                          (coe
                                                                                                                                                                             v0)))
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                                                                                                                       (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_epochStructure_1514
                                                                                                                                                                             (coe
                                                                                                                                                                                v0)))
                                                                                                                                                                       (\ v42
                                                                                                                                                                          v43 ->
                                                                                                                                                                          v42)
                                                                                                                                                                       (MAlonzo.Code.Ledger.Gov.d_epoch_1940
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                             (coe
                                                                                                                                                                                v1)))
                                                                                                                                                                       v41)
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                                                                                                                       (\ v42
                                                                                                                                                                          v43 ->
                                                                                                                                                                          v43)
                                                                                                                                                                       (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_epochStructure_1514
                                                                                                                                                                             (coe
                                                                                                                                                                                v0)))
                                                                                                                                                                       (MAlonzo.Code.Ledger.Gov.d_epoch_1940
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                             (coe
                                                                                                                                                                                v1)))
                                                                                                                                                                       v41))
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                       (coe
                                                                                                                                                                          (\ v42 ->
                                                                                                                                                                             coe
                                                                                                                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                               (let v43
                                                                                                                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v0))) in
                                                                                                                                                                                coe
                                                                                                                                                                                  (let v44
                                                                                                                                                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v0)) in
                                                                                                                                                                                   coe
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v43)
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v44))))
                                                                                                                                                                               (coe
                                                                                                                                                                                  v42)
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.du_'8709'_442
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                                                                                                                                                                       (let v42
                                                                                                                                                                              = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                                                                                                                        coe
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Axiom.Set.du__'8745'__704
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                                (coe
                                                                                                                                                                                   v42))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                erased
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v0))))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v0)))))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                                                                                                (coe
                                                                                                                                                                                   v34))
                                                                                                                                                                             (coe
                                                                                                                                                                                v36))))
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                       (coe
                                                                                                                                                                          (\ v42 ->
                                                                                                                                                                             coe
                                                                                                                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                               (let v43
                                                                                                                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v0))) in
                                                                                                                                                                                coe
                                                                                                                                                                                  (let v44
                                                                                                                                                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v0)) in
                                                                                                                                                                                   coe
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v43)
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v44))))
                                                                                                                                                                               (coe
                                                                                                                                                                                  v42)
                                                                                                                                                                               (let v43
                                                                                                                                                                                      = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                                                                                                                                coe
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Axiom.Set.du__'8745'__704
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v43))
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                        erased
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       v0))))
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v0)))))
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v34))
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v36)))))
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Axiom.Set.du_'8709'_442
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))))
                                                                                                                                                      v40))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Class.IsSet.du_range_550
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                                                                 (coe
                                                                                                                                                    v34))) in
                                                                                                                                 coe
                                                                                                                                   (case coe
                                                                                                                                           v40 of
                                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v41 v42
                                                                                                                                        -> if coe
                                                                                                                                                v41
                                                                                                                                             then coe
                                                                                                                                                    seq
                                                                                                                                                    (coe
                                                                                                                                                       v42)
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Gov.du_insertGovAction_1994
                                                                                                                                                             (coe
                                                                                                                                                                v2)
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Gov.d_txid_1938
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                         (coe
                                                                                                                                                                            v1)))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                      (coe
                                                                                                                                                                         v1)))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4109
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                            erased
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                                                                      (coe
                                                                                                                                                                         (\ v43
                                                                                                                                                                            v44
                                                                                                                                                                            v45
                                                                                                                                                                            v46
                                                                                                                                                                            v47 ->
                                                                                                                                                                            coe
                                                                                                                                                                              MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
                                                                                                                                                                   (coe
                                                                                                                                                                      v29)
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Types.Epoch.du_additionVia_8
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1514
                                                                                                                                                                            (coe
                                                                                                                                                                               v0)))
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.PParams.d_govActionLifetime_378
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Gov.d_pparams_1942
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                               (coe
                                                                                                                                                                                  v1))))
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Gov.d_epoch_1940
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                            (coe
                                                                                                                                                                               v1))))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.GovernanceActions.C_'10214'_'44'_'10215''7501''7491'_724
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_700)
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                         (coe
                                                                                                                                                                            v34)
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                            (coe
                                                                                                                                                                               v36)
                                                                                                                                                                            (coe
                                                                                                                                                                               v38))))
                                                                                                                                                                   (coe
                                                                                                                                                                      v26))))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Gov.C_GOV'45'Propose_2566
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   v34)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                   (coe
                                                                                                                                                                      v36)
                                                                                                                                                                   (coe
                                                                                                                                                                      v38)))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                   (coe
                                                                                                                                                                      v12)
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                      (coe
                                                                                                                                                                         v14)
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                         (coe
                                                                                                                                                                            v16)
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                            (coe
                                                                                                                                                                               v24)
                                                                                                                                                                            (coe
                                                                                                                                                                               v19)))))))))
                                                                                                                                             else coe
                                                                                                                                                    seq
                                                                                                                                                    (coe
                                                                                                                                                       v42)
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                                       (coe
                                                                                                                                                          ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 e \8594\n   (preoEpoch HasPreorder.< .Ledger.Gov.GovEnv.epoch (.proj\8321 \915)) e \215\n   (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8801\7497\n    (List-Model\7496 Axiom.Set.Theory\7496._.Intersection.\8745\n     .Axiom.Set.Theory\7496.\8712-sp List-Model\7496)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) new) rem)\n   (.Class.HasEmptySet.HasEmptySet.\8709\n    (Class.HasEmptySet.HasEmptySet-Set\n     (.Axiom.Set.Theory\7496.th List-Model\7496))))\n(Class.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496) new)"
                                                                                                                                                           ::
                                                                                                                                                           Data.Text.Text)))
                                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                else coe
                                                                                                       seq
                                                                                                       (coe
                                                                                                          v32)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Gov.du_insertGovAction_1994
                                                                                                                (coe
                                                                                                                   v2)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Gov.d_txid_1938
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                            (coe
                                                                                                                               v1)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                         (coe
                                                                                                                            v1)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4109
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                               erased
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                         (coe
                                                                                                                            (\ v33
                                                                                                                               v34
                                                                                                                               v35
                                                                                                                               v36
                                                                                                                               v37 ->
                                                                                                                               coe
                                                                                                                                 MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
                                                                                                                      (coe
                                                                                                                         v29)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Types.Epoch.du_additionVia_8
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1514
                                                                                                                               (coe
                                                                                                                                  v0)))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.PParams.d_govActionLifetime_378
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Gov.d_pparams_1942
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                  (coe
                                                                                                                                     v1))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Gov.d_epoch_1940
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  v1))))
                                                                                                                      (coe
                                                                                                                         v25)
                                                                                                                      (coe
                                                                                                                         v26))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Gov.C_GOV'45'Propose_2566
                                                                                                                (MAlonzo.Code.Ledger.GovernanceActions.d_gaData_722
                                                                                                                   (coe
                                                                                                                      v25))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                   (coe
                                                                                                                      v10)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                      (coe
                                                                                                                         v12)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                         (coe
                                                                                                                            v14)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                            (coe
                                                                                                                               v16)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                               (coe
                                                                                                                                  v24)
                                                                                                                               (coe
                                                                                                                                  v19)))))))))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v8)
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                 (let v9
                                        = coe
                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                            (coe
                                               du_Dec'45'actionWellFormed_1568 v0
                                               (MAlonzo.Code.Ledger.GovernanceActions.d_action_772
                                                  (coe v3)))
                                            erased in
                                  coe
                                    (case coe v9 of
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                                         -> coe
                                              ("\172\nLedger.Gov.actionWellFormed txs\n(.Ledger.GovernanceActions.GovProposal.action prop)"
                                               ::
                                               Data.Text.Text)
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                                         -> let v11
                                                  = coe
                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                      (coe
                                                         du_Dec'45'actionValid_1570 v0
                                                         (MAlonzo.Code.Ledger.Gov.d_rewardCreds_1950
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v1)))
                                                         (MAlonzo.Code.Ledger.GovernanceActions.d_policy_776
                                                            (coe v3))
                                                         (MAlonzo.Code.Ledger.Gov.d_ppolicy_1944
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v1)))
                                                         (MAlonzo.Code.Ledger.Gov.d_epoch_1940
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v1)))
                                                         (MAlonzo.Code.Ledger.GovernanceActions.d_action_772
                                                            (coe v3)))
                                                      erased in
                                            coe
                                              (case coe v11 of
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                                   -> coe
                                                        ("\172\nLedger.Gov.actionValid txs\n(.Ledger.Gov.GovEnv.rewardCreds (.proj\8321 \915))\n(.Ledger.GovernanceActions.GovProposal.policy prop)\n(.Ledger.Gov.GovEnv.ppolicy (.proj\8321 \915))\n(.Ledger.Gov.GovEnv.epoch (.proj\8321 \915))\n(.Ledger.GovernanceActions.GovProposal.action prop)"
                                                         ::
                                                         Data.Text.Text)
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                                   -> let v13
                                                            = coe
                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.GovernanceActions.d_deposit_778
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_380
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Gov.d_pparams_1942
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v1)))))
                                                                erased in
                                                      coe
                                                        (case coe v13 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                             -> coe
                                                                  ("\172\n.Ledger.GovernanceActions.GovProposal.deposit prop \8801\n.Ledger.PParams.PParams.govActionDeposit\n(.Ledger.Gov.GovEnv.pparams (.proj\8321 \915))"
                                                                   ::
                                                                   Data.Text.Text)
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                             -> let v15
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                          (coe
                                                                             d_validHFAction'63'_1232
                                                                             (coe v0) (coe v3)
                                                                             (coe v2)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Gov.d_enactState_1946
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                   (coe v1))))
                                                                          erased in
                                                                coe
                                                                  (case coe v15 of
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                       -> coe
                                                                            ("\172\nLedger.Gov.validHFAction txs prop s\n(.Ledger.Gov.GovEnv.enactState (.proj\8321 \915))"
                                                                             ::
                                                                             Data.Text.Text)
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                       -> let v17
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Gov.d_hasParent'63'''_2288
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Gov.d_enactState_1946
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v1)))
                                                                                       (coe v2)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.GovernanceActions.d_gaType_720
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.GovernanceActions.d_action_772
                                                                                             (coe
                                                                                                v3)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_774
                                                                                          (coe v3)))
                                                                                    erased in
                                                                          coe
                                                                            (case coe v17 of
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v18
                                                                                 -> coe
                                                                                      ("\172\nhasParent' (.Ledger.Gov.GovEnv.enactState (.proj\8321 \915)) s\n(.Ledger.GovernanceActions.GovAction.gaType\n (.Ledger.GovernanceActions.GovProposal.action prop))\n(.Ledger.GovernanceActions.GovProposal.prevAction prop)"
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v18
                                                                                 -> let v19
                                                                                          = coe
                                                                                              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_globalConstants_1206
                                                                                                       (coe
                                                                                                          v0)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Address.d_net_82
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_780
                                                                                                       (coe
                                                                                                          v3)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_globalConstants_1206
                                                                                                       (coe
                                                                                                          v0))))
                                                                                              erased in
                                                                                    coe
                                                                                      (case coe
                                                                                              v19 of
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v20
                                                                                           -> coe
                                                                                                ("\172\n.Ledger.Address.RwdAddr.net\n(.Ledger.GovernanceActions.GovProposal.returnAddr prop)\n\8801\n.Ledger.Types.Epoch.GlobalConstants.NetworkId\n(.GovStructure.globalConstants\n (TransactionStructure.govStructure txs))"
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v20
                                                                                           -> coe
                                                                                                ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712\n .Ledger.Address.RwdAddr.stake\n (.Ledger.GovernanceActions.GovProposal.returnAddr prop))\n(.Ledger.Gov.GovEnv.rewardCreds (.proj\8321 \915))"
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Gov.Properties._.Go.GoProp.completeness
d_completeness_1626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Gov.T__'8866'_'8640''10631'_'44'GOV'10632'__2098 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1626 = erased
-- Ledger.Gov.Properties._.Go.computeProof
d_computeProof_1714 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1714 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
        -> coe d_computeProof_1370 (coe v0) (coe v1) (coe v2) (coe v4)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
        -> coe d_computeProof_1574 (coe v0) (coe v1) (coe v2) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties._.Go.completeness
d_completeness_1724 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Gov.T__'8866'_'8640''10631'_'44'GOV'10632'__2098 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1724 = erased
-- Ledger.Gov.Properties.Computational-GOVS
d_Computational'45'GOVS_1730 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVS_1730 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1100
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
      (coe d_Computational'45'GOV_1326 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
-- Ledger.Gov.Properties.allEnactable-singleton
d_allEnactable'45'singleton_1738 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_784 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_allEnactable'45'singleton_1738 ~v0 v1 v2 v3 ~v4
  = du_allEnactable'45'singleton_1738 v1 v2 v3
du_allEnactable'45'singleton_1738 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_784 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_allEnactable'45'singleton_1738 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
      (coe du_helper_1764 (coe v0) (coe v1) (coe v2))
      (coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)
-- Ledger.Gov.Properties._.helper
d_helper_1764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_784 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_helper_1764 ~v0 v1 v2 v3 ~v4 = du_helper_1764 v1 v2 v3
du_helper_1764 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_784 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 -> AgdaAny
du_helper_1764 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Ledger.Enact.du_getHashES_892 (coe v2)
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.d_gaType_720
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_802 (coe v1))) in
    coe
      (let v4
             = coe
                 MAlonzo.Code.Ledger.Enact.du_getHash_880
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_gaType_720
                    (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_802 (coe v1)))
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_804 (coe v1)) in
       coe
         (case coe v3 of
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
              -> case coe v4 of
                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
                     -> coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v5)))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v7 v8 -> v8))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
                                   (coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)
                                   (coe
                                      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22))
                                (coe
                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased))))
                   MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> erased
                   _ -> MAlonzo.RTE.mazUnreachableError
            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
              -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
            _ -> MAlonzo.RTE.mazUnreachableError))
