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
d_PParams_298 a0 = ()
-- _.ScriptHash
d_ScriptHash_362 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_362 = erased
-- _.Slot
d_Slot_410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_410 = erased
-- _.Tx
d_Tx_440 a0 = ()
-- _.TxBody
d_TxBody_442 a0 = ()
-- _.epoch
d_epoch_522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_522 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0))
-- _.CertEnv.deposits
d_deposits_772 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_772 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_908 (coe v0)
-- _.CertEnv.epoch
d_epoch_774 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_888 -> AgdaAny
d_epoch_774 v0 = coe MAlonzo.Code.Ledger.Certs.d_epoch_900 (coe v0)
-- _.CertEnv.pp
d_pp_776 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_776 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_902 (coe v0)
-- _.CertEnv.votes
d_votes_778 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_votes_778 v0 = coe MAlonzo.Code.Ledger.Certs.d_votes_904 (coe v0)
-- _.CertEnv.wdrls
d_wdrls_780 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_780 v0 = coe MAlonzo.Code.Ledger.Certs.d_wdrls_906 (coe v0)
-- _.CertState.dState
d_dState_784 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  MAlonzo.Code.Ledger.Certs.T_DState_912
d_dState_784 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_960 (coe v0)
-- _.CertState.gState
d_gState_786 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940
d_gState_786 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_964 (coe v0)
-- _.CertState.pState
d_pState_788 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  MAlonzo.Code.Ledger.Certs.T_PState_928
d_pState_788 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_962 (coe v0)
-- _.GovProposal.action
d_action_942 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_942 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_790 (coe v0)
-- _.GovProposal.anchor
d_anchor_944 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_944 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_800 (coe v0)
-- _.GovProposal.deposit
d_deposit_946 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> Integer
d_deposit_946 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_796 (coe v0)
-- _.GovProposal.policy
d_policy_948 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Maybe AgdaAny
d_policy_948 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_794 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_950 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> AgdaAny
d_prevAction_950 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_792 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_952 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_952 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_798 (coe v0)
-- _.GovVote.anchor
d_anchor_964 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_964 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- _.GovVote.gid
d_gid_966 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_966 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_768 (coe v0)
-- _.GovVote.vote
d_vote_968 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750
d_vote_968 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_772 (coe v0)
-- _.GovVote.voter
d_voter_970 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_970 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_770 (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_994 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_998 a0 = ()
-- _.PParams.Emax
d_Emax_1146 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_1146 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_1148 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_1148 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_1150 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1150 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_1152 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_1152 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1154 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_1154 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1156 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_1156 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1158 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_1158 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1160 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_1160 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_1162 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_1162 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1164 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_1164 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1166 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_1166 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1168 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_1168 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1170 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_1170 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1172 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_1172 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1174 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_1174 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1176 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_1176 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1178 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_1178 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1180 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_1180 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1182 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_1182 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1184 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_1184 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1186 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_1186 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1188 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_1188 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1190 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_1190 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1192 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_1192 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1194 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1194 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1196 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_1196 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_1198 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_1198 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1200 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_1200 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1202 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_1202 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_1204 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_1204 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_1206 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1206 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1208 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1208 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1210 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_1210 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- _.Tx.body
d_body_1636 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800
d_body_1636 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2912 (coe v0)
-- _.Tx.isValid
d_isValid_1638 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2902 -> Bool
d_isValid_1638 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2916 (coe v0)
-- _.Tx.txAD
d_txAD_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 -> Maybe AgdaAny
d_txAD_1640 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2918 (coe v0)
-- _.Tx.wits
d_wits_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2882
d_wits_1642 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2914 (coe v0)
-- _.TxBody.collateral
d_collateral_1646 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1646 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2876 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> Maybe Integer
d_curTreasury_1648 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2870 (coe v0)
-- _.TxBody.mint
d_mint_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> AgdaAny
d_mint_1650 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2850 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1652 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2844 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> [AgdaAny]
d_reqSigHash_1654 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2878 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1656 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> Maybe AgdaAny
d_scriptIntHash_1656 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2880 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> Maybe AgdaAny
d_txADhash_1658 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2866 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1660 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> Maybe AgdaAny
d_txNetworkId_1660 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2868 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_1662 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2854 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1664 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> Integer
d_txdonation_1664 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2862 (coe v0)
-- _.TxBody.txfee
d_txfee_1666 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> Integer
d_txfee_1666 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2848 (coe v0)
-- _.TxBody.txid
d_txid_1668 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> AgdaAny
d_txid_1668 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2874 (coe v0)
-- _.TxBody.txins
d_txins_1670 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1670 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2842 (coe v0)
-- _.TxBody.txouts
d_txouts_1672 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1672 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2846 (coe v0)
-- _.TxBody.txprop
d_txprop_1674 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776]
d_txprop_1674 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2860 (coe v0)
-- _.TxBody.txsize
d_txsize_1676 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 -> Integer
d_txsize_1676 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2872 (coe v0)
-- _.TxBody.txup
d_txup_1678 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1678 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2864 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1680 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1680 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2852 (coe v0)
-- _.TxBody.txvote
d_txvote_1682 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_txvote_1682 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2858 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1684 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2856 (coe v0)
-- Ledger.Ledger._.EnactState
d_EnactState_1764 a0 a1 = ()
-- Ledger.Ledger._.EnactState.cc
d_cc_1800 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1800 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v0)
-- Ledger.Ledger._.EnactState.constitution
d_constitution_1802 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1802 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_866 (coe v0)
-- Ledger.Ledger._.EnactState.pparams
d_pparams_1804 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1804 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_870 (coe v0)
-- Ledger.Ledger._.EnactState.pv
d_pv_1806 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1806 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_868 (coe v0)
-- Ledger.Ledger._.EnactState.withdrawals
d_withdrawals_1808 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1808 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_872 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1824 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1030 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1824 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1832 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1834 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 -> ()
d_GovState_1834 = erased
-- Ledger.Ledger._.GovEnv.enactState
d_enactState_1900 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1030 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_1900 v0
  = coe MAlonzo.Code.Ledger.Gov.d_enactState_1050 (coe v0)
