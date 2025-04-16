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
import qualified MAlonzo.Code.Data.Refinement.Base
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
d_Credential_40 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_72 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_72 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1214 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1214 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_82 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_82 ~v0 = du_DecEq'45'GovRole_82
du_DecEq'45'GovRole_82 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_82
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_808
-- _.GovActionState
d_GovActionState_150 a0 = ()
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
d_epoch_422 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_422 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1490 (coe v0))
-- _.GovActionState.action
d_action_654 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_784 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_714
d_action_654 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_802 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_656 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_784 ->
  AgdaAny
d_expiresIn_656 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_800 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_658 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_784 ->
  AgdaAny
d_prevAction_658 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_804 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_660 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_784 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_660 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_798 (coe v0)
-- _.GovActionState.votes
d_votes_662 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_784 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_662 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_796 (coe v0)
-- _.GovProposal.action
d_action_698 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_714
d_action_698 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_772 (coe v0)
-- _.GovProposal.anchor
d_anchor_700 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_686
d_anchor_700 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_782 (coe v0)
-- _.GovProposal.deposit
d_deposit_702 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 -> Integer
d_deposit_702 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_778 (coe v0)
-- _.GovProposal.policy
d_policy_704 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  Maybe AgdaAny
d_policy_704 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_776 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_706 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 -> AgdaAny
d_prevAction_706 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_774 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_708 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_708 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_780 (coe v0)
-- _.GovVote.anchor
d_anchor_720 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_686
d_anchor_720 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_756 (coe v0)
-- _.GovVote.gid
d_gid_722 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_722 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_750 (coe v0)
-- _.GovVote.vote
d_vote_724 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_732
d_vote_724 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_754 (coe v0)
-- _.GovVote.voter
d_voter_726 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_726 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_752 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_752 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_756 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_758 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_760 a0 = ()
-- _.PParams.Emax
d_Emax_912 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_912 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_360 (coe v0)
-- _.PParams.a
d_a_914 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_914 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_332 (coe v0)
-- _.PParams.a0
d_a0_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_916 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_364 (coe v0)
-- _.PParams.b
d_b_918 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_918 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_334 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_376 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_374 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_344 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_926 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_366 (coe v0)
-- _.PParams.costmdls
d_costmdls_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_368 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_384 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_382 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_372 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_380 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_378 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_336 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_324 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_316 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_946 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_328 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_320 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_950 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_352 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_952 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_350 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_322 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_318 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_326 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_960 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_348
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_962 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_358 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_964 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_964 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_340 (coe v0)
-- _.PParams.nopt
d_nopt_966 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_966 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_362 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_968 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_968 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_338 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_970 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_970 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_370 (coe v0)
-- _.PParams.prices
d_prices_972 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_972 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_346 (coe v0)
-- _.PParams.pv
d_pv_974 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_974 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_330 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_976 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_976 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_356 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_978 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_978 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_354 (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_980 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_980 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_342 (coe v0)
-- _.Tx.body
d_body_1390 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518
d_body_1390 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v0)
-- _.Tx.isValid
d_isValid_1392 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2620 -> Bool
d_isValid_1392 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2634 (coe v0)
-- _.Tx.txAD
d_txAD_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 -> Maybe AgdaAny
d_txAD_1394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2636 (coe v0)
-- _.Tx.wits
d_wits_1396 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2600
d_wits_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2632 (coe v0)
-- _.TxBody.collateral
d_collateral_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2594 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> Maybe Integer
d_curTreasury_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2588 (coe v0)
-- _.TxBody.mint
d_mint_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> AgdaAny
d_mint_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2568 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2562 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> [AgdaAny]
d_reqSigHash_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2596 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> Maybe AgdaAny
d_scriptIntHash_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2598 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> Maybe AgdaAny
d_txADhash_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2584 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> Maybe AgdaAny
d_txNetworkId_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2586 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2572 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> Integer
d_txdonation_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2580 (coe v0)
-- _.TxBody.txfee
d_txfee_1420 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> Integer
d_txfee_1420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2566 (coe v0)
-- _.TxBody.txid
d_txid_1422 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> AgdaAny
d_txid_1422 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2592 (coe v0)
-- _.TxBody.txins
d_txins_1424 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1424 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2560 (coe v0)
-- _.TxBody.txouts
d_txouts_1426 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1426 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2564 (coe v0)
-- _.TxBody.txprop
d_txprop_1428 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_758]
d_txprop_1428 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2578 (coe v0)
-- _.TxBody.txsize
d_txsize_1430 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 -> Integer
d_txsize_1430 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2590 (coe v0)
-- _.TxBody.txup
d_txup_1432 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1432 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2582 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1434 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1434 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2570 (coe v0)
-- _.TxBody.txvote
d_txvote_1436 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740]
d_txvote_1436 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2576 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1438 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1438 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2574 (coe v0)
-- Ledger.Ledger._.EnactState
d_EnactState_1518 a0 a1 = ()
-- Ledger.Ledger._.EnactState.cc
d_cc_1554 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1554 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_862 (coe v0)
-- Ledger.Ledger._.EnactState.constitution
d_constitution_1556 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1556 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_864 (coe v0)
-- Ledger.Ledger._.EnactState.pparams
d_pparams_1558 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1558 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_868 (coe v0)
-- Ledger.Ledger._.EnactState.pv
d_pv_1560 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1560 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_866 (coe v0)
-- Ledger.Ledger._.EnactState.withdrawals
d_withdrawals_1562 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1562 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_870 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1568 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1906 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1568 = erased
-- Ledger.Ledger._.GovState
d_GovState_1580 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 -> ()
d_GovState_1580 = erased
-- Ledger.Ledger._.To-GovEnv
d_To'45'GovEnv_1588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1588 ~v0 ~v1 = du_To'45'GovEnv_1588
du_To'45'GovEnv_1588 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1588
  = coe MAlonzo.Code.Ledger.Gov.du_To'45'GovEnv_1936
