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
import qualified MAlonzo.Code.Data.Refinement
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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1230 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1230 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_86 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_86 ~v0 = du_DecEq'45'GovRole_86
du_DecEq'45'GovRole_86 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_86
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_792
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
d_Slot_322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_322 = erased
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
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1514 (coe v0))
-- _.GovActionState.action
d_action_660 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_770 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_696
d_action_660 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_788 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_662 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_770 ->
  AgdaAny
d_expiresIn_662 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_786 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_664 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_770 ->
  AgdaAny
d_prevAction_664 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_790 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_666 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_770 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_666 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_784 (coe v0)
-- _.GovActionState.votes
d_votes_668 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_770 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_668 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_782 (coe v0)
-- _.GovProposal.action
d_action_688 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_744 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_696
d_action_688 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_758 (coe v0)
-- _.GovProposal.anchor
d_anchor_690 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_744 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_686
d_anchor_690 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_768 (coe v0)
-- _.GovProposal.deposit
d_deposit_692 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_744 -> Integer
d_deposit_692 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_764 (coe v0)
-- _.GovProposal.policy
d_policy_694 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_744 ->
  Maybe AgdaAny
d_policy_694 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_762 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_744 -> AgdaAny
d_prevAction_696 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_760 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_744 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_698 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_766 (coe v0)
-- _.GovVote.anchor
d_anchor_710 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_726 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_686
d_anchor_710 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_742 (coe v0)
-- _.GovVote.gid
d_gid_712 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_712 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_736 (coe v0)
-- _.GovVote.vote
d_vote_714 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_726 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_718
d_vote_714 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_740 (coe v0)
-- _.GovVote.voter
d_voter_716 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_716 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_738 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_738 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_740 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_742 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_744 a0 = ()
-- _.PParams.Emax
d_Emax_890 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_890 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_360 (coe v0)
-- _.PParams.a
d_a_892 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_892 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_332 (coe v0)
-- _.PParams.a0
d_a0_894 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_894 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_364 (coe v0)
-- _.PParams.b
d_b_896 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_896 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_334 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_898 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_898 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_376 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_900 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_900 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_374 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_902 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_902 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_344 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_904 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_904 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_366 (coe v0)
-- _.PParams.costmdls
d_costmdls_906 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_906 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_368 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_384 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_382 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_912 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_372 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_380 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_378 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_918 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_336 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_324 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_316 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_924 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_328 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_926 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_320 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_928 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_352 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_930 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_350 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_322 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_318 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_326 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_938 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_348
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_358 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Refinement.T_Refinement_24
d_monetaryExpansion_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_340 (coe v0)
-- _.PParams.nopt
d_nopt_944 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_944 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_362 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_338 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_370 (coe v0)
-- _.PParams.prices
d_prices_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_346 (coe v0)
-- _.PParams.pv
d_pv_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_952 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_330 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_954 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_356 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_956 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_354 (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Refinement.T_Refinement_24
d_treasuryCut_958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_342 (coe v0)
-- _.Tx.body
d_body_1376 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2634 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532
d_body_1376 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2644 (coe v0)
-- _.Tx.isValid
d_isValid_1378 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2634 -> Bool
d_isValid_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2648 (coe v0)
-- _.Tx.txAD
d_txAD_1380 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2634 -> Maybe AgdaAny
d_txAD_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2650 (coe v0)
-- _.Tx.wits
d_wits_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2634 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2614
d_wits_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2646 (coe v0)
-- _.TxBody.collateral
d_collateral_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2608 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 -> Maybe Integer
d_curTreasury_1388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2602 (coe v0)
-- _.TxBody.mint
d_mint_1390 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 -> AgdaAny
d_mint_1390 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2582 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1392 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1392 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2576 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 -> [AgdaAny]
d_reqSigHash_1394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2610 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1396 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 -> Maybe AgdaAny
d_scriptIntHash_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2612 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1398 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 -> Maybe AgdaAny
d_txADhash_1398 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2598 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 -> Maybe AgdaAny
d_txNetworkId_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2600 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_838]
d_txcerts_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2586 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 -> Integer
d_txdonation_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2594 (coe v0)
-- _.TxBody.txfee
d_txfee_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 -> Integer
d_txfee_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2580 (coe v0)
-- _.TxBody.txid
d_txid_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 -> AgdaAny
d_txid_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2606 (coe v0)
-- _.TxBody.txins
d_txins_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2574 (coe v0)
-- _.TxBody.txouts
d_txouts_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2578 (coe v0)
-- _.TxBody.txprop
d_txprop_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_744]
d_txprop_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2592 (coe v0)
-- _.TxBody.txsize
d_txsize_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 -> Integer
d_txsize_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2604 (coe v0)
-- _.TxBody.txup
d_txup_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2596 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1420 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2584 (coe v0)
-- _.TxBody.txvote
d_txvote_1422 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_726]
d_txvote_1422 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2590 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1424 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1424 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2588 (coe v0)
-- Ledger.Ledger._.EnactState
d_EnactState_1504 a0 a1 = ()
-- Ledger.Ledger._.EnactState.cc
d_cc_1540 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1540 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_844 (coe v0)
-- Ledger.Ledger._.EnactState.constitution
d_constitution_1542 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1542 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_846 (coe v0)
-- Ledger.Ledger._.EnactState.pparams
d_pparams_1544 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1544 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_850 (coe v0)
-- Ledger.Ledger._.EnactState.pv
d_pv_1546 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1546 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_848 (coe v0)
-- Ledger.Ledger._.EnactState.withdrawals
d_withdrawals_1548 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1548 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_852 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1892 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1554 = erased
-- Ledger.Ledger._.GovState
d_GovState_1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 -> ()
d_GovState_1566 = erased
-- Ledger.Ledger._.To-GovEnv
d_To'45'GovEnv_1574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1574 ~v0 ~v1 = du_To'45'GovEnv_1574
du_To'45'GovEnv_1574 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1574
  = coe MAlonzo.Code.Ledger.Gov.du_To'45'GovEnv_1922
