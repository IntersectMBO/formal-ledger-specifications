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

module MAlonzo.Code.Ledger.Gov where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Ext
import qualified MAlonzo.Code.Data.List.Ext.Properties
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Gov._._+ᵉ_
d__'43''7497'__14 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__14 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_580
            (coe v1)))
-- Ledger.Gov._.DecEq-Credential
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
-- Ledger.Gov._.Epoch
d_Epoch_114 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_114 = erased
-- Ledger.Gov._.PParams
d_PParams_160 a0 = ()
-- Ledger.Gov._.RwdAddr
d_RwdAddr_182 a0 a1 a2 a3 = ()
-- Ledger.Gov._.ScriptHash
d_ScriptHash_196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_196 = erased
-- Ledger.Gov._.TxId
d_TxId_260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxId_260 = erased
-- Ledger.Gov._.preoEpoch
d_preoEpoch_346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_346 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_580
            (coe v1)))
-- Ledger.Gov._.pvCanFollow
d_pvCanFollow_350 a0 a1 a2 = ()
-- Ledger.Gov._.PParams.Emax
d_Emax_470 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_470 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_334 (coe v0)
-- Ledger.Gov._.PParams.a
d_a_472 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_472 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_318 (coe v0)
-- Ledger.Gov._.PParams.a0
d_a0_474 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_474 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_338 (coe v0)
-- Ledger.Gov._.PParams.b
d_b_476 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_476 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_320 (coe v0)
-- Ledger.Gov._.PParams.ccMaxTermLength
d_ccMaxTermLength_478 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_478 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_350 (coe v0)
-- Ledger.Gov._.PParams.ccMinSize
d_ccMinSize_480 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_480 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_348 (coe v0)
-- Ledger.Gov._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_482 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_482 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_326 (coe v0)
-- Ledger.Gov._.PParams.collateralPercentage
d_collateralPercentage_484 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_484 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_340 (coe v0)
-- Ledger.Gov._.PParams.costmdls
d_costmdls_486 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_486 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_342 (coe v0)
-- Ledger.Gov._.PParams.drepActivity
d_drepActivity_488 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_488 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_358 (coe v0)
-- Ledger.Gov._.PParams.drepDeposit
d_drepDeposit_490 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_490 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_356 (coe v0)
-- Ledger.Gov._.PParams.drepThresholds
d_drepThresholds_492 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_492 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v0)
-- Ledger.Gov._.PParams.govActionDeposit
d_govActionDeposit_494 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_494 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_354 (coe v0)
-- Ledger.Gov._.PParams.govActionLifetime
d_govActionLifetime_496 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_496 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_352 (coe v0)
-- Ledger.Gov._.PParams.keyDeposit
d_keyDeposit_498 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_498 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_322 (coe v0)
-- Ledger.Gov._.PParams.maxBlockExUnits
d_maxBlockExUnits_500 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_500 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_310 (coe v0)
-- Ledger.Gov._.PParams.maxBlockSize
d_maxBlockSize_502 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_502 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_302 (coe v0)
-- Ledger.Gov._.PParams.maxCollateralInputs
d_maxCollateralInputs_504 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_504 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_314 (coe v0)
-- Ledger.Gov._.PParams.maxHeaderSize
d_maxHeaderSize_506 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_506 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_306 (coe v0)
-- Ledger.Gov._.PParams.maxTxExUnits
d_maxTxExUnits_508 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_508 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_308 (coe v0)
-- Ledger.Gov._.PParams.maxTxSize
d_maxTxSize_510 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_510 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_304 (coe v0)
-- Ledger.Gov._.PParams.maxValSize
d_maxValSize_512 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_512 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_312 (coe v0)
-- Ledger.Gov._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_514 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_514 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_330
      (coe v0)
