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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_86 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_86 ~v0 = du_DecEq'45'GovRole_86
du_DecEq'45'GovRole_86 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_86
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_798
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
d_epoch_422 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_422 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0))
-- _.GovActionState.action
d_action_660 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_action_660 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_662 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_expiresIn_662 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_792 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_664 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_prevAction_664 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_796 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_666 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_666 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790 (coe v0)
-- _.GovActionState.votes
d_votes_668 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_668 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_788 (coe v0)
-- _.GovProposal.action
d_action_688 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_action_688 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_764 (coe v0)
-- _.GovProposal.anchor
d_anchor_690 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_anchor_690 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- _.GovProposal.deposit
d_deposit_692 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 -> Integer
d_deposit_692 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_770 (coe v0)
-- _.GovProposal.policy
d_policy_694 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  Maybe AgdaAny
d_policy_694 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_768 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 -> AgdaAny
d_prevAction_696 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_766 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_698 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_772 (coe v0)
-- _.GovVote.anchor
d_anchor_710 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_anchor_710 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_748 (coe v0)
-- _.GovVote.gid
d_gid_712 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_712 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_742 (coe v0)
-- _.GovVote.vote
d_vote_714 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724
d_vote_714 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_746 (coe v0)
-- _.GovVote.voter
d_voter_716 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_716 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_744 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_738 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_740 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_742 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_744 a0 = ()
-- _.PParams.Emax
d_Emax_892 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_892 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_350 (coe v0)
-- _.PParams.a
d_a_894 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_894 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_326 (coe v0)
-- _.PParams.a0
d_a0_896 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_896 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_354 (coe v0)
-- _.PParams.b
d_b_898 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_898 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_328 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_900 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_900 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_366 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_902 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_902 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_364 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_904 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_904 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_906 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_906 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356 (coe v0)
-- _.PParams.costmdls
d_costmdls_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_358 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_374 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_912 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_372 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_918 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_318 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_310 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_926 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_322 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_314 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_930 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_342 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_932 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_316 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_312 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_320 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_940 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_338
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_348 (coe v0)
-- _.PParams.nopt
d_nopt_944 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_944 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_352 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0)
-- _.PParams.prices
d_prices_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_336 (coe v0)
-- _.PParams.pv
d_pv_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_952 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_324 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_954 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_346 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_refScriptCostStride_956 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_344 (coe v0)
-- _.Tx.body
d_body_1368 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514
d_body_1368 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2626 (coe v0)
-- _.Tx.isValid
d_isValid_1370 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> Bool
d_isValid_1370 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2630 (coe v0)
-- _.Tx.txAD
d_txAD_1372 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 -> Maybe AgdaAny
d_txAD_1372 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2632 (coe v0)
-- _.Tx.wits
d_wits_1374 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2616 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2596
d_wits_1374 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2628 (coe v0)
-- _.TxBody.collateral
d_collateral_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2590 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1380 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Maybe Integer
d_curTreasury_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2584 (coe v0)
-- _.TxBody.mint
d_mint_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> AgdaAny
d_mint_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2564 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1384 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2558 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> [AgdaAny]
d_reqSigHash_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2592 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Maybe AgdaAny
d_scriptIntHash_1388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2594 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1390 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Maybe AgdaAny
d_txADhash_1390 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2580 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1392 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Maybe AgdaAny
d_txNetworkId_1392 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2582 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830]
d_txcerts_1394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2568 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1396 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Integer
d_txdonation_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2576 (coe v0)
-- _.TxBody.txfee
d_txfee_1398 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Integer
d_txfee_1398 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2562 (coe v0)
-- _.TxBody.txid
d_txid_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> AgdaAny
d_txid_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2588 (coe v0)
-- _.TxBody.txins
d_txins_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2556 (coe v0)
-- _.TxBody.txouts
d_txouts_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2560 (coe v0)
-- _.TxBody.txprop
d_txprop_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750]
d_txprop_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2574 (coe v0)
-- _.TxBody.txsize
d_txsize_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 -> Integer
d_txsize_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2586 (coe v0)
-- _.TxBody.txup
d_txup_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2578 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2566 (coe v0)
-- _.TxBody.txvote
d_txvote_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_txvote_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2572 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2570 (coe v0)
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
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1876 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1556 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1564 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 -> ()
d_GovState_1566 = erased
-- Ledger.Ledger._.GovEnv.certState
d_certState_1634 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1876 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926
d_certState_1634 v0
  = coe MAlonzo.Code.Ledger.Gov.d_certState_1900 (coe v0)
