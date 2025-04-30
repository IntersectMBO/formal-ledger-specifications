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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_88 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_88 ~v0 = du_DecEq'45'GovRole_88
du_DecEq'45'GovRole_88 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_88
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_876
-- _.GovActionState
d_GovActionState_156 a0 = ()
-- _.GovProposal
d_GovProposal_162 a0 = ()
-- _.GovVote
d_GovVote_166 a0 = ()
-- _.HasPParams
d_HasPParams_194 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_200 a0 a1 a2 = ()
-- _.PParams
d_PParams_288 a0 = ()
-- _.PParamsOf
d_PParamsOf_292 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_292 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- _.ScriptHash
d_ScriptHash_346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_346 = erased
-- _.Slot
d_Slot_390 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_390 = erased
-- _.Tx
d_Tx_418 a0 = ()
-- _.TxBody
d_TxBody_420 a0 = ()
-- _.UTxOOf
d_UTxOOf_436 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2966 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_436 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2974 (coe v0)
-- _.Voter
d_Voter_458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_458 = erased
-- _.epoch
d_epoch_492 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_492 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1584 (coe v0))
-- _.GovActionState.action
d_action_736 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_852 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_772
d_action_736 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_870 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_738 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_852 ->
  AgdaAny
d_expiresIn_738 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_868 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_740 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_852 ->
  AgdaAny
d_prevAction_740 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_872 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_742 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_852 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_742 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_866 (coe v0)
-- _.GovActionState.votes
d_votes_744 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_744 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_864 (coe v0)
-- _.GovProposal.action
d_action_780 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_826 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_772
d_action_780 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_840 (coe v0)
-- _.GovProposal.anchor
d_anchor_782 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_826 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_744
d_anchor_782 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_850 (coe v0)
-- _.GovProposal.deposit
d_deposit_784 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_826 -> Integer
d_deposit_784 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_846 (coe v0)
-- _.GovProposal.policy
d_policy_786 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_826 ->
  Maybe AgdaAny
