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

module MAlonzo.Code.Ledger.Conway.Conformance.Gov where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Gov
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch

-- _._+ᵉ_
d__'43''7497'__12 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__12 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v0))
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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0)))
-- _.Epoch
d_Epoch_146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_146 = erased
-- _.GovAction
d_GovAction_152 a0 = ()
-- _.GovActionID
d_GovActionID_154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_154 = erased
-- _.GovActionState
d_GovActionState_156 a0 = ()
-- _.GovProposal
d_GovProposal_160 a0 = ()
-- _.GovVote
d_GovVote_164 a0 = ()
-- _.NeedsHash
d_NeedsHash_202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_NeedsHash_202 = erased
-- _.NetworkId
d_NetworkId_208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_208 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v0))
-- _.PParams
d_PParams_226 a0 = ()
-- _.RwdAddr
d_RwdAddr_266 a0 = ()
-- _.ScriptHash
d_ScriptHash_282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_282 = erased
-- _.Voter
d_Voter_392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_392 = erased
-- _.actionWellFormed
d_actionWellFormed_398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_actionWellFormed_398 = erased
-- _.preoEpoch
d_preoEpoch_528 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_528 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v0))
-- _.GovActionState.action
d_action_666 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_666 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_798 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_668 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780 ->
  AgdaAny
d_expiresIn_668 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_796 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_670 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780 ->
  AgdaAny
d_prevAction_670 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_800 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_672 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_672 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_794 (coe v0)
-- _.GovActionState.votes
d_votes_674 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_674 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_792 (coe v0)
-- _.GovProposal.action
d_action_694 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_694 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_768 (coe v0)
-- _.GovProposal.anchor
d_anchor_696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_696 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_778 (coe v0)
-- _.GovProposal.deposit
d_deposit_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 -> Integer
d_deposit_698 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_774 (coe v0)
-- _.GovProposal.policy
d_policy_700 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  Maybe AgdaAny
d_policy_700 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_772 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_702 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 -> AgdaAny
d_prevAction_702 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_770 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_704 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_704 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_776 (coe v0)
-- _.GovVote.anchor
d_anchor_716 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_716 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_752 (coe v0)
-- _.GovVote.gid
d_gid_718 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_718 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_746 (coe v0)
-- _.GovVote.vote
d_vote_720 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_728
d_vote_720 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_750 (coe v0)
-- _.GovVote.voter
d_voter_722 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_722 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_748 (coe v0)
-- _.GovernanceActions.GovAction
d_GovAction_740 a0 = ()
-- _.GovernanceActions.GovActionState
d_GovActionState_744 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_746 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_750 a0 = ()
-- _.PParams.Emax
d_Emax_900 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_900 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_350 (coe v0)
-- _.PParams.a
d_a_902 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_902 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_326 (coe v0)
-- _.PParams.a0
d_a0_904 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_904 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_354 (coe v0)
-- _.PParams.b
d_b_906 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_906 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_328 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_366 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_364 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_912 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_914 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356 (coe v0)
-- _.PParams.costmdls
d_costmdls_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_358 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_918 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_374 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_372 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_926 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_318 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_310 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_934 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_322 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_314 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_938 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_342 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_940 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_316 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_312 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_320 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_948 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_338
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_348 (coe v0)
-- _.PParams.nopt
d_nopt_952 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_952 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_352 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0)
-- _.PParams.prices
d_prices_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_336 (coe v0)
-- _.PParams.pv
d_pv_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_960 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_324 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_962 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_346 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_964 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_refScriptCostStride_964 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_344 (coe v0)
-- _.RwdAddr.net
d_net_1158 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1158 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_1160 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1160 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Conformance.Gov._.Vote
d_Vote_1478 a0 = ()
-- Ledger.Conway.Conformance.Gov._.EnactState
d_EnactState_1508 a0 = ()
-- Ledger.Conway.Conformance.Gov._.EnactState.cc
d_cc_1544 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1544 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.constitution
d_constitution_1546 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1546 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_844 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.pparams
d_pparams_1548 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1548 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.pv
d_pv_1550 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1550 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_846 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.withdrawals
d_withdrawals_1552 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1552 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_850 (coe v0)
-- Ledger.Conway.Conformance.Gov._.canVote
d_canVote_1600 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_662 -> ()
d_canVote_1600 = erased
-- Ledger.Conway.Conformance.Gov._.CertState
d_CertState_1700 a0 = ()
-- Ledger.Conway.Conformance.Gov._.CertState.dState
d_dState_1854 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1038
d_dState_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState.gState
d_gState_1856 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1058
d_gState_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1086 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState.pState
d_pState_1858 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Ledger.Certs.T_PState_910
d_pState_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1084 (coe v0)
-- Ledger.Conway.Conformance.Gov.L.addAction
d_addAction_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addAction_1954 ~v0 = du_addAction_1954
du_addAction_1954 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_addAction_1954 = coe MAlonzo.Code.Ledger.Gov.du_addAction_2004
-- Ledger.Conway.Conformance.Gov.L.addVote
d_addVote_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_728 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addVote_1956 v0
  = coe MAlonzo.Code.Ledger.Gov.d_addVote_2018 (coe v0)
