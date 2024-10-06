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

module MAlonzo.Code.Ledger.Conway.Conformance.Gov.Properties where

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
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.DecEq-Credential
d_DecEq'45'Credential_66 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_66 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_66 v2 v3
du_DecEq'45'Credential_66 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_66 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
      (coe v0) (coe v1)
-- _.PParams
d_PParams_168 a0 = ()
-- _.preoEpoch
d_preoEpoch_358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_358 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_preoEpoch_90
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_epochStructure_608
            (coe v1)))
-- _.pvCanFollow
d_pvCanFollow_362 a0 a1 a2 = ()
-- _.PParams.Emax
d_Emax_484 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_Emax_484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_356 (coe v0)
-- _.PParams.a
d_a_486 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v0)
-- _.PParams.a0
d_a0_488 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_360 (coe v0)
-- _.PParams.b
d_b_490 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_492 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_494 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_496 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_498 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
      (coe v0)
-- _.PParams.costmdls
d_costmdls_500 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_costmdls_500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_502 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_drepActivity_502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_504 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_506 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_508 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_510 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_512 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_514 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxBlockExUnits_514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_324
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_516 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_316
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_518 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_328
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_520 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_320
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_522 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerBlock_522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_348
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_524 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerTx_524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_526 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxTxExUnits_526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_322
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_528 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_530 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_532 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_344
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_534 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
      (coe v0)
-- _.PParams.nopt
d_nopt_536 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_358 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_538 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_540 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
      (coe v0)
-- _.PParams.prices
d_prices_542 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_prices_542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
      (coe v0)