-- Ledger.Ledger._.GovEnv.enactState
d_enactState_1636 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1876 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_1636 v0
  = coe MAlonzo.Code.Ledger.Gov.d_enactState_1898 (coe v0)
-- Ledger.Ledger._.GovEnv.epoch
d_epoch_1638 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1876 -> AgdaAny
d_epoch_1638 v0 = coe MAlonzo.Code.Ledger.Gov.d_epoch_1892 (coe v0)
-- Ledger.Ledger._.GovEnv.pparams
d_pparams_1640 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1876 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1640 v0
  = coe MAlonzo.Code.Ledger.Gov.d_pparams_1894 (coe v0)
-- Ledger.Ledger._.GovEnv.ppolicy
d_ppolicy_1642 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1876 -> Maybe AgdaAny
d_ppolicy_1642 v0
  = coe MAlonzo.Code.Ledger.Gov.d_ppolicy_1896 (coe v0)
-- Ledger.Ledger._.GovEnv.txid
d_txid_1644 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1876 -> AgdaAny
d_txid_1644 v0 = coe MAlonzo.Code.Ledger.Gov.d_txid_1890 (coe v0)
-- Ledger.Ledger._.UTxOState
d_UTxOState_1692 a0 a1 = ()
-- Ledger.Ledger._.UTxOState.deposits
d_deposits_1810 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1810 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1934 (coe v0)
-- Ledger.Ledger._.UTxOState.donations
d_donations_1812 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 -> Integer
d_donations_1812 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1936 (coe v0)
-- Ledger.Ledger._.UTxOState.fees
d_fees_1814 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 -> Integer
d_fees_1814 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1932 (coe v0)
-- Ledger.Ledger._.UTxOState.utxo
d_utxo_1816 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1816 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1930 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1850 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1912 = erased
-- Ledger.Ledger._.CertEnv
d_CertEnv_1930 a0 a1 = ()
-- Ledger.Ledger._.CertState
d_CertState_1932 a0 a1 = ()
-- Ledger.Ledger._.CertEnv.epoch
d_epoch_2050 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_866 -> AgdaAny
d_epoch_2050 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_876 (coe v0)
-- Ledger.Ledger._.CertEnv.pp
d_pp_2052 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_2052 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_878 (coe v0)
-- Ledger.Ledger._.CertEnv.votes
d_votes_2054 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_votes_2054 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_880 (coe v0)
-- Ledger.Ledger._.CertEnv.wdrls
d_wdrls_2056 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2056 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_882 (coe v0)
-- Ledger.Ledger._.CertState.dState
d_dState_2060 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  MAlonzo.Code.Ledger.Certs.T_DState_886
d_dState_2060 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_934 (coe v0)
-- Ledger.Ledger._.CertState.gState
d_gState_2062 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  MAlonzo.Code.Ledger.Certs.T_GState_914
d_gState_2062 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_938 (coe v0)
-- Ledger.Ledger._.CertState.pState
d_pState_2064 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  MAlonzo.Code.Ledger.Certs.T_PState_902
d_pState_2064 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_936 (coe v0)
-- Ledger.Ledger.LEnv
d_LEnv_2126 a0 a1 = ()
data T_LEnv_2126
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2148 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_242
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_826
                                                          Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2138 :: T_LEnv_2126 -> AgdaAny
