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
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Ext
import qualified MAlonzo.Code.Data.List.Ext.Properties2
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
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _._+ᵉ_
d__'43''7497'__8 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__8 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0))
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
-- _.GovProposal
d_GovProposal_156 a0 = ()
-- _.GovVote
d_GovVote_160 a0 = ()
-- _.NeedsHash
d_NeedsHash_198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 -> ()
d_NeedsHash_198 = erased
-- _.NetworkId
d_NetworkId_204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_204 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196 (coe v0))
-- _.PParams
d_PParams_222 a0 = ()
-- _.RwdAddr
d_RwdAddr_262 a0 = ()
-- _.ScriptHash
d_ScriptHash_278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_278 = erased
-- _.Voter
d_Voter_388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_388 = erased
-- _.actionWellFormed
d_actionWellFormed_394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 -> ()
d_actionWellFormed_394 = erased
-- _.preoEpoch
d_preoEpoch_522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_522 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0))
-- _.pvCanFollow
d_pvCanFollow_530 a0 a1 a2 = ()
-- _.GovActionState.action
d_action_660 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_action_660 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_662 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_expiresIn_662 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_792 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_664 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_prevAction_664 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_796 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_666 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_666 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790 (coe v0)
-- _.GovActionState.votes
d_votes_668 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_668 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_788 (coe v0)
-- _.GovProposal.action
d_action_688 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_action_688 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_764 (coe v0)
-- _.GovProposal.anchor
d_anchor_690 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_anchor_690 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- _.GovProposal.deposit
d_deposit_692 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 -> Integer
d_deposit_692 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_770 (coe v0)
-- _.GovProposal.policy
d_policy_694 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  Maybe AgdaAny
d_policy_694 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_768 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 -> AgdaAny
d_prevAction_696 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_766 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_698 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_772 (coe v0)
-- _.GovVote.anchor
d_anchor_710 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_anchor_710 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_748 (coe v0)
-- _.GovVote.gid
d_gid_712 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_712 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_742 (coe v0)
-- _.GovVote.vote
d_vote_714 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724
d_vote_714 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_746 (coe v0)
-- _.GovVote.voter
d_voter_716 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_716 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_744 (coe v0)
-- _.GovernanceActions.GovAction
d_GovAction_734 a0 = ()
-- _.GovernanceActions.GovActionState
d_GovActionState_738 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_740 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_744 a0 = ()
-- _.PParams.Emax
d_Emax_894 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_894 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_350 (coe v0)
-- _.PParams.a
d_a_896 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_896 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_326 (coe v0)
-- _.PParams.a0
d_a0_898 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_898 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_354 (coe v0)
-- _.PParams.b
d_b_900 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_900 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_328 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_902 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_902 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_366 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_904 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_904 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_364 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_906 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_906 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_908 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356 (coe v0)
-- _.PParams.costmdls
d_costmdls_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_358 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_912 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_374 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_372 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_918 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_318 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_926 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_310 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_928 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_322 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_314 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_932 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_342 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_934 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_316 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_312 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_320 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_942 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_338
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_348 (coe v0)
-- _.PParams.nopt
d_nopt_946 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_946 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_352 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0)
-- _.PParams.prices
d_prices_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_336 (coe v0)
-- _.PParams.pv
d_pv_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_954 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_324 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_956 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_346 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_refScriptCostStride_958 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_344 (coe v0)
-- _.RwdAddr.net
d_net_1150 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1150 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_1152 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1152 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Gov._.Vote
d_Vote_1470 a0 = ()
-- Ledger.Gov._.EnactState
d_EnactState_1500 a0 = ()
-- Ledger.Gov._.EnactState.cc
d_cc_1536 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1536 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v0)
-- Ledger.Gov._.EnactState.constitution
d_constitution_1538 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1538 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_842 (coe v0)
-- Ledger.Gov._.EnactState.pparams
d_pparams_1540 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1540 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v0)
-- Ledger.Gov._.EnactState.pv
d_pv_1542 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1542 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_844 (coe v0)
-- Ledger.Gov._.EnactState.withdrawals
d_withdrawals_1544 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1544 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_848 (coe v0)
-- Ledger.Gov._.canVote
d_canVote_1592 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 -> ()
d_canVote_1592 = erased
-- Ledger.Gov._.CertState
d_CertState_1684 a0 = ()
-- Ledger.Gov._.CertState.dState
d_dState_1814 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_932 ->
  MAlonzo.Code.Ledger.Certs.T_DState_892
