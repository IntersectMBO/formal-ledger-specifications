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

module MAlonzo.Code.Ledger.Conway.Conformance.Ledger where

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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow

-- _._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__26 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__26 = erased
-- _.CertEnv
d_CertEnv_64 a0 = ()
-- _.CertState
d_CertState_66 a0 = ()
-- _.GovProposal
d_GovProposal_222 a0 = ()
-- _.GovVote
d_GovVote_226 a0 = ()
-- _.PParams
d_PParams_302 a0 = ()
-- _.ScriptHash
d_ScriptHash_366 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_366 = erased
-- _.Slot
d_Slot_414 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_414 = erased
-- _.Tx
d_Tx_444 a0 = ()
-- _.TxBody
d_TxBody_446 a0 = ()
-- _.epoch
d_epoch_530 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_epoch_72
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
         (coe v0))
-- _.CertEnv.epoch
d_epoch_780 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  AgdaAny
d_epoch_780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_epoch_914 (coe v0)
-- _.CertEnv.pp
d_pp_782 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pp_782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pp_916 (coe v0)
-- _.CertEnv.votes
d_votes_784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_votes_784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_votes_918 (coe v0)
-- _.CertEnv.wdrls
d_wdrls_786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_wdrls_920 (coe v0)
-- _.CertState.dState
d_dState_790 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924
d_dState_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968 (coe v0)
-- _.CertState.gState
d_gState_792 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944
d_gState_792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972 (coe v0)
-- _.CertState.pState
d_pState_794 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860
d_pState_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970 (coe v0)
-- _.GovProposal.action
d_action_932 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
      (coe v0)
-- _.GovProposal.anchor
d_anchor_934 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_804
      (coe v0)
-- _.GovProposal.deposit
d_deposit_936 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer
d_deposit_936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_deposit_800
      (coe v0)
-- _.GovProposal.policy
d_policy_938 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Maybe AgdaAny
d_policy_938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
      (coe v0)
-- _.GovProposal.prevAction
d_prevAction_940 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  AgdaAny
d_prevAction_940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_796
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_942 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
d_returnAddr_942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_802
      (coe v0)
-- _.GovVote.anchor
d_anchor_954 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_778
      (coe v0)
-- _.GovVote.gid
d_gid_956 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_gid_772
      (coe v0)
-- _.GovVote.vote
d_vote_958 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_754
d_vote_958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_vote_776
      (coe v0)
-- _.GovVote.voter
d_voter_960 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
      (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_984 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_988 a0 = ()
-- _.PParams.Emax
d_Emax_1142 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_Emax_1142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_356 (coe v0)
-- _.PParams.a
d_a_1144 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v0)
-- _.PParams.a0
d_a0_1146 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_360 (coe v0)
-- _.PParams.b
d_b_1148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_1148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1150 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_1150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1152 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_1152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_1154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1156 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_1156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1158 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_costmdls_1158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1160 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_drepActivity_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1162 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_1164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1166 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1168 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1170 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxBlockExUnits_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_324
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_316
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_1176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_328
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1178 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_1178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_320
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerBlock_1180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_348
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerTx_1182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1184 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxTxExUnits_1184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_322
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1186 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_1186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1188 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1190 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_344
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1192 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
      (coe v0)
-- _.PParams.nopt
d_nopt_1194 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_1194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_358 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1196 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_1196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_1198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
      (coe v0)
-- _.PParams.prices
d_prices_1200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_prices_1200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
      (coe v0)
-- _.PParams.pv
d_pv_1202 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_330 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1204 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_352
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1206 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_refScriptCostStride_1206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_350
      (coe v0)
-- _.Tx.body
d_body_1632 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806
d_body_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
      (coe v0)
-- _.Tx.isValid
d_isValid_1634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  Bool
d_isValid_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2922
      (coe v0)
-- _.Tx.txAD
d_txAD_1636 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  Maybe AgdaAny
d_txAD_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_2924
      (coe v0)
-- _.Tx.wits
d_wits_1638 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2888
d_wits_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
      (coe v0)
