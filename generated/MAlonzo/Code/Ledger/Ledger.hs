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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_86 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_86 ~v0 = du_DecEq'45'GovRole_86
du_DecEq'45'GovRole_86 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_86
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_788
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
d_Tx_352 a0 = ()
-- _.TxBody
d_TxBody_354 a0 = ()
-- _.Voter
d_Voter_388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_388 = erased
-- _.epoch
d_epoch_418 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_418 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v0))
-- _.GovActionState.action
d_action_660 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_766 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_660 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_784 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_662 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_766 ->
  AgdaAny
d_expiresIn_662 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_782 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_664 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_766 ->
  AgdaAny
d_prevAction_664 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_786 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_666 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_766 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_666 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_780 (coe v0)
-- _.GovActionState.votes
d_votes_668 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_766 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_668 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_778 (coe v0)
-- _.GovProposal.action
d_action_688 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_688 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_754 (coe v0)
-- _.GovProposal.anchor
d_anchor_690 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_690 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_764 (coe v0)
-- _.GovProposal.deposit
d_deposit_692 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 -> Integer
d_deposit_692 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_760 (coe v0)
-- _.GovProposal.policy
d_policy_694 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  Maybe AgdaAny
d_policy_694 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_758 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 -> AgdaAny
d_prevAction_696 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_756 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_698 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_762 (coe v0)
-- _.GovVote.anchor
d_anchor_710 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_710 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_738 (coe v0)
-- _.GovVote.gid
d_gid_712 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_712 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_732 (coe v0)
-- _.GovVote.vote
d_vote_714 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_714
d_vote_714 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_736 (coe v0)
-- _.GovVote.voter
d_voter_716 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_716 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_734 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_738 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_740 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_742 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_744 a0 = ()
-- _.PParams.Emax
d_Emax_890 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_890 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_350 (coe v0)
-- _.PParams.a
d_a_892 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_892 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_326 (coe v0)
-- _.PParams.a0
d_a0_894 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_894 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_354 (coe v0)
-- _.PParams.b
d_b_896 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_896 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_328 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_898 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_898 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_366 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_900 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_900 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_364 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_902 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_902 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_904 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_904 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356 (coe v0)
-- _.PParams.costmdls
d_costmdls_906 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_906 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_358 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_374 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_372 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_912 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_918 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_318 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_310 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_924 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_322 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_926 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_314 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_928 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_342 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_930 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_316 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_312 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_320 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_938 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_338
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_348 (coe v0)
-- _.PParams.nopt
d_nopt_942 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_942 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_352 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0)
-- _.PParams.prices
d_prices_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_336 (coe v0)
-- _.PParams.pv
d_pv_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_950 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_324 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_952 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_346 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_refScriptCostStride_954 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_344 (coe v0)
-- _.Tx.body
d_body_1368 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516
d_body_1368 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0)
-- _.Tx.isValid
d_isValid_1370 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Bool
d_isValid_1370 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v0)
-- _.Tx.txAD
d_txAD_1372 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Maybe AgdaAny
d_txAD_1372 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2634 (coe v0)
-- _.Tx.wits
d_wits_1374 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2598
d_wits_1374 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v0)
-- _.TxBody.collateral
d_collateral_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2592 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1380 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe Integer
d_curTreasury_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2586 (coe v0)
-- _.TxBody.mint
d_mint_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> AgdaAny
d_mint_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2566 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1384 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2560 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> [AgdaAny]
d_reqSigHash_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2594 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe AgdaAny
d_scriptIntHash_1388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2596 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1390 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe AgdaAny
d_txADhash_1390 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2582 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1392 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe AgdaAny
d_txNetworkId_1392 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2584 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830]
d_txcerts_1394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2570 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1396 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_txdonation_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2578 (coe v0)
-- _.TxBody.txfee
d_txfee_1398 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_txfee_1398 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2564 (coe v0)
-- _.TxBody.txid
d_txid_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> AgdaAny
d_txid_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2590 (coe v0)
-- _.TxBody.txins
d_txins_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2558 (coe v0)
-- _.TxBody.txouts
d_txouts_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2562 (coe v0)
-- _.TxBody.txprop
d_txprop_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740]
d_txprop_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2576 (coe v0)
-- _.TxBody.txsize
d_txsize_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_txsize_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2588 (coe v0)
-- _.TxBody.txup
d_txup_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2580 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2568 (coe v0)
-- _.TxBody.txvote
d_txvote_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722]
d_txvote_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2574 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2572 (coe v0)
-- Ledger.Ledger._.EnactState
d_EnactState_1496 a0 a1 = ()
-- Ledger.Ledger._.EnactState.cc
d_cc_1532 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1532 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_838 (coe v0)
-- Ledger.Ledger._.EnactState.constitution
d_constitution_1534 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1534 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_840 (coe v0)
-- Ledger.Ledger._.EnactState.pparams
d_pparams_1536 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1536 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_844 (coe v0)
-- Ledger.Ledger._.EnactState.pv
d_pv_1538 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1538 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_842 (coe v0)
-- Ledger.Ledger._.EnactState.withdrawals
d_withdrawals_1540 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1540 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_846 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1878 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1556 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1564 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 -> ()
d_GovState_1566 = erased
-- Ledger.Ledger._.GovEnv.certState
d_certState_1642 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1878 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_1642 v0
  = coe MAlonzo.Code.Ledger.Gov.d_certState_1904 (coe v0)
