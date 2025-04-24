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
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasCast.Base
import qualified MAlonzo.Code.Class.HasCast.Derive
import qualified MAlonzo.Code.Class.IsSet
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
d_Credential_42 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_78 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_78 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_88 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_88 ~v0 = du_DecEq'45'GovRole_88
du_DecEq'45'GovRole_88 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_88
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_862
-- _.GovActionState
d_GovActionState_156 a0 = ()
-- _.GovProposal
d_GovProposal_162 a0 = ()
-- _.GovVote
d_GovVote_166 a0 = ()
-- _.HasPParams
d_HasPParams_192 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_198 a0 a1 a2 = ()
-- _.PParams
d_PParams_270 a0 = ()
-- _.PParamsOf
d_PParamsOf_274 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_274 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- _.ScriptHash
d_ScriptHash_328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_328 = erased
-- _.Slot
d_Slot_372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_372 = erased
-- _.Tx
d_Tx_400 a0 = ()
-- _.TxBody
d_TxBody_402 a0 = ()
-- _.UTxOOf
d_UTxOOf_418 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2638 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2646 (coe v0)
-- _.Voter
d_Voter_440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_440 = erased
-- _.epoch
d_epoch_474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_474 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1574 (coe v0))
-- _.GovActionState.action
d_action_716 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_838 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_762
d_action_716 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_856 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_718 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_838 ->
  AgdaAny
d_expiresIn_718 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_854 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_720 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_838 ->
  AgdaAny
d_prevAction_720 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_858 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_722 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_838 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_722 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_852 (coe v0)
-- _.GovActionState.votes
d_votes_724 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_724 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_850 (coe v0)
-- _.GovProposal.action
d_action_760 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_762
d_action_760 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_826 (coe v0)
-- _.GovProposal.anchor
d_anchor_762 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_734
d_anchor_762 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_836 (coe v0)
-- _.GovProposal.deposit
d_deposit_764 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 -> Integer
d_deposit_764 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_832 (coe v0)
-- _.GovProposal.policy
d_policy_766 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 ->
  Maybe AgdaAny