d_dState_1814 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_940 (coe v0)
-- Ledger.Gov._.CertState.gState
d_gState_1816 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_932 ->
  MAlonzo.Code.Ledger.Certs.T_GState_920
d_gState_1816 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_944 (coe v0)
-- Ledger.Gov._.CertState.pState
d_pState_1818 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_932 ->
  MAlonzo.Code.Ledger.Certs.T_PState_908
d_pState_1818 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_942 (coe v0)
-- Ledger.Gov.GovState
d_GovState_1880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovState_1880 = erased
-- Ledger.Gov.GovEnv
d_GovEnv_1882 a0 = ()
data T_GovEnv_1882
  = C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_1908 AgdaAny
                                                          AgdaAny
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_242
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_828
                                                          MAlonzo.Code.Ledger.Certs.T_CertState_932
-- Ledger.Gov.GovEnv.txid
d_txid_1896 :: T_GovEnv_1882 -> AgdaAny
d_txid_1896 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_1908 v1 v2 v3 v4 v5 v6
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.epoch
d_epoch_1898 :: T_GovEnv_1882 -> AgdaAny
d_epoch_1898 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_1908 v1 v2 v3 v4 v5 v6
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.pparams
d_pparams_1900 ::
  T_GovEnv_1882 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1900 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_1908 v1 v2 v3 v4 v5 v6
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.ppolicy
d_ppolicy_1902 :: T_GovEnv_1882 -> Maybe AgdaAny
d_ppolicy_1902 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_1908 v1 v2 v3 v4 v5 v6
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.enactState
d_enactState_1904 ::
  T_GovEnv_1882 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_1904 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_1908 v1 v2 v3 v4 v5 v6
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.certState
d_certState_1906 ::
  T_GovEnv_1882 -> MAlonzo.Code.Ledger.Certs.T_CertState_932
d_certState_1906 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_1908 v1 v2 v3 v4 v5 v6
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.govActionPriority
d_govActionPriority_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 -> Integer
d_govActionPriority_1936 ~v0 v1 = du_govActionPriority_1936 v1
du_govActionPriority_1936 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 -> Integer
du_govActionPriority_1936 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_692
        -> coe (0 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_694 v1 v2 v3
        -> coe (1 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_696 v1 v2
        -> coe (2 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_698 v1
        -> coe (3 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_700 v1
        -> coe (4 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_702 v1
        -> coe (5 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_704
        -> coe (6 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov._∼_
d__'8764'__1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> ()
d__'8764'__1938 = erased
-- Ledger.Gov._≈ᵍ_
d__'8776''7501'__1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 -> ()
d__'8776''7501'__1944 = erased
-- Ledger.Gov._∼?_
d__'8764''63'__1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8764''63'__1954 ~v0 v1 v2 = du__'8764''63'__1954 v1 v2
du__'8764''63'__1954 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8764''63'__1954 v0 v1
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
d__'8776''63'__1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8776''63'__1964 ~v0 v1 v2 = du__'8776''63'__1964 v1 v2
du__'8776''63'__1964 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8776''63'__1964 v0 v1
  = coe
      du__'8764''63'__1954 (coe du_govActionPriority_1936 (coe v0))
      (coe du_govActionPriority_1936 (coe v1))
-- Ledger.Gov.insertGovAction
d_insertGovAction_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_insertGovAction_1970 ~v0 v1 v2 = du_insertGovAction_1970 v1 v2
du_insertGovAction_1970 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_insertGovAction_1970 v0 v1
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1)
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> case coe v1 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                      -> coe
                           MAlonzo.Code.Class.ToBool.du_if_then_else__46
                           (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Dec_98)
                           (coe
                              MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__62
                              (\ v8 v9 ->
                                 coe
                                   MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                   (coe
                                      MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802 (coe v8)
                                      (coe v9)))
                              (coe
                                 du_govActionPriority_1936
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v5)))
                              (coe
                                 du_govActionPriority_1936
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v7))))
                           (coe
                              MAlonzo.Code.Level.C_lift_20
                              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                                   (coe du_insertGovAction_1970 (coe v3) (coe v1))))
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v0)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.mkGovStatePair
d_mkGovStatePair_1986 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkGovStatePair_1986 ~v0 v1 v2 v3 v4 v5
  = du_mkGovStatePair_1986 v1 v2 v3 v4 v5
