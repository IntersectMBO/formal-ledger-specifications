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
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_872
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
d_PParams_286 a0 = ()
-- _.PParamsOf
d_PParamsOf_290 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_290 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- _.ScriptHash
d_ScriptHash_344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_344 = erased
-- _.Slot
d_Slot_388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_388 = erased
-- _.Tx
d_Tx_416 a0 = ()
-- _.TxBody
d_TxBody_418 a0 = ()
-- _.UTxOOf
d_UTxOOf_434 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2964 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_434 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2972 (coe v0)
-- _.Voter
d_Voter_456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_456 = erased
-- _.epoch
d_epoch_490 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_490 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1584 (coe v0))
-- _.GovActionState.action
d_action_734 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_848 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_772
d_action_734 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_866 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_736 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_848 ->
  AgdaAny
d_expiresIn_736 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_864 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_738 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_848 ->
  AgdaAny
d_prevAction_738 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_868 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_740 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_848 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_740 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_862 (coe v0)
-- _.GovActionState.votes
d_votes_742 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_848 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_742 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_860 (coe v0)
-- _.GovProposal.action
d_action_778 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_772
d_action_778 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_836 (coe v0)
-- _.GovProposal.anchor
d_anchor_780 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_744
d_anchor_780 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_846 (coe v0)
-- _.GovProposal.deposit
d_deposit_782 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 -> Integer
d_deposit_782 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_842 (coe v0)
-- _.GovProposal.policy
d_policy_784 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 ->
  Maybe AgdaAny