-- _.PParams.pv
d_pv_544 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_330 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_546 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_352
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_548 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_refScriptCostStride_548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_350
      (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.getHash
d_getHash_716 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_716 ~v0 = du_getHash_716
du_getHash_716 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHash_716
  = coe MAlonzo.Code.Ledger.Conway.Conformance.Enact.du_getHash_884
-- Ledger.Conway.Conformance.Gov.Properties._.getHashES
d_getHashES_718 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_718 ~v0 = du_getHashES_718
du_getHashES_718 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHashES_718
  = coe MAlonzo.Code.Ledger.Conway.Conformance.Enact.du_getHashES_896
-- Ledger.Conway.Conformance.Gov.Properties._._⊢_⇀⦇_,GOV'⦈_
d__'8866'_'8640''10631'_'44'GOV'''10632'__770 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Gov.Properties._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__772 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__772 = erased
-- Ledger.Conway.Conformance.Gov.Properties._.GovState
d_GovState_782 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_GovState_782 = erased
-- Ledger.Conway.Conformance.Gov.Properties._.allEnactable
d_allEnactable_792 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_allEnactable_792 = erased
-- Ledger.Conway.Conformance.Gov.Properties._.enactable
d_enactable_802 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_enactable_802 = erased
-- Ledger.Conway.Conformance.Gov.Properties._.getAidPairsList
d_getAidPairsList_806 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsList_806 ~v0 = du_getAidPairsList_806
du_getAidPairsList_806 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsList_806
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_getAidPairsList_1206
-- Ledger.Conway.Conformance.Gov.Properties._.hasParent'
d_hasParent''_812 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Gov.Properties._.hasParent?'
d_hasParent'63'''_816 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_hasParent'63'''_816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_hasParent'63'''_1410
      (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.validHFAction
d_validHFAction_828 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 -> ()
d_validHFAction_828 = erased
-- Ledger.Conway.Conformance.Gov.Properties._.GovAction
d_GovAction_882 a0 = ()
-- Ledger.Conway.Conformance.Gov.Properties._.GovActionID
d_GovActionID_884 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_884 = erased
-- Ledger.Conway.Conformance.Gov.Properties._.GovProposal
d_GovProposal_888 a0 = ()
-- Ledger.Conway.Conformance.Gov.Properties._.GovRole
d_GovRole_890 a0 = ()
-- Ledger.Conway.Conformance.Gov.Properties._.GovVote
d_GovVote_892 a0 = ()
-- Ledger.Conway.Conformance.Gov.Properties._.GovProposal.action
d_action_970 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
      (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovProposal.anchor
d_anchor_972 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_804
      (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovProposal.deposit
d_deposit_974 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer
d_deposit_974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_deposit_800
      (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovProposal.policy
d_policy_976 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Maybe AgdaAny
d_policy_976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
      (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovProposal.prevAction
d_prevAction_978 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  AgdaAny
d_prevAction_978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_796
      (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovProposal.returnAddr
d_returnAddr_980 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
d_returnAddr_980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_802
      (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovVote.anchor
d_anchor_992 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_778
      (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovVote.gid
d_gid_994 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_gid_772
      (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovVote.vote
d_vote_996 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_754
d_vote_996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_vote_776
      (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovVote.voter
d_voter_998 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
      (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.canVote
d_canVote_1062 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  ()
d_canVote_1062 = erased
-- Ledger.Conway.Conformance.Gov.Properties.lookupActionId
d_lookupActionId_1158 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovRole_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupActionId_1158 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                 (coe
                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1232
                          (coe v0))
                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                    (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_72
                    (coe
                       (\ v5 ->
                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_threshold_1858 v0
                       v1 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                       (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                       v2)))))
-- Ledger.Conway.Conformance.Gov.Properties.isUpdateCommittee
d_isUpdateCommittee_1176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isUpdateCommittee_1176 ~v0 v1 = du_isUpdateCommittee_1176 v1
du_isUpdateCommittee_1176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isUpdateCommittee_1176 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NoConfidence_722
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_UpdateCommittee_724 v1 v2 v3
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) erased))))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NewConstitution_726 v1 v2
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TriggerHF_728 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_ChangePParams_730 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TreasuryWdrl_732 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_Info_734
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.Properties.needsPolicy₁
d_needsPolicy'8321'_1198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_needsPolicy'8321'_1198 ~v0 v1 = du_needsPolicy'8321'_1198 v1
du_needsPolicy'8321'_1198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_needsPolicy'8321'_1198 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NoConfidence_722
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_UpdateCommittee_724 v1 v2 v3
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NewConstitution_726 v1 v2
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TriggerHF_728 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_ChangePParams_730 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe
                      MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v1) erased)))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TreasuryWdrl_732 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_Info_734
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.Properties.needsPolicy₂
d_needsPolicy'8322'_1220 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_needsPolicy'8322'_1220 ~v0 v1 = du_needsPolicy'8322'_1220 v1
du_needsPolicy'8322'_1220 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_needsPolicy'8322'_1220 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NoConfidence_722
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_UpdateCommittee_724 v1 v2 v3
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NewConstitution_726 v1 v2
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TriggerHF_728 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_ChangePParams_730 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TreasuryWdrl_732 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe
                      MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v1) erased)))
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_Info_734
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.Properties.hasPrev
d_hasPrev_1244 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasPrev_1244 ~v0 v1 v2 = du_hasPrev_1244 v1 v2
du_hasPrev_1244 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_hasPrev_1244 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_GovActionState'46'constructor_6761 v2 v3 v4 v5 v6
        -> case coe v5 of
             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NoConfidence_722
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_UpdateCommittee_724 v7 v8 v9
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NewConstitution_726 v7 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TriggerHF_728 v7
               -> let v8
                        = coe
                            MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_pvCanFollow'63'_1236
                            (coe v7) (coe v1) in
                  coe
                    (case coe v8 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                         -> if coe v9
                              then case coe v10 of
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                       -> coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe v9)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     erased (coe v11))))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              else coe
                                     seq (coe v10)
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                        (coe v9)
                                        (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_ChangePParams_730 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TreasuryWdrl_732 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_Info_734
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.Properties.validHFAction?
d_validHFAction'63'_1278 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_validHFAction'63'_1278 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_GovProposal'46'constructor_6413 v4 v5 v6 v7 v8 v9
        -> case coe v4 of
             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NoConfidence_722
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_UpdateCommittee_724 v10 v11 v12
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NewConstitution_726 v10 v11
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TriggerHF_728 v10
               -> case coe v3 of
                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125 v11 v12 v13 v14 v15
                      -> case coe v13 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                             -> let v18
                                      = coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                          (coe
                                             MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1232
                                                   (coe v0)))
                                             (coe
                                                (\ v18 ->
                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                             (coe v17) (coe v5))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_pvCanFollow'63'_1236
                                             (coe v16) (coe v10)) in
                                coe
                                  (let v19
                                         = coe
                                             MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
                                             (coe
                                                (\ v19 ->
                                                   coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                                     (coe
                                                        MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1232
                                                              (coe v0)))
                                                        (coe
                                                           (\ v20 ->
                                                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                (coe
                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v19))
                                                        (coe v5))
                                                     (coe
                                                        du_hasPrev_1244
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v19))
                                                        (coe v10))))
                                             (coe v2) in
                                   coe
                                     (case coe v18 of
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v20 v21
                                          -> if coe v20
                                               then case coe v21 of
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v22
                                                        -> coe
                                                             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                             (coe
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                (coe v20)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                   (coe
                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                      (coe v22))))
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               else coe
                                                      seq (coe v21)
                                                      (case coe v19 of
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v22 v23
                                                           -> if coe v22
                                                                then case coe v23 of
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v24
                                                                         -> let v25
                                                                                  = coe
                                                                                      MAlonzo.Code.Data.List.Membership.Setoid.du_find_84
                                                                                      (coe
                                                                                         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
                                                                                      (coe v2)
                                                                                      (coe v24) in
                                                                            coe
                                                                              (case coe v25 of
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                   -> case coe
                                                                                             v26 of
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v28 v29
                                                                                          -> case coe
                                                                                                    v27 of
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v30 v31
                                                                                                 -> case coe
                                                                                                           v31 of
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v32 v33
                                                                                                        -> case coe
                                                                                                                  v33 of
                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v34 v35
                                                                                                               -> coe
                                                                                                                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                       (coe
                                                                                                                          v22)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                (coe
                                                                                                                                   v29)
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                   (coe
                                                                                                                                      v34)
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Function.Bundles.d_to_1724
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_420
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                            (coe
                                                                                                                                               v2)
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                               (coe
                                                                                                                                                  v5)
                                                                                                                                               (coe
                                                                                                                                                  v29)))
                                                                                                                                         v30)
                                                                                                                                      (coe
                                                                                                                                         v35)))))))
                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                else coe
                                                                       seq (coe v23)
                                                                       (coe
                                                                          MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                             (coe v22)
                                                                             (coe
                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                        _ -> MAlonzo.RTE.mazUnreachableError))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_ChangePParams_730 v10
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TreasuryWdrl_732 v10
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_Info_734
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.Properties.Computational-GOV'
d_Computational'45'GOV''_1366 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV''_1366 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_1714 (coe v0))
-- Ledger.Conway.Conformance.Gov.Properties._.Go.GoVote.computeProof
d_computeProof_1406 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1406 v0 v1 v2 v3
  = let v4
          = coe
              d_lookupActionId_1158 v0
              (MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_1050
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
                    (coe v3)))
              (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_gid_772
                 (coe v3))
              v2 in
    coe
      (case coe v4 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
           -> if coe v5
                then case coe v6 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                         -> let v8
                                  = coe
                                      MAlonzo.Code.Function.Bundles.d_from_1974
                                      (coe
                                         MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core.du_Any'8596'_144
                                         (coe v2))
                                      v7 in
                            coe
                              (case coe v8 of
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                   -> case coe v10 of
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                          -> case coe v12 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                                 -> case coe v3 of
                                                      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_GovVote'46'constructor_6043 v15 v16 v17 v18
                                                        -> coe
                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe
                                                                   MAlonzo.Code.Data.List.Base.du_map_22
                                                                   (coe
                                                                      (\ v19 ->
                                                                         coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v19))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_GovActionState'46'constructor_6761
                                                                              (let v20
                                                                                     = coe
                                                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1232
                                                                                            (coe
                                                                                               v0))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                               (coe
                                                                                                  v19)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                               (coe
                                                                                                  v9))) in
                                                                               coe
                                                                                 (let v21
                                                                                        = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                               (coe
                                                                                                  v19)) in
                                                                                  coe
                                                                                    (let v22
                                                                                           = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                  (coe
                                                                                                     v9)) in
                                                                                     coe
                                                                                       (case coe
                                                                                               v20 of
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                                            -> if coe
                                                                                                    v23
                                                                                                 then let v25
                                                                                                            = seq
                                                                                                                (coe
                                                                                                                   v24)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                   erased
                                                                                                                   erased
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                      erased
                                                                                                                      (\ v25 ->
                                                                                                                         coe
                                                                                                                           MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                           (coe
                                                                                                                              v21))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                         (coe
                                                                                                                            eqInt
                                                                                                                            (coe
                                                                                                                               v21)
                                                                                                                            (coe
                                                                                                                               v22))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                            (coe
                                                                                                                               eqInt
                                                                                                                               (coe
                                                                                                                                  v21)
                                                                                                                               (coe
                                                                                                                                  v22)))))) in
                                                                                                      coe
                                                                                                        (case coe
                                                                                                                v25 of
                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v26 v27
                                                                                                             -> if coe
                                                                                                                     v26
                                                                                                                  then coe
                                                                                                                         seq
                                                                                                                         (coe
                                                                                                                            v27)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                  erased
                                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                        (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                        erased
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                 erased
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                       (coe
                                                                                                                                                          v16)
                                                                                                                                                       (coe
                                                                                                                                                          v17))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                    erased
                                                                                                                                                    erased
                                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                             (coe
                                                                                                                                                                v19))))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                                       (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                       erased
                                                                                                                                                       erased
                                                                                                                                                       erased
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                                                          (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                          erased
                                                                                                                                                          erased
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                             erased
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                                            (coe
                                                                                                                                                                               v0))))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                                         (coe
                                                                                                                                                                            v0)))))
                                                                                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                   erased
                                                                                                                                                                   erased
                                                                                                                                                                   (\ v28 ->
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                        (coe
                                                                                                                                                                           v28))
                                                                                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                         erased
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                               (coe
                                                                                                                                                                                  v16)
                                                                                                                                                                               (coe
                                                                                                                                                                                  v17))
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                                                                                                                                       (\ v28 ->
                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                            (coe
                                                                                                                                                               v28)))))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                                                            erased)
                                                                                                                  else (let v28
                                                                                                                              = seq
                                                                                                                                  (coe
                                                                                                                                     v27)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                                                                                     erased) in
                                                                                                                        coe
                                                                                                                          (case coe
                                                                                                                                  v28 of
                                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v29
                                                                                                                               -> coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                          erased
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                erased
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                         erased
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                               (coe
                                                                                                                                                                  v16)
                                                                                                                                                               (coe
                                                                                                                                                                  v17))
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                            erased
                                                                                                                                                            erased
                                                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                     (coe
                                                                                                                                                                        v19))))
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                                               (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                               erased
                                                                                                                                                               erased
                                                                                                                                                               erased
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                                                                  (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                                  erased
                                                                                                                                                                  erased
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                                     erased
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828)
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                                                    (coe
                                                                                                                                                                                       v0))))
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v0)))))
                                                                                                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                           erased
                                                                                                                                                                           erased
                                                                                                                                                                           (\ v30 ->
                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                (coe
                                                                                                                                                                                   v30))
                                                                                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                                 erased
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                       (coe
                                                                                                                                                                                          v16)
                                                                                                                                                                                       (coe
                                                                                                                                                                                          v17))
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                                                                                                                                               (\ v30 ->
                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                    (coe
                                                                                                                                                                       v30)))))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                                                                    erased
                                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v29
                                                                                                                               -> coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                       (coe
                                                                                                                                          v19))
                                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                 else (let v25
                                                                                                             = seq
                                                                                                                 (coe
                                                                                                                    v24)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                    (coe
                                                                                                                       v23)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                                                       coe
                                                                                                         (case coe
                                                                                                                 v25 of
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v26 v27
                                                                                                              -> if coe
                                                                                                                      v26
                                                                                                                   then coe
                                                                                                                          seq
                                                                                                                          (coe
                                                                                                                             v27)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                   erased
                                                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                         erased
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                  erased
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                        (coe
                                                                                                                                                           v16)
                                                                                                                                                        (coe
                                                                                                                                                           v17))
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                     erased
                                                                                                                                                     erased
                                                                                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                              (coe
                                                                                                                                                                 v19))))
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                        erased
                                                                                                                                                        erased
                                                                                                                                                        erased
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                                                           (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                           erased
                                                                                                                                                           erased
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                              erased
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828)
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                                             (coe
                                                                                                                                                                                v0))))
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                                          (coe
                                                                                                                                                                             v0)))))
                                                                                                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                    erased
                                                                                                                                                                    erased
                                                                                                                                                                    (\ v28 ->
                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                         (coe
                                                                                                                                                                            v28))
                                                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                          erased
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                (coe
                                                                                                                                                                                   v16)
                                                                                                                                                                                (coe
                                                                                                                                                                                   v17))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                                                                                                                                        (\ v28 ->
                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                             (coe
                                                                                                                                                                v28)))))
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                                                             erased)
                                                                                                                   else (let v28
                                                                                                                               = seq
                                                                                                                                   (coe
                                                                                                                                      v27)
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                                                                                      erased) in
                                                                                                                         coe
                                                                                                                           (case coe
                                                                                                                                   v28 of
                                                                                                                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v29
                                                                                                                                -> coe
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                           erased
                                                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                 erased
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                          erased
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   v16)
                                                                                                                                                                (coe
                                                                                                                                                                   v17))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                             erased
                                                                                                                                                             erased
                                                                                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                      (coe
                                                                                                                                                                         v19))))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                                                (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                                erased
                                                                                                                                                                erased
                                                                                                                                                                erased
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                                                                   (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                                   erased
                                                                                                                                                                   erased
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                                      erased
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828)
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v0))))
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v0)))))
                                                                                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                            erased
                                                                                                                                                                            erased
                                                                                                                                                                            (\ v30 ->
                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v30))
                                                                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                                  erased
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v16)
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v17))
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                                                                                                                                                (\ v30 ->
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                     (coe
                                                                                                                                                                        v30)))))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                                                                     erased
                                                                                                                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v29
                                                                                                                                -> coe
                                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                        (coe
                                                                                                                                           v19))
                                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                    (coe v19)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_expiresIn_822
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                    (coe v19)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                    (coe v19)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_826
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                    (coe v19))))))
                                                                   (coe v2))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Gov.C_GOV'45'Vote_1618
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v9))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe
                                                                         MAlonzo.Code.Function.Bundles.d_to_1724
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_420
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1458
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                            (coe v2) (coe v9))
                                                                         v11)
                                                                      (coe v14))))
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v6)
                       (coe
                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                          (coe
                             ("\172\nAny\n(\955 .patternInTele0 \8594\n   .Ledger.Conway.Conformance.GovernanceActions.GovVote.gid sig \8801\n   .proj\8321 .patternInTele0\n   \215\n   canVote (.Ledger.Conway.Conformance.Gov.GovEnv.pparams (.proj\8321 \915))\n   (.Ledger.Conway.Conformance.GovernanceActions.GovActionState.action\n    (.proj\8322 .patternInTele0))\n   (.proj\8321\n    (.Ledger.Conway.Conformance.GovernanceActions.GovVote.voter sig)))\ns"
                              ::
                              Data.Text.Text)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Gov.Properties._.Go.GoVote.completeness
d_completeness_1422 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T__'8866'_'8640''10631'_'44'GOV'''10632'__1058 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1422 = erased
-- Ledger.Conway.Conformance.Gov.Properties._.Go.GoProp._
d___1550 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d___1550 v0 ~v1 ~v2 ~v3 = du___1550 v0
du___1550 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du___1550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_actionWellFormed'63'_746
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
         (coe v0))
-- Ledger.Conway.Conformance.Gov.Properties._.Go.GoProp.H
d_H_1552 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_H_1552 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               du___1550 v0
               (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
                  (coe v3)))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_deposit_800
                     (coe v3))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_1050
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     d_validHFAction'63'_1278 (coe v0) (coe v3) (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_1054
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                           (coe
                              du_needsPolicy'8321'_1198
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
                                 (coe v3)))
                           (coe
                              du_needsPolicy'8322'_1220
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
                                 (coe v3))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
                              (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_1052
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                 (coe
                                    du_needsPolicy'8321'_1198
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
                                       (coe v3)))
                                 (coe
                                    du_needsPolicy'8322'_1220
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
                                       (coe v3))))
                              (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
                                 (coe v3))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_hasParent'63'''_1410
                              (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_1054
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                              (coe v2)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
                                 (coe v3))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_796
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Address.d_net_86
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_802
                                    (coe v3)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_networkId_2420
                                 (coe v0))))))))))
      (coe
         du_isUpdateCommittee_1176
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
            (coe v3)))
