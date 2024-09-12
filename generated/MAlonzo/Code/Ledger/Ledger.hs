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
  MAlonzo.Code.Ledger.Certs.T_CertEnv_864 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_928 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__22 = erased
-- _.CertEnv
d_CertEnv_60 a0 = ()
-- _.CertState
d_CertState_62 a0 = ()
-- _.GovProposal
d_GovProposal_222 a0 = ()
-- _.GovVote
d_GovVote_226 a0 = ()
-- _.PParams
d_PParams_300 a0 = ()
-- _.ScriptHash
d_ScriptHash_364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_364 = erased
-- _.Slot
d_Slot_412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_412 = erased
-- _.Tx
d_Tx_442 a0 = ()
-- _.TxBody
d_TxBody_444 a0 = ()
-- _.epoch
d_epoch_524 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_524 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0))
-- _.CertEnv.deposits
d_deposits_766 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_766 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_884 (coe v0)
-- _.CertEnv.epoch
d_epoch_768 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_864 -> AgdaAny
d_epoch_768 v0 = coe MAlonzo.Code.Ledger.Certs.d_epoch_876 (coe v0)
-- _.CertEnv.pp
d_pp_770 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_864 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_770 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_878 (coe v0)
-- _.CertEnv.votes
d_votes_772 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_864 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
d_votes_772 v0 = coe MAlonzo.Code.Ledger.Certs.d_votes_880 (coe v0)
-- _.CertEnv.wdrls
d_wdrls_774 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_774 v0 = coe MAlonzo.Code.Ledger.Certs.d_wdrls_882 (coe v0)
-- _.CertState.dState
d_dState_778 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  MAlonzo.Code.Ledger.Certs.T_DState_888
d_dState_778 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_936 (coe v0)
-- _.CertState.gState
d_gState_780 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  MAlonzo.Code.Ledger.Certs.T_GState_916
d_gState_780 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_940 (coe v0)
-- _.CertState.pState
d_pState_782 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904
d_pState_782 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_938 (coe v0)
-- _.GovProposal.action
d_action_936 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_936 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_766 (coe v0)
-- _.GovProposal.anchor
d_anchor_938 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_938 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_776 (coe v0)
-- _.GovProposal.deposit
d_deposit_940 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 -> Integer
d_deposit_940 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_772 (coe v0)
-- _.GovProposal.policy
d_policy_942 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  Maybe AgdaAny
d_policy_942 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_770 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_944 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 -> AgdaAny
d_prevAction_944 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_768 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_946 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_946 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_774 (coe v0)
-- _.GovVote.anchor
d_anchor_958 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_958 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_750 (coe v0)
-- _.GovVote.gid
d_gid_960 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_960 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_744 (coe v0)
-- _.GovVote.vote
d_vote_962 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_726
d_vote_962 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_748 (coe v0)
-- _.GovVote.voter
d_voter_964 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_964 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_746 (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_988 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_992 a0 = ()
-- _.PParams.Emax
d_Emax_1146 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_1146 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_334 (coe v0)
-- _.PParams.a
d_a_1148 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_1148 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_318 (coe v0)
-- _.PParams.a0
d_a0_1150 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1150 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_338 (coe v0)
-- _.PParams.b
d_b_1152 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_1152 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_320 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1154 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_1154 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_350 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1156 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_1156 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_348 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1158 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_1158 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_326 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1160 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_1160 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_340 (coe v0)
-- _.PParams.costmdls
d_costmdls_1162 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_1162 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_342 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1164 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_1164 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_358 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1166 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_1166 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_356 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1168 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_1168 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1170 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_1170 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_354 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1172 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_1172 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_352 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1174 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_1174 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_322 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1176 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_1176 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_310 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1178 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_1178 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_302 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1180 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_1180 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_314 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1182 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_1182 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_306 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1184 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_1184 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_308 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1186 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_1186 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_304 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1188 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_1188 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_312 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1190 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1190 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_330
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1192 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_1192 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_332 (coe v0)
-- _.PParams.nopt
d_nopt_1194 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_1194 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_336 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1196 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_1196 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_324 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1198 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_1198 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_344 (coe v0)
-- _.PParams.prices
d_prices_1200 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_1200 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_328 (coe v0)
-- _.PParams.pv
d_pv_1202 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1202 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_316 (coe v0)
-- _.Tx.body
d_body_1618 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768
d_body_1618 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v0)
-- _.Tx.isValid
d_isValid_1620 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Bool
d_isValid_1620 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2884 (coe v0)
-- _.Tx.txAD
d_txAD_1622 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Maybe AgdaAny
d_txAD_1622 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2886 (coe v0)
-- _.Tx.wits
d_wits_1624 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2850
d_wits_1624 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2882 (coe v0)
-- _.TxBody.collateral
d_collateral_1628 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1628 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2844 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1630 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Maybe Integer
d_curTreasury_1630 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2838 (coe v0)
-- _.TxBody.mint
d_mint_1632 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> AgdaAny
d_mint_1632 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2818 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1634 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2812 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1636 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> [AgdaAny]
d_reqSigHash_1636 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2846 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1638 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Maybe AgdaAny
d_scriptIntHash_1638 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2848 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Maybe AgdaAny
d_txADhash_1640 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2834 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Maybe AgdaAny
d_txNetworkId_1642 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2836 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_1644 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2822 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1646 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Integer
d_txdonation_1646 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2830 (coe v0)
-- _.TxBody.txfee
d_txfee_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Integer
d_txfee_1648 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2816 (coe v0)
-- _.TxBody.txid
d_txid_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> AgdaAny
d_txid_1650 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2842 (coe v0)
-- _.TxBody.txins
d_txins_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1652 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2810 (coe v0)
-- _.TxBody.txouts
d_txouts_1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1654 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2814 (coe v0)
-- _.TxBody.txprop
d_txprop_1656 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752]
d_txprop_1656 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2828 (coe v0)
-- _.TxBody.txsize
d_txsize_1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Integer
d_txsize_1658 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2840 (coe v0)
-- _.TxBody.txup
d_txup_1660 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1660 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2832 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1662 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2820 (coe v0)
-- _.TxBody.txvote
d_txvote_1664 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
d_txvote_1664 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2826 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1666 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1666 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2824 (coe v0)
-- Ledger.Ledger._.EnactState
d_EnactState_1746 a0 a1 = ()
-- Ledger.Ledger._.EnactState.cc
d_cc_1782 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1782 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v0)
-- Ledger.Ledger._.EnactState.constitution
d_constitution_1784 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1784 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_842 (coe v0)
-- Ledger.Ledger._.EnactState.pparams
d_pparams_1786 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1786 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v0)
-- Ledger.Ledger._.EnactState.pv
d_pv_1788 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1788 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_844 (coe v0)
-- Ledger.Ledger._.EnactState.withdrawals
d_withdrawals_1790 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1790 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_848 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1006 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1806 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1814 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1816 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 -> ()
d_GovState_1816 = erased
-- Ledger.Ledger._.GovEnv.enactState
d_enactState_1882 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1006 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_1882 v0
  = coe MAlonzo.Code.Ledger.Gov.d_enactState_1026 (coe v0)