du_mkGovStatePair_1986 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkGovStatePair_1986 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_6991
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
         (coe v2) (coe v0) (coe v3) (coe v4))
-- Ledger.Gov.addAction
d_addAction_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addAction_2000 ~v0 v1 v2 v3 v4 v5 v6
  = du_addAction_2000 v1 v2 v3 v4 v5 v6
du_addAction_2000 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_addAction_2000 v0 v1 v2 v3 v4 v5
  = coe
      du_insertGovAction_1970 (coe v0)
      (coe
         du_mkGovStatePair_1986 (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- Ledger.Gov.addVote
d_addVote_2014 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addVote_2014 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
      () erased
      (coe du_modifyVotes_2028 (coe v0) (coe v2) (coe v3) (coe v4)) v1
-- Ledger.Gov._.modifyVotes
d_modifyVotes_2028 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_modifyVotes_2028 v0 ~v1 v2 v3 v4 v5
  = du_modifyVotes_2028 v0 v2 v3 v4 v5
du_modifyVotes_2028 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_modifyVotes_2028 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_6991
         (coe
            MAlonzo.Code.Class.ToBool.du_if_then_else__46
            (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe
                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                  (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) (coe v1))
            (coe
               (\ v5 ->
                  coe
                    MAlonzo.Code.Axiom.Set.Map.du_insert_956
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
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
                       MAlonzo.Code.Ledger.GovernanceActions.d_votes_788
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                    (coe v2) (coe v3)))
            (coe
               (\ v5 ->
                  MAlonzo.Code.Ledger.GovernanceActions.d_votes_788
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_792
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_action_794
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_796
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
-- Ledger.Gov.isRegistered
d_isRegistered_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GovEnv_1882 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_isRegistered_2036 = erased
-- Ledger.Gov.validHFAction
d_validHFAction_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 -> ()
d_validHFAction_2048 = erased
-- Ledger.Gov._⊢_⇀⦇_,GOV'⦈_
d__'8866'_'8640''10631'_'44'GOV'''10632'__2066 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOV'''10632'__2066
  = C_GOV'45'Vote_2484 MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOV'45'Propose_2588 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Gov._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GovEnv_1882 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__2068 = erased
-- Ledger.Gov.getAidPairsList
d_getAidPairsList_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsList_2070 ~v0 v1 = du_getAidPairsList_2070 v1
du_getAidPairsList_2070 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsList_2070 v0
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
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_794
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_796
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))))
      (coe v0)
-- Ledger.Gov._connects_to_
d__connects_to__2082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__connects_to__2082 = erased
-- Ledger.Gov.enactable
d_enactable_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_enactable_2098 = erased
-- Ledger.Gov.allEnactable
d_allEnactable_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_allEnactable_2116 = erased
-- Ledger.Gov.hasParentE
d_hasParentE_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 -> ()
d_hasParentE_2122 = erased
-- Ledger.Gov.hasParent
d_hasParent_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  AgdaAny -> ()
d_hasParent_2136 = erased
-- Ledger.Gov.hasParentE?
d_hasParentE'63'_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParentE'63'_2180 v0 v1 v2 v3
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
                      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0)))
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
d_hasParent'63'_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParent'63'_2214 v0 v1 v2 v3 v4
  = let v5
          = coe MAlonzo.Code.Ledger.Enact.du_getHash_856 (coe v3) (coe v4) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
                (coe d_hasParentE'63'_2180 (coe v0) (coe v1) (coe v6) (coe v3))
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
                                    MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0)))
                              (coe
                                 (\ v8 ->
                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)) (coe v6))
                           (coe
                              du__'8776''63'__1964
                              (coe
                                 MAlonzo.Code.Ledger.GovernanceActions.d_action_794
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
d_hasParent''_2254 a0 a1 a2 a3 a4 = ()
newtype T_hasParent''_2254 = C_HasParent''_2264 AgdaAny
-- Ledger.Gov.hasParent?'
d_hasParent'63'''_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_hasParent'63'''_2274 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
         (coe C_HasParent''_2264)
         (coe
            (\ v5 ->
               case coe v5 of
                 C_HasParent''_2264 v10 -> coe v10
                 _ -> MAlonzo.RTE.mazUnreachableError))
         (coe
            d_hasParent'63'_2214 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
-- Ledger.Gov.[_connects_to_?]
d_'91'_connects_to_'63''93'_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'91'_connects_to_'63''93'_2286 v0 v1 v2 v3
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
             (coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0)))
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
                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0)))
                          (coe
                             (\ v8 ->
                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                          (coe v6) (coe v2))
                       (coe
                          d_'91'_connects_to_'63''93'_2286 (coe v0) (coe v5) (coe v7)
                          (coe v3)))
                    (coe
                       d_'91'_connects_to_'63''93'_2286 (coe v0) (coe v5) (coe v2)
                       (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.any?-connecting-subperm
d_any'63''45'connecting'45'subperm_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63''45'connecting'45'subperm_2310 v0 v1 v2 v3
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
                             (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                          (coe
                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                             (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))
                 v4)
              (coe
                 d_'91'_connects_to_'63''93'_2286 (coe v0) (coe v4) (coe v1)
                 (coe v2))))
      (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v3))