d_policy_786 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_844 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_788 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_826 -> AgdaAny
d_prevAction_788 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_842 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_790 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_826 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_790 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_848 (coe v0)
-- _.GovVote.anchor
d_anchor_802 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_808 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_744
d_anchor_802 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_824 (coe v0)
-- _.GovVote.gid
d_gid_804 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_808 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_804 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_818 (coe v0)
-- _.GovVote.vote
d_vote_806 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_808 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_800
d_vote_806 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_822 (coe v0)
-- _.GovVote.voter
d_voter_808 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_808 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_808 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_820 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_834 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_838 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_840 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_842 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_924 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_932 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2966 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_932 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2974 (coe v0)
-- _.PParams.Emax
d_Emax_1048 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_Emax_1048 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_378 (coe v0)
-- _.PParams.a
d_a_1050 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_a_1050 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_350 (coe v0)
-- _.PParams.a0
d_a0_1052 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1052 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_382 (coe v0)
-- _.PParams.b
d_b_1054 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_b_1054 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_352 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1056 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMaxTermLength_1056 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_394 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1058 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMinSize_1058 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_392 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1060 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_coinsPerUTxOByte_1060 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1062 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_collateralPercentage_1062 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384 (coe v0)
-- _.PParams.costmdls
d_costmdls_1064 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_costmdls_1064 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_386 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1066 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_drepActivity_1066 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_402 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1068 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_drepDeposit_1068 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_400 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1070 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_1070 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_390 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1072 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionDeposit_1072 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1074 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionLifetime_1074 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_396 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1076 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_keyDeposit_1076 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1078 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxBlockExUnits_1078 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_342 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1080 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxBlockSize_1080 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_334 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1082 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxCollateralInputs_1082 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_346 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1084 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxHeaderSize_1084 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_338 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1086 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerBlock_1086 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_370 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1088 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerTx_1088 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1090 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxTxExUnits_1090 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_340 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1092 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxTxSize_1092 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_336 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1094 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxValSize_1094 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_344 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1096 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1096 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_366
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1098 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_minUTxOValue_1098 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_376 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1100 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1100 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_358 (coe v0)
-- _.PParams.nopt
d_nopt_1102 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_nopt_1102 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_380 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1104 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_poolDeposit_1104 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1106 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_1106 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_388 (coe v0)
-- _.PParams.prices
d_prices_1108 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_prices_1108 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_364 (coe v0)
-- _.PParams.pv
d_pv_1110 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1110 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_348 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1112 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1112 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_374 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1114 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_refScriptCostStride_1114 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_372 (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1116 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1116 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_360 (coe v0)
-- _.Tx.body
d_body_1530 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3172 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980
d_body_1530 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_3182 (coe v0)
-- _.Tx.isValid
d_isValid_1532 :: MAlonzo.Code.Ledger.Transaction.T_Tx_3172 -> Bool
d_isValid_1532 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_3186 (coe v0)
-- _.Tx.txAD
d_txAD_1534 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3172 -> Maybe AgdaAny
d_txAD_1534 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_3188 (coe v0)
-- _.Tx.wits
d_wits_1536 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3172 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3152
d_wits_1536 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_3184 (coe v0)
-- _.TxBody.collateral
d_collateral_1540 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1540 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_3056 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1542 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 -> Maybe Integer
d_curTreasury_1542 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_3050 (coe v0)
-- _.TxBody.mint
d_mint_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 -> AgdaAny
d_mint_1544 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_3030 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1546 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1546 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_3024 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1548 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 -> [AgdaAny]
d_reqSigHash_1548 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_3058 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1550 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 -> Maybe AgdaAny
d_scriptIntHash_1550 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_3060 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 -> Maybe AgdaAny
d_txADhash_1552 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_3046 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 -> Maybe AgdaAny
d_txNetworkId_1554 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_3048 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1556 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_994]
d_txcerts_1556 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_3034 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 -> Integer
d_txdonation_1558 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_3042 (coe v0)
-- _.TxBody.txfee
d_txfee_1560 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 -> Integer
d_txfee_1560 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_3028 (coe v0)
-- _.TxBody.txid
d_txid_1562 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 -> AgdaAny
d_txid_1562 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_3054 (coe v0)
-- _.TxBody.txins
d_txins_1564 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1564 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_3022 (coe v0)
-- _.TxBody.txouts
d_txouts_1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1566 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_3026 (coe v0)
-- _.TxBody.txprop
d_txprop_1568 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_826]
d_txprop_1568 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_3040 (coe v0)
-- _.TxBody.txsize
d_txsize_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 -> Integer
d_txsize_1570 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_3052 (coe v0)
-- _.TxBody.txup
d_txup_1572 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1572 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_3044 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1574 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1574 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_3032 (coe v0)
-- _.TxBody.txvote
d_txvote_1576 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_808]
d_txvote_1576 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_3038 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1578 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1578 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_3036 (coe v0)
-- Ledger.Ledger._.EnactState
d_EnactState_1658 a0 a1 = ()
-- Ledger.Ledger._.EnactState.cc
d_cc_1702 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_914 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1702 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_926 (coe v0)
-- Ledger.Ledger._.EnactState.constitution
d_constitution_1704 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_914 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1704 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_928 (coe v0)
-- Ledger.Ledger._.EnactState.pparams
d_pparams_1706 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_914 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1706 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_932 (coe v0)
-- Ledger.Ledger._.EnactState.pv
d_pv_1708 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_914 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1708 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_930 (coe v0)
-- Ledger.Ledger._.EnactState.withdrawals
d_withdrawals_1710 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_914 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1710 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_934 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1720 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_2186 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1720 = erased
-- Ledger.Ledger._.GovState
d_GovState_1732 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 -> ()
d_GovState_1732 = erased
-- Ledger.Ledger._.GovStateOf
d_GovStateOf_1734 ::
  MAlonzo.Code.Ledger.Gov.T_HasGovState_2172 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1734 v0
  = coe MAlonzo.Code.Ledger.Gov.d_GovStateOf_2180 (coe v0)
-- Ledger.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'GovEnv_1736 ~v0 ~v1 = du_HasCast'45'GovEnv_1736
du_HasCast'45'GovEnv_1736 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'GovEnv_1736
  = coe MAlonzo.Code.Ledger.Gov.du_HasCast'45'GovEnv_2216
-- Ledger.Ledger._.HasGovState
d_HasGovState_1738 a0 a1 a2 a3 = ()
-- Ledger.Ledger._.HasGovState.GovStateOf
d_GovStateOf_1838 ::
  MAlonzo.Code.Ledger.Gov.T_HasGovState_2172 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1838 v0
  = coe MAlonzo.Code.Ledger.Gov.d_GovStateOf_2180 (coe v0)
