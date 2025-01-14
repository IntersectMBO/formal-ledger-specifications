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
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0))
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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))
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
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 -> ()
d_NeedsHash_202 = erased
-- _.NetworkId
d_NetworkId_208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_208 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196 (coe v0))
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
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 -> ()
d_actionWellFormed_398 = erased
-- _.preoEpoch
d_preoEpoch_526 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_526 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0))
-- _.GovActionState.action
d_action_664 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_action_664 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_666 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_expiresIn_666 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_792 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_668 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_prevAction_668 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_796 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_670 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_670 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790 (coe v0)
-- _.GovActionState.votes
d_votes_672 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_672 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_788 (coe v0)
-- _.GovProposal.action
d_action_692 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_action_692 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_764 (coe v0)
-- _.GovProposal.anchor
d_anchor_694 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_anchor_694 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- _.GovProposal.deposit
d_deposit_696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 -> Integer
d_deposit_696 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_770 (coe v0)
-- _.GovProposal.policy
d_policy_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  Maybe AgdaAny
d_policy_698 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_768 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_700 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 -> AgdaAny
d_prevAction_700 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_766 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_702 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_702 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_772 (coe v0)
-- _.GovVote.anchor
d_anchor_714 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_anchor_714 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_748 (coe v0)
-- _.GovVote.gid
d_gid_716 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_716 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_742 (coe v0)
-- _.GovVote.vote
d_vote_718 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724
d_vote_718 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_746 (coe v0)
-- _.GovVote.voter
d_voter_720 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_720 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_744 (coe v0)
-- _.GovernanceActions.GovAction
d_GovAction_738 a0 = ()
-- _.GovernanceActions.GovActionState
d_GovActionState_742 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_744 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_748 a0 = ()
-- _.PParams.Emax
d_Emax_898 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_898 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_350 (coe v0)
-- _.PParams.a
d_a_900 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_900 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_326 (coe v0)
-- _.PParams.a0
d_a0_902 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_902 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_354 (coe v0)
-- _.PParams.b
d_b_904 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_904 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_328 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_906 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_906 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_366 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_364 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_912 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_912 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356 (coe v0)
-- _.PParams.costmdls
d_costmdls_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_358 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_374 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_918 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_372 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_926 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_318 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_310 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_932 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_322 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_314 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_936 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_342 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_938 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_316 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_312 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_320 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_946 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_338
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_348 (coe v0)
-- _.PParams.nopt
d_nopt_950 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_950 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_352 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0)
-- _.PParams.prices
d_prices_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_336 (coe v0)
-- _.PParams.pv
d_pv_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_958 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_324 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_960 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_346 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_refScriptCostStride_962 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_344 (coe v0)
-- _.RwdAddr.net
d_net_1154 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1154 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_1156 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1156 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Conformance.Gov._.Vote
d_Vote_1474 a0 = ()
-- Ledger.Conway.Conformance.Gov._.EnactState
d_EnactState_1504 a0 = ()
-- Ledger.Conway.Conformance.Gov._.EnactState.cc
d_cc_1540 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1540 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.constitution
d_constitution_1542 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1542 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_842 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.pparams
d_pparams_1544 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1544 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.pv
d_pv_1546 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1546 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_844 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.withdrawals
d_withdrawals_1548 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1548 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_848 (coe v0)
-- Ledger.Conway.Conformance.Gov._.canVote
d_canVote_1596 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_660 -> ()
d_canVote_1596 = erased
-- Ledger.Conway.Conformance.Gov._.CertState
d_CertState_1696 a0 = ()
-- Ledger.Conway.Conformance.Gov._.CertState.dState
d_dState_1850 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1036
d_dState_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1080 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState.gState
d_gState_1852 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1056
d_gState_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1084 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState.pState
d_pState_1854 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072 ->
  MAlonzo.Code.Ledger.Certs.T_PState_908
