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
d_DecEq'45'GovRole_88 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_88 ~v0 = du_DecEq'45'GovRole_88
du_DecEq'45'GovRole_88 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_88
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_806
-- _.GovActionState
d_GovActionState_156 a0 = ()
-- _.GovProposal
d_GovProposal_162 a0 = ()
-- _.GovVote
d_GovVote_166 a0 = ()
-- _.PParams
d_PParams_228 a0 = ()
-- _.ScriptHash
d_ScriptHash_284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_284 = erased
-- _.Slot
d_Slot_330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_330 = erased
-- _.Tx
d_Tx_362 a0 = ()
-- _.TxBody
d_TxBody_364 a0 = ()
-- _.Voter
d_Voter_398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_398 = erased
-- _.epoch
d_epoch_428 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_428 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0))
-- _.GovActionState.action
d_action_666 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_782 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_712
d_action_666 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_800 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_668 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_782 ->
  AgdaAny
d_expiresIn_668 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_798 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_670 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_782 ->
  AgdaAny
d_prevAction_670 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_802 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_672 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_782 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_672 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_796 (coe v0)
-- _.GovActionState.votes
d_votes_674 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_782 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_674 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_794 (coe v0)
-- _.GovProposal.action
d_action_710 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_712
d_action_710 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_770 (coe v0)
-- _.GovProposal.anchor
d_anchor_712 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_712 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_780 (coe v0)
-- _.GovProposal.deposit
d_deposit_714 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756 -> Integer
d_deposit_714 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_776 (coe v0)
-- _.GovProposal.policy
d_policy_716 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756 ->
  Maybe AgdaAny
d_policy_716 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_774 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_718 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756 -> AgdaAny
d_prevAction_718 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_772 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_720 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_720 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_778 (coe v0)
-- _.GovVote.anchor
d_anchor_732 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_738 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_732 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_754 (coe v0)
-- _.GovVote.gid
d_gid_734 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_734 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_748 (coe v0)
-- _.GovVote.vote
d_vote_736 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_738 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_730
d_vote_736 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_752 (coe v0)
-- _.GovVote.voter
d_voter_738 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_738 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_750 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_764 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_768 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_770 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_772 a0 = ()
-- _.PParams.Emax
d_Emax_926 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_926 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_928 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_928 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_930 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_932 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_932 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_940 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_960 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_962 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_964 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_964 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_966 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_966 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_968 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_968 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_970 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_970 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_972 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_972 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_974 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_974 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_976 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_976 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_978 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_978 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_980 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_980 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_982 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_982 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_984 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_984 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_986 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_986 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_988 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_988 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_990 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_990 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- _.Tx.body
d_body_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2642 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540
d_body_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2652 (coe v0)
-- _.Tx.isValid
d_isValid_1406 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2642 -> Bool
d_isValid_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2656 (coe v0)
-- _.Tx.txAD
d_txAD_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2642 -> Maybe AgdaAny
d_txAD_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2658 (coe v0)
-- _.Tx.wits
d_wits_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2642 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2622
d_wits_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2654 (coe v0)
-- _.TxBody.collateral
d_collateral_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2616 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 -> Maybe Integer
d_curTreasury_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2610 (coe v0)
-- _.TxBody.mint
d_mint_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 -> AgdaAny
d_mint_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2590 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1420 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2584 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1422 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 -> [AgdaAny]
d_reqSigHash_1422 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2618 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1424 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 -> Maybe AgdaAny
d_scriptIntHash_1424 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2620 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1426 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 -> Maybe AgdaAny
d_txADhash_1426 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2606 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1428 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 -> Maybe AgdaAny
d_txNetworkId_1428 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2608 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1430 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_852]
d_txcerts_1430 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2594 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1432 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 -> Integer
d_txdonation_1432 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2602 (coe v0)
-- _.TxBody.txfee
d_txfee_1434 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 -> Integer
d_txfee_1434 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2588 (coe v0)
-- _.TxBody.txid
d_txid_1436 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 -> AgdaAny
d_txid_1436 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2614 (coe v0)
-- _.TxBody.txins
d_txins_1438 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1438 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2582 (coe v0)
-- _.TxBody.txouts
d_txouts_1440 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1440 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2586 (coe v0)
-- _.TxBody.txprop
d_txprop_1442 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_756]
d_txprop_1442 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2600 (coe v0)
-- _.TxBody.txsize
d_txsize_1444 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 -> Integer
d_txsize_1444 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2612 (coe v0)
-- _.TxBody.txup
d_txup_1446 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1446 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2604 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1448 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1448 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2592 (coe v0)
-- _.TxBody.txvote
d_txvote_1450 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_738]
d_txvote_1450 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2598 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1452 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1452 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2596 (coe v0)
-- Ledger.Ledger._.EnactState
d_EnactState_1532 a0 a1 = ()
-- Ledger.Ledger._.EnactState.cc
d_cc_1568 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_846 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1568 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_858 (coe v0)
-- Ledger.Ledger._.EnactState.constitution
d_constitution_1570 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_846 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1570 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_860 (coe v0)
-- Ledger.Ledger._.EnactState.pparams
d_pparams_1572 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_846 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1572 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_864 (coe v0)
-- Ledger.Ledger._.EnactState.pv
d_pv_1574 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_846 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1574 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_862 (coe v0)
-- Ledger.Ledger._.EnactState.withdrawals
d_withdrawals_1576 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_846 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1576 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_866 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1582 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1920 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1582 = erased
-- Ledger.Ledger._.GovState
d_GovState_1594 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 -> ()
d_GovState_1594 = erased
-- Ledger.Ledger._.To-GovEnv
d_To'45'GovEnv_1602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1602 ~v0 ~v1 = du_To'45'GovEnv_1602
du_To'45'GovEnv_1602 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1602
  = coe MAlonzo.Code.Ledger.Gov.du_To'45'GovEnv_1950
