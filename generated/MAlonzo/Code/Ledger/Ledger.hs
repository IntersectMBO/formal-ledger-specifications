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
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 -> ()
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
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0))
-- _.CertEnv.deposits
d_deposits_768 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_768 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_908 (coe v0)
-- _.CertEnv.epoch
d_epoch_770 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_888 -> AgdaAny
d_epoch_770 v0 = coe MAlonzo.Code.Ledger.Certs.d_epoch_900 (coe v0)
-- _.CertEnv.pp
d_pp_772 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_772 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_902 (coe v0)
-- _.CertEnv.votes
d_votes_774 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_votes_774 v0 = coe MAlonzo.Code.Ledger.Certs.d_votes_904 (coe v0)
-- _.CertEnv.wdrls
d_wdrls_776 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_776 v0 = coe MAlonzo.Code.Ledger.Certs.d_wdrls_906 (coe v0)
-- _.CertState.dState
d_dState_780 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  MAlonzo.Code.Ledger.Certs.T_DState_912
d_dState_780 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_960 (coe v0)
-- _.CertState.gState
d_gState_782 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940
d_gState_782 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_964 (coe v0)
-- _.CertState.pState
d_pState_784 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  MAlonzo.Code.Ledger.Certs.T_PState_928
d_pState_784 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_962 (coe v0)
-- _.GovProposal.action
d_action_938 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_938 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_790 (coe v0)
-- _.GovProposal.anchor
d_anchor_940 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_940 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_800 (coe v0)
-- _.GovProposal.deposit
d_deposit_942 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> Integer
d_deposit_942 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_796 (coe v0)
-- _.GovProposal.policy
d_policy_944 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Maybe AgdaAny
d_policy_944 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_794 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_946 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> AgdaAny
d_prevAction_946 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_792 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_948 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_948 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_798 (coe v0)
-- _.GovVote.anchor
d_anchor_960 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_960 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- _.GovVote.gid
d_gid_962 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_962 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_768 (coe v0)
-- _.GovVote.vote
d_vote_964 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750
d_vote_964 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_772 (coe v0)
-- _.GovVote.voter
d_voter_966 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_966 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_770 (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_990 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_994 a0 = ()
-- _.PParams.Emax
d_Emax_1142 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_1142 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_1144 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_1144 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_1146 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1146 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_1148 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_1148 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1150 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_1150 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1152 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_1152 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1154 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_1154 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1156 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_1156 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_1158 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_1158 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1160 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_1160 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1162 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_1162 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1164 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_1164 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1166 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_1166 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1168 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_1168 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1170 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_1170 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1172 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_1172 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1174 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_1174 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1176 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_1176 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1178 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_1178 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1180 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_1180 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1182 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_1182 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1184 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_1184 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1186 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_1186 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1188 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_1188 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1190 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1190 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1192 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_1192 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_1194 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_1194 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1196 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_1196 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1198 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_1198 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_1200 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_1200 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_1202 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1202 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1204 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1204 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1206 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_1206 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- _.Tx.body
d_body_1632 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796
d_body_1632 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v0)
-- _.Tx.isValid
d_isValid_1634 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> Bool
d_isValid_1634 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2912 (coe v0)
-- _.Tx.txAD
d_txAD_1636 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> Maybe AgdaAny
d_txAD_1636 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2914 (coe v0)
-- _.Tx.wits
d_wits_1638 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2878
d_wits_1638 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2910 (coe v0)
-- _.TxBody.collateral
d_collateral_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1642 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2872 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> Maybe Integer
d_curTreasury_1644 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2866 (coe v0)
-- _.TxBody.mint
d_mint_1646 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> AgdaAny
d_mint_1646 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2846 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1648 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2840 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> [AgdaAny]
d_reqSigHash_1650 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2874 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> Maybe AgdaAny
d_scriptIntHash_1652 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2876 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> Maybe AgdaAny
d_txADhash_1654 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2862 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1656 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> Maybe AgdaAny
d_txNetworkId_1656 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2864 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_1658 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2850 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1660 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> Integer
d_txdonation_1660 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2858 (coe v0)
-- _.TxBody.txfee
d_txfee_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> Integer
d_txfee_1662 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2844 (coe v0)
-- _.TxBody.txid
d_txid_1664 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> AgdaAny
d_txid_1664 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2870 (coe v0)
-- _.TxBody.txins
d_txins_1666 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1666 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2838 (coe v0)
-- _.TxBody.txouts
d_txouts_1668 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1668 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2842 (coe v0)
-- _.TxBody.txprop
d_txprop_1670 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776]
d_txprop_1670 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2856 (coe v0)
-- _.TxBody.txsize
d_txsize_1672 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> Integer
d_txsize_1672 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2868 (coe v0)
-- _.TxBody.txup
d_txup_1674 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1674 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2860 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1676 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1676 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2848 (coe v0)
-- _.TxBody.txvote
d_txvote_1678 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_txvote_1678 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2854 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1680 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1680 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2852 (coe v0)
-- Ledger.Ledger._.EnactState
d_EnactState_1760 a0 a1 = ()
-- Ledger.Ledger._.EnactState.cc
d_cc_1796 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1796 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v0)
-- Ledger.Ledger._.EnactState.constitution
d_constitution_1798 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1798 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_866 (coe v0)
-- Ledger.Ledger._.EnactState.pparams
d_pparams_1800 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1800 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_870 (coe v0)
-- Ledger.Ledger._.EnactState.pv
d_pv_1802 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1802 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_868 (coe v0)
-- Ledger.Ledger._.EnactState.withdrawals
d_withdrawals_1804 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1804 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_872 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1820 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1030 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1820 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1828 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1830 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 -> ()
d_GovState_1830 = erased
-- Ledger.Ledger._.GovEnv.enactState
d_enactState_1896 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1030 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_1896 v0
  = coe MAlonzo.Code.Ledger.Gov.d_enactState_1050 (coe v0)
