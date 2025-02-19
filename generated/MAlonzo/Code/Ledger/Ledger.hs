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
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_790
-- _.GovActionState
d_GovActionState_152 a0 = ()
-- _.GovProposal
d_GovProposal_156 a0 = ()
-- _.GovVote
d_GovVote_160 a0 = ()
-- _.PParams
d_PParams_222 a0 = ()
-- _.ScriptHash
d_ScriptHash_278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_278 = erased
-- _.Slot
d_Slot_324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_324 = erased
-- _.Tx
d_Tx_354 a0 = ()
-- _.TxBody
d_TxBody_356 a0 = ()
-- _.Voter
d_Voter_390 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_390 = erased
-- _.epoch
d_epoch_420 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_420 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0))
-- _.GovActionState.action
d_action_662 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_694
d_action_662 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_786 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_664 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  AgdaAny
d_expiresIn_664 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_784 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_666 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  AgdaAny
d_prevAction_666 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_788 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_668 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_668 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_782 (coe v0)
-- _.GovActionState.votes
d_votes_670 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_670 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_780 (coe v0)
-- _.GovProposal.action
d_action_690 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_694
d_action_690 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_756 (coe v0)
-- _.GovProposal.anchor
d_anchor_692 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_692 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_766 (coe v0)
-- _.GovProposal.deposit
d_deposit_694 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742 -> Integer
d_deposit_694 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_762 (coe v0)
-- _.GovProposal.policy
d_policy_696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742 ->
  Maybe AgdaAny
d_policy_696 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_760 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742 -> AgdaAny
d_prevAction_698 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_758 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_700 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_700 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_764 (coe v0)
-- _.GovVote.anchor
d_anchor_712 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_724 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_712 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_740 (coe v0)
-- _.GovVote.gid
d_gid_714 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_714 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_734 (coe v0)
-- _.GovVote.vote
d_vote_716 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_724 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_716
d_vote_716 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_738 (coe v0)
-- _.GovVote.voter
d_voter_718 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_718 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_736 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_740 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_742 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_744 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_746 a0 = ()
-- _.PParams.Emax
d_Emax_892 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_892 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_894 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_894 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_896 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_896 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_898 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_898 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_900 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_900 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_902 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_902 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_904 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_904 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_906 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_906 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_912 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_918 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_926 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_930 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_932 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_940 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_944 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_944 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_952 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_954 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_956 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- _.Tx.body
d_body_1370 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520
d_body_1370 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0)
-- _.Tx.isValid
d_isValid_1372 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Bool
d_isValid_1372 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v0)
-- _.Tx.txAD
d_txAD_1374 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Maybe AgdaAny
d_txAD_1374 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2638 (coe v0)
-- _.Tx.wits
d_wits_1376 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2602
d_wits_1376 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2634 (coe v0)
-- _.TxBody.collateral
d_collateral_1380 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2596 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Maybe Integer
d_curTreasury_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2590 (coe v0)
-- _.TxBody.mint
d_mint_1384 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
d_mint_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2570 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2564 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> [AgdaAny]
d_reqSigHash_1388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2598 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1390 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Maybe AgdaAny
d_scriptIntHash_1390 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2600 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1392 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Maybe AgdaAny
d_txADhash_1392 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2586 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Maybe AgdaAny
d_txNetworkId_1394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2588 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1396 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2574 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1398 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
d_txdonation_1398 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2582 (coe v0)
-- _.TxBody.txfee
d_txfee_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
d_txfee_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2568 (coe v0)
-- _.TxBody.txid
d_txid_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
d_txid_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2594 (coe v0)
-- _.TxBody.txins
d_txins_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2562 (coe v0)
-- _.TxBody.txouts
d_txouts_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2566 (coe v0)
-- _.TxBody.txprop
d_txprop_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_742]
d_txprop_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2580 (coe v0)
-- _.TxBody.txsize
d_txsize_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
d_txsize_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2592 (coe v0)
-- _.TxBody.txup
d_txup_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2584 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2572 (coe v0)
-- _.TxBody.txvote
d_txvote_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_724]
d_txvote_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2578 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2576 (coe v0)
-- Ledger.Ledger._.EnactState
d_EnactState_1498 a0 a1 = ()
-- Ledger.Ledger._.EnactState.cc
d_cc_1534 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1534 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_838 (coe v0)
-- Ledger.Ledger._.EnactState.constitution
d_constitution_1536 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1536 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_840 (coe v0)
-- Ledger.Ledger._.EnactState.pparams
d_pparams_1538 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1538 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_844 (coe v0)
-- Ledger.Ledger._.EnactState.pv
d_pv_1540 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1540 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_842 (coe v0)
-- Ledger.Ledger._.EnactState.withdrawals
d_withdrawals_1542 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1542 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_846 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1884 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1558 = erased
-- Ledger.Ledger._.GovState
d_GovState_1568 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 -> ()
d_GovState_1568 = erased
-- Ledger.Ledger._.To-GovEnv
d_To'45'GovEnv_1572 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1572 ~v0 ~v1 = du_To'45'GovEnv_1572
du_To'45'GovEnv_1572 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1572
  = coe MAlonzo.Code.Ledger.Gov.du_To'45'GovEnv_1914