d_policy_784 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_840 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_786 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 -> AgdaAny
d_prevAction_786 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_838 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_788 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_788 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_844 (coe v0)
-- _.GovVote.anchor
d_anchor_800 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_804 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_744
d_anchor_800 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_820 (coe v0)
-- _.GovVote.gid
d_gid_802 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_802 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_814 (coe v0)
-- _.GovVote.vote
d_vote_804 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_804 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_796
d_vote_804 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_818 (coe v0)
-- _.GovVote.voter
d_voter_806 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_806 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_816 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_832 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_836 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_838 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_840 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_920 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_928 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2964 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_928 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2972 (coe v0)
-- _.PParams.Emax
d_Emax_1044 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_Emax_1044 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_378 (coe v0)
-- _.PParams.a
d_a_1046 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_a_1046 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_350 (coe v0)
-- _.PParams.a0
d_a0_1048 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1048 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_382 (coe v0)
-- _.PParams.b
d_b_1050 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_b_1050 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_352 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1052 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMaxTermLength_1052 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_394 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1054 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMinSize_1054 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_392 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1056 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_coinsPerUTxOByte_1056 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1058 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_collateralPercentage_1058 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384 (coe v0)
-- _.PParams.costmdls
d_costmdls_1060 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_costmdls_1060 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_386 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1062 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_drepActivity_1062 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_402 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1064 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_drepDeposit_1064 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_400 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1066 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_1066 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_390 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1068 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionDeposit_1068 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1070 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionLifetime_1070 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_396 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1072 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_keyDeposit_1072 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1074 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxBlockExUnits_1074 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_342 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1076 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxBlockSize_1076 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_334 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1078 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxCollateralInputs_1078 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_346 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1080 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxHeaderSize_1080 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_338 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1082 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerBlock_1082 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_370 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1084 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerTx_1084 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1086 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxTxExUnits_1086 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_340 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1088 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxTxSize_1088 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_336 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1090 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxValSize_1090 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_344 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1092 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1092 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_366
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1094 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_minUTxOValue_1094 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_376 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1096 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1096 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_358 (coe v0)
-- _.PParams.nopt
d_nopt_1098 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_nopt_1098 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_380 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1100 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_poolDeposit_1100 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1102 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_1102 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_388 (coe v0)
-- _.PParams.prices
d_prices_1104 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_prices_1104 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_364 (coe v0)
-- _.PParams.pv
d_pv_1106 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1106 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_348 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1108 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1108 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_374 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1110 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_refScriptCostStride_1110 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_372 (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1112 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1112 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_360 (coe v0)
-- _.Tx.body
d_body_1526 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978
d_body_1526 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v0)
-- _.Tx.isValid
d_isValid_1528 :: MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> Bool
d_isValid_1528 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_3184 (coe v0)
-- _.Tx.txAD
d_txAD_1530 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> Maybe AgdaAny
d_txAD_1530 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_3186 (coe v0)
-- _.Tx.wits
d_wits_1532 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3150
d_wits_1532 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v0)
-- _.TxBody.collateral
d_collateral_1536 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1536 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_3054 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1538 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Maybe Integer
d_curTreasury_1538 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_3048 (coe v0)
-- _.TxBody.mint
d_mint_1540 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> AgdaAny
d_mint_1540 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_3028 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1542 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1542 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_3022 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> [AgdaAny]
d_reqSigHash_1544 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_3056 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1546 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Maybe AgdaAny
d_scriptIntHash_1546 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_3058 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1548 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Maybe AgdaAny
d_txADhash_1548 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_3044 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1550 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Maybe AgdaAny
d_txNetworkId_1550 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_3046 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_992]
d_txcerts_1552 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_3032 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Integer
d_txdonation_1554 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_3040 (coe v0)
-- _.TxBody.txfee
d_txfee_1556 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Integer
d_txfee_1556 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_3026 (coe v0)
-- _.TxBody.txid
d_txid_1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> AgdaAny
d_txid_1558 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_3052 (coe v0)
-- _.TxBody.txins
d_txins_1560 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1560 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_3020 (coe v0)
-- _.TxBody.txouts
d_txouts_1562 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1562 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_3024 (coe v0)
-- _.TxBody.txprop
d_txprop_1564 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_822]
d_txprop_1564 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_3038 (coe v0)
-- _.TxBody.txsize
d_txsize_1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 -> Integer
d_txsize_1566 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_3050 (coe v0)
-- _.TxBody.txup
d_txup_1568 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1568 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_3042 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1570 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_3030 (coe v0)
-- _.TxBody.txvote
d_txvote_1572 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_804]
d_txvote_1572 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_3036 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1574 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1574 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_3034 (coe v0)
-- Ledger.Ledger._.EnactState
d_EnactState_1654 a0 a1 = ()
-- Ledger.Ledger._.EnactState.cc
d_cc_1698 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1698 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_924 (coe v0)
-- Ledger.Ledger._.EnactState.constitution
d_constitution_1700 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1700 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_926 (coe v0)
-- Ledger.Ledger._.EnactState.pparams
d_pparams_1702 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1702 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_930 (coe v0)
-- Ledger.Ledger._.EnactState.pv
d_pv_1704 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1704 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_928 (coe v0)
-- Ledger.Ledger._.EnactState.withdrawals
d_withdrawals_1706 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1706 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_932 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1716 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_2182 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1716 = erased
-- Ledger.Ledger._.GovState
d_GovState_1728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 -> ()
d_GovState_1728 = erased
-- Ledger.Ledger._.GovStateOf
d_GovStateOf_1730 ::
  MAlonzo.Code.Ledger.Gov.T_HasGovState_2168 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1730 v0
  = coe MAlonzo.Code.Ledger.Gov.d_GovStateOf_2176 (coe v0)
-- Ledger.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1732 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'GovEnv_1732 ~v0 ~v1 = du_HasCast'45'GovEnv_1732
du_HasCast'45'GovEnv_1732 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'GovEnv_1732
  = coe MAlonzo.Code.Ledger.Gov.du_HasCast'45'GovEnv_2212
-- Ledger.Ledger._.HasGovState
d_HasGovState_1734 a0 a1 a2 a3 = ()
-- Ledger.Ledger._.HasGovState.GovStateOf
d_GovStateOf_1834 ::
  MAlonzo.Code.Ledger.Gov.T_HasGovState_2168 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1834 v0
  = coe MAlonzo.Code.Ledger.Gov.d_GovStateOf_2176 (coe v0)
-- Ledger.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_1854 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'UTxOEnv_1854 ~v0 ~v1 = du_HasCast'45'UTxOEnv_1854
du_HasCast'45'UTxOEnv_1854 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'UTxOEnv_1854
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCast'45'UTxOEnv_2320
-- Ledger.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_1862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_918
d_HasDeposits'45'UTxOState_1862 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_1862
du_HasDeposits'45'UTxOState_1862 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_918
du_HasDeposits'45'UTxOState_1862
  = coe MAlonzo.Code.Ledger.Utxo.du_HasDeposits'45'UTxOState_2316