-- Ledger.Ledger._.GovEnv.epoch
d_epoch_1902 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1030 -> AgdaAny
d_epoch_1902 v0 = coe MAlonzo.Code.Ledger.Gov.d_epoch_1044 (coe v0)
-- Ledger.Ledger._.GovEnv.pparams
d_pparams_1904 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1030 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1904 v0
  = coe MAlonzo.Code.Ledger.Gov.d_pparams_1046 (coe v0)
-- Ledger.Ledger._.GovEnv.ppolicy
d_ppolicy_1906 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1030 -> Maybe AgdaAny
d_ppolicy_1906 v0
  = coe MAlonzo.Code.Ledger.Gov.d_ppolicy_1048 (coe v0)
-- Ledger.Ledger._.GovEnv.txid
d_txid_1908 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1030 -> AgdaAny
d_txid_1908 v0 = coe MAlonzo.Code.Ledger.Gov.d_txid_1042 (coe v0)
-- Ledger.Ledger._.UTxOState
d_UTxOState_1956 a0 a1 = ()
-- Ledger.Ledger._.UTxOState.deposits
d_deposits_2056 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2056 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2008 (coe v0)
-- Ledger.Ledger._.UTxOState.donations
d_donations_2058 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994 -> Integer
d_donations_2058 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2010 (coe v0)
-- Ledger.Ledger._.UTxOState.fees
d_fees_2060 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994 -> Integer
d_fees_2060 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2006 (coe v0)
-- Ledger.Ledger._.UTxOState.utxo
d_utxo_2062 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2062 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2004 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2076 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_2134 a0 a1 = ()
data T_LEnv_2134
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2156 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_244
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_852
                                                          Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2146 :: T_LEnv_2134 -> AgdaAny
d_slot_2146 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2156 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2148 :: T_LEnv_2134 -> Maybe AgdaAny
d_ppolicy_2148 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2156 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2150 ::
  T_LEnv_2134 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2150 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2156 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2152 ::
  T_LEnv_2134 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2152 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2156 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2154 :: T_LEnv_2134 -> Integer
