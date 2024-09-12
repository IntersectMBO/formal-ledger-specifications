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
-- _.PParams.Emax
d_Emax_1048 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_1048 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_336 (coe v0)
-- _.PParams.a
d_a_1050 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_1050 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_320 (coe v0)
-- _.PParams.a0
d_a0_1052 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1052 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_340 (coe v0)
-- _.PParams.b
d_b_1054 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_1054 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_322 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1056 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_1056 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_352 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1058 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_1058 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_350 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1060 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_1060 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_328 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1062 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_1062 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_342 (coe v0)
-- _.PParams.costmdls
d_costmdls_1064 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_1064 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_344 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1066 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_1066 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_360 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1068 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_1068 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_358 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1070 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_1070 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1072 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_1072 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1074 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_1074 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_354 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1076 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_1076 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_324 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1078 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_1078 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_312 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1080 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_1080 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_304 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1082 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_1082 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_316 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1084 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_1084 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_308 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1086 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_1086 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_310 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1088 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_1088 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_306 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1090 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_1090 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_314 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1092 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1092 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_332
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1094 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_1094 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_334 (coe v0)
-- _.PParams.nopt
d_nopt_1096 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_1096 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_338 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1098 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_1098 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_326 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1100 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_1100 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_346 (coe v0)
-- _.PParams.prices
d_prices_1102 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_1102 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_330 (coe v0)
-- _.PParams.pv
d_pv_1104 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1104 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_318 (coe v0)
-- _.Tx.body
d_body_1522 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736
d_body_1522 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v0)
-- _.Tx.isValid
d_isValid_1524 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Bool
d_isValid_1524 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2852 (coe v0)
-- _.Tx.txAD
d_txAD_1526 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Maybe AgdaAny
d_txAD_1526 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2854 (coe v0)
-- _.Tx.wits
d_wits_1528 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2818
d_wits_1528 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2850 (coe v0)
-- _.TxBody.collateral
d_collateral_1532 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1532 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2812 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1534 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Maybe Integer
d_curTreasury_1534 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2806 (coe v0)
-- _.TxBody.mint
d_mint_1536 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> AgdaAny
d_mint_1536 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2786 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1538 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1538 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2780 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1540 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> [AgdaAny]
d_reqSigHash_1540 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2814 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1542 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Maybe AgdaAny
d_scriptIntHash_1542 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2816 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Maybe AgdaAny
d_txADhash_1544 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2802 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1546 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Maybe AgdaAny
d_txNetworkId_1546 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2804 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1548 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834]
d_txcerts_1548 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2790 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1550 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Integer
d_txdonation_1550 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2798 (coe v0)
-- _.TxBody.txfee
d_txfee_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Integer
d_txfee_1552 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2784 (coe v0)
-- _.TxBody.txid
d_txid_1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> AgdaAny
d_txid_1554 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2810 (coe v0)
-- _.TxBody.txins
d_txins_1556 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1556 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2778 (coe v0)
-- _.TxBody.txouts
d_txouts_1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1558 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2782 (coe v0)
-- _.TxBody.txprop
d_txprop_1560 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754]
d_txprop_1560 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2796 (coe v0)
-- _.TxBody.txsize
d_txsize_1562 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 -> Integer
d_txsize_1562 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2808 (coe v0)
-- _.TxBody.txup
d_txup_1564 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1564 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2800 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1566 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2788 (coe v0)
-- _.TxBody.txvote
d_txvote_1568 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
d_txvote_1568 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2794 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1570 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2792 (coe v0)
-- Ledger.Ledger._.EnactState
d_EnactState_1658 a0 a1 = ()
-- Ledger.Ledger._.EnactState.cc
d_cc_1694 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1694 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v0)
-- Ledger.Ledger._.EnactState.constitution
d_constitution_1696 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1696 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_844 (coe v0)
-- Ledger.Ledger._.EnactState.pparams
d_pparams_1698 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1698 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v0)
-- Ledger.Ledger._.EnactState.pv
d_pv_1700 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1700 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_846 (coe v0)
-- Ledger.Ledger._.EnactState.withdrawals
d_withdrawals_1702 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1702 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_850 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1008 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1718 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1726 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 -> ()
d_GovState_1728 = erased
-- Ledger.Ledger._.GovEnv.enactState
d_enactState_1794 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1008 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_1794 v0
  = coe MAlonzo.Code.Ledger.Gov.d_enactState_1028 (coe v0)
-- Ledger.Ledger._.GovEnv.epoch
d_epoch_1796 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1008 -> AgdaAny
d_epoch_1796 v0 = coe MAlonzo.Code.Ledger.Gov.d_epoch_1022 (coe v0)
-- Ledger.Ledger._.GovEnv.pparams
d_pparams_1798 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1008 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1798 v0
  = coe MAlonzo.Code.Ledger.Gov.d_pparams_1024 (coe v0)