-- Ledger.Ledger._.To-UTxOEnv
d_To'45'UTxOEnv_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'UTxOEnv_1696 ~v0 ~v1 = du_To'45'UTxOEnv_1696
du_To'45'UTxOEnv_1696 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'UTxOEnv_1696
  = coe MAlonzo.Code.Ledger.Utxo.du_To'45'UTxOEnv_2042
-- Ledger.Ledger._.UTxOState
d_UTxOState_1706 a0 a1 = ()
-- Ledger.Ledger._.UTxOState.deposits
d_deposits_1818 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1818 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2036 (coe v0)
-- Ledger.Ledger._.UTxOState.donations
d_donations_1820 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 -> Integer
d_donations_1820 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2038 (coe v0)
-- Ledger.Ledger._.UTxOState.fees
d_fees_1822 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 -> Integer
d_fees_1822 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2034 (coe v0)
-- Ledger.Ledger._.UTxOState.utxo
d_utxo_1824 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1824 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2032 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1862 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_874 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_934 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_838] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_934 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1924 = erased
-- Ledger.Ledger._.CertState
d_CertState_1944 a0 a1 = ()
-- Ledger.Ledger._.To-CertEnv
d_To'45'CertEnv_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_1994 ~v0 ~v1 = du_To'45'CertEnv_1994
du_To'45'CertEnv_1994 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_1994
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_976
-- Ledger.Ledger._.CertState.dState
d_dState_2080 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_934 ->
  MAlonzo.Code.Ledger.Certs.T_DState_896
d_dState_2080 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_942 (coe v0)
-- Ledger.Ledger._.CertState.gState
d_gState_2082 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_934 ->
  MAlonzo.Code.Ledger.Certs.T_GState_922
d_gState_2082 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_946 (coe v0)
-- Ledger.Ledger._.CertState.pState
d_pState_2084 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_934 ->
  MAlonzo.Code.Ledger.Certs.T_PState_912
d_pState_2084 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_944 (coe v0)
-- Ledger.Ledger.LEnv
d_LEnv_2146 a0 a1 = ()
data T_LEnv_2146
  = C_LEnv'46'constructor_5001 AgdaAny (Maybe AgdaAny)
                               MAlonzo.Code.Ledger.PParams.T_PParams_244
                               MAlonzo.Code.Ledger.Enact.T_EnactState_832 Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2158 :: T_LEnv_2146 -> AgdaAny