d_treasury_2154 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2156 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_2158 a0 a1 = ()
data T_LState_2158
  = C_'10214'_'44'_'44'_'10215''737'_2172 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_952
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2166 ::
  T_LState_2158 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994
d_utxoSt_2166 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2172 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2168 ::
  T_LState_2158 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2168 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2172 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2170 ::
  T_LState_2158 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
d_certState_2170 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2172 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2174 ~v0 ~v1 v2 = du_txgov_2174 v2
du_txgov_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2174 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2860 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2858 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2240 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2240
  = C_LEDGER'45'V_2320 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2400 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
d_certState_2244 ~v0 ~v1 v2 = du_certState_2244 v2
du_certState_2244 ::
  T_GeneralizeTel_6423 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
du_certState_2244 v0
  = coe
      d_certState_2170 (coe d_'46'generalizedField'45's_6411 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2246 ~v0 ~v1 v2 = du_govSt_2246 v2
du_govSt_2246 ::
  T_GeneralizeTel_6423 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2246 v0
  = coe d_govSt_2168 (coe d_'46'generalizedField'45's_6411 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994
d_utxoSt_2248 ~v0 ~v1 v2 = du_utxoSt_2248 v2
du_utxoSt_2248 ::
  T_GeneralizeTel_6423 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994
du_utxoSt_2248 v0
  = coe d_utxoSt_2166 (coe d_'46'generalizedField'45's_6411 (coe v0))
-- Ledger.Ledger._.txcerts
d_txcerts_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_2270 ~v0 ~v1 v2 = du_txcerts_2270 v2
du_txcerts_2270 ::
  T_GeneralizeTel_6423 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
du_txcerts_2270 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2854
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2912
         (coe d_'46'generalizedField'45'tx_6413 (coe v0)))
-- Ledger.Ledger._.txid
d_txid_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 -> AgdaAny
d_txid_2276 ~v0 ~v1 v2 = du_txid_2276 v2
du_txid_2276 :: T_GeneralizeTel_6423 -> AgdaAny
du_txid_2276 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2874
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2912
         (coe d_'46'generalizedField'45'tx_6413 (coe v0)))
-- Ledger.Ledger._.txvote
d_txvote_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_txvote_2290 ~v0 ~v1 v2 = du_txvote_2290 v2
du_txvote_2290 ::
  T_GeneralizeTel_6423 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
du_txvote_2290 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2858
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2912
         (coe d_'46'generalizedField'45'tx_6413 (coe v0)))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2292 ~v0 ~v1 v2 = du_txwdrls_2292 v2
du_txwdrls_2292 ::
  T_GeneralizeTel_6423 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2292 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2856
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2912
         (coe d_'46'generalizedField'45'tx_6413 (coe v0)))