-- Ledger.Gov._.PParams.minUTxOValue
d_minUTxOValue_516 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_516 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_332 (coe v0)
-- Ledger.Gov._.PParams.nopt
d_nopt_518 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_518 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_336 (coe v0)
-- Ledger.Gov._.PParams.poolDeposit
d_poolDeposit_520 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_520 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_324 (coe v0)
-- Ledger.Gov._.PParams.poolThresholds
d_poolThresholds_522 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_522 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_344 (coe v0)
-- Ledger.Gov._.PParams.prices
d_prices_524 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_524 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_328 (coe v0)
-- Ledger.Gov._.PParams.pv
d_pv_526 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_526 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_316 (coe v0)
-- Ledger.Gov._.RwdAddr.net
d_net_640 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_640 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Gov._.RwdAddr.stake
d_stake_642 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_642 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Gov._.DecEq-GovRole
d_DecEq'45'GovRole_672 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_672 ~v0 = du_DecEq'45'GovRole_672
du_DecEq'45'GovRole_672 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_672
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800
-- Ledger.Gov._.GovAction
d_GovAction_678 a0 = ()
-- Ledger.Gov._.GovActionID
d_GovActionID_680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_680 = erased
-- Ledger.Gov._.GovActionState
d_GovActionState_682 a0 = ()
-- Ledger.Gov._.GovProposal
d_GovProposal_684 a0 = ()
-- Ledger.Gov._.GovVote
d_GovVote_688 a0 = ()
-- Ledger.Gov._.NeedsHash
d_NeedsHash_694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_NeedsHash_694 = erased
-- Ledger.Gov._.Vote
d_Vote_710 a0 = ()
-- Ledger.Gov._.Voter
d_Voter_712 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_712 = erased
-- Ledger.Gov._.actionWellFormed
d_actionWellFormed_718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_actionWellFormed_718 = erased
-- Ledger.Gov._.GovActionState.action
d_action_754 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_754 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_796 (coe v0)
-- Ledger.Gov._.GovActionState.expiresIn
d_expiresIn_756 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  AgdaAny
d_expiresIn_756 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_794 (coe v0)
-- Ledger.Gov._.GovActionState.prevAction
d_prevAction_758 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  AgdaAny
d_prevAction_758 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_798 (coe v0)
-- Ledger.Gov._.GovActionState.returnAddr
d_returnAddr_760 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_760 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_792 (coe v0)
-- Ledger.Gov._.GovActionState.votes
d_votes_762 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_762 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_790 (coe v0)
-- Ledger.Gov._.GovProposal.action
d_action_766 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_766 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_766 (coe v0)
-- Ledger.Gov._.GovProposal.anchor
d_anchor_768 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_768 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_776 (coe v0)
-- Ledger.Gov._.GovProposal.deposit
d_deposit_770 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 -> Integer
d_deposit_770 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_772 (coe v0)
-- Ledger.Gov._.GovProposal.policy
d_policy_772 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  Maybe AgdaAny
d_policy_772 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_770 (coe v0)
-- Ledger.Gov._.GovProposal.prevAction
d_prevAction_774 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 -> AgdaAny
d_prevAction_774 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_768 (coe v0)
-- Ledger.Gov._.GovProposal.returnAddr
d_returnAddr_776 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_776 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_774 (coe v0)
-- Ledger.Gov._.GovVote.anchor
d_anchor_788 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_788 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_750 (coe v0)
-- Ledger.Gov._.GovVote.gid
d_gid_790 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_790 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_744 (coe v0)
-- Ledger.Gov._.GovVote.vote
d_vote_792 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_726
d_vote_792 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_748 (coe v0)
-- Ledger.Gov._.GovVote.voter
d_voter_794 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_794 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_746 (coe v0)
-- Ledger.Gov._.EnactState
d_EnactState_832 a0 = ()
-- Ledger.Gov._.EnactState.cc
d_cc_868 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_868 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v0)
-- Ledger.Gov._.EnactState.constitution
d_constitution_870 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_870 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_842 (coe v0)
-- Ledger.Gov._.EnactState.pparams
d_pparams_872 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_872 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v0)
-- Ledger.Gov._.EnactState.pv
d_pv_874 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_874 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_844 (coe v0)
-- Ledger.Gov._.EnactState.withdrawals
d_withdrawals_876 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_876 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_848 (coe v0)
-- Ledger.Gov._.canVote
d_canVote_924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 -> ()
d_canVote_924 = erased
-- Ledger.Gov.GovState
d_GovState_1004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovState_1004 = erased
-- Ledger.Gov.GovEnv
d_GovEnv_1006 a0 = ()
data T_GovEnv_1006
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_1028 AgdaAny AgdaAny
                                                     MAlonzo.Code.Ledger.PParams.T_PParams_242
                                                     (Maybe AgdaAny)
                                                     MAlonzo.Code.Ledger.Enact.T_EnactState_828