-- Ledger.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_1866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2964
d_HasUTxO'45'UTxOState_1866 ~v0 ~v1 = du_HasUTxO'45'UTxOState_1866
du_HasUTxO'45'UTxOState_1866 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2964
du_HasUTxO'45'UTxOState_1866
  = coe MAlonzo.Code.Ledger.Utxo.du_HasUTxO'45'UTxOState_2318
-- Ledger.Ledger._.HasUTxOState
d_HasUTxOState_1868 a0 a1 a2 a3 = ()
-- Ledger.Ledger._.UTxOState
d_UTxOState_1886 a0 a1 = ()
-- Ledger.Ledger._.UTxOStateOf
d_UTxOStateOf_1888 ::
  MAlonzo.Code.Ledger.Utxo.T_HasUTxOState_2302 ->
  AgdaAny -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
d_UTxOStateOf_1888 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_UTxOStateOf_2310 (coe v0)
-- Ledger.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_1992 ::
  MAlonzo.Code.Ledger.Utxo.T_HasUTxOState_2302 ->
  AgdaAny -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
d_UTxOStateOf_1992 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_UTxOStateOf_2310 (coe v0)
-- Ledger.Ledger._.UTxOState.deposits
d_deposits_2004 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2004 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2292 (coe v0)
-- Ledger.Ledger._.UTxOState.donations
d_donations_2006 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 -> Integer
d_donations_2006 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2294 (coe v0)
-- Ledger.Ledger._.UTxOState.fees
d_fees_2008 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 -> Integer
d_fees_2008 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2290 (coe v0)
-- Ledger.Ledger._.UTxOState.utxo
d_utxo_2010 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2010 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2048 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1028 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1186 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_992] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1186 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2110 = erased
-- Ledger.Ledger._.CertState
d_CertState_2130 a0 a1 = ()
-- Ledger.Ledger._.CertStateOf
d_CertStateOf_2132 ::
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1206 ->
  AgdaAny -> MAlonzo.Code.Ledger.Certs.T_CertState_1186
d_CertStateOf_2132 v0
  = coe MAlonzo.Code.Ledger.Certs.d_CertStateOf_1214 (coe v0)
-- Ledger.Ledger._.DepositsOf
d_DepositsOf_2162 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_918 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2162 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DepositsOf_926 (coe v0)
-- Ledger.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'CertEnv_2178 ~v0 ~v1 = du_HasCast'45'CertEnv_2178
du_HasCast'45'CertEnv_2178 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'CertEnv_2178
  = coe MAlonzo.Code.Ledger.Certs.du_HasCast'45'CertEnv_1256
-- Ledger.Ledger._.HasCertState
d_HasCertState_2190 a0 a1 a2 a3 = ()
-- Ledger.Ledger._.HasDeposits
d_HasDeposits_2204 a0 a1 a2 a3 = ()
-- Ledger.Ledger._.CertState.dState
d_dState_2324 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_1186 ->
  MAlonzo.Code.Ledger.Certs.T_DState_1070
d_dState_2324 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_1194 (coe v0)
-- Ledger.Ledger._.CertState.gState
d_gState_2326 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_1186 ->
  MAlonzo.Code.Ledger.Certs.T_GState_1154
d_gState_2326 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_1198 (coe v0)
-- Ledger.Ledger._.CertState.pState
d_pState_2328 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_1186 ->
  MAlonzo.Code.Ledger.Certs.T_PState_1126
d_pState_2328 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_1196 (coe v0)
-- Ledger.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2382 ::
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1206 ->
  AgdaAny -> MAlonzo.Code.Ledger.Certs.T_CertState_1186
d_CertStateOf_2382 v0
  = coe MAlonzo.Code.Ledger.Certs.d_CertStateOf_1214 (coe v0)
-- Ledger.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2394 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_918 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2394 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DepositsOf_926 (coe v0)
-- Ledger.Ledger.LEnv
d_LEnv_2434 a0 a1 = ()
data T_LEnv_2434
  = C_LEnv'46'constructor_6527 AgdaAny (Maybe AgdaAny)
                               MAlonzo.Code.Ledger.PParams.T_PParams_262
                               MAlonzo.Code.Ledger.Enact.T_EnactState_912 Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2446 :: T_LEnv_2434 -> AgdaAny
