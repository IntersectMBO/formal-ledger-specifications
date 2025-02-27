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
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.To
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Gov
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxow
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Credential
d_Credential_44 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_78 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_78 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_86 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_86 ~v0 = du_DecEq'45'GovRole_86
du_DecEq'45'GovRole_86 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_86
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796
-- _.GovActionState
d_GovActionState_154 a0 = ()
-- _.GovProposal
d_GovProposal_160 a0 = ()
-- _.GovVote
d_GovVote_164 a0 = ()
-- _.PParams
d_PParams_226 a0 = ()
-- _.ScriptHash
d_ScriptHash_282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_282 = erased
-- _.Slot
d_Slot_328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_328 = erased
-- _.Tx
d_Tx_358 a0 = ()
-- _.TxBody
d_TxBody_360 a0 = ()
-- _.Voter
d_Voter_394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_394 = erased
-- _.epoch
d_epoch_424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_424 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0))
-- _.GovActionState.action
d_action_650 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_action_650 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_792 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_652 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  AgdaAny
d_expiresIn_652 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_790 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_654 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  AgdaAny
d_prevAction_654 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_794 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_656 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_656 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_788 (coe v0)
-- _.GovActionState.votes
d_votes_658 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_658 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_786 (coe v0)
-- _.GovProposal.action
d_action_694 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_action_694 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_762 (coe v0)
-- _.GovProposal.anchor
d_anchor_696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_696 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_772 (coe v0)
-- _.GovProposal.deposit
d_deposit_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 -> Integer
d_deposit_698 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_768 (coe v0)
-- _.GovProposal.policy
d_policy_700 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  Maybe AgdaAny
d_policy_700 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_766 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_702 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 -> AgdaAny
d_prevAction_702 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_764 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_704 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_704 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_770 (coe v0)
-- _.GovVote.anchor
d_anchor_716 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_716 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_746 (coe v0)
-- _.GovVote.gid
d_gid_718 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_718 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_740 (coe v0)
-- _.GovVote.vote
d_vote_720 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_722
d_vote_720 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_744 (coe v0)
-- _.GovVote.voter
d_voter_722 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_722 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_742 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_746 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_750 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_752 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_754 a0 = ()
-- _.PParams.Emax
d_Emax_900 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_900 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_902 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_902 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_904 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_904 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_906 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_906 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_912 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_914 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_918 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_926 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_934 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_938 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_940 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_948 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_952 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_952 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_960 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_962 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_964 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_964 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- _.Tx.body
d_body_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524
d_body_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2636 (coe v0)
-- _.Tx.isValid
d_isValid_1380 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2626 -> Bool
d_isValid_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2640 (coe v0)
-- _.Tx.txAD
d_txAD_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 -> Maybe AgdaAny
d_txAD_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2642 (coe v0)
-- _.Tx.wits
d_wits_1384 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2606
d_wits_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2638 (coe v0)
-- _.TxBody.collateral
d_collateral_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2600 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1390 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> Maybe Integer
d_curTreasury_1390 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2594 (coe v0)
-- _.TxBody.mint
d_mint_1392 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> AgdaAny
d_mint_1392 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2574 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2568 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1396 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> [AgdaAny]
d_reqSigHash_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2602 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1398 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> Maybe AgdaAny
d_scriptIntHash_1398 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2604 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> Maybe AgdaAny
d_txADhash_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2590 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> Maybe AgdaAny
d_txNetworkId_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2592 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_836]
d_txcerts_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2578 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> Integer
d_txdonation_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2586 (coe v0)
-- _.TxBody.txfee
d_txfee_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> Integer
d_txfee_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2572 (coe v0)
-- _.TxBody.txid
d_txid_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> AgdaAny
d_txid_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2598 (coe v0)
-- _.TxBody.txins
d_txins_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2566 (coe v0)
-- _.TxBody.txouts
d_txouts_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2570 (coe v0)
-- _.TxBody.txprop
d_txprop_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748]
d_txprop_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2584 (coe v0)
-- _.TxBody.txsize
d_txsize_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 -> Integer
d_txsize_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2596 (coe v0)
-- _.TxBody.txup
d_txup_1420 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2588 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1422 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1422 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2576 (coe v0)
-- _.TxBody.txvote
d_txvote_1424 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
d_txvote_1424 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2582 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1426 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1426 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2580 (coe v0)
-- Ledger.Ledger._.EnactState
d_EnactState_1506 a0 a1 = ()
-- Ledger.Ledger._.EnactState.cc
d_cc_1542 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1542 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v0)
-- Ledger.Ledger._.EnactState.constitution
d_constitution_1544 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1544 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_844 (coe v0)
-- Ledger.Ledger._.EnactState.pparams
d_pparams_1546 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1546 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v0)
-- Ledger.Ledger._.EnactState.pv
d_pv_1548 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1548 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_846 (coe v0)
-- Ledger.Ledger._.EnactState.withdrawals
d_withdrawals_1550 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1550 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_850 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1894 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1566 = erased
-- Ledger.Ledger._.GovState
d_GovState_1576 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 -> ()
d_GovState_1576 = erased
-- Ledger.Ledger._.To-GovEnv
d_To'45'GovEnv_1580 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1580 ~v0 ~v1 = du_To'45'GovEnv_1580
du_To'45'GovEnv_1580 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1580
  = coe MAlonzo.Code.Ledger.Gov.du_To'45'GovEnv_1924
