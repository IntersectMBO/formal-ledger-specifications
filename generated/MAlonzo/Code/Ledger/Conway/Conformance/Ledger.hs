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
d_epoch_528 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_epoch_72
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
         (coe v0))
-- _.CertEnv.epoch
d_epoch_778 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  AgdaAny
d_epoch_778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_epoch_914 (coe v0)
-- _.CertEnv.pp
d_pp_780 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pp_780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pp_916 (coe v0)
-- _.CertEnv.votes
d_votes_782 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_votes_782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_votes_918 (coe v0)
-- _.CertEnv.wdrls
d_wdrls_784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_wdrls_920 (coe v0)
-- _.CertState.dState
d_dState_788 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924
d_dState_788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968 (coe v0)
-- _.CertState.gState
d_gState_790 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944
d_gState_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972 (coe v0)
-- _.CertState.pState
d_pState_792 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860
d_pState_792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970 (coe v0)
-- _.GovProposal.action
d_action_930 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
      (coe v0)
-- _.GovProposal.anchor
d_anchor_932 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_804
      (coe v0)
-- _.GovProposal.deposit
d_deposit_934 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer
d_deposit_934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_deposit_800
      (coe v0)
-- _.GovProposal.policy
d_policy_936 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Maybe AgdaAny
d_policy_936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
      (coe v0)
-- _.GovProposal.prevAction
d_prevAction_938 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  AgdaAny
d_prevAction_938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_796
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_940 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
d_returnAddr_940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_802
      (coe v0)
-- _.GovVote.anchor
d_anchor_952 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_778
      (coe v0)
-- _.GovVote.gid
d_gid_954 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_gid_772
      (coe v0)
-- _.GovVote.vote
d_vote_956 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_754
d_vote_956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_vote_776
      (coe v0)
-- _.GovVote.voter
d_voter_958 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
      (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_982 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_986 a0 = ()
-- _.PParams.Emax
d_Emax_1140 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_Emax_1140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_356 (coe v0)
-- _.PParams.a
d_a_1142 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_1142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v0)
-- _.PParams.a0
d_a0_1144 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_360 (coe v0)
-- _.PParams.b
d_b_1146 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_1146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_1148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1150 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_1150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1152 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_1152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_1154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1156 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_costmdls_1156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1158 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_drepActivity_1158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1160 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1162 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_1164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1166 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1168 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1170 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxBlockExUnits_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_324
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_316
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_328
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_1176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_320
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1178 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerBlock_1178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_348
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerTx_1180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxTxExUnits_1182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_322
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1184 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_1184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1186 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_1186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1188 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_344
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1190 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
      (coe v0)
-- _.PParams.nopt
d_nopt_1192 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_358 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1194 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_1194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1196 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_1196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
      (coe v0)
-- _.PParams.prices
d_prices_1198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_prices_1198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
      (coe v0)
-- _.PParams.pv
d_pv_1200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_330 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1202 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_352
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1204 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_refScriptCostStride_1204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_350
      (coe v0)
-- _.Tx.body
d_body_1628 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798
d_body_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
      (coe v0)
-- _.Tx.isValid
d_isValid_1630 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Bool
d_isValid_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2914
      (coe v0)
-- _.Tx.txAD
d_txAD_1632 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Maybe AgdaAny
d_txAD_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_2916
      (coe v0)
-- _.Tx.wits
d_wits_1634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2880
d_wits_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2912
      (coe v0)
