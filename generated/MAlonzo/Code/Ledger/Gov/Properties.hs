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
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Gov
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.DecEq-Credential
d_DecEq'45'Credential_62 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_62 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_62 v2 v3
du_DecEq'45'Credential_62 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_62 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- _.PParams
d_PParams_162 a0 = ()
-- _.preoEpoch
d_preoEpoch_348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_348 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_580
            (coe v1)))
-- _.pvCanFollow
d_pvCanFollow_352 a0 a1 a2 = ()
-- _.PParams.Emax
d_Emax_472 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_472 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_334 (coe v0)
-- _.PParams.a
d_a_474 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_474 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_318 (coe v0)
-- _.PParams.a0
d_a0_476 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_476 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_338 (coe v0)
-- _.PParams.b
d_b_478 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_478 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_320 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_480 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_480 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_350 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_482 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_482 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_348 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_484 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_484 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_326 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_486 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_486 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_340 (coe v0)
-- _.PParams.costmdls
d_costmdls_488 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_488 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_342 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_490 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_490 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_358 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_492 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_492 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_356 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_494 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_494 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_496 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_496 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_354 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_498 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_498 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_352 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_500 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_500 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_322 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_502 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_502 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_310 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_504 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_504 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_302 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_506 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_506 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_314 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_508 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_508 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_306 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_510 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_510 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_308 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_512 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_512 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_304 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_514 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_514 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_312 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_516 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_516 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_330
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_518 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_518 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_332 (coe v0)
-- _.PParams.nopt
d_nopt_520 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_520 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_336 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_522 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_522 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_324 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_524 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_524 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_344 (coe v0)
-- _.PParams.prices
d_prices_526 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_526 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_328 (coe v0)
-- _.PParams.pv
d_pv_528 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_528 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_316 (coe v0)
-- Ledger.Gov.Properties._.getHash
d_getHash_688 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_688 ~v0 = du_getHash_688
du_getHash_688 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHash_688 = coe MAlonzo.Code.Ledger.Enact.du_getHash_856
-- Ledger.Gov.Properties._.getHashES
d_getHashES_690 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_690 ~v0 = du_getHashES_690
du_getHashES_690 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHashES_690 = coe MAlonzo.Code.Ledger.Enact.du_getHashES_868
-- Ledger.Gov.Properties._._⊢_⇀⦇_,GOV'⦈_
d__'8866'_'8640''10631'_'44'GOV'''10632'__742 a0 a1 a2 a3 a4 = ()
-- Ledger.Gov.Properties._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__744 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1006 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__744 = erased
-- Ledger.Gov.Properties._.GovState
d_GovState_754 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovState_754 = erased
-- Ledger.Gov.Properties._.allEnactable
d_allEnactable_764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_allEnactable_764 = erased
-- Ledger.Gov.Properties._.enactable
d_enactable_774 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_enactable_774 = erased
-- Ledger.Gov.Properties._.getAidPairsList
d_getAidPairsList_778 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsList_778 ~v0 = du_getAidPairsList_778
du_getAidPairsList_778 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsList_778
  = coe MAlonzo.Code.Ledger.Gov.du_getAidPairsList_1178
-- Ledger.Gov.Properties._.hasParent'
d_hasParent''_784 a0 a1 a2 a3 a4 = ()
-- Ledger.Gov.Properties._.hasParent?'
d_hasParent'63'''_788 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_hasParent'63'''_788 v0
  = coe MAlonzo.Code.Ledger.Gov.d_hasParent'63'''_1382 (coe v0)