-- Ledger.Ledger._.UTxOState
d_UTxOState_1708 a0 a1 = ()
-- Ledger.Ledger._.UTxOState.deposits
d_deposits_1832 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1832 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2044 (coe v0)
-- Ledger.Ledger._.UTxOState.donations
d_donations_1834 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 -> Integer
d_donations_1834 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2046 (coe v0)
-- Ledger.Ledger._.UTxOState.fees
d_fees_1836 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 -> Integer
d_fees_1836 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2042 (coe v0)
-- Ledger.Ledger._.UTxOState.utxo
d_utxo_1838 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1838 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2040 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1876 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_872 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_932 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_836] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_932 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1938 = erased
-- Ledger.Ledger._.CertState
d_CertState_1958 a0 a1 = ()
-- Ledger.Ledger._.To-CertEnv
d_To'45'CertEnv_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_2008 ~v0 ~v1 = du_To'45'CertEnv_2008
du_To'45'CertEnv_2008 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_2008
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_974
-- Ledger.Ledger._.CertState.dState
d_dState_2094 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_932 ->
  MAlonzo.Code.Ledger.Certs.T_DState_894
d_dState_2094 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_940 (coe v0)
-- Ledger.Ledger._.CertState.gState
d_gState_2096 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_932 ->
  MAlonzo.Code.Ledger.Certs.T_GState_920
d_gState_2096 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_944 (coe v0)
-- Ledger.Ledger._.CertState.pState
d_pState_2098 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_932 ->
  MAlonzo.Code.Ledger.Certs.T_PState_910
d_pState_2098 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_942 (coe v0)
-- Ledger.Ledger.LEnv
d_LEnv_2160 a0 a1 = ()
data T_LEnv_2160
  = C_LEnv'46'constructor_4933 AgdaAny (Maybe AgdaAny)
                               MAlonzo.Code.Ledger.PParams.T_PParams_244
                               MAlonzo.Code.Ledger.Enact.T_EnactState_830 Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2172 :: T_LEnv_2160 -> AgdaAny
d_slot_2172 v0
  = case coe v0 of
      C_LEnv'46'constructor_4933 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2174 :: T_LEnv_2160 -> Maybe AgdaAny
d_ppolicy_2174 v0
  = case coe v0 of
      C_LEnv'46'constructor_4933 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2176 ::
  T_LEnv_2160 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2176 v0
  = case coe v0 of
      C_LEnv'46'constructor_4933 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2178 ::
  T_LEnv_2160 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2178 v0
  = case coe v0 of
      C_LEnv'46'constructor_4933 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2180 :: T_LEnv_2160 -> Integer
d_treasury_2180 v0
  = case coe v0 of
      C_LEnv'46'constructor_4933 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_2182 a0 a1 = ()
data T_LState_2182
  = C_'10214'_'44'_'44'_'10215''737'_2196 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_932
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2190 ::
  T_LState_2182 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
d_utxoSt_2190 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2196 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2192 ::
  T_LState_2182 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2192 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2196 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2194 ::
  T_LState_2182 -> MAlonzo.Code.Ledger.Certs.T_CertState_932