-- Ledger.Gov.∃?-connecting-subperm
d_'8707''63''45'connecting'45'subperm_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subperm_2328 v0 v1 v2 v3
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
      (d_any'63''45'connecting'45'subperm_2310
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Gov.∃?-connecting-subset
d_'8707''63''45'connecting'45'subset_2340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subset_2340 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext.du_map'8242''8660'_16
         (coe
            MAlonzo.Code.Data.List.Ext.Properties2.du_'8707'uniqueSubset'8660''8707'uniqueSubperm_902
            (coe ()) (coe v3)))
      (d_'8707''63''45'connecting'45'subperm_2328
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Gov.enactable?
d_enactable'63'_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_enactable'63'_2350 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Ledger.Enact.du_getHashES_868 (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v5)) in
           coe
             (case coe v6 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                  -> coe
                       MAlonzo.Code.Function.Bundles.d_from_1726
                       (coe
                          MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext.du_map'8242''8660'_16
                          (coe
                             MAlonzo.Code.Axiom.Set.Properties.du_'8707''45'sublist'45''8660'_1070
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe v2)))
                       (d_'8707''63''45'connecting'45'subset_2340
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
d_allEnactable'63'_2386 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_allEnactable'63'_2386 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.du_all'63'_506
      (coe
         d_enactable'63'_2350 (coe v0) (coe v1)
         (coe du_getAidPairsList_2070 (coe v2)))
      (coe v2)
-- Ledger.Gov.allEnactable'
d_allEnactable''_2394 a0 a1 a2 = ()
newtype T_allEnactable''_2394
  = C_AllEnactable''_2400 MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
-- Ledger.Gov.allEnactable?'
d_allEnactable'63'''_2406 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_allEnactable'63'''_2406 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
         (coe C_AllEnactable''_2400)
         (coe
            (\ v3 ->
               case coe v3 of
                 C_AllEnactable''_2400 v6 -> coe v6
                 _ -> MAlonzo.RTE.mazUnreachableError))
         (coe d_allEnactable'63'_2386 (coe v0) (coe v1) (coe v2)))