-- Ledger.Ledger._.To-UTxOEnv
d_To'45'UTxOEnv_1710 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'UTxOEnv_1710 ~v0 ~v1 = du_To'45'UTxOEnv_1710
du_To'45'UTxOEnv_1710 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'UTxOEnv_1710
  = coe MAlonzo.Code.Ledger.Utxo.du_To'45'UTxOEnv_2056
-- Ledger.Ledger._.UTxOState
d_UTxOState_1720 a0 a1 = ()
-- Ledger.Ledger._.UTxOState.deposits
d_deposits_1832 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1832 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2050 (coe v0)
-- Ledger.Ledger._.UTxOState.donations
d_donations_1834 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 -> Integer
d_donations_1834 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2052 (coe v0)
-- Ledger.Ledger._.UTxOState.fees
d_fees_1836 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 -> Integer
d_fees_1836 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2048 (coe v0)
-- Ledger.Ledger._.UTxOState.utxo
d_utxo_1838 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1838 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2046 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1876 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_892 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1938 = erased
-- Ledger.Ledger._.CertState
d_CertState_1958 a0 a1 = ()
-- Ledger.Ledger._.To-CertEnv
d_To'45'CertEnv_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_2008 ~v0 ~v1 = du_To'45'CertEnv_2008
du_To'45'CertEnv_2008 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_2008
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_994
-- Ledger.Ledger._.CertState.dState
d_dState_2094 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  MAlonzo.Code.Ledger.Certs.T_DState_914
d_dState_2094 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_960 (coe v0)
-- Ledger.Ledger._.CertState.gState
d_gState_2096 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940
d_gState_2096 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_964 (coe v0)
-- Ledger.Ledger._.CertState.pState
d_pState_2098 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  MAlonzo.Code.Ledger.Certs.T_PState_930
d_pState_2098 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_962 (coe v0)
-- Ledger.Ledger.LEnv
d_LEnv_2160 a0 a1 = ()
data T_LEnv_2160
  = C_LEnv'46'constructor_5023 AgdaAny (Maybe AgdaAny)
                               MAlonzo.Code.Ledger.PParams.T_PParams_244
                               MAlonzo.Code.Ledger.Enact.T_EnactState_850 Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2172 :: T_LEnv_2160 -> AgdaAny
d_slot_2172 v0
  = case coe v0 of
      C_LEnv'46'constructor_5023 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2174 :: T_LEnv_2160 -> Maybe AgdaAny
d_ppolicy_2174 v0
  = case coe v0 of
      C_LEnv'46'constructor_5023 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2176 ::
  T_LEnv_2160 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2176 v0
  = case coe v0 of
      C_LEnv'46'constructor_5023 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2178 ::
  T_LEnv_2160 -> MAlonzo.Code.Ledger.Enact.T_EnactState_850
d_enactState_2178 v0
  = case coe v0 of
      C_LEnv'46'constructor_5023 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2180 :: T_LEnv_2160 -> Integer
d_treasury_2180 v0
  = case coe v0 of
      C_LEnv'46'constructor_5023 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_2182 a0 a1 = ()
data T_LState_2182
  = C_'10214'_'44'_'44'_'10215''737'_2196 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_952
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2190 ::
  T_LState_2182 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
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
  T_LState_2182 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
d_certState_2194 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2196 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.To-LEnv
d_To'45'LEnv_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_2198 ~v0 ~v1 = du_To'45'LEnv_2198
du_To'45'LEnv_2198 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_2198
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
                                          (1518 :: Integer) (9543913931307211001 :: Integer)
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
         (coe C_LEnv'46'constructor_5023))