d_certState_2194 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2196 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2198 ~v0 ~v1 v2 = du_txgov_2198 v2
du_txgov_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2198 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2584 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2582 (coe v0)))
-- Ledger.Ledger.ifDRepIsRegistered
d_ifDRepIsRegistered_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_ifDRepIsRegistered_2248 = erased
-- Ledger.Ledger.removeOrphanDRepVotes
d_removeOrphanDRepVotes_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_932 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774
d_removeOrphanDRepVotes_2268 v0 ~v1 v2 v3
  = du_removeOrphanDRepVotes_2268 v0 v2 v3
du_removeOrphanDRepVotes_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_932 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774
du_removeOrphanDRepVotes_2268 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4529
      (coe du_votes'8242'_2278 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_788 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_790 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_792 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_794 (coe v2))
-- Ledger.Ledger._.votes′
d_votes'8242'_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_932 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes'8242'_2278 v0 ~v1 v2 v3 = du_votes'8242'_2278 v0 v2 v3
du_votes'8242'_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_932 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_votes'8242'_2278 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
              (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
              (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_668))
           (coe
              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
              (coe
                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                 (coe
                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                 (coe
                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
              (coe
                 MAlonzo.Code.Class.IsSet.du_dom_548
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                 (coe
                    MAlonzo.Code.Ledger.Certs.d_dreps_926
                    (coe MAlonzo.Code.Ledger.Certs.d_gState_944 (coe v1))))))
      (MAlonzo.Code.Ledger.GovernanceActions.d_votes_786 (coe v2))
-- Ledger.Ledger._|ᵒ_
d__'124''7506'__2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_932 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'124''7506'__2280 v0 ~v1 v2 v3 = du__'124''7506'__2280 v0 v2 v3
du__'124''7506'__2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_932 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'124''7506'__2280 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_removeOrphanDRepVotes_2268 (coe v0) (coe v2)))
      (coe v1)
-- Ledger.Ledger.allColdCreds
d_allColdCreds_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_2286 ~v0 ~v1 v2 v3 = du_allColdCreds_2286 v2 v3
du_allColdCreds_2286 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_2286 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Enact.du_ccCreds_854
         (coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_806
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_792
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Ledger.To-LEnv
d_To'45'LEnv_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_2296 ~v0 ~v1 = du_To'45'LEnv_2296
du_To'45'LEnv_2296 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_2296
  = coe
      MAlonzo.Code.Class.To.C_To'46'constructor_9
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.To.d_getCodPi_22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2160 :: Integer) (9543913931307211001 :: Integer)
                                 "Ledger.Ledger.LEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (328 :: Integer) (9543913931307211001 :: Integer) "_.Slot"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.To.d_getCodPi_22
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2160 :: Integer) (9543913931307211001 :: Integer)
                                    "Ledger.Ledger.LEnv"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (10 :: Integer) (15412666033012224255 :: Integer)
                                    "Agda.Builtin.Maybe.Maybe"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (20 :: Integer) (10880583612240331187 :: Integer)
                                             "Agda.Primitive.lzero"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (282 :: Integer) (9543913931307211001 :: Integer)
                                                "_.ScriptHash"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.To.d_getCodPi_22
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2160 :: Integer) (9543913931307211001 :: Integer)
                                       "Ledger.Ledger.LEnv"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (226 :: Integer) (9543913931307211001 :: Integer) "_.PParams"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Class.To.d_getCodPi_22
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (2160 :: Integer) (9543913931307211001 :: Integer)
                                          "Ledger.Ledger.LEnv"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (1506 :: Integer) (9543913931307211001 :: Integer)
                                          "Ledger.Ledger._.EnactState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Class.To.d_getCodPi_22
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (2160 :: Integer) (9543913931307211001 :: Integer)
                                             "Ledger.Ledger.LEnv"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                    (coe ("r" :: Data.Text.Text))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (6 :: Integer) (14798748958053396954 :: Integer)
                                             "Ledger.Prelude.Base.Coin"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
         (coe C_LEnv'46'constructor_4933))
-- Ledger.Ledger.To-LState
d_To'45'LState_2298 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_2298 ~v0 ~v1 = du_To'45'LState_2298
du_To'45'LState_2298 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_2298
  = coe
      MAlonzo.Code.Class.To.C_To'46'constructor_9
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.To.d_getCodPi_22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2182 :: Integer) (9543913931307211001 :: Integer)
                                 "Ledger.Ledger.LState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1708 :: Integer) (9543913931307211001 :: Integer)
                                 "Ledger.Ledger._.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.To.d_getCodPi_22
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2182 :: Integer) (9543913931307211001 :: Integer)
                                    "Ledger.Ledger.LState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (1576 :: Integer) (9543913931307211001 :: Integer)
                                    "Ledger.Ledger._.GovState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.To.d_getCodPi_22
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2182 :: Integer) (9543913931307211001 :: Integer)
                                       "Ledger.Ledger.LState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (1958 :: Integer) (9543913931307211001 :: Integer)
                                       "Ledger.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2196))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2316 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2316
  = C_LEDGER'45'V_2412 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2492 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.Certs.T_CertState_932