-- Ledger.Gov.Properties._.validHFAction
d_validHFAction_800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 -> ()
d_validHFAction_800 = erased
-- Ledger.Gov.Properties._.GovAction
d_GovAction_854 a0 = ()
-- Ledger.Gov.Properties._.GovActionID
d_GovActionID_856 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_856 = erased
-- Ledger.Gov.Properties._.GovProposal
d_GovProposal_860 a0 = ()
-- Ledger.Gov.Properties._.GovRole
d_GovRole_862 a0 = ()
-- Ledger.Gov.Properties._.GovVote
d_GovVote_864 a0 = ()
-- Ledger.Gov.Properties._.GovProposal.action
d_action_942 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_942 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_766 (coe v0)
-- Ledger.Gov.Properties._.GovProposal.anchor
d_anchor_944 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_944 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_776 (coe v0)
-- Ledger.Gov.Properties._.GovProposal.deposit
d_deposit_946 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 -> Integer
d_deposit_946 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_772 (coe v0)
-- Ledger.Gov.Properties._.GovProposal.policy
d_policy_948 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  Maybe AgdaAny
d_policy_948 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_770 (coe v0)
-- Ledger.Gov.Properties._.GovProposal.prevAction
d_prevAction_950 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 -> AgdaAny
d_prevAction_950 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_768 (coe v0)
-- Ledger.Gov.Properties._.GovProposal.returnAddr
d_returnAddr_952 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_952 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_774 (coe v0)
-- Ledger.Gov.Properties._.GovVote.anchor
d_anchor_964 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_964 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_750 (coe v0)
-- Ledger.Gov.Properties._.GovVote.gid
d_gid_966 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_966 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_744 (coe v0)
-- Ledger.Gov.Properties._.GovVote.vote
d_vote_968 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_726
d_vote_968 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_748 (coe v0)
-- Ledger.Gov.Properties._.GovVote.voter
d_voter_970 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_970 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_746 (coe v0)
-- Ledger.Gov.Properties._.canVote
d_canVote_1034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 -> ()
d_canVote_1034 = erased
-- Ledger.Gov.Properties.lookupActionId
d_lookupActionId_1130 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupActionId_1130 v0 v1 v2 v3
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
                       (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                    (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_72
                    (coe
                       (\ v5 ->
                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))
                    (coe
                       MAlonzo.Code.Ledger.Ratify.d_threshold_1844 v0 v1
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                       (MAlonzo.Code.Ledger.GovernanceActions.d_action_796
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                       v2)))))
-- Ledger.Gov.Properties.isUpdateCommittee
d_isUpdateCommittee_1148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isUpdateCommittee_1148 ~v0 v1 = du_isUpdateCommittee_1148 v1
du_isUpdateCommittee_1148 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isUpdateCommittee_1148 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_694
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_696 v1 v2 v3
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
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_698 v1 v2
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_700 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_702 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_704 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_706
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties.needsPolicy₁
d_needsPolicy'8321'_1170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_needsPolicy'8321'_1170 ~v0 v1 = du_needsPolicy'8321'_1170 v1
du_needsPolicy'8321'_1170 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_needsPolicy'8321'_1170 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_694
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_696 v1 v2 v3
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_698 v1 v2
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_700 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_702 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe
                      MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v1) erased)))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_704 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_706
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties.needsPolicy₂
d_needsPolicy'8322'_1192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_needsPolicy'8322'_1192 ~v0 v1 = du_needsPolicy'8322'_1192 v1
du_needsPolicy'8322'_1192 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_needsPolicy'8322'_1192 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_694
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_696 v1 v2 v3
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_698 v1 v2
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_700 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_702 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_704 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe
                      MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v1) erased)))
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_706
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties.hasPrev
d_hasPrev_1216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasPrev_1216 ~v0 v1 v2 = du_hasPrev_1216 v1 v2
du_hasPrev_1216 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_hasPrev_1216 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_6733 v2 v3 v4 v5 v6
        -> case coe v5 of
             MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_694
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_696 v7 v8 v9
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_698 v7 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_700 v7
               -> let v8
                        = coe
                            MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1098 (coe v7)
                            (coe v1) in
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
             MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_702 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_704 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.GovernanceActions.C_Info_706
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties.validHFAction?
d_validHFAction'63'_1250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_validHFAction'63'_1250 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_GovProposal'46'constructor_6385 v4 v5 v6 v7 v8 v9
        -> case coe v4 of
             MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_694
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_696 v10 v11 v12
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_698 v10 v11
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_700 v10
               -> case coe v3 of
                    MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2097 v11 v12 v13 v14 v15
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
                                                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202
                                                   (coe v0)))
                                             (coe
                                                (\ v18 ->
                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                             (coe v17) (coe v5))
                                          (coe
                                             MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1098
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
                                                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202
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
                                                        du_hasPrev_1216
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
             MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_702 v10
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_704 v10
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.GovernanceActions.C_Info_706
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties.Computational-GOV'
d_Computational'45'GOV''_1338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV''_1338 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_1662 (coe v0))
-- Ledger.Gov.Properties._.Go.GoVote.computeProof
d_computeProof_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1378 v0 v1 v2 v3
  = let v4
          = coe
              d_lookupActionId_1130 v0
              (MAlonzo.Code.Ledger.Gov.d_pparams_1022
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_746 (coe v3)))
              (MAlonzo.Code.Ledger.GovernanceActions.d_gid_744 (coe v3)) v2 in
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
                                                      MAlonzo.Code.Ledger.GovernanceActions.C_GovVote'46'constructor_6015 v15 v16 v17 v18
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
                                                                              MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_6733
                                                                              (let v20
                                                                                     = coe
                                                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                         (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202
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
                                                                                                                                                          MAlonzo.Code.Ledger.GovernanceActions.d_votes_790
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
                                                                                                                                                                   MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                                                                                                                            (coe
                                                                                                                                                                               v0))))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1242
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
                                                                                                                                                                  MAlonzo.Code.Ledger.GovernanceActions.d_votes_790
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
                                                                                                                                                                           MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800)
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                                                                                                                                    (coe
                                                                                                                                                                                       v0))))
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1242
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
                                                                                                                                    MAlonzo.Code.Ledger.GovernanceActions.d_votes_790
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
                                                                                                                                                           MAlonzo.Code.Ledger.GovernanceActions.d_votes_790
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
                                                                                                                                                                    MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800)
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                                                                                                                             (coe
                                                                                                                                                                                v0))))
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1242
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
                                                                                                                                                                   MAlonzo.Code.Ledger.GovernanceActions.d_votes_790
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
                                                                                                                                                                            MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800)
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v0))))
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1242
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
                                                                                                                                     MAlonzo.Code.Ledger.GovernanceActions.d_votes_790
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                        (coe
                                                                                                                                           v19))
                                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_792
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                    (coe v19)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_794
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                    (coe v19)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.GovernanceActions.d_action_796
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                    (coe v19)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_798
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                    (coe v19))))))
                                                                   (coe v2))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Gov.C_GOV'45'Vote_1590
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
                             ("\172\nAny\n(\955 .patternInTele0 \8594\n   .Ledger.GovernanceActions.GovVote.gid sig \8801 .proj\8321 .patternInTele0\n   \215\n   canVote (.Ledger.Gov.GovEnv.pparams (.proj\8321 \915))\n   (.Ledger.GovernanceActions.GovActionState.action\n    (.proj\8322 .patternInTele0))\n   (.proj\8321 (.Ledger.GovernanceActions.GovVote.voter sig)))\ns"
                              ::
                              Data.Text.Text)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Gov.Properties._.Go.GoVote.completeness