-- Ledger.Gov.maxAllEnactable
d_maxAllEnactable_2412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_maxAllEnactable_2412 v0 v1
  = coe
      MAlonzo.Code.Data.List.Ext.Properties2.du_maxsublists'8871'P_756
      (coe d_allEnactable'63'_2386 (coe v0) (coe v1))
-- Ledger.Gov.∈-maxAllEnactable→allEnactable
d_'8712''45'maxAllEnactable'8594'allEnactable_2422 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_'8712''45'maxAllEnactable'8594'allEnactable_2422 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_506
         (d_allEnactable'63'_2386 (coe v0) (coe v1)) v3
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
                       MAlonzo.Code.Data.List.Ext.Properties2.du_maxlen_16
                       (coe
                          MAlonzo.Code.Data.List.Ext.Properties2.du_sublists'8871'P_750
                          (coe d_allEnactable'63'_2386 (coe v0) (coe v1)) (coe v2))))
               v3
               (coe
                  MAlonzo.Code.Data.List.Base.du_filter_664
                  (coe d_allEnactable'63'_2386 (coe v0) (coe v1))
                  (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)))
               v4)))
-- Ledger.Gov.∈-maxAllEnactable→maxLength
d_'8712''45'maxAllEnactable'8594'maxLength_2442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8712''45'maxAllEnactable'8594'maxLength_2442 v0 v1 v2 ~v3 ~v4 v5
                                                v6 ~v7
  = du_'8712''45'maxAllEnactable'8594'maxLength_2442 v0 v1 v2 v5 v6
du_'8712''45'maxAllEnactable'8594'maxLength_2442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8712''45'maxAllEnactable'8594'maxLength_2442 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Ext.Properties2.du_'8712''45'maxlen'45''8804'_42
      (coe
         MAlonzo.Code.Data.List.Base.du_filter_664
         (coe d_allEnactable'63'_2386 (coe v0) (coe v1))
         (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)))
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8314'_500
         (d_allEnactable'63'_2386 (coe v0) (coe v1))
         (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)) v3 v4)
-- Ledger.Gov._.certState
d_certState_2470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_45953 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_932
d_certState_2470 ~v0 v1 ~v2 ~v3 = du_certState_2470 v1
du_certState_2470 ::
  T_GeneralizeTel_45953 -> MAlonzo.Code.Ledger.Certs.T_CertState_932
du_certState_2470 v0
  = coe
      d_certState_1906 (coe d_'46'generalizedField'45'Γ_45941 (coe v0))
-- Ledger.Gov._.enactState
d_enactState_2472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_45953 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_2472 ~v0 v1 ~v2 ~v3 = du_enactState_2472 v1
du_enactState_2472 ::
  T_GeneralizeTel_45953 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
du_enactState_2472 v0
  = coe
      d_enactState_1904 (coe d_'46'generalizedField'45'Γ_45941 (coe v0))
-- Ledger.Gov._.epoch
d_epoch_2474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_45953 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_epoch_2474 ~v0 v1 ~v2 ~v3 = du_epoch_2474 v1
du_epoch_2474 :: T_GeneralizeTel_45953 -> AgdaAny
du_epoch_2474 v0
  = coe d_epoch_1898 (coe d_'46'generalizedField'45'Γ_45941 (coe v0))
-- Ledger.Gov._.pparams
d_pparams_2476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_45953 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2476 ~v0 v1 ~v2 ~v3 = du_pparams_2476 v1
du_pparams_2476 ::
  T_GeneralizeTel_45953 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2476 v0
  = coe
      d_pparams_1900 (coe d_'46'generalizedField'45'Γ_45941 (coe v0))
