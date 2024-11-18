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
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.DecEq-Credential
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_170
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_92 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_92 ~v0 = du_DecEq'45'GovRole_92
du_DecEq'45'GovRole_92 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_92
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_842
-- _.GovActionState
d_GovActionState_164 a0 = ()
-- _.GovProposal
d_GovProposal_168 a0 = ()
-- _.GovVote
d_GovVote_172 a0 = ()
-- _.PParams
d_PParams_238 a0 = ()
-- _.ScriptHash
d_ScriptHash_296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_296 = erased
-- _.Slot
d_Slot_344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_344 = erased
-- _.Tx
d_Tx_374 a0 = ()
-- _.TxBody
d_TxBody_376 a0 = ()
-- _.Voter
d_Voter_412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_412 = erased
-- _.epoch
d_epoch_448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_448 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1568 (coe v0))
-- _.GovActionState.action
d_action_696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_820 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_734
d_action_696 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_838 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_820 ->
  AgdaAny
d_expiresIn_698 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_836 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_700 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_820 ->
  AgdaAny
d_prevAction_700 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_840 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_702 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_820 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_86
d_returnAddr_702 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_834 (coe v0)
-- _.GovActionState.votes
d_votes_704 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_704 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_832 (coe v0)
-- _.GovProposal.action
d_action_736 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_734
d_action_736 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_808 (coe v0)
-- _.GovProposal.anchor
d_anchor_738 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_724
d_anchor_738 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_818 (coe v0)
-- _.GovProposal.deposit
d_deposit_740 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 -> Integer
d_deposit_740 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_814 (coe v0)
-- _.GovProposal.policy
d_policy_742 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 ->
  Maybe AgdaAny
d_policy_742 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_812 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_744 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 -> AgdaAny
d_prevAction_744 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_810 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_746 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_86
d_returnAddr_746 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816 (coe v0)
-- _.GovVote.anchor
d_anchor_758 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_724
d_anchor_758 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_792 (coe v0)
-- _.GovVote.gid
d_gid_760 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_760 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_786 (coe v0)
-- _.GovVote.vote
d_vote_762 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_768
d_vote_762 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_790 (coe v0)
-- _.GovVote.voter
d_voter_764 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_764 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_788 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_786 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_788 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_790 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_792 a0 = ()
-- _.PParams.Emax
d_Emax_940 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_940 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_942 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_942 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_944 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_946 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_946 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_954 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_960 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_962 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_964 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_964 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_966 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_966 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_968 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_968 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_970 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_970 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_972 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_972 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_974 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_974 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_976 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_976 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_978 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_978 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_980 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_980 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_982 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_982 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_984 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_984 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_986 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_986 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_988 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_988 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_990 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_990 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_992 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_992 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_994 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_994 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_996 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_996 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_998 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_998 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_1000 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1000 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1002 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1002 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1004 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_1004 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- _.Tx.body
d_body_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604
d_body_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v0)
-- _.Tx.isValid
d_isValid_1420 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> Bool
d_isValid_1420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2720 (coe v0)
-- _.Tx.txAD
d_txAD_1422 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> Maybe AgdaAny
d_txAD_1422 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2722 (coe v0)
-- _.Tx.wits
d_wits_1424 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2686
d_wits_1424 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2718 (coe v0)
-- _.TxBody.collateral
d_collateral_1428 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1428 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2680 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1430 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Maybe Integer
d_curTreasury_1430 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2674 (coe v0)
-- _.TxBody.mint
d_mint_1432 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> AgdaAny
d_mint_1432 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2654 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1434 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1434 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2648 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1436 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> [AgdaAny]
d_reqSigHash_1436 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2682 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1438 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Maybe AgdaAny
d_scriptIntHash_1438 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2684 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1440 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Maybe AgdaAny
d_txADhash_1440 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2670 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1442 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Maybe AgdaAny
d_txNetworkId_1442 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2672 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1444 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_874]
d_txcerts_1444 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2658 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1446 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Integer
d_txdonation_1446 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2666 (coe v0)
-- _.TxBody.txfee
d_txfee_1448 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Integer
d_txfee_1448 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2652 (coe v0)
-- _.TxBody.txid
d_txid_1450 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> AgdaAny
d_txid_1450 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2678 (coe v0)
-- _.TxBody.txins
d_txins_1452 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1452 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2646 (coe v0)
-- _.TxBody.txouts
d_txouts_1454 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1454 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2650 (coe v0)
-- _.TxBody.txprop
d_txprop_1456 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794]
d_txprop_1456 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2664 (coe v0)
-- _.TxBody.txsize
d_txsize_1458 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Integer
d_txsize_1458 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2676 (coe v0)
-- _.TxBody.txup
d_txup_1460 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1460 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2668 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1462 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1462 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2656 (coe v0)
-- _.TxBody.txvote
d_txvote_1464 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776]
d_txvote_1464 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2662 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1466 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1466 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2660 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState
d_EnactState_1546 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.EnactState.cc
d_cc_1582 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1582 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_882 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.constitution
d_constitution_1584 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1584 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_884 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.pparams
d_pparams_1586 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1586 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_888 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.pv
d_pv_1588 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1588 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_886 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.withdrawals
d_withdrawals_1590 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1590 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_890 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1606 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1606 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv
d_GovEnv_1614 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 -> ()
d_GovState_1616 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv.certState
d_certState_1684 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1952 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104
d_certState_1684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_certState_1976
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.enactState
d_enactState_1686 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1952 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_870
d_enactState_1686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_1974
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.epoch
d_epoch_1688 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1952 -> AgdaAny
d_epoch_1688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_1968 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.pparams
d_pparams_1690 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1952 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_1970 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.ppolicy
d_ppolicy_1692 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1952 ->
  Maybe AgdaAny