d_slot_2446 v0
  = case coe v0 of
      C_LEnv'46'constructor_6527 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2448 :: T_LEnv_2434 -> Maybe AgdaAny
d_ppolicy_2448 v0
  = case coe v0 of
      C_LEnv'46'constructor_6527 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2450 ::
  T_LEnv_2434 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2450 v0
  = case coe v0 of
      C_LEnv'46'constructor_6527 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2452 ::
  T_LEnv_2434 -> MAlonzo.Code.Ledger.Enact.T_EnactState_912
d_enactState_2452 v0
  = case coe v0 of
      C_LEnv'46'constructor_6527 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2454 :: T_LEnv_2434 -> Integer
d_treasury_2454 v0
  = case coe v0 of
      C_LEnv'46'constructor_6527 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408
d_HasPParams'45'LEnv_2456 ~v0 ~v1 = du_HasPParams'45'LEnv_2456
du_HasPParams'45'LEnv_2456 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408
du_HasPParams'45'LEnv_2456
  = coe
      MAlonzo.Code.Ledger.PParams.C_HasPParams'46'constructor_9199
      (coe (\ v0 -> d_pparams_2450 (coe v0)))
-- Ledger.Ledger.LState
d_LState_2458 a0 a1 = ()
data T_LState_2458
  = C_'10214'_'44'_'44'_'10215''737'_2472 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_1186
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2466 ::
  T_LState_2458 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
d_utxoSt_2466 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2472 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2468 ::
  T_LState_2458 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2468 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2472 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2470 ::
  T_LState_2458 -> MAlonzo.Code.Ledger.Certs.T_CertState_1186
d_certState_2470 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2472 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.HasLState
d_HasLState_2478 a0 a1 a2 a3 = ()
newtype T_HasLState_2478
  = C_HasLState'46'constructor_6923 (AgdaAny -> T_LState_2458)
-- Ledger.Ledger.HasLState.LStateOf
d_LStateOf_2486 :: T_HasLState_2478 -> AgdaAny -> T_LState_2458
d_LStateOf_2486 v0
  = case coe v0 of
      C_HasLState'46'constructor_6923 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger._.LStateOf
d_LStateOf_2490 :: T_HasLState_2478 -> AgdaAny -> T_LState_2458
d_LStateOf_2490 v0 = coe d_LStateOf_2486 (coe v0)
-- Ledger.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2492 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Utxo.T_HasUTxOState_2302
d_HasUTxOState'45'LState_2492 ~v0 ~v1
  = du_HasUTxOState'45'LState_2492
du_HasUTxOState'45'LState_2492 ::
  MAlonzo.Code.Ledger.Utxo.T_HasUTxOState_2302
du_HasUTxOState'45'LState_2492
  = coe
      MAlonzo.Code.Ledger.Utxo.C_HasUTxOState'46'constructor_18393
      (coe (\ v0 -> d_utxoSt_2466 (coe v0)))
-- Ledger.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2964
d_HasUTxO'45'LState_2494 ~v0 ~v1 = du_HasUTxO'45'LState_2494
du_HasUTxO'45'LState_2494 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2964
du_HasUTxO'45'LState_2494
  = coe
      MAlonzo.Code.Ledger.Transaction.C_HasUTxO'46'constructor_18459
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2972
              (coe MAlonzo.Code.Ledger.Utxo.du_HasUTxO'45'UTxOState_2318)
              (d_utxoSt_2466 (coe v0))))
-- Ledger.Ledger.HasGovState-LState
d_HasGovState'45'LState_2496 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Gov.T_HasGovState_2168
d_HasGovState'45'LState_2496 ~v0 ~v1
  = du_HasGovState'45'LState_2496
du_HasGovState'45'LState_2496 ::
  MAlonzo.Code.Ledger.Gov.T_HasGovState_2168
du_HasGovState'45'LState_2496
  = coe
      MAlonzo.Code.Ledger.Gov.C_HasGovState'46'constructor_4385
      (coe (\ v0 -> d_govSt_2468 (coe v0)))
