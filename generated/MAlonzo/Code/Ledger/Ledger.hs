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

module MAlonzo.Code.Ledger.Ledger where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Gov
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxow

-- _._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__22 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__22 = erased
-- _.CertEnv
d_CertEnv_60 a0 = ()
-- _.CertState
d_CertState_62 a0 = ()
-- _.GovProposal
d_GovProposal_220 a0 = ()
-- _.GovVote
d_GovVote_224 a0 = ()
-- _.PParams
d_PParams_296 a0 = ()
-- _.ScriptHash
d_ScriptHash_360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_360 = erased
-- _.Slot
d_Slot_408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_408 = erased
-- _.Tx
d_Tx_438 a0 = ()
-- _.TxBody
d_TxBody_440 a0 = ()
-- _.epoch
d_epoch_520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_520 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1520 (coe v0))
-- _.CertEnv.deposits
d_deposits_762 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_762 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_886 (coe v0)
-- _.CertEnv.epoch
d_epoch_764 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_866 -> AgdaAny
d_epoch_764 v0 = coe MAlonzo.Code.Ledger.Certs.d_epoch_878 (coe v0)
-- _.CertEnv.pp
d_pp_766 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_766 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_880 (coe v0)
-- _.CertEnv.votes
d_votes_768 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
d_votes_768 v0 = coe MAlonzo.Code.Ledger.Certs.d_votes_882 (coe v0)
-- _.CertEnv.wdrls
d_wdrls_770 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_770 v0 = coe MAlonzo.Code.Ledger.Certs.d_wdrls_884 (coe v0)
-- _.CertState.dState
d_dState_774 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_DState_890
d_dState_774 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_938 (coe v0)
-- _.CertState.gState
d_gState_776 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_GState_918
d_gState_776 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_942 (coe v0)
-- _.CertState.pState
d_pState_778 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_778 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_940 (coe v0)
-- _.GovProposal.action
d_action_932 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_694
d_action_932 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_768 (coe v0)
-- _.GovProposal.anchor
d_anchor_934 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_934 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_778 (coe v0)
-- _.GovProposal.deposit
d_deposit_936 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 -> Integer
d_deposit_936 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_774 (coe v0)
-- _.GovProposal.policy
d_policy_938 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  Maybe AgdaAny
d_policy_938 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_772 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_940 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 -> AgdaAny
d_prevAction_940 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_770 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_942 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_942 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_776 (coe v0)
-- _.GovVote.anchor
d_anchor_954 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_954 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_752 (coe v0)
-- _.GovVote.gid
d_gid_956 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_956 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_746 (coe v0)
-- _.GovVote.vote
d_vote_958 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_728
d_vote_958 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_750 (coe v0)
-- _.GovVote.voter
d_voter_960 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_960 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_748 (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_984 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_988 a0 = ()
-- _.PParams.Emax
d_Emax_1136 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_1136 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_336 (coe v0)
-- _.PParams.a
d_a_1138 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_1138 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_320 (coe v0)
-- _.PParams.a0
d_a0_1140 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1140 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_340 (coe v0)
-- _.PParams.b
d_b_1142 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_1142 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_322 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1144 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_1144 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_352 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1146 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_1146 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_350 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1148 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_1148 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_328 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1150 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_1150 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_342 (coe v0)
-- _.PParams.costmdls
d_costmdls_1152 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_1152 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_344 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1154 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_1154 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_360 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1156 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_1156 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_358 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1158 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_1158 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1160 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_1160 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1162 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_1162 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_354 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1164 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_1164 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_324 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1166 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_1166 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_312 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1168 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_1168 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_304 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1170 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_1170 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_316 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1172 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_1172 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_308 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1174 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_1174 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_310 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1176 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_1176 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_306 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1178 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_1178 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_314 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1180 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1180 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_332
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1182 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_1182 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_334 (coe v0)
-- _.PParams.nopt
d_nopt_1184 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_1184 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_338 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1186 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_1186 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_326 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1188 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_1188 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_346 (coe v0)
-- _.PParams.prices
d_prices_1190 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_1190 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_330 (coe v0)
-- _.PParams.pv
d_pv_1192 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1192 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_318 (coe v0)
-- _.Tx.body
d_body_1610 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2854 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752
d_body_1610 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2864 (coe v0)
-- _.Tx.isValid
d_isValid_1612 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2854 -> Bool
d_isValid_1612 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2868 (coe v0)
-- _.Tx.txAD
d_txAD_1614 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2854 -> Maybe AgdaAny
d_txAD_1614 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2870 (coe v0)
-- _.Tx.wits
d_wits_1616 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2854 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2834
d_wits_1616 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2866 (coe v0)
-- _.TxBody.collateral
d_collateral_1620 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1620 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2828 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1622 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 -> Maybe Integer
d_curTreasury_1622 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2822 (coe v0)
-- _.TxBody.mint
d_mint_1624 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 -> AgdaAny
d_mint_1624 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2802 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1626 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1626 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2796 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1628 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 -> [AgdaAny]
d_reqSigHash_1628 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2830 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1630 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 -> Maybe AgdaAny
d_scriptIntHash_1630 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2832 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1632 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 -> Maybe AgdaAny
d_txADhash_1632 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2818 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 -> Maybe AgdaAny
d_txNetworkId_1634 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2820 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1636 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834]
d_txcerts_1636 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2806 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1638 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 -> Integer
d_txdonation_1638 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2814 (coe v0)
-- _.TxBody.txfee
d_txfee_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 -> Integer
d_txfee_1640 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2800 (coe v0)
-- _.TxBody.txid
d_txid_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 -> AgdaAny
d_txid_1642 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2826 (coe v0)
-- _.TxBody.txins
d_txins_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1644 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2794 (coe v0)
-- _.TxBody.txouts
d_txouts_1646 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1646 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2798 (coe v0)
-- _.TxBody.txprop
d_txprop_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754]
d_txprop_1648 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2812 (coe v0)
-- _.TxBody.txsize
d_txsize_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 -> Integer
d_txsize_1650 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2824 (coe v0)
-- _.TxBody.txup
d_txup_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1652 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2816 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1654 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2804 (coe v0)
-- _.TxBody.txvote
d_txvote_1656 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
d_txvote_1656 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2810 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1658 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2808 (coe v0)
-- Ledger.Ledger._.EnactState
d_EnactState_1738 a0 a1 = ()
-- Ledger.Ledger._.EnactState.cc
d_cc_1774 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1774 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v0)
-- Ledger.Ledger._.EnactState.constitution
d_constitution_1776 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1776 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_844 (coe v0)
-- Ledger.Ledger._.EnactState.pparams
d_pparams_1778 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1778 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v0)
-- Ledger.Ledger._.EnactState.pv
d_pv_1780 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1780 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_846 (coe v0)
-- Ledger.Ledger._.EnactState.withdrawals
d_withdrawals_1782 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1782 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_850 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1798 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1008 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1798 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1806 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1808 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 -> ()
d_GovState_1808 = erased
-- Ledger.Ledger._.GovEnv.enactState
d_enactState_1874 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1008 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_1874 v0
  = coe MAlonzo.Code.Ledger.Gov.d_enactState_1028 (coe v0)