d_ppolicy_1692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_1972 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.txid
d_txid_1694 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1952 -> AgdaAny
d_txid_1694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_1966 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1740 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1786 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1786 v0 ~v1 = du_updateDeposits_1786 v0
du_updateDeposits_1786 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateDeposits_1962
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1832 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2028 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_2042
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1834 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2028 ->
  Integer
d_donations_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_2044
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1836 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2028 ->
  Integer
d_fees_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_2040 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1838 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2028 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_2038 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1852 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1914 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_906 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_874] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1914 = erased
-- Ledger.Conway.Conformance.Ledger._.CertEnv
d_CertEnv_1940 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1942 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.CertEnv.epoch
d_epoch_2076 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_906 -> AgdaAny
d_epoch_2076 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_916 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.pp
d_pp_2078 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_906 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_2078 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_918 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.votes
d_votes_2080 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_906 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776]
d_votes_2080 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_920 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.wdrls
d_wdrls_2082 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2082 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_922 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2086 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1068
d_dState_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1112 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2088 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1088
d_gState_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1116 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2090 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104 ->
  MAlonzo.Code.Ledger.Certs.T_PState_942
d_pState_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1114 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LEnv
d_LEnv_2154 a0 a1 = ()
data T_LEnv_2154
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2176 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_244
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_870
                                                          Integer
-- Ledger.Conway.Conformance.Ledger.LEnv.slot
d_slot_2166 :: T_LEnv_2154 -> AgdaAny
d_slot_2166 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2176 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.ppolicy
d_ppolicy_2168 :: T_LEnv_2154 -> Maybe AgdaAny
d_ppolicy_2168 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2176 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.pparams
d_pparams_2170 ::
  T_LEnv_2154 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2170 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2176 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.enactState
d_enactState_2172 ::
  T_LEnv_2154 -> MAlonzo.Code.Ledger.Enact.T_EnactState_870
d_enactState_2172 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2176 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.treasury
d_treasury_2174 :: T_LEnv_2154 -> Integer
d_treasury_2174 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2176 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2178 a0 a1 = ()
data T_LState_2178
  = C_'10214'_'44'_'44'_'10215''737'_2192 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2028
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2186 ::
  T_LState_2178 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2028
d_utxoSt_2186 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2192 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2188 ::
  T_LState_2178 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2188 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2192 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2190 ::
  T_LState_2178 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104
d_certState_2190 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2192 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.txgov
d_txgov_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2194 ~v0 ~v1 v2 = du_txgov_2194 v2
du_txgov_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2194 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2664 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2662 (coe v0)))
-- Ledger.Conway.Conformance.Ledger.isUnregisteredDRep
d_isUnregisteredDRep_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_isUnregisteredDRep_2244 = erased
-- Ledger.Conway.Conformance.Ledger.removeOrphanDRepVotes
d_removeOrphanDRepVotes_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_820 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_820
d_removeOrphanDRepVotes_2252 v0 ~v1 v2 v3
  = du_removeOrphanDRepVotes_2252 v0 v2 v3
