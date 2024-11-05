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
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_90 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_90 ~v0 = du_DecEq'45'GovRole_90
du_DecEq'45'GovRole_90 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_90
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824
-- _.GovActionState
d_GovActionState_160 a0 = ()
-- _.GovProposal
d_GovProposal_164 a0 = ()
-- _.GovVote
d_GovVote_168 a0 = ()
-- _.PParams
d_PParams_234 a0 = ()
-- _.ScriptHash
d_ScriptHash_290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_290 = erased
-- _.Slot
d_Slot_338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_338 = erased
-- _.Tx
d_Tx_368 a0 = ()
-- _.TxBody
d_TxBody_370 a0 = ()
-- _.Voter
d_Voter_404 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_404 = erased
-- _.epoch
d_epoch_438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_438 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
-- _.GovActionState.action
d_action_678 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_678 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_820 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_680 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  AgdaAny
d_expiresIn_680 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_818 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_682 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  AgdaAny
d_prevAction_682 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_822 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_684 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_684 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816 (coe v0)
-- _.GovActionState.votes
d_votes_686 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_686 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_814 (coe v0)
-- _.GovProposal.action
d_action_718 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_718 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_790 (coe v0)
-- _.GovProposal.anchor
d_anchor_720 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_720 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_800 (coe v0)
-- _.GovProposal.deposit
d_deposit_722 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> Integer
d_deposit_722 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_796 (coe v0)
-- _.GovProposal.policy
d_policy_724 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Maybe AgdaAny
d_policy_724 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_794 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_726 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> AgdaAny
d_prevAction_726 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_792 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_728 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_728 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_798 (coe v0)
-- _.GovVote.anchor
d_anchor_740 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_740 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- _.GovVote.gid
d_gid_742 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_742 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_768 (coe v0)
-- _.GovVote.vote
d_vote_744 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750
d_vote_744 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_772 (coe v0)
-- _.GovVote.voter
d_voter_746 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_746 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_770 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_768 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_770 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_772 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_774 a0 = ()
-- _.PParams.Emax
d_Emax_922 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_922 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_924 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_924 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_926 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_928 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_928 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_936 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_956 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_960 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_962 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_964 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_964 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_966 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_966 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_968 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_968 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_970 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_970 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_972 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_972 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_974 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_974 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_976 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_976 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_978 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_978 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_980 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_980 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_982 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_982 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_984 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_984 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_986 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_986 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- _.Tx.body
d_body_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
d_body_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0)
-- _.Tx.isValid
d_isValid_1402 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Bool
d_isValid_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v0)
-- _.Tx.txAD
d_txAD_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Maybe AgdaAny
d_txAD_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2686 (coe v0)
-- _.Tx.wits
d_wits_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650
d_wits_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v0)
-- _.TxBody.collateral
d_collateral_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2644 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe Integer
d_curTreasury_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2638 (coe v0)
-- _.TxBody.mint
d_mint_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> AgdaAny
d_mint_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2618 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2612 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> [AgdaAny]
d_reqSigHash_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2646 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1420 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe AgdaAny
d_scriptIntHash_1420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2648 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1422 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe AgdaAny
d_txADhash_1422 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2634 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1424 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe AgdaAny
d_txNetworkId_1424 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2636 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1426 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_1426 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2622 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1428 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txdonation_1428 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2630 (coe v0)
-- _.TxBody.txfee
d_txfee_1430 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txfee_1430 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2616 (coe v0)
-- _.TxBody.txid
d_txid_1432 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> AgdaAny
d_txid_1432 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2642 (coe v0)
-- _.TxBody.txins
d_txins_1434 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1434 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2610 (coe v0)
-- _.TxBody.txouts
d_txouts_1436 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1436 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2614 (coe v0)
-- _.TxBody.txprop
d_txprop_1438 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776]
d_txprop_1438 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2628 (coe v0)
-- _.TxBody.txsize
d_txsize_1440 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txsize_1440 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2640 (coe v0)
-- _.TxBody.txup
d_txup_1442 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1442 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2632 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1444 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1444 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2620 (coe v0)
-- _.TxBody.txvote
d_txvote_1446 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_txvote_1446 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2626 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1448 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1448 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2624 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState
d_EnactState_1528 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.EnactState.cc
d_cc_1564 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1564 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.constitution
d_constitution_1566 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1566 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_866 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.pparams
d_pparams_1568 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1568 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_870 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.pv
d_pv_1570 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1570 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_868 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.EnactState.withdrawals
d_withdrawals_1572 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1572 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_872 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1588 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv
d_GovEnv_1596 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1598 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 -> ()
d_GovState_1598 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv.certState
d_certState_1666 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_certState_1958
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.enactState
d_enactState_1668 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_1956
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.epoch
d_epoch_1670 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934 -> AgdaAny
d_epoch_1670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_1950 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.pparams
d_pparams_1672 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_1952 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.ppolicy
d_ppolicy_1674 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934 ->
  Maybe AgdaAny