-- Ledger.Ledger._.GovEnv.epoch
d_epoch_1876 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1008 -> AgdaAny
d_epoch_1876 v0 = coe MAlonzo.Code.Ledger.Gov.d_epoch_1022 (coe v0)
-- Ledger.Ledger._.GovEnv.pparams
d_pparams_1878 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1008 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1878 v0
  = coe MAlonzo.Code.Ledger.Gov.d_pparams_1024 (coe v0)
-- Ledger.Ledger._.GovEnv.ppolicy
d_ppolicy_1880 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1008 -> Maybe AgdaAny
d_ppolicy_1880 v0
  = coe MAlonzo.Code.Ledger.Gov.d_ppolicy_1026 (coe v0)
-- Ledger.Ledger._.GovEnv.txid
d_txid_1882 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1008 -> AgdaAny
d_txid_1882 v0 = coe MAlonzo.Code.Ledger.Gov.d_txid_1020 (coe v0)
-- Ledger.Ledger._.UTxOState
d_UTxOState_1930 a0 a1 = ()
-- Ledger.Ledger._.UTxOState.deposits
d_deposits_2026 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2026 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1958 (coe v0)
-- Ledger.Ledger._.UTxOState.donations
d_donations_2028 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944 -> Integer
d_donations_2028 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1960 (coe v0)
-- Ledger.Ledger._.UTxOState.fees
d_fees_2030 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944 -> Integer
d_fees_2030 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1956 (coe v0)
-- Ledger.Ledger._.UTxOState.utxo
d_utxo_2032 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2032 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1954 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2046 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_2104 a0 a1 = ()
data T_LEnv_2104
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2126 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_244
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_830
                                                          Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2116 :: T_LEnv_2104 -> AgdaAny