d_completeness_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Gov.T__'8866'_'8640''10631'_'44'GOV'''10632'__1030 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1394 = erased
-- Ledger.Gov.Properties._.Go.GoProp._
d___1514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d___1514 v0 ~v1 ~v2 ~v3 = du___1514 v0
du___1514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du___1514 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_718
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))
-- Ledger.Gov.Properties._.Go.GoProp.H
d_H_1516 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_H_1516 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               du___1514 v0
               (MAlonzo.Code.Ledger.GovernanceActions.d_action_766 (coe v3)))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                  (coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_772 (coe v3))
                  (coe
                     MAlonzo.Code.Ledger.PParams.d_govActionDeposit_354
                     (coe
                        MAlonzo.Code.Ledger.Gov.d_pparams_1022
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     d_validHFAction'63'_1250 (coe v0) (coe v3) (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Gov.d_enactState_1026
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                           (coe
                              du_needsPolicy'8321'_1170
                              (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_766 (coe v3)))
                           (coe
                              du_needsPolicy'8322'_1192
                              (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_766 (coe v3))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                           (coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_770 (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.Gov.d_ppolicy_1024
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Ledger.Gov.d_hasParent'63'''_1382 (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Gov.d_enactState_1026
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                           (coe v2)
                           (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_766 (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_768 (coe v3)))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Address.d_net_82
                              (coe
                                 MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_774 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_networkId_2364 (coe v0)))))))))
      (coe
         du_isUpdateCommittee_1148
         (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_766 (coe v3)))