-- Ledger.Ledger._.To-UTxOEnv
d_To'45'UTxOEnv_1726 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'UTxOEnv_1726 ~v0 ~v1 = du_To'45'UTxOEnv_1726
du_To'45'UTxOEnv_1726 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'UTxOEnv_1726
  = coe MAlonzo.Code.Ledger.Utxo.du_To'45'UTxOEnv_2076
-- Ledger.Ledger._.UTxOState
d_UTxOState_1736 a0 a1 = ()
-- Ledger.Ledger._.UTxOState.deposits
d_deposits_1848 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1848 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2070 (coe v0)
-- Ledger.Ledger._.UTxOState.donations
d_donations_1850 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056 -> Integer
d_donations_1850 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2072 (coe v0)
-- Ledger.Ledger._.UTxOState.fees
d_fees_1852 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056 -> Integer
d_fees_1852 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2068 (coe v0)
-- Ledger.Ledger._.UTxOState.utxo
d_utxo_1854 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1854 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2066 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1892 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_852] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_948 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1954 = erased
-- Ledger.Ledger._.CertState
d_CertState_1974 a0 a1 = ()
-- Ledger.Ledger._.To-CertEnv
d_To'45'CertEnv_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_2024 ~v0 ~v1 = du_To'45'CertEnv_2024
du_To'45'CertEnv_2024 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_2024
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_990
-- Ledger.Ledger._.CertState.dState
d_dState_2110 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  MAlonzo.Code.Ledger.Certs.T_DState_910
d_dState_2110 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_956 (coe v0)
-- Ledger.Ledger._.CertState.gState
d_gState_2112 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  MAlonzo.Code.Ledger.Certs.T_GState_936
d_gState_2112 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_960 (coe v0)
-- Ledger.Ledger._.CertState.pState
d_pState_2114 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  MAlonzo.Code.Ledger.Certs.T_PState_926
d_pState_2114 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_958 (coe v0)
-- Ledger.Ledger.LEnv
d_LEnv_2176 a0 a1 = ()
data T_LEnv_2176
  = C_LEnv'46'constructor_5027 AgdaAny (Maybe AgdaAny)
                               MAlonzo.Code.Ledger.PParams.T_PParams_244
                               MAlonzo.Code.Ledger.Enact.T_EnactState_846 Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2188 :: T_LEnv_2176 -> AgdaAny
d_slot_2188 v0
  = case coe v0 of
      C_LEnv'46'constructor_5027 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2190 :: T_LEnv_2176 -> Maybe AgdaAny