-- Ledger.Ledger._.GovEnv.ppolicy
d_ppolicy_1800 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1008 -> Maybe AgdaAny
d_ppolicy_1800 v0
  = coe MAlonzo.Code.Ledger.Gov.d_ppolicy_1026 (coe v0)
-- Ledger.Ledger._.GovEnv.txid
d_txid_1802 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1008 -> AgdaAny
d_txid_1802 v0 = coe MAlonzo.Code.Ledger.Gov.d_txid_1020 (coe v0)
-- Ledger.Ledger._.UTxOState
d_UTxOState_1850 a0 a1 = ()
-- Ledger.Ledger._.UTxOState.deposits
d_deposits_1946 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1946 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1878 (coe v0)
-- Ledger.Ledger._.UTxOState.donations
d_donations_1948 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 -> Integer
d_donations_1948 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1880 (coe v0)
-- Ledger.Ledger._.UTxOState.fees
d_fees_1950 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 -> Integer
d_fees_1950 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1876 (coe v0)
-- Ledger.Ledger._.UTxOState.utxo
d_utxo_1952 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1952 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1874 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1966 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_2024 a0 a1 = ()
data T_LEnv_2024
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2046 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_244
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_830
                                                          Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2036 :: T_LEnv_2024 -> AgdaAny
d_slot_2036 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2046 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2038 :: T_LEnv_2024 -> Maybe AgdaAny
d_ppolicy_2038 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2046 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2040 ::
  T_LEnv_2024 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2040 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2046 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2042 ::
  T_LEnv_2024 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2042 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2046 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2044 :: T_LEnv_2024 -> Integer
d_treasury_2044 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2046 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_2048 a0 a1 = ()
data T_LState_2048
  = C_'10214'_'44'_'44'_'10215''737'_2062 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_930
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2056 ::
  T_LState_2048 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_utxoSt_2056 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2062 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2058 ::
  T_LState_2048 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2058 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2062 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2060 ::
  T_LState_2048 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_2060 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2062 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2064 ~v0 ~v1 v2 = du_txgov_2064 v2
du_txgov_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2064 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2796 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2794 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2130 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2130
  = C_LEDGER'45'V_2210 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2290 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_2134 ~v0 ~v1 v2 = du_certState_2134 v2
du_certState_2134 ::
  T_GeneralizeTel_6291 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
du_certState_2134 v0
  = coe
      d_certState_2060 (coe d_'46'generalizedField'45's_6279 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2136 ~v0 ~v1 v2 = du_govSt_2136 v2
du_govSt_2136 ::
  T_GeneralizeTel_6291 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2136 v0
  = coe d_govSt_2058 (coe d_'46'generalizedField'45's_6279 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_utxoSt_2138 ~v0 ~v1 v2 = du_utxoSt_2138 v2
du_utxoSt_2138 ::
  T_GeneralizeTel_6291 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
du_utxoSt_2138 v0
  = coe d_utxoSt_2056 (coe d_'46'generalizedField'45's_6279 (coe v0))
-- Ledger.Ledger._.txcerts
d_txcerts_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 -> [MAlonzo.Code.Ledger.Certs.T_DCert_834]
d_txcerts_2160 ~v0 ~v1 v2 = du_txcerts_2160 v2
du_txcerts_2160 ::
  T_GeneralizeTel_6291 -> [MAlonzo.Code.Ledger.Certs.T_DCert_834]
du_txcerts_2160 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2790
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_6281 (coe v0)))
-- Ledger.Ledger._.txid
d_txid_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 -> AgdaAny
d_txid_2166 ~v0 ~v1 v2 = du_txid_2166 v2
du_txid_2166 :: T_GeneralizeTel_6291 -> AgdaAny
du_txid_2166 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2810
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_6281 (coe v0)))
-- Ledger.Ledger._.txvote
d_txvote_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
d_txvote_2180 ~v0 ~v1 v2 = du_txvote_2180 v2
du_txvote_2180 ::
  T_GeneralizeTel_6291 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
du_txvote_2180 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2794
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_6281 (coe v0)))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2182 ~v0 ~v1 v2 = du_txwdrls_2182 v2
du_txwdrls_2182 ::
  T_GeneralizeTel_6291 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2182 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2792
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2848
         (coe d_'46'generalizedField'45'tx_6281 (coe v0)))