-- Ledger.Conway.Conformance.Gov.Properties._.Go.GoProp.computeProof
d_computeProof_1562 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1562 v0 v1 v2 v3
  = let v4 = d_H_1552 (coe v0) (coe v1) (coe v2) (coe v3) in
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
                                                                   -> case coe v19 of
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                          -> case coe v20 of
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Gov.C_HasParent''_1400 v26
                                                                                 -> case coe v3 of
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_GovProposal'46'constructor_6413 v27 v28 v29 v30 v31 v32
                                                                                        -> case coe
                                                                                                  v6 of
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v33 v34
                                                                                               -> if coe
                                                                                                       v33
                                                                                                    then case coe
                                                                                                                v34 of
                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v35
                                                                                                             -> case coe
                                                                                                                       v35 of
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v36 v37
                                                                                                                    -> case coe
                                                                                                                              v37 of
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v38 v39
                                                                                                                           -> case coe
                                                                                                                                     v39 of
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v40 v41
                                                                                                                                  -> let v42
                                                                                                                                           = coe
                                                                                                                                               MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                                                                                                                                  (coe
                                                                                                                                                     (\ v42 ->
                                                                                                                                                        coe
                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                          erased
                                                                                                                                                          erased
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                                                                                                                             (coe
                                                                                                                                                                (\ v43 ->
                                                                                                                                                                   coe
                                                                                                                                                                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
                                                                                                                                                                        (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecPo'45'Slot_68
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                                                                                                                                                                              (coe
                                                                                                                                                                                 v0)))
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                                                                                                                           (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v0)))
                                                                                                                                                                           (\ v44
                                                                                                                                                                              v45 ->
                                                                                                                                                                              v44)
                                                                                                                                                                           (MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_1048
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v1)))
                                                                                                                                                                           v43)
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                                                                                                                           (\ v44
                                                                                                                                                                              v45 ->
                                                                                                                                                                              v45)
                                                                                                                                                                           (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v0)))
                                                                                                                                                                           (MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_1048
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v1)))
                                                                                                                                                                           v43))
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                                                                                           (coe
                                                                                                                                                                              (\ v44 ->
                                                                                                                                                                                 coe
                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                                                                                                   (let v45
                                                                                                                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       v0))) in
                                                                                                                                                                                    coe
                                                                                                                                                                                      (let v46
                                                                                                                                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       v0)) in
                                                                                                                                                                                       coe
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v45)
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v46))))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      v44)
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Axiom.Set.du_'8709'_430
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                                                                                                                                                                           (let v44
                                                                                                                                                                                  = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                                                                                                            coe
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Axiom.Set.du__'8745'__692
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                                    (coe
                                                                                                                                                                                       v44))
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                                                    erased
                                                                                                                                                                                    (let v45
                                                                                                                                                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        v0))) in
                                                                                                                                                                                     coe
                                                                                                                                                                                       (let v46
                                                                                                                                                                                              = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        v0)) in
                                                                                                                                                                                        coe
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v45)
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v46)))))
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Interface.IsSet.du_dom_550
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                                                                                                                                                                                    (coe
                                                                                                                                                                                       v36))
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v38))))
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                                                                                           (coe
                                                                                                                                                                              (\ v44 ->
                                                                                                                                                                                 coe
                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                                                                                                   (let v45
                                                                                                                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       v0))) in
                                                                                                                                                                                    coe
                                                                                                                                                                                      (let v46
                                                                                                                                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       v0)) in
                                                                                                                                                                                       coe
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v45)
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v46))))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      v44)
                                                                                                                                                                                   (let v45
                                                                                                                                                                                          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                                                                                                                    coe
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Axiom.Set.du__'8745'__692
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v45))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                                                            erased
                                                                                                                                                                                            (let v46
                                                                                                                                                                                                   = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                                                                                                       (coe
                                                                                                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                v0))) in
                                                                                                                                                                                             coe
                                                                                                                                                                                               (let v47
                                                                                                                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                v0)) in
                                                                                                                                                                                                coe
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        v46)
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        v47)))))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Interface.IsSet.du_dom_550
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v36))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v38)))))
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Axiom.Set.du_'8709'_430
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))))
                                                                                                                                                          v42))
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Interface.IsSet.du_range_552
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                                                                                                                                                     (coe
                                                                                                                                                        v36))) in
                                                                                                                                     coe
                                                                                                                                       (case coe
                                                                                                                                               v42 of
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v43 v44
                                                                                                                                            -> if coe
                                                                                                                                                    v43
                                                                                                                                                 then case coe
                                                                                                                                                             v44 of
                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v45
                                                                                                                                                          -> coe
                                                                                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1122
                                                                                                                                                                     (coe
                                                                                                                                                                        v2)
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_1046
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v1)))
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                              (coe
                                                                                                                                                                                 v1)))
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_GovActionState'46'constructor_6761
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                                    erased
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                                                                              (coe
                                                                                                                                                                                 (\ v46
                                                                                                                                                                                    v47
                                                                                                                                                                                    v48
                                                                                                                                                                                    v49
                                                                                                                                                                                    v50 ->
                                                                                                                                                                                    coe
                                                                                                                                                                                      MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
                                                                                                                                                                           (coe
                                                                                                                                                                              v31)
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.du_additionVia_12
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_suc'7497'_78
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                                                                                                                                                                                    (coe
                                                                                                                                                                                       v0)))
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_1050
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                       (coe
                                                                                                                                                                                          v1))))
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_1048
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                    (coe
                                                                                                                                                                                       v1))))
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_UpdateCommittee_724
                                                                                                                                                                              (coe
                                                                                                                                                                                 v36)
                                                                                                                                                                              (coe
                                                                                                                                                                                 v38)
                                                                                                                                                                              (coe
                                                                                                                                                                                 v40))
                                                                                                                                                                           (coe
                                                                                                                                                                              v28))))
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Gov.C_GOV'45'Propose_1720
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
                                                                                                                                                                                 v16)
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v18)
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                    (coe
                                                                                                                                                                                       (\ v46
                                                                                                                                                                                          v47
                                                                                                                                                                                          v48
                                                                                                                                                                                          v49
                                                                                                                                                                                          v50 ->
                                                                                                                                                                                          coe
                                                                                                                                                                                            v45
                                                                                                                                                                                            v50))
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                       (coe
                                                                                                                                                                                          v14)
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v26)
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v21))))))))))
                                                                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                 else coe
                                                                                                                                                        seq
                                                                                                                                                        (coe
                                                                                                                                                           v44)
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                                           (coe
                                                                                                                                                              ("\172\nInterface.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 e \8594\n   (preoEpoch HasPreorder.<\n    .Ledger.Conway.Conformance.Gov.GovEnv.epoch (.proj\8321 \915))\n   e\n   \215\n   (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8801\7497\n    (List-Model\7496 Axiom.Set.Theory\7496._.Intersection.\8745\n     .Axiom.Set.Theory\7496.\8712-sp List-Model\7496)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) new) rem)\n   (.HasEmptySet.\8709\n    (Interface.HasEmptySet.Instances.HasEmptySet-Set\n     (.Axiom.Set.Theory\7496.th List-Model\7496))))\n(Interface.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496) new)"
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
                                                                                                              v34)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1122
                                                                                                                    (coe
                                                                                                                       v2)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_1046
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                (coe
                                                                                                                                   v1)))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                             (coe
                                                                                                                                v1)))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_GovActionState'46'constructor_6761
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                   erased
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                             (coe
                                                                                                                                (\ v35
                                                                                                                                   v36
                                                                                                                                   v37
                                                                                                                                   v38
                                                                                                                                   v39 ->
                                                                                                                                   coe
                                                                                                                                     MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
                                                                                                                          (coe
                                                                                                                             v31)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.du_additionVia_12
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_suc'7497'_78
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                                                                                                                                   (coe
                                                                                                                                      v0)))
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_1050
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                      (coe
                                                                                                                                         v1))))
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_1048
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                   (coe
                                                                                                                                      v1))))
                                                                                                                          (coe
                                                                                                                             v27)
                                                                                                                          (coe
                                                                                                                             v28))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Gov.C_GOV'45'Propose_1720
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
                                                                                                                                v16)
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                (coe
                                                                                                                                   v18)
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                   (coe
                                                                                                                                      (\ v35
                                                                                                                                         v36
                                                                                                                                         v37
                                                                                                                                         v38
                                                                                                                                         v39 ->
                                                                                                                                         coe
                                                                                                                                           MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                      (coe
                                                                                                                                         v14)
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                         (coe
                                                                                                                                            v26)
                                                                                                                                         (coe
                                                                                                                                            v21)))))))))))
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
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
                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                            (coe
                                               du___1550 v0
                                               (MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
                                                  (coe v3)))
                                            erased in
                                  coe
                                    (case coe v9 of
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                                         -> coe
                                              ("\172\nLedger.Conway.Conformance.GovernanceActions.actionWellFormed\n(TransactionStructure.govStructure txs)\n(.Ledger.Conway.Conformance.GovernanceActions.GovProposal.action\n prop)"
                                               ::
                                               Data.Text.Text)
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                                         -> let v11
                                                  = coe
                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_deposit_800
                                                            (coe v3))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_1050
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v1)))))
                                                      erased in
                                            coe
                                              (case coe v11 of
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                                   -> coe
                                                        ("\172\n.Ledger.Conway.Conformance.GovernanceActions.GovProposal.deposit\nprop\n\8801\n.Ledger.Conway.Conformance.PParams.PParams.govActionDeposit\n(.Ledger.Conway.Conformance.Gov.GovEnv.pparams (.proj\8321 \915))"
                                                         ::
                                                         Data.Text.Text)
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                                   -> let v13
                                                            = coe
                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                (coe
                                                                   d_validHFAction'63'_1278 (coe v0)
                                                                   (coe v3) (coe v2)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_1054
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v1))))
                                                                erased in
                                                      coe
                                                        (case coe v13 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                             -> coe
                                                                  ("\172\nLedger.Conway.Conformance.Gov.validHFAction txs prop s\n(.Ledger.Conway.Conformance.Gov.GovEnv.enactState (.proj\8321 \915))"
                                                                   ::
                                                                   Data.Text.Text)
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                             -> let v15
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                                                                (coe
                                                                                   du_needsPolicy'8321'_1198
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
                                                                                      (coe v3)))
                                                                                (coe
                                                                                   du_needsPolicy'8322'_1220
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
                                                                                      (coe v3))))
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                (coe
                                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                         (coe v0))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
                                                                                   (coe v3))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_1052
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe v1)))))
                                                                          erased in
                                                                coe
                                                                  (case coe v15 of
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                       -> coe
                                                                            ("\172\n((z\n  : \8707-syntax\n    (\955 u \8594\n       .Ledger.Conway.Conformance.GovernanceActions.GovProposal.action\n       prop\n       \8801 ChangePParams u)\n    \8846\n    \8707-syntax\n    (\955 w \8594\n       .Ledger.Conway.Conformance.GovernanceActions.GovProposal.action\n       prop\n       \8801 TreasuryWdrl w)) \8594\n .Ledger.Conway.Conformance.GovernanceActions.GovProposal.policy\n prop\n \8801 .Ledger.Conway.Conformance.Gov.GovEnv.ppolicy (.proj\8321 \915))"
                                                                             ::
                                                                             Data.Text.Text)
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                       -> let v17
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                                                                             (coe
                                                                                                du_needsPolicy'8321'_1198
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
                                                                                                   (coe
                                                                                                      v3)))
                                                                                             (coe
                                                                                                du_needsPolicy'8322'_1220
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
                                                                                                   (coe
                                                                                                      v3))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                   (coe
                                                                                                      v0))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
                                                                                             (coe
                                                                                                v3))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                                                                    erased in
                                                                          coe
                                                                            (case coe v17 of
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v18
                                                                                 -> coe
                                                                                      ("\172\n((z\n  : \172\n    (\8707-syntax\n     (\955 u \8594\n        .Ledger.Conway.Conformance.GovernanceActions.GovProposal.action\n        prop\n        \8801 ChangePParams u)\n     \8846\n     \8707-syntax\n     (\955 w \8594\n        .Ledger.Conway.Conformance.GovernanceActions.GovProposal.action\n        prop\n        \8801 TreasuryWdrl w))) \8594\n .Ledger.Conway.Conformance.GovernanceActions.GovProposal.policy\n prop\n \8801 nothing)"
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v18
                                                                                 -> let v19
                                                                                          = coe
                                                                                              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_hasParent'63'''_1410
                                                                                                 (coe
                                                                                                    v0)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_1054
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                       (coe
                                                                                                          v1)))
                                                                                                 (coe
                                                                                                    v2)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
                                                                                                    (coe
                                                                                                       v3))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_796
                                                                                                    (coe
                                                                                                       v3)))
                                                                                              erased in
                                                                                    coe
                                                                                      (case coe
                                                                                              v19 of
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v20
                                                                                           -> coe
                                                                                                ("\172\nhasParent'\n(.Ledger.Conway.Conformance.Gov.GovEnv.enactState (.proj\8321 \915)) s\n(.Ledger.Conway.Conformance.GovernanceActions.GovProposal.action\n prop)\n(.Ledger.Conway.Conformance.GovernanceActions.GovProposal.prevAction\n prop)"
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v20
                                                                                           -> coe
                                                                                                ("\172\n.Ledger.Conway.Conformance.Address.RwdAddr.net\n(.Ledger.Conway.Conformance.GovernanceActions.GovProposal.returnAddr\n prop)\n\8801 .TransactionStructure.networkId txs"
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
-- Ledger.Conway.Conformance.Gov.Properties._.Go.GoProp.completeness
d_completeness_1618 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T__'8866'_'8640''10631'_'44'GOV'''10632'__1058 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1618 = erased
-- Ledger.Conway.Conformance.Gov.Properties._.Go.computeProof
d_computeProof_1714 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1714 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
        -> coe d_computeProof_1406 (coe v0) (coe v1) (coe v2) (coe v4)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
        -> coe d_computeProof_1562 (coe v0) (coe v1) (coe v2) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.Properties._.Go.completeness
d_completeness_1724 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T__'8866'_'8640''10631'_'44'GOV'''10632'__1058 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1724 = erased
-- Ledger.Conway.Conformance.Gov.Properties.Computational-GOV
d_Computational'45'GOV_1730 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV_1730 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1100
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
      (coe d_Computational'45'GOV''_1366 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
-- Ledger.Conway.Conformance.Gov.Properties.allEnactable-singleton
d_allEnactable'45'singleton_1738 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_allEnactable'45'singleton_1738 ~v0 v1 v2 v3 ~v4
  = du_allEnactable'45'singleton_1738 v1 v2 v3
du_allEnactable'45'singleton_1738 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_allEnactable'45'singleton_1738 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
      (coe du_helper_1764 (coe v0) (coe v1) (coe v2))
      (coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)
-- Ledger.Conway.Conformance.Gov.Properties._.helper
d_helper_1764 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_helper_1764 ~v0 v1 v2 v3 ~v4 = du_helper_1764 v1 v2 v3
du_helper_1764 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  AgdaAny
du_helper_1764 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Ledger.Conway.Conformance.Enact.du_getHashES_896
              (coe v2)
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                 (coe v1)) in
    coe
      (let v4
             = coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Enact.du_getHash_884
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                    (coe v1))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_826
                    (coe v1)) in
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