-- Ledger.Gov.GovEnv.txid
d_txid_1018 :: T_GovEnv_1006 -> AgdaAny
d_txid_1018 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_1028 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.epoch
d_epoch_1020 :: T_GovEnv_1006 -> AgdaAny
d_epoch_1020 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_1028 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.pparams
d_pparams_1022 ::
  T_GovEnv_1006 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1022 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_1028 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.ppolicy
d_ppolicy_1024 :: T_GovEnv_1006 -> Maybe AgdaAny
d_ppolicy_1024 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_1028 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.enactState
d_enactState_1026 ::
  T_GovEnv_1006 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_1026 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_1028 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov._⊢_⇀⦇_,GOV'⦈_
d__'8866'_'8640''10631'_'44'GOV'''10632'__1030 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOV'''10632'__1030
  = C_GOV'45'Vote_1590 MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOV'45'Propose_1680 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Gov._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1032 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GovEnv_1006 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1032 = erased
-- Ledger.Gov.govActionPriority
d_govActionPriority_1060 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> Integer
d_govActionPriority_1060 ~v0 v1 = du_govActionPriority_1060 v1
du_govActionPriority_1060 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> Integer
du_govActionPriority_1060 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_694
        -> coe (0 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_696 v1 v2 v3
        -> coe (1 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_698 v1 v2
        -> coe (2 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_700 v1
        -> coe (3 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_702 v1
        -> coe (4 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_704 v1
        -> coe (5 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_706
        -> coe (6 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov._∼_
d__'8764'__1062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> ()
d__'8764'__1062 = erased
-- Ledger.Gov._≈_
d__'8776'__1068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d__'8776'__1068 = erased
-- Ledger.Gov._∼?_
d__'8764''63'__1078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8764''63'__1078 ~v0 v1 v2 = du__'8764''63'__1078 v1 v2
du__'8764''63'__1078 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8764''63'__1078 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
      (coe
         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
            (coe
               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688 (coe v0)
               (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688 (coe v1)
               (coe (1 :: Integer))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
            (coe
               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688 (coe v0)
               (coe (1 :: Integer)))
            (coe
               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688 (coe v1)
               (coe (0 :: Integer)))))
-- Ledger.Gov._≈?_
d__'8776''63'__1088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8776''63'__1088 ~v0 v1 v2 = du__'8776''63'__1088 v1 v2
du__'8776''63'__1088 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8776''63'__1088 v0 v1
  = coe
      du__'8764''63'__1078 (coe du_govActionPriority_1060 (coe v0))
      (coe du_govActionPriority_1060 (coe v1))
-- Ledger.Gov.insertGovAction
d_insertGovAction_1094 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_insertGovAction_1094 ~v0 v1 v2 = du_insertGovAction_1094 v1 v2
du_insertGovAction_1094 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_insertGovAction_1094 v0 v1
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1)
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> case coe v1 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                      -> coe
                           MAlonzo.Code.Interface.ToBool.du_if_then_else__46
                           (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45'Dec_98)
                           (coe
                              MAlonzo.Code.Interface.HasOrder.du__'8804''63'__60
                              (\ v8 v9 ->
                                 coe
                                   MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                   (coe
                                      MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802 (coe v8)
                                      (coe v9)))
                              (coe
                                 du_govActionPriority_1060
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_796 (coe v5)))
                              (coe
                                 du_govActionPriority_1060
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_796 (coe v7))))
                           (coe
                              MAlonzo.Code.Level.C_lift_20
                              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                                   (coe du_insertGovAction_1094 (coe v3) (coe v1))))
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v0)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.addVote
d_addVote_1108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_726 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addVote_1108 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
      () erased
      (coe du_modifyVotes_1122 (coe v0) (coe v2) (coe v3) (coe v4)) v1
-- Ledger.Gov._.modifyVotes
d_modifyVotes_1122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_modifyVotes_1122 v0 ~v1 v2 v3 v4 v5
  = du_modifyVotes_1122 v0 v2 v3 v4 v5
du_modifyVotes_1122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_modifyVotes_1122 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_6733
         (coe
            MAlonzo.Code.Interface.ToBool.du_if_then_else__46
            (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe
                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                  (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) (coe v1))
            (coe
               (\ v5 ->
                  coe
                    MAlonzo.Code.Axiom.Set.Map.du_insert_906
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1458
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800)
                          (let v6
                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                           (coe v0))) in
                           coe
                             (let v7
                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                           (coe v0)) in
                              coe
                                (coe
                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v6)
                                   (coe v7))))))
                    (coe
                       MAlonzo.Code.Ledger.GovernanceActions.d_votes_790
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                    (coe v2) (coe v3)))
            (coe
               (\ v5 ->
                  MAlonzo.Code.Ledger.GovernanceActions.d_votes_790
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_792
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_794
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_action_796
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_798
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
-- Ledger.Gov.mkGovStatePair
d_mkGovStatePair_1132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkGovStatePair_1132 ~v0 v1 v2 v3 v4 v5
  = du_mkGovStatePair_1132 v1 v2 v3 v4 v5
du_mkGovStatePair_1132 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkGovStatePair_1132 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_6733
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
         (coe v2) (coe v0) (coe v3) (coe v4))
-- Ledger.Gov.addAction
d_addAction_1146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addAction_1146 ~v0 v1 v2 v3 v4 v5 v6
  = du_addAction_1146 v1 v2 v3 v4 v5 v6
du_addAction_1146 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_addAction_1146 v0 v1 v2 v3 v4 v5
  = coe
      du_insertGovAction_1094 (coe v0)
      (coe
         du_mkGovStatePair_1132 (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- Ledger.Gov.validHFAction
d_validHFAction_1160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 -> ()
d_validHFAction_1160 = erased
-- Ledger.Gov.getAidPairsList
d_getAidPairsList_1178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsList_1178 ~v0 v1 = du_getAidPairsList_1178 v1
du_getAidPairsList_1178 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsList_1178 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_mapMaybe_258
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Data.Maybe.Base.du_map_64
              (\ v2 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)) (coe v2))
              (coe
                 MAlonzo.Code.Ledger.Enact.du_getHash_856
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_796
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_798
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))))
      (coe v0)