d_certState_2320 ~v0 ~v1 v2 = du_certState_2320 v2
du_certState_2320 ::
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.Certs.T_CertState_932
du_certState_2320 v0
  = coe
      d_certState_2194 (coe d_'46'generalizedField'45's_13861 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2322 ~v0 ~v1 v2 = du_govSt_2322 v2
du_govSt_2322 ::
  T_GeneralizeTel_13873 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2322 v0
  = coe d_govSt_2192 (coe d_'46'generalizedField'45's_13861 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
d_utxoSt_2324 ~v0 ~v1 v2 = du_utxoSt_2324 v2
du_utxoSt_2324 ::
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
du_utxoSt_2324 v0
  = coe
      d_utxoSt_2190 (coe d_'46'generalizedField'45's_13861 (coe v0))
-- Ledger.Ledger._.txcerts
d_txcerts_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> [MAlonzo.Code.Ledger.Certs.T_DCert_836]
d_txcerts_2346 ~v0 ~v1 v2 = du_txcerts_2346 v2
du_txcerts_2346 ::
  T_GeneralizeTel_13873 -> [MAlonzo.Code.Ledger.Certs.T_DCert_836]
du_txcerts_2346 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2578
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_13863 (coe v0)))
-- Ledger.Ledger._.txid
d_txid_2352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> AgdaAny
d_txid_2352 ~v0 ~v1 v2 = du_txid_2352 v2
du_txid_2352 :: T_GeneralizeTel_13873 -> AgdaAny
du_txid_2352 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2598
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_13863 (coe v0)))
-- Ledger.Ledger._.txvote
d_txvote_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
d_txvote_2366 ~v0 ~v1 v2 = du_txvote_2366 v2
du_txvote_2366 ::
  T_GeneralizeTel_13873 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