du_removeOrphanDRepVotes_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_820 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_820
du_removeOrphanDRepVotes_2252 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_7113
      (coe du_votes'8242'_2262 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_834 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_836 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_838 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_840 (coe v2))
-- Ledger.Conway.Conformance.Ledger._.votes′
d_votes'8242'_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes'8242'_2262 v0 ~v1 v2 v3 = du_votes'8242'_2262 v0 v2 v3
du_votes'8242'_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_votes'8242'_2262 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_842)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_708))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_170
                       (coe
                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                          (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0))))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                    (coe
                       MAlonzo.Code.Class.IsSet.du_dom_548
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1096
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1116
                             (coe v1)))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
      (MAlonzo.Code.Ledger.GovernanceActions.d_votes_832 (coe v2))
-- Ledger.Conway.Conformance.Ledger._|ᵒ_
d__'124''7506'__2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'124''7506'__2264 v0 ~v1 v2 v3 = du__'124''7506'__2264 v0 v2 v3
du__'124''7506'__2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'124''7506'__2264 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_removeOrphanDRepVotes_2252 (coe v0) (coe v2)))
      (coe v1)
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2286 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2286
  = C_LEDGER'45'V_2368 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2028
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2448 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104
d_certState_2290 ~v0 ~v1 v2 = du_certState_2290 v2
du_certState_2290 ::
  T_GeneralizeTel_11135 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104