-- Ledger.Conway.Conformance.Gov.L.hasParent
d_hasParent_1976 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny -> ()
d_hasParent_1976 = erased
-- Ledger.Conway.Conformance.Gov.L.validHFAction
d_validHFAction_1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 -> ()
d_validHFAction_1996 = erased
-- Ledger.Conway.Conformance.Gov.GovState
d_GovState_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovState_2036 = erased
-- Ledger.Conway.Conformance.Gov.GovEnv
d_GovEnv_2038 a0 = ()
data T_GovEnv_2038
  = C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_2064 AgdaAny
                                                          AgdaAny
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_242
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_830
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074
-- Ledger.Conway.Conformance.Gov.GovEnv.txid
d_txid_2052 :: T_GovEnv_2038 -> AgdaAny
d_txid_2052 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_2064 v1 v2 v3 v4 v5 v6
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.epoch
d_epoch_2054 :: T_GovEnv_2038 -> AgdaAny
d_epoch_2054 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_2064 v1 v2 v3 v4 v5 v6
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.pparams
d_pparams_2056 ::
  T_GovEnv_2038 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2056 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_2064 v1 v2 v3 v4 v5 v6
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.ppolicy
d_ppolicy_2058 :: T_GovEnv_2038 -> Maybe AgdaAny
d_ppolicy_2058 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_2064 v1 v2 v3 v4 v5 v6
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.enactState
d_enactState_2060 ::
  T_GovEnv_2038 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2060 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_2064 v1 v2 v3 v4 v5 v6
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.certState
d_certState_2062 ::
  T_GovEnv_2038 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074
d_certState_2062 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_2064 v1 v2 v3 v4 v5 v6
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.isRegistered
d_isRegistered_2092 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GovEnv_2038 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_isRegistered_2092 = erased
-- Ledger.Conway.Conformance.Gov._⊢_⇀⦇_,GOV'⦈_
d__'8866'_'8640''10631'_'44'GOV'''10632'__2104 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOV'''10632'__2104
  = C_GOV'45'Vote_2126 MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOV'45'Propose_2230 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Gov._.certState
d_certState_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_9455 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074
d_certState_2112 ~v0 v1 ~v2 ~v3 = du_certState_2112 v1
du_certState_2112 ::
  T_GeneralizeTel_9455 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074
du_certState_2112 v0
  = coe
      d_certState_2062 (coe d_'46'generalizedField'45'Γ_9443 (coe v0))
-- Ledger.Conway.Conformance.Gov._.enactState
d_enactState_2114 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_9455 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2114 ~v0 v1 ~v2 ~v3 = du_enactState_2114 v1
du_enactState_2114 ::
  T_GeneralizeTel_9455 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2114 v0
  = coe
      d_enactState_2060 (coe d_'46'generalizedField'45'Γ_9443 (coe v0))
-- Ledger.Conway.Conformance.Gov._.epoch
d_epoch_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_9455 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780 ->
  AgdaAny
d_epoch_2116 ~v0 v1 ~v2 ~v3 = du_epoch_2116 v1
du_epoch_2116 :: T_GeneralizeTel_9455 -> AgdaAny
du_epoch_2116 v0
  = coe d_epoch_2054 (coe d_'46'generalizedField'45'Γ_9443 (coe v0))