d_ppolicy_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_1954 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.txid
d_txid_1676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934 -> AgdaAny
d_txid_1676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_1948 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1722 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1772 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1772 v0 ~v1 = du_updateDeposits_1772 v0
du_updateDeposits_1772 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateDeposits_1914
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1818 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1994
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1820 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980 ->
  Integer
d_donations_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1996
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1822 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980 ->
  Integer
d_fees_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1992 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1824 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1838 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1900 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1900 = erased
-- Ledger.Conway.Conformance.Ledger._.CertEnv
d_CertEnv_1926 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1928 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.CertEnv.epoch
d_epoch_2062 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_888 -> AgdaAny
d_epoch_2062 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_898 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.pp
d_pp_2064 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_2064 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_900 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.votes
d_votes_2066 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_votes_2066 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_902 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.wdrls
d_wdrls_2068 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2068 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_904 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2072 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050
d_dState_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2074 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1070
d_gState_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1098 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2076 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Certs.T_PState_924
d_pState_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1096 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LEnv
d_LEnv_2140 a0 a1 = ()
data T_LEnv_2140
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2162 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_244
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_852
                                                          Integer
-- Ledger.Conway.Conformance.Ledger.LEnv.slot
d_slot_2152 :: T_LEnv_2140 -> AgdaAny
d_slot_2152 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2162 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.ppolicy
d_ppolicy_2154 :: T_LEnv_2140 -> Maybe AgdaAny
d_ppolicy_2154 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2162 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.pparams
d_pparams_2156 ::
  T_LEnv_2140 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2156 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2162 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.enactState
d_enactState_2158 ::
  T_LEnv_2140 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2158 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2162 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LEnv.treasury
d_treasury_2160 :: T_LEnv_2140 -> Integer
d_treasury_2160 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2162 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2164 a0 a1 = ()
data T_LState_2164
  = C_'10214'_'44'_'44'_'10215''737'_2178 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2172 ::
  T_LState_2164 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
d_utxoSt_2172 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2178 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2174 ::
  T_LState_2164 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2174 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2178 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2176 ::
  T_LState_2164 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_2176 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2178 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.txgov
d_txgov_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2180 ~v0 ~v1 v2 = du_txgov_2180 v2
du_txgov_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2180 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2628 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2626 (coe v0)))
-- Ledger.Conway.Conformance.Ledger.isUnregisteredDRep
d_isUnregisteredDRep_2230 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_isUnregisteredDRep_2230 = erased
-- Ledger.Conway.Conformance.Ledger.removeOrphanDRepVotes
d_removeOrphanDRepVotes_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802
d_removeOrphanDRepVotes_2238 v0 ~v1 v2 v3
  = du_removeOrphanDRepVotes_2238 v0 v2 v3
du_removeOrphanDRepVotes_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802
du_removeOrphanDRepVotes_2238 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_7003
      (coe du_votes'8242'_2248 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_818 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_820 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_822 (coe v2))