-- Ledger.Ledger._.GovEnv.epoch
d_epoch_1898 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1030 -> AgdaAny
d_epoch_1898 v0 = coe MAlonzo.Code.Ledger.Gov.d_epoch_1044 (coe v0)
-- Ledger.Ledger._.GovEnv.pparams
d_pparams_1900 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1030 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1900 v0
  = coe MAlonzo.Code.Ledger.Gov.d_pparams_1046 (coe v0)
-- Ledger.Ledger._.GovEnv.ppolicy
d_ppolicy_1902 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1030 -> Maybe AgdaAny
d_ppolicy_1902 v0
  = coe MAlonzo.Code.Ledger.Gov.d_ppolicy_1048 (coe v0)
-- Ledger.Ledger._.GovEnv.txid
d_txid_1904 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1030 -> AgdaAny
d_txid_1904 v0 = coe MAlonzo.Code.Ledger.Gov.d_txid_1042 (coe v0)
-- Ledger.Ledger._.UTxOState
d_UTxOState_1952 a0 a1 = ()
-- Ledger.Ledger._.UTxOState.deposits
d_deposits_2050 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2050 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1984 (coe v0)
-- Ledger.Ledger._.UTxOState.donations
d_donations_2052 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 -> Integer
d_donations_2052 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1986 (coe v0)
-- Ledger.Ledger._.UTxOState.fees
d_fees_2054 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 -> Integer
d_fees_2054 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1982 (coe v0)
-- Ledger.Ledger._.UTxOState.utxo
d_utxo_2056 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2056 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1980 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2070 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_2128 a0 a1 = ()
data T_LEnv_2128
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2150 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_244
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_852
                                                          Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2140 :: T_LEnv_2128 -> AgdaAny
d_slot_2140 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2150 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2142 :: T_LEnv_2128 -> Maybe AgdaAny
d_ppolicy_2142 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2150 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2144 ::
  T_LEnv_2128 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2144 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2150 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2146 ::
  T_LEnv_2128 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2146 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2150 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2148 :: T_LEnv_2128 -> Integer
d_treasury_2148 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2150 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_2152 a0 a1 = ()
data T_LState_2152
  = C_'10214'_'44'_'44'_'10215''737'_2166 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_952
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2160 ::
  T_LState_2152 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