d_pState_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1082 (coe v0)
-- Ledger.Conway.Conformance.Gov.L.addAction
d_addAction_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addAction_1950 ~v0 = du_addAction_1950
du_addAction_1950 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_addAction_1950 = coe MAlonzo.Code.Ledger.Gov.du_addAction_2000
-- Ledger.Conway.Conformance.Gov.L.addVote
d_addVote_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addVote_1952 v0
  = coe MAlonzo.Code.Ledger.Gov.d_addVote_2014 (coe v0)
-- Ledger.Conway.Conformance.Gov.L.hasParent
d_hasParent_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  AgdaAny -> ()
d_hasParent_1972 = erased
-- Ledger.Conway.Conformance.Gov.L.validHFAction
d_validHFAction_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 -> ()
d_validHFAction_1992 = erased
-- Ledger.Conway.Conformance.Gov.GovState
d_GovState_2032 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovState_2032 = erased
-- Ledger.Conway.Conformance.Gov.GovEnv
d_GovEnv_2034 a0 = ()
data T_GovEnv_2034
  = C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_2060 AgdaAny
                                                          AgdaAny
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_242
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_828
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
-- Ledger.Conway.Conformance.Gov.GovEnv.txid
d_txid_2048 :: T_GovEnv_2034 -> AgdaAny
d_txid_2048 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_2060 v1 v2 v3 v4 v5 v6
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.epoch
d_epoch_2050 :: T_GovEnv_2034 -> AgdaAny
d_epoch_2050 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_2060 v1 v2 v3 v4 v5 v6
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.pparams
d_pparams_2052 ::
  T_GovEnv_2034 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2052 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_2060 v1 v2 v3 v4 v5 v6
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.ppolicy
d_ppolicy_2054 :: T_GovEnv_2034 -> Maybe AgdaAny
d_ppolicy_2054 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_2060 v1 v2 v3 v4 v5 v6
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.enactState
d_enactState_2056 ::
  T_GovEnv_2034 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_2056 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_2060 v1 v2 v3 v4 v5 v6
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.certState
d_certState_2058 ::
  T_GovEnv_2034 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
d_certState_2058 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_2060 v1 v2 v3 v4 v5 v6
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.isRegistered
d_isRegistered_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GovEnv_2034 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_isRegistered_2088 = erased
-- Ledger.Conway.Conformance.Gov._⊢_⇀⦇_,GOV'⦈_
d__'8866'_'8640''10631'_'44'GOV'''10632'__2100 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOV'''10632'__2100
  = C_GOV'45'Vote_2122 MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOV'45'Propose_2226 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Gov._.certState
d_certState_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_9449 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
d_certState_2108 ~v0 v1 ~v2 ~v3 = du_certState_2108 v1
du_certState_2108 ::
  T_GeneralizeTel_9449 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
du_certState_2108 v0
  = coe
      d_certState_2058 (coe d_'46'generalizedField'45'Γ_9437 (coe v0))
-- Ledger.Conway.Conformance.Gov._.enactState
d_enactState_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_9449 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_2110 ~v0 v1 ~v2 ~v3 = du_enactState_2110 v1
du_enactState_2110 ::
  T_GeneralizeTel_9449 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
du_enactState_2110 v0
  = coe
      d_enactState_2056 (coe d_'46'generalizedField'45'Γ_9437 (coe v0))
-- Ledger.Conway.Conformance.Gov._.epoch
d_epoch_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_9449 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_epoch_2112 ~v0 v1 ~v2 ~v3 = du_epoch_2112 v1
du_epoch_2112 :: T_GeneralizeTel_9449 -> AgdaAny
du_epoch_2112 v0
  = coe d_epoch_2050 (coe d_'46'generalizedField'45'Γ_9437 (coe v0))
-- Ledger.Conway.Conformance.Gov._.pparams
d_pparams_2114 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_9449 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2114 ~v0 v1 ~v2 ~v3 = du_pparams_2114 v1
du_pparams_2114 ::
  T_GeneralizeTel_9449 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2114 v0
  = coe
      d_pparams_2052 (coe d_'46'generalizedField'45'Γ_9437 (coe v0))