-- _.TxBody.collateral
d_collateral_1638 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2874
      (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1640 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Maybe Integer
d_curTreasury_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_curTreasury_2868
      (coe v0)
-- _.TxBody.mint
d_mint_1642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  AgdaAny
d_mint_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2848
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2842
      (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1646 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [AgdaAny]
d_reqSigHash_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_reqSigHash_2876
      (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1648 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Maybe AgdaAny
d_scriptIntHash_1648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptIntHash_2878
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Maybe AgdaAny
d_txADhash_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txADhash_2864
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1652 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Maybe AgdaAny
d_txNetworkId_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txNetworkId_2866
      (coe v0)
-- _.TxBody.txcerts
d_txcerts_1654 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2852
      (coe v0)
-- _.TxBody.txdonation
d_txdonation_1656 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Integer
d_txdonation_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdonation_2860
      (coe v0)
-- _.TxBody.txfee
d_txfee_1658 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Integer
d_txfee_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_2846
      (coe v0)
-- _.TxBody.txid
d_txid_1660 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  AgdaAny
d_txid_1660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2872
      (coe v0)
-- _.TxBody.txins
d_txins_1662 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2840
      (coe v0)
-- _.TxBody.txouts
d_txouts_1664 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2844
      (coe v0)
-- _.TxBody.txprop
d_txprop_1666 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
d_txprop_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2858
      (coe v0)
-- _.TxBody.txsize
d_txsize_1668 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Integer
d_txsize_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_2870
      (coe v0)
-- _.TxBody.txup
d_txup_1670 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txup_2862
      (coe v0)
-- _.TxBody.txvldt
d_txvldt_1672 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2850
      (coe v0)
-- _.TxBody.txvote
d_txvote_1674 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2856
      (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2854
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState
d_EnactState_1756 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.EnactState.cc
d_cc_1792 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.constitution
d_constitution_1794 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.pparams
d_pparams_1796 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.pv
d_pv_1798 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.withdrawals
d_withdrawals_1800 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1816 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1022 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1816 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv
d_GovEnv_1824 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1826 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  ()
d_GovState_1826 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv.enactState
d_enactState_1892 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_1042
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.epoch
d_epoch_1894 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1022 -> AgdaAny
d_epoch_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_1036 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.pparams
d_pparams_1896 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_1038 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.ppolicy
d_ppolicy_1898 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1022 ->
  Maybe AgdaAny
d_ppolicy_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_1040 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.txid
d_txid_1900 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1022 -> AgdaAny
d_txid_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_1034 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1946 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1996 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1996 v0 ~v1 = du_updateDeposits_1996 v0
du_updateDeposits_1996 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateDeposits_1898
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2042 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1964 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1978
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2044 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1964 ->
  Integer
d_donations_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1980
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2046 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1964 ->
  Integer
d_fees_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1976 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2048 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1964 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1974 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2062 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.LEnv
d_LEnv_2120 a0 a1 = ()
data T_LEnv_2120
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2142 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
                                                          Integer
-- Ledger.Conway.Conformance.Ledger.LEnv.slot
d_slot_2132 :: T_LEnv_2120 -> AgdaAny
d_slot_2132 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2142 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.ppolicy
d_ppolicy_2134 :: T_LEnv_2120 -> Maybe AgdaAny
d_ppolicy_2134 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2142 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.pparams
d_pparams_2136 ::
  T_LEnv_2120 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2136 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2142 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.enactState
d_enactState_2138 ::
  T_LEnv_2120 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2138 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2142 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.treasury
d_treasury_2140 :: T_LEnv_2120 -> Integer
d_treasury_2140 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2142 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2144 a0 a1 = ()
data T_LState_2144
  = C_'10214'_'44'_'44'_'10215''737'_2158 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1964
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2152 ::
  T_LState_2144 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1964
d_utxoSt_2152 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2158 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2154 ::
  T_LState_2144 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2154 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2158 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2156 ::
  T_LState_2144 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_certState_2156 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2158 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.txgov
d_txgov_2160 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2160 ~v0 ~v1 v2 = du_txgov_2160 v2
du_txgov_2160 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2160 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2858
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2856
            (coe v0)))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2226 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2226
  = C_LEDGER'45'V_2308 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1964
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2388 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2230 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_certState_2230 ~v0 ~v1 v2 = du_certState_2230 v2
du_certState_2230 ::
  T_GeneralizeTel_6483 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
du_certState_2230 v0
  = coe
      d_certState_2156 (coe d_'46'generalizedField'45's_6471 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2232 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2232 ~v0 ~v1 v2 = du_govSt_2232 v2
du_govSt_2232 ::
  T_GeneralizeTel_6483 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2232 v0
  = coe d_govSt_2154 (coe d_'46'generalizedField'45's_6471 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2234 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1964
d_utxoSt_2234 ~v0 ~v1 v2 = du_utxoSt_2234 v2
du_utxoSt_2234 ::
  T_GeneralizeTel_6483 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1964
du_utxoSt_2234 v0
  = coe d_utxoSt_2152 (coe d_'46'generalizedField'45's_6471 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2256 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_2256 ~v0 ~v1 v2 = du_txcerts_2256 v2
du_txcerts_2256 ::
  T_GeneralizeTel_6483 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
du_txcerts_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2852
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe d_'46'generalizedField'45'tx_6473 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2262 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 -> AgdaAny
d_txid_2262 ~v0 ~v1 v2 = du_txid_2262 v2
du_txid_2262 :: T_GeneralizeTel_6483 -> AgdaAny
du_txid_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2872
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe d_'46'generalizedField'45'tx_6473 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2276 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_2276 ~v0 ~v1 v2 = du_txvote_2276 v2
du_txvote_2276 ::
  T_GeneralizeTel_6483 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
du_txvote_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2856
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe d_'46'generalizedField'45'tx_6473 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2278 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2278 ~v0 ~v1 v2 = du_txwdrls_2278 v2
du_txwdrls_2278 ::
  T_GeneralizeTel_6483 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2854
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe d_'46'generalizedField'45'tx_6473 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2282 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2282 ~v0 ~v1 v2 = du_enactState_2282 v2
du_enactState_2282 ::
  T_GeneralizeTel_6483 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_enactState_2282 v0
  = coe
      d_enactState_2138 (coe d_'46'generalizedField'45'Γ_6475 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2284 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2284 ~v0 ~v1 v2 = du_pparams_2284 v2
du_pparams_2284 ::
  T_GeneralizeTel_6483 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2284 v0
  = coe
      d_pparams_2136 (coe d_'46'generalizedField'45'Γ_6475 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2286 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 -> Maybe AgdaAny
d_ppolicy_2286 ~v0 ~v1 v2 = du_ppolicy_2286 v2
du_ppolicy_2286 :: T_GeneralizeTel_6483 -> Maybe AgdaAny
du_ppolicy_2286 v0
  = coe
      d_ppolicy_2134 (coe d_'46'generalizedField'45'Γ_6475 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2288 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 -> AgdaAny
d_slot_2288 ~v0 ~v1 v2 = du_slot_2288 v2
du_slot_2288 :: T_GeneralizeTel_6483 -> AgdaAny
du_slot_2288 v0
  = coe d_slot_2132 (coe d_'46'generalizedField'45'Γ_6475 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2290 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 -> Integer
d_treasury_2290 ~v0 ~v1 v2 = du_treasury_2290 v2
du_treasury_2290 :: T_GeneralizeTel_6483 -> Integer
du_treasury_2290 v0
  = coe
      d_treasury_2140 (coe d_'46'generalizedField'45'Γ_6475 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2298 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2298 ~v0 ~v1 v2 = du_enactState_2298 v2
du_enactState_2298 ::
  T_GeneralizeTel_6483 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_enactState_2298 v0
  = coe
      d_enactState_2138 (coe d_'46'generalizedField'45'Γ_6475 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2300 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2300 ~v0 ~v1 v2 = du_pparams_2300 v2
du_pparams_2300 ::
  T_GeneralizeTel_6483 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2300 v0
  = coe
      d_pparams_2136 (coe d_'46'generalizedField'45'Γ_6475 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2302 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 -> Maybe AgdaAny
d_ppolicy_2302 ~v0 ~v1 v2 = du_ppolicy_2302 v2
du_ppolicy_2302 :: T_GeneralizeTel_6483 -> Maybe AgdaAny
du_ppolicy_2302 v0
  = coe
      d_ppolicy_2134 (coe d_'46'generalizedField'45'Γ_6475 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2304 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 -> AgdaAny
d_slot_2304 ~v0 ~v1 v2 = du_slot_2304 v2
du_slot_2304 :: T_GeneralizeTel_6483 -> AgdaAny
du_slot_2304 v0
  = coe d_slot_2132 (coe d_'46'generalizedField'45'Γ_6475 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2306 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6483 -> Integer
d_treasury_2306 ~v0 ~v1 v2 = du_treasury_2306 v2
du_treasury_2306 :: T_GeneralizeTel_6483 -> Integer
du_treasury_2306 v0
  = coe
      d_treasury_2140 (coe d_'46'generalizedField'45'Γ_6475 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2312 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6903 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_certState_2312 ~v0 ~v1 v2 = du_certState_2312 v2
du_certState_2312 ::
  T_GeneralizeTel_6903 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
du_certState_2312 v0
  = coe
      d_certState_2156 (coe d_'46'generalizedField'45's_6895 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2314 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6903 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2314 ~v0 ~v1 v2 = du_govSt_2314 v2
du_govSt_2314 ::
  T_GeneralizeTel_6903 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2314 v0
  = coe d_govSt_2154 (coe d_'46'generalizedField'45's_6895 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2316 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6903 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1964
d_utxoSt_2316 ~v0 ~v1 v2 = du_utxoSt_2316 v2
du_utxoSt_2316 ::
  T_GeneralizeTel_6903 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1964
du_utxoSt_2316 v0
  = coe d_utxoSt_2152 (coe d_'46'generalizedField'45's_6895 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2364 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6903 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2364 ~v0 ~v1 v2 = du_enactState_2364 v2
du_enactState_2364 ::
  T_GeneralizeTel_6903 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_enactState_2364 v0
  = coe
      d_enactState_2138 (coe d_'46'generalizedField'45'Γ_6899 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2366 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6903 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2366 ~v0 ~v1 v2 = du_pparams_2366 v2
du_pparams_2366 ::
  T_GeneralizeTel_6903 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2366 v0
  = coe
      d_pparams_2136 (coe d_'46'generalizedField'45'Γ_6899 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2368 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6903 -> Maybe AgdaAny
d_ppolicy_2368 ~v0 ~v1 v2 = du_ppolicy_2368 v2
du_ppolicy_2368 :: T_GeneralizeTel_6903 -> Maybe AgdaAny
du_ppolicy_2368 v0
  = coe
      d_ppolicy_2134 (coe d_'46'generalizedField'45'Γ_6899 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2370 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6903 -> AgdaAny
d_slot_2370 ~v0 ~v1 v2 = du_slot_2370 v2
du_slot_2370 :: T_GeneralizeTel_6903 -> AgdaAny
du_slot_2370 v0
  = coe d_slot_2132 (coe d_'46'generalizedField'45'Γ_6899 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6903 -> Integer
d_treasury_2372 ~v0 ~v1 v2 = du_treasury_2372 v2
du_treasury_2372 :: T_GeneralizeTel_6903 -> Integer
du_treasury_2372 v0
  = coe
      d_treasury_2140 (coe d_'46'generalizedField'45'Γ_6899 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2378 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6903 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2378 ~v0 ~v1 v2 = du_enactState_2378 v2
du_enactState_2378 ::
  T_GeneralizeTel_6903 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_enactState_2378 v0
  = coe
      d_enactState_2138 (coe d_'46'generalizedField'45'Γ_6899 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2380 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6903 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2380 ~v0 ~v1 v2 = du_pparams_2380 v2
du_pparams_2380 ::
  T_GeneralizeTel_6903 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2380 v0
  = coe
      d_pparams_2136 (coe d_'46'generalizedField'45'Γ_6899 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2382 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6903 -> Maybe AgdaAny
d_ppolicy_2382 ~v0 ~v1 v2 = du_ppolicy_2382 v2
du_ppolicy_2382 :: T_GeneralizeTel_6903 -> Maybe AgdaAny
du_ppolicy_2382 v0
  = coe
      d_ppolicy_2134 (coe d_'46'generalizedField'45'Γ_6899 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6903 -> AgdaAny
d_slot_2384 ~v0 ~v1 v2 = du_slot_2384 v2
du_slot_2384 :: T_GeneralizeTel_6903 -> AgdaAny
du_slot_2384 v0
  = coe d_slot_2132 (coe d_'46'generalizedField'45'Γ_6899 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2386 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_6903 -> Integer
d_treasury_2386 ~v0 ~v1 v2 = du_treasury_2386 v2
du_treasury_2386 :: T_GeneralizeTel_6903 -> Integer
du_treasury_2386 v0
  = coe
      d_treasury_2140 (coe d_'46'generalizedField'45'Γ_6899 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2406 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_LEnv_2120 ->
  T_LState_2144 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900] ->
  T_LState_2144 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2406 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_6471 ::
  T_GeneralizeTel_6483 -> T_LState_2144
d_'46'generalizedField'45's_6471 v0
  = case coe v0 of
      C_mkGeneralizeTel_6485 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6473 ::
  T_GeneralizeTel_6483 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900
d_'46'generalizedField'45'tx_6473 v0
  = case coe v0 of
      C_mkGeneralizeTel_6485 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6475 ::
  T_GeneralizeTel_6483 -> T_LEnv_2120
d_'46'generalizedField'45'Γ_6475 v0
  = case coe v0 of
      C_mkGeneralizeTel_6485 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6477 ::
  T_GeneralizeTel_6483 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1964
d_'46'generalizedField'45'utxoSt''_6477 v0
  = case coe v0 of
      C_mkGeneralizeTel_6485 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_6479 ::
  T_GeneralizeTel_6483 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_'46'generalizedField'45'certState''_6479 v0
  = case coe v0 of
      C_mkGeneralizeTel_6485 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_6481 ::
  T_GeneralizeTel_6483 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_6481 v0
  = case coe v0 of
      C_mkGeneralizeTel_6485 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_6483 a0 a1 = ()
data T_GeneralizeTel_6483
  = C_mkGeneralizeTel_6485 T_LState_2144
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900
                           T_LEnv_2120
                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1964
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_6895 ::
  T_GeneralizeTel_6903 -> T_LState_2144
d_'46'generalizedField'45's_6895 v0
  = case coe v0 of
      C_mkGeneralizeTel_6905 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6897 ::
  T_GeneralizeTel_6903 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900
d_'46'generalizedField'45'tx_6897 v0
  = case coe v0 of
      C_mkGeneralizeTel_6905 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6899 ::
  T_GeneralizeTel_6903 -> T_LEnv_2120
d_'46'generalizedField'45'Γ_6899 v0
  = case coe v0 of
      C_mkGeneralizeTel_6905 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6901 ::
  T_GeneralizeTel_6903 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1964
d_'46'generalizedField'45'utxoSt''_6901 v0
  = case coe v0 of
      C_mkGeneralizeTel_6905 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_6903 a0 a1 = ()
data T_GeneralizeTel_6903
  = C_mkGeneralizeTel_6905 T_LState_2144
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900
                           T_LEnv_2120
                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1964