-- Ledger.Ledger._.GovEnv.enactState
d_enactState_1644 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1878 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_1644 v0
  = coe MAlonzo.Code.Ledger.Gov.d_enactState_1902 (coe v0)
-- Ledger.Ledger._.GovEnv.epoch
d_epoch_1646 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1878 -> AgdaAny
d_epoch_1646 v0 = coe MAlonzo.Code.Ledger.Gov.d_epoch_1896 (coe v0)
-- Ledger.Ledger._.GovEnv.pparams
d_pparams_1648 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1878 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1648 v0
  = coe MAlonzo.Code.Ledger.Gov.d_pparams_1898 (coe v0)
-- Ledger.Ledger._.GovEnv.ppolicy
d_ppolicy_1650 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1878 -> Maybe AgdaAny
d_ppolicy_1650 v0
  = coe MAlonzo.Code.Ledger.Gov.d_ppolicy_1900 (coe v0)
-- Ledger.Ledger._.GovEnv.rewardCreds
d_rewardCreds_1652 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1878 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_rewardCreds_1652 v0
  = coe MAlonzo.Code.Ledger.Gov.d_rewardCreds_1906 (coe v0)
-- Ledger.Ledger._.GovEnv.txid
d_txid_1654 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1878 -> AgdaAny
d_txid_1654 v0 = coe MAlonzo.Code.Ledger.Gov.d_txid_1894 (coe v0)
-- Ledger.Ledger._.UTxOState
d_UTxOState_1696 a0 a1 = ()
-- Ledger.Ledger._.UTxOState.deposits
d_deposits_1820 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1820 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2028 (coe v0)
-- Ledger.Ledger._.UTxOState.donations
d_donations_1822 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 -> Integer
d_donations_1822 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2030 (coe v0)
-- Ledger.Ledger._.UTxOState.fees
d_fees_1824 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 -> Integer
d_fees_1824 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2026 (coe v0)
-- Ledger.Ledger._.UTxOState.utxo
d_utxo_1826 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1826 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2024 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1864 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1926 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1926 = erased
-- Ledger.Ledger._.CertEnv
d_CertEnv_1944 a0 a1 = ()
-- Ledger.Ledger._.CertState
d_CertState_1946 a0 a1 = ()
-- Ledger.Ledger._.CertEnv.coldCreds
d_coldCreds_2064 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_coldCreds_2064 v0
  = coe MAlonzo.Code.Ledger.Certs.d_coldCreds_886 (coe v0)