-- Ledger.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_1858 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'UTxOEnv_1858 ~v0 ~v1 = du_HasCast'45'UTxOEnv_1858
du_HasCast'45'UTxOEnv_1858 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'UTxOEnv_1858
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCast'45'UTxOEnv_2324
-- Ledger.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_1866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_920
d_HasDeposits'45'UTxOState_1866 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_1866
du_HasDeposits'45'UTxOState_1866 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_920
du_HasDeposits'45'UTxOState_1866
  = coe MAlonzo.Code.Ledger.Utxo.du_HasDeposits'45'UTxOState_2320
-- Ledger.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_1870 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2966
d_HasUTxO'45'UTxOState_1870 ~v0 ~v1 = du_HasUTxO'45'UTxOState_1870
du_HasUTxO'45'UTxOState_1870 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2966
du_HasUTxO'45'UTxOState_1870
  = coe MAlonzo.Code.Ledger.Utxo.du_HasUTxO'45'UTxOState_2322
-- Ledger.Ledger._.HasUTxOState
d_HasUTxOState_1872 a0 a1 a2 a3 = ()
-- Ledger.Ledger._.UTxOState
d_UTxOState_1890 a0 a1 = ()
-- Ledger.Ledger._.UTxOStateOf
d_UTxOStateOf_1892 ::
  MAlonzo.Code.Ledger.Utxo.T_HasUTxOState_2306 ->
  AgdaAny -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
d_UTxOStateOf_1892 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_UTxOStateOf_2314 (coe v0)
-- Ledger.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_1996 ::
  MAlonzo.Code.Ledger.Utxo.T_HasUTxOState_2306 ->
  AgdaAny -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
d_UTxOStateOf_1996 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_UTxOStateOf_2314 (coe v0)
-- Ledger.Ledger._.UTxOState.deposits
d_deposits_2008 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2008 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2296 (coe v0)
-- Ledger.Ledger._.UTxOState.donations
d_donations_2010 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282 -> Integer
d_donations_2010 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2298 (coe v0)
-- Ledger.Ledger._.UTxOState.fees
d_fees_2012 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282 -> Integer
d_fees_2012 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2294 (coe v0)
-- Ledger.Ledger._.UTxOState.utxo
d_utxo_2014 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2014 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2292 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2052 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2114 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1030 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1188 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_994] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1188 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2114 = erased
-- Ledger.Ledger._.CertState
d_CertState_2134 a0 a1 = ()
-- Ledger.Ledger._.CertStateOf
d_CertStateOf_2136 ::
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1208 ->
  AgdaAny -> MAlonzo.Code.Ledger.Certs.T_CertState_1188
d_CertStateOf_2136 v0
  = coe MAlonzo.Code.Ledger.Certs.d_CertStateOf_1216 (coe v0)
-- Ledger.Ledger._.DepositsOf
d_DepositsOf_2166 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_920 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2166 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DepositsOf_928 (coe v0)
-- Ledger.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'CertEnv_2182 ~v0 ~v1 = du_HasCast'45'CertEnv_2182
du_HasCast'45'CertEnv_2182 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'CertEnv_2182
  = coe MAlonzo.Code.Ledger.Certs.du_HasCast'45'CertEnv_1258
-- Ledger.Ledger._.HasCertState
d_HasCertState_2194 a0 a1 a2 a3 = ()
-- Ledger.Ledger._.HasDeposits
d_HasDeposits_2208 a0 a1 a2 a3 = ()
-- Ledger.Ledger._.CertState.dState
d_dState_2328 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_1188 ->
  MAlonzo.Code.Ledger.Certs.T_DState_1072
d_dState_2328 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_1196 (coe v0)
-- Ledger.Ledger._.CertState.gState
d_gState_2330 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_1188 ->
  MAlonzo.Code.Ledger.Certs.T_GState_1156
d_gState_2330 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_1200 (coe v0)
-- Ledger.Ledger._.CertState.pState
d_pState_2332 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_1188 ->
  MAlonzo.Code.Ledger.Certs.T_PState_1128
d_pState_2332 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_1198 (coe v0)
-- Ledger.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2386 ::
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1208 ->
  AgdaAny -> MAlonzo.Code.Ledger.Certs.T_CertState_1188
d_CertStateOf_2386 v0
  = coe MAlonzo.Code.Ledger.Certs.d_CertStateOf_1216 (coe v0)