-- Ledger.Ledger._.enactState
d_enactState_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2186 ~v0 ~v1 v2 = du_enactState_2186 v2
du_enactState_2186 ::
  T_GeneralizeTel_6291 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2186 v0
  = coe
      d_enactState_2042 (coe d_'46'generalizedField'45'Γ_6283 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2188 ~v0 ~v1 v2 = du_pparams_2188 v2
du_pparams_2188 ::
  T_GeneralizeTel_6291 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2188 v0
  = coe
      d_pparams_2040 (coe d_'46'generalizedField'45'Γ_6283 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 -> Maybe AgdaAny
d_ppolicy_2190 ~v0 ~v1 v2 = du_ppolicy_2190 v2
du_ppolicy_2190 :: T_GeneralizeTel_6291 -> Maybe AgdaAny
du_ppolicy_2190 v0
  = coe
      d_ppolicy_2038 (coe d_'46'generalizedField'45'Γ_6283 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 -> AgdaAny
d_slot_2192 ~v0 ~v1 v2 = du_slot_2192 v2
du_slot_2192 :: T_GeneralizeTel_6291 -> AgdaAny
du_slot_2192 v0
  = coe d_slot_2036 (coe d_'46'generalizedField'45'Γ_6283 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 -> Integer
d_treasury_2194 ~v0 ~v1 v2 = du_treasury_2194 v2
du_treasury_2194 :: T_GeneralizeTel_6291 -> Integer
du_treasury_2194 v0
  = coe
      d_treasury_2044 (coe d_'46'generalizedField'45'Γ_6283 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2200 ~v0 ~v1 v2 = du_enactState_2200 v2
du_enactState_2200 ::
  T_GeneralizeTel_6291 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2200 v0
  = coe
      d_enactState_2042 (coe d_'46'generalizedField'45'Γ_6283 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2202 ~v0 ~v1 v2 = du_pparams_2202 v2
du_pparams_2202 ::
  T_GeneralizeTel_6291 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2202 v0
  = coe
      d_pparams_2040 (coe d_'46'generalizedField'45'Γ_6283 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 -> Maybe AgdaAny
d_ppolicy_2204 ~v0 ~v1 v2 = du_ppolicy_2204 v2
du_ppolicy_2204 :: T_GeneralizeTel_6291 -> Maybe AgdaAny
du_ppolicy_2204 v0
  = coe
      d_ppolicy_2038 (coe d_'46'generalizedField'45'Γ_6283 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 -> AgdaAny
d_slot_2206 ~v0 ~v1 v2 = du_slot_2206 v2
du_slot_2206 :: T_GeneralizeTel_6291 -> AgdaAny
du_slot_2206 v0
  = coe d_slot_2036 (coe d_'46'generalizedField'45'Γ_6283 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6291 -> Integer
d_treasury_2208 ~v0 ~v1 v2 = du_treasury_2208 v2
du_treasury_2208 :: T_GeneralizeTel_6291 -> Integer
du_treasury_2208 v0
  = coe
      d_treasury_2044 (coe d_'46'generalizedField'45'Γ_6283 (coe v0))
-- Ledger.Ledger._.certState
d_certState_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6711 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_2214 ~v0 ~v1 v2 = du_certState_2214 v2
du_certState_2214 ::
  T_GeneralizeTel_6711 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
du_certState_2214 v0
  = coe
      d_certState_2060 (coe d_'46'generalizedField'45's_6703 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6711 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2216 ~v0 ~v1 v2 = du_govSt_2216 v2
du_govSt_2216 ::
  T_GeneralizeTel_6711 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2216 v0
  = coe d_govSt_2058 (coe d_'46'generalizedField'45's_6703 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6711 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_utxoSt_2218 ~v0 ~v1 v2 = du_utxoSt_2218 v2
du_utxoSt_2218 ::
  T_GeneralizeTel_6711 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
du_utxoSt_2218 v0
  = coe d_utxoSt_2056 (coe d_'46'generalizedField'45's_6703 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6711 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2266 ~v0 ~v1 v2 = du_enactState_2266 v2
du_enactState_2266 ::
  T_GeneralizeTel_6711 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2266 v0
  = coe
      d_enactState_2042 (coe d_'46'generalizedField'45'Γ_6707 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6711 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2268 ~v0 ~v1 v2 = du_pparams_2268 v2
du_pparams_2268 ::
  T_GeneralizeTel_6711 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2268 v0
  = coe
      d_pparams_2040 (coe d_'46'generalizedField'45'Γ_6707 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6711 -> Maybe AgdaAny
d_ppolicy_2270 ~v0 ~v1 v2 = du_ppolicy_2270 v2
du_ppolicy_2270 :: T_GeneralizeTel_6711 -> Maybe AgdaAny
du_ppolicy_2270 v0
  = coe
      d_ppolicy_2038 (coe d_'46'generalizedField'45'Γ_6707 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6711 -> AgdaAny
d_slot_2272 ~v0 ~v1 v2 = du_slot_2272 v2
du_slot_2272 :: T_GeneralizeTel_6711 -> AgdaAny
du_slot_2272 v0
  = coe d_slot_2036 (coe d_'46'generalizedField'45'Γ_6707 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6711 -> Integer
d_treasury_2274 ~v0 ~v1 v2 = du_treasury_2274 v2
du_treasury_2274 :: T_GeneralizeTel_6711 -> Integer
du_treasury_2274 v0
  = coe
      d_treasury_2044 (coe d_'46'generalizedField'45'Γ_6707 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6711 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2280 ~v0 ~v1 v2 = du_enactState_2280 v2
du_enactState_2280 ::
  T_GeneralizeTel_6711 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2280 v0
  = coe
      d_enactState_2042 (coe d_'46'generalizedField'45'Γ_6707 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6711 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2282 ~v0 ~v1 v2 = du_pparams_2282 v2
du_pparams_2282 ::
  T_GeneralizeTel_6711 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2282 v0
  = coe
      d_pparams_2040 (coe d_'46'generalizedField'45'Γ_6707 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6711 -> Maybe AgdaAny
d_ppolicy_2284 ~v0 ~v1 v2 = du_ppolicy_2284 v2
du_ppolicy_2284 :: T_GeneralizeTel_6711 -> Maybe AgdaAny
du_ppolicy_2284 v0
  = coe
      d_ppolicy_2038 (coe d_'46'generalizedField'45'Γ_6707 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6711 -> AgdaAny
d_slot_2286 ~v0 ~v1 v2 = du_slot_2286 v2
du_slot_2286 :: T_GeneralizeTel_6711 -> AgdaAny
du_slot_2286 v0
  = coe d_slot_2036 (coe d_'46'generalizedField'45'Γ_6707 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_6711 -> Integer
d_treasury_2288 ~v0 ~v1 v2 = du_treasury_2288 v2
du_treasury_2288 :: T_GeneralizeTel_6711 -> Integer
du_treasury_2288 v0
  = coe
      d_treasury_2044 (coe d_'46'generalizedField'45'Γ_6707 (coe v0))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2308 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_LEnv_2024 ->
  T_LState_2048 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2838] -> T_LState_2048 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2308 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_6279 ::
  T_GeneralizeTel_6291 -> T_LState_2048
d_'46'generalizedField'45's_6279 v0
  = case coe v0 of
      C_mkGeneralizeTel_6293 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6281 ::
  T_GeneralizeTel_6291 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2838
d_'46'generalizedField'45'tx_6281 v0
  = case coe v0 of
      C_mkGeneralizeTel_6293 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6283 ::
  T_GeneralizeTel_6291 -> T_LEnv_2024
d_'46'generalizedField'45'Γ_6283 v0
  = case coe v0 of
      C_mkGeneralizeTel_6293 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6285 ::
  T_GeneralizeTel_6291 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_'46'generalizedField'45'utxoSt''_6285 v0
  = case coe v0 of
      C_mkGeneralizeTel_6293 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_6287 ::
  T_GeneralizeTel_6291 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_'46'generalizedField'45'certState''_6287 v0
  = case coe v0 of
      C_mkGeneralizeTel_6293 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_6289 ::
  T_GeneralizeTel_6291 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_6289 v0
  = case coe v0 of
      C_mkGeneralizeTel_6293 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_6291 a0 a1 = ()
data T_GeneralizeTel_6291
  = C_mkGeneralizeTel_6293 T_LState_2048
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2838 T_LEnv_2024
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
                           MAlonzo.Code.Ledger.Certs.T_CertState_930
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_6703 ::
  T_GeneralizeTel_6711 -> T_LState_2048
d_'46'generalizedField'45's_6703 v0
  = case coe v0 of
      C_mkGeneralizeTel_6713 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6705 ::
  T_GeneralizeTel_6711 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2838
d_'46'generalizedField'45'tx_6705 v0
  = case coe v0 of
      C_mkGeneralizeTel_6713 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6707 ::
  T_GeneralizeTel_6711 -> T_LEnv_2024
d_'46'generalizedField'45'Γ_6707 v0
  = case coe v0 of
      C_mkGeneralizeTel_6713 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6709 ::
  T_GeneralizeTel_6711 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_'46'generalizedField'45'utxoSt''_6709 v0
  = case coe v0 of
      C_mkGeneralizeTel_6713 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_6711 a0 a1 = ()
data T_GeneralizeTel_6711
  = C_mkGeneralizeTel_6713 T_LState_2048
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2838 T_LEnv_2024
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