-- Ledger.Ledger.To-LState
d_To'45'LState_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_2200 ~v0 ~v1 = du_To'45'LState_2200
du_To'45'LState_2200 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_2200
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
                                 (1720 :: Integer) (9543913931307211001 :: Integer)
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
                                    (1580 :: Integer) (9543913931307211001 :: Integer)
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
-- Ledger.Ledger.txgov
d_txgov_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2202 ~v0 ~v1 v2 = du_txgov_2202 v2
du_txgov_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2202 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2578 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2576 (coe v0)))
-- Ledger.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2252 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2252 v0 v2 v3
du_rmOrphanDRepVotes_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2252 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_go_2268 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_ifDRepRegistered_2262 = erased
-- Ledger.Ledger._.go
d_go_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_784 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_784
d_go_2268 v0 ~v1 v2 ~v3 v4 = du_go_2268 v0 v2 v4
du_go_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_784 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_784
du_go_2268 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4109
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_808)
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
                          (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1214 (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1214 (coe v0))))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_548
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                    (coe
                       MAlonzo.Code.Ledger.Certs.d_dreps_946
                       (coe MAlonzo.Code.Ledger.Certs.d_gState_964 (coe v1))))))
         (MAlonzo.Code.Ledger.GovernanceActions.d_votes_796 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_798 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_800 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_802 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_804 (coe v2))
-- Ledger.Ledger.allColdCreds
d_allColdCreds_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_2272 ~v0 ~v1 v2 v3 = du_allColdCreds_2272 v2 v3
du_allColdCreds_2272 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_2272 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Enact.du_ccCreds_874
         (coe MAlonzo.Code.Ledger.Enact.d_cc_862 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_820
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_802
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2314 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2314
  = C_LEDGER'45'V_2362 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2364 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.txcerts
d_txcerts_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_15353 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_2336 ~v0 ~v1 v2 = du_txcerts_2336 v2
du_txcerts_2336 ::
  T_GeneralizeTel_15353 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
du_txcerts_2336 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2572
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_15329 (coe v0)))
-- Ledger.Ledger._.txid
d_txid_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_15353 -> AgdaAny
d_txid_2342 ~v0 ~v1 v2 = du_txid_2342 v2
du_txid_2342 :: T_GeneralizeTel_15353 -> AgdaAny
du_txid_2342 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2592
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_15329 (coe v0)))
-- Ledger.Ledger._.txvote
d_txvote_2356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_15353 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740]
d_txvote_2356 ~v0 ~v1 v2 = du_txvote_2356 v2
du_txvote_2356 ::
  T_GeneralizeTel_15353 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740]
du_txvote_2356 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2576
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_15329 (coe v0)))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_15353 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2358 ~v0 ~v1 v2 = du_txwdrls_2358 v2
du_txwdrls_2358 ::
  T_GeneralizeTel_15353 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2358 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2574
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_15329 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_LEnv_2160 ->
  T_LState_2182 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2620] -> T_LState_2182 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2382 = erased
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_15329 ::
  T_GeneralizeTel_15353 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2620
d_'46'generalizedField'45'tx_15329 v0
  = case coe v0 of
      C_mkGeneralizeTel_15355 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_15331 ::
  T_GeneralizeTel_15353 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
d_'46'generalizedField'45'certState_15331 v0
  = case coe v0 of
      C_mkGeneralizeTel_15355 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_15333 ::
  T_GeneralizeTel_15353 -> AgdaAny
d_'46'generalizedField'45'slot_15333 v0
  = case coe v0 of
      C_mkGeneralizeTel_15355 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_15335 ::
  T_GeneralizeTel_15353 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_'46'generalizedField'45'pp_15335 v0
  = case coe v0 of
      C_mkGeneralizeTel_15355 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_15337 ::
  T_GeneralizeTel_15353 -> Integer
d_'46'generalizedField'45'treasury_15337 v0
  = case coe v0 of
      C_mkGeneralizeTel_15355 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_15339 ::
  T_GeneralizeTel_15353 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
d_'46'generalizedField'45'utxoSt_15339 v0
  = case coe v0 of
      C_mkGeneralizeTel_15355 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_15341 ::
  T_GeneralizeTel_15353 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
d_'46'generalizedField'45'utxoSt''_15341 v0
  = case coe v0 of
      C_mkGeneralizeTel_15355 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_15343 ::
  T_GeneralizeTel_15353 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_15343 v0
  = case coe v0 of
      C_mkGeneralizeTel_15355 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_15345 ::
  T_GeneralizeTel_15353 -> MAlonzo.Code.Ledger.Enact.T_EnactState_850
d_'46'generalizedField'45'enactState_15345 v0
  = case coe v0 of
      C_mkGeneralizeTel_15355 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_15347 ::
  T_GeneralizeTel_15353 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
d_'46'generalizedField'45'certState''_15347 v0
  = case coe v0 of
      C_mkGeneralizeTel_15355 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_15349 ::
  T_GeneralizeTel_15353 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_15349 v0
  = case coe v0 of
      C_mkGeneralizeTel_15355 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_15351 ::
  T_GeneralizeTel_15353 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_15351 v0
  = case coe v0 of
      C_mkGeneralizeTel_15355 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_15353 a0 a1 = ()
data T_GeneralizeTel_15353
  = C_mkGeneralizeTel_15355 MAlonzo.Code.Ledger.Transaction.T_Tx_2620
                            MAlonzo.Code.Ledger.Certs.T_CertState_952 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_PParams_244 Integer
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Enact.T_EnactState_850
                            MAlonzo.Code.Ledger.Certs.T_CertState_952 (Maybe AgdaAny)
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