-- Ledger.Ledger._.CertEnv.epoch
d_epoch_2066 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_866 -> AgdaAny
d_epoch_2066 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_878 (coe v0)
-- Ledger.Ledger._.CertEnv.pp
d_pp_2068 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_2068 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_880 (coe v0)
-- Ledger.Ledger._.CertEnv.votes
d_votes_2070 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722]
d_votes_2070 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_882 (coe v0)
-- Ledger.Ledger._.CertEnv.wdrls
d_wdrls_2072 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2072 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_884 (coe v0)
-- Ledger.Ledger._.CertState.dState
d_dState_2076 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_DState_890
d_dState_2076 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_938 (coe v0)
-- Ledger.Ledger._.CertState.gState
d_gState_2078 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_GState_918
d_gState_2078 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_942 (coe v0)
-- Ledger.Ledger._.CertState.pState
d_pState_2080 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_2080 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_940 (coe v0)
-- Ledger.Ledger.LEnv
d_LEnv_2142 a0 a1 = ()
data T_LEnv_2142
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2164 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_242
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_826
                                                          Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2154 :: T_LEnv_2142 -> AgdaAny
d_slot_2154 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2164 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2156 :: T_LEnv_2142 -> Maybe AgdaAny
d_ppolicy_2156 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2164 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2158 ::
  T_LEnv_2142 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2158 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2164 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2160 ::
  T_LEnv_2142 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2160 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2164 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2162 :: T_LEnv_2142 -> Integer
d_treasury_2162 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2164 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_2166 a0 a1 = ()
data T_LState_2166
  = C_'10214'_'44'_'44'_'10215''737'_2180 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_930
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2174 ::
  T_LState_2166 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
d_utxoSt_2174 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2180 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2176 ::
  T_LState_2166 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2176 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2180 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2178 ::
  T_LState_2166 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_2178 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2180 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2182 ~v0 ~v1 v2 = du_txgov_2182 v2
du_txgov_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2182 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2576 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2574 (coe v0)))
-- Ledger.Ledger.isUnregisteredDRep
d_isUnregisteredDRep_2232 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_isUnregisteredDRep_2232 = erased
-- Ledger.Ledger.removeOrphanDRepVotes
d_removeOrphanDRepVotes_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_766 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_766
d_removeOrphanDRepVotes_2240 v0 ~v1 v2 v3
  = du_removeOrphanDRepVotes_2240 v0 v2 v3
du_removeOrphanDRepVotes_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_766 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_766
du_removeOrphanDRepVotes_2240 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4191
      (coe du_votes'8242'_2250 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_780 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_782 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_784 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_786 (coe v2))
-- Ledger.Ledger._.votes′
d_votes'8242'_2250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_766 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes'8242'_2250 v0 ~v1 v2 v3 = du_votes'8242'_2250 v0 v2 v3
du_votes'8242'_2250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_766 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_votes'8242'_2250 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_788)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
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
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                          (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                    (coe
                       MAlonzo.Code.Class.IsSet.du_dom_548
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                       (coe
                          MAlonzo.Code.Ledger.Certs.d_dreps_924
                          (coe MAlonzo.Code.Ledger.Certs.d_gState_942 (coe v1)))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
      (MAlonzo.Code.Ledger.GovernanceActions.d_votes_778 (coe v2))
-- Ledger.Ledger._|ᵒ_
d__'124''7506'__2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'124''7506'__2252 v0 ~v1 v2 v3 = du__'124''7506'__2252 v0 v2 v3
du__'124''7506'__2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'124''7506'__2252 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_removeOrphanDRepVotes_2240 (coe v0) (coe v2)))
      (coe v1)
-- Ledger.Ledger.allColdCreds
d_allColdCreds_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_2258 ~v0 ~v1 v2 v3 = du_allColdCreds_2258 v2 v3
du_allColdCreds_2258 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_2258 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Enact.du_ccCreds_848
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
                 MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_798
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_784
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2284 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2284
  = C_LEDGER'45'V_2380 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2460 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_2288 ~v0 ~v1 v2 = du_certState_2288 v2