-- Ledger.Ledger._.GovEnv.epoch
d_epoch_1884 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1006 -> AgdaAny
d_epoch_1884 v0 = coe MAlonzo.Code.Ledger.Gov.d_epoch_1020 (coe v0)
-- Ledger.Ledger._.GovEnv.pparams
d_pparams_1886 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1006 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1886 v0
  = coe MAlonzo.Code.Ledger.Gov.d_pparams_1022 (coe v0)
-- Ledger.Ledger._.GovEnv.ppolicy
d_ppolicy_1888 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1006 -> Maybe AgdaAny
d_ppolicy_1888 v0
  = coe MAlonzo.Code.Ledger.Gov.d_ppolicy_1024 (coe v0)
-- Ledger.Ledger._.GovEnv.txid
d_txid_1890 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1006 -> AgdaAny
d_txid_1890 v0 = coe MAlonzo.Code.Ledger.Gov.d_txid_1018 (coe v0)
-- Ledger.Ledger._.UTxOState
d_UTxOState_1938 a0 a1 = ()
-- Ledger.Ledger._.UTxOState.deposits
d_deposits_2034 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2034 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1966 (coe v0)
-- Ledger.Ledger._.UTxOState.donations
d_donations_2036 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952 -> Integer
d_donations_2036 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1968 (coe v0)
-- Ledger.Ledger._.UTxOState.fees
d_fees_2038 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952 -> Integer
d_fees_2038 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1964 (coe v0)
-- Ledger.Ledger._.UTxOState.utxo
d_utxo_2040 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2040 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1962 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2054 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_2112 a0 a1 = ()
data T_LEnv_2112
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2134 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_242
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_828
                                                          Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2124 :: T_LEnv_2112 -> AgdaAny