-- Ledger.Ledger.HasCertState-LState
d_HasCertState'45'LState_2498 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1206
d_HasCertState'45'LState_2498 ~v0 ~v1
  = du_HasCertState'45'LState_2498
du_HasCertState'45'LState_2498 ::
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1206
du_HasCertState'45'LState_2498
  = coe
      MAlonzo.Code.Ledger.Certs.C_HasCertState'46'constructor_19941
      (coe (\ v0 -> d_certState_2470 (coe v0)))
-- Ledger.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_918
d_HasDeposits'45'LState_2500 ~v0 ~v1
  = du_HasDeposits'45'LState_2500
du_HasDeposits'45'LState_2500 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_918
du_HasDeposits'45'LState_2500
  = coe
      MAlonzo.Code.Ledger.Certs.C_HasDeposits'46'constructor_2969
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Certs.d_DepositsOf_926
              (coe MAlonzo.Code.Ledger.Utxo.du_HasDeposits'45'UTxOState_2316)
              (d_utxoSt_2466 (coe v0))))
-- Ledger.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'LEnv_2502 ~v0 ~v1 = du_HasCast'45'LEnv_2502
du_HasCast'45'LEnv_2502 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'LEnv_2502
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
                                 (2434 :: Integer) (9543913931307211001 :: Integer)
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
                                 (388 :: Integer) (9543913931307211001 :: Integer) "_.Slot"
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
                                    (2434 :: Integer) (9543913931307211001 :: Integer)
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
                                                (344 :: Integer) (9543913931307211001 :: Integer)
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
                                       (2434 :: Integer) (9543913931307211001 :: Integer)
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
                                       (286 :: Integer) (9543913931307211001 :: Integer) "_.PParams"
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
                                          (2434 :: Integer) (9543913931307211001 :: Integer)
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
                                          (1654 :: Integer) (9543913931307211001 :: Integer)
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
                                             (2434 :: Integer) (9543913931307211001 :: Integer)
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
         (coe C_LEnv'46'constructor_6527))
-- Ledger.Ledger.HasCast-LState
d_HasCast'45'LState_2504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'LState_2504 ~v0 ~v1 = du_HasCast'45'LState_2504
du_HasCast'45'LState_2504 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'LState_2504
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
                                 (2458 :: Integer) (9543913931307211001 :: Integer)
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
                                 (1886 :: Integer) (9543913931307211001 :: Integer)
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
                                    (2458 :: Integer) (9543913931307211001 :: Integer)
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
                                    (1728 :: Integer) (9543913931307211001 :: Integer)
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
                                       (2458 :: Integer) (9543913931307211001 :: Integer)
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
                                       (2130 :: Integer) (9543913931307211001 :: Integer)
                                       "Ledger.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2472))
-- Ledger.Ledger.txgov
d_txgov_2506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2506 ~v0 ~v1 v2 = du_txgov_2506 v2
du_txgov_2506 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2506 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_3038 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_3036 (coe v0)))
-- Ledger.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1186 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2556 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2556 v0 v2 v3
du_rmOrphanDRepVotes_2556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1186 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2556 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_go_2572 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1186 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_ifDRepRegistered_2566 = erased
-- Ledger.Ledger._.go
d_go_2572 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1186 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_848 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_848
d_go_2572 v0 ~v1 v2 ~v3 v4 = du_go_2572 v0 v2 v4
du_go_2572 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1186 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_848 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_848
du_go_2572 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_5103
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_872)
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
                       MAlonzo.Code.Ledger.Certs.d_dreps_1160
                       (coe MAlonzo.Code.Ledger.Certs.d_gState_1198 (coe v1))))))
         (MAlonzo.Code.Ledger.GovernanceActions.d_votes_860 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_862 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_864 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_866 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_868 (coe v2))