-- Ledger.Conway.Conformance.Gov._.ppolicy
d_ppolicy_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_9449 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  Maybe AgdaAny
d_ppolicy_2116 ~v0 v1 ~v2 ~v3 = du_ppolicy_2116 v1
du_ppolicy_2116 :: T_GeneralizeTel_9449 -> Maybe AgdaAny
du_ppolicy_2116 v0
  = coe
      d_ppolicy_2054 (coe d_'46'generalizedField'45'Γ_9437 (coe v0))
-- Ledger.Conway.Conformance.Gov._.txid
d_txid_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_9449 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_txid_2118 ~v0 v1 ~v2 ~v3 = du_txid_2118 v1
du_txid_2118 :: T_GeneralizeTel_9449 -> AgdaAny
du_txid_2118 v0
  = coe d_txid_2048 (coe d_'46'generalizedField'45'Γ_9437 (coe v0))
-- Ledger.Conway.Conformance.Gov._.certState
d_certState_2128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_12259 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
d_certState_2128 ~v0 v1 ~v2 = du_certState_2128 v1
du_certState_2128 ::
  T_GeneralizeTel_12259 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1072
du_certState_2128 v0
  = coe
      d_certState_2058 (coe d_'46'generalizedField'45'Γ_12243 (coe v0))
-- Ledger.Conway.Conformance.Gov._.enactState
d_enactState_2130 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_12259 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_2130 ~v0 v1 ~v2 = du_enactState_2130 v1
du_enactState_2130 ::
  T_GeneralizeTel_12259 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
du_enactState_2130 v0
  = coe
      d_enactState_2056 (coe d_'46'generalizedField'45'Γ_12243 (coe v0))
-- Ledger.Conway.Conformance.Gov._.epoch
d_epoch_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_12259 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 -> AgdaAny
d_epoch_2132 ~v0 v1 ~v2 = du_epoch_2132 v1
du_epoch_2132 :: T_GeneralizeTel_12259 -> AgdaAny
du_epoch_2132 v0
  = coe d_epoch_2050 (coe d_'46'generalizedField'45'Γ_12243 (coe v0))
-- Ledger.Conway.Conformance.Gov._.pparams
d_pparams_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_12259 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2134 ~v0 v1 ~v2 = du_pparams_2134 v1
du_pparams_2134 ::
  T_GeneralizeTel_12259 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2134 v0
  = coe
      d_pparams_2052 (coe d_'46'generalizedField'45'Γ_12243 (coe v0))
-- Ledger.Conway.Conformance.Gov._.ppolicy
d_ppolicy_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_12259 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 -> Maybe AgdaAny
d_ppolicy_2136 ~v0 v1 ~v2 = du_ppolicy_2136 v1
du_ppolicy_2136 :: T_GeneralizeTel_12259 -> Maybe AgdaAny
du_ppolicy_2136 v0
  = coe
      d_ppolicy_2054 (coe d_'46'generalizedField'45'Γ_12243 (coe v0))
-- Ledger.Conway.Conformance.Gov._.txid
d_txid_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_12259 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 -> AgdaAny
d_txid_2138 ~v0 v1 ~v2 = du_txid_2138 v1
du_txid_2138 :: T_GeneralizeTel_12259 -> AgdaAny
du_txid_2138 v0
  = coe d_txid_2048 (coe d_'46'generalizedField'45'Γ_12243 (coe v0))
-- Ledger.Conway.Conformance.Gov._.govActionDeposit
d_govActionDeposit_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_12259 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 -> Integer
d_govActionDeposit_2164 ~v0 v1 ~v2 = du_govActionDeposit_2164 v1
du_govActionDeposit_2164 :: T_GeneralizeTel_12259 -> Integer
du_govActionDeposit_2164 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370
      (coe
         d_pparams_2052 (coe d_'46'generalizedField'45'Γ_12243 (coe v0)))
-- Ledger.Conway.Conformance.Gov._.govActionLifetime
d_govActionLifetime_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_12259 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 -> Integer
d_govActionLifetime_2166 ~v0 v1 ~v2 = du_govActionLifetime_2166 v1
du_govActionLifetime_2166 :: T_GeneralizeTel_12259 -> Integer
du_govActionLifetime_2166 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368
      (coe
         d_pparams_2052 (coe d_'46'generalizedField'45'Γ_12243 (coe v0)))