-- Ledger.Gov._connects_to_
d__connects_to__1190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__connects_to__1190 = erased
-- Ledger.Gov.enactable
d_enactable_1206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_enactable_1206 = erased
-- Ledger.Gov.allEnactable
d_allEnactable_1224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_allEnactable_1224 = erased
-- Ledger.Gov.hasParentE
d_hasParentE_1230 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_hasParentE_1230 = erased
-- Ledger.Gov.hasParent
d_hasParent_1244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny -> ()
d_hasParent_1244 = erased
-- Ledger.Gov.hasParentE?
d_hasParentE'63'_1288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParentE'63'_1288 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Enact.du_getHashES_868 (coe v1) (coe v3) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
           -> coe
                MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0)))
                (coe
                   (\ v6 ->
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                (coe v5) (coe v2)
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Gov.hasParent?
d_hasParent'63'_1322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParent'63'_1322 v0 v1 v2 v3 v4
  = let v5
          = coe MAlonzo.Code.Ledger.Enact.du_getHash_856 (coe v3) (coe v4) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
                (coe d_hasParentE'63'_1288 (coe v0) (coe v1) (coe v6) (coe v3))
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
                   (coe
                      (\ v7 ->
                         coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                           (coe
                              MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                              (coe
                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0)))
                              (coe
                                 (\ v8 ->
                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)) (coe v6))
                           (coe
                              du__'8776''63'__1088
                              (coe
                                 MAlonzo.Code.Ledger.GovernanceActions.d_action_796
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)))
                              (coe v3))))
                   (coe v2))
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Gov.hasParent'
d_hasParent''_1362 a0 a1 a2 a3 a4 = ()
newtype T_hasParent''_1362 = C_HasParent''_1372 AgdaAny
-- Ledger.Gov.hasParent?'
d_hasParent'63'''_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_hasParent'63'''_1382 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
         (coe C_HasParent''_1372)
         (coe
            (\ v5 ->
               case coe v5 of
                 C_HasParent''_1372 v10 -> coe v10
                 _ -> MAlonzo.RTE.mazUnreachableError))
         (coe
            d_hasParent'63'_1322 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
-- Ledger.Gov.[_connects_to_?]
d_'91'_connects_to_'63''93'_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'91'_connects_to_'63''93'_1394 v0 v1 v2 v3
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
             (coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0)))
             (coe
                (\ v4 ->
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
             (coe v2) (coe v3)
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                       (coe
                          MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0)))
                          (coe
                             (\ v8 ->
                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                          (coe v6) (coe v2))
                       (coe
                          d_'91'_connects_to_'63''93'_1394 (coe v0) (coe v5) (coe v7)
                          (coe v3)))
                    (coe
                       d_'91'_connects_to_'63''93'_1394 (coe v0) (coe v5) (coe v2)
                       (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.any?-connecting-subperm
d_any'63''45'connecting'45'subperm_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63''45'connecting'45'subperm_1418 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
              (coe
                 MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid.du_unique'63'_64
                 (coe
                    MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
                    (coe
                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (coe
                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                             (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                          (coe
                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                             (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))
                 v4)
              (coe
                 d_'91'_connects_to_'63''93'_1394 (coe v0) (coe v4) (coe v1)
                 (coe v2))))
      (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v3))
-- Ledger.Gov.∃?-connecting-subperm
d_'8707''63''45'connecting'45'subperm_1436 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subperm_1436 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext.du_map'8242''8660'_16
         (coe
            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
            (coe
               MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core.du_Any'8596'_144
               (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v3)))))
      (d_any'63''45'connecting'45'subperm_1418
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Gov.∃?-connecting-subset
d_'8707''63''45'connecting'45'subset_1448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subset_1448 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext.du_map'8242''8660'_16
         (coe
            MAlonzo.Code.Data.List.Ext.Properties.du_'8707'uniqueSubset'8660''8707'uniqueSubperm_1104
            (coe ()) (coe v3)))
      (d_'8707''63''45'connecting'45'subperm_1436
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Gov.enactable?
d_enactable'63'_1458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_enactable'63'_1458 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Ledger.Enact.du_getHashES_868 (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.d_action_796 (coe v5)) in
           coe
             (case coe v6 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                  -> coe
                       MAlonzo.Code.Function.Bundles.d_from_1726
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8707''63''45'sublist'45''8660'_1056
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1458
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (coe v2))
                       (d_'8707''63''45'connecting'45'subset_1448
                          (coe v0) (coe v4) (coe v7) (coe v2))
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.allEnactable?
d_allEnactable'63'_1494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_allEnactable'63'_1494 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.du_all'63'_506
      (coe
         d_enactable'63'_1458 (coe v0) (coe v1)
         (coe du_getAidPairsList_1178 (coe v2)))
      (coe v2)
-- Ledger.Gov.allEnactable'
d_allEnactable''_1502 a0 a1 a2 = ()
newtype T_allEnactable''_1502
  = C_AllEnactable''_1508 MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
-- Ledger.Gov.allEnactable?'
d_allEnactable'63'''_1514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_allEnactable'63'''_1514 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
         (coe C_AllEnactable''_1508)
         (coe
            (\ v3 ->
               case coe v3 of
                 C_AllEnactable''_1508 v6 -> coe v6
                 _ -> MAlonzo.RTE.mazUnreachableError))
         (coe d_allEnactable'63'_1494 (coe v0) (coe v1) (coe v2)))
-- Ledger.Gov.maxAllEnactable
d_maxAllEnactable_1520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_maxAllEnactable_1520 v0 v1
  = coe
      MAlonzo.Code.Data.List.Ext.Properties.du_maxsublists'8871'P_958
      (coe d_allEnactable'63'_1494 (coe v0) (coe v1))
-- Ledger.Gov.∈-maxAllEnactable→allEnactable
d_'8712''45'maxAllEnactable'8594'allEnactable_1530 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_'8712''45'maxAllEnactable'8594'allEnactable_1530 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_506
         (d_allEnactable'63'_1494 (coe v0) (coe v1)) v3
         (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_506
               (\ v5 ->
                  coe
                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                    (coe MAlonzo.Code.Data.List.Base.du_length_284 v5)
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du_maxlen_218
                       (coe
                          MAlonzo.Code.Data.List.Ext.Properties.du_sublists'8871'P_952
                          (coe d_allEnactable'63'_1494 (coe v0) (coe v1)) (coe v2))))
               v3
               (coe
                  MAlonzo.Code.Data.List.Base.du_filter_664
                  (coe d_allEnactable'63'_1494 (coe v0) (coe v1))
                  (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)))
               v4)))