-- Ledger.Conway.Conformance.Ledger._.votes′
d_votes'8242'_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes'8242'_2248 v0 ~v1 v2 v3 = du_votes'8242'_2248 v0 v2 v3
du_votes'8242'_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_votes'8242'_2248 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_690))
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
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                          (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                    (coe
                       MAlonzo.Code.Class.IsSet.du_dom_548
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1078
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1098
                             (coe v1)))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
      (MAlonzo.Code.Ledger.GovernanceActions.d_votes_814 (coe v2))
-- Ledger.Conway.Conformance.Ledger._|ᵒ_
d__'124''7506'__2250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'124''7506'__2250 v0 ~v1 v2 v3 = du__'124''7506'__2250 v0 v2 v3
du__'124''7506'__2250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'124''7506'__2250 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_removeOrphanDRepVotes_2238 (coe v0) (coe v2)))
      (coe v1)
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2272 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2272
  = C_LEDGER'45'V_2354 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2434 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_2276 ~v0 ~v1 v2 = du_certState_2276 v2
du_certState_2276 ::
  T_GeneralizeTel_11101 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
du_certState_2276 v0
  = coe
      d_certState_2176 (coe d_'46'generalizedField'45's_11089 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2278 ~v0 ~v1 v2 = du_govSt_2278 v2
du_govSt_2278 ::
  T_GeneralizeTel_11101 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2278 v0
  = coe d_govSt_2174 (coe d_'46'generalizedField'45's_11089 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
d_utxoSt_2280 ~v0 ~v1 v2 = du_utxoSt_2280 v2
du_utxoSt_2280 ::
  T_GeneralizeTel_11101 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
du_utxoSt_2280 v0
  = coe
      d_utxoSt_2172 (coe d_'46'generalizedField'45's_11089 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_2302 ~v0 ~v1 v2 = du_txcerts_2302 v2
du_txcerts_2302 ::
  T_GeneralizeTel_11101 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
du_txcerts_2302 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2622
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_11091 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2308 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 -> AgdaAny
d_txid_2308 ~v0 ~v1 v2 = du_txid_2308 v2
du_txid_2308 :: T_GeneralizeTel_11101 -> AgdaAny
du_txid_2308 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2642
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_11091 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_txvote_2322 ~v0 ~v1 v2 = du_txvote_2322 v2
du_txvote_2322 ::
  T_GeneralizeTel_11101 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
du_txvote_2322 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2626
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_11091 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2324 ~v0 ~v1 v2 = du_txwdrls_2324 v2
du_txwdrls_2324 ::
  T_GeneralizeTel_11101 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2324 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2624
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_11091 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2328 ~v0 ~v1 v2 = du_enactState_2328 v2
du_enactState_2328 ::
  T_GeneralizeTel_11101 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_enactState_2328 v0
  = coe
      d_enactState_2158 (coe d_'46'generalizedField'45'Γ_11093 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2330 ~v0 ~v1 v2 = du_pparams_2330 v2
du_pparams_2330 ::
  T_GeneralizeTel_11101 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2330 v0
  = coe
      d_pparams_2156 (coe d_'46'generalizedField'45'Γ_11093 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 -> Maybe AgdaAny
d_ppolicy_2332 ~v0 ~v1 v2 = du_ppolicy_2332 v2
du_ppolicy_2332 :: T_GeneralizeTel_11101 -> Maybe AgdaAny
du_ppolicy_2332 v0
  = coe
      d_ppolicy_2154 (coe d_'46'generalizedField'45'Γ_11093 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 -> AgdaAny
d_slot_2334 ~v0 ~v1 v2 = du_slot_2334 v2
du_slot_2334 :: T_GeneralizeTel_11101 -> AgdaAny
du_slot_2334 v0
  = coe d_slot_2152 (coe d_'46'generalizedField'45'Γ_11093 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 -> Integer
d_treasury_2336 ~v0 ~v1 v2 = du_treasury_2336 v2
du_treasury_2336 :: T_GeneralizeTel_11101 -> Integer
du_treasury_2336 v0
  = coe
      d_treasury_2160 (coe d_'46'generalizedField'45'Γ_11093 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2344 ~v0 ~v1 v2 = du_enactState_2344 v2
du_enactState_2344 ::
  T_GeneralizeTel_11101 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_enactState_2344 v0
  = coe
      d_enactState_2158 (coe d_'46'generalizedField'45'Γ_11093 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2346 ~v0 ~v1 v2 = du_pparams_2346 v2
du_pparams_2346 ::
  T_GeneralizeTel_11101 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2346 v0
  = coe
      d_pparams_2156 (coe d_'46'generalizedField'45'Γ_11093 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 -> Maybe AgdaAny
d_ppolicy_2348 ~v0 ~v1 v2 = du_ppolicy_2348 v2
du_ppolicy_2348 :: T_GeneralizeTel_11101 -> Maybe AgdaAny
du_ppolicy_2348 v0
  = coe
      d_ppolicy_2154 (coe d_'46'generalizedField'45'Γ_11093 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 -> AgdaAny
d_slot_2350 ~v0 ~v1 v2 = du_slot_2350 v2
du_slot_2350 :: T_GeneralizeTel_11101 -> AgdaAny
du_slot_2350 v0
  = coe d_slot_2152 (coe d_'46'generalizedField'45'Γ_11093 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11101 -> Integer
d_treasury_2352 ~v0 ~v1 v2 = du_treasury_2352 v2
du_treasury_2352 :: T_GeneralizeTel_11101 -> Integer
du_treasury_2352 v0
  = coe
      d_treasury_2160 (coe d_'46'generalizedField'45'Γ_11093 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11521 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_2358 ~v0 ~v1 v2 = du_certState_2358 v2
du_certState_2358 ::
  T_GeneralizeTel_11521 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
du_certState_2358 v0
  = coe
      d_certState_2176 (coe d_'46'generalizedField'45's_11513 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11521 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2360 ~v0 ~v1 v2 = du_govSt_2360 v2
du_govSt_2360 ::
  T_GeneralizeTel_11521 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2360 v0
  = coe d_govSt_2174 (coe d_'46'generalizedField'45's_11513 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2362 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11521 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
d_utxoSt_2362 ~v0 ~v1 v2 = du_utxoSt_2362 v2
du_utxoSt_2362 ::
  T_GeneralizeTel_11521 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
du_utxoSt_2362 v0
  = coe
      d_utxoSt_2172 (coe d_'46'generalizedField'45's_11513 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11521 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2410 ~v0 ~v1 v2 = du_enactState_2410 v2
du_enactState_2410 ::
  T_GeneralizeTel_11521 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_enactState_2410 v0
  = coe
      d_enactState_2158 (coe d_'46'generalizedField'45'Γ_11517 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11521 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2412 ~v0 ~v1 v2 = du_pparams_2412 v2
du_pparams_2412 ::
  T_GeneralizeTel_11521 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2412 v0
  = coe
      d_pparams_2156 (coe d_'46'generalizedField'45'Γ_11517 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2414 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11521 -> Maybe AgdaAny
d_ppolicy_2414 ~v0 ~v1 v2 = du_ppolicy_2414 v2
du_ppolicy_2414 :: T_GeneralizeTel_11521 -> Maybe AgdaAny
du_ppolicy_2414 v0
  = coe
      d_ppolicy_2154 (coe d_'46'generalizedField'45'Γ_11517 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11521 -> AgdaAny
d_slot_2416 ~v0 ~v1 v2 = du_slot_2416 v2
du_slot_2416 :: T_GeneralizeTel_11521 -> AgdaAny
du_slot_2416 v0
  = coe d_slot_2152 (coe d_'46'generalizedField'45'Γ_11517 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2418 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11521 -> Integer
d_treasury_2418 ~v0 ~v1 v2 = du_treasury_2418 v2
du_treasury_2418 :: T_GeneralizeTel_11521 -> Integer
du_treasury_2418 v0
  = coe
      d_treasury_2160 (coe d_'46'generalizedField'45'Γ_11517 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11521 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2424 ~v0 ~v1 v2 = du_enactState_2424 v2
du_enactState_2424 ::
  T_GeneralizeTel_11521 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_enactState_2424 v0
  = coe
      d_enactState_2158 (coe d_'46'generalizedField'45'Γ_11517 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11521 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2426 ~v0 ~v1 v2 = du_pparams_2426 v2
du_pparams_2426 ::
  T_GeneralizeTel_11521 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2426 v0
  = coe
      d_pparams_2156 (coe d_'46'generalizedField'45'Γ_11517 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2428 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11521 -> Maybe AgdaAny
d_ppolicy_2428 ~v0 ~v1 v2 = du_ppolicy_2428 v2
du_ppolicy_2428 :: T_GeneralizeTel_11521 -> Maybe AgdaAny
du_ppolicy_2428 v0
  = coe
      d_ppolicy_2154 (coe d_'46'generalizedField'45'Γ_11517 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11521 -> AgdaAny
d_slot_2430 ~v0 ~v1 v2 = du_slot_2430 v2
du_slot_2430 :: T_GeneralizeTel_11521 -> AgdaAny
du_slot_2430 v0
  = coe d_slot_2152 (coe d_'46'generalizedField'45'Γ_11517 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_11521 -> Integer
d_treasury_2432 ~v0 ~v1 v2 = du_treasury_2432 v2
du_treasury_2432 :: T_GeneralizeTel_11521 -> Integer
du_treasury_2432 v0
  = coe
      d_treasury_2160 (coe d_'46'generalizedField'45'Γ_11517 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_LEnv_2140 ->
  T_LState_2164 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2670] -> T_LState_2164 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2452 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_11089 ::
  T_GeneralizeTel_11101 -> T_LState_2164
d_'46'generalizedField'45's_11089 v0
  = case coe v0 of
      C_mkGeneralizeTel_11103 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_11091 ::
  T_GeneralizeTel_11101 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2670
d_'46'generalizedField'45'tx_11091 v0
  = case coe v0 of
      C_mkGeneralizeTel_11103 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_11093 ::
  T_GeneralizeTel_11101 -> T_LEnv_2140
d_'46'generalizedField'45'Γ_11093 v0
  = case coe v0 of
      C_mkGeneralizeTel_11103 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_11095 ::
  T_GeneralizeTel_11101 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
d_'46'generalizedField'45'utxoSt''_11095 v0
  = case coe v0 of
      C_mkGeneralizeTel_11103 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_11097 ::
  T_GeneralizeTel_11101 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_'46'generalizedField'45'certState''_11097 v0
  = case coe v0 of
      C_mkGeneralizeTel_11103 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_11099 ::
  T_GeneralizeTel_11101 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_11099 v0
  = case coe v0 of
      C_mkGeneralizeTel_11103 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_11101 a0 a1 = ()
data T_GeneralizeTel_11101
  = C_mkGeneralizeTel_11103 T_LState_2164
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2670 T_LEnv_2140
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_11513 ::
  T_GeneralizeTel_11521 -> T_LState_2164
d_'46'generalizedField'45's_11513 v0
  = case coe v0 of
      C_mkGeneralizeTel_11523 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_11515 ::
  T_GeneralizeTel_11521 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2670
d_'46'generalizedField'45'tx_11515 v0
  = case coe v0 of
      C_mkGeneralizeTel_11523 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_11517 ::
  T_GeneralizeTel_11521 -> T_LEnv_2140
d_'46'generalizedField'45'Γ_11517 v0
  = case coe v0 of
      C_mkGeneralizeTel_11523 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_11519 ::
  T_GeneralizeTel_11521 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
d_'46'generalizedField'45'utxoSt''_11519 v0
  = case coe v0 of
      C_mkGeneralizeTel_11523 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_11521 a0 a1 = ()
data T_GeneralizeTel_11521
  = C_mkGeneralizeTel_11523 T_LState_2164
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2670 T_LEnv_2140
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