-- Ledger.Gov._.ppolicy
d_ppolicy_2478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_45953 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  Maybe AgdaAny
d_ppolicy_2478 ~v0 v1 ~v2 ~v3 = du_ppolicy_2478 v1
du_ppolicy_2478 :: T_GeneralizeTel_45953 -> Maybe AgdaAny
du_ppolicy_2478 v0
  = coe
      d_ppolicy_1902 (coe d_'46'generalizedField'45'Γ_45941 (coe v0))
-- Ledger.Gov._.txid
d_txid_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_45953 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_txid_2480 ~v0 v1 ~v2 ~v3 = du_txid_2480 v1
du_txid_2480 :: T_GeneralizeTel_45953 -> AgdaAny
du_txid_2480 v0
  = coe d_txid_1896 (coe d_'46'generalizedField'45'Γ_45941 (coe v0))
-- Ledger.Gov._.certState
d_certState_2490 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_48755 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_932
d_certState_2490 ~v0 v1 ~v2 = du_certState_2490 v1
du_certState_2490 ::
  T_GeneralizeTel_48755 -> MAlonzo.Code.Ledger.Certs.T_CertState_932
du_certState_2490 v0
  = coe
      d_certState_1906 (coe d_'46'generalizedField'45'Γ_48739 (coe v0))
-- Ledger.Gov._.enactState
d_enactState_2492 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_48755 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_2492 ~v0 v1 ~v2 = du_enactState_2492 v1
du_enactState_2492 ::
  T_GeneralizeTel_48755 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
du_enactState_2492 v0
  = coe
      d_enactState_1904 (coe d_'46'generalizedField'45'Γ_48739 (coe v0))
-- Ledger.Gov._.epoch
d_epoch_2494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_48755 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 -> AgdaAny
d_epoch_2494 ~v0 v1 ~v2 = du_epoch_2494 v1
du_epoch_2494 :: T_GeneralizeTel_48755 -> AgdaAny
du_epoch_2494 v0
  = coe d_epoch_1898 (coe d_'46'generalizedField'45'Γ_48739 (coe v0))
-- Ledger.Gov._.pparams
d_pparams_2496 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_48755 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2496 ~v0 v1 ~v2 = du_pparams_2496 v1
du_pparams_2496 ::
  T_GeneralizeTel_48755 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2496 v0
  = coe
      d_pparams_1900 (coe d_'46'generalizedField'45'Γ_48739 (coe v0))
-- Ledger.Gov._.ppolicy
d_ppolicy_2498 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_48755 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 -> Maybe AgdaAny
d_ppolicy_2498 ~v0 v1 ~v2 = du_ppolicy_2498 v1
du_ppolicy_2498 :: T_GeneralizeTel_48755 -> Maybe AgdaAny
du_ppolicy_2498 v0
  = coe
      d_ppolicy_1902 (coe d_'46'generalizedField'45'Γ_48739 (coe v0))
-- Ledger.Gov._.txid
d_txid_2500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_48755 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 -> AgdaAny
d_txid_2500 ~v0 v1 ~v2 = du_txid_2500 v1
du_txid_2500 :: T_GeneralizeTel_48755 -> AgdaAny
du_txid_2500 v0
  = coe d_txid_1896 (coe d_'46'generalizedField'45'Γ_48739 (coe v0))
-- Ledger.Gov._.govActionDeposit
d_govActionDeposit_2526 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_48755 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 -> Integer
d_govActionDeposit_2526 ~v0 v1 ~v2 = du_govActionDeposit_2526 v1
du_govActionDeposit_2526 :: T_GeneralizeTel_48755 -> Integer
du_govActionDeposit_2526 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370
      (coe
         d_pparams_1900 (coe d_'46'generalizedField'45'Γ_48739 (coe v0)))