-- Ledger.Conway.Conformance.Gov._.pparams
d_pparams_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_9455 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2118 ~v0 v1 ~v2 ~v3 = du_pparams_2118 v1
du_pparams_2118 ::
  T_GeneralizeTel_9455 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2118 v0
  = coe
      d_pparams_2056 (coe d_'46'generalizedField'45'Γ_9443 (coe v0))
-- Ledger.Conway.Conformance.Gov._.ppolicy
d_ppolicy_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_9455 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780 ->
  Maybe AgdaAny
d_ppolicy_2120 ~v0 v1 ~v2 ~v3 = du_ppolicy_2120 v1
du_ppolicy_2120 :: T_GeneralizeTel_9455 -> Maybe AgdaAny
du_ppolicy_2120 v0
  = coe
      d_ppolicy_2058 (coe d_'46'generalizedField'45'Γ_9443 (coe v0))
-- Ledger.Conway.Conformance.Gov._.txid
d_txid_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_9455 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780 ->
  AgdaAny
d_txid_2122 ~v0 v1 ~v2 ~v3 = du_txid_2122 v1
du_txid_2122 :: T_GeneralizeTel_9455 -> AgdaAny
du_txid_2122 v0
  = coe d_txid_2052 (coe d_'46'generalizedField'45'Γ_9443 (coe v0))
-- Ledger.Conway.Conformance.Gov._.certState
d_certState_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_12265 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074
d_certState_2132 ~v0 v1 ~v2 = du_certState_2132 v1
du_certState_2132 ::
  T_GeneralizeTel_12265 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074
du_certState_2132 v0
  = coe
      d_certState_2062 (coe d_'46'generalizedField'45'Γ_12249 (coe v0))
-- Ledger.Conway.Conformance.Gov._.enactState
d_enactState_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_12265 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2134 ~v0 v1 ~v2 = du_enactState_2134 v1
du_enactState_2134 ::
  T_GeneralizeTel_12265 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2134 v0
  = coe
      d_enactState_2060 (coe d_'46'generalizedField'45'Γ_12249 (coe v0))
-- Ledger.Conway.Conformance.Gov._.epoch
d_epoch_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_12265 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 -> AgdaAny
d_epoch_2136 ~v0 v1 ~v2 = du_epoch_2136 v1
du_epoch_2136 :: T_GeneralizeTel_12265 -> AgdaAny
du_epoch_2136 v0
  = coe d_epoch_2054 (coe d_'46'generalizedField'45'Γ_12249 (coe v0))
-- Ledger.Conway.Conformance.Gov._.pparams
d_pparams_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_12265 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2138 ~v0 v1 ~v2 = du_pparams_2138 v1
du_pparams_2138 ::
  T_GeneralizeTel_12265 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2138 v0
  = coe
      d_pparams_2056 (coe d_'46'generalizedField'45'Γ_12249 (coe v0))
-- Ledger.Conway.Conformance.Gov._.ppolicy
d_ppolicy_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_12265 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 -> Maybe AgdaAny
d_ppolicy_2140 ~v0 v1 ~v2 = du_ppolicy_2140 v1
du_ppolicy_2140 :: T_GeneralizeTel_12265 -> Maybe AgdaAny
du_ppolicy_2140 v0
  = coe
      d_ppolicy_2058 (coe d_'46'generalizedField'45'Γ_12249 (coe v0))
-- Ledger.Conway.Conformance.Gov._.txid
d_txid_2142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_12265 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 -> AgdaAny
d_txid_2142 ~v0 v1 ~v2 = du_txid_2142 v1
du_txid_2142 :: T_GeneralizeTel_12265 -> AgdaAny
du_txid_2142 v0
  = coe d_txid_2052 (coe d_'46'generalizedField'45'Γ_12249 (coe v0))
-- Ledger.Conway.Conformance.Gov._.govActionDeposit
d_govActionDeposit_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_12265 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 -> Integer
d_govActionDeposit_2168 ~v0 v1 ~v2 = du_govActionDeposit_2168 v1
du_govActionDeposit_2168 :: T_GeneralizeTel_12265 -> Integer
du_govActionDeposit_2168 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370
      (coe
         d_pparams_2056 (coe d_'46'generalizedField'45'Γ_12249 (coe v0)))