d_ppolicy_2190 v0
  = case coe v0 of
      C_LEnv'46'constructor_5027 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2192 ::
  T_LEnv_2176 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2192 v0
  = case coe v0 of
      C_LEnv'46'constructor_5027 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2194 ::
  T_LEnv_2176 -> MAlonzo.Code.Ledger.Enact.T_EnactState_846
d_enactState_2194 v0
  = case coe v0 of
      C_LEnv'46'constructor_5027 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2196 :: T_LEnv_2176 -> Integer
d_treasury_2196 v0
  = case coe v0 of
      C_LEnv'46'constructor_5027 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_2198 a0 a1 = ()
data T_LState_2198
  = C_'10214'_'44'_'44'_'10215''737'_2212 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_948
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2206 ::
  T_LState_2198 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
d_utxoSt_2206 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2212 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2208 ::
  T_LState_2198 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2208 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2212 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2210 ::
  T_LState_2198 -> MAlonzo.Code.Ledger.Certs.T_CertState_948
d_certState_2210 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2212 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.To-LEnv
d_To'45'LEnv_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_2214 ~v0 ~v1 = du_To'45'LEnv_2214
du_To'45'LEnv_2214 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_2214
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
                                 (2176 :: Integer) (9543913931307211001 :: Integer)
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
                                 (330 :: Integer) (9543913931307211001 :: Integer) "_.Slot"
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
                                    (2176 :: Integer) (9543913931307211001 :: Integer)
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
                                                (284 :: Integer) (9543913931307211001 :: Integer)
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
                                       (2176 :: Integer) (9543913931307211001 :: Integer)
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
                                       (228 :: Integer) (9543913931307211001 :: Integer) "_.PParams"
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
                                          (2176 :: Integer) (9543913931307211001 :: Integer)
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
                                          (1532 :: Integer) (9543913931307211001 :: Integer)
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
                                             (2176 :: Integer) (9543913931307211001 :: Integer)
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
         (coe C_LEnv'46'constructor_5027))
-- Ledger.Ledger.To-LState
d_To'45'LState_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_2216 ~v0 ~v1 = du_To'45'LState_2216
du_To'45'LState_2216 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_2216
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
                                 (2198 :: Integer) (9543913931307211001 :: Integer)
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
                                 (1736 :: Integer) (9543913931307211001 :: Integer)
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
                                    (2198 :: Integer) (9543913931307211001 :: Integer)
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
                                    (1594 :: Integer) (9543913931307211001 :: Integer)
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
                                       (2198 :: Integer) (9543913931307211001 :: Integer)
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
                                       (1974 :: Integer) (9543913931307211001 :: Integer)
                                       "Ledger.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2212))
-- Ledger.Ledger.txgov
d_txgov_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2218 ~v0 ~v1 v2 = du_txgov_2218 v2
du_txgov_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2218 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2600 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2598 (coe v0)))
-- Ledger.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2268 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2268 v0 v2 v3
du_rmOrphanDRepVotes_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2268 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_go_2284 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_ifDRepRegistered_2278 = erased
-- Ledger.Ledger._.go
d_go_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_782 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_782
d_go_2284 v0 ~v1 v2 ~v3 v4 = du_go_2284 v0 v2 v4
du_go_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_782 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_782
du_go_2284 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4343
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_806)
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
                       MAlonzo.Code.Ledger.Certs.d_dreps_942
                       (coe MAlonzo.Code.Ledger.Certs.d_gState_960 (coe v1))))))
         (MAlonzo.Code.Ledger.GovernanceActions.d_votes_794 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_796 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_798 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_800 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_802 (coe v2))
-- Ledger.Ledger.allColdCreds
d_allColdCreds_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_846 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_2288 ~v0 ~v1 v2 v3 = du_allColdCreds_2288 v2 v3
du_allColdCreds_2288 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_846 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_2288 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Enact.du_ccCreds_870
         (coe MAlonzo.Code.Ledger.Enact.d_cc_858 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_818
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_800
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2330 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2330
  = C_LEDGER'45'V_2378 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2380 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.txcerts
d_txcerts_2352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_15401 -> [MAlonzo.Code.Ledger.Certs.T_DCert_852]
d_txcerts_2352 ~v0 ~v1 v2 = du_txcerts_2352 v2
du_txcerts_2352 ::
  T_GeneralizeTel_15401 -> [MAlonzo.Code.Ledger.Certs.T_DCert_852]
du_txcerts_2352 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2594
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2652
         (coe d_'46'generalizedField'45'tx_15377 (coe v0)))