-- Ledger.Gov._.govActionLifetime
d_govActionLifetime_2528 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_48755 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 -> Integer
d_govActionLifetime_2528 ~v0 v1 ~v2 = du_govActionLifetime_2528 v1
du_govActionLifetime_2528 :: T_GeneralizeTel_48755 -> Integer
du_govActionLifetime_2528 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368
      (coe
         d_pparams_1900 (coe d_'46'generalizedField'45'Γ_48739 (coe v0)))
-- Ledger.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_45941 ::
  T_GeneralizeTel_45953 -> T_GovEnv_1882
d_'46'generalizedField'45'Γ_45941 v0
  = case coe v0 of
      C_mkGeneralizeTel_45955 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-aid
d_'46'generalizedField'45'aid_45943 ::
  T_GeneralizeTel_45953 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'aid_45943 v0
  = case coe v0 of
      C_mkGeneralizeTel_45955 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-voter
d_'46'generalizedField'45'voter_45945 ::
  T_GeneralizeTel_45953 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voter_45945 v0
  = case coe v0 of
      C_mkGeneralizeTel_45955 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-v
d_'46'generalizedField'45'v_45947 ::
  T_GeneralizeTel_45953 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724
d_'46'generalizedField'45'v_45947 v0
  = case coe v0 of
      C_mkGeneralizeTel_45955 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-s
d_'46'generalizedField'45's_45949 ::
  T_GeneralizeTel_45953 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_45949 v0
  = case coe v0 of
      C_mkGeneralizeTel_45955 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-k
d_'46'generalizedField'45'k_45951 ::
  T_GeneralizeTel_45953 -> Integer
d_'46'generalizedField'45'k_45951 v0
  = case coe v0 of
      C_mkGeneralizeTel_45955 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GeneralizeTel
d_GeneralizeTel_45953 a0 = ()
data T_GeneralizeTel_45953
  = C_mkGeneralizeTel_45955 T_GovEnv_1882
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
-- Ledger.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_48739 ::
  T_GeneralizeTel_48755 -> T_GovEnv_1882
d_'46'generalizedField'45'Γ_48739 v0
  = case coe v0 of
      C_mkGeneralizeTel_48757 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-addr
d_'46'generalizedField'45'addr_48741 ::
  T_GeneralizeTel_48755 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_'46'generalizedField'45'addr_48741 v0
  = case coe v0 of
      C_mkGeneralizeTel_48757 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-a
d_'46'generalizedField'45'a_48743 ::
  T_GeneralizeTel_48755 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_'46'generalizedField'45'a_48743 v0
  = case coe v0 of
      C_mkGeneralizeTel_48757 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-p
d_'46'generalizedField'45'p_48745 ::
  T_GeneralizeTel_48755 -> Maybe AgdaAny
d_'46'generalizedField'45'p_48745 v0
  = case coe v0 of
      C_mkGeneralizeTel_48757 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-d
d_'46'generalizedField'45'd_48747 ::
  T_GeneralizeTel_48755 -> Integer
d_'46'generalizedField'45'd_48747 v0
  = case coe v0 of
      C_mkGeneralizeTel_48757 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-prev
d_'46'generalizedField'45'prev_48749 ::
  T_GeneralizeTel_48755 -> AgdaAny
d_'46'generalizedField'45'prev_48749 v0
  = case coe v0 of
      C_mkGeneralizeTel_48757 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-s
d_'46'generalizedField'45's_48751 ::
  T_GeneralizeTel_48755 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_48751 v0
  = case coe v0 of
      C_mkGeneralizeTel_48757 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-k
d_'46'generalizedField'45'k_48753 ::
  T_GeneralizeTel_48755 -> Integer
d_'46'generalizedField'45'k_48753 v0
  = case coe v0 of
      C_mkGeneralizeTel_48757 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GeneralizeTel
d_GeneralizeTel_48755 a0 = ()
data T_GeneralizeTel_48755
  = C_mkGeneralizeTel_48757 T_GovEnv_1882
                            MAlonzo.Code.Ledger.Address.T_RwdAddr_76
                            MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
                            (Maybe AgdaAny) Integer AgdaAny
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