-- Ledger.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2398 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_920 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2398 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DepositsOf_928 (coe v0)
-- Ledger.Ledger.LEnv
d_LEnv_2438 a0 a1 = ()
data T_LEnv_2438
  = C_LEnv'46'constructor_6567 AgdaAny (Maybe AgdaAny)
                               MAlonzo.Code.Ledger.PParams.T_PParams_262
                               MAlonzo.Code.Ledger.Enact.T_EnactState_914 Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2450 :: T_LEnv_2438 -> AgdaAny
d_slot_2450 v0
  = case coe v0 of
      C_LEnv'46'constructor_6567 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2452 :: T_LEnv_2438 -> Maybe AgdaAny
d_ppolicy_2452 v0
  = case coe v0 of
      C_LEnv'46'constructor_6567 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2454 ::
  T_LEnv_2438 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2454 v0
  = case coe v0 of
      C_LEnv'46'constructor_6567 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2456 ::
  T_LEnv_2438 -> MAlonzo.Code.Ledger.Enact.T_EnactState_914
d_enactState_2456 v0
  = case coe v0 of
      C_LEnv'46'constructor_6567 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2458 :: T_LEnv_2438 -> Integer
d_treasury_2458 v0
  = case coe v0 of
      C_LEnv'46'constructor_6567 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2460 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408
d_HasPParams'45'LEnv_2460 ~v0 ~v1 = du_HasPParams'45'LEnv_2460
du_HasPParams'45'LEnv_2460 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408
du_HasPParams'45'LEnv_2460
  = coe
      MAlonzo.Code.Ledger.PParams.C_HasPParams'46'constructor_9199
      (coe (\ v0 -> d_pparams_2454 (coe v0)))
-- Ledger.Ledger.LState
d_LState_2462 a0 a1 = ()
data T_LState_2462
  = C_'10214'_'44'_'44'_'10215''737'_2476 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_1188
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2470 ::
  T_LState_2462 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
d_utxoSt_2470 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2476 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2472 ::
  T_LState_2462 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2472 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2476 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2474 ::
  T_LState_2462 -> MAlonzo.Code.Ledger.Certs.T_CertState_1188
d_certState_2474 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2476 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.HasLState
d_HasLState_2482 a0 a1 a2 a3 = ()
newtype T_HasLState_2482
  = C_HasLState'46'constructor_6963 (AgdaAny -> T_LState_2462)
-- Ledger.Ledger.HasLState.LStateOf
d_LStateOf_2490 :: T_HasLState_2482 -> AgdaAny -> T_LState_2462
d_LStateOf_2490 v0
  = case coe v0 of
      C_HasLState'46'constructor_6963 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger._.LStateOf
d_LStateOf_2494 :: T_HasLState_2482 -> AgdaAny -> T_LState_2462
d_LStateOf_2494 v0 = coe d_LStateOf_2490 (coe v0)
-- Ledger.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2496 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Utxo.T_HasUTxOState_2306
d_HasUTxOState'45'LState_2496 ~v0 ~v1
  = du_HasUTxOState'45'LState_2496
du_HasUTxOState'45'LState_2496 ::
  MAlonzo.Code.Ledger.Utxo.T_HasUTxOState_2306
du_HasUTxOState'45'LState_2496
  = coe
      MAlonzo.Code.Ledger.Utxo.C_HasUTxOState'46'constructor_18433
      (coe (\ v0 -> d_utxoSt_2470 (coe v0)))
-- Ledger.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2498 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2966
d_HasUTxO'45'LState_2498 ~v0 ~v1 = du_HasUTxO'45'LState_2498
du_HasUTxO'45'LState_2498 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2966
du_HasUTxO'45'LState_2498
  = coe
      MAlonzo.Code.Ledger.Transaction.C_HasUTxO'46'constructor_18479
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2974
              (coe MAlonzo.Code.Ledger.Utxo.du_HasUTxO'45'UTxOState_2322)
              (d_utxoSt_2470 (coe v0))))
-- Ledger.Ledger.HasGovState-LState
d_HasGovState'45'LState_2500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Gov.T_HasGovState_2172
d_HasGovState'45'LState_2500 ~v0 ~v1
  = du_HasGovState'45'LState_2500
du_HasGovState'45'LState_2500 ::
  MAlonzo.Code.Ledger.Gov.T_HasGovState_2172
du_HasGovState'45'LState_2500
  = coe
      MAlonzo.Code.Ledger.Gov.C_HasGovState'46'constructor_4425
      (coe (\ v0 -> d_govSt_2472 (coe v0)))
