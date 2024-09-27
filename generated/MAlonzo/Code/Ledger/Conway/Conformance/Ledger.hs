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
d_GovProposal_220 a0 = ()
-- _.GovVote
d_GovVote_224 a0 = ()
-- _.PParams
d_PParams_296 a0 = ()
-- _.ScriptHash
d_ScriptHash_360 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_360 = erased
-- _.Slot
d_Slot_408 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_408 = erased
-- _.Tx
d_Tx_438 a0 = ()
-- _.TxBody
d_TxBody_440 a0 = ()
-- _.epoch
d_epoch_524 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_epoch_72
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1546
         (coe v0))
-- _.CertEnv.epoch
d_epoch_774 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  AgdaAny
d_epoch_774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_epoch_914 (coe v0)
-- _.CertEnv.pp
d_pp_776 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pp_776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pp_916 (coe v0)
-- _.CertEnv.votes
d_votes_778 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_votes_778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_votes_918 (coe v0)
-- _.CertEnv.wdrls
d_wdrls_780 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_wdrls_920 (coe v0)
-- _.CertState.dState
d_dState_784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924
d_dState_784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968 (coe v0)
-- _.CertState.gState
d_gState_786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944
d_gState_786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972 (coe v0)
-- _.CertState.pState
d_pState_788 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860
d_pState_788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970 (coe v0)
-- _.GovProposal.action
d_action_926 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
      (coe v0)
-- _.GovProposal.anchor
d_anchor_928 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_804
      (coe v0)
-- _.GovProposal.deposit
d_deposit_930 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer
d_deposit_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_deposit_800
      (coe v0)
-- _.GovProposal.policy
d_policy_932 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Maybe AgdaAny
d_policy_932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
      (coe v0)
-- _.GovProposal.prevAction
d_prevAction_934 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  AgdaAny
d_prevAction_934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_796
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_936 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
d_returnAddr_936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_802
      (coe v0)
-- _.GovVote.anchor
d_anchor_948 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_778
      (coe v0)
-- _.GovVote.gid
d_gid_950 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_gid_772
      (coe v0)
-- _.GovVote.vote
d_vote_952 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_754
d_vote_952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_vote_776
      (coe v0)
-- _.GovVote.voter
d_voter_954 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
      (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_978 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_982 a0 = ()
-- _.PParams.Emax
d_Emax_1130 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_Emax_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_356 (coe v0)
-- _.PParams.a
d_a_1132 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_1132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v0)
-- _.PParams.a0
d_a0_1134 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_360 (coe v0)
-- _.PParams.b
d_b_1136 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_1136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1138 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_1138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1140 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_1140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1142 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_1142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1144 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1146 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_costmdls_1146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_drepActivity_1148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1150 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_1150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1152 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_1152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_1154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1156 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_1156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1158 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_1158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1160 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxBlockExUnits_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_324
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1162 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_316
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_1164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_328
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1166 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_320
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1168 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerBlock_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_348
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1170 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerTx_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxTxExUnits_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_322
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_1176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1178 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_344
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_1180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
      (coe v0)
-- _.PParams.nopt
d_nopt_1182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_1182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_358 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1184 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_1184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1186 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_1186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
      (coe v0)
-- _.PParams.prices
d_prices_1188 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_prices_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
      (coe v0)
-- _.PParams.pv
d_pv_1190 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_330 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1192 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_352
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1194 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_refScriptCostStride_1194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_350
      (coe v0)
-- _.Tx.body
d_body_1620 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782
d_body_1620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
      (coe v0)
-- _.Tx.isValid
d_isValid_1622 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  Bool
d_isValid_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2898
      (coe v0)
-- _.Tx.txAD
d_txAD_1624 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  Maybe AgdaAny
d_txAD_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_2900
      (coe v0)
-- _.Tx.wits
d_wits_1626 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2864
d_wits_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2896
      (coe v0)