d_slot_2138 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2148 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2140 :: T_LEnv_2126 -> Maybe AgdaAny
d_ppolicy_2140 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2148 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2142 ::
  T_LEnv_2126 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2142 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2148 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2144 ::
  T_LEnv_2126 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2144 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2148 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2146 :: T_LEnv_2126 -> Integer
d_treasury_2146 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2148 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_2150 a0 a1 = ()
data T_LState_2150
  = C_'10214'_'44'_'44'_'10215''737'_2164 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_926
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2158 ::
  T_LState_2150 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
d_utxoSt_2158 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2164 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2160 ::
  T_LState_2150 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2160 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2164 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2162 ::
  T_LState_2150 -> MAlonzo.Code.Ledger.Certs.T_CertState_926
d_certState_2162 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2164 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2166 ~v0 ~v1 v2 = du_txgov_2166 v2
du_txgov_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2514 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2166 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2574 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2572 (coe v0)))
-- Ledger.Ledger.isUnregisteredDRep
d_isUnregisteredDRep_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_isUnregisteredDRep_2216 = erased
-- Ledger.Ledger.removeOrphanDRepVotes
d_removeOrphanDRepVotes_2224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776
d_removeOrphanDRepVotes_2224 v0 ~v1 v2 v3
  = du_removeOrphanDRepVotes_2224 v0 v2 v3
du_removeOrphanDRepVotes_2224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776
du_removeOrphanDRepVotes_2224 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_6991
      (coe du_votes'8242'_2234 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_792 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_796 (coe v2))
-- Ledger.Ledger._.votes′
d_votes'8242'_2234 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes'8242'_2234 v0 ~v1 v2 v3 = du_votes'8242'_2234 v0 v2 v3
du_votes'8242'_2234 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_votes'8242'_2234 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_798)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_664))
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
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                          (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                    (coe
                       MAlonzo.Code.Class.IsSet.du_dom_548
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                       (coe
                          MAlonzo.Code.Ledger.Certs.d_dreps_920
                          (coe MAlonzo.Code.Ledger.Certs.d_gState_938 (coe v1)))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
      (MAlonzo.Code.Ledger.GovernanceActions.d_votes_788 (coe v2))
-- Ledger.Ledger._|ᵒ_
d__'124''7506'__2236 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'124''7506'__2236 v0 ~v1 v2 v3 = du__'124''7506'__2236 v0 v2 v3
du__'124''7506'__2236 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_926 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'124''7506'__2236 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_removeOrphanDRepVotes_2224 (coe v0) (coe v2)))
      (coe v1)
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2258 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2258
  = C_LEDGER'45'V_2338 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2418 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 -> MAlonzo.Code.Ledger.Certs.T_CertState_926
d_certState_2262 ~v0 ~v1 v2 = du_certState_2262 v2
du_certState_2262 ::
  T_GeneralizeTel_11037 -> MAlonzo.Code.Ledger.Certs.T_CertState_926
du_certState_2262 v0
  = coe
      d_certState_2162 (coe d_'46'generalizedField'45's_11025 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2264 ~v0 ~v1 v2 = du_govSt_2264 v2
du_govSt_2264 ::
  T_GeneralizeTel_11037 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2264 v0
  = coe d_govSt_2160 (coe d_'46'generalizedField'45's_11025 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
d_utxoSt_2266 ~v0 ~v1 v2 = du_utxoSt_2266 v2
du_utxoSt_2266 ::
  T_GeneralizeTel_11037 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
du_utxoSt_2266 v0
  = coe
      d_utxoSt_2158 (coe d_'46'generalizedField'45's_11025 (coe v0))
-- Ledger.Ledger._.txcerts
d_txcerts_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 -> [MAlonzo.Code.Ledger.Certs.T_DCert_830]
d_txcerts_2288 ~v0 ~v1 v2 = du_txcerts_2288 v2
du_txcerts_2288 ::
  T_GeneralizeTel_11037 -> [MAlonzo.Code.Ledger.Certs.T_DCert_830]
du_txcerts_2288 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2568
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_11027 (coe v0)))
-- Ledger.Ledger._.txid
d_txid_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 -> AgdaAny
d_txid_2294 ~v0 ~v1 v2 = du_txid_2294 v2
du_txid_2294 :: T_GeneralizeTel_11037 -> AgdaAny
du_txid_2294 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2588
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_11027 (coe v0)))
-- Ledger.Ledger._.txvote
d_txvote_2308 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_txvote_2308 ~v0 ~v1 v2 = du_txvote_2308 v2
du_txvote_2308 ::
  T_GeneralizeTel_11037 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