d_policy_766 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_830 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_768 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 -> AgdaAny
d_prevAction_768 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_828 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_770 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_770 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_834 (coe v0)
-- _.GovVote.anchor
d_anchor_782 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_794 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_734
d_anchor_782 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_810 (coe v0)
-- _.GovVote.gid
d_gid_784 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_794 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_784 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_804 (coe v0)
-- _.GovVote.vote
d_vote_786 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_794 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_786
d_vote_786 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_808 (coe v0)
-- _.GovVote.voter
d_voter_788 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_794 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_788 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_806 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_814 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_818 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_820 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_822 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_902 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_902 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_910 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2638 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_910 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2646 (coe v0)
-- _.PParams.Emax
d_Emax_1022 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_Emax_1022 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_378 (coe v0)
-- _.PParams.a
d_a_1024 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_a_1024 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_350 (coe v0)
-- _.PParams.a0
d_a0_1026 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1026 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_382 (coe v0)
-- _.PParams.b
d_b_1028 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_b_1028 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_352 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1030 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMaxTermLength_1030 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_394 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1032 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMinSize_1032 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_392 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1034 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_coinsPerUTxOByte_1034 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1036 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_collateralPercentage_1036 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384 (coe v0)
-- _.PParams.costmdls
d_costmdls_1038 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_costmdls_1038 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_386 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1040 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_drepActivity_1040 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_402 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1042 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_drepDeposit_1042 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_400 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1044 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_1044 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_390 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1046 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionDeposit_1046 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1048 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionLifetime_1048 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_396 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1050 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_keyDeposit_1050 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1052 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxBlockExUnits_1052 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_342 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1054 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxBlockSize_1054 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_334 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1056 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxCollateralInputs_1056 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_346 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1058 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxHeaderSize_1058 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_338 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1060 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerBlock_1060 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_370 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1062 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerTx_1062 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1064 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxTxExUnits_1064 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_340 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1066 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxTxSize_1066 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_336 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1068 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxValSize_1068 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_344 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1070 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1070 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_366
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1072 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_minUTxOValue_1072 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_376 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1074 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1074 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_358 (coe v0)
-- _.PParams.nopt
d_nopt_1076 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_nopt_1076 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_380 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1078 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_poolDeposit_1078 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1080 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_1080 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_388 (coe v0)
-- _.PParams.prices
d_prices_1082 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_prices_1082 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_364 (coe v0)
-- _.PParams.pv
d_pv_1084 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1084 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_348 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1086 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1086 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_374 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1088 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_refScriptCostStride_1088 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_372 (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1090 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1090 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_360 (coe v0)
-- _.Tx.body
d_body_1504 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652
d_body_1504 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v0)
-- _.Tx.isValid
d_isValid_1506 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2844 -> Bool
d_isValid_1506 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2858 (coe v0)
-- _.Tx.txAD
d_txAD_1508 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 -> Maybe AgdaAny
d_txAD_1508 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2860 (coe v0)
-- _.Tx.wits
d_wits_1510 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2824
d_wits_1510 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2856 (coe v0)
-- _.TxBody.collateral
d_collateral_1514 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1514 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2728 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1516 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Maybe Integer
d_curTreasury_1516 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2722 (coe v0)
-- _.TxBody.mint
d_mint_1518 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> AgdaAny
d_mint_1518 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2702 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1520 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1520 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2696 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1522 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> [AgdaAny]
d_reqSigHash_1522 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2730 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1524 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Maybe AgdaAny
d_scriptIntHash_1524 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2732 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1526 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Maybe AgdaAny
d_txADhash_1526 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2718 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1528 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Maybe AgdaAny
d_txNetworkId_1528 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2720 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1530 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_982]
d_txcerts_1530 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2706 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1532 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Integer
d_txdonation_1532 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2714 (coe v0)
-- _.TxBody.txfee
d_txfee_1534 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Integer
d_txfee_1534 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2700 (coe v0)
-- _.TxBody.txid
d_txid_1536 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> AgdaAny
d_txid_1536 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2726 (coe v0)
-- _.TxBody.txins
d_txins_1538 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1538 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2694 (coe v0)
-- _.TxBody.txouts
d_txouts_1540 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1540 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2698 (coe v0)
-- _.TxBody.txprop
d_txprop_1542 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_812]
d_txprop_1542 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2712 (coe v0)
-- _.TxBody.txsize
d_txsize_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 -> Integer
d_txsize_1544 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2724 (coe v0)
-- _.TxBody.txup
d_txup_1546 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1546 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2716 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1548 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1548 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2704 (coe v0)
-- _.TxBody.txvote
d_txvote_1550 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_794]
d_txvote_1550 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2710 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1552 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2708 (coe v0)
-- Ledger.Ledger._.EnactState
d_EnactState_1632 a0 a1 = ()
-- Ledger.Ledger._.EnactState.cc
d_cc_1676 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1676 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_914 (coe v0)
-- Ledger.Ledger._.EnactState.constitution
d_constitution_1678 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1678 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_916 (coe v0)
-- Ledger.Ledger._.EnactState.pparams
d_pparams_1680 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1680 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_920 (coe v0)
-- Ledger.Ledger._.EnactState.pv
d_pv_1682 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1682 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_918 (coe v0)
-- Ledger.Ledger._.EnactState.withdrawals
d_withdrawals_1684 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1684 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_922 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_2140 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1694 = erased
-- Ledger.Ledger._.GovState
d_GovState_1706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 -> ()
d_GovState_1706 = erased
-- Ledger.Ledger._.GovStateOf
d_GovStateOf_1708 ::
  MAlonzo.Code.Ledger.Gov.T_HasGovState_2126 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1708 v0
  = coe MAlonzo.Code.Ledger.Gov.d_GovStateOf_2134 (coe v0)
-- Ledger.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1710 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'GovEnv_1710 ~v0 ~v1 = du_HasCast'45'GovEnv_1710
du_HasCast'45'GovEnv_1710 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'GovEnv_1710
  = coe MAlonzo.Code.Ledger.Gov.du_HasCast'45'GovEnv_2170
-- Ledger.Ledger._.HasGovState
d_HasGovState_1712 a0 a1 a2 a3 = ()
-- Ledger.Ledger._.HasGovState.GovStateOf
d_GovStateOf_1812 ::
  MAlonzo.Code.Ledger.Gov.T_HasGovState_2126 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1812 v0
  = coe MAlonzo.Code.Ledger.Gov.d_GovStateOf_2134 (coe v0)