d_slot_2116 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2126 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2118 :: T_LEnv_2104 -> Maybe AgdaAny
d_ppolicy_2118 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2126 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2120 ::
  T_LEnv_2104 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2120 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2126 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2122 ::
  T_LEnv_2104 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2122 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2126 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2124 :: T_LEnv_2104 -> Integer
d_treasury_2124 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2126 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_2128 a0 a1 = ()
data T_LState_2128
  = C_'10214'_'44'_'44'_'10215''737'_2142 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_930
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2136 ::
  T_LState_2128 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944
d_utxoSt_2136 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2142 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2138 ::
  T_LState_2128 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2138 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2142 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2140 ::
  T_LState_2128 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_2140 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2142 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2144 ~v0 ~v1 v2 = du_txgov_2144 v2
du_txgov_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2752 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2144 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2812 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2810 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2210 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2210
  = C_LEDGER'45'V_2290 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2370 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_2214 ~v0 ~v1 v2 = du_certState_2214 v2
du_certState_2214 ::
  T_GeneralizeTel_6361 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
du_certState_2214 v0
  = coe
      d_certState_2140 (coe d_'46'generalizedField'45's_6349 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2216 ~v0 ~v1 v2 = du_govSt_2216 v2
du_govSt_2216 ::
  T_GeneralizeTel_6361 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2216 v0
  = coe d_govSt_2138 (coe d_'46'generalizedField'45's_6349 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944
d_utxoSt_2218 ~v0 ~v1 v2 = du_utxoSt_2218 v2
du_utxoSt_2218 ::
  T_GeneralizeTel_6361 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944
du_utxoSt_2218 v0
  = coe d_utxoSt_2136 (coe d_'46'generalizedField'45's_6349 (coe v0))
-- Ledger.Ledger._.txcerts
d_txcerts_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 -> [MAlonzo.Code.Ledger.Certs.T_DCert_834]
d_txcerts_2240 ~v0 ~v1 v2 = du_txcerts_2240 v2
du_txcerts_2240 ::
  T_GeneralizeTel_6361 -> [MAlonzo.Code.Ledger.Certs.T_DCert_834]
du_txcerts_2240 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2806
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2864
         (coe d_'46'generalizedField'45'tx_6351 (coe v0)))
-- Ledger.Ledger._.txid
d_txid_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 -> AgdaAny
d_txid_2246 ~v0 ~v1 v2 = du_txid_2246 v2
du_txid_2246 :: T_GeneralizeTel_6361 -> AgdaAny
du_txid_2246 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2826
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2864
         (coe d_'46'generalizedField'45'tx_6351 (coe v0)))
-- Ledger.Ledger._.txvote
d_txvote_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
d_txvote_2260 ~v0 ~v1 v2 = du_txvote_2260 v2
du_txvote_2260 ::
  T_GeneralizeTel_6361 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
du_txvote_2260 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2810
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2864
         (coe d_'46'generalizedField'45'tx_6351 (coe v0)))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2262 ~v0 ~v1 v2 = du_txwdrls_2262 v2
du_txwdrls_2262 ::
  T_GeneralizeTel_6361 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2262 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2808
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2864
         (coe d_'46'generalizedField'45'tx_6351 (coe v0)))