d_utxoSt_2160 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2166 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2162 ::
  T_LState_2152 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2162 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2166 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2164 ::
  T_LState_2152 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
d_certState_2164 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2166 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2168 ~v0 ~v1 v2 = du_txgov_2168 v2
du_txgov_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2168 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2856 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2854 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2234 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2234
  = C_LEDGER'45'V_2314 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2394 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
d_certState_2238 ~v0 ~v1 v2 = du_certState_2238 v2
du_certState_2238 ::
  T_GeneralizeTel_6389 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
du_certState_2238 v0
  = coe
      d_certState_2164 (coe d_'46'generalizedField'45's_6377 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2240 ~v0 ~v1 v2 = du_govSt_2240 v2
du_govSt_2240 ::
  T_GeneralizeTel_6389 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2240 v0
  = coe d_govSt_2162 (coe d_'46'generalizedField'45's_6377 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
d_utxoSt_2242 ~v0 ~v1 v2 = du_utxoSt_2242 v2
du_utxoSt_2242 ::
  T_GeneralizeTel_6389 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
du_utxoSt_2242 v0
  = coe d_utxoSt_2160 (coe d_'46'generalizedField'45's_6377 (coe v0))
-- Ledger.Ledger._.txcerts
d_txcerts_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_2264 ~v0 ~v1 v2 = du_txcerts_2264 v2
du_txcerts_2264 ::
  T_GeneralizeTel_6389 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
du_txcerts_2264 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2850
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2908
         (coe d_'46'generalizedField'45'tx_6379 (coe v0)))
-- Ledger.Ledger._.txid
d_txid_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 -> AgdaAny
d_txid_2270 ~v0 ~v1 v2 = du_txid_2270 v2
du_txid_2270 :: T_GeneralizeTel_6389 -> AgdaAny
du_txid_2270 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2870
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2908
         (coe d_'46'generalizedField'45'tx_6379 (coe v0)))
-- Ledger.Ledger._.txvote
d_txvote_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_txvote_2284 ~v0 ~v1 v2 = du_txvote_2284 v2
du_txvote_2284 ::
  T_GeneralizeTel_6389 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
du_txvote_2284 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2854
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2908
         (coe d_'46'generalizedField'45'tx_6379 (coe v0)))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2286 ~v0 ~v1 v2 = du_txwdrls_2286 v2
du_txwdrls_2286 ::
  T_GeneralizeTel_6389 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2286 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2852
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2908
         (coe d_'46'generalizedField'45'tx_6379 (coe v0)))