du_certState_2290 v0
  = coe
      d_certState_2190 (coe d_'46'generalizedField'45's_11123 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2292 ~v0 ~v1 v2 = du_govSt_2292 v2
du_govSt_2292 ::
  T_GeneralizeTel_11135 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2292 v0
  = coe d_govSt_2188 (coe d_'46'generalizedField'45's_11123 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2028
d_utxoSt_2294 ~v0 ~v1 v2 = du_utxoSt_2294 v2
du_utxoSt_2294 ::
  T_GeneralizeTel_11135 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2028
du_utxoSt_2294 v0
  = coe
      d_utxoSt_2186 (coe d_'46'generalizedField'45's_11123 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 -> [MAlonzo.Code.Ledger.Certs.T_DCert_874]
d_txcerts_2316 ~v0 ~v1 v2 = du_txcerts_2316 v2
du_txcerts_2316 ::
  T_GeneralizeTel_11135 -> [MAlonzo.Code.Ledger.Certs.T_DCert_874]
du_txcerts_2316 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2658
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2716
         (coe d_'46'generalizedField'45'tx_11125 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 -> AgdaAny
d_txid_2322 ~v0 ~v1 v2 = du_txid_2322 v2
du_txid_2322 :: T_GeneralizeTel_11135 -> AgdaAny
du_txid_2322 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2678
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2716
         (coe d_'46'generalizedField'45'tx_11125 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776]
d_txvote_2336 ~v0 ~v1 v2 = du_txvote_2336 v2
du_txvote_2336 ::
  T_GeneralizeTel_11135 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776]
du_txvote_2336 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2662
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2716
         (coe d_'46'generalizedField'45'tx_11125 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2338 ~v0 ~v1 v2 = du_txwdrls_2338 v2
du_txwdrls_2338 ::
  T_GeneralizeTel_11135 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2338 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2660
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2716
         (coe d_'46'generalizedField'45'tx_11125 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 -> MAlonzo.Code.Ledger.Enact.T_EnactState_870
d_enactState_2342 ~v0 ~v1 v2 = du_enactState_2342 v2
du_enactState_2342 ::
  T_GeneralizeTel_11135 -> MAlonzo.Code.Ledger.Enact.T_EnactState_870
du_enactState_2342 v0
  = coe
      d_enactState_2172 (coe d_'46'generalizedField'45'Γ_11127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2344 ~v0 ~v1 v2 = du_pparams_2344 v2
du_pparams_2344 ::
  T_GeneralizeTel_11135 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2344 v0
  = coe
      d_pparams_2170 (coe d_'46'generalizedField'45'Γ_11127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 -> Maybe AgdaAny
d_ppolicy_2346 ~v0 ~v1 v2 = du_ppolicy_2346 v2
du_ppolicy_2346 :: T_GeneralizeTel_11135 -> Maybe AgdaAny
du_ppolicy_2346 v0
  = coe
      d_ppolicy_2168 (coe d_'46'generalizedField'45'Γ_11127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 -> AgdaAny
d_slot_2348 ~v0 ~v1 v2 = du_slot_2348 v2
du_slot_2348 :: T_GeneralizeTel_11135 -> AgdaAny
du_slot_2348 v0
  = coe d_slot_2166 (coe d_'46'generalizedField'45'Γ_11127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 -> Integer
d_treasury_2350 ~v0 ~v1 v2 = du_treasury_2350 v2
du_treasury_2350 :: T_GeneralizeTel_11135 -> Integer
du_treasury_2350 v0
  = coe
      d_treasury_2174 (coe d_'46'generalizedField'45'Γ_11127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 -> MAlonzo.Code.Ledger.Enact.T_EnactState_870
d_enactState_2358 ~v0 ~v1 v2 = du_enactState_2358 v2
du_enactState_2358 ::
  T_GeneralizeTel_11135 -> MAlonzo.Code.Ledger.Enact.T_EnactState_870
du_enactState_2358 v0
  = coe
      d_enactState_2172 (coe d_'46'generalizedField'45'Γ_11127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2360 ~v0 ~v1 v2 = du_pparams_2360 v2
du_pparams_2360 ::
  T_GeneralizeTel_11135 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2360 v0
  = coe
      d_pparams_2170 (coe d_'46'generalizedField'45'Γ_11127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2362 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 -> Maybe AgdaAny
d_ppolicy_2362 ~v0 ~v1 v2 = du_ppolicy_2362 v2
du_ppolicy_2362 :: T_GeneralizeTel_11135 -> Maybe AgdaAny
du_ppolicy_2362 v0
  = coe
      d_ppolicy_2168 (coe d_'46'generalizedField'45'Γ_11127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 -> AgdaAny
d_slot_2364 ~v0 ~v1 v2 = du_slot_2364 v2
du_slot_2364 :: T_GeneralizeTel_11135 -> AgdaAny
du_slot_2364 v0
  = coe d_slot_2166 (coe d_'46'generalizedField'45'Γ_11127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11135 -> Integer
d_treasury_2366 ~v0 ~v1 v2 = du_treasury_2366 v2
du_treasury_2366 :: T_GeneralizeTel_11135 -> Integer
du_treasury_2366 v0
  = coe
      d_treasury_2174 (coe d_'46'generalizedField'45'Γ_11127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11555 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104
d_certState_2372 ~v0 ~v1 v2 = du_certState_2372 v2
du_certState_2372 ::
  T_GeneralizeTel_11555 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104
du_certState_2372 v0
  = coe
      d_certState_2190 (coe d_'46'generalizedField'45's_11547 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2374 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11555 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2374 ~v0 ~v1 v2 = du_govSt_2374 v2
du_govSt_2374 ::
  T_GeneralizeTel_11555 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2374 v0
  = coe d_govSt_2188 (coe d_'46'generalizedField'45's_11547 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11555 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2028
d_utxoSt_2376 ~v0 ~v1 v2 = du_utxoSt_2376 v2
du_utxoSt_2376 ::
  T_GeneralizeTel_11555 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2028
du_utxoSt_2376 v0
  = coe
      d_utxoSt_2186 (coe d_'46'generalizedField'45's_11547 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11555 -> MAlonzo.Code.Ledger.Enact.T_EnactState_870
d_enactState_2424 ~v0 ~v1 v2 = du_enactState_2424 v2
du_enactState_2424 ::
  T_GeneralizeTel_11555 -> MAlonzo.Code.Ledger.Enact.T_EnactState_870
du_enactState_2424 v0
  = coe
      d_enactState_2172 (coe d_'46'generalizedField'45'Γ_11551 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11555 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2426 ~v0 ~v1 v2 = du_pparams_2426 v2
du_pparams_2426 ::
  T_GeneralizeTel_11555 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2426 v0
  = coe
      d_pparams_2170 (coe d_'46'generalizedField'45'Γ_11551 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2428 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11555 -> Maybe AgdaAny
d_ppolicy_2428 ~v0 ~v1 v2 = du_ppolicy_2428 v2
du_ppolicy_2428 :: T_GeneralizeTel_11555 -> Maybe AgdaAny
du_ppolicy_2428 v0
  = coe
      d_ppolicy_2168 (coe d_'46'generalizedField'45'Γ_11551 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11555 -> AgdaAny
d_slot_2430 ~v0 ~v1 v2 = du_slot_2430 v2
du_slot_2430 :: T_GeneralizeTel_11555 -> AgdaAny
du_slot_2430 v0
  = coe d_slot_2166 (coe d_'46'generalizedField'45'Γ_11551 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11555 -> Integer
d_treasury_2432 ~v0 ~v1 v2 = du_treasury_2432 v2
du_treasury_2432 :: T_GeneralizeTel_11555 -> Integer
du_treasury_2432 v0
  = coe
      d_treasury_2174 (coe d_'46'generalizedField'45'Γ_11551 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11555 -> MAlonzo.Code.Ledger.Enact.T_EnactState_870
d_enactState_2438 ~v0 ~v1 v2 = du_enactState_2438 v2
du_enactState_2438 ::
  T_GeneralizeTel_11555 -> MAlonzo.Code.Ledger.Enact.T_EnactState_870
du_enactState_2438 v0
  = coe
      d_enactState_2172 (coe d_'46'generalizedField'45'Γ_11551 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11555 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2440 ~v0 ~v1 v2 = du_pparams_2440 v2
du_pparams_2440 ::
  T_GeneralizeTel_11555 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2440 v0
  = coe
      d_pparams_2170 (coe d_'46'generalizedField'45'Γ_11551 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11555 -> Maybe AgdaAny
d_ppolicy_2442 ~v0 ~v1 v2 = du_ppolicy_2442 v2
du_ppolicy_2442 :: T_GeneralizeTel_11555 -> Maybe AgdaAny
du_ppolicy_2442 v0
  = coe
      d_ppolicy_2168 (coe d_'46'generalizedField'45'Γ_11551 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2444 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11555 -> AgdaAny
d_slot_2444 ~v0 ~v1 v2 = du_slot_2444 v2
du_slot_2444 :: T_GeneralizeTel_11555 -> AgdaAny
du_slot_2444 v0
  = coe d_slot_2166 (coe d_'46'generalizedField'45'Γ_11551 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_11555 -> Integer
d_treasury_2446 ~v0 ~v1 v2 = du_treasury_2446 v2
du_treasury_2446 :: T_GeneralizeTel_11555 -> Integer
du_treasury_2446 v0
  = coe
      d_treasury_2174 (coe d_'46'generalizedField'45'Γ_11551 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2466 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_LEnv_2154 ->
  T_LState_2178 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2706] -> T_LState_2178 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2466 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_11123 ::
  T_GeneralizeTel_11135 -> T_LState_2178
d_'46'generalizedField'45's_11123 v0
  = case coe v0 of
      C_mkGeneralizeTel_11137 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_11125 ::
  T_GeneralizeTel_11135 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2706
d_'46'generalizedField'45'tx_11125 v0
  = case coe v0 of
      C_mkGeneralizeTel_11137 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_11127 ::
  T_GeneralizeTel_11135 -> T_LEnv_2154
d_'46'generalizedField'45'Γ_11127 v0
  = case coe v0 of
      C_mkGeneralizeTel_11137 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_11129 ::
  T_GeneralizeTel_11135 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2028
d_'46'generalizedField'45'utxoSt''_11129 v0
  = case coe v0 of
      C_mkGeneralizeTel_11137 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_11131 ::
  T_GeneralizeTel_11135 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104
d_'46'generalizedField'45'certState''_11131 v0
  = case coe v0 of
      C_mkGeneralizeTel_11137 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_11133 ::
  T_GeneralizeTel_11135 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_11133 v0
  = case coe v0 of
      C_mkGeneralizeTel_11137 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_11135 a0 a1 = ()
data T_GeneralizeTel_11135
  = C_mkGeneralizeTel_11137 T_LState_2178
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2706 T_LEnv_2154
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2028
                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1104
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_11547 ::
  T_GeneralizeTel_11555 -> T_LState_2178
d_'46'generalizedField'45's_11547 v0
  = case coe v0 of
      C_mkGeneralizeTel_11557 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_11549 ::
  T_GeneralizeTel_11555 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2706
d_'46'generalizedField'45'tx_11549 v0
  = case coe v0 of
      C_mkGeneralizeTel_11557 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_11551 ::
  T_GeneralizeTel_11555 -> T_LEnv_2154
d_'46'generalizedField'45'Γ_11551 v0
  = case coe v0 of
      C_mkGeneralizeTel_11557 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_11553 ::
  T_GeneralizeTel_11555 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2028
d_'46'generalizedField'45'utxoSt''_11553 v0
  = case coe v0 of
      C_mkGeneralizeTel_11557 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_11555 a0 a1 = ()
data T_GeneralizeTel_11555
  = C_mkGeneralizeTel_11557 T_LState_2178
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2706 T_LEnv_2154
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2028