-- Ledger.Ledger._.txid
d_txid_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_15401 -> AgdaAny
d_txid_2358 ~v0 ~v1 v2 = du_txid_2358 v2
du_txid_2358 :: T_GeneralizeTel_15401 -> AgdaAny
du_txid_2358 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2614
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2652
         (coe d_'46'generalizedField'45'tx_15377 (coe v0)))
-- Ledger.Ledger._.txvote
d_txvote_2372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_15401 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_738]
d_txvote_2372 ~v0 ~v1 v2 = du_txvote_2372 v2
du_txvote_2372 ::
  T_GeneralizeTel_15401 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_738]
du_txvote_2372 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2598
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2652
         (coe d_'46'generalizedField'45'tx_15377 (coe v0)))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2374 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_15401 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2374 ~v0 ~v1 v2 = du_txwdrls_2374 v2
du_txwdrls_2374 ::
  T_GeneralizeTel_15401 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2374 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2596
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2652
         (coe d_'46'generalizedField'45'tx_15377 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_LEnv_2176 ->
  T_LState_2198 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2642] -> T_LState_2198 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2398 = erased
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_15377 ::
  T_GeneralizeTel_15401 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2642
d_'46'generalizedField'45'tx_15377 v0
  = case coe v0 of
      C_mkGeneralizeTel_15403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_15379 ::
  T_GeneralizeTel_15401 -> MAlonzo.Code.Ledger.Certs.T_CertState_948
d_'46'generalizedField'45'certState_15379 v0
  = case coe v0 of
      C_mkGeneralizeTel_15403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_15381 ::
  T_GeneralizeTel_15401 -> AgdaAny
d_'46'generalizedField'45'slot_15381 v0
  = case coe v0 of
      C_mkGeneralizeTel_15403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_15383 ::
  T_GeneralizeTel_15401 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_'46'generalizedField'45'pp_15383 v0
  = case coe v0 of
      C_mkGeneralizeTel_15403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_15385 ::
  T_GeneralizeTel_15401 -> Integer
d_'46'generalizedField'45'treasury_15385 v0
  = case coe v0 of
      C_mkGeneralizeTel_15403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_15387 ::
  T_GeneralizeTel_15401 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
d_'46'generalizedField'45'utxoSt_15387 v0
  = case coe v0 of
      C_mkGeneralizeTel_15403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_15389 ::
  T_GeneralizeTel_15401 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
d_'46'generalizedField'45'utxoSt''_15389 v0
  = case coe v0 of
      C_mkGeneralizeTel_15403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_15391 ::
  T_GeneralizeTel_15401 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_15391 v0
  = case coe v0 of
      C_mkGeneralizeTel_15403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_15393 ::
  T_GeneralizeTel_15401 -> MAlonzo.Code.Ledger.Enact.T_EnactState_846
d_'46'generalizedField'45'enactState_15393 v0
  = case coe v0 of
      C_mkGeneralizeTel_15403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_15395 ::
  T_GeneralizeTel_15401 -> MAlonzo.Code.Ledger.Certs.T_CertState_948
d_'46'generalizedField'45'certState''_15395 v0
  = case coe v0 of
      C_mkGeneralizeTel_15403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_15397 ::
  T_GeneralizeTel_15401 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_15397 v0
  = case coe v0 of
      C_mkGeneralizeTel_15403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_15399 ::
  T_GeneralizeTel_15401 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_15399 v0
  = case coe v0 of
      C_mkGeneralizeTel_15403 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_15401 a0 a1 = ()
data T_GeneralizeTel_15401
  = C_mkGeneralizeTel_15403 MAlonzo.Code.Ledger.Transaction.T_Tx_2642
                            MAlonzo.Code.Ledger.Certs.T_CertState_948 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_PParams_244 Integer
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Enact.T_EnactState_846
                            MAlonzo.Code.Ledger.Certs.T_CertState_948 (Maybe AgdaAny)
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