-- Ledger.Ledger._.enactState
d_enactState_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2290 ~v0 ~v1 v2 = du_enactState_2290 v2
du_enactState_2290 ::
  T_GeneralizeTel_6389 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_enactState_2290 v0
  = coe
      d_enactState_2146 (coe d_'46'generalizedField'45'Γ_6381 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2292 ~v0 ~v1 v2 = du_pparams_2292 v2
du_pparams_2292 ::
  T_GeneralizeTel_6389 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2292 v0
  = coe
      d_pparams_2144 (coe d_'46'generalizedField'45'Γ_6381 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 -> Maybe AgdaAny
d_ppolicy_2294 ~v0 ~v1 v2 = du_ppolicy_2294 v2
du_ppolicy_2294 :: T_GeneralizeTel_6389 -> Maybe AgdaAny
du_ppolicy_2294 v0
  = coe
      d_ppolicy_2142 (coe d_'46'generalizedField'45'Γ_6381 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 -> AgdaAny
d_slot_2296 ~v0 ~v1 v2 = du_slot_2296 v2
du_slot_2296 :: T_GeneralizeTel_6389 -> AgdaAny
du_slot_2296 v0
  = coe d_slot_2140 (coe d_'46'generalizedField'45'Γ_6381 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2298 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 -> Integer
d_treasury_2298 ~v0 ~v1 v2 = du_treasury_2298 v2
du_treasury_2298 :: T_GeneralizeTel_6389 -> Integer
du_treasury_2298 v0
  = coe
      d_treasury_2148 (coe d_'46'generalizedField'45'Γ_6381 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2304 ~v0 ~v1 v2 = du_enactState_2304 v2
du_enactState_2304 ::
  T_GeneralizeTel_6389 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_enactState_2304 v0
  = coe
      d_enactState_2146 (coe d_'46'generalizedField'45'Γ_6381 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2306 ~v0 ~v1 v2 = du_pparams_2306 v2
du_pparams_2306 ::
  T_GeneralizeTel_6389 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2306 v0
  = coe
      d_pparams_2144 (coe d_'46'generalizedField'45'Γ_6381 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2308 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 -> Maybe AgdaAny
d_ppolicy_2308 ~v0 ~v1 v2 = du_ppolicy_2308 v2
du_ppolicy_2308 :: T_GeneralizeTel_6389 -> Maybe AgdaAny
du_ppolicy_2308 v0
  = coe
      d_ppolicy_2142 (coe d_'46'generalizedField'45'Γ_6381 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 -> AgdaAny
d_slot_2310 ~v0 ~v1 v2 = du_slot_2310 v2
du_slot_2310 :: T_GeneralizeTel_6389 -> AgdaAny
du_slot_2310 v0
  = coe d_slot_2140 (coe d_'46'generalizedField'45'Γ_6381 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6389 -> Integer
d_treasury_2312 ~v0 ~v1 v2 = du_treasury_2312 v2
du_treasury_2312 :: T_GeneralizeTel_6389 -> Integer
du_treasury_2312 v0
  = coe
      d_treasury_2148 (coe d_'46'generalizedField'45'Γ_6381 (coe v0))
-- Ledger.Ledger._.certState
d_certState_2318 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6809 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
d_certState_2318 ~v0 ~v1 v2 = du_certState_2318 v2
du_certState_2318 ::
  T_GeneralizeTel_6809 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
du_certState_2318 v0
  = coe
      d_certState_2164 (coe d_'46'generalizedField'45's_6801 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6809 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2320 ~v0 ~v1 v2 = du_govSt_2320 v2
du_govSt_2320 ::
  T_GeneralizeTel_6809 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2320 v0
  = coe d_govSt_2162 (coe d_'46'generalizedField'45's_6801 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6809 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
d_utxoSt_2322 ~v0 ~v1 v2 = du_utxoSt_2322 v2
du_utxoSt_2322 ::
  T_GeneralizeTel_6809 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
du_utxoSt_2322 v0
  = coe d_utxoSt_2160 (coe d_'46'generalizedField'45's_6801 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6809 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2370 ~v0 ~v1 v2 = du_enactState_2370 v2
du_enactState_2370 ::
  T_GeneralizeTel_6809 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_enactState_2370 v0
  = coe
      d_enactState_2146 (coe d_'46'generalizedField'45'Γ_6805 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6809 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2372 ~v0 ~v1 v2 = du_pparams_2372 v2
du_pparams_2372 ::
  T_GeneralizeTel_6809 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2372 v0
  = coe
      d_pparams_2144 (coe d_'46'generalizedField'45'Γ_6805 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2374 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6809 -> Maybe AgdaAny
d_ppolicy_2374 ~v0 ~v1 v2 = du_ppolicy_2374 v2
du_ppolicy_2374 :: T_GeneralizeTel_6809 -> Maybe AgdaAny
du_ppolicy_2374 v0
  = coe
      d_ppolicy_2142 (coe d_'46'generalizedField'45'Γ_6805 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6809 -> AgdaAny
d_slot_2376 ~v0 ~v1 v2 = du_slot_2376 v2
du_slot_2376 :: T_GeneralizeTel_6809 -> AgdaAny
du_slot_2376 v0
  = coe d_slot_2140 (coe d_'46'generalizedField'45'Γ_6805 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6809 -> Integer
d_treasury_2378 ~v0 ~v1 v2 = du_treasury_2378 v2
du_treasury_2378 :: T_GeneralizeTel_6809 -> Integer
du_treasury_2378 v0
  = coe
      d_treasury_2148 (coe d_'46'generalizedField'45'Γ_6805 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6809 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2384 ~v0 ~v1 v2 = du_enactState_2384 v2
du_enactState_2384 ::
  T_GeneralizeTel_6809 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_enactState_2384 v0
  = coe
      d_enactState_2146 (coe d_'46'generalizedField'45'Γ_6805 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2386 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6809 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2386 ~v0 ~v1 v2 = du_pparams_2386 v2
du_pparams_2386 ::
  T_GeneralizeTel_6809 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2386 v0
  = coe
      d_pparams_2144 (coe d_'46'generalizedField'45'Γ_6805 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6809 -> Maybe AgdaAny
d_ppolicy_2388 ~v0 ~v1 v2 = du_ppolicy_2388 v2
du_ppolicy_2388 :: T_GeneralizeTel_6809 -> Maybe AgdaAny
du_ppolicy_2388 v0
  = coe
      d_ppolicy_2142 (coe d_'46'generalizedField'45'Γ_6805 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2390 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6809 -> AgdaAny
d_slot_2390 ~v0 ~v1 v2 = du_slot_2390 v2
du_slot_2390 :: T_GeneralizeTel_6809 -> AgdaAny
du_slot_2390 v0
  = coe d_slot_2140 (coe d_'46'generalizedField'45'Γ_6805 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6809 -> Integer
d_treasury_2392 ~v0 ~v1 v2 = du_treasury_2392 v2
du_treasury_2392 :: T_GeneralizeTel_6809 -> Integer
du_treasury_2392 v0
  = coe
      d_treasury_2148 (coe d_'46'generalizedField'45'Γ_6805 (coe v0))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_LEnv_2128 ->
  T_LState_2152 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2898] -> T_LState_2152 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2412 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_6377 ::
  T_GeneralizeTel_6389 -> T_LState_2152
d_'46'generalizedField'45's_6377 v0
  = case coe v0 of
      C_mkGeneralizeTel_6391 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6379 ::
  T_GeneralizeTel_6389 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2898
d_'46'generalizedField'45'tx_6379 v0
  = case coe v0 of
      C_mkGeneralizeTel_6391 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6381 ::
  T_GeneralizeTel_6389 -> T_LEnv_2128
d_'46'generalizedField'45'Γ_6381 v0
  = case coe v0 of
      C_mkGeneralizeTel_6391 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6383 ::
  T_GeneralizeTel_6389 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
d_'46'generalizedField'45'utxoSt''_6383 v0
  = case coe v0 of
      C_mkGeneralizeTel_6391 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_6385 ::
  T_GeneralizeTel_6389 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
d_'46'generalizedField'45'certState''_6385 v0
  = case coe v0 of
      C_mkGeneralizeTel_6391 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_6387 ::
  T_GeneralizeTel_6389 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_6387 v0
  = case coe v0 of
      C_mkGeneralizeTel_6391 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_6389 a0 a1 = ()
data T_GeneralizeTel_6389
  = C_mkGeneralizeTel_6391 T_LState_2152
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2898 T_LEnv_2128
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
                           MAlonzo.Code.Ledger.Certs.T_CertState_952
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_6801 ::
  T_GeneralizeTel_6809 -> T_LState_2152
d_'46'generalizedField'45's_6801 v0
  = case coe v0 of
      C_mkGeneralizeTel_6811 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6803 ::
  T_GeneralizeTel_6809 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2898
d_'46'generalizedField'45'tx_6803 v0
  = case coe v0 of
      C_mkGeneralizeTel_6811 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6805 ::
  T_GeneralizeTel_6809 -> T_LEnv_2128
d_'46'generalizedField'45'Γ_6805 v0
  = case coe v0 of
      C_mkGeneralizeTel_6811 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6807 ::
  T_GeneralizeTel_6809 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
d_'46'generalizedField'45'utxoSt''_6807 v0
  = case coe v0 of
      C_mkGeneralizeTel_6811 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_6809 a0 a1 = ()
data T_GeneralizeTel_6809
  = C_mkGeneralizeTel_6811 T_LState_2152
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2898 T_LEnv_2128
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