-- Ledger.Ledger._.UTxOState
d_UTxOState_1700 a0 a1 = ()
-- Ledger.Ledger._.UTxOState.deposits
d_deposits_1824 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1824 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2034 (coe v0)
-- Ledger.Ledger._.UTxOState.donations
d_donations_1826 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 -> Integer
d_donations_1826 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2036 (coe v0)
-- Ledger.Ledger._.UTxOState.fees
d_fees_1828 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 -> Integer
d_fees_1828 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2032 (coe v0)
-- Ledger.Ledger._.UTxOState.utxo
d_utxo_1830 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1830 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2030 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1868 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1930 = erased
-- Ledger.Ledger._.CertState
d_CertState_1950 a0 a1 = ()
-- Ledger.Ledger._.To-CertEnv
d_To'45'CertEnv_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_2000 ~v0 ~v1 = du_To'45'CertEnv_2000
du_To'45'CertEnv_2000 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_2000
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_968
-- Ledger.Ledger._.CertState.dState
d_dState_2084 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  MAlonzo.Code.Ledger.Certs.T_DState_890
d_dState_2084 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_934 (coe v0)
-- Ledger.Ledger._.CertState.gState
d_gState_2086 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  MAlonzo.Code.Ledger.Certs.T_GState_916
d_gState_2086 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_938 (coe v0)
-- Ledger.Ledger._.CertState.pState
d_pState_2088 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_2088 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_936 (coe v0)
-- Ledger.Ledger.LEnv
d_LEnv_2150 a0 a1 = ()
data T_LEnv_2150
  = C_LEnv'46'constructor_4931 AgdaAny (Maybe AgdaAny)
                               MAlonzo.Code.Ledger.PParams.T_PParams_244
                               MAlonzo.Code.Ledger.Enact.T_EnactState_826 Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2162 :: T_LEnv_2150 -> AgdaAny
d_slot_2162 v0
  = case coe v0 of
      C_LEnv'46'constructor_4931 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2164 :: T_LEnv_2150 -> Maybe AgdaAny
d_ppolicy_2164 v0
  = case coe v0 of
      C_LEnv'46'constructor_4931 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2166 ::
  T_LEnv_2150 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2166 v0
  = case coe v0 of
      C_LEnv'46'constructor_4931 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2168 ::
  T_LEnv_2150 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2168 v0
  = case coe v0 of
      C_LEnv'46'constructor_4931 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2170 :: T_LEnv_2150 -> Integer
d_treasury_2170 v0
  = case coe v0 of
      C_LEnv'46'constructor_4931 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_2172 a0 a1 = ()
data T_LState_2172
  = C_'10214'_'44'_'44'_'10215''737'_2186 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_926
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2180 ::
  T_LState_2172 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
d_utxoSt_2180 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2186 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2182 ::
  T_LState_2172 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2182 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2186 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2184 ::
  T_LState_2172 -> MAlonzo.Code.Ledger.Certs.T_CertState_926