-- Ledger.Gov.∈-maxAllEnactable→maxLength
d_'8712''45'maxAllEnactable'8594'maxLength_1550 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8712''45'maxAllEnactable'8594'maxLength_1550 v0 v1 v2 ~v3 ~v4 v5
                                                v6 ~v7
  = du_'8712''45'maxAllEnactable'8594'maxLength_1550 v0 v1 v2 v5 v6
du_'8712''45'maxAllEnactable'8594'maxLength_1550 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8712''45'maxAllEnactable'8594'maxLength_1550 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Ext.Properties.du_'8712''45'maxlen'45''8804'_244
      (coe
         MAlonzo.Code.Data.List.Base.du_filter_664
         (coe d_allEnactable'63'_1494 (coe v0) (coe v1))
         (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)))
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8314'_500
         (d_allEnactable'63'_1494 (coe v0) (coe v1))
         (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)) v3 v4)
-- Ledger.Gov._.enactState
d_enactState_1578 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_39823 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_1578 ~v0 v1 ~v2 ~v3 = du_enactState_1578 v1
du_enactState_1578 ::
  T_GeneralizeTel_39823 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
du_enactState_1578 v0
  = coe
      d_enactState_1026 (coe d_'46'generalizedField'45'Γ_39811 (coe v0))