-- Ledger.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_1832 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'UTxOEnv_1832 ~v0 ~v1 = du_HasCast'45'UTxOEnv_1832
du_HasCast'45'UTxOEnv_1832 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'UTxOEnv_1832
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCast'45'UTxOEnv_2276
-- Ledger.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_1840 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_908
d_HasDeposits'45'UTxOState_1840 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_1840
du_HasDeposits'45'UTxOState_1840 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_908
du_HasDeposits'45'UTxOState_1840
  = coe MAlonzo.Code.Ledger.Utxo.du_HasDeposits'45'UTxOState_2272
-- Ledger.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_1844 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2638
d_HasUTxO'45'UTxOState_1844 ~v0 ~v1 = du_HasUTxO'45'UTxOState_1844
du_HasUTxO'45'UTxOState_1844 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2638
du_HasUTxO'45'UTxOState_1844
  = coe MAlonzo.Code.Ledger.Utxo.du_HasUTxO'45'UTxOState_2274
-- Ledger.Ledger._.HasUTxOState
d_HasUTxOState_1846 a0 a1 a2 a3 = ()
-- Ledger.Ledger._.UTxOState
d_UTxOState_1862 a0 a1 = ()
-- Ledger.Ledger._.UTxOStateOf
d_UTxOStateOf_1864 ::
  MAlonzo.Code.Ledger.Utxo.T_HasUTxOState_2258 ->
  AgdaAny -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
d_UTxOStateOf_1864 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_UTxOStateOf_2266 (coe v0)
-- Ledger.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_1968 ::
  MAlonzo.Code.Ledger.Utxo.T_HasUTxOState_2258 ->
  AgdaAny -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
d_UTxOStateOf_1968 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_UTxOStateOf_2266 (coe v0)
-- Ledger.Ledger._.UTxOState.deposits
d_deposits_1980 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1980 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2248 (coe v0)
-- Ledger.Ledger._.UTxOState.donations
d_donations_1982 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 -> Integer
d_donations_1982 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2250 (coe v0)
-- Ledger.Ledger._.UTxOState.fees
d_fees_1984 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 -> Integer
d_fees_1984 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2246 (coe v0)
-- Ledger.Ledger._.UTxOState.utxo
d_utxo_1986 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1986 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2024 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1018 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1136 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_982] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1136 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2086 = erased
-- Ledger.Ledger._.CertState
d_CertState_2106 a0 a1 = ()
-- Ledger.Ledger._.CertStateOf
d_CertStateOf_2108 ::
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1156 ->
  AgdaAny -> MAlonzo.Code.Ledger.Certs.T_CertState_1136
d_CertStateOf_2108 v0
  = coe MAlonzo.Code.Ledger.Certs.d_CertStateOf_1164 (coe v0)
-- Ledger.Ledger._.DepositsOf
d_DepositsOf_2138 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_908 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2138 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DepositsOf_916 (coe v0)
-- Ledger.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'CertEnv_2154 ~v0 ~v1 = du_HasCast'45'CertEnv_2154
du_HasCast'45'CertEnv_2154 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'CertEnv_2154
  = coe MAlonzo.Code.Ledger.Certs.du_HasCast'45'CertEnv_1206
-- Ledger.Ledger._.HasCertState
d_HasCertState_2166 a0 a1 a2 a3 = ()
-- Ledger.Ledger._.HasDeposits
d_HasDeposits_2180 a0 a1 a2 a3 = ()
-- Ledger.Ledger._.CertState.dState
d_dState_2288 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_1136 ->
  MAlonzo.Code.Ledger.Certs.T_DState_1040
d_dState_2288 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_1144 (coe v0)
-- Ledger.Ledger._.CertState.gState
d_gState_2290 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_1136 ->
  MAlonzo.Code.Ledger.Certs.T_GState_1104
d_gState_2290 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_1148 (coe v0)
-- Ledger.Ledger._.CertState.pState
d_pState_2292 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_1136 ->
  MAlonzo.Code.Ledger.Certs.T_PState_1076
d_pState_2292 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_1146 (coe v0)
-- Ledger.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2346 ::
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1156 ->
  AgdaAny -> MAlonzo.Code.Ledger.Certs.T_CertState_1136
d_CertStateOf_2346 v0
  = coe MAlonzo.Code.Ledger.Certs.d_CertStateOf_1164 (coe v0)