d_certState_2184 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2186 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2188 ~v0 ~v1 v2 = du_txgov_2188 v2
du_txgov_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2188 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2580 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2578 (coe v0)))
-- Ledger.Ledger.ifDRepIsRegistered
d_ifDRepIsRegistered_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_ifDRepIsRegistered_2238 = erased
-- Ledger.Ledger.removeOrphanDRepVotes
d_removeOrphanDRepVotes_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768
d_removeOrphanDRepVotes_2258 v0 ~v1 v2 v3
  = du_removeOrphanDRepVotes_2258 v0 v2 v3
du_removeOrphanDRepVotes_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768
du_removeOrphanDRepVotes_2258 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4209
      (coe du_votes'8242'_2268 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_782 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_784 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_786 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_788 (coe v2))
-- Ledger.Ledger._.votes′
d_votes'8242'_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes'8242'_2268 v0 ~v1 v2 v3 = du_votes'8242'_2268 v0 v2 v3
du_votes'8242'_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_votes'8242'_2268 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
              (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_790)
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
                    MAlonzo.Code.Ledger.Certs.d_dreps_922
                    (coe MAlonzo.Code.Ledger.Certs.d_gState_938 (coe v1))))))
      (MAlonzo.Code.Ledger.GovernanceActions.d_votes_780 (coe v2))
-- Ledger.Ledger._|ᵒ_
d__'124''7506'__2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'124''7506'__2270 v0 ~v1 v2 v3 = du__'124''7506'__2270 v0 v2 v3
du__'124''7506'__2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'124''7506'__2270 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_removeOrphanDRepVotes_2258 (coe v0) (coe v2)))
      (coe v1)
-- Ledger.Ledger.allColdCreds
d_allColdCreds_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_2276 ~v0 ~v1 v2 v3 = du_allColdCreds_2276 v2 v3
du_allColdCreds_2276 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_2276 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Enact.du_ccCreds_850
         (coe MAlonzo.Code.Ledger.Enact.d_cc_838 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_800
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_786
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Ledger.To-LEnv
d_To'45'LEnv_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_2286 ~v0 ~v1 = du_To'45'LEnv_2286
du_To'45'LEnv_2286 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_2286
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
                                 (2150 :: Integer) (9543913931307211001 :: Integer)
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
                                 (324 :: Integer) (9543913931307211001 :: Integer) "_.Slot"
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
                                    (2150 :: Integer) (9543913931307211001 :: Integer)
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
                                                (278 :: Integer) (9543913931307211001 :: Integer)
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
                                       (2150 :: Integer) (9543913931307211001 :: Integer)
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
                                       (222 :: Integer) (9543913931307211001 :: Integer) "_.PParams"
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
                                          (2150 :: Integer) (9543913931307211001 :: Integer)
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
                                          (1498 :: Integer) (9543913931307211001 :: Integer)
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
                                             (2150 :: Integer) (9543913931307211001 :: Integer)
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
         (coe C_LEnv'46'constructor_4931))
-- Ledger.Ledger.To-LState
d_To'45'LState_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_2288 ~v0 ~v1 = du_To'45'LState_2288
du_To'45'LState_2288 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_2288
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
                                 (2172 :: Integer) (9543913931307211001 :: Integer)
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
                                 (1700 :: Integer) (9543913931307211001 :: Integer)
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
                                    (2172 :: Integer) (9543913931307211001 :: Integer)
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
                                    (1568 :: Integer) (9543913931307211001 :: Integer)
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
                                       (2172 :: Integer) (9543913931307211001 :: Integer)
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
                                       (1950 :: Integer) (9543913931307211001 :: Integer)
                                       "Ledger.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2186))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2306 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2306
  = C_LEDGER'45'V_2402 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2482 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.Certs.T_CertState_926