-- Ledger.Conway.Conformance.Gov._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__2228 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GovEnv_2034 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__2228 = erased
-- Ledger.Conway.Conformance.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_9437 ::
  T_GeneralizeTel_9449 -> T_GovEnv_2034
d_'46'generalizedField'45'Γ_9437 v0
  = case coe v0 of
      C_mkGeneralizeTel_9451 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-aid
d_'46'generalizedField'45'aid_9439 ::
  T_GeneralizeTel_9449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'aid_9439 v0
  = case coe v0 of
      C_mkGeneralizeTel_9451 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-voter
d_'46'generalizedField'45'voter_9441 ::
  T_GeneralizeTel_9449 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voter_9441 v0
  = case coe v0 of
      C_mkGeneralizeTel_9451 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-v
d_'46'generalizedField'45'v_9443 ::
  T_GeneralizeTel_9449 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724
d_'46'generalizedField'45'v_9443 v0
  = case coe v0 of
      C_mkGeneralizeTel_9451 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-s
d_'46'generalizedField'45's_9445 ::
  T_GeneralizeTel_9449 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_9445 v0
  = case coe v0 of
      C_mkGeneralizeTel_9451 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-k
d_'46'generalizedField'45'k_9447 :: T_GeneralizeTel_9449 -> Integer
d_'46'generalizedField'45'k_9447 v0
  = case coe v0 of
      C_mkGeneralizeTel_9451 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GeneralizeTel
d_GeneralizeTel_9449 a0 = ()
data T_GeneralizeTel_9449
  = C_mkGeneralizeTel_9451 T_GovEnv_2034
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
-- Ledger.Conway.Conformance.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_12243 ::
  T_GeneralizeTel_12259 -> T_GovEnv_2034
d_'46'generalizedField'45'Γ_12243 v0
  = case coe v0 of
      C_mkGeneralizeTel_12261 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-addr
d_'46'generalizedField'45'addr_12245 ::
  T_GeneralizeTel_12259 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_'46'generalizedField'45'addr_12245 v0
  = case coe v0 of
      C_mkGeneralizeTel_12261 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-a
d_'46'generalizedField'45'a_12247 ::
  T_GeneralizeTel_12259 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_'46'generalizedField'45'a_12247 v0
  = case coe v0 of
      C_mkGeneralizeTel_12261 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-p
d_'46'generalizedField'45'p_12249 ::
  T_GeneralizeTel_12259 -> Maybe AgdaAny
d_'46'generalizedField'45'p_12249 v0
  = case coe v0 of
      C_mkGeneralizeTel_12261 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-d
d_'46'generalizedField'45'd_12251 ::
  T_GeneralizeTel_12259 -> Integer
d_'46'generalizedField'45'd_12251 v0
  = case coe v0 of
      C_mkGeneralizeTel_12261 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-prev
d_'46'generalizedField'45'prev_12253 ::
  T_GeneralizeTel_12259 -> AgdaAny
d_'46'generalizedField'45'prev_12253 v0
  = case coe v0 of
      C_mkGeneralizeTel_12261 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-s
d_'46'generalizedField'45's_12255 ::
  T_GeneralizeTel_12259 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_12255 v0
  = case coe v0 of
      C_mkGeneralizeTel_12261 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-k
d_'46'generalizedField'45'k_12257 ::
  T_GeneralizeTel_12259 -> Integer
d_'46'generalizedField'45'k_12257 v0
  = case coe v0 of
      C_mkGeneralizeTel_12261 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GeneralizeTel
d_GeneralizeTel_12259 a0 = ()
data T_GeneralizeTel_12259
  = C_mkGeneralizeTel_12261 T_GovEnv_2034
                            MAlonzo.Code.Ledger.Address.T_RwdAddr_76
                            MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
                            (Maybe AgdaAny) Integer AgdaAny
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