-- Ledger.Ledger._.enactState
d_enactState_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2296 ~v0 ~v1 v2 = du_enactState_2296 v2
du_enactState_2296 ::
  T_GeneralizeTel_6423 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_enactState_2296 v0
  = coe
      d_enactState_2152 (coe d_'46'generalizedField'45'Γ_6415 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2298 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2298 ~v0 ~v1 v2 = du_pparams_2298 v2
du_pparams_2298 ::
  T_GeneralizeTel_6423 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2298 v0
  = coe
      d_pparams_2150 (coe d_'46'generalizedField'45'Γ_6415 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2300 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 -> Maybe AgdaAny
d_ppolicy_2300 ~v0 ~v1 v2 = du_ppolicy_2300 v2
du_ppolicy_2300 :: T_GeneralizeTel_6423 -> Maybe AgdaAny
du_ppolicy_2300 v0
  = coe
      d_ppolicy_2148 (coe d_'46'generalizedField'45'Γ_6415 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 -> AgdaAny
d_slot_2302 ~v0 ~v1 v2 = du_slot_2302 v2
du_slot_2302 :: T_GeneralizeTel_6423 -> AgdaAny
du_slot_2302 v0
  = coe d_slot_2146 (coe d_'46'generalizedField'45'Γ_6415 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 -> Integer
d_treasury_2304 ~v0 ~v1 v2 = du_treasury_2304 v2
du_treasury_2304 :: T_GeneralizeTel_6423 -> Integer
du_treasury_2304 v0
  = coe
      d_treasury_2154 (coe d_'46'generalizedField'45'Γ_6415 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2310 ~v0 ~v1 v2 = du_enactState_2310 v2
du_enactState_2310 ::
  T_GeneralizeTel_6423 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_enactState_2310 v0
  = coe
      d_enactState_2152 (coe d_'46'generalizedField'45'Γ_6415 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2312 ~v0 ~v1 v2 = du_pparams_2312 v2
du_pparams_2312 ::
  T_GeneralizeTel_6423 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2312 v0
  = coe
      d_pparams_2150 (coe d_'46'generalizedField'45'Γ_6415 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2314 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 -> Maybe AgdaAny
d_ppolicy_2314 ~v0 ~v1 v2 = du_ppolicy_2314 v2
du_ppolicy_2314 :: T_GeneralizeTel_6423 -> Maybe AgdaAny
du_ppolicy_2314 v0
  = coe
      d_ppolicy_2148 (coe d_'46'generalizedField'45'Γ_6415 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 -> AgdaAny
d_slot_2316 ~v0 ~v1 v2 = du_slot_2316 v2
du_slot_2316 :: T_GeneralizeTel_6423 -> AgdaAny
du_slot_2316 v0
  = coe d_slot_2146 (coe d_'46'generalizedField'45'Γ_6415 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2318 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6423 -> Integer
d_treasury_2318 ~v0 ~v1 v2 = du_treasury_2318 v2
du_treasury_2318 :: T_GeneralizeTel_6423 -> Integer
du_treasury_2318 v0
  = coe
      d_treasury_2154 (coe d_'46'generalizedField'45'Γ_6415 (coe v0))
-- Ledger.Ledger._.certState
d_certState_2324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6843 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
d_certState_2324 ~v0 ~v1 v2 = du_certState_2324 v2
du_certState_2324 ::
  T_GeneralizeTel_6843 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
du_certState_2324 v0
  = coe
      d_certState_2170 (coe d_'46'generalizedField'45's_6835 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6843 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2326 ~v0 ~v1 v2 = du_govSt_2326 v2
du_govSt_2326 ::
  T_GeneralizeTel_6843 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2326 v0
  = coe d_govSt_2168 (coe d_'46'generalizedField'45's_6835 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6843 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994
d_utxoSt_2328 ~v0 ~v1 v2 = du_utxoSt_2328 v2
du_utxoSt_2328 ::
  T_GeneralizeTel_6843 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994
du_utxoSt_2328 v0
  = coe d_utxoSt_2166 (coe d_'46'generalizedField'45's_6835 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6843 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2376 ~v0 ~v1 v2 = du_enactState_2376 v2
du_enactState_2376 ::
  T_GeneralizeTel_6843 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_enactState_2376 v0
  = coe
      d_enactState_2152 (coe d_'46'generalizedField'45'Γ_6839 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6843 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2378 ~v0 ~v1 v2 = du_pparams_2378 v2
du_pparams_2378 ::
  T_GeneralizeTel_6843 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2378 v0
  = coe
      d_pparams_2150 (coe d_'46'generalizedField'45'Γ_6839 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6843 -> Maybe AgdaAny
d_ppolicy_2380 ~v0 ~v1 v2 = du_ppolicy_2380 v2
du_ppolicy_2380 :: T_GeneralizeTel_6843 -> Maybe AgdaAny
du_ppolicy_2380 v0
  = coe
      d_ppolicy_2148 (coe d_'46'generalizedField'45'Γ_6839 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6843 -> AgdaAny
d_slot_2382 ~v0 ~v1 v2 = du_slot_2382 v2
du_slot_2382 :: T_GeneralizeTel_6843 -> AgdaAny
du_slot_2382 v0
  = coe d_slot_2146 (coe d_'46'generalizedField'45'Γ_6839 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6843 -> Integer
d_treasury_2384 ~v0 ~v1 v2 = du_treasury_2384 v2
du_treasury_2384 :: T_GeneralizeTel_6843 -> Integer
du_treasury_2384 v0
  = coe
      d_treasury_2154 (coe d_'46'generalizedField'45'Γ_6839 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2390 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6843 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2390 ~v0 ~v1 v2 = du_enactState_2390 v2
du_enactState_2390 ::
  T_GeneralizeTel_6843 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_enactState_2390 v0
  = coe
      d_enactState_2152 (coe d_'46'generalizedField'45'Γ_6839 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6843 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2392 ~v0 ~v1 v2 = du_pparams_2392 v2
du_pparams_2392 ::
  T_GeneralizeTel_6843 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2392 v0
  = coe
      d_pparams_2150 (coe d_'46'generalizedField'45'Γ_6839 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6843 -> Maybe AgdaAny
d_ppolicy_2394 ~v0 ~v1 v2 = du_ppolicy_2394 v2
du_ppolicy_2394 :: T_GeneralizeTel_6843 -> Maybe AgdaAny
du_ppolicy_2394 v0
  = coe
      d_ppolicy_2148 (coe d_'46'generalizedField'45'Γ_6839 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6843 -> AgdaAny
d_slot_2396 ~v0 ~v1 v2 = du_slot_2396 v2
du_slot_2396 :: T_GeneralizeTel_6843 -> AgdaAny
du_slot_2396 v0
  = coe d_slot_2146 (coe d_'46'generalizedField'45'Γ_6839 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_6843 -> Integer
d_treasury_2398 ~v0 ~v1 v2 = du_treasury_2398 v2
du_treasury_2398 :: T_GeneralizeTel_6843 -> Integer
du_treasury_2398 v0
  = coe
      d_treasury_2154 (coe d_'46'generalizedField'45'Γ_6839 (coe v0))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2418 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_LEnv_2134 ->
  T_LState_2158 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2902] -> T_LState_2158 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2418 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_6411 ::
  T_GeneralizeTel_6423 -> T_LState_2158
d_'46'generalizedField'45's_6411 v0
  = case coe v0 of
      C_mkGeneralizeTel_6425 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6413 ::
  T_GeneralizeTel_6423 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2902
d_'46'generalizedField'45'tx_6413 v0
  = case coe v0 of
      C_mkGeneralizeTel_6425 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6415 ::
  T_GeneralizeTel_6423 -> T_LEnv_2134
d_'46'generalizedField'45'Γ_6415 v0
  = case coe v0 of
      C_mkGeneralizeTel_6425 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6417 ::
  T_GeneralizeTel_6423 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994
d_'46'generalizedField'45'utxoSt''_6417 v0
  = case coe v0 of
      C_mkGeneralizeTel_6425 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_6419 ::
  T_GeneralizeTel_6423 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
d_'46'generalizedField'45'certState''_6419 v0
  = case coe v0 of
      C_mkGeneralizeTel_6425 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_6421 ::
  T_GeneralizeTel_6423 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_6421 v0
  = case coe v0 of
      C_mkGeneralizeTel_6425 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_6423 a0 a1 = ()
data T_GeneralizeTel_6423
  = C_mkGeneralizeTel_6425 T_LState_2158
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2902 T_LEnv_2134
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994
                           MAlonzo.Code.Ledger.Certs.T_CertState_952
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_6835 ::
  T_GeneralizeTel_6843 -> T_LState_2158
d_'46'generalizedField'45's_6835 v0
  = case coe v0 of
      C_mkGeneralizeTel_6845 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6837 ::
  T_GeneralizeTel_6843 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2902
d_'46'generalizedField'45'tx_6837 v0
  = case coe v0 of
      C_mkGeneralizeTel_6845 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6839 ::
  T_GeneralizeTel_6843 -> T_LEnv_2134
d_'46'generalizedField'45'Γ_6839 v0
  = case coe v0 of
      C_mkGeneralizeTel_6845 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6841 ::
  T_GeneralizeTel_6843 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994
d_'46'generalizedField'45'utxoSt''_6841 v0
  = case coe v0 of
      C_mkGeneralizeTel_6845 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_6843 a0 a1 = ()
data T_GeneralizeTel_6843
  = C_mkGeneralizeTel_6845 T_LState_2158
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2902 T_LEnv_2134
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994