-- Ledger.Ledger.allColdCreds
d_allColdCreds_2576 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_912 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_2576 ~v0 ~v1 v2 v3 = du_allColdCreds_2576 v2 v3
du_allColdCreds_2576 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_912 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_2576 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Enact.du_ccCreds_958
         (coe MAlonzo.Code.Ledger.Enact.d_cc_924 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_884
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_866
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2618 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2618
  = C_LEDGER'45'V_2666 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2668 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.txcerts
d_txcerts_2640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_18245 -> [MAlonzo.Code.Ledger.Certs.T_DCert_992]
d_txcerts_2640 ~v0 ~v1 v2 = du_txcerts_2640 v2
du_txcerts_2640 ::
  T_GeneralizeTel_18245 -> [MAlonzo.Code.Ledger.Certs.T_DCert_992]
du_txcerts_2640 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_3032
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_18221 (coe v0)))
-- Ledger.Ledger._.txid
d_txid_2646 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_18245 -> AgdaAny
d_txid_2646 ~v0 ~v1 v2 = du_txid_2646 v2
du_txid_2646 :: T_GeneralizeTel_18245 -> AgdaAny
du_txid_2646 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_3052
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_18221 (coe v0)))
-- Ledger.Ledger._.txvote
d_txvote_2660 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_18245 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_804]
d_txvote_2660 ~v0 ~v1 v2 = du_txvote_2660 v2
du_txvote_2660 ::
  T_GeneralizeTel_18245 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_804]
du_txvote_2660 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_3036
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_18221 (coe v0)))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_18245 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2662 ~v0 ~v1 v2 = du_txwdrls_2662 v2
du_txwdrls_2662 ::
  T_GeneralizeTel_18245 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2662 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_3034
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_18221 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2686 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_LEnv_2434 ->
  T_LState_2458 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_3170] -> T_LState_2458 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2686 = erased
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_18221 ::
  T_GeneralizeTel_18245 -> MAlonzo.Code.Ledger.Transaction.T_Tx_3170
d_'46'generalizedField'45'tx_18221 v0
  = case coe v0 of
      C_mkGeneralizeTel_18247 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_18223 ::
  T_GeneralizeTel_18245 -> MAlonzo.Code.Ledger.Certs.T_CertState_1186
d_'46'generalizedField'45'certState_18223 v0
  = case coe v0 of
      C_mkGeneralizeTel_18247 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_18225 ::
  T_GeneralizeTel_18245 -> AgdaAny
d_'46'generalizedField'45'slot_18225 v0
  = case coe v0 of
      C_mkGeneralizeTel_18247 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_18227 ::
  T_GeneralizeTel_18245 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_'46'generalizedField'45'pp_18227 v0
  = case coe v0 of
      C_mkGeneralizeTel_18247 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_18229 ::
  T_GeneralizeTel_18245 -> Integer
d_'46'generalizedField'45'treasury_18229 v0
  = case coe v0 of
      C_mkGeneralizeTel_18247 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_18231 ::
  T_GeneralizeTel_18245 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
d_'46'generalizedField'45'utxoSt_18231 v0
  = case coe v0 of
      C_mkGeneralizeTel_18247 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_18233 ::
  T_GeneralizeTel_18245 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
d_'46'generalizedField'45'utxoSt''_18233 v0
  = case coe v0 of
      C_mkGeneralizeTel_18247 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_18235 ::
  T_GeneralizeTel_18245 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_18235 v0
  = case coe v0 of
      C_mkGeneralizeTel_18247 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_18237 ::
  T_GeneralizeTel_18245 -> MAlonzo.Code.Ledger.Enact.T_EnactState_912
d_'46'generalizedField'45'enactState_18237 v0
  = case coe v0 of
      C_mkGeneralizeTel_18247 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_18239 ::
  T_GeneralizeTel_18245 -> MAlonzo.Code.Ledger.Certs.T_CertState_1186
d_'46'generalizedField'45'certState''_18239 v0
  = case coe v0 of
      C_mkGeneralizeTel_18247 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_18241 ::
  T_GeneralizeTel_18245 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_18241 v0
  = case coe v0 of
      C_mkGeneralizeTel_18247 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_18243 ::
  T_GeneralizeTel_18245 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_18243 v0
  = case coe v0 of
      C_mkGeneralizeTel_18247 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_18245 a0 a1 = ()
data T_GeneralizeTel_18245
  = C_mkGeneralizeTel_18247 MAlonzo.Code.Ledger.Transaction.T_Tx_3170
                            MAlonzo.Code.Ledger.Certs.T_CertState_1186 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_PParams_262 Integer
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Enact.T_EnactState_912
                            MAlonzo.Code.Ledger.Certs.T_CertState_1186 (Maybe AgdaAny)
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