d_certState_2310 ~v0 ~v1 v2 = du_certState_2310 v2
du_certState_2310 ::
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.Certs.T_CertState_926
du_certState_2310 v0
  = coe
      d_certState_2184 (coe d_'46'generalizedField'45's_13859 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2312 ~v0 ~v1 v2 = du_govSt_2312 v2
du_govSt_2312 ::
  T_GeneralizeTel_13871 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2312 v0
  = coe d_govSt_2182 (coe d_'46'generalizedField'45's_13859 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2314 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
d_utxoSt_2314 ~v0 ~v1 v2 = du_utxoSt_2314 v2
du_utxoSt_2314 ::
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
du_utxoSt_2314 v0
  = coe
      d_utxoSt_2180 (coe d_'46'generalizedField'45's_13859 (coe v0))
-- Ledger.Ledger._.txcerts
d_txcerts_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_2336 ~v0 ~v1 v2 = du_txcerts_2336 v2
du_txcerts_2336 ::
  T_GeneralizeTel_13871 -> [MAlonzo.Code.Ledger.Certs.T_DCert_832]
du_txcerts_2336 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2574
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_13861 (coe v0)))
-- Ledger.Ledger._.txid
d_txid_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> AgdaAny
d_txid_2342 ~v0 ~v1 v2 = du_txid_2342 v2
du_txid_2342 :: T_GeneralizeTel_13871 -> AgdaAny
du_txid_2342 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2594
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_13861 (coe v0)))
-- Ledger.Ledger._.txvote
d_txvote_2356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_724]
d_txvote_2356 ~v0 ~v1 v2 = du_txvote_2356 v2
du_txvote_2356 ::
  T_GeneralizeTel_13871 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_724]