-- Ledger.Gov._.epoch
d_epoch_1580 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_39823 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  AgdaAny
d_epoch_1580 ~v0 v1 ~v2 ~v3 = du_epoch_1580 v1
du_epoch_1580 :: T_GeneralizeTel_39823 -> AgdaAny
du_epoch_1580 v0
  = coe d_epoch_1020 (coe d_'46'generalizedField'45'Γ_39811 (coe v0))
-- Ledger.Gov._.pparams
d_pparams_1582 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_39823 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1582 ~v0 v1 ~v2 ~v3 = du_pparams_1582 v1
du_pparams_1582 ::
  T_GeneralizeTel_39823 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_1582 v0
  = coe
      d_pparams_1022 (coe d_'46'generalizedField'45'Γ_39811 (coe v0))
-- Ledger.Gov._.ppolicy
d_ppolicy_1584 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_39823 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  Maybe AgdaAny
d_ppolicy_1584 ~v0 v1 ~v2 ~v3 = du_ppolicy_1584 v1
du_ppolicy_1584 :: T_GeneralizeTel_39823 -> Maybe AgdaAny
du_ppolicy_1584 v0
  = coe
      d_ppolicy_1024 (coe d_'46'generalizedField'45'Γ_39811 (coe v0))
-- Ledger.Gov._.txid
d_txid_1586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_39823 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  AgdaAny
d_txid_1586 ~v0 v1 ~v2 ~v3 = du_txid_1586 v1
du_txid_1586 :: T_GeneralizeTel_39823 -> AgdaAny
du_txid_1586 v0
  = coe d_txid_1018 (coe d_'46'generalizedField'45'Γ_39811 (coe v0))