-- Ledger.Gov.Properties._.Go.GoProp.computeProof
d_computeProof_1522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1522 v0 v1 v2 v3
  = let v4 = d_H_1516 (coe v0) (coe v1) (coe v2) (coe v3) in
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
                                                                        MAlonzo.Code.Ledger.Gov.C_HasParent''_1372 v24
                                                                          -> case coe v3 of
                                                                               MAlonzo.Code.Ledger.GovernanceActions.C_GovProposal'46'constructor_6385 v25 v26 v27 v28 v29 v30
                                                                                 -> case coe v6 of
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
                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                   erased
                                                                                                                                                   erased
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                                                                                                                      (coe
                                                                                                                                                         (\ v41 ->
                                                                                                                                                            coe
                                                                                                                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
                                                                                                                                                                 (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528
                                                                                                                                                                       (coe
                                                                                                                                                                          v0)))
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                                                                                                                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528
                                                                                                                                                                          (coe
                                                                                                                                                                             v0)))
                                                                                                                                                                    (\ v42
                                                                                                                                                                       v43 ->
                                                                                                                                                                       v42)
                                                                                                                                                                    (MAlonzo.Code.Ledger.Gov.d_epoch_1020
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
                                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528
                                                                                                                                                                          (coe
                                                                                                                                                                             v0)))
                                                                                                                                                                    (MAlonzo.Code.Ledger.Gov.d_epoch_1020
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                          (coe
                                                                                                                                                                             v1)))
                                                                                                                                                                    v41))
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                                                                                    (coe
                                                                                                                                                                       (\ v42 ->
                                                                                                                                                                          coe
                                                                                                                                                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                                                                                            (let v43
                                                                                                                                                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v0))) in
                                                                                                                                                                             coe
                                                                                                                                                                               (let v44
                                                                                                                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1242
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
                                                                                                                                                                               MAlonzo.Code.Axiom.Set.du_'8709'_430
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                                                                                                                                                                    (let v42
                                                                                                                                                                           = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                                                                                                     coe
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Axiom.Set.du__'8745'__692
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                             (coe
                                                                                                                                                                                v42))
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                                             erased
                                                                                                                                                                             (let v43
                                                                                                                                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 v0))) in
                                                                                                                                                                              coe
                                                                                                                                                                                (let v44
                                                                                                                                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 v0)) in
                                                                                                                                                                                 coe
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v43)
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v44)))))
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                                                                                                             (coe
                                                                                                                                                                                v34))
                                                                                                                                                                          (coe
                                                                                                                                                                             v36))))
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                                                                                    (coe
                                                                                                                                                                       (\ v42 ->
                                                                                                                                                                          coe
                                                                                                                                                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                                                                                            (let v43
                                                                                                                                                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v0))) in
                                                                                                                                                                             coe
                                                                                                                                                                               (let v44
                                                                                                                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1242
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
                                                                                                                                                                                   = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                                                                                                             coe
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.du__'8745'__692
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v43))
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                                                     erased
                                                                                                                                                                                     (let v44
                                                                                                                                                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v0))) in
                                                                                                                                                                                      coe
                                                                                                                                                                                        (let v45
                                                                                                                                                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v0)) in
                                                                                                                                                                                         coe
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 v44)
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 v45)))))
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v34))
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v36)))))
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Axiom.Set.du_'8709'_430
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))))
                                                                                                                                                   v40))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Interface.IsSet.du_range_542
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                                                                              (coe
                                                                                                                                                 v34))) in
                                                                                                                              coe
                                                                                                                                (case coe
                                                                                                                                        v40 of
                                                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v41 v42
                                                                                                                                     -> if coe
                                                                                                                                             v41
                                                                                                                                          then case coe
                                                                                                                                                      v42 of
                                                                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v43
                                                                                                                                                   -> coe
                                                                                                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Ledger.Gov.du_insertGovAction_1094
                                                                                                                                                              (coe
                                                                                                                                                                 v2)
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.Gov.d_txid_1018
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                          (coe
                                                                                                                                                                             v1)))
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                       (coe
                                                                                                                                                                          v1)))
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_6733
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
                                                                                                                                                                          (\ v44
                                                                                                                                                                             v45
                                                                                                                                                                             v46
                                                                                                                                                                             v47
                                                                                                                                                                             v48 ->
                                                                                                                                                                             coe
                                                                                                                                                                               MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
                                                                                                                                                                    (coe
                                                                                                                                                                       v29)
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.Types.Epoch.du_additionVia_8
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528
                                                                                                                                                                             (coe
                                                                                                                                                                                v0)))
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.PParams.d_govActionLifetime_352
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Gov.d_pparams_1022
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                (coe
                                                                                                                                                                                   v1))))
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Gov.d_epoch_1020
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                             (coe
                                                                                                                                                                                v1))))
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_696
                                                                                                                                                                       (coe
                                                                                                                                                                          v34)
                                                                                                                                                                       (coe
                                                                                                                                                                          v36)
                                                                                                                                                                       (coe
                                                                                                                                                                          v38))
                                                                                                                                                                    (coe
                                                                                                                                                                       v26))))
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Ledger.Gov.C_GOV'45'Propose_1680
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
                                                                                                                                                                             (\ v44
                                                                                                                                                                                v45
                                                                                                                                                                                v46
                                                                                                                                                                                v47
                                                                                                                                                                                v48 ->
                                                                                                                                                                                coe
                                                                                                                                                                                  v43
                                                                                                                                                                                  v48))
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                             (coe
                                                                                                                                                                                v14)
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                (coe
                                                                                                                                                                                   v24)
                                                                                                                                                                                (coe
                                                                                                                                                                                   v19)))))))))
                                                                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                          else coe
                                                                                                                                                 seq
                                                                                                                                                 (coe
                                                                                                                                                    v42)
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                                    (coe
                                                                                                                                                       ("\172\nInterface.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 e \8594\n   (preoEpoch HasPreorder.< .Ledger.Gov.GovEnv.epoch (.proj\8321 \915)) e \215\n   (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8801\7497\n    (List-Model\7496 Axiom.Set.Theory\7496._.Intersection.\8745\n     .Axiom.Set.Theory\7496.\8712-sp List-Model\7496)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) new) rem)\n   (.HasEmptySet.\8709\n    (Interface.HasEmptySet.Instances.HasEmptySet-Set\n     (.Axiom.Set.Theory\7496.th List-Model\7496))))\n(Interface.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496) new)"
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
                                                                                                             MAlonzo.Code.Ledger.Gov.du_insertGovAction_1094
                                                                                                             (coe
                                                                                                                v2)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Gov.d_txid_1018
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                         (coe
                                                                                                                            v1)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                      (coe
                                                                                                                         v1)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_6733
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
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528
                                                                                                                            (coe
                                                                                                                               v0)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.PParams.d_govActionLifetime_352
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Gov.d_pparams_1022
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  v1))))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Gov.d_epoch_1020
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                            (coe
                                                                                                                               v1))))
                                                                                                                   (coe
                                                                                                                      v25)
                                                                                                                   (coe
                                                                                                                      v26))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Gov.C_GOV'45'Propose_1680
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
                                                                                                                            (\ v33
                                                                                                                               v34
                                                                                                                               v35
                                                                                                                               v36
                                                                                                                               v37 ->
                                                                                                                               coe
                                                                                                                                 MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                            (coe
                                                                                                                               v14)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                               (coe
                                                                                                                                  v24)
                                                                                                                               (coe
                                                                                                                                  v19))))))))))
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
                                               du___1514 v0
                                               (MAlonzo.Code.Ledger.GovernanceActions.d_action_766
                                                  (coe v3)))
                                            erased in
                                  coe
                                    (case coe v9 of
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                                         -> coe
                                              ("\172\nLedger.GovernanceActions.actionWellFormed\n(TransactionStructure.govStructure txs)\n(.Ledger.GovernanceActions.GovProposal.action prop)"
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
                                                            MAlonzo.Code.Ledger.GovernanceActions.d_deposit_772
                                                            (coe v3))
                                                         (coe
                                                            MAlonzo.Code.Ledger.PParams.d_govActionDeposit_354
                                                            (coe
                                                               MAlonzo.Code.Ledger.Gov.d_pparams_1022
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v1)))))
                                                      erased in
                                            coe
                                              (case coe v11 of
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                                   -> coe
                                                        ("\172\n.Ledger.GovernanceActions.GovProposal.deposit prop \8801\n.Ledger.PParams.PParams.govActionDeposit\n(.Ledger.Gov.GovEnv.pparams (.proj\8321 \915))"
                                                         ::
                                                         Data.Text.Text)
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                                   -> let v13
                                                            = coe
                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                (coe
                                                                   d_validHFAction'63'_1250 (coe v0)
                                                                   (coe v3) (coe v2)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Gov.d_enactState_1026
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v1))))
                                                                erased in
                                                      coe
                                                        (case coe v13 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                             -> coe
                                                                  ("\172\nLedger.Gov.validHFAction txs prop s\n(.Ledger.Gov.GovEnv.enactState (.proj\8321 \915))"
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
                                                                                   du_needsPolicy'8321'_1170
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.GovernanceActions.d_action_766
                                                                                      (coe v3)))
                                                                                (coe
                                                                                   du_needsPolicy'8322'_1192
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.GovernanceActions.d_action_766
                                                                                      (coe v3))))
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                (coe
                                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                                         (coe v0))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.GovernanceActions.d_policy_770
                                                                                   (coe v3))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Gov.d_ppolicy_1024
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe v1)))))
                                                                          erased in
                                                                coe
                                                                  (case coe v15 of
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                       -> coe
                                                                            ("\172\n((z\n  : \8707-syntax\n    (\955 u \8594\n       .Ledger.GovernanceActions.GovProposal.action prop \8801\n       ChangePParams u)\n    \8846\n    \8707-syntax\n    (\955 w \8594\n       .Ledger.GovernanceActions.GovProposal.action prop \8801\n       TreasuryWdrl w)) \8594\n .Ledger.GovernanceActions.GovProposal.policy prop \8801\n .Ledger.Gov.GovEnv.ppolicy (.proj\8321 \915))"
                                                                             ::
                                                                             Data.Text.Text)
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                       -> let v17
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Gov.d_hasParent'63'''_1382
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Gov.d_enactState_1026
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v1)))
                                                                                       (coe v2)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.GovernanceActions.d_action_766
                                                                                          (coe v3))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_768
                                                                                          (coe v3)))
                                                                                    erased in
                                                                          coe
                                                                            (case coe v17 of
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v18
                                                                                 -> coe
                                                                                      ("\172\nhasParent' (.Ledger.Gov.GovEnv.enactState (.proj\8321 \915)) s\n(.Ledger.GovernanceActions.GovProposal.action prop)\n(.Ledger.GovernanceActions.GovProposal.prevAction prop)"
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v18
                                                                                 -> coe
                                                                                      ("\172\n.Ledger.Address.RwdAddr.net\n(.Ledger.GovernanceActions.GovProposal.returnAddr prop)\n\8801 .TransactionStructure.networkId txs"
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Gov.Properties._.Go.GoProp.completeness
d_completeness_1574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Gov.T__'8866'_'8640''10631'_'44'GOV'''10632'__1030 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1574 = erased
-- Ledger.Gov.Properties._.Go.computeProof
d_computeProof_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1662 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
        -> coe d_computeProof_1378 (coe v0) (coe v1) (coe v2) (coe v4)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
        -> coe d_computeProof_1522 (coe v0) (coe v1) (coe v2) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties._.Go.completeness
d_completeness_1672 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Gov.T__'8866'_'8640''10631'_'44'GOV'''10632'__1030 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1672 = erased
-- Ledger.Gov.Properties.Computational-GOV
d_Computational'45'GOV_1678 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV_1678 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1100
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
      (coe d_Computational'45'GOV''_1338 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
-- Ledger.Gov.Properties.allEnactable-singleton
d_allEnactable'45'singleton_1686 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_allEnactable'45'singleton_1686 ~v0 v1 v2 v3 ~v4
  = du_allEnactable'45'singleton_1686 v1 v2 v3
du_allEnactable'45'singleton_1686 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_allEnactable'45'singleton_1686 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
      (coe du_helper_1712 (coe v0) (coe v1) (coe v2))
      (coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)
-- Ledger.Gov.Properties._.helper
d_helper_1712 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_helper_1712 ~v0 v1 v2 v3 ~v4 = du_helper_1712 v1 v2 v3
du_helper_1712 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 -> AgdaAny
du_helper_1712 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Ledger.Enact.du_getHashES_868 (coe v2)
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.d_action_796 (coe v1)) in
    coe
      (let v4
             = coe
                 MAlonzo.Code.Ledger.Enact.du_getHash_856
                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_796 (coe v1))
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_798 (coe v1)) in
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