du_txvote_2366 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2582
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_13863 (coe v0)))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2368 ~v0 ~v1 v2 = du_txwdrls_2368 v2
du_txwdrls_2368 ::
  T_GeneralizeTel_13873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2368 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2580
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_13863 (coe v0)))
-- Ledger.Ledger._.enactState
d_enactState_2372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2372 ~v0 ~v1 v2 = du_enactState_2372 v2
du_enactState_2372 ::
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2372 v0
  = coe
      d_enactState_2178 (coe d_'46'generalizedField'45'Γ_13865 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2374 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2374 ~v0 ~v1 v2 = du_pparams_2374 v2
du_pparams_2374 ::
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2374 v0
  = coe
      d_pparams_2176 (coe d_'46'generalizedField'45'Γ_13865 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> Maybe AgdaAny
d_ppolicy_2376 ~v0 ~v1 v2 = du_ppolicy_2376 v2
du_ppolicy_2376 :: T_GeneralizeTel_13873 -> Maybe AgdaAny
du_ppolicy_2376 v0
  = coe
      d_ppolicy_2174 (coe d_'46'generalizedField'45'Γ_13865 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> AgdaAny
d_slot_2378 ~v0 ~v1 v2 = du_slot_2378 v2
du_slot_2378 :: T_GeneralizeTel_13873 -> AgdaAny
du_slot_2378 v0
  = coe d_slot_2172 (coe d_'46'generalizedField'45'Γ_13865 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> Integer
d_treasury_2380 ~v0 ~v1 v2 = du_treasury_2380 v2
du_treasury_2380 :: T_GeneralizeTel_13873 -> Integer
du_treasury_2380 v0
  = coe
      d_treasury_2180 (coe d_'46'generalizedField'45'Γ_13865 (coe v0))
-- Ledger.Ledger._.dState
d_dState_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.Certs.T_DState_894
d_dState_2384 ~v0 ~v1 v2 = du_dState_2384 v2
du_dState_2384 ::
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.Certs.T_DState_894
du_dState_2384 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dState_940
      (coe
         d_certState_2194 (coe d_'46'generalizedField'45's_13861 (coe v0)))
-- Ledger.Ledger._.rewards
d_rewards_2392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2392 ~v0 ~v1 v2 = du_rewards_2392 v2
du_rewards_2392 ::
  T_GeneralizeTel_13873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2392 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_rewards_906
      (coe
         MAlonzo.Code.Ledger.Certs.d_dState_940
         (coe
            d_certState_2194 (coe d_'46'generalizedField'45's_13861 (coe v0))))
-- Ledger.Ledger._.enactState
d_enactState_2402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2402 ~v0 ~v1 v2 = du_enactState_2402 v2
du_enactState_2402 ::
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2402 v0
  = coe
      d_enactState_2178 (coe d_'46'generalizedField'45'Γ_13865 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2404 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2404 ~v0 ~v1 v2 = du_pparams_2404 v2
du_pparams_2404 ::
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2404 v0
  = coe
      d_pparams_2176 (coe d_'46'generalizedField'45'Γ_13865 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2406 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> Maybe AgdaAny
d_ppolicy_2406 ~v0 ~v1 v2 = du_ppolicy_2406 v2
du_ppolicy_2406 :: T_GeneralizeTel_13873 -> Maybe AgdaAny
du_ppolicy_2406 v0
  = coe
      d_ppolicy_2174 (coe d_'46'generalizedField'45'Γ_13865 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> AgdaAny
d_slot_2408 ~v0 ~v1 v2 = du_slot_2408 v2
du_slot_2408 :: T_GeneralizeTel_13873 -> AgdaAny
du_slot_2408 v0
  = coe d_slot_2172 (coe d_'46'generalizedField'45'Γ_13865 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_13873 -> Integer
d_treasury_2410 ~v0 ~v1 v2 = du_treasury_2410 v2
du_treasury_2410 :: T_GeneralizeTel_13873 -> Integer
du_treasury_2410 v0
  = coe
      d_treasury_2180 (coe d_'46'generalizedField'45'Γ_13865 (coe v0))
-- Ledger.Ledger._.certState
d_certState_2416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_18967 -> MAlonzo.Code.Ledger.Certs.T_CertState_932
d_certState_2416 ~v0 ~v1 v2 = du_certState_2416 v2
du_certState_2416 ::
  T_GeneralizeTel_18967 -> MAlonzo.Code.Ledger.Certs.T_CertState_932
du_certState_2416 v0
  = coe
      d_certState_2194 (coe d_'46'generalizedField'45's_18959 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2418 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_18967 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2418 ~v0 ~v1 v2 = du_govSt_2418 v2
du_govSt_2418 ::
  T_GeneralizeTel_18967 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2418 v0
  = coe d_govSt_2192 (coe d_'46'generalizedField'45's_18959 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2420 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_18967 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
d_utxoSt_2420 ~v0 ~v1 v2 = du_utxoSt_2420 v2
du_utxoSt_2420 ::
  T_GeneralizeTel_18967 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
du_utxoSt_2420 v0
  = coe
      d_utxoSt_2190 (coe d_'46'generalizedField'45's_18959 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2468 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_18967 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2468 ~v0 ~v1 v2 = du_enactState_2468 v2
du_enactState_2468 ::
  T_GeneralizeTel_18967 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2468 v0
  = coe
      d_enactState_2178 (coe d_'46'generalizedField'45'Γ_18963 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_18967 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2470 ~v0 ~v1 v2 = du_pparams_2470 v2
du_pparams_2470 ::
  T_GeneralizeTel_18967 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2470 v0
  = coe
      d_pparams_2176 (coe d_'46'generalizedField'45'Γ_18963 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_18967 -> Maybe AgdaAny
d_ppolicy_2472 ~v0 ~v1 v2 = du_ppolicy_2472 v2
du_ppolicy_2472 :: T_GeneralizeTel_18967 -> Maybe AgdaAny
du_ppolicy_2472 v0
  = coe
      d_ppolicy_2174 (coe d_'46'generalizedField'45'Γ_18963 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_18967 -> AgdaAny
d_slot_2474 ~v0 ~v1 v2 = du_slot_2474 v2
du_slot_2474 :: T_GeneralizeTel_18967 -> AgdaAny
du_slot_2474 v0
  = coe d_slot_2172 (coe d_'46'generalizedField'45'Γ_18963 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_18967 -> Integer
d_treasury_2476 ~v0 ~v1 v2 = du_treasury_2476 v2
du_treasury_2476 :: T_GeneralizeTel_18967 -> Integer
du_treasury_2476 v0
  = coe
      d_treasury_2180 (coe d_'46'generalizedField'45'Γ_18963 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_18967 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2482 ~v0 ~v1 v2 = du_enactState_2482 v2
du_enactState_2482 ::
  T_GeneralizeTel_18967 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2482 v0
  = coe
      d_enactState_2178 (coe d_'46'generalizedField'45'Γ_18963 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2484 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_18967 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2484 ~v0 ~v1 v2 = du_pparams_2484 v2
du_pparams_2484 ::
  T_GeneralizeTel_18967 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2484 v0
  = coe
      d_pparams_2176 (coe d_'46'generalizedField'45'Γ_18963 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2486 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_18967 -> Maybe AgdaAny
d_ppolicy_2486 ~v0 ~v1 v2 = du_ppolicy_2486 v2
du_ppolicy_2486 :: T_GeneralizeTel_18967 -> Maybe AgdaAny
du_ppolicy_2486 v0
  = coe
      d_ppolicy_2174 (coe d_'46'generalizedField'45'Γ_18963 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2488 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_18967 -> AgdaAny
d_slot_2488 ~v0 ~v1 v2 = du_slot_2488 v2
du_slot_2488 :: T_GeneralizeTel_18967 -> AgdaAny
du_slot_2488 v0
  = coe d_slot_2172 (coe d_'46'generalizedField'45'Γ_18963 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2490 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_18967 -> Integer
d_treasury_2490 ~v0 ~v1 v2 = du_treasury_2490 v2
du_treasury_2490 :: T_GeneralizeTel_18967 -> Integer
du_treasury_2490 v0
  = coe
      d_treasury_2180 (coe d_'46'generalizedField'45'Γ_18963 (coe v0))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2510 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_LEnv_2160 ->
  T_LState_2182 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2626] -> T_LState_2182 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2510 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_13861 ::
  T_GeneralizeTel_13873 -> T_LState_2182
d_'46'generalizedField'45's_13861 v0
  = case coe v0 of
      C_mkGeneralizeTel_13875 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13863 ::
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2626
d_'46'generalizedField'45'tx_13863 v0
  = case coe v0 of
      C_mkGeneralizeTel_13875 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13865 ::
  T_GeneralizeTel_13873 -> T_LEnv_2160
d_'46'generalizedField'45'Γ_13865 v0
  = case coe v0 of
      C_mkGeneralizeTel_13875 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13867 ::
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
d_'46'generalizedField'45'utxoSt''_13867 v0
  = case coe v0 of
      C_mkGeneralizeTel_13875 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_13869 ::
  T_GeneralizeTel_13873 -> MAlonzo.Code.Ledger.Certs.T_CertState_932
d_'46'generalizedField'45'certState''_13869 v0
  = case coe v0 of
      C_mkGeneralizeTel_13875 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_13871 ::
  T_GeneralizeTel_13873 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_13871 v0
  = case coe v0 of
      C_mkGeneralizeTel_13875 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_13873 a0 a1 = ()
data T_GeneralizeTel_13873
  = C_mkGeneralizeTel_13875 T_LState_2182
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2626 T_LEnv_2160
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
                            MAlonzo.Code.Ledger.Certs.T_CertState_932
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_18959 ::
  T_GeneralizeTel_18967 -> T_LState_2182
d_'46'generalizedField'45's_18959 v0
  = case coe v0 of
      C_mkGeneralizeTel_18969 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_18961 ::
  T_GeneralizeTel_18967 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2626
d_'46'generalizedField'45'tx_18961 v0
  = case coe v0 of
      C_mkGeneralizeTel_18969 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_18963 ::
  T_GeneralizeTel_18967 -> T_LEnv_2160
d_'46'generalizedField'45'Γ_18963 v0
  = case coe v0 of
      C_mkGeneralizeTel_18969 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_18965 ::
  T_GeneralizeTel_18967 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
d_'46'generalizedField'45'utxoSt''_18965 v0
  = case coe v0 of
      C_mkGeneralizeTel_18969 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_18967 a0 a1 = ()
data T_GeneralizeTel_18967
  = C_mkGeneralizeTel_18969 T_LState_2182
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2626 T_LEnv_2160
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