d_slot_2158 v0
  = case coe v0 of
      C_LEnv'46'constructor_5001 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2160 :: T_LEnv_2146 -> Maybe AgdaAny
d_ppolicy_2160 v0
  = case coe v0 of
      C_LEnv'46'constructor_5001 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2162 ::
  T_LEnv_2146 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2162 v0
  = case coe v0 of
      C_LEnv'46'constructor_5001 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2164 ::
  T_LEnv_2146 -> MAlonzo.Code.Ledger.Enact.T_EnactState_832
d_enactState_2164 v0
  = case coe v0 of
      C_LEnv'46'constructor_5001 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2166 :: T_LEnv_2146 -> Integer
d_treasury_2166 v0
  = case coe v0 of
      C_LEnv'46'constructor_5001 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_2168 a0 a1 = ()
data T_LState_2168
  = C_'10214'_'44'_'44'_'10215''737'_2182 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_934
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2176 ::
  T_LState_2168 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_utxoSt_2176 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2182 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2178 ::
  T_LState_2168 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2178 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2182 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2180 ::
  T_LState_2168 -> MAlonzo.Code.Ledger.Certs.T_CertState_934
d_certState_2180 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2182 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.To-LEnv
d_To'45'LEnv_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_2184 ~v0 ~v1 = du_To'45'LEnv_2184
du_To'45'LEnv_2184 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_2184
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
                                 (2146 :: Integer) (9543913931307211001 :: Integer)
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
                                 (322 :: Integer) (9543913931307211001 :: Integer) "_.Slot"
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
                                    (2146 :: Integer) (9543913931307211001 :: Integer)
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
                                       (2146 :: Integer) (9543913931307211001 :: Integer)
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
                                          (2146 :: Integer) (9543913931307211001 :: Integer)
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
                                          (1504 :: Integer) (9543913931307211001 :: Integer)
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
                                             (2146 :: Integer) (9543913931307211001 :: Integer)
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
         (coe C_LEnv'46'constructor_5001))
-- Ledger.Ledger.To-LState
d_To'45'LState_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_2186 ~v0 ~v1 = du_To'45'LState_2186
du_To'45'LState_2186 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_2186
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
                                 (2168 :: Integer) (9543913931307211001 :: Integer)
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
                                 (1706 :: Integer) (9543913931307211001 :: Integer)
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
                                    (2168 :: Integer) (9543913931307211001 :: Integer)
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
                                    (1566 :: Integer) (9543913931307211001 :: Integer)
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
                                       (2168 :: Integer) (9543913931307211001 :: Integer)
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
                                       (1944 :: Integer) (9543913931307211001 :: Integer)
                                       "Ledger.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2182))
-- Ledger.Ledger.txgov
d_txgov_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2188 ~v0 ~v1 v2 = du_txgov_2188 v2
du_txgov_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2188 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2592 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2590 (coe v0)))
-- Ledger.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_934 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2238 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2238 v0 v2 v3
du_rmOrphanDRepVotes_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_934 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2238 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_go_2254 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_934 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_ifDRepRegistered_2248 = erased
-- Ledger.Ledger._.go
d_go_2254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_934 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_770 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_770
d_go_2254 v0 ~v1 v2 ~v3 v4 = du_go_2254 v0 v2 v4
du_go_2254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_934 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_770 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_770
du_go_2254 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_3975
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_792)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_670))
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
                          (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1230 (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1230 (coe v0))))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_548
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                    (coe
                       MAlonzo.Code.Ledger.Certs.d_dreps_928
                       (coe MAlonzo.Code.Ledger.Certs.d_gState_946 (coe v1))))))
         (MAlonzo.Code.Ledger.GovernanceActions.d_votes_782 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_784 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_786 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_788 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_790 (coe v2))
-- Ledger.Ledger.allColdCreds
d_allColdCreds_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_832 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_2258 ~v0 ~v1 v2 v3 = du_allColdCreds_2258 v2 v3
du_allColdCreds_2258 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_832 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_2258 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Enact.du_ccCreds_856
         (coe MAlonzo.Code.Ledger.Enact.d_cc_844 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_804
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_788
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2300 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2300
  = C_LEDGER'45'V_2348 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2350 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.txcerts
d_txcerts_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_15375 -> [MAlonzo.Code.Ledger.Certs.T_DCert_838]
d_txcerts_2322 ~v0 ~v1 v2 = du_txcerts_2322 v2
du_txcerts_2322 ::
  T_GeneralizeTel_15375 -> [MAlonzo.Code.Ledger.Certs.T_DCert_838]
du_txcerts_2322 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2586
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2644
         (coe d_'46'generalizedField'45'tx_15351 (coe v0)))