-- Ledger.Ledger.HasCertState-LState
d_HasCertState'45'LState_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1208
d_HasCertState'45'LState_2502 ~v0 ~v1
  = du_HasCertState'45'LState_2502
du_HasCertState'45'LState_2502 ::
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1208
du_HasCertState'45'LState_2502
  = coe
      MAlonzo.Code.Ledger.Certs.C_HasCertState'46'constructor_19961
      (coe (\ v0 -> d_certState_2474 (coe v0)))
-- Ledger.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_920
d_HasDeposits'45'LState_2504 ~v0 ~v1
  = du_HasDeposits'45'LState_2504
du_HasDeposits'45'LState_2504 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_920
du_HasDeposits'45'LState_2504
  = coe
      MAlonzo.Code.Ledger.Certs.C_HasDeposits'46'constructor_2989
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Certs.d_DepositsOf_928
              (coe MAlonzo.Code.Ledger.Utxo.du_HasDeposits'45'UTxOState_2320)
              (d_utxoSt_2470 (coe v0))))
-- Ledger.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'LEnv_2506 ~v0 ~v1 = du_HasCast'45'LEnv_2506
du_HasCast'45'LEnv_2506 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'LEnv_2506
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
                                 (2438 :: Integer) (9543913931307211001 :: Integer)
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
                                 (390 :: Integer) (9543913931307211001 :: Integer) "_.Slot"
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
                                    (2438 :: Integer) (9543913931307211001 :: Integer)
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
                                                (346 :: Integer) (9543913931307211001 :: Integer)
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
                                       (2438 :: Integer) (9543913931307211001 :: Integer)
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
                                       (288 :: Integer) (9543913931307211001 :: Integer) "_.PParams"
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
                                          (2438 :: Integer) (9543913931307211001 :: Integer)
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
                                          (1658 :: Integer) (9543913931307211001 :: Integer)
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
                                             (2438 :: Integer) (9543913931307211001 :: Integer)
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
         (coe C_LEnv'46'constructor_6567))
-- Ledger.Ledger.HasCast-LState
d_HasCast'45'LState_2508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'LState_2508 ~v0 ~v1 = du_HasCast'45'LState_2508
du_HasCast'45'LState_2508 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'LState_2508
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
                                 (2462 :: Integer) (9543913931307211001 :: Integer)
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
                                 (1890 :: Integer) (9543913931307211001 :: Integer)
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
                                    (2462 :: Integer) (9543913931307211001 :: Integer)
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
                                    (1732 :: Integer) (9543913931307211001 :: Integer)
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
                                       (2462 :: Integer) (9543913931307211001 :: Integer)
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
                                       (2134 :: Integer) (9543913931307211001 :: Integer)
                                       "Ledger.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2476))
-- Ledger.Ledger.txgov
d_txgov_2510 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2510 ~v0 ~v1 v2 = du_txgov_2510 v2
du_txgov_2510 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2510 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_3040 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_3038 (coe v0)))
-- Ledger.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2560 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1188 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2560 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2560 v0 v2 v3
du_rmOrphanDRepVotes_2560 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1188 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2560 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_go_2576 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1188 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_ifDRepRegistered_2570 = erased
-- Ledger.Ledger._.go
d_go_2576 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1188 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_852 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_852
d_go_2576 v0 ~v1 v2 ~v3 v4 = du_go_2576 v0 v2 v4
du_go_2576 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1188 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_852 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_852
du_go_2576 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_5211
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_876)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_728))
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
                          (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0))))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_548
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                    (coe
                       MAlonzo.Code.Ledger.Certs.d_dreps_1162
                       (coe MAlonzo.Code.Ledger.Certs.d_gState_1200 (coe v1))))))
         (MAlonzo.Code.Ledger.GovernanceActions.d_votes_864 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_866 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_868 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_870 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_872 (coe v2))
-- Ledger.Ledger.allColdCreds
d_allColdCreds_2580 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_914 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_2580 ~v0 ~v1 v2 v3 = du_allColdCreds_2580 v2 v3
du_allColdCreds_2580 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_914 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_2580 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Enact.du_ccCreds_960
         (coe MAlonzo.Code.Ledger.Enact.d_cc_926 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_888
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_870
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2622 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2622
  = C_LEDGER'45'V_2670 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2672 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.txcerts
d_txcerts_2644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_18285 -> [MAlonzo.Code.Ledger.Certs.T_DCert_994]
d_txcerts_2644 ~v0 ~v1 v2 = du_txcerts_2644 v2
du_txcerts_2644 ::
  T_GeneralizeTel_18285 -> [MAlonzo.Code.Ledger.Certs.T_DCert_994]
du_txcerts_2644 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_3034
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3182
         (coe d_'46'generalizedField'45'tx_18261 (coe v0)))