-- _.TxBody.collateral
d_collateral_1642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2882
      (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe Integer
d_curTreasury_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_curTreasury_2876
      (coe v0)
-- _.TxBody.mint
d_mint_1646 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  AgdaAny
d_mint_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2856
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1648 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2850
      (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [AgdaAny]
d_reqSigHash_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_reqSigHash_2884
      (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1652 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe AgdaAny
d_scriptIntHash_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptIntHash_2886
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1654 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe AgdaAny
d_txADhash_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txADhash_2872
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1656 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe AgdaAny
d_txNetworkId_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txNetworkId_2874
      (coe v0)
-- _.TxBody.txcerts
d_txcerts_1658 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2860
      (coe v0)
-- _.TxBody.txdonation
d_txdonation_1660 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Integer
d_txdonation_1660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdonation_2868
      (coe v0)
-- _.TxBody.txfee
d_txfee_1662 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Integer
d_txfee_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_2854
      (coe v0)
-- _.TxBody.txid
d_txid_1664 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  AgdaAny
d_txid_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
      (coe v0)
-- _.TxBody.txins
d_txins_1666 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2848
      (coe v0)
-- _.TxBody.txouts
d_txouts_1668 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2852
      (coe v0)
-- _.TxBody.txprop
d_txprop_1670 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
d_txprop_1670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2866
      (coe v0)
-- _.TxBody.txsize
d_txsize_1672 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Integer
d_txsize_1672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_2878
      (coe v0)
-- _.TxBody.txup
d_txup_1674 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txup_2870
      (coe v0)
-- _.TxBody.txvldt
d_txvldt_1676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2858
      (coe v0)
-- _.TxBody.txvote
d_txvote_1678 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_1678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2864
      (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1680 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2862
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState
d_EnactState_1760 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.EnactState.cc
d_cc_1796 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.constitution
d_constitution_1798 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.pparams
d_pparams_1800 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.pv
d_pv_1802 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.withdrawals
d_withdrawals_1804 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1820 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1820 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv
d_GovEnv_1828 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1830 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  ()
d_GovState_1830 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv.enactState
d_enactState_1896 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_1054
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.epoch
d_epoch_1898 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 -> AgdaAny
d_epoch_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_1048 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.pparams
d_pparams_1900 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_1050 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.ppolicy
d_ppolicy_1902 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 ->
  Maybe AgdaAny
d_ppolicy_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_1052 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.txid
d_txid_1904 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 -> AgdaAny
d_txid_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_1046 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1952 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2048 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1988
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2050 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974 ->
  Integer
d_donations_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1990
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2052 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974 ->
  Integer
d_fees_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1986 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2054 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2068 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.LEnv
d_LEnv_2126 a0 a1 = ()
data T_LEnv_2126
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2148 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
                                                          Integer
-- Ledger.Conway.Conformance.Ledger.LEnv.slot
d_slot_2138 :: T_LEnv_2126 -> AgdaAny
d_slot_2138 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2148 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.ppolicy
d_ppolicy_2140 :: T_LEnv_2126 -> Maybe AgdaAny
d_ppolicy_2140 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2148 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.pparams
d_pparams_2142 ::
  T_LEnv_2126 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2142 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2148 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.enactState
d_enactState_2144 ::
  T_LEnv_2126 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2144 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2148 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.treasury
d_treasury_2146 :: T_LEnv_2126 -> Integer
d_treasury_2146 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2148 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2150 a0 a1 = ()
data T_LState_2150
  = C_'10214'_'44'_'44'_'10215''737'_2164 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2158 ::
  T_LState_2150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
d_utxoSt_2158 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2164 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2160 ::
  T_LState_2150 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2160 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2164 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2162 ::
  T_LState_2150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_certState_2162 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2164 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.txgov
d_txgov_2166 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2166 ~v0 ~v1 v2 = du_txgov_2166 v2
du_txgov_2166 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2166 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2866
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2864
            (coe v0)))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2232 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2232
  = C_LEDGER'45'V_2312 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2392 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2236 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_certState_2236 ~v0 ~v1 v2 = du_certState_2236 v2
du_certState_2236 ::
  T_GeneralizeTel_6351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
du_certState_2236 v0
  = coe
      d_certState_2162 (coe d_'46'generalizedField'45's_6339 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2238 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2238 ~v0 ~v1 v2 = du_govSt_2238 v2
du_govSt_2238 ::
  T_GeneralizeTel_6351 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2238 v0
  = coe d_govSt_2160 (coe d_'46'generalizedField'45's_6339 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2240 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
d_utxoSt_2240 ~v0 ~v1 v2 = du_utxoSt_2240 v2
du_utxoSt_2240 ::
  T_GeneralizeTel_6351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
du_utxoSt_2240 v0
  = coe d_utxoSt_2158 (coe d_'46'generalizedField'45's_6339 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2262 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_2262 ~v0 ~v1 v2 = du_txcerts_2262 v2
du_txcerts_2262 ::
  T_GeneralizeTel_6351 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
du_txcerts_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2860
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
         (coe d_'46'generalizedField'45'tx_6341 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2268 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 -> AgdaAny
d_txid_2268 ~v0 ~v1 v2 = du_txid_2268 v2
du_txid_2268 :: T_GeneralizeTel_6351 -> AgdaAny
du_txid_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
         (coe d_'46'generalizedField'45'tx_6341 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2282 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_2282 ~v0 ~v1 v2 = du_txvote_2282 v2
du_txvote_2282 ::
  T_GeneralizeTel_6351 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
du_txvote_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2864
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
         (coe d_'46'generalizedField'45'tx_6341 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2284 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2284 ~v0 ~v1 v2 = du_txwdrls_2284 v2
du_txwdrls_2284 ::
  T_GeneralizeTel_6351 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2862
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
         (coe d_'46'generalizedField'45'tx_6341 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2288 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2288 ~v0 ~v1 v2 = du_enactState_2288 v2
du_enactState_2288 ::
  T_GeneralizeTel_6351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_enactState_2288 v0
  = coe
      d_enactState_2144 (coe d_'46'generalizedField'45'Γ_6343 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2290 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2290 ~v0 ~v1 v2 = du_pparams_2290 v2
du_pparams_2290 ::
  T_GeneralizeTel_6351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2290 v0
  = coe
      d_pparams_2142 (coe d_'46'generalizedField'45'Γ_6343 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2292 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 -> Maybe AgdaAny
d_ppolicy_2292 ~v0 ~v1 v2 = du_ppolicy_2292 v2
du_ppolicy_2292 :: T_GeneralizeTel_6351 -> Maybe AgdaAny
du_ppolicy_2292 v0
  = coe
      d_ppolicy_2140 (coe d_'46'generalizedField'45'Γ_6343 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2294 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 -> AgdaAny
d_slot_2294 ~v0 ~v1 v2 = du_slot_2294 v2
du_slot_2294 :: T_GeneralizeTel_6351 -> AgdaAny
du_slot_2294 v0
  = coe d_slot_2138 (coe d_'46'generalizedField'45'Γ_6343 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2296 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 -> Integer
d_treasury_2296 ~v0 ~v1 v2 = du_treasury_2296 v2
du_treasury_2296 :: T_GeneralizeTel_6351 -> Integer
du_treasury_2296 v0
  = coe
      d_treasury_2146 (coe d_'46'generalizedField'45'Γ_6343 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2302 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2302 ~v0 ~v1 v2 = du_enactState_2302 v2
du_enactState_2302 ::
  T_GeneralizeTel_6351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_enactState_2302 v0
  = coe
      d_enactState_2144 (coe d_'46'generalizedField'45'Γ_6343 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2304 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2304 ~v0 ~v1 v2 = du_pparams_2304 v2
du_pparams_2304 ::
  T_GeneralizeTel_6351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2304 v0
  = coe
      d_pparams_2142 (coe d_'46'generalizedField'45'Γ_6343 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2306 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 -> Maybe AgdaAny
d_ppolicy_2306 ~v0 ~v1 v2 = du_ppolicy_2306 v2
du_ppolicy_2306 :: T_GeneralizeTel_6351 -> Maybe AgdaAny
du_ppolicy_2306 v0
  = coe
      d_ppolicy_2140 (coe d_'46'generalizedField'45'Γ_6343 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2308 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 -> AgdaAny
d_slot_2308 ~v0 ~v1 v2 = du_slot_2308 v2
du_slot_2308 :: T_GeneralizeTel_6351 -> AgdaAny
du_slot_2308 v0
  = coe d_slot_2138 (coe d_'46'generalizedField'45'Γ_6343 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2310 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6351 -> Integer
d_treasury_2310 ~v0 ~v1 v2 = du_treasury_2310 v2
du_treasury_2310 :: T_GeneralizeTel_6351 -> Integer
du_treasury_2310 v0
  = coe
      d_treasury_2146 (coe d_'46'generalizedField'45'Γ_6343 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2316 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_certState_2316 ~v0 ~v1 v2 = du_certState_2316 v2
du_certState_2316 ::
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
du_certState_2316 v0
  = coe
      d_certState_2162 (coe d_'46'generalizedField'45's_6763 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2318 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6771 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2318 ~v0 ~v1 v2 = du_govSt_2318 v2
du_govSt_2318 ::
  T_GeneralizeTel_6771 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2318 v0
  = coe d_govSt_2160 (coe d_'46'generalizedField'45's_6763 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2320 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
d_utxoSt_2320 ~v0 ~v1 v2 = du_utxoSt_2320 v2
du_utxoSt_2320 ::
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
du_utxoSt_2320 v0
  = coe d_utxoSt_2158 (coe d_'46'generalizedField'45's_6763 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2368 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2368 ~v0 ~v1 v2 = du_enactState_2368 v2
du_enactState_2368 ::
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_enactState_2368 v0
  = coe
      d_enactState_2144 (coe d_'46'generalizedField'45'Γ_6767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2370 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2370 ~v0 ~v1 v2 = du_pparams_2370 v2
du_pparams_2370 ::
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2370 v0
  = coe
      d_pparams_2142 (coe d_'46'generalizedField'45'Γ_6767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6771 -> Maybe AgdaAny
d_ppolicy_2372 ~v0 ~v1 v2 = du_ppolicy_2372 v2
du_ppolicy_2372 :: T_GeneralizeTel_6771 -> Maybe AgdaAny
du_ppolicy_2372 v0
  = coe
      d_ppolicy_2140 (coe d_'46'generalizedField'45'Γ_6767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2374 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6771 -> AgdaAny
d_slot_2374 ~v0 ~v1 v2 = du_slot_2374 v2
du_slot_2374 :: T_GeneralizeTel_6771 -> AgdaAny
du_slot_2374 v0
  = coe d_slot_2138 (coe d_'46'generalizedField'45'Γ_6767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2376 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6771 -> Integer
d_treasury_2376 ~v0 ~v1 v2 = du_treasury_2376 v2
du_treasury_2376 :: T_GeneralizeTel_6771 -> Integer
du_treasury_2376 v0
  = coe
      d_treasury_2146 (coe d_'46'generalizedField'45'Γ_6767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2382 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2382 ~v0 ~v1 v2 = du_enactState_2382 v2
du_enactState_2382 ::
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_enactState_2382 v0
  = coe
      d_enactState_2144 (coe d_'46'generalizedField'45'Γ_6767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2384 ~v0 ~v1 v2 = du_pparams_2384 v2
du_pparams_2384 ::
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2384 v0
  = coe
      d_pparams_2142 (coe d_'46'generalizedField'45'Γ_6767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2386 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6771 -> Maybe AgdaAny
d_ppolicy_2386 ~v0 ~v1 v2 = du_ppolicy_2386 v2
du_ppolicy_2386 :: T_GeneralizeTel_6771 -> Maybe AgdaAny
du_ppolicy_2386 v0
  = coe
      d_ppolicy_2140 (coe d_'46'generalizedField'45'Γ_6767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2388 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6771 -> AgdaAny
d_slot_2388 ~v0 ~v1 v2 = du_slot_2388 v2
du_slot_2388 :: T_GeneralizeTel_6771 -> AgdaAny
du_slot_2388 v0
  = coe d_slot_2138 (coe d_'46'generalizedField'45'Γ_6767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_6771 -> Integer
d_treasury_2390 ~v0 ~v1 v2 = du_treasury_2390 v2
du_treasury_2390 :: T_GeneralizeTel_6771 -> Integer
du_treasury_2390 v0
  = coe
      d_treasury_2146 (coe d_'46'generalizedField'45'Γ_6767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2410 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_LEnv_2126 ->
  T_LState_2150 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908] ->
  T_LState_2150 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2410 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_6339 ::
  T_GeneralizeTel_6351 -> T_LState_2150
d_'46'generalizedField'45's_6339 v0
  = case coe v0 of
      C_mkGeneralizeTel_6353 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6341 ::
  T_GeneralizeTel_6351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908
d_'46'generalizedField'45'tx_6341 v0
  = case coe v0 of
      C_mkGeneralizeTel_6353 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6343 ::
  T_GeneralizeTel_6351 -> T_LEnv_2126
d_'46'generalizedField'45'Γ_6343 v0
  = case coe v0 of
      C_mkGeneralizeTel_6353 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6345 ::
  T_GeneralizeTel_6351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
d_'46'generalizedField'45'utxoSt''_6345 v0
  = case coe v0 of
      C_mkGeneralizeTel_6353 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_6347 ::
  T_GeneralizeTel_6351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_'46'generalizedField'45'certState''_6347 v0
  = case coe v0 of
      C_mkGeneralizeTel_6353 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_6349 ::
  T_GeneralizeTel_6351 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_6349 v0
  = case coe v0 of
      C_mkGeneralizeTel_6353 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_6351 a0 a1 = ()
data T_GeneralizeTel_6351
  = C_mkGeneralizeTel_6353 T_LState_2150
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908
                           T_LEnv_2126
                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_6763 ::
  T_GeneralizeTel_6771 -> T_LState_2150
d_'46'generalizedField'45's_6763 v0
  = case coe v0 of
      C_mkGeneralizeTel_6773 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6765 ::
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908
d_'46'generalizedField'45'tx_6765 v0
  = case coe v0 of
      C_mkGeneralizeTel_6773 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6767 ::
  T_GeneralizeTel_6771 -> T_LEnv_2126
d_'46'generalizedField'45'Γ_6767 v0
  = case coe v0 of
      C_mkGeneralizeTel_6773 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6769 ::
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
d_'46'generalizedField'45'utxoSt''_6769 v0
  = case coe v0 of
      C_mkGeneralizeTel_6773 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_6771 a0 a1 = ()
data T_GeneralizeTel_6771
  = C_mkGeneralizeTel_6773 T_LState_2150
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908
                           T_LEnv_2126
                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