-- Ledger.Ledger._.txid
d_txid_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_15375 -> AgdaAny
d_txid_2328 ~v0 ~v1 v2 = du_txid_2328 v2
du_txid_2328 :: T_GeneralizeTel_15375 -> AgdaAny
du_txid_2328 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2606
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2644
         (coe d_'46'generalizedField'45'tx_15351 (coe v0)))
-- Ledger.Ledger._.txvote
d_txvote_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_15375 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_726]
d_txvote_2342 ~v0 ~v1 v2 = du_txvote_2342 v2
du_txvote_2342 ::
  T_GeneralizeTel_15375 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_726]
du_txvote_2342 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2590
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2644
         (coe d_'46'generalizedField'45'tx_15351 (coe v0)))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_15375 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2344 ~v0 ~v1 v2 = du_txwdrls_2344 v2
du_txwdrls_2344 ::
  T_GeneralizeTel_15375 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2344 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2588
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2644
         (coe d_'46'generalizedField'45'tx_15351 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_LEnv_2146 ->
  T_LState_2168 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2634] -> T_LState_2168 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2368 = erased
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_15351 ::
  T_GeneralizeTel_15375 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2634
d_'46'generalizedField'45'tx_15351 v0
  = case coe v0 of
      C_mkGeneralizeTel_15377 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_15353 ::
  T_GeneralizeTel_15375 -> MAlonzo.Code.Ledger.Certs.T_CertState_934
d_'46'generalizedField'45'certState_15353 v0
  = case coe v0 of
      C_mkGeneralizeTel_15377 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_15355 ::
  T_GeneralizeTel_15375 -> AgdaAny
d_'46'generalizedField'45'slot_15355 v0
  = case coe v0 of
      C_mkGeneralizeTel_15377 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_15357 ::
  T_GeneralizeTel_15375 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_'46'generalizedField'45'pp_15357 v0
  = case coe v0 of
      C_mkGeneralizeTel_15377 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_15359 ::
  T_GeneralizeTel_15375 -> Integer
d_'46'generalizedField'45'treasury_15359 v0
  = case coe v0 of
      C_mkGeneralizeTel_15377 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_15361 ::
  T_GeneralizeTel_15375 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_'46'generalizedField'45'utxoSt_15361 v0
  = case coe v0 of
      C_mkGeneralizeTel_15377 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_15363 ::
  T_GeneralizeTel_15375 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_'46'generalizedField'45'utxoSt''_15363 v0
  = case coe v0 of
      C_mkGeneralizeTel_15377 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_15365 ::
  T_GeneralizeTel_15375 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_15365 v0
  = case coe v0 of
      C_mkGeneralizeTel_15377 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_15367 ::
  T_GeneralizeTel_15375 -> MAlonzo.Code.Ledger.Enact.T_EnactState_832
d_'46'generalizedField'45'enactState_15367 v0
  = case coe v0 of
      C_mkGeneralizeTel_15377 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_15369 ::
  T_GeneralizeTel_15375 -> MAlonzo.Code.Ledger.Certs.T_CertState_934
d_'46'generalizedField'45'certState''_15369 v0
  = case coe v0 of
      C_mkGeneralizeTel_15377 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_15371 ::
  T_GeneralizeTel_15375 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_15371 v0
  = case coe v0 of
      C_mkGeneralizeTel_15377 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_15373 ::
  T_GeneralizeTel_15375 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_15373 v0
  = case coe v0 of
      C_mkGeneralizeTel_15377 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_15375 a0 a1 = ()
data T_GeneralizeTel_15375
  = C_mkGeneralizeTel_15377 MAlonzo.Code.Ledger.Transaction.T_Tx_2634
                            MAlonzo.Code.Ledger.Certs.T_CertState_934 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_PParams_244 Integer
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Enact.T_EnactState_832
                            MAlonzo.Code.Ledger.Certs.T_CertState_934 (Maybe AgdaAny)
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