-- Ledger.Ledger._.txid
d_txid_2650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_18285 -> AgdaAny
d_txid_2650 ~v0 ~v1 v2 = du_txid_2650 v2
du_txid_2650 :: T_GeneralizeTel_18285 -> AgdaAny
du_txid_2650 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_3054
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3182
         (coe d_'46'generalizedField'45'tx_18261 (coe v0)))
-- Ledger.Ledger._.txvote
d_txvote_2664 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_18285 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_808]
d_txvote_2664 ~v0 ~v1 v2 = du_txvote_2664 v2
du_txvote_2664 ::
  T_GeneralizeTel_18285 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_808]
du_txvote_2664 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_3038
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3182
         (coe d_'46'generalizedField'45'tx_18261 (coe v0)))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2666 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_18285 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2666 ~v0 ~v1 v2 = du_txwdrls_2666 v2
du_txwdrls_2666 ::
  T_GeneralizeTel_18285 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2666 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_3036
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3182
         (coe d_'46'generalizedField'45'tx_18261 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2690 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_LEnv_2438 ->
  T_LState_2462 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_3172] -> T_LState_2462 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2690 = erased
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_18261 ::
  T_GeneralizeTel_18285 -> MAlonzo.Code.Ledger.Transaction.T_Tx_3172
d_'46'generalizedField'45'tx_18261 v0
  = case coe v0 of
      C_mkGeneralizeTel_18287 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_18263 ::
  T_GeneralizeTel_18285 -> MAlonzo.Code.Ledger.Certs.T_CertState_1188
d_'46'generalizedField'45'certState_18263 v0
  = case coe v0 of
      C_mkGeneralizeTel_18287 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_18265 ::
  T_GeneralizeTel_18285 -> AgdaAny
d_'46'generalizedField'45'slot_18265 v0
  = case coe v0 of
      C_mkGeneralizeTel_18287 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_18267 ::
  T_GeneralizeTel_18285 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_'46'generalizedField'45'pp_18267 v0
  = case coe v0 of
      C_mkGeneralizeTel_18287 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_18269 ::
  T_GeneralizeTel_18285 -> Integer
d_'46'generalizedField'45'treasury_18269 v0
  = case coe v0 of
      C_mkGeneralizeTel_18287 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_18271 ::
  T_GeneralizeTel_18285 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
d_'46'generalizedField'45'utxoSt_18271 v0
  = case coe v0 of
      C_mkGeneralizeTel_18287 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_18273 ::
  T_GeneralizeTel_18285 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
d_'46'generalizedField'45'utxoSt''_18273 v0
  = case coe v0 of
      C_mkGeneralizeTel_18287 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_18275 ::
  T_GeneralizeTel_18285 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_18275 v0
  = case coe v0 of
      C_mkGeneralizeTel_18287 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_18277 ::
  T_GeneralizeTel_18285 -> MAlonzo.Code.Ledger.Enact.T_EnactState_914
d_'46'generalizedField'45'enactState_18277 v0
  = case coe v0 of
      C_mkGeneralizeTel_18287 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_18279 ::
  T_GeneralizeTel_18285 -> MAlonzo.Code.Ledger.Certs.T_CertState_1188
d_'46'generalizedField'45'certState''_18279 v0
  = case coe v0 of
      C_mkGeneralizeTel_18287 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_18281 ::
  T_GeneralizeTel_18285 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_18281 v0
  = case coe v0 of
      C_mkGeneralizeTel_18287 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_18283 ::
  T_GeneralizeTel_18285 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_18283 v0
  = case coe v0 of
      C_mkGeneralizeTel_18287 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_18285 a0 a1 = ()
data T_GeneralizeTel_18285
  = C_mkGeneralizeTel_18287 MAlonzo.Code.Ledger.Transaction.T_Tx_3172
                            MAlonzo.Code.Ledger.Certs.T_CertState_1188 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_PParams_262 Integer
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Enact.T_EnactState_914
                            MAlonzo.Code.Ledger.Certs.T_CertState_1188 (Maybe AgdaAny)
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