du_certState_2288 ::
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
du_certState_2288 v0
  = coe
      d_certState_2178 (coe d_'46'generalizedField'45's_11747 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2290 ~v0 ~v1 v2 = du_govSt_2290 v2
du_govSt_2290 ::
  T_GeneralizeTel_11759 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2290 v0
  = coe d_govSt_2176 (coe d_'46'generalizedField'45's_11747 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
d_utxoSt_2292 ~v0 ~v1 v2 = du_utxoSt_2292 v2
du_utxoSt_2292 ::
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
du_utxoSt_2292 v0
  = coe
      d_utxoSt_2174 (coe d_'46'generalizedField'45's_11747 (coe v0))
-- Ledger.Ledger._.txcerts
d_txcerts_2314 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> [MAlonzo.Code.Ledger.Certs.T_DCert_830]
d_txcerts_2314 ~v0 ~v1 v2 = du_txcerts_2314 v2
du_txcerts_2314 ::
  T_GeneralizeTel_11759 -> [MAlonzo.Code.Ledger.Certs.T_DCert_830]
du_txcerts_2314 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2570
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_11749 (coe v0)))
-- Ledger.Ledger._.txid
d_txid_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> AgdaAny
d_txid_2320 ~v0 ~v1 v2 = du_txid_2320 v2
du_txid_2320 :: T_GeneralizeTel_11759 -> AgdaAny
du_txid_2320 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2590
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_11749 (coe v0)))
-- Ledger.Ledger._.txvote
d_txvote_2334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722]
d_txvote_2334 ~v0 ~v1 v2 = du_txvote_2334 v2
du_txvote_2334 ::
  T_GeneralizeTel_11759 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722]