-- _.TxBody.collateral
d_collateral_1630 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2858
      (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1632 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  Maybe Integer
d_curTreasury_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_curTreasury_2852
      (coe v0)
-- _.TxBody.mint
d_mint_1634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  AgdaAny
d_mint_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2832
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1636 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2826
      (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1638 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [AgdaAny]
d_reqSigHash_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_reqSigHash_2860
      (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1640 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  Maybe AgdaAny
d_scriptIntHash_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptIntHash_2862
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  Maybe AgdaAny
d_txADhash_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txADhash_2848
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  Maybe AgdaAny
d_txNetworkId_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txNetworkId_2850
      (coe v0)
-- _.TxBody.txcerts
d_txcerts_1646 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2836
      (coe v0)
-- _.TxBody.txdonation
d_txdonation_1648 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  Integer
d_txdonation_1648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdonation_2844
      (coe v0)
-- _.TxBody.txfee
d_txfee_1650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  Integer
d_txfee_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_2830
      (coe v0)
-- _.TxBody.txid
d_txid_1652 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  AgdaAny
d_txid_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2856
      (coe v0)
-- _.TxBody.txins
d_txins_1654 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2824
      (coe v0)
-- _.TxBody.txouts
d_txouts_1656 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2828
      (coe v0)
-- _.TxBody.txprop
d_txprop_1658 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
d_txprop_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2842
      (coe v0)
-- _.TxBody.txsize
d_txsize_1660 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  Integer
d_txsize_1660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_2854
      (coe v0)
-- _.TxBody.txup
d_txup_1662 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txup_2846
      (coe v0)
-- _.TxBody.txvldt
d_txvldt_1664 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2834
      (coe v0)
-- _.TxBody.txvote
d_txvote_1666 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2840
      (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1668 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2838
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState
d_EnactState_1748 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.EnactState.cc
d_cc_1784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.constitution
d_constitution_1786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.pparams
d_pparams_1788 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.pv
d_pv_1790 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.withdrawals
d_withdrawals_1792 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1808 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1808 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv
d_GovEnv_1816 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1818 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  ()
d_GovState_1818 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv.enactState
d_enactState_1884 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_1054
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.epoch
d_epoch_1886 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 -> AgdaAny
d_epoch_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_1048 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.pparams
d_pparams_1888 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_1050 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.ppolicy
d_ppolicy_1890 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 ->
  Maybe AgdaAny
d_ppolicy_1890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_1052 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.txid
d_txid_1892 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 -> AgdaAny
d_txid_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_1046 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1940 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2036 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1970
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2038 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  Integer
d_donations_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1972
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2040 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  Integer
d_fees_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1968 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2042 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1966 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2056 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.LEnv
d_LEnv_2114 a0 a1 = ()
data T_LEnv_2114
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2136 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
                                                          Integer
-- Ledger.Conway.Conformance.Ledger.LEnv.slot
d_slot_2126 :: T_LEnv_2114 -> AgdaAny
d_slot_2126 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2136 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.ppolicy
d_ppolicy_2128 :: T_LEnv_2114 -> Maybe AgdaAny
d_ppolicy_2128 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2136 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.pparams
d_pparams_2130 ::
  T_LEnv_2114 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2130 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2136 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.enactState
d_enactState_2132 ::
  T_LEnv_2114 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2132 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2136 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.treasury
d_treasury_2134 :: T_LEnv_2114 -> Integer
d_treasury_2134 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2136 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2138 a0 a1 = ()
data T_LState_2138
  = C_'10214'_'44'_'44'_'10215''737'_2152 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2146 ::
  T_LState_2138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956
d_utxoSt_2146 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2152 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2148 ::
  T_LState_2138 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2148 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2152 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2150 ::
  T_LState_2138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_certState_2150 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2152 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.txgov
d_txgov_2154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2154 ~v0 ~v1 v2 = du_txgov_2154 v2
du_txgov_2154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2154 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2842
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2840
            (coe v0)))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2220 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2220
  = C_LEDGER'45'V_2300 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2380 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2224 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_certState_2224 ~v0 ~v1 v2 = du_certState_2224 v2
du_certState_2224 ::
  T_GeneralizeTel_6327 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
du_certState_2224 v0
  = coe
      d_certState_2150 (coe d_'46'generalizedField'45's_6315 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2226 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2226 ~v0 ~v1 v2 = du_govSt_2226 v2
du_govSt_2226 ::
  T_GeneralizeTel_6327 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2226 v0
  = coe d_govSt_2148 (coe d_'46'generalizedField'45's_6315 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2228 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956
d_utxoSt_2228 ~v0 ~v1 v2 = du_utxoSt_2228 v2
du_utxoSt_2228 ::
  T_GeneralizeTel_6327 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956
du_utxoSt_2228 v0
  = coe d_utxoSt_2146 (coe d_'46'generalizedField'45's_6315 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2250 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_2250 ~v0 ~v1 v2 = du_txcerts_2250 v2
du_txcerts_2250 ::
  T_GeneralizeTel_6327 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
du_txcerts_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2836
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
         (coe d_'46'generalizedField'45'tx_6317 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2256 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 -> AgdaAny
d_txid_2256 ~v0 ~v1 v2 = du_txid_2256 v2
du_txid_2256 :: T_GeneralizeTel_6327 -> AgdaAny
du_txid_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2856
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
         (coe d_'46'generalizedField'45'tx_6317 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2270 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_2270 ~v0 ~v1 v2 = du_txvote_2270 v2
du_txvote_2270 ::
  T_GeneralizeTel_6327 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
du_txvote_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2840
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
         (coe d_'46'generalizedField'45'tx_6317 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2272 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2272 ~v0 ~v1 v2 = du_txwdrls_2272 v2
du_txwdrls_2272 ::
  T_GeneralizeTel_6327 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2838
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
         (coe d_'46'generalizedField'45'tx_6317 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2276 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2276 ~v0 ~v1 v2 = du_enactState_2276 v2
du_enactState_2276 ::
  T_GeneralizeTel_6327 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_enactState_2276 v0
  = coe
      d_enactState_2132 (coe d_'46'generalizedField'45'Γ_6319 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2278 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2278 ~v0 ~v1 v2 = du_pparams_2278 v2
du_pparams_2278 ::
  T_GeneralizeTel_6327 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2278 v0
  = coe
      d_pparams_2130 (coe d_'46'generalizedField'45'Γ_6319 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2280 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 -> Maybe AgdaAny
d_ppolicy_2280 ~v0 ~v1 v2 = du_ppolicy_2280 v2
du_ppolicy_2280 :: T_GeneralizeTel_6327 -> Maybe AgdaAny
du_ppolicy_2280 v0
  = coe
      d_ppolicy_2128 (coe d_'46'generalizedField'45'Γ_6319 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2282 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 -> AgdaAny
d_slot_2282 ~v0 ~v1 v2 = du_slot_2282 v2
du_slot_2282 :: T_GeneralizeTel_6327 -> AgdaAny
du_slot_2282 v0
  = coe d_slot_2126 (coe d_'46'generalizedField'45'Γ_6319 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2284 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 -> Integer
d_treasury_2284 ~v0 ~v1 v2 = du_treasury_2284 v2
du_treasury_2284 :: T_GeneralizeTel_6327 -> Integer
du_treasury_2284 v0
  = coe
      d_treasury_2134 (coe d_'46'generalizedField'45'Γ_6319 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2290 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2290 ~v0 ~v1 v2 = du_enactState_2290 v2
du_enactState_2290 ::
  T_GeneralizeTel_6327 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_enactState_2290 v0
  = coe
      d_enactState_2132 (coe d_'46'generalizedField'45'Γ_6319 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2292 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2292 ~v0 ~v1 v2 = du_pparams_2292 v2
du_pparams_2292 ::
  T_GeneralizeTel_6327 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2292 v0
  = coe
      d_pparams_2130 (coe d_'46'generalizedField'45'Γ_6319 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2294 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 -> Maybe AgdaAny
d_ppolicy_2294 ~v0 ~v1 v2 = du_ppolicy_2294 v2
du_ppolicy_2294 :: T_GeneralizeTel_6327 -> Maybe AgdaAny
du_ppolicy_2294 v0
  = coe
      d_ppolicy_2128 (coe d_'46'generalizedField'45'Γ_6319 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2296 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 -> AgdaAny
d_slot_2296 ~v0 ~v1 v2 = du_slot_2296 v2
du_slot_2296 :: T_GeneralizeTel_6327 -> AgdaAny
du_slot_2296 v0
  = coe d_slot_2126 (coe d_'46'generalizedField'45'Γ_6319 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2298 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6327 -> Integer
d_treasury_2298 ~v0 ~v1 v2 = du_treasury_2298 v2
du_treasury_2298 :: T_GeneralizeTel_6327 -> Integer
du_treasury_2298 v0
  = coe
      d_treasury_2134 (coe d_'46'generalizedField'45'Γ_6319 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2304 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6747 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_certState_2304 ~v0 ~v1 v2 = du_certState_2304 v2
du_certState_2304 ::
  T_GeneralizeTel_6747 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
du_certState_2304 v0
  = coe
      d_certState_2150 (coe d_'46'generalizedField'45's_6739 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2306 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6747 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2306 ~v0 ~v1 v2 = du_govSt_2306 v2
du_govSt_2306 ::
  T_GeneralizeTel_6747 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2306 v0
  = coe d_govSt_2148 (coe d_'46'generalizedField'45's_6739 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2308 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6747 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956
d_utxoSt_2308 ~v0 ~v1 v2 = du_utxoSt_2308 v2
du_utxoSt_2308 ::
  T_GeneralizeTel_6747 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956
du_utxoSt_2308 v0
  = coe d_utxoSt_2146 (coe d_'46'generalizedField'45's_6739 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2356 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6747 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2356 ~v0 ~v1 v2 = du_enactState_2356 v2
du_enactState_2356 ::
  T_GeneralizeTel_6747 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_enactState_2356 v0
  = coe
      d_enactState_2132 (coe d_'46'generalizedField'45'Γ_6743 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6747 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2358 ~v0 ~v1 v2 = du_pparams_2358 v2
du_pparams_2358 ::
  T_GeneralizeTel_6747 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2358 v0
  = coe
      d_pparams_2130 (coe d_'46'generalizedField'45'Γ_6743 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2360 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6747 -> Maybe AgdaAny
d_ppolicy_2360 ~v0 ~v1 v2 = du_ppolicy_2360 v2
du_ppolicy_2360 :: T_GeneralizeTel_6747 -> Maybe AgdaAny
du_ppolicy_2360 v0
  = coe
      d_ppolicy_2128 (coe d_'46'generalizedField'45'Γ_6743 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2362 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6747 -> AgdaAny
d_slot_2362 ~v0 ~v1 v2 = du_slot_2362 v2
du_slot_2362 :: T_GeneralizeTel_6747 -> AgdaAny
du_slot_2362 v0
  = coe d_slot_2126 (coe d_'46'generalizedField'45'Γ_6743 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2364 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6747 -> Integer
d_treasury_2364 ~v0 ~v1 v2 = du_treasury_2364 v2
du_treasury_2364 :: T_GeneralizeTel_6747 -> Integer
du_treasury_2364 v0
  = coe
      d_treasury_2134 (coe d_'46'generalizedField'45'Γ_6743 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2370 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6747 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2370 ~v0 ~v1 v2 = du_enactState_2370 v2
du_enactState_2370 ::
  T_GeneralizeTel_6747 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_enactState_2370 v0
  = coe
      d_enactState_2132 (coe d_'46'generalizedField'45'Γ_6743 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6747 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2372 ~v0 ~v1 v2 = du_pparams_2372 v2
du_pparams_2372 ::
  T_GeneralizeTel_6747 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2372 v0
  = coe
      d_pparams_2130 (coe d_'46'generalizedField'45'Γ_6743 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2374 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6747 -> Maybe AgdaAny
d_ppolicy_2374 ~v0 ~v1 v2 = du_ppolicy_2374 v2
du_ppolicy_2374 :: T_GeneralizeTel_6747 -> Maybe AgdaAny
du_ppolicy_2374 v0
  = coe
      d_ppolicy_2128 (coe d_'46'generalizedField'45'Γ_6743 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2376 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6747 -> AgdaAny
d_slot_2376 ~v0 ~v1 v2 = du_slot_2376 v2
du_slot_2376 :: T_GeneralizeTel_6747 -> AgdaAny
du_slot_2376 v0
  = coe d_slot_2126 (coe d_'46'generalizedField'45'Γ_6743 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2378 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_6747 -> Integer
d_treasury_2378 ~v0 ~v1 v2 = du_treasury_2378 v2
du_treasury_2378 :: T_GeneralizeTel_6747 -> Integer
du_treasury_2378 v0
  = coe
      d_treasury_2134 (coe d_'46'generalizedField'45'Γ_6743 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2398 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_LEnv_2114 ->
  T_LState_2138 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884] ->
  T_LState_2138 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2398 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_6315 ::
  T_GeneralizeTel_6327 -> T_LState_2138
d_'46'generalizedField'45's_6315 v0
  = case coe v0 of
      C_mkGeneralizeTel_6329 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6317 ::
  T_GeneralizeTel_6327 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884
d_'46'generalizedField'45'tx_6317 v0
  = case coe v0 of
      C_mkGeneralizeTel_6329 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6319 ::
  T_GeneralizeTel_6327 -> T_LEnv_2114
d_'46'generalizedField'45'Γ_6319 v0
  = case coe v0 of
      C_mkGeneralizeTel_6329 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6321 ::
  T_GeneralizeTel_6327 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956
d_'46'generalizedField'45'utxoSt''_6321 v0
  = case coe v0 of
      C_mkGeneralizeTel_6329 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_6323 ::
  T_GeneralizeTel_6327 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_'46'generalizedField'45'certState''_6323 v0
  = case coe v0 of
      C_mkGeneralizeTel_6329 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_6325 ::
  T_GeneralizeTel_6327 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_6325 v0
  = case coe v0 of
      C_mkGeneralizeTel_6329 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_6327 a0 a1 = ()
data T_GeneralizeTel_6327
  = C_mkGeneralizeTel_6329 T_LState_2138
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884
                           T_LEnv_2114
                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_6739 ::
  T_GeneralizeTel_6747 -> T_LState_2138
d_'46'generalizedField'45's_6739 v0
  = case coe v0 of
      C_mkGeneralizeTel_6749 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6741 ::
  T_GeneralizeTel_6747 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884
d_'46'generalizedField'45'tx_6741 v0
  = case coe v0 of
      C_mkGeneralizeTel_6749 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6743 ::
  T_GeneralizeTel_6747 -> T_LEnv_2114
d_'46'generalizedField'45'Γ_6743 v0
  = case coe v0 of
      C_mkGeneralizeTel_6749 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6745 ::
  T_GeneralizeTel_6747 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956
d_'46'generalizedField'45'utxoSt''_6745 v0
  = case coe v0 of
      C_mkGeneralizeTel_6749 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_6747 a0 a1 = ()
data T_GeneralizeTel_6747
  = C_mkGeneralizeTel_6749 T_LState_2138
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884
                           T_LEnv_2114
                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956