-- Ledger.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2358 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_908 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2358 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DepositsOf_916 (coe v0)
-- Ledger.Ledger.LEnv
d_LEnv_2390 a0 a1 = ()
data T_LEnv_2390
  = C_LEnv'46'constructor_6307 AgdaAny (Maybe AgdaAny)
                               MAlonzo.Code.Ledger.PParams.T_PParams_262
                               MAlonzo.Code.Ledger.Enact.T_EnactState_902 Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2402 :: T_LEnv_2390 -> AgdaAny
d_slot_2402 v0
  = case coe v0 of
      C_LEnv'46'constructor_6307 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2404 :: T_LEnv_2390 -> Maybe AgdaAny
d_ppolicy_2404 v0
  = case coe v0 of
      C_LEnv'46'constructor_6307 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2406 ::
  T_LEnv_2390 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2406 v0
  = case coe v0 of
      C_LEnv'46'constructor_6307 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2408 ::
  T_LEnv_2390 -> MAlonzo.Code.Ledger.Enact.T_EnactState_902
d_enactState_2408 v0
  = case coe v0 of
      C_LEnv'46'constructor_6307 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2410 :: T_LEnv_2390 -> Integer
d_treasury_2410 v0
  = case coe v0 of
      C_LEnv'46'constructor_6307 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408
d_HasPParams'45'LEnv_2412 ~v0 ~v1 = du_HasPParams'45'LEnv_2412
du_HasPParams'45'LEnv_2412 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408
du_HasPParams'45'LEnv_2412
  = coe
      MAlonzo.Code.Ledger.PParams.C_HasPParams'46'constructor_9199
      (coe (\ v0 -> d_pparams_2406 (coe v0)))
-- Ledger.Ledger.LState
d_LState_2414 a0 a1 = ()
data T_LState_2414
  = C_'10214'_'44'_'44'_'10215''737'_2428 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_1136
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2422 ::
  T_LState_2414 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
d_utxoSt_2422 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2428 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2424 ::
  T_LState_2414 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2424 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2428 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2426 ::
  T_LState_2414 -> MAlonzo.Code.Ledger.Certs.T_CertState_1136
d_certState_2426 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2428 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.HasLState
d_HasLState_2434 a0 a1 a2 a3 = ()
newtype T_HasLState_2434
  = C_HasLState'46'constructor_6703 (AgdaAny -> T_LState_2414)
-- Ledger.Ledger.HasLState.LStateOf
d_LStateOf_2442 :: T_HasLState_2434 -> AgdaAny -> T_LState_2414
d_LStateOf_2442 v0
  = case coe v0 of
      C_HasLState'46'constructor_6703 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger._.LStateOf
d_LStateOf_2446 :: T_HasLState_2434 -> AgdaAny -> T_LState_2414
d_LStateOf_2446 v0 = coe d_LStateOf_2442 (coe v0)
-- Ledger.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Utxo.T_HasUTxOState_2258
d_HasUTxOState'45'LState_2448 ~v0 ~v1
  = du_HasUTxOState'45'LState_2448
du_HasUTxOState'45'LState_2448 ::
  MAlonzo.Code.Ledger.Utxo.T_HasUTxOState_2258
du_HasUTxOState'45'LState_2448
  = coe
      MAlonzo.Code.Ledger.Utxo.C_HasUTxOState'46'constructor_17803
      (coe (\ v0 -> d_utxoSt_2422 (coe v0)))
-- Ledger.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2638
d_HasUTxO'45'LState_2450 ~v0 ~v1 = du_HasUTxO'45'LState_2450
du_HasUTxO'45'LState_2450 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2638
du_HasUTxO'45'LState_2450
  = coe
      MAlonzo.Code.Ledger.Transaction.C_HasUTxO'46'constructor_17489
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2646
              (coe MAlonzo.Code.Ledger.Utxo.du_HasUTxO'45'UTxOState_2274)
              (d_utxoSt_2422 (coe v0))))
-- Ledger.Ledger.HasGovState-LState
d_HasGovState'45'LState_2452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Gov.T_HasGovState_2126
d_HasGovState'45'LState_2452 ~v0 ~v1
  = du_HasGovState'45'LState_2452
du_HasGovState'45'LState_2452 ::
  MAlonzo.Code.Ledger.Gov.T_HasGovState_2126
du_HasGovState'45'LState_2452
  = coe
      MAlonzo.Code.Ledger.Gov.C_HasGovState'46'constructor_4207
      (coe (\ v0 -> d_govSt_2424 (coe v0)))