d_slot_2124 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2134 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2126 :: T_LEnv_2112 -> Maybe AgdaAny
d_ppolicy_2126 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2134 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2128 ::
  T_LEnv_2112 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2128 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2134 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2130 ::
  T_LEnv_2112 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_2130 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2134 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2132 :: T_LEnv_2112 -> Integer
d_treasury_2132 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2134 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_2136 a0 a1 = ()
data T_LState_2136
  = C_'10214'_'44'_'44'_'10215''737'_2150 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_928
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2144 ::
  T_LState_2136 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952
d_utxoSt_2144 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2150 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2146 ::
  T_LState_2136 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2146 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2150 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2148 ::
  T_LState_2136 -> MAlonzo.Code.Ledger.Certs.T_CertState_928
d_certState_2148 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2150 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_2152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2152 ~v0 ~v1 v2 = du_txgov_2152 v2
du_txgov_2152 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2152 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2828 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2826 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2218 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2218
  = C_LEDGER'45'V_2298 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2378 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_2222 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 -> MAlonzo.Code.Ledger.Certs.T_CertState_928
d_certState_2222 ~v0 ~v1 v2 = du_certState_2222 v2
du_certState_2222 ::
  T_GeneralizeTel_6383 -> MAlonzo.Code.Ledger.Certs.T_CertState_928
du_certState_2222 v0
  = coe
      d_certState_2148 (coe d_'46'generalizedField'45's_6371 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2224 ~v0 ~v1 v2 = du_govSt_2224 v2
du_govSt_2224 ::
  T_GeneralizeTel_6383 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2224 v0
  = coe d_govSt_2146 (coe d_'46'generalizedField'45's_6371 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2226 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952
d_utxoSt_2226 ~v0 ~v1 v2 = du_utxoSt_2226 v2
du_utxoSt_2226 ::
  T_GeneralizeTel_6383 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952
du_utxoSt_2226 v0
  = coe d_utxoSt_2144 (coe d_'46'generalizedField'45's_6371 (coe v0))
-- Ledger.Ledger._.txcerts
d_txcerts_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 -> [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_2248 ~v0 ~v1 v2 = du_txcerts_2248 v2
du_txcerts_2248 ::
  T_GeneralizeTel_6383 -> [MAlonzo.Code.Ledger.Certs.T_DCert_832]
du_txcerts_2248 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2822
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2880
         (coe d_'46'generalizedField'45'tx_6373 (coe v0)))
-- Ledger.Ledger._.txid
d_txid_2254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 -> AgdaAny
d_txid_2254 ~v0 ~v1 v2 = du_txid_2254 v2
du_txid_2254 :: T_GeneralizeTel_6383 -> AgdaAny
du_txid_2254 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2842
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2880
         (coe d_'46'generalizedField'45'tx_6373 (coe v0)))
-- Ledger.Ledger._.txvote
d_txvote_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
d_txvote_2268 ~v0 ~v1 v2 = du_txvote_2268 v2
du_txvote_2268 ::
  T_GeneralizeTel_6383 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
du_txvote_2268 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2826
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2880
         (coe d_'46'generalizedField'45'tx_6373 (coe v0)))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2270 ~v0 ~v1 v2 = du_txwdrls_2270 v2
du_txwdrls_2270 ::
  T_GeneralizeTel_6383 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2270 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2824
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2880
         (coe d_'46'generalizedField'45'tx_6373 (coe v0)))
-- Ledger.Ledger._.enactState
d_enactState_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_2274 ~v0 ~v1 v2 = du_enactState_2274 v2
du_enactState_2274 ::
  T_GeneralizeTel_6383 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