du_txvote_2308 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2572
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_11027 (coe v0)))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2310 ~v0 ~v1 v2 = du_txwdrls_2310 v2
du_txwdrls_2310 ::
  T_GeneralizeTel_11037 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2310 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2570
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2626
         (coe d_'46'generalizedField'45'tx_11027 (coe v0)))
-- Ledger.Ledger._.enactState
d_enactState_2314 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2314 ~v0 ~v1 v2 = du_enactState_2314 v2
du_enactState_2314 ::
  T_GeneralizeTel_11037 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_enactState_2314 v0
  = coe
      d_enactState_2144 (coe d_'46'generalizedField'45'Γ_11029 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2316 ~v0 ~v1 v2 = du_pparams_2316 v2
du_pparams_2316 ::
  T_GeneralizeTel_11037 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2316 v0
  = coe
      d_pparams_2142 (coe d_'46'generalizedField'45'Γ_11029 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2318 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 -> Maybe AgdaAny
d_ppolicy_2318 ~v0 ~v1 v2 = du_ppolicy_2318 v2
du_ppolicy_2318 :: T_GeneralizeTel_11037 -> Maybe AgdaAny
du_ppolicy_2318 v0
  = coe
      d_ppolicy_2140 (coe d_'46'generalizedField'45'Γ_11029 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 -> AgdaAny
d_slot_2320 ~v0 ~v1 v2 = du_slot_2320 v2
du_slot_2320 :: T_GeneralizeTel_11037 -> AgdaAny
du_slot_2320 v0
  = coe d_slot_2138 (coe d_'46'generalizedField'45'Γ_11029 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 -> Integer
d_treasury_2322 ~v0 ~v1 v2 = du_treasury_2322 v2
du_treasury_2322 :: T_GeneralizeTel_11037 -> Integer
du_treasury_2322 v0
  = coe
      d_treasury_2146 (coe d_'46'generalizedField'45'Γ_11029 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2328 ~v0 ~v1 v2 = du_enactState_2328 v2
du_enactState_2328 ::
  T_GeneralizeTel_11037 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_enactState_2328 v0
  = coe
      d_enactState_2144 (coe d_'46'generalizedField'45'Γ_11029 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2330 ~v0 ~v1 v2 = du_pparams_2330 v2
du_pparams_2330 ::
  T_GeneralizeTel_11037 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2330 v0
  = coe
      d_pparams_2142 (coe d_'46'generalizedField'45'Γ_11029 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 -> Maybe AgdaAny
d_ppolicy_2332 ~v0 ~v1 v2 = du_ppolicy_2332 v2
du_ppolicy_2332 :: T_GeneralizeTel_11037 -> Maybe AgdaAny
du_ppolicy_2332 v0
  = coe
      d_ppolicy_2140 (coe d_'46'generalizedField'45'Γ_11029 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 -> AgdaAny
d_slot_2334 ~v0 ~v1 v2 = du_slot_2334 v2
du_slot_2334 :: T_GeneralizeTel_11037 -> AgdaAny
du_slot_2334 v0
  = coe d_slot_2138 (coe d_'46'generalizedField'45'Γ_11029 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11037 -> Integer
d_treasury_2336 ~v0 ~v1 v2 = du_treasury_2336 v2
du_treasury_2336 :: T_GeneralizeTel_11037 -> Integer
du_treasury_2336 v0
  = coe
      d_treasury_2146 (coe d_'46'generalizedField'45'Γ_11029 (coe v0))
-- Ledger.Ledger._.certState
d_certState_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11457 -> MAlonzo.Code.Ledger.Certs.T_CertState_926
d_certState_2342 ~v0 ~v1 v2 = du_certState_2342 v2
du_certState_2342 ::
  T_GeneralizeTel_11457 -> MAlonzo.Code.Ledger.Certs.T_CertState_926
du_certState_2342 v0
  = coe
      d_certState_2162 (coe d_'46'generalizedField'45's_11449 (coe v0))
-- Ledger.Ledger._.govSt
d_govSt_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11457 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2344 ~v0 ~v1 v2 = du_govSt_2344 v2
du_govSt_2344 ::
  T_GeneralizeTel_11457 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2344 v0
  = coe d_govSt_2160 (coe d_'46'generalizedField'45's_11449 (coe v0))
-- Ledger.Ledger._.utxoSt
d_utxoSt_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11457 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
d_utxoSt_2346 ~v0 ~v1 v2 = du_utxoSt_2346 v2
du_utxoSt_2346 ::
  T_GeneralizeTel_11457 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
du_utxoSt_2346 v0
  = coe
      d_utxoSt_2158 (coe d_'46'generalizedField'45's_11449 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11457 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2394 ~v0 ~v1 v2 = du_enactState_2394 v2
du_enactState_2394 ::
  T_GeneralizeTel_11457 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_enactState_2394 v0
  = coe
      d_enactState_2144 (coe d_'46'generalizedField'45'Γ_11453 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11457 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2396 ~v0 ~v1 v2 = du_pparams_2396 v2
du_pparams_2396 ::
  T_GeneralizeTel_11457 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2396 v0
  = coe
      d_pparams_2142 (coe d_'46'generalizedField'45'Γ_11453 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11457 -> Maybe AgdaAny
d_ppolicy_2398 ~v0 ~v1 v2 = du_ppolicy_2398 v2
du_ppolicy_2398 :: T_GeneralizeTel_11457 -> Maybe AgdaAny
du_ppolicy_2398 v0
  = coe
      d_ppolicy_2140 (coe d_'46'generalizedField'45'Γ_11453 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2400 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11457 -> AgdaAny
d_slot_2400 ~v0 ~v1 v2 = du_slot_2400 v2
du_slot_2400 :: T_GeneralizeTel_11457 -> AgdaAny
du_slot_2400 v0
  = coe d_slot_2138 (coe d_'46'generalizedField'45'Γ_11453 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11457 -> Integer
d_treasury_2402 ~v0 ~v1 v2 = du_treasury_2402 v2
du_treasury_2402 :: T_GeneralizeTel_11457 -> Integer
du_treasury_2402 v0
  = coe
      d_treasury_2146 (coe d_'46'generalizedField'45'Γ_11453 (coe v0))
-- Ledger.Ledger._.enactState
d_enactState_2408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11457 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2408 ~v0 ~v1 v2 = du_enactState_2408 v2
du_enactState_2408 ::
  T_GeneralizeTel_11457 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_enactState_2408 v0
  = coe
      d_enactState_2144 (coe d_'46'generalizedField'45'Γ_11453 (coe v0))
-- Ledger.Ledger._.pparams
d_pparams_2410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11457 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2410 ~v0 ~v1 v2 = du_pparams_2410 v2
du_pparams_2410 ::
  T_GeneralizeTel_11457 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2410 v0
  = coe
      d_pparams_2142 (coe d_'46'generalizedField'45'Γ_11453 (coe v0))
-- Ledger.Ledger._.ppolicy
d_ppolicy_2412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11457 -> Maybe AgdaAny
d_ppolicy_2412 ~v0 ~v1 v2 = du_ppolicy_2412 v2
du_ppolicy_2412 :: T_GeneralizeTel_11457 -> Maybe AgdaAny
du_ppolicy_2412 v0
  = coe
      d_ppolicy_2140 (coe d_'46'generalizedField'45'Γ_11453 (coe v0))
-- Ledger.Ledger._.slot
d_slot_2414 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11457 -> AgdaAny
d_slot_2414 ~v0 ~v1 v2 = du_slot_2414 v2
du_slot_2414 :: T_GeneralizeTel_11457 -> AgdaAny
du_slot_2414 v0
  = coe d_slot_2138 (coe d_'46'generalizedField'45'Γ_11453 (coe v0))
-- Ledger.Ledger._.treasury
d_treasury_2416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_GeneralizeTel_11457 -> Integer
d_treasury_2416 ~v0 ~v1 v2 = du_treasury_2416 v2
du_treasury_2416 :: T_GeneralizeTel_11457 -> Integer
du_treasury_2416 v0
  = coe
      d_treasury_2146 (coe d_'46'generalizedField'45'Γ_11453 (coe v0))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2436 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  T_LEnv_2126 ->
  T_LState_2150 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2616] -> T_LState_2150 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2436 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_11025 ::
  T_GeneralizeTel_11037 -> T_LState_2150
d_'46'generalizedField'45's_11025 v0
  = case coe v0 of
      C_mkGeneralizeTel_11039 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_11027 ::
  T_GeneralizeTel_11037 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2616
d_'46'generalizedField'45'tx_11027 v0
  = case coe v0 of
      C_mkGeneralizeTel_11039 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_11029 ::
  T_GeneralizeTel_11037 -> T_LEnv_2126
d_'46'generalizedField'45'Γ_11029 v0
  = case coe v0 of
      C_mkGeneralizeTel_11039 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_11031 ::
  T_GeneralizeTel_11037 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
d_'46'generalizedField'45'utxoSt''_11031 v0
  = case coe v0 of
      C_mkGeneralizeTel_11039 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_11033 ::
  T_GeneralizeTel_11037 -> MAlonzo.Code.Ledger.Certs.T_CertState_926
d_'46'generalizedField'45'certState''_11033 v0
  = case coe v0 of
      C_mkGeneralizeTel_11039 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_11035 ::
  T_GeneralizeTel_11037 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_11035 v0
  = case coe v0 of
      C_mkGeneralizeTel_11039 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_11037 a0 a1 = ()
data T_GeneralizeTel_11037
  = C_mkGeneralizeTel_11039 T_LState_2150
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2616 T_LEnv_2126
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
                            MAlonzo.Code.Ledger.Certs.T_CertState_926
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_11449 ::
  T_GeneralizeTel_11457 -> T_LState_2150
d_'46'generalizedField'45's_11449 v0
  = case coe v0 of
      C_mkGeneralizeTel_11459 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_11451 ::
  T_GeneralizeTel_11457 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2616
d_'46'generalizedField'45'tx_11451 v0
  = case coe v0 of
      C_mkGeneralizeTel_11459 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_11453 ::
  T_GeneralizeTel_11457 -> T_LEnv_2126
d_'46'generalizedField'45'Γ_11453 v0
  = case coe v0 of
      C_mkGeneralizeTel_11459 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_11455 ::
  T_GeneralizeTel_11457 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
d_'46'generalizedField'45'utxoSt''_11455 v0
  = case coe v0 of
      C_mkGeneralizeTel_11459 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_11457 a0 a1 = ()
data T_GeneralizeTel_11457
  = C_mkGeneralizeTel_11459 T_LState_2150
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2616 T_LEnv_2126
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