-- Ledger.Ledger.HasCertState-LState
d_HasCertState'45'LState_2454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1156
d_HasCertState'45'LState_2454 ~v0 ~v1
  = du_HasCertState'45'LState_2454
du_HasCertState'45'LState_2454 ::
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1156
du_HasCertState'45'LState_2454
  = coe
      MAlonzo.Code.Ledger.Certs.C_HasCertState'46'constructor_19243
      (coe (\ v0 -> d_certState_2426 (coe v0)))
-- Ledger.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_908
d_HasDeposits'45'LState_2456 ~v0 ~v1
  = du_HasDeposits'45'LState_2456
du_HasDeposits'45'LState_2456 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_908
du_HasDeposits'45'LState_2456
  = coe
      MAlonzo.Code.Ledger.Certs.C_HasDeposits'46'constructor_2919
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Certs.d_DepositsOf_916
              (coe MAlonzo.Code.Ledger.Utxo.du_HasDeposits'45'UTxOState_2272)
              (d_utxoSt_2422 (coe v0))))
-- Ledger.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'LEnv_2458 ~v0 ~v1 = du_HasCast'45'LEnv_2458
du_HasCast'45'LEnv_2458 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'LEnv_2458
  = coe
      MAlonzo.Code.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                 (2390 :: Integer) (9543913931307211001 :: Integer)
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
                                 (372 :: Integer) (9543913931307211001 :: Integer) "_.Slot"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                    (2390 :: Integer) (9543913931307211001 :: Integer)
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
                                                (328 :: Integer) (9543913931307211001 :: Integer)
                                                "_.ScriptHash"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                       (2390 :: Integer) (9543913931307211001 :: Integer)
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
                                       (270 :: Integer) (9543913931307211001 :: Integer) "_.PParams"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                          (2390 :: Integer) (9543913931307211001 :: Integer)
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
                                          (1632 :: Integer) (9543913931307211001 :: Integer)
                                          "Ledger.Ledger._.EnactState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                             (2390 :: Integer) (9543913931307211001 :: Integer)
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
         (coe C_LEnv'46'constructor_6307))
-- Ledger.Ledger.HasCast-LState
d_HasCast'45'LState_2460 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'LState_2460 ~v0 ~v1 = du_HasCast'45'LState_2460
du_HasCast'45'LState_2460 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'LState_2460
  = coe
      MAlonzo.Code.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                 (2414 :: Integer) (9543913931307211001 :: Integer)
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
                                 (1862 :: Integer) (9543913931307211001 :: Integer)
                                 "Ledger.Ledger._.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                    (2414 :: Integer) (9543913931307211001 :: Integer)
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
                                    (1706 :: Integer) (9543913931307211001 :: Integer)
                                    "Ledger.Ledger._.GovState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                       (2414 :: Integer) (9543913931307211001 :: Integer)
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
                                       (2106 :: Integer) (9543913931307211001 :: Integer)
                                       "Ledger.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2428))
-- Ledger.Ledger.txgov
d_txgov_2462 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2462 ~v0 ~v1 v2 = du_txgov_2462 v2
du_txgov_2462 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2462 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2712 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2710 (coe v0)))
-- Ledger.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1136 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2512 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2512 v0 v2 v3
du_rmOrphanDRepVotes_2512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1136 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2512 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_go_2528 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1136 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_ifDRepRegistered_2522 = erased
-- Ledger.Ledger._.go
d_go_2528 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1136 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_838 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_838
d_go_2528 v0 ~v1 v2 ~v3 v4 = du_go_2528 v0 v2 v4
du_go_2528 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1136 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_838 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_838
du_go_2528 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_5053
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_862)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_718))
              (coe
                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                 (coe
                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                       (coe
                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                          (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1270 (coe v0))))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_548
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                    (coe
                       MAlonzo.Code.Ledger.Certs.d_dreps_1110
                       (coe MAlonzo.Code.Ledger.Certs.d_gState_1148 (coe v1))))))
         (MAlonzo.Code.Ledger.GovernanceActions.d_votes_850 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_852 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_854 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_856 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_858 (coe v2))