du_txvote_2334 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2574
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_11749 (coe v0)))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2336 ~v0 ~v1 v2 = du_txwdrls_2336 v2
du_txwdrls_2336 ::
  T_GeneralizeTel_11759 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2336 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2572
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_11749 (coe v0)))
-- Ledger.Ledger._.enactState
d_enactState_2340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2340 ~v0 ~v1 v2 = du_enactState_2340 v2
du_enactState_2340 ::
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_enactState_2340 v0
  = coe
      d_enactState_2160 (coe d_'46'generalizedField'45'Γ_11751 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2342 ~v0 ~v1 v2 = du_pparams_2342 v2
du_pparams_2342 ::
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2342 v0
  = coe
      d_pparams_2158 (coe d_'46'generalizedField'45'Γ_11751 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> Maybe AgdaAny
d_ppolicy_2344 ~v0 ~v1 v2 = du_ppolicy_2344 v2
du_ppolicy_2344 :: T_GeneralizeTel_11759 -> Maybe AgdaAny
du_ppolicy_2344 v0
  = coe
      d_ppolicy_2156 (coe d_'46'generalizedField'45'Γ_11751 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> AgdaAny
d_slot_2346 ~v0 ~v1 v2 = du_slot_2346 v2
du_slot_2346 :: T_GeneralizeTel_11759 -> AgdaAny
du_slot_2346 v0
  = coe d_slot_2154 (coe d_'46'generalizedField'45'Γ_11751 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> Integer
d_treasury_2348 ~v0 ~v1 v2 = du_treasury_2348 v2
du_treasury_2348 :: T_GeneralizeTel_11759 -> Integer
du_treasury_2348 v0
  = coe
      d_treasury_2162 (coe d_'46'generalizedField'45'Γ_11751 (coe v0))
-- Ledger.Ledger._.dState
d_dState_2352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.Certs.T_DState_890
d_dState_2352 ~v0 ~v1 v2 = du_dState_2352 v2
du_dState_2352 ::
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.Certs.T_DState_890
du_dState_2352 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dState_938
      (coe
         d_certState_2178 (coe d_'46'generalizedField'45's_11747 (coe v0)))
-- Ledger.Ledger._.rewards
d_rewards_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2360 ~v0 ~v1 v2 = du_rewards_2360 v2
du_rewards_2360 ::
  T_GeneralizeTel_11759 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2360 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_rewards_902
      (coe
         MAlonzo.Code.Ledger.Certs.d_dState_938
         (coe
            d_certState_2178 (coe d_'46'generalizedField'45's_11747 (coe v0))))
-- Ledger.Ledger._.enactState
d_enactState_2370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2370 ~v0 ~v1 v2 = du_enactState_2370 v2
du_enactState_2370 ::
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_enactState_2370 v0
  = coe
      d_enactState_2160 (coe d_'46'generalizedField'45'Γ_11751 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2372 ~v0 ~v1 v2 = du_pparams_2372 v2
du_pparams_2372 ::
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2372 v0
  = coe
      d_pparams_2158 (coe d_'46'generalizedField'45'Γ_11751 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2374 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> Maybe AgdaAny
d_ppolicy_2374 ~v0 ~v1 v2 = du_ppolicy_2374 v2
du_ppolicy_2374 :: T_GeneralizeTel_11759 -> Maybe AgdaAny
du_ppolicy_2374 v0
  = coe
      d_ppolicy_2156 (coe d_'46'generalizedField'45'Γ_11751 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> AgdaAny
d_slot_2376 ~v0 ~v1 v2 = du_slot_2376 v2
du_slot_2376 :: T_GeneralizeTel_11759 -> AgdaAny
du_slot_2376 v0
  = coe d_slot_2154 (coe d_'46'generalizedField'45'Γ_11751 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_11759 -> Integer
d_treasury_2378 ~v0 ~v1 v2 = du_treasury_2378 v2
du_treasury_2378 :: T_GeneralizeTel_11759 -> Integer
du_treasury_2378 v0
  = coe
      d_treasury_2162 (coe d_'46'generalizedField'45'Γ_11751 (coe v0))
-- Ledger.Ledger._.certState
d_certState_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_12447 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_2384 ~v0 ~v1 v2 = du_certState_2384 v2
du_certState_2384 ::
  T_GeneralizeTel_12447 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
du_certState_2384 v0
  = coe
      d_certState_2178 (coe d_'46'generalizedField'45's_12439 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2386 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_12447 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2386 ~v0 ~v1 v2 = du_govSt_2386 v2
du_govSt_2386 ::
  T_GeneralizeTel_12447 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2386 v0
  = coe d_govSt_2176 (coe d_'46'generalizedField'45's_12439 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_12447 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
d_utxoSt_2388 ~v0 ~v1 v2 = du_utxoSt_2388 v2
du_utxoSt_2388 ::
  T_GeneralizeTel_12447 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
du_utxoSt_2388 v0
  = coe
      d_utxoSt_2174 (coe d_'46'generalizedField'45's_12439 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2436 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_12447 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2436 ~v0 ~v1 v2 = du_enactState_2436 v2
du_enactState_2436 ::
  T_GeneralizeTel_12447 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_enactState_2436 v0
  = coe
      d_enactState_2160 (coe d_'46'generalizedField'45'Γ_12443 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_12447 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2438 ~v0 ~v1 v2 = du_pparams_2438 v2
du_pparams_2438 ::
  T_GeneralizeTel_12447 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2438 v0
  = coe
      d_pparams_2158 (coe d_'46'generalizedField'45'Γ_12443 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_12447 -> Maybe AgdaAny
d_ppolicy_2440 ~v0 ~v1 v2 = du_ppolicy_2440 v2
du_ppolicy_2440 :: T_GeneralizeTel_12447 -> Maybe AgdaAny
du_ppolicy_2440 v0
  = coe
      d_ppolicy_2156 (coe d_'46'generalizedField'45'Γ_12443 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_12447 -> AgdaAny
d_slot_2442 ~v0 ~v1 v2 = du_slot_2442 v2
du_slot_2442 :: T_GeneralizeTel_12447 -> AgdaAny
du_slot_2442 v0
  = coe d_slot_2154 (coe d_'46'generalizedField'45'Γ_12443 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2444 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_12447 -> Integer
d_treasury_2444 ~v0 ~v1 v2 = du_treasury_2444 v2
du_treasury_2444 :: T_GeneralizeTel_12447 -> Integer
du_treasury_2444 v0
  = coe
      d_treasury_2162 (coe d_'46'generalizedField'45'Γ_12443 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_12447 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2450 ~v0 ~v1 v2 = du_enactState_2450 v2
du_enactState_2450 ::
  T_GeneralizeTel_12447 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_enactState_2450 v0
  = coe
      d_enactState_2160 (coe d_'46'generalizedField'45'Γ_12443 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_12447 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2452 ~v0 ~v1 v2 = du_pparams_2452 v2
du_pparams_2452 ::
  T_GeneralizeTel_12447 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2452 v0
  = coe
      d_pparams_2158 (coe d_'46'generalizedField'45'Γ_12443 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_12447 -> Maybe AgdaAny
d_ppolicy_2454 ~v0 ~v1 v2 = du_ppolicy_2454 v2
du_ppolicy_2454 :: T_GeneralizeTel_12447 -> Maybe AgdaAny
du_ppolicy_2454 v0
  = coe
      d_ppolicy_2156 (coe d_'46'generalizedField'45'Γ_12443 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_12447 -> AgdaAny
d_slot_2456 ~v0 ~v1 v2 = du_slot_2456 v2
du_slot_2456 :: T_GeneralizeTel_12447 -> AgdaAny
du_slot_2456 v0
  = coe d_slot_2154 (coe d_'46'generalizedField'45'Γ_12443 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_12447 -> Integer
d_treasury_2458 ~v0 ~v1 v2 = du_treasury_2458 v2
du_treasury_2458 :: T_GeneralizeTel_12447 -> Integer
du_treasury_2458 v0
  = coe
      d_treasury_2162 (coe d_'46'generalizedField'45'Γ_12443 (coe v0))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_LEnv_2142 ->
  T_LState_2166 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2618] -> T_LState_2166 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2478 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_11747 ::
  T_GeneralizeTel_11759 -> T_LState_2166
d_'46'generalizedField'45's_11747 v0
  = case coe v0 of
      C_mkGeneralizeTel_11761 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_11749 ::
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2618
d_'46'generalizedField'45'tx_11749 v0
  = case coe v0 of
      C_mkGeneralizeTel_11761 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_11751 ::
  T_GeneralizeTel_11759 -> T_LEnv_2142
d_'46'generalizedField'45'Γ_11751 v0
  = case coe v0 of
      C_mkGeneralizeTel_11761 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_11753 ::
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
d_'46'generalizedField'45'utxoSt''_11753 v0
  = case coe v0 of
      C_mkGeneralizeTel_11761 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_11755 ::
  T_GeneralizeTel_11759 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_'46'generalizedField'45'certState''_11755 v0
  = case coe v0 of
      C_mkGeneralizeTel_11761 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_11757 ::
  T_GeneralizeTel_11759 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_11757 v0
  = case coe v0 of
      C_mkGeneralizeTel_11761 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_11759 a0 a1 = ()
data T_GeneralizeTel_11759
  = C_mkGeneralizeTel_11761 T_LState_2166
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2618 T_LEnv_2142
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
                            MAlonzo.Code.Ledger.Certs.T_CertState_930
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_12439 ::
  T_GeneralizeTel_12447 -> T_LState_2166
d_'46'generalizedField'45's_12439 v0
  = case coe v0 of
      C_mkGeneralizeTel_12449 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_12441 ::
  T_GeneralizeTel_12447 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2618
d_'46'generalizedField'45'tx_12441 v0
  = case coe v0 of
      C_mkGeneralizeTel_12449 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_12443 ::
  T_GeneralizeTel_12447 -> T_LEnv_2142
d_'46'generalizedField'45'Γ_12443 v0
  = case coe v0 of
      C_mkGeneralizeTel_12449 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_12445 ::
  T_GeneralizeTel_12447 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
d_'46'generalizedField'45'utxoSt''_12445 v0
  = case coe v0 of
      C_mkGeneralizeTel_12449 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_12447 a0 a1 = ()
data T_GeneralizeTel_12447
  = C_mkGeneralizeTel_12449 T_LState_2166
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2618 T_LEnv_2142
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