du_enactState_2274 v0
  = coe
      d_enactState_2130 (coe d_'46'generalizedField'45'Γ_6375 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2276 ~v0 ~v1 v2 = du_pparams_2276 v2
du_pparams_2276 ::
  T_GeneralizeTel_6383 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2276 v0
  = coe
      d_pparams_2128 (coe d_'46'generalizedField'45'Γ_6375 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 -> Maybe AgdaAny
d_ppolicy_2278 ~v0 ~v1 v2 = du_ppolicy_2278 v2
du_ppolicy_2278 :: T_GeneralizeTel_6383 -> Maybe AgdaAny
du_ppolicy_2278 v0
  = coe
      d_ppolicy_2126 (coe d_'46'generalizedField'45'Γ_6375 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 -> AgdaAny
d_slot_2280 ~v0 ~v1 v2 = du_slot_2280 v2
du_slot_2280 :: T_GeneralizeTel_6383 -> AgdaAny
du_slot_2280 v0
  = coe d_slot_2124 (coe d_'46'generalizedField'45'Γ_6375 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 -> Integer
d_treasury_2282 ~v0 ~v1 v2 = du_treasury_2282 v2
du_treasury_2282 :: T_GeneralizeTel_6383 -> Integer
du_treasury_2282 v0
  = coe
      d_treasury_2132 (coe d_'46'generalizedField'45'Γ_6375 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_2288 ~v0 ~v1 v2 = du_enactState_2288 v2
du_enactState_2288 ::
  T_GeneralizeTel_6383 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
du_enactState_2288 v0
  = coe
      d_enactState_2130 (coe d_'46'generalizedField'45'Γ_6375 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2290 ~v0 ~v1 v2 = du_pparams_2290 v2
du_pparams_2290 ::
  T_GeneralizeTel_6383 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2290 v0
  = coe
      d_pparams_2128 (coe d_'46'generalizedField'45'Γ_6375 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 -> Maybe AgdaAny
d_ppolicy_2292 ~v0 ~v1 v2 = du_ppolicy_2292 v2
du_ppolicy_2292 :: T_GeneralizeTel_6383 -> Maybe AgdaAny
du_ppolicy_2292 v0
  = coe
      d_ppolicy_2126 (coe d_'46'generalizedField'45'Γ_6375 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 -> AgdaAny
d_slot_2294 ~v0 ~v1 v2 = du_slot_2294 v2
du_slot_2294 :: T_GeneralizeTel_6383 -> AgdaAny
du_slot_2294 v0
  = coe d_slot_2124 (coe d_'46'generalizedField'45'Γ_6375 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6383 -> Integer
d_treasury_2296 ~v0 ~v1 v2 = du_treasury_2296 v2
du_treasury_2296 :: T_GeneralizeTel_6383 -> Integer
du_treasury_2296 v0
  = coe
      d_treasury_2132 (coe d_'46'generalizedField'45'Γ_6375 (coe v0))
-- Ledger.Ledger._.certState
d_certState_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6803 -> MAlonzo.Code.Ledger.Certs.T_CertState_928
d_certState_2302 ~v0 ~v1 v2 = du_certState_2302 v2
du_certState_2302 ::
  T_GeneralizeTel_6803 -> MAlonzo.Code.Ledger.Certs.T_CertState_928
du_certState_2302 v0
  = coe
      d_certState_2148 (coe d_'46'generalizedField'45's_6795 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6803 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2304 ~v0 ~v1 v2 = du_govSt_2304 v2
du_govSt_2304 ::
  T_GeneralizeTel_6803 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2304 v0
  = coe d_govSt_2146 (coe d_'46'generalizedField'45's_6795 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6803 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952
d_utxoSt_2306 ~v0 ~v1 v2 = du_utxoSt_2306 v2
du_utxoSt_2306 ::
  T_GeneralizeTel_6803 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952
du_utxoSt_2306 v0
  = coe d_utxoSt_2144 (coe d_'46'generalizedField'45's_6795 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2354 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6803 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_2354 ~v0 ~v1 v2 = du_enactState_2354 v2
du_enactState_2354 ::
  T_GeneralizeTel_6803 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
du_enactState_2354 v0
  = coe
      d_enactState_2130 (coe d_'46'generalizedField'45'Γ_6799 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6803 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2356 ~v0 ~v1 v2 = du_pparams_2356 v2
du_pparams_2356 ::
  T_GeneralizeTel_6803 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2356 v0
  = coe
      d_pparams_2128 (coe d_'46'generalizedField'45'Γ_6799 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6803 -> Maybe AgdaAny
d_ppolicy_2358 ~v0 ~v1 v2 = du_ppolicy_2358 v2
du_ppolicy_2358 :: T_GeneralizeTel_6803 -> Maybe AgdaAny
du_ppolicy_2358 v0
  = coe
      d_ppolicy_2126 (coe d_'46'generalizedField'45'Γ_6799 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6803 -> AgdaAny
d_slot_2360 ~v0 ~v1 v2 = du_slot_2360 v2
du_slot_2360 :: T_GeneralizeTel_6803 -> AgdaAny
du_slot_2360 v0
  = coe d_slot_2124 (coe d_'46'generalizedField'45'Γ_6799 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2362 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6803 -> Integer
d_treasury_2362 ~v0 ~v1 v2 = du_treasury_2362 v2
du_treasury_2362 :: T_GeneralizeTel_6803 -> Integer
du_treasury_2362 v0
  = coe
      d_treasury_2132 (coe d_'46'generalizedField'45'Γ_6799 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6803 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_2368 ~v0 ~v1 v2 = du_enactState_2368 v2
du_enactState_2368 ::
  T_GeneralizeTel_6803 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
du_enactState_2368 v0
  = coe
      d_enactState_2130 (coe d_'46'generalizedField'45'Γ_6799 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6803 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2370 ~v0 ~v1 v2 = du_pparams_2370 v2
du_pparams_2370 ::
  T_GeneralizeTel_6803 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2370 v0
  = coe
      d_pparams_2128 (coe d_'46'generalizedField'45'Γ_6799 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6803 -> Maybe AgdaAny
d_ppolicy_2372 ~v0 ~v1 v2 = du_ppolicy_2372 v2
du_ppolicy_2372 :: T_GeneralizeTel_6803 -> Maybe AgdaAny
du_ppolicy_2372 v0
  = coe
      d_ppolicy_2126 (coe d_'46'generalizedField'45'Γ_6799 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2374 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6803 -> AgdaAny
d_slot_2374 ~v0 ~v1 v2 = du_slot_2374 v2
du_slot_2374 :: T_GeneralizeTel_6803 -> AgdaAny
du_slot_2374 v0
  = coe d_slot_2124 (coe d_'46'generalizedField'45'Γ_6799 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_6803 -> Integer
d_treasury_2376 ~v0 ~v1 v2 = du_treasury_2376 v2
du_treasury_2376 :: T_GeneralizeTel_6803 -> Integer
du_treasury_2376 v0
  = coe
      d_treasury_2132 (coe d_'46'generalizedField'45'Γ_6799 (coe v0))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_LEnv_2112 ->
  T_LState_2136 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2870] -> T_LState_2136 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2396 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_6371 ::
  T_GeneralizeTel_6383 -> T_LState_2136
d_'46'generalizedField'45's_6371 v0
  = case coe v0 of
      C_mkGeneralizeTel_6385 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6373 ::
  T_GeneralizeTel_6383 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2870
d_'46'generalizedField'45'tx_6373 v0
  = case coe v0 of
      C_mkGeneralizeTel_6385 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6375 ::
  T_GeneralizeTel_6383 -> T_LEnv_2112
d_'46'generalizedField'45'Γ_6375 v0
  = case coe v0 of
      C_mkGeneralizeTel_6385 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6377 ::
  T_GeneralizeTel_6383 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952
d_'46'generalizedField'45'utxoSt''_6377 v0
  = case coe v0 of
      C_mkGeneralizeTel_6385 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_6379 ::
  T_GeneralizeTel_6383 -> MAlonzo.Code.Ledger.Certs.T_CertState_928
d_'46'generalizedField'45'certState''_6379 v0
  = case coe v0 of
      C_mkGeneralizeTel_6385 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_6381 ::
  T_GeneralizeTel_6383 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_6381 v0
  = case coe v0 of
      C_mkGeneralizeTel_6385 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_6383 a0 a1 = ()
data T_GeneralizeTel_6383
  = C_mkGeneralizeTel_6385 T_LState_2136
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2870 T_LEnv_2112
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952
                           MAlonzo.Code.Ledger.Certs.T_CertState_928
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_6795 ::
  T_GeneralizeTel_6803 -> T_LState_2136
d_'46'generalizedField'45's_6795 v0
  = case coe v0 of
      C_mkGeneralizeTel_6805 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6797 ::
  T_GeneralizeTel_6803 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2870
d_'46'generalizedField'45'tx_6797 v0
  = case coe v0 of
      C_mkGeneralizeTel_6805 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6799 ::
  T_GeneralizeTel_6803 -> T_LEnv_2112
d_'46'generalizedField'45'Γ_6799 v0
  = case coe v0 of
      C_mkGeneralizeTel_6805 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6801 ::
  T_GeneralizeTel_6803 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952
d_'46'generalizedField'45'utxoSt''_6801 v0
  = case coe v0 of
      C_mkGeneralizeTel_6805 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_6803 a0 a1 = ()
data T_GeneralizeTel_6803
  = C_mkGeneralizeTel_6805 T_LState_2136
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2870 T_LEnv_2112
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952