-- Ledger.Conway.Conformance.Gov._.govActionLifetime
d_govActionLifetime_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_12265 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 -> Integer
d_govActionLifetime_2170 ~v0 v1 ~v2 = du_govActionLifetime_2170 v1
du_govActionLifetime_2170 :: T_GeneralizeTel_12265 -> Integer
du_govActionLifetime_2170 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368
      (coe
         d_pparams_2056 (coe d_'46'generalizedField'45'Γ_12249 (coe v0)))
-- Ledger.Conway.Conformance.Gov._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__2232 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GovEnv_2038 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__2232 = erased
-- Ledger.Conway.Conformance.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_9443 ::
  T_GeneralizeTel_9455 -> T_GovEnv_2038
d_'46'generalizedField'45'Γ_9443 v0
  = case coe v0 of
      C_mkGeneralizeTel_9457 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-aid
d_'46'generalizedField'45'aid_9445 ::
  T_GeneralizeTel_9455 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'aid_9445 v0
  = case coe v0 of
      C_mkGeneralizeTel_9457 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-voter
d_'46'generalizedField'45'voter_9447 ::
  T_GeneralizeTel_9455 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voter_9447 v0
  = case coe v0 of
      C_mkGeneralizeTel_9457 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-v
d_'46'generalizedField'45'v_9449 ::
  T_GeneralizeTel_9455 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_728
d_'46'generalizedField'45'v_9449 v0
  = case coe v0 of
      C_mkGeneralizeTel_9457 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-s
d_'46'generalizedField'45's_9451 ::
  T_GeneralizeTel_9455 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_9451 v0
  = case coe v0 of
      C_mkGeneralizeTel_9457 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-k
d_'46'generalizedField'45'k_9453 :: T_GeneralizeTel_9455 -> Integer
d_'46'generalizedField'45'k_9453 v0
  = case coe v0 of
      C_mkGeneralizeTel_9457 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GeneralizeTel
d_GeneralizeTel_9455 a0 = ()
data T_GeneralizeTel_9455
  = C_mkGeneralizeTel_9457 T_GovEnv_2038
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Ledger.GovernanceActions.T_Vote_728
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
-- Ledger.Conway.Conformance.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_12249 ::
  T_GeneralizeTel_12265 -> T_GovEnv_2038
d_'46'generalizedField'45'Γ_12249 v0
  = case coe v0 of
      C_mkGeneralizeTel_12267 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-addr
d_'46'generalizedField'45'addr_12251 ::
  T_GeneralizeTel_12265 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_'46'generalizedField'45'addr_12251 v0
  = case coe v0 of
      C_mkGeneralizeTel_12267 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-a
d_'46'generalizedField'45'a_12253 ::
  T_GeneralizeTel_12265 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_'46'generalizedField'45'a_12253 v0
  = case coe v0 of
      C_mkGeneralizeTel_12267 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-p
d_'46'generalizedField'45'p_12255 ::
  T_GeneralizeTel_12265 -> Maybe AgdaAny
d_'46'generalizedField'45'p_12255 v0
  = case coe v0 of
      C_mkGeneralizeTel_12267 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-d
d_'46'generalizedField'45'd_12257 ::
  T_GeneralizeTel_12265 -> Integer
d_'46'generalizedField'45'd_12257 v0
  = case coe v0 of
      C_mkGeneralizeTel_12267 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-prev
d_'46'generalizedField'45'prev_12259 ::
  T_GeneralizeTel_12265 -> AgdaAny
d_'46'generalizedField'45'prev_12259 v0
  = case coe v0 of
      C_mkGeneralizeTel_12267 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-s
d_'46'generalizedField'45's_12261 ::
  T_GeneralizeTel_12265 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_12261 v0
  = case coe v0 of
      C_mkGeneralizeTel_12267 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-k
d_'46'generalizedField'45'k_12263 ::
  T_GeneralizeTel_12265 -> Integer
d_'46'generalizedField'45'k_12263 v0
  = case coe v0 of
      C_mkGeneralizeTel_12267 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GeneralizeTel
d_GeneralizeTel_12265 a0 = ()
data T_GeneralizeTel_12265
  = C_mkGeneralizeTel_12267 T_GovEnv_2038
                            MAlonzo.Code.Ledger.Address.T_RwdAddr_76
                            MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
                            (Maybe AgdaAny) Integer AgdaAny
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