-- Ledger.Ledger.allColdCreds
d_allColdCreds_2532 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_2532 ~v0 ~v1 v2 v3 = du_allColdCreds_2532 v2 v3
du_allColdCreds_2532 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_2532 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Enact.du_ccCreds_948
         (coe MAlonzo.Code.Ledger.Enact.d_cc_914 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_874
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_856
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2574 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2574
  = C_LEDGER'45'V_2622 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2624 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.txcerts
d_txcerts_2596 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_18025 -> [MAlonzo.Code.Ledger.Certs.T_DCert_982]
d_txcerts_2596 ~v0 ~v1 v2 = du_txcerts_2596 v2
du_txcerts_2596 ::
  T_GeneralizeTel_18025 -> [MAlonzo.Code.Ledger.Certs.T_DCert_982]
du_txcerts_2596 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2706
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_18001 (coe v0)))
-- Ledger.Ledger._.txid
d_txid_2602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_18025 -> AgdaAny
d_txid_2602 ~v0 ~v1 v2 = du_txid_2602 v2
du_txid_2602 :: T_GeneralizeTel_18025 -> AgdaAny
du_txid_2602 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2726
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_18001 (coe v0)))
-- Ledger.Ledger._.txvote
d_txvote_2616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_18025 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_794]
d_txvote_2616 ~v0 ~v1 v2 = du_txvote_2616 v2
du_txvote_2616 ::
  T_GeneralizeTel_18025 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_794]
du_txvote_2616 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2710
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_18001 (coe v0)))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2618 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_18025 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2618 ~v0 ~v1 v2 = du_txwdrls_2618 v2
du_txwdrls_2618 ::
  T_GeneralizeTel_18025 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2618 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2708
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_18001 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_LEnv_2390 ->
  T_LState_2414 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2844] -> T_LState_2414 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2642 = erased
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_18001 ::
  T_GeneralizeTel_18025 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2844
d_'46'generalizedField'45'tx_18001 v0
  = case coe v0 of
      C_mkGeneralizeTel_18027 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_18003 ::
  T_GeneralizeTel_18025 -> MAlonzo.Code.Ledger.Certs.T_CertState_1136
d_'46'generalizedField'45'certState_18003 v0
  = case coe v0 of
      C_mkGeneralizeTel_18027 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_18005 ::
  T_GeneralizeTel_18025 -> AgdaAny
d_'46'generalizedField'45'slot_18005 v0
  = case coe v0 of
      C_mkGeneralizeTel_18027 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_18007 ::
  T_GeneralizeTel_18025 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_'46'generalizedField'45'pp_18007 v0
  = case coe v0 of
      C_mkGeneralizeTel_18027 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_18009 ::
  T_GeneralizeTel_18025 -> Integer
d_'46'generalizedField'45'treasury_18009 v0
  = case coe v0 of
      C_mkGeneralizeTel_18027 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_18011 ::
  T_GeneralizeTel_18025 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
d_'46'generalizedField'45'utxoSt_18011 v0
  = case coe v0 of
      C_mkGeneralizeTel_18027 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_18013 ::
  T_GeneralizeTel_18025 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
d_'46'generalizedField'45'utxoSt''_18013 v0
  = case coe v0 of
      C_mkGeneralizeTel_18027 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_18015 ::
  T_GeneralizeTel_18025 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_18015 v0
  = case coe v0 of
      C_mkGeneralizeTel_18027 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_18017 ::
  T_GeneralizeTel_18025 -> MAlonzo.Code.Ledger.Enact.T_EnactState_902
d_'46'generalizedField'45'enactState_18017 v0
  = case coe v0 of
      C_mkGeneralizeTel_18027 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_18019 ::
  T_GeneralizeTel_18025 -> MAlonzo.Code.Ledger.Certs.T_CertState_1136
d_'46'generalizedField'45'certState''_18019 v0
  = case coe v0 of
      C_mkGeneralizeTel_18027 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_18021 ::
  T_GeneralizeTel_18025 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_18021 v0
  = case coe v0 of
      C_mkGeneralizeTel_18027 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_18023 ::
  T_GeneralizeTel_18025 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_18023 v0
  = case coe v0 of
      C_mkGeneralizeTel_18027 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_18025 a0 a1 = ()
data T_GeneralizeTel_18025
  = C_mkGeneralizeTel_18027 MAlonzo.Code.Ledger.Transaction.T_Tx_2844
                            MAlonzo.Code.Ledger.Certs.T_CertState_1136 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_PParams_262 Integer
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Enact.T_EnactState_902
                            MAlonzo.Code.Ledger.Certs.T_CertState_1136 (Maybe AgdaAny)
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