du_txvote_2356 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2578
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_13861 (coe v0)))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2358 ~v0 ~v1 v2 = du_txwdrls_2358 v2
du_txwdrls_2358 ::
  T_GeneralizeTel_13871 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2358 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2576
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_13861 (coe v0)))
-- Ledger.Ledger._.enactState
d_enactState_2362 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2362 ~v0 ~v1 v2 = du_enactState_2362 v2
du_enactState_2362 ::
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_enactState_2362 v0
  = coe
      d_enactState_2168 (coe d_'46'generalizedField'45'Γ_13863 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2364 ~v0 ~v1 v2 = du_pparams_2364 v2
du_pparams_2364 ::
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2364 v0
  = coe
      d_pparams_2166 (coe d_'46'generalizedField'45'Γ_13863 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> Maybe AgdaAny
d_ppolicy_2366 ~v0 ~v1 v2 = du_ppolicy_2366 v2
du_ppolicy_2366 :: T_GeneralizeTel_13871 -> Maybe AgdaAny
du_ppolicy_2366 v0
  = coe
      d_ppolicy_2164 (coe d_'46'generalizedField'45'Γ_13863 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> AgdaAny
d_slot_2368 ~v0 ~v1 v2 = du_slot_2368 v2
du_slot_2368 :: T_GeneralizeTel_13871 -> AgdaAny
du_slot_2368 v0
  = coe d_slot_2162 (coe d_'46'generalizedField'45'Γ_13863 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> Integer
d_treasury_2370 ~v0 ~v1 v2 = du_treasury_2370 v2
du_treasury_2370 :: T_GeneralizeTel_13871 -> Integer
du_treasury_2370 v0
  = coe
      d_treasury_2170 (coe d_'46'generalizedField'45'Γ_13863 (coe v0))
-- Ledger.Ledger._.dState
d_dState_2374 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.Certs.T_DState_890
d_dState_2374 ~v0 ~v1 v2 = du_dState_2374 v2
du_dState_2374 ::
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.Certs.T_DState_890
du_dState_2374 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dState_934
      (coe
         d_certState_2184 (coe d_'46'generalizedField'45's_13859 (coe v0)))
-- Ledger.Ledger._.rewards
d_rewards_2382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2382 ~v0 ~v1 v2 = du_rewards_2382 v2
du_rewards_2382 ::
  T_GeneralizeTel_13871 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2382 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_rewards_902
      (coe
         MAlonzo.Code.Ledger.Certs.d_dState_934
         (coe
            d_certState_2184 (coe d_'46'generalizedField'45's_13859 (coe v0))))
-- Ledger.Ledger._.enactState
d_enactState_2392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2392 ~v0 ~v1 v2 = du_enactState_2392 v2
du_enactState_2392 ::
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_enactState_2392 v0
  = coe
      d_enactState_2168 (coe d_'46'generalizedField'45'Γ_13863 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2394 ~v0 ~v1 v2 = du_pparams_2394 v2
du_pparams_2394 ::
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2394 v0
  = coe
      d_pparams_2166 (coe d_'46'generalizedField'45'Γ_13863 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> Maybe AgdaAny
d_ppolicy_2396 ~v0 ~v1 v2 = du_ppolicy_2396 v2
du_ppolicy_2396 :: T_GeneralizeTel_13871 -> Maybe AgdaAny
du_ppolicy_2396 v0
  = coe
      d_ppolicy_2164 (coe d_'46'generalizedField'45'Γ_13863 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> AgdaAny
d_slot_2398 ~v0 ~v1 v2 = du_slot_2398 v2
du_slot_2398 :: T_GeneralizeTel_13871 -> AgdaAny
du_slot_2398 v0
  = coe d_slot_2162 (coe d_'46'generalizedField'45'Γ_13863 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2400 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_13871 -> Integer
d_treasury_2400 ~v0 ~v1 v2 = du_treasury_2400 v2
du_treasury_2400 :: T_GeneralizeTel_13871 -> Integer
du_treasury_2400 v0
  = coe
      d_treasury_2170 (coe d_'46'generalizedField'45'Γ_13863 (coe v0))
-- Ledger.Ledger._.certState
d_certState_2406 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18965 -> MAlonzo.Code.Ledger.Certs.T_CertState_926
d_certState_2406 ~v0 ~v1 v2 = du_certState_2406 v2
du_certState_2406 ::
  T_GeneralizeTel_18965 -> MAlonzo.Code.Ledger.Certs.T_CertState_926
du_certState_2406 v0
  = coe
      d_certState_2184 (coe d_'46'generalizedField'45's_18957 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18965 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2408 ~v0 ~v1 v2 = du_govSt_2408 v2
du_govSt_2408 ::
  T_GeneralizeTel_18965 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2408 v0
  = coe d_govSt_2182 (coe d_'46'generalizedField'45's_18957 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18965 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
d_utxoSt_2410 ~v0 ~v1 v2 = du_utxoSt_2410 v2
du_utxoSt_2410 ::
  T_GeneralizeTel_18965 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
du_utxoSt_2410 v0
  = coe
      d_utxoSt_2180 (coe d_'46'generalizedField'45's_18957 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18965 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2458 ~v0 ~v1 v2 = du_enactState_2458 v2
du_enactState_2458 ::
  T_GeneralizeTel_18965 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_enactState_2458 v0
  = coe
      d_enactState_2168 (coe d_'46'generalizedField'45'Γ_18961 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2460 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18965 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2460 ~v0 ~v1 v2 = du_pparams_2460 v2
du_pparams_2460 ::
  T_GeneralizeTel_18965 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2460 v0
  = coe
      d_pparams_2166 (coe d_'46'generalizedField'45'Γ_18961 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2462 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18965 -> Maybe AgdaAny
d_ppolicy_2462 ~v0 ~v1 v2 = du_ppolicy_2462 v2
du_ppolicy_2462 :: T_GeneralizeTel_18965 -> Maybe AgdaAny
du_ppolicy_2462 v0
  = coe
      d_ppolicy_2164 (coe d_'46'generalizedField'45'Γ_18961 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18965 -> AgdaAny
d_slot_2464 ~v0 ~v1 v2 = du_slot_2464 v2
du_slot_2464 :: T_GeneralizeTel_18965 -> AgdaAny
du_slot_2464 v0
  = coe d_slot_2162 (coe d_'46'generalizedField'45'Γ_18961 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2466 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18965 -> Integer
d_treasury_2466 ~v0 ~v1 v2 = du_treasury_2466 v2
du_treasury_2466 :: T_GeneralizeTel_18965 -> Integer
du_treasury_2466 v0
  = coe
      d_treasury_2170 (coe d_'46'generalizedField'45'Γ_18961 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18965 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2472 ~v0 ~v1 v2 = du_enactState_2472 v2
du_enactState_2472 ::
  T_GeneralizeTel_18965 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_enactState_2472 v0
  = coe
      d_enactState_2168 (coe d_'46'generalizedField'45'Γ_18961 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18965 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2474 ~v0 ~v1 v2 = du_pparams_2474 v2
du_pparams_2474 ::
  T_GeneralizeTel_18965 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2474 v0
  = coe
      d_pparams_2166 (coe d_'46'generalizedField'45'Γ_18961 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18965 -> Maybe AgdaAny
d_ppolicy_2476 ~v0 ~v1 v2 = du_ppolicy_2476 v2
du_ppolicy_2476 :: T_GeneralizeTel_18965 -> Maybe AgdaAny
du_ppolicy_2476 v0
  = coe
      d_ppolicy_2164 (coe d_'46'generalizedField'45'Γ_18961 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18965 -> AgdaAny
d_slot_2478 ~v0 ~v1 v2 = du_slot_2478 v2
du_slot_2478 :: T_GeneralizeTel_18965 -> AgdaAny
du_slot_2478 v0
  = coe d_slot_2162 (coe d_'46'generalizedField'45'Γ_18961 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_18965 -> Integer
d_treasury_2480 ~v0 ~v1 v2 = du_treasury_2480 v2
du_treasury_2480 :: T_GeneralizeTel_18965 -> Integer
du_treasury_2480 v0
  = coe
      d_treasury_2170 (coe d_'46'generalizedField'45'Γ_18961 (coe v0))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_LEnv_2150 ->
  T_LState_2172 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2622] -> T_LState_2172 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2500 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_13859 ::
  T_GeneralizeTel_13871 -> T_LState_2172
d_'46'generalizedField'45's_13859 v0
  = case coe v0 of
      C_mkGeneralizeTel_13873 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13861 ::
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2622
d_'46'generalizedField'45'tx_13861 v0
  = case coe v0 of
      C_mkGeneralizeTel_13873 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13863 ::
  T_GeneralizeTel_13871 -> T_LEnv_2150
d_'46'generalizedField'45'Γ_13863 v0
  = case coe v0 of
      C_mkGeneralizeTel_13873 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13865 ::
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
d_'46'generalizedField'45'utxoSt''_13865 v0
  = case coe v0 of
      C_mkGeneralizeTel_13873 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_13867 ::
  T_GeneralizeTel_13871 -> MAlonzo.Code.Ledger.Certs.T_CertState_926
d_'46'generalizedField'45'certState''_13867 v0
  = case coe v0 of
      C_mkGeneralizeTel_13873 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_13869 ::
  T_GeneralizeTel_13871 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_13869 v0
  = case coe v0 of
      C_mkGeneralizeTel_13873 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_13871 a0 a1 = ()
data T_GeneralizeTel_13871
  = C_mkGeneralizeTel_13873 T_LState_2172
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2622 T_LEnv_2150
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
                            MAlonzo.Code.Ledger.Certs.T_CertState_926
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_18957 ::
  T_GeneralizeTel_18965 -> T_LState_2172
d_'46'generalizedField'45's_18957 v0
  = case coe v0 of
      C_mkGeneralizeTel_18967 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_18959 ::
  T_GeneralizeTel_18965 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2622
d_'46'generalizedField'45'tx_18959 v0
  = case coe v0 of
      C_mkGeneralizeTel_18967 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_18961 ::
  T_GeneralizeTel_18965 -> T_LEnv_2150
d_'46'generalizedField'45'Γ_18961 v0
  = case coe v0 of
      C_mkGeneralizeTel_18967 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_18963 ::
  T_GeneralizeTel_18965 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
d_'46'generalizedField'45'utxoSt''_18963 v0
  = case coe v0 of
      C_mkGeneralizeTel_18967 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_18965 a0 a1 = ()
data T_GeneralizeTel_18965
  = C_mkGeneralizeTel_18967 T_LState_2172
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2622 T_LEnv_2150
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2020