-- Ledger.Gov._.enactState
d_enactState_1596 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_42377 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_1596 ~v0 v1 ~v2 = du_enactState_1596 v1
du_enactState_1596 ::
  T_GeneralizeTel_42377 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
du_enactState_1596 v0
  = coe
      d_enactState_1026 (coe d_'46'generalizedField'45'Γ_42361 (coe v0))
-- Ledger.Gov._.epoch
d_epoch_1598 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_42377 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 -> AgdaAny
d_epoch_1598 ~v0 v1 ~v2 = du_epoch_1598 v1
du_epoch_1598 :: T_GeneralizeTel_42377 -> AgdaAny
du_epoch_1598 v0
  = coe d_epoch_1020 (coe d_'46'generalizedField'45'Γ_42361 (coe v0))
-- Ledger.Gov._.pparams
d_pparams_1600 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_42377 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1600 ~v0 v1 ~v2 = du_pparams_1600 v1
du_pparams_1600 ::
  T_GeneralizeTel_42377 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_1600 v0
  = coe
      d_pparams_1022 (coe d_'46'generalizedField'45'Γ_42361 (coe v0))
-- Ledger.Gov._.ppolicy
d_ppolicy_1602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_42377 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 -> Maybe AgdaAny
d_ppolicy_1602 ~v0 v1 ~v2 = du_ppolicy_1602 v1
du_ppolicy_1602 :: T_GeneralizeTel_42377 -> Maybe AgdaAny
du_ppolicy_1602 v0
  = coe
      d_ppolicy_1024 (coe d_'46'generalizedField'45'Γ_42361 (coe v0))
-- Ledger.Gov._.txid
d_txid_1604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_42377 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 -> AgdaAny
d_txid_1604 ~v0 v1 ~v2 = du_txid_1604 v1
du_txid_1604 :: T_GeneralizeTel_42377 -> AgdaAny
du_txid_1604 v0
  = coe d_txid_1018 (coe d_'46'generalizedField'45'Γ_42361 (coe v0))
-- Ledger.Gov._.govActionDeposit
d_govActionDeposit_1630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_42377 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 -> Integer
d_govActionDeposit_1630 ~v0 v1 ~v2 = du_govActionDeposit_1630 v1
du_govActionDeposit_1630 :: T_GeneralizeTel_42377 -> Integer
du_govActionDeposit_1630 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_354
      (coe
         d_pparams_1022 (coe d_'46'generalizedField'45'Γ_42361 (coe v0)))
-- Ledger.Gov._.govActionLifetime
d_govActionLifetime_1632 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_42377 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 -> Integer
d_govActionLifetime_1632 ~v0 v1 ~v2 = du_govActionLifetime_1632 v1
du_govActionLifetime_1632 :: T_GeneralizeTel_42377 -> Integer
du_govActionLifetime_1632 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionLifetime_352
      (coe
         d_pparams_1022 (coe d_'46'generalizedField'45'Γ_42361 (coe v0)))