-- Ledger.Ledger._.enactState
d_enactState_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2266 ~v0 ~v1 v2 = du_enactState_2266 v2
du_enactState_2266 ::
  T_GeneralizeTel_6361 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2266 v0
  = coe
      d_enactState_2122 (coe d_'46'generalizedField'45'Γ_6353 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2268 ~v0 ~v1 v2 = du_pparams_2268 v2
du_pparams_2268 ::
  T_GeneralizeTel_6361 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2268 v0
  = coe
      d_pparams_2120 (coe d_'46'generalizedField'45'Γ_6353 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 -> Maybe AgdaAny
d_ppolicy_2270 ~v0 ~v1 v2 = du_ppolicy_2270 v2
du_ppolicy_2270 :: T_GeneralizeTel_6361 -> Maybe AgdaAny
du_ppolicy_2270 v0
  = coe
      d_ppolicy_2118 (coe d_'46'generalizedField'45'Γ_6353 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 -> AgdaAny
d_slot_2272 ~v0 ~v1 v2 = du_slot_2272 v2
du_slot_2272 :: T_GeneralizeTel_6361 -> AgdaAny
du_slot_2272 v0
  = coe d_slot_2116 (coe d_'46'generalizedField'45'Γ_6353 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 -> Integer
d_treasury_2274 ~v0 ~v1 v2 = du_treasury_2274 v2
du_treasury_2274 :: T_GeneralizeTel_6361 -> Integer
du_treasury_2274 v0
  = coe
      d_treasury_2124 (coe d_'46'generalizedField'45'Γ_6353 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2280 ~v0 ~v1 v2 = du_enactState_2280 v2
du_enactState_2280 ::
  T_GeneralizeTel_6361 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2280 v0
  = coe
      d_enactState_2122 (coe d_'46'generalizedField'45'Γ_6353 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2282 ~v0 ~v1 v2 = du_pparams_2282 v2
du_pparams_2282 ::
  T_GeneralizeTel_6361 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2282 v0
  = coe
      d_pparams_2120 (coe d_'46'generalizedField'45'Γ_6353 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 -> Maybe AgdaAny
d_ppolicy_2284 ~v0 ~v1 v2 = du_ppolicy_2284 v2
du_ppolicy_2284 :: T_GeneralizeTel_6361 -> Maybe AgdaAny
du_ppolicy_2284 v0
  = coe
      d_ppolicy_2118 (coe d_'46'generalizedField'45'Γ_6353 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 -> AgdaAny
d_slot_2286 ~v0 ~v1 v2 = du_slot_2286 v2
du_slot_2286 :: T_GeneralizeTel_6361 -> AgdaAny
du_slot_2286 v0
  = coe d_slot_2116 (coe d_'46'generalizedField'45'Γ_6353 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6361 -> Integer
d_treasury_2288 ~v0 ~v1 v2 = du_treasury_2288 v2
du_treasury_2288 :: T_GeneralizeTel_6361 -> Integer
du_treasury_2288 v0
  = coe
      d_treasury_2124 (coe d_'46'generalizedField'45'Γ_6353 (coe v0))
-- Ledger.Ledger._.certState
d_certState_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6781 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_2294 ~v0 ~v1 v2 = du_certState_2294 v2
du_certState_2294 ::
  T_GeneralizeTel_6781 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
du_certState_2294 v0
  = coe
      d_certState_2140 (coe d_'46'generalizedField'45's_6773 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6781 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2296 ~v0 ~v1 v2 = du_govSt_2296 v2
du_govSt_2296 ::
  T_GeneralizeTel_6781 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2296 v0
  = coe d_govSt_2138 (coe d_'46'generalizedField'45's_6773 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2298 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6781 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944
d_utxoSt_2298 ~v0 ~v1 v2 = du_utxoSt_2298 v2
du_utxoSt_2298 ::
  T_GeneralizeTel_6781 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944
du_utxoSt_2298 v0
  = coe d_utxoSt_2136 (coe d_'46'generalizedField'45's_6773 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6781 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2346 ~v0 ~v1 v2 = du_enactState_2346 v2
du_enactState_2346 ::
  T_GeneralizeTel_6781 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2346 v0
  = coe
      d_enactState_2122 (coe d_'46'generalizedField'45'Γ_6777 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6781 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2348 ~v0 ~v1 v2 = du_pparams_2348 v2
du_pparams_2348 ::
  T_GeneralizeTel_6781 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2348 v0
  = coe
      d_pparams_2120 (coe d_'46'generalizedField'45'Γ_6777 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6781 -> Maybe AgdaAny
d_ppolicy_2350 ~v0 ~v1 v2 = du_ppolicy_2350 v2
du_ppolicy_2350 :: T_GeneralizeTel_6781 -> Maybe AgdaAny
du_ppolicy_2350 v0
  = coe
      d_ppolicy_2118 (coe d_'46'generalizedField'45'Γ_6777 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6781 -> AgdaAny
d_slot_2352 ~v0 ~v1 v2 = du_slot_2352 v2
du_slot_2352 :: T_GeneralizeTel_6781 -> AgdaAny
du_slot_2352 v0
  = coe d_slot_2116 (coe d_'46'generalizedField'45'Γ_6777 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2354 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6781 -> Integer
d_treasury_2354 ~v0 ~v1 v2 = du_treasury_2354 v2
du_treasury_2354 :: T_GeneralizeTel_6781 -> Integer
du_treasury_2354 v0
  = coe
      d_treasury_2124 (coe d_'46'generalizedField'45'Γ_6777 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6781 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2360 ~v0 ~v1 v2 = du_enactState_2360 v2
du_enactState_2360 ::
  T_GeneralizeTel_6781 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2360 v0
  = coe
      d_enactState_2122 (coe d_'46'generalizedField'45'Γ_6777 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2362 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6781 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2362 ~v0 ~v1 v2 = du_pparams_2362 v2
du_pparams_2362 ::
  T_GeneralizeTel_6781 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2362 v0
  = coe
      d_pparams_2120 (coe d_'46'generalizedField'45'Γ_6777 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6781 -> Maybe AgdaAny
d_ppolicy_2364 ~v0 ~v1 v2 = du_ppolicy_2364 v2
du_ppolicy_2364 :: T_GeneralizeTel_6781 -> Maybe AgdaAny
du_ppolicy_2364 v0
  = coe
      d_ppolicy_2118 (coe d_'46'generalizedField'45'Γ_6777 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6781 -> AgdaAny
d_slot_2366 ~v0 ~v1 v2 = du_slot_2366 v2
du_slot_2366 :: T_GeneralizeTel_6781 -> AgdaAny
du_slot_2366 v0
  = coe d_slot_2116 (coe d_'46'generalizedField'45'Γ_6777 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_GeneralizeTel_6781 -> Integer
d_treasury_2368 ~v0 ~v1 v2 = du_treasury_2368 v2
du_treasury_2368 :: T_GeneralizeTel_6781 -> Integer
du_treasury_2368 v0
  = coe
      d_treasury_2124 (coe d_'46'generalizedField'45'Γ_6777 (coe v0))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1730 ->
  T_LEnv_2104 ->
  T_LState_2128 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2854] -> T_LState_2128 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2388 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_6349 ::
  T_GeneralizeTel_6361 -> T_LState_2128
d_'46'generalizedField'45's_6349 v0
  = case coe v0 of
      C_mkGeneralizeTel_6363 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6351 ::
  T_GeneralizeTel_6361 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2854
d_'46'generalizedField'45'tx_6351 v0
  = case coe v0 of
      C_mkGeneralizeTel_6363 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6353 ::
  T_GeneralizeTel_6361 -> T_LEnv_2104
d_'46'generalizedField'45'Γ_6353 v0
  = case coe v0 of
      C_mkGeneralizeTel_6363 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6355 ::
  T_GeneralizeTel_6361 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944
d_'46'generalizedField'45'utxoSt''_6355 v0
  = case coe v0 of
      C_mkGeneralizeTel_6363 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_6357 ::
  T_GeneralizeTel_6361 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_'46'generalizedField'45'certState''_6357 v0
  = case coe v0 of
      C_mkGeneralizeTel_6363 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_6359 ::
  T_GeneralizeTel_6361 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_6359 v0
  = case coe v0 of
      C_mkGeneralizeTel_6363 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_6361 a0 a1 = ()
data T_GeneralizeTel_6361
  = C_mkGeneralizeTel_6363 T_LState_2128
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2854 T_LEnv_2104
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944
                           MAlonzo.Code.Ledger.Certs.T_CertState_930
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_6773 ::
  T_GeneralizeTel_6781 -> T_LState_2128
d_'46'generalizedField'45's_6773 v0
  = case coe v0 of
      C_mkGeneralizeTel_6783 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6775 ::
  T_GeneralizeTel_6781 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2854
d_'46'generalizedField'45'tx_6775 v0
  = case coe v0 of
      C_mkGeneralizeTel_6783 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6777 ::
  T_GeneralizeTel_6781 -> T_LEnv_2104
d_'46'generalizedField'45'Γ_6777 v0
  = case coe v0 of
      C_mkGeneralizeTel_6783 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6779 ::
  T_GeneralizeTel_6781 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944
d_'46'generalizedField'45'utxoSt''_6779 v0
  = case coe v0 of
      C_mkGeneralizeTel_6783 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_6781 a0 a1 = ()
data T_GeneralizeTel_6781
  = C_mkGeneralizeTel_6783 T_LState_2128
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2854 T_LEnv_2104
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944