-- Ledger.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_39811 ::
  T_GeneralizeTel_39823 -> T_GovEnv_1006
d_'46'generalizedField'45'Γ_39811 v0
  = case coe v0 of
      C_mkGeneralizeTel_39825 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-aid
d_'46'generalizedField'45'aid_39813 ::
  T_GeneralizeTel_39823 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'aid_39813 v0
  = case coe v0 of
      C_mkGeneralizeTel_39825 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-voter
d_'46'generalizedField'45'voter_39815 ::
  T_GeneralizeTel_39823 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voter_39815 v0
  = case coe v0 of
      C_mkGeneralizeTel_39825 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-v
d_'46'generalizedField'45'v_39817 ::
  T_GeneralizeTel_39823 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_726
d_'46'generalizedField'45'v_39817 v0
  = case coe v0 of
      C_mkGeneralizeTel_39825 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-s
d_'46'generalizedField'45's_39819 ::
  T_GeneralizeTel_39823 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_39819 v0
  = case coe v0 of
      C_mkGeneralizeTel_39825 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-k
d_'46'generalizedField'45'k_39821 ::
  T_GeneralizeTel_39823 -> Integer
d_'46'generalizedField'45'k_39821 v0
  = case coe v0 of
      C_mkGeneralizeTel_39825 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GeneralizeTel
d_GeneralizeTel_39823 a0 = ()
data T_GeneralizeTel_39823
  = C_mkGeneralizeTel_39825 T_GovEnv_1006
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Vote_726
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
-- Ledger.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_42361 ::
  T_GeneralizeTel_42377 -> T_GovEnv_1006
d_'46'generalizedField'45'Γ_42361 v0
  = case coe v0 of
      C_mkGeneralizeTel_42379 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-addr
d_'46'generalizedField'45'addr_42363 ::
  T_GeneralizeTel_42377 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_'46'generalizedField'45'addr_42363 v0
  = case coe v0 of
      C_mkGeneralizeTel_42379 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-a
d_'46'generalizedField'45'a_42365 ::
  T_GeneralizeTel_42377 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_'46'generalizedField'45'a_42365 v0
  = case coe v0 of
      C_mkGeneralizeTel_42379 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-p
d_'46'generalizedField'45'p_42367 ::
  T_GeneralizeTel_42377 -> Maybe AgdaAny
d_'46'generalizedField'45'p_42367 v0
  = case coe v0 of
      C_mkGeneralizeTel_42379 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-d
d_'46'generalizedField'45'd_42369 ::
  T_GeneralizeTel_42377 -> Integer
d_'46'generalizedField'45'd_42369 v0
  = case coe v0 of
      C_mkGeneralizeTel_42379 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-prev
d_'46'generalizedField'45'prev_42371 ::
  T_GeneralizeTel_42377 -> AgdaAny
d_'46'generalizedField'45'prev_42371 v0
  = case coe v0 of
      C_mkGeneralizeTel_42379 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-s
d_'46'generalizedField'45's_42373 ::
  T_GeneralizeTel_42377 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_42373 v0
  = case coe v0 of
      C_mkGeneralizeTel_42379 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-k
d_'46'generalizedField'45'k_42375 ::
  T_GeneralizeTel_42377 -> Integer
d_'46'generalizedField'45'k_42375 v0
  = case coe v0 of
      C_mkGeneralizeTel_42379 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GeneralizeTel
d_GeneralizeTel_42377 a0 = ()
data T_GeneralizeTel_42377
  = C_mkGeneralizeTel_42379 T_GovEnv_1006
                            MAlonzo.Code.Ledger.Address.T_RwdAddr_76
                            MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
                            (Maybe AgdaAny) Integer AgdaAny
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
